--`cat ~/.QUICK_V3_ROOT`
-- function find_second( array_name )
-- 	local max,second
-- 	max = array_name[1]
-- 	second = array_name[1]
	
-- 	for i = 2,#array_name do
-- 		if array_name[i]>max then
-- 			second = max
-- 			max = array_name[i]
-- 		end
-- 		if array_name[i] < max and array_name[i]>second then
-- 			second = array_name[i]
-- 		end
-- 	end
-- 	return second
-- end

-- local array = {14,16,5,7,9,3,1,15,15,16,17}
-- local s = find_second(array)
-- print(s)

-- function sort( table )
-- 	for i = 1,#table-1 do
-- 		if table[i].rate < table[i+1].rate then
-- 			table[i],table[i+1]=table[i+1],table[i]
-- 		end
-- 		if table[i].rate == table[i+1].rate then
-- 			if table[i].star > table[i+1].star then
-- 				table[i],table[i+1]=table[i+1],table[i]
-- 			end
-- 		end
-- 	end
-- 	return table
-- end

-- local talbe = ｛｛rate=1,star=4},{rate=1,star=3},{rate=3,star=1},{rate=3,star=4}｝
-- for k,v in pairs(sort(table)) do
-- 	for i,j in pairs(v) do
-- 		print(i..":"..j)
-- 	end
-- end


local s = "1:2:3:4:5"
function A( s )
	local tbl = {}
	for i=1,5 do
	local temp=tonumber(string.sub(s,2*i-1,2*i-1))
	table.insert(tbl,temp)
	end
	return tbl
end
print(table.concat(A(s),"、"))

-- local tbl = {"apple", "pear", "orange", "grape"}
 
-- table.insert(tbl, "watermelon")
-- print(table.concat(tbl, "、"))
 
-- table.insert(tbl, 2, "watermelon")
-- print(table.concat(tbl, "、"))

--[[
1.把精灵的右下角放在坐标（20，20）上
2.当对象发送一个autorelease消息时，会把该对象加入到自动释放池中，当自动释放池被销毁时，会给里面的对象发送一次release消息，使对象的引用计数减一，当对象的引用计数为0时，该对象就会被销毁。
当对象被new 或者retain时，对象的引用计数+1
3.用Widget：create（）来创建一个节点，然后添加addTouchEventLIstener
5.-128~127,数值越小优先级越高。
如果优先级相同，则先添加的先相应
1.function find_second( array_name )
	local max,second
	max = array_name[1]
	second = array_name[1]
	
	for i = 2,#array_name do
		if array_name[i]>max then
			second = max
			max = array_name[i]
		end
		if array_name[i] < max and array_name[i]>second then
			second = array_name[i]
		end
	end
	return second
end

local array = {14,16,5,7,9,3,1,15,15,16,17}
local s = find_second(array)
print(s)
4.function find_second( array_name )
	local max,second
	max = array_name[1]
	second = array_name[1]
	
	for i = 2,#array_name do
		if array_name[i]>max then
			second = max
			max = array_name[i]
		end
		if array_name[i] < max and array_name[i]>second then
			second = array_name[i]
		end
	end
	return second
end

local array = {14,16,5,7,9,3,1,15,15,16,17}
local s = find_second(array)
print(s)

6.auto spriteA = Sprite::create("HelloWorld.png");
    spriteA -> setPosition(Vec2(480,320));
    this -> addChild(spriteA);
    auto moveto1 = MoveTo::create(1, Vec2(spriteA -> getPosition().x-100,spriteA -> getPosition().y));
    auto scaleto = ScaleTo::create(1, 0.25);
    auto rotate = RotateTo::create(1, 30, 0);
    auto spawn = Spawn::create(moveto1,scaleto, NULL);
    auto sequence = Sequence::create(spawn,rotate, NULL);
    spriteA -> runAction(sequence);
7.auto spriteA = Sprite::create("HelloWorld.png");
    spriteA -> setPosition(Vec2(480,320));
    this -> addChild(spriteA);
 auto moveto2 = MoveTo::create(1, Vec2(spriteA -> getPosition().x-100,spriteA -> getPosition().y));
    auto scaleto1 = ScaleTo::create(1, 0.25);
    auto sequence1 = Sequence::create(moveto2,scaleto1, NULL);
    spriteA -> runAction(sequence1);
    
    8.auto spriteA = Sprite::create("HelloWorld.png");
    spriteA -> setPosition(Vec2(480,320));
    this -> addChild(spriteA);
auto scale = ScaleTo::create(0.5, -1);
    spriteA -> runAction(scale);
--]]
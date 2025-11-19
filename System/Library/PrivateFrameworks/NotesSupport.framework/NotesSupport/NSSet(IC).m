@interface NSSet(IC)
+ (id)ic_setFromNonNilArray:()IC;
+ (id)ic_setFromNonNilObject:()IC;
- (BOOL)ic_containsObjectPassingTest:()IC;
- (id)ic_compactMap:()IC;
- (id)ic_map:()IC;
- (id)ic_objectOfClass:()IC;
- (id)ic_objectPassingTest:()IC;
- (id)ic_objectsConformingToProtocol:()IC;
- (id)ic_objectsOfClass:()IC;
- (uint64_t)ic_containsObjectMatchingPredicate:()IC;
@end

@implementation NSSet(IC)

+ (id)ic_setFromNonNilObject:()IC
{
  if (a3)
  {
    [a1 setWithObject:?];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v3 = ;

  return v3;
}

+ (id)ic_setFromNonNilArray:()IC
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [a1 setWithArray:v5];

  return v6;
}

- (id)ic_objectPassingTest:()IC
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__NSSet_IC__ic_objectPassingTest___block_invoke;
  v9[3] = &unk_1E84857C8;
  v10 = v4;
  v5 = v4;
  v6 = [a1 objectsPassingTest:v9];
  v7 = [v6 anyObject];

  return v7;
}

- (BOOL)ic_containsObjectPassingTest:()IC
{
  v1 = [a1 ic_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)ic_containsObjectMatchingPredicate:()IC
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__NSSet_IC__ic_containsObjectMatchingPredicate___block_invoke;
  v8[3] = &unk_1E84857F0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 ic_containsObjectPassingTest:v8];

  return v6;
}

- (id)ic_objectsConformingToProtocol:()IC
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__NSSet_IC__ic_objectsConformingToProtocol___block_invoke;
  v8[3] = &unk_1E84857F0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 objectsPassingTest:v8];

  return v6;
}

- (id)ic_objectsOfClass:()IC
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__NSSet_IC__ic_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v5[4] = a3;
  v3 = [a1 objectsPassingTest:v5];

  return v3;
}

- (id)ic_objectOfClass:()IC
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__NSSet_IC__ic_objectOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v5[4] = a3;
  v3 = [a1 ic_objectPassingTest:v5];

  return v3;
}

- (id)ic_compactMap:()IC
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __27__NSSet_IC__ic_compactMap___block_invoke;
  v13 = &unk_1E8485838;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ic_map:()IC
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __20__NSSet_IC__ic_map___block_invoke;
  v13 = &unk_1E8485838;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

@end
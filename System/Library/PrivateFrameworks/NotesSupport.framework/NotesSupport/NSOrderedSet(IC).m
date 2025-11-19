@interface NSOrderedSet(IC)
- (BOOL)ic_containsObjectPassingTest:()IC;
- (id)ic_objectPassingTest:()IC;
- (id)ic_objectsMovedFromOrderedSet:()IC;
- (uint64_t)ic_containsObjectMatchingPredicate:()IC;
@end

@implementation NSOrderedSet(IC)

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
  v8[2] = __55__NSOrderedSet_IC__ic_containsObjectMatchingPredicate___block_invoke;
  v8[3] = &unk_1E8485498;
  v9 = v4;
  v5 = v4;
  v6 = [a1 ic_containsObjectPassingTest:v8];

  return v6;
}

- (id)ic_objectPassingTest:()IC
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndex:v2];
  }

  return v3;
}

- (id)ic_objectsMovedFromOrderedSet:()IC
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [a1 mutableCopy];
  [v6 intersectOrderedSet:v4];
  v7 = [v4 mutableCopy];
  [v7 intersectOrderedSet:a1];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__NSOrderedSet_IC__ic_objectsMovedFromOrderedSet___block_invoke;
  v12[3] = &unk_1E8485780;
  v8 = v6;
  v13 = v8;
  v15 = v16;
  v9 = v5;
  v14 = v9;
  [v7 enumerateObjectsUsingBlock:v12];
  v10 = [v9 copy];

  _Block_object_dispose(v16, 8);

  return v10;
}

@end
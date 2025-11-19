@interface NSArray(DC)
- (BOOL)dc_containsObjectPassingTest:()DC;
- (id)dc_arrayByGroupingIntoArraysWithMaxCount:()DC;
- (id)dc_compactMap:()DC;
- (id)dc_flatMap:()DC;
- (id)dc_map:()DC;
- (id)dc_objectAfter:()DC wrap:;
- (id)dc_objectBefore:()DC wrap:;
- (id)dc_objectPassingTest:()DC;
- (id)dc_objectsOfClass:()DC;
- (id)dc_objectsPassingTest:()DC;
- (unint64_t)dc_indexOfSortedObject:()DC insertionIndex:usingComparator:;
@end

@implementation NSArray(DC)

- (id)dc_objectPassingTest:()DC
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

- (BOOL)dc_containsObjectPassingTest:()DC
{
  v1 = [a1 dc_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)dc_objectsPassingTest:()DC
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];

  return v3;
}

- (id)dc_objectsOfClass:()DC
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__NSArray_DC__dc_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24lu32l8;
  v5[4] = a3;
  v3 = [a1 dc_objectsPassingTest:v5];

  return v3;
}

- (id)dc_arrayByGroupingIntoArraysWithMaxCount:()DC
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v9 count];
        if (!v9 || v13 >= a3)
        {
          v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];

          [v5 addObject:v14];
          v9 = v14;
        }

        [v9 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

- (unint64_t)dc_indexOfSortedObject:()DC insertionIndex:usingComparator:
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1280, v9}];

  if (a4)
  {
    *a4 = v10;
  }

  if (v10 >= [a1 count] || (objc_msgSend(a1, "objectAtIndexedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, (v12 & 1) == 0))
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)dc_objectBefore:()DC wrap:
{
  v6 = [a1 indexOfObject:?];
  v7 = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8)
  {
    v7 = [a1 objectAtIndexedSubscript:{(v6 + objc_msgSend(a1, "count") - 1) % objc_msgSend(a1, "count")}];
  }

  return v7;
}

- (id)dc_objectAfter:()DC wrap:
{
  v6 = [a1 indexOfObject:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6, (a4 & 1) == 0) && v6 == [a1 count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 objectAtIndexedSubscript:{(v8 + 1) % objc_msgSend(a1, "count")}];
  }

  return v7;
}

- (id)dc_compactMap:()DC
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __29__NSArray_DC__dc_compactMap___block_invoke;
  v13 = &unk_278F940D8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)dc_map:()DC
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __22__NSArray_DC__dc_map___block_invoke;
  v13 = &unk_278F940D8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)dc_flatMap:()DC
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __26__NSArray_DC__dc_flatMap___block_invoke;
  v13 = &unk_278F940D8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

@end
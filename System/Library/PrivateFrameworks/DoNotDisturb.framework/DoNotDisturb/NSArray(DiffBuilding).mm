@interface NSArray(DiffBuilding)
- (void)diffAgainstObject:()DiffBuilding usingDiffBuilder:withDescription:;
@end

@implementation NSArray(DiffBuilding)

- (void)diffAgainstObject:()DiffBuilding usingDiffBuilder:withDescription:
{
  v6 = a3;
  v7 = a4;
  v15 = v6;
  v8 = [self count];
  v9 = [v15 count];
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if ([self count] <= i)
      {
        v12 = 0;
      }

      else
      {
        v12 = [self objectAtIndexedSubscript:i];
      }

      if ([v15 count] <= i)
      {
        v13 = 0;
      }

      else
      {
        v13 = [v15 objectAtIndexedSubscript:i];
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", i];
      [v7 diffObject:v12 againstObject:v13 withDescription:v14];
    }
  }
}

@end
@interface NSArray(Batch)
- (void)enumerateBatchesOfSize:()Batch handler:;
@end

@implementation NSArray(Batch)

- (void)enumerateBatchesOfSize:()Batch handler:
{
  v6 = a4;
  v7 = [self count];
  v8 = 0;
  v15 = 0;
  v14 = v6 + 16;
  do
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = v8 * a3;
    if (v8 * a3 + a3 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8 * a3 + a3;
    }

    while (v10 < v11)
    {
      v12 = [self objectAtIndexedSubscript:v10];
      [array addObject:v12];

      ++v10;
    }

    if ([array count])
    {
      (*(v6 + 2))(v6, array, &v15);
    }

    v13 = v15;

    if (v13)
    {
      break;
    }

    ++v8;
  }

  while (v8 <= v7 / a3);
}

@end
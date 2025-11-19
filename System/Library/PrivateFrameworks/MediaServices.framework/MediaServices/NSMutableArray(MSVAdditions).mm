@interface NSMutableArray(MSVAdditions)
- (id)msv_removeFirstObject;
- (id)msv_removeLastObject;
- (id)msv_removeWhere:()MSVAdditions;
@end

@implementation NSMutableArray(MSVAdditions)

- (id)msv_removeWhere:()MSVAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  if ([a1 count])
  {
    v6 = 0;
    do
    {
      v7 = [a1 objectAtIndexedSubscript:v6];
      if (v4[2](v4, v7))
      {
        [v5 addIndex:v6];
      }

      ++v6;
    }

    while (v6 < [a1 count]);
  }

  v8 = [a1 objectsAtIndexes:v5];
  [a1 removeObjectsAtIndexes:v5];

  return v8;
}

- (id)msv_removeLastObject
{
  if ([a1 count])
  {
    v2 = [a1 lastObject];
    [a1 removeLastObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)msv_removeFirstObject
{
  if ([a1 count])
  {
    v2 = [a1 firstObject];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
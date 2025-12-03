@interface NSMutableArray(MSVAdditions)
- (id)msv_removeFirstObject;
- (id)msv_removeLastObject;
- (id)msv_removeWhere:()MSVAdditions;
@end

@implementation NSMutableArray(MSVAdditions)

- (id)msv_removeWhere:()MSVAdditions
{
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if ([self count])
  {
    v6 = 0;
    do
    {
      v7 = [self objectAtIndexedSubscript:v6];
      if (v4[2](v4, v7))
      {
        [indexSet addIndex:v6];
      }

      ++v6;
    }

    while (v6 < [self count]);
  }

  v8 = [self objectsAtIndexes:indexSet];
  [self removeObjectsAtIndexes:indexSet];

  return v8;
}

- (id)msv_removeLastObject
{
  if ([self count])
  {
    lastObject = [self lastObject];
    [self removeLastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)msv_removeFirstObject
{
  if ([self count])
  {
    firstObject = [self firstObject];
    [self removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end
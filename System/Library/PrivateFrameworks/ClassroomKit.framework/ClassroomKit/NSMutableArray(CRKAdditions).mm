@interface NSMutableArray(CRKAdditions)
- (BOOL)crk_pluckFlag:()CRKAdditions;
- (id)crk_pluckValueForNamedArgument:()CRKAdditions;
@end

@implementation NSMutableArray(CRKAdditions)

- (BOOL)crk_pluckFlag:()CRKAdditions
{
  v2 = [self indexOfObject:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self removeObjectAtIndex:v2];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)crk_pluckValueForNamedArgument:()CRKAdditions
{
  v2 = [self indexOfObject:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v3 = v2, v4 = v2 + 1, v2 + 1 >= [self count]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [self objectAtIndexedSubscript:v4];
    [self removeObjectsInRange:{v3, 2}];
  }

  return v5;
}

@end
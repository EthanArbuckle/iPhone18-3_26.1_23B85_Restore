@interface NSMutableArray(GC)
- (void)gc_transformElementsWithOptions:()GC usingBlock:;
@end

@implementation NSMutableArray(GC)

- (void)gc_transformElementsWithOptions:()GC usingBlock:
{
  v7 = [self count];
  v8 = 0;
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = (*(a4 + 16))(a4, [self objectAtIndexedSubscript:i]);
      if (v10 || (a3 & 1) == 0)
      {
        [self replaceObjectAtIndex:v8++ withObject:v10];
      }
    }
  }

  if (v7 != v8)
  {

    [self removeObjectsInRange:{v8, v7 - v8}];
  }
}

@end
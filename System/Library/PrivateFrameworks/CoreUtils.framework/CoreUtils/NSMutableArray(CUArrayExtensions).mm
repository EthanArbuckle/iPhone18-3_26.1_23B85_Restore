@interface NSMutableArray(CUArrayExtensions)
- (id)popFirstObject;
@end

@implementation NSMutableArray(CUArrayExtensions)

- (id)popFirstObject
{
  v2 = [a1 firstObject];
  if (v2)
  {
    [a1 removeObjectAtIndex:0];
  }

  return v2;
}

@end
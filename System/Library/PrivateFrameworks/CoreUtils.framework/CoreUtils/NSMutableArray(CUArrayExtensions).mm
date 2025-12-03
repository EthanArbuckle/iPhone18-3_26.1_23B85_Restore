@interface NSMutableArray(CUArrayExtensions)
- (id)popFirstObject;
@end

@implementation NSMutableArray(CUArrayExtensions)

- (id)popFirstObject
{
  firstObject = [self firstObject];
  if (firstObject)
  {
    [self removeObjectAtIndex:0];
  }

  return firstObject;
}

@end
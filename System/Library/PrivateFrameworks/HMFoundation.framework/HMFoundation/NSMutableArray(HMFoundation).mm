@interface NSMutableArray(HMFoundation)
- (uint64_t)hmf_removeFirstObject;
@end

@implementation NSMutableArray(HMFoundation)

- (uint64_t)hmf_removeFirstObject
{
  result = [self count];
  if (result)
  {

    return [self removeObjectAtIndex:0];
  }

  return result;
}

@end
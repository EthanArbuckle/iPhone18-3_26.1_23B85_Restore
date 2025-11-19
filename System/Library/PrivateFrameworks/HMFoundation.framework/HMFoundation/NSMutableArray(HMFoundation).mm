@interface NSMutableArray(HMFoundation)
- (uint64_t)hmf_removeFirstObject;
@end

@implementation NSMutableArray(HMFoundation)

- (uint64_t)hmf_removeFirstObject
{
  result = [a1 count];
  if (result)
  {

    return [a1 removeObjectAtIndex:0];
  }

  return result;
}

@end
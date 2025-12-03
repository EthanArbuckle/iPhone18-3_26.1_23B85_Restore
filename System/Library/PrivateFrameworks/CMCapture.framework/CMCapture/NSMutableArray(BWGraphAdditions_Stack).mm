@interface NSMutableArray(BWGraphAdditions_Stack)
- (uint64_t)bw_pop;
@end

@implementation NSMutableArray(BWGraphAdditions_Stack)

- (uint64_t)bw_pop
{
  if ([self bw_empty])
  {
    return 0;
  }

  lastObject = [self lastObject];
  [self removeLastObject];
  return lastObject;
}

@end
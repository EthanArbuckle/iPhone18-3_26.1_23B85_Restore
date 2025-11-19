@interface NSMutableArray(BWGraphAdditions_Stack)
- (uint64_t)bw_pop;
@end

@implementation NSMutableArray(BWGraphAdditions_Stack)

- (uint64_t)bw_pop
{
  if ([a1 bw_empty])
  {
    return 0;
  }

  v3 = [a1 lastObject];
  [a1 removeLastObject];
  return v3;
}

@end
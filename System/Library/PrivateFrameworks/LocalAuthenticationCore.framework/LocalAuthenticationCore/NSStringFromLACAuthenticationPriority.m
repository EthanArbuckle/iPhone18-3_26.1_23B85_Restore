@interface NSStringFromLACAuthenticationPriority
@end

@implementation NSStringFromLACAuthenticationPriority

__CFString *__NSStringFromLACAuthenticationPriority_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  if (v1 > 3)
  {
    return @"Lowest";
  }

  else
  {
    return off_1E7A972A0[v1];
  }
}

@end
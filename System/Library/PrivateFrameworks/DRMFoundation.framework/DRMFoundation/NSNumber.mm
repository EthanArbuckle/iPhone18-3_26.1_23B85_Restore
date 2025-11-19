@interface NSNumber
@end

@implementation NSNumber

void __34__NSNumber__DKDeduping___os_dedup__block_invoke()
{
  v0 = [MEMORY[0x277CCA940] set];
  v1 = _os_dedup_set_4;
  _os_dedup_set_4 = v0;

  _os_dedup_lock_5 = 0;
}

void __34__NSNumber__DKDeduping___os_dedup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([_os_dedup_set_4 countForObject:?] <= 2)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end
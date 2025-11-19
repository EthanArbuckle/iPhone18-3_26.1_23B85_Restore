@interface NSDate
@end

@implementation NSDate

void __32__NSDate__DKDeduping___os_dedup__block_invoke()
{
  v0 = [MEMORY[0x277CCA940] set];
  v1 = _os_dedup_set_10;
  _os_dedup_set_10 = v0;

  _os_dedup_lock_11 = 0;
}

void __32__NSDate__DKDeduping___os_dedup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([_os_dedup_set_10 countForObject:?] <= 2)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end
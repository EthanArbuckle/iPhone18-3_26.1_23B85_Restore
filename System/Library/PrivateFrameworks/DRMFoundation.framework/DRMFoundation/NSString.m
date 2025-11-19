@interface NSString
@end

@implementation NSString

void __34__NSString__OSDeduping___os_dedup__block_invoke()
{
  v0 = [MEMORY[0x277CCA940] set];
  v1 = _os_dedup_set;
  _os_dedup_set = v0;

  _os_dedup_lock = 0;
}

void __34__NSString__OSDeduping___os_dedup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([_os_dedup_set countForObject:?] <= 2)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end
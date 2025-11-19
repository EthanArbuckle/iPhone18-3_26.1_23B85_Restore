@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __45__NSProcessInfo_MNExtras___navigation_isNavd__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) processName];
  _navigation_isNavd_isNavd = [v1 isEqualToString:@"navd"];
}

@end
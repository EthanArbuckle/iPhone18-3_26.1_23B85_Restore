@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __42__NSProcessInfo_LNAdditions__ln_isTesting__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v1 = [v2 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  ln_isTesting_isTesting = v1 != 0;
}

@end
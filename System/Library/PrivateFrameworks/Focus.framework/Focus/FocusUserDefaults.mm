@interface FocusUserDefaults
@end

@implementation FocusUserDefaults

uint64_t ___FocusUserDefaults_block_invoke()
{
  _FocusUserDefaults___userDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Focus"];

  return MEMORY[0x2821F96F8]();
}

@end
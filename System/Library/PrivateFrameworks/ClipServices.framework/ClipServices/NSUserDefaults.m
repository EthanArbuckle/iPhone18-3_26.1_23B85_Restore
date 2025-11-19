@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __62__NSUserDefaults_ClipServicesExtras__cps_clipServicesDefaults__block_invoke()
{
  cps_clipServicesDefaults_clipServicesDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ClipServices"];

  return MEMORY[0x2821F96F8]();
}

@end
@interface NSBundle
@end

@implementation NSBundle

void __49__NSBundle_MNExtras___navigation_isRunningInSiri__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _navigation_isRunningInSiri_isSiri = [v0 isEqualToString:@"com.apple.siri"];
}

void __39__NSBundle_MNExtras___navigationBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Navigation"];
  v1 = _navigationBundle_bundle;
  _navigationBundle_bundle = v0;
}

uint64_t __54__NSBundle_MNExtras___navigation_implementsSiriMethod__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  _navigation_implementsSiriMethod_implementsSiriMethod = result & 1;
  return result;
}

@end
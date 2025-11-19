@interface NSBundle
@end

@implementation NSBundle

void __73__NSBundle_MobileSafariFrameworkExtras__safari_isSafariViewServiceBundle__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  safari_isSafariViewServiceBundle_isSafariViewService = [v0 isEqualToString:@"com.apple.SafariViewService"];
}

@end
@interface MTLoggingPreferenceProvider
@end

@implementation MTLoggingPreferenceProvider

void __MTLoggingPreferenceProvider_block_invoke(id a1)
{
  MTLoggingPreferenceProvider___logObj = os_log_create("com.apple.Multitouch.SessionFilter", "PreferenceProvider");

  _objc_release_x1();
}

@end
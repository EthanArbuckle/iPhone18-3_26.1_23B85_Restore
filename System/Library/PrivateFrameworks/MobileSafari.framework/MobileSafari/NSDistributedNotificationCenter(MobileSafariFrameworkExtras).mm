@interface NSDistributedNotificationCenter(MobileSafariFrameworkExtras)
+ (void)_sf_postPerSitePreferencesDidChangeDistributedNotification;
@end

@implementation NSDistributedNotificationCenter(MobileSafariFrameworkExtras)

+ (void)_sf_postPerSitePreferencesDidChangeDistributedNotification
{
  v2 = [a1 defaultCenter];
  v1 = processIdentifierString();
  [v2 postNotificationName:@"com.apple.mobilesafari.PerSitePreferenceDidChange" object:v1];
}

@end
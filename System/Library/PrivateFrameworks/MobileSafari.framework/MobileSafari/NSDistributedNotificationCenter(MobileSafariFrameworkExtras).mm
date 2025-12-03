@interface NSDistributedNotificationCenter(MobileSafariFrameworkExtras)
+ (void)_sf_postPerSitePreferencesDidChangeDistributedNotification;
@end

@implementation NSDistributedNotificationCenter(MobileSafariFrameworkExtras)

+ (void)_sf_postPerSitePreferencesDidChangeDistributedNotification
{
  defaultCenter = [self defaultCenter];
  v1 = processIdentifierString();
  [defaultCenter postNotificationName:@"com.apple.mobilesafari.PerSitePreferenceDidChange" object:v1];
}

@end
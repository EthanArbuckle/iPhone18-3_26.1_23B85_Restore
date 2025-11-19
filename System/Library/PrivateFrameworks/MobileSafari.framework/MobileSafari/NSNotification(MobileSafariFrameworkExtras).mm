@interface NSNotification(MobileSafariFrameworkExtras)
- (uint64_t)_sf_perSitePreferenceNotificationWasSentFromAnotherProcess;
@end

@implementation NSNotification(MobileSafariFrameworkExtras)

- (uint64_t)_sf_perSitePreferenceNotificationWasSentFromAnotherProcess
{
  v1 = [a1 object];
  v2 = processIdentifierString();
  v3 = [v1 isEqualToString:v2];

  return v3 ^ 1u;
}

@end
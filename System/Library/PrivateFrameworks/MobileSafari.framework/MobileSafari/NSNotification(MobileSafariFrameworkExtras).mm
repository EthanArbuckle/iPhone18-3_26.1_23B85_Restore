@interface NSNotification(MobileSafariFrameworkExtras)
- (uint64_t)_sf_perSitePreferenceNotificationWasSentFromAnotherProcess;
@end

@implementation NSNotification(MobileSafariFrameworkExtras)

- (uint64_t)_sf_perSitePreferenceNotificationWasSentFromAnotherProcess
{
  object = [self object];
  v2 = processIdentifierString();
  v3 = [object isEqualToString:v2];

  return v3 ^ 1u;
}

@end
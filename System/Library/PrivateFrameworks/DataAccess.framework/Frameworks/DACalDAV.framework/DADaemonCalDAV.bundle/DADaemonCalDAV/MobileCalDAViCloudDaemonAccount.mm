@interface MobileCalDAViCloudDaemonAccount
- (void)noteHomeSetOnDifferentHost:(id)host;
@end

@implementation MobileCalDAViCloudDaemonAccount

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  backingAccount = [(MobileCalDAViCloudDaemonAccount *)self backingAccount];
  [backingAccount noteHomeSetOnDifferentHost:hostCopy];
}

@end
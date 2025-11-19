@interface MobileCalDAViCloudDaemonAccount
- (void)noteHomeSetOnDifferentHost:(id)a3;
@end

@implementation MobileCalDAViCloudDaemonAccount

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAViCloudDaemonAccount *)self backingAccount];
  [v5 noteHomeSetOnDifferentHost:v4];
}

@end
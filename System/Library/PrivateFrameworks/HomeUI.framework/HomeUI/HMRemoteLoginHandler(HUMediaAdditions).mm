@interface HMRemoteLoginHandler(HUMediaAdditions)
- (id)hu_appleMusicInAppAuthenticationContext;
@end

@implementation HMRemoteLoginHandler(HUMediaAdditions)

- (id)hu_appleMusicInAppAuthenticationContext
{
  anisetteDataProvider = [self anisetteDataProvider];
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMRemoteLoginHandler_HUMediaAdditions__hu_appleMusicInAppAuthenticationContext__block_invoke;
  v7[3] = &unk_277DB8200;
  v7[4] = self;
  v8 = anisetteDataProvider;
  v4 = anisetteDataProvider;
  v5 = [v3 futureWithBlock:v7];

  return v5;
}

@end
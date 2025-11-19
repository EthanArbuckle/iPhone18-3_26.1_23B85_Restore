@interface CRSUIApplicationSceneSettingsDiffInspector
- (void)observeBannerFrameWithBlock:(id)a3;
- (void)observeFrameRateLimitWithBlock:(id)a3;
- (void)observeMapStyleWithBlock:(id)a3;
@end

@implementation CRSUIApplicationSceneSettingsDiffInspector

- (void)observeBannerFrameWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CRSUIApplicationSceneSettingsDiffInspector_observeBannerFrameWithBlock___block_invoke;
  v6[3] = &unk_278DA0CC8;
  v7 = v4;
  v5 = v4;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422720 withBlock:v6];
}

- (void)observeMapStyleWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CRSUIApplicationSceneSettingsDiffInspector_observeMapStyleWithBlock___block_invoke;
  v6[3] = &unk_278DA0CC8;
  v7 = v4;
  v5 = v4;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422721 withBlock:v6];
}

- (void)observeFrameRateLimitWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__CRSUIApplicationSceneSettingsDiffInspector_observeFrameRateLimitWithBlock___block_invoke;
  v6[3] = &unk_278DA0CC8;
  v7 = v4;
  v5 = v4;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422722 withBlock:v6];
}

@end
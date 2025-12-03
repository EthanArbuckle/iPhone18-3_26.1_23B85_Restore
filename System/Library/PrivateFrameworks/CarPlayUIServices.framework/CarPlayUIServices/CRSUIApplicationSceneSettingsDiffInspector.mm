@interface CRSUIApplicationSceneSettingsDiffInspector
- (void)observeBannerFrameWithBlock:(id)block;
- (void)observeFrameRateLimitWithBlock:(id)block;
- (void)observeMapStyleWithBlock:(id)block;
@end

@implementation CRSUIApplicationSceneSettingsDiffInspector

- (void)observeBannerFrameWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CRSUIApplicationSceneSettingsDiffInspector_observeBannerFrameWithBlock___block_invoke;
  v6[3] = &unk_278DA0CC8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422720 withBlock:v6];
}

- (void)observeMapStyleWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CRSUIApplicationSceneSettingsDiffInspector_observeMapStyleWithBlock___block_invoke;
  v6[3] = &unk_278DA0CC8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422721 withBlock:v6];
}

- (void)observeFrameRateLimitWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__CRSUIApplicationSceneSettingsDiffInspector_observeFrameRateLimitWithBlock___block_invoke;
  v6[3] = &unk_278DA0CC8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422722 withBlock:v6];
}

@end
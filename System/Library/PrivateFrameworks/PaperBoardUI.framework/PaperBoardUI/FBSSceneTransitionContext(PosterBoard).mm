@interface FBSSceneTransitionContext(PosterBoard)
- (uint64_t)pb_homeAppearanceChanged;
- (void)pb_setHomeAppearanceChanged:()PosterBoard;
@end

@implementation FBSSceneTransitionContext(PosterBoard)

- (uint64_t)pb_homeAppearanceChanged
{
  v1 = [a1 transientLocalClientSettings];
  [v1 flagForSetting:303000];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)pb_setHomeAppearanceChanged:()PosterBoard
{
  v1 = [a1 transientLocalClientSettings];
  [v1 setFlag:BSSettingFlagIfYes() forSetting:303000];
}

@end
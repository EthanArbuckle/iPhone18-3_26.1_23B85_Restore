@interface FBSSceneTransitionContext(PosterBoard)
- (uint64_t)pb_homeAppearanceChanged;
- (void)pb_setHomeAppearanceChanged:()PosterBoard;
@end

@implementation FBSSceneTransitionContext(PosterBoard)

- (uint64_t)pb_homeAppearanceChanged
{
  transientLocalClientSettings = [self transientLocalClientSettings];
  [transientLocalClientSettings flagForSetting:303000];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)pb_setHomeAppearanceChanged:()PosterBoard
{
  transientLocalClientSettings = [self transientLocalClientSettings];
  [transientLocalClientSettings setFlag:BSSettingFlagIfYes() forSetting:303000];
}

@end
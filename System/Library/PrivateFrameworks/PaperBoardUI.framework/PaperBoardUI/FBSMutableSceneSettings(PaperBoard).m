@interface FBSMutableSceneSettings(PaperBoard)
- (void)pb_setActiveVariant:()PaperBoard;
- (void)pb_setAnimationSuspended:()PaperBoard;
- (void)pb_setSignificantEventsCounter:()PaperBoard;
@end

@implementation FBSMutableSceneSettings(PaperBoard)

- (void)pb_setActiveVariant:()PaperBoard
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:303000];
}

- (void)pb_setAnimationSuspended:()PaperBoard
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:303001];
}

- (void)pb_setSignificantEventsCounter:()PaperBoard
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20489];
}

@end
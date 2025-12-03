@interface FBSMutableSceneSettings(PaperBoard)
- (void)pb_setActiveVariant:()PaperBoard;
- (void)pb_setAnimationSuspended:()PaperBoard;
- (void)pb_setSignificantEventsCounter:()PaperBoard;
@end

@implementation FBSMutableSceneSettings(PaperBoard)

- (void)pb_setActiveVariant:()PaperBoard
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [otherSettings setObject:v4 forSetting:303000];
}

- (void)pb_setAnimationSuspended:()PaperBoard
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:303001];
}

- (void)pb_setSignificantEventsCounter:()PaperBoard
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20489];
}

@end
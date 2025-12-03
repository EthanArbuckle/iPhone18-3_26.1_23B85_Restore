@interface CRSUIMutableClimateOverlaySceneClientSettings
- (BOOL)isOverlayHidden;
- (NSArray)presentedPopoverFrames;
- (UIEdgeInsets)stepperInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPresentedPopoverFrames:(id)frames;
- (void)setStepperInsets:(UIEdgeInsets)insets;
@end

@implementation CRSUIMutableClimateOverlaySceneClientSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIClimateOverlaySceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (UIEdgeInsets)stepperInsets
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2075632724];

  [v3 UIEdgeInsetsValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)setStepperInsets:(UIEdgeInsets)insets
{
  v5 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{insets.top, insets.left, insets.bottom, insets.right}];
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v5 forSetting:2075632724];
}

- (NSArray)presentedPopoverFrames
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2075632725];

  return v3;
}

- (void)setPresentedPopoverFrames:(id)frames
{
  framesCopy = frames;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:framesCopy forSetting:2075632725];
}

- (BOOL)isOverlayHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2075632726];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end
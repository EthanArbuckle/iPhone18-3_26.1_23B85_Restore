@interface CRSUIMutableClimateOverlaySceneClientSettings
- (BOOL)isOverlayHidden;
- (NSArray)presentedPopoverFrames;
- (UIEdgeInsets)stepperInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPresentedPopoverFrames:(id)a3;
- (void)setStepperInsets:(UIEdgeInsets)a3;
@end

@implementation CRSUIMutableClimateOverlaySceneClientSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIClimateOverlaySceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (UIEdgeInsets)stepperInsets
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2075632724];

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

- (void)setStepperInsets:(UIEdgeInsets)a3
{
  v5 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{a3.top, a3.left, a3.bottom, a3.right}];
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:2075632724];
}

- (NSArray)presentedPopoverFrames
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2075632725];

  return v3;
}

- (void)setPresentedPopoverFrames:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:2075632725];
}

- (BOOL)isOverlayHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2075632726];
  v4 = [v3 BOOLValue];

  return v4;
}

@end
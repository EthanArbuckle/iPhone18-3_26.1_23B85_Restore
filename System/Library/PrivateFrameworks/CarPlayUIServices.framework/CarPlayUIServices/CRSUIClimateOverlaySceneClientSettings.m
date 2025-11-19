@interface CRSUIClimateOverlaySceneClientSettings
- (BOOL)isOverlayHidden;
- (NSArray)presentedPopoverFrames;
- (UIEdgeInsets)stepperInsets;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CRSUIClimateOverlaySceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIMutableClimateOverlaySceneClientSettings alloc];

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

- (NSArray)presentedPopoverFrames
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2075632725];

  return v3;
}

- (BOOL)isOverlayHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2075632726];
  v4 = [v3 BOOLValue];

  return v4;
}

@end
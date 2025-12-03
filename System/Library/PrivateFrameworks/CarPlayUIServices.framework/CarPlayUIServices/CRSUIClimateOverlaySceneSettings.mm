@interface CRSUIClimateOverlaySceneSettings
- (BOOL)hasPhysicalControlBars;
- (CGRect)primaryDockFrame;
- (CGRect)secondaryDockFrame;
- (NSNumber)persistentElements;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CRSUIClimateOverlaySceneSettings

- (BOOL)hasPhysicalControlBars
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:141334465];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSNumber)persistentElements
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:141334466];

  return v3;
}

- (CGRect)primaryDockFrame
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:141334467];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)secondaryDockFrame
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:141334468];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableClimateOverlaySceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end
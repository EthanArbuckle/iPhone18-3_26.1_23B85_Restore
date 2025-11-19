@interface CRSUIMutableClimateOverlaySceneSettings
- (BOOL)hasPhysicalControlBars;
- (CGRect)primaryDockFrame;
- (CGRect)secondaryDockFrame;
- (NSNumber)persistentElements;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPersistentElements:(id)a3;
- (void)setPrimaryDockFrame:(CGRect)a3;
- (void)setSecondaryDockFrame:(CGRect)a3;
@end

@implementation CRSUIMutableClimateOverlaySceneSettings

- (CGRect)primaryDockFrame
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:141334467];
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

- (BOOL)hasPhysicalControlBars
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:141334465];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSNumber)persistentElements
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:141334466];

  return v3;
}

- (void)setPersistentElements:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 copy];

  [v6 setObject:v5 forSetting:141334466];
}

- (void)setPrimaryDockFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v7 forSetting:141334467];
}

- (void)setSecondaryDockFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v7 forSetting:141334468];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIClimateOverlaySceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (CGRect)secondaryDockFrame
{
  x = self->_secondaryDockFrame.origin.x;
  y = self->_secondaryDockFrame.origin.y;
  width = self->_secondaryDockFrame.size.width;
  height = self->_secondaryDockFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
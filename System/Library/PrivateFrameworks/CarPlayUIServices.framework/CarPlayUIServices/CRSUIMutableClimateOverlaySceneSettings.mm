@interface CRSUIMutableClimateOverlaySceneSettings
- (BOOL)hasPhysicalControlBars;
- (CGRect)primaryDockFrame;
- (CGRect)secondaryDockFrame;
- (NSNumber)persistentElements;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPersistentElements:(id)elements;
- (void)setPrimaryDockFrame:(CGRect)frame;
- (void)setSecondaryDockFrame:(CGRect)frame;
@end

@implementation CRSUIMutableClimateOverlaySceneSettings

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

- (void)setPersistentElements:(id)elements
{
  elementsCopy = elements;
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [elementsCopy copy];

  [otherSettings setObject:v5 forSetting:141334466];
}

- (void)setPrimaryDockFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [otherSettings setObject:v7 forSetting:141334467];
}

- (void)setSecondaryDockFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [otherSettings setObject:v7 forSetting:141334468];
}

- (id)copyWithZone:(_NSZone *)zone
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
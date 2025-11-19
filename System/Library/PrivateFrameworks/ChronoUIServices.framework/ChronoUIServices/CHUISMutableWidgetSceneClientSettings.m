@interface CHUISMutableWidgetSceneClientSettings
- (BOOL)baseContentTouchedDown;
- (BOOL)containsInteractiveControls;
- (NSData)lightingImageData;
- (NSString)entryContentID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (unint64_t)entryContentType;
- (void)setBaseContentTouchedDown:(BOOL)a3;
- (void)setContainsInteractiveControls:(BOOL)a3;
- (void)setEntryContentID:(id)a3;
- (void)setEntryContentType:(unint64_t)a3;
- (void)setLightingImageData:(id)a3;
@end

@implementation CHUISMutableWidgetSceneClientSettings

- (BOOL)containsInteractiveControls
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:88888];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setContainsInteractiveControls:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:88888];
}

- (BOOL)baseContentTouchedDown
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:88889];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setBaseContentTouchedDown:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:88889];
}

- (NSData)lightingImageData
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88890];

  return v3;
}

- (void)setLightingImageData:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88890];
}

- (unint64_t)entryContentType
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88891];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setEntryContentType:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88891];
}

- (NSString)entryContentID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88892];

  return v3;
}

- (void)setEntryContentID:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88892];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHUISWidgetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CHUISMutableWidgetSceneClientSettings;
  v4 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  if (a3 - 88888 <= 4)
  {
    v5 = off_1E8575300[a3 - 88888];

    v4 = v5;
  }

  return v4;
}

@end
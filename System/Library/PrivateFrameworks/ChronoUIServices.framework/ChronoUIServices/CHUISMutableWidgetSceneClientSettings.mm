@interface CHUISMutableWidgetSceneClientSettings
- (BOOL)baseContentTouchedDown;
- (BOOL)containsInteractiveControls;
- (NSData)lightingImageData;
- (NSString)entryContentID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (unint64_t)entryContentType;
- (void)setBaseContentTouchedDown:(BOOL)down;
- (void)setContainsInteractiveControls:(BOOL)controls;
- (void)setEntryContentID:(id)d;
- (void)setEntryContentType:(unint64_t)type;
- (void)setLightingImageData:(id)data;
@end

@implementation CHUISMutableWidgetSceneClientSettings

- (BOOL)containsInteractiveControls
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:88888];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setContainsInteractiveControls:(BOOL)controls
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:88888];
}

- (BOOL)baseContentTouchedDown
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:88889];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setBaseContentTouchedDown:(BOOL)down
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:88889];
}

- (NSData)lightingImageData
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88890];

  return v3;
}

- (void)setLightingImageData:(id)data
{
  dataCopy = data;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dataCopy forSetting:88890];
}

- (unint64_t)entryContentType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88891];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setEntryContentType:(unint64_t)type
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [otherSettings setObject:v4 forSetting:88891];
}

- (NSString)entryContentID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88892];

  return v3;
}

- (void)setEntryContentID:(id)d
{
  dCopy = d;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dCopy forSetting:88892];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWidgetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v7.receiver = self;
  v7.super_class = CHUISMutableWidgetSceneClientSettings;
  v4 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  if (setting - 88888 <= 4)
  {
    v5 = off_1E8575300[setting - 88888];

    v4 = v5;
  }

  return v4;
}

@end
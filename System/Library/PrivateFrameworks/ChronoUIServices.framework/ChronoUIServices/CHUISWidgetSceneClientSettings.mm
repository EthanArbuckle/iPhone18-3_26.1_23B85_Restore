@interface CHUISWidgetSceneClientSettings
- (BOOL)baseContentTouchedDown;
- (BOOL)containsInteractiveControls;
- (NSData)lightingImageData;
- (NSString)entryContentID;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)entryContentType;
@end

@implementation CHUISWidgetSceneClientSettings

- (BOOL)containsInteractiveControls
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:88888];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)baseContentTouchedDown
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:88889];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (unint64_t)entryContentType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88891];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSData)lightingImageData
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88890];

  return v3;
}

- (NSString)entryContentID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88892];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHUISMutableWidgetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 88888 >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CHUISWidgetSceneClientSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  else
  {
    v5 = off_1E8575300[setting - 88888];
  }

  return v5;
}

@end
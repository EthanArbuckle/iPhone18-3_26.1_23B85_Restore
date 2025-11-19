@interface CHUISWidgetSceneClientSettings
- (BOOL)baseContentTouchedDown;
- (BOOL)containsInteractiveControls;
- (NSData)lightingImageData;
- (NSString)entryContentID;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)entryContentType;
@end

@implementation CHUISWidgetSceneClientSettings

- (BOOL)containsInteractiveControls
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:88888];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)baseContentTouchedDown
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:88889];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (unint64_t)entryContentType
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88891];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (NSData)lightingImageData
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88890];

  return v3;
}

- (NSString)entryContentID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88892];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHUISMutableWidgetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 88888 >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CHUISWidgetSceneClientSettings;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  else
  {
    v5 = off_1E8575300[a3 - 88888];
  }

  return v5;
}

@end
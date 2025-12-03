@interface CHUISMutableWatchComplicationsWidgetSceneClientSettings
- (double)curvedTextAngularWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)setCurvedTextAngularWidth:(double)width;
@end

@implementation CHUISMutableWatchComplicationsWidgetSceneClientSettings

- (double)curvedTextAngularWidth
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:89888];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setCurvedTextAngularWidth:(double)width
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  [otherSettings setObject:v4 forSetting:89888];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWatchComplicationsWidgetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 89888)
  {
    v5 = @"curvedTextAngularWidth";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CHUISMutableWatchComplicationsWidgetSceneClientSettings;
    v5 = [(CHUISMutableWidgetSceneClientSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = objectCopy;
  if (setting == 89888)
  {
    v10 = objectCopy;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CHUISMutableWatchComplicationsWidgetSceneClientSettings;
    v10 = [(FBSSettings *)&v13 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v11 = v10;

  return v11;
}

@end
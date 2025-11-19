@interface CHUISWatchComplicationsWidgetSceneClientSettings
- (double)curvedTextAngularWidth;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
@end

@implementation CHUISWatchComplicationsWidgetSceneClientSettings

- (double)curvedTextAngularWidth
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:89888];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHUISMutableWatchComplicationsWidgetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 89888)
  {
    v5 = @"curvedTextAngularWidth";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CHUISWatchComplicationsWidgetSceneClientSettings;
    v5 = [(CHUISWidgetSceneClientSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  if (a5 == 89888)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CHUISWatchComplicationsWidgetSceneClientSettings;
    v10 = [(FBSSettings *)&v13 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v11 = v10;

  return v11;
}

@end
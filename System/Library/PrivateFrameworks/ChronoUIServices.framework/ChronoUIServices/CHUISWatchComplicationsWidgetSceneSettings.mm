@interface CHUISWatchComplicationsWidgetSceneSettings
- (BOOL)generateSnapshotMetadata;
- (BOOL)includeAccessoryViews;
- (CGPoint)bezelContentCenter;
- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)cornerPosition;
@end

@implementation CHUISWatchComplicationsWidgetSceneSettings

- (unint64_t)cornerPosition
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:89888];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:89889];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CGPoint)bezelContentCenter
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:89890];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 CGPointValue];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)includeAccessoryViews
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:89891];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)generateSnapshotMetadata
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:89892];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHUISMutableWatchComplicationsWidgetSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v5 = setting - 89889;
  if (setting - 89888 > 4)
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = CHUISWatchComplicationsWidgetSceneSettings;
    v6 = [(CHUISWidgetSceneSettings *)&v8 keyDescriptionForSetting:?];
  }

  else if (v5 > 3)
  {
    v6 = @"cornerPosition";
  }

  else
  {
    v6 = off_1E8575438[v5];
  }

  return v6;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  if (setting - 89888 > 4)
  {
    v11.receiver = self;
    v11.super_class = CHUISWatchComplicationsWidgetSceneSettings;
    v9 = [(CHUISWidgetSceneSettings *)&v11 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  else
  {
    CHUISWatchComplicationsWidgetSceneSettingsValueDescription(setting, objectCopy);
    objc_claimAutoreleasedReturnValue();
    v9 = objectCopy;
  }

  return v9;
}

@end
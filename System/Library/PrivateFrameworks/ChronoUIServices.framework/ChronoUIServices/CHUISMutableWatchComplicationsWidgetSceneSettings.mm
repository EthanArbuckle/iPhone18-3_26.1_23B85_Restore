@interface CHUISMutableWatchComplicationsWidgetSceneSettings
- (BOOL)generateSnapshotMetadata;
- (BOOL)includeAccessoryViews;
- (CGPoint)bezelContentCenter;
- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (unint64_t)cornerPosition;
- (void)setBezelContentCenter:(CGPoint)center;
- (void)setCornerPosition:(unint64_t)position;
- (void)setCurvedLabelMetrics:(id)metrics;
@end

@implementation CHUISMutableWatchComplicationsWidgetSceneSettings

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

- (void)setCornerPosition:(unint64_t)position
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
  [otherSettings setObject:v4 forSetting:89888];
}

- (void)setCurvedLabelMetrics:(id)metrics
{
  metricsCopy = metrics;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:metricsCopy forSetting:89889];
}

- (void)setBezelContentCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  *v7 = x;
  *&v7[1] = y;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  [otherSettings setObject:v6 forSetting:89890];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWatchComplicationsWidgetSceneSettings alloc];

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
    v8.super_class = CHUISMutableWatchComplicationsWidgetSceneSettings;
    v6 = [(CHUISMutableWidgetSceneSettings *)&v8 keyDescriptionForSetting:?];
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
    v11.super_class = CHUISMutableWatchComplicationsWidgetSceneSettings;
    v9 = [(CHUISMutableWidgetSceneSettings *)&v11 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
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
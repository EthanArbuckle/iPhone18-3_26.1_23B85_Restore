@interface CHUISMutableWatchComplicationsWidgetSceneSettings
- (BOOL)generateSnapshotMetadata;
- (BOOL)includeAccessoryViews;
- (CGPoint)bezelContentCenter;
- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (unint64_t)cornerPosition;
- (void)setBezelContentCenter:(CGPoint)a3;
- (void)setCornerPosition:(unint64_t)a3;
- (void)setCurvedLabelMetrics:(id)a3;
@end

@implementation CHUISMutableWatchComplicationsWidgetSceneSettings

- (unint64_t)cornerPosition
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:89888];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:89889];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:89890];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:89891];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)generateSnapshotMetadata
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:89892];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (void)setCornerPosition:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:89888];
}

- (void)setCurvedLabelMetrics:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:89889];
}

- (void)setBezelContentCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(FBSSettings *)self otherSettings];
  *v7 = x;
  *&v7[1] = y;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  [v5 setObject:v6 forSetting:89890];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHUISWatchComplicationsWidgetSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v5 = a3 - 89889;
  if (a3 - 89888 > 4)
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

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  if (a5 - 89888 > 4)
  {
    v11.receiver = self;
    v11.super_class = CHUISMutableWatchComplicationsWidgetSceneSettings;
    v9 = [(CHUISMutableWidgetSceneSettings *)&v11 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  else
  {
    CHUISWatchComplicationsWidgetSceneSettingsValueDescription(a5, v8);
    objc_claimAutoreleasedReturnValue();
    v9 = v8;
  }

  return v9;
}

@end
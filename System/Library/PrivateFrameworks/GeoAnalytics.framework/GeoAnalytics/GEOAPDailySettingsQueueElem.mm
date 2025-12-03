@interface GEOAPDailySettingsQueueElem
- (BOOL)isEqual:(id)equal;
- (GEOAPDailySettingsQueueElem)initWithSettings:(id)settings createTime:(id)time;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPDailySettingsQueueElem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    createTime = [v5 createTime];
    createTime2 = [(GEOAPQueueElem *)self createTime];
    [createTime timeIntervalSinceDate:createTime2];
    v9 = v8;

    v10 = -v9;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    if (v10 >= 1.0)
    {
      v13 = 0;
    }

    else
    {
      settings = self->_settings;
      settings = [v5 settings];
      v13 = [(GEOLogMsgEventPeriodicSettingsSummary *)settings isEqual:settings];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  createTime = [(GEOAPQueueElem *)self createTime];
  v4 = [createTime hash];
  settings = [(GEOAPDailySettingsQueueElem *)self settings];
  v6 = [settings hash];

  return v6 ^ v4;
}

- (id)copy
{
  v3 = [GEOAPDailySettingsQueueElem alloc];
  settings = self->_settings;
  createTime = self->super._createTime;

  return [(GEOAPDailySettingsQueueElem *)v3 initWithSettings:settings createTime:createTime];
}

- (GEOAPDailySettingsQueueElem)initWithSettings:(id)settings createTime:(id)time
{
  settingsCopy = settings;
  timeCopy = time;
  v12.receiver = self;
  v12.super_class = GEOAPDailySettingsQueueElem;
  v9 = [(GEOAPQueueElem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->super._createTime, time);
    objc_storeStrong(&v10->_settings, settings);
  }

  return v10;
}

@end
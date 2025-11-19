@interface GEOAPDailySettingsQueueElem
- (BOOL)isEqual:(id)a3;
- (GEOAPDailySettingsQueueElem)initWithSettings:(id)a3 createTime:(id)a4;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPDailySettingsQueueElem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 createTime];
    v7 = [(GEOAPQueueElem *)self createTime];
    [v6 timeIntervalSinceDate:v7];
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
      v12 = [v5 settings];
      v13 = [(GEOLogMsgEventPeriodicSettingsSummary *)settings isEqual:v12];
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
  v3 = [(GEOAPQueueElem *)self createTime];
  v4 = [v3 hash];
  v5 = [(GEOAPDailySettingsQueueElem *)self settings];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copy
{
  v3 = [GEOAPDailySettingsQueueElem alloc];
  settings = self->_settings;
  createTime = self->super._createTime;

  return [(GEOAPDailySettingsQueueElem *)v3 initWithSettings:settings createTime:createTime];
}

- (GEOAPDailySettingsQueueElem)initWithSettings:(id)a3 createTime:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GEOAPDailySettingsQueueElem;
  v9 = [(GEOAPQueueElem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->super._createTime, a4);
    objc_storeStrong(&v10->_settings, a3);
  }

  return v10;
}

@end
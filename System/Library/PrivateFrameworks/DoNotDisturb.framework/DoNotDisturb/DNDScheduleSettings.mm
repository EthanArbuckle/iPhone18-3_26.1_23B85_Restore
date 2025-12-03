@interface DNDScheduleSettings
- (BOOL)isEqual:(id)equal;
- (DNDScheduleSettings)initWithCoder:(id)coder;
- (DNDScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)setting timePeriod:(id)period bedtimeBehaviorEnabledSetting:(unint64_t)enabledSetting;
- (id)_initWithSettings:(id)settings;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDScheduleSettings

- (id)_initWithSettings:(id)settings
{
  settingsCopy = settings;
  scheduleEnabledSetting = [settingsCopy scheduleEnabledSetting];
  timePeriod = [settingsCopy timePeriod];
  bedtimeBehaviorEnabledSetting = [settingsCopy bedtimeBehaviorEnabledSetting];

  v8 = [(DNDScheduleSettings *)self initWithScheduleEnabledSetting:scheduleEnabledSetting timePeriod:timePeriod bedtimeBehaviorEnabledSetting:bedtimeBehaviorEnabledSetting];
  return v8;
}

- (DNDScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)setting timePeriod:(id)period bedtimeBehaviorEnabledSetting:(unint64_t)enabledSetting
{
  periodCopy = period;
  v16.receiver = self;
  v16.super_class = DNDScheduleSettings;
  v9 = [(DNDScheduleSettings *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_scheduleEnabledSetting = setting;
    v11 = [periodCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_alloc_init(DNDScheduleTimePeriod);
    }

    timePeriod = v10->_timePeriod;
    v10->_timePeriod = v13;

    v10->_bedtimeBehaviorEnabledSetting = enabledSetting;
  }

  return v10;
}

- (unint64_t)hash
{
  scheduleEnabledSetting = [(DNDScheduleSettings *)self scheduleEnabledSetting];
  timePeriod = [(DNDScheduleSettings *)self timePeriod];
  v5 = [timePeriod hash];
  v6 = scheduleEnabledSetting ^ [(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      scheduleEnabledSetting = [(DNDScheduleSettings *)self scheduleEnabledSetting];
      if (scheduleEnabledSetting != [(DNDScheduleSettings *)v9 scheduleEnabledSetting])
      {
        v15 = 0;
LABEL_18:

        goto LABEL_19;
      }

      timePeriod = [(DNDScheduleSettings *)self timePeriod];
      timePeriod2 = [(DNDScheduleSettings *)v9 timePeriod];
      if (timePeriod != timePeriod2)
      {
        timePeriod3 = [(DNDScheduleSettings *)self timePeriod];
        if (!timePeriod3)
        {
          v15 = 0;
          goto LABEL_17;
        }

        v3 = timePeriod3;
        timePeriod4 = [(DNDScheduleSettings *)v9 timePeriod];
        if (!timePeriod4)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v4 = timePeriod4;
        timePeriod5 = [(DNDScheduleSettings *)self timePeriod];
        timePeriod6 = [(DNDScheduleSettings *)v9 timePeriod];
        if (![timePeriod5 isEqual:timePeriod6])
        {
          v15 = 0;
LABEL_13:

LABEL_16:
          goto LABEL_17;
        }
      }

      bedtimeBehaviorEnabledSetting = [(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting];
      v15 = bedtimeBehaviorEnabledSetting == [(DNDScheduleSettings *)v9 bedtimeBehaviorEnabledSetting];
      if (timePeriod != timePeriod2)
      {
        goto LABEL_13;
      }

LABEL_17:

      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DNDEnabledSettingToString([(DNDScheduleSettings *)self scheduleEnabledSetting]);
  timePeriod = [(DNDScheduleSettings *)self timePeriod];
  v6 = DNDEnabledSettingToString([(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting]);
  v7 = [v3 stringWithFormat:@"<schedule: enabled: %@ period: %@; bedtime: %@>", v4, timePeriod, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableScheduleSettings alloc];

  return [(DNDScheduleSettings *)v4 _initWithSettings:self];
}

- (DNDScheduleSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"scheduleEnabledSetting"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timePeriod"];
  v7 = [coderCopy decodeIntegerForKey:@"bedtimeBehaviorEnabledSetting"];

  v8 = [(DNDScheduleSettings *)self initWithScheduleEnabledSetting:v5 timePeriod:v6 bedtimeBehaviorEnabledSetting:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDScheduleSettings scheduleEnabledSetting](self forKey:{"scheduleEnabledSetting"), @"scheduleEnabledSetting"}];
  timePeriod = [(DNDScheduleSettings *)self timePeriod];
  [coderCopy encodeObject:timePeriod forKey:@"timePeriod"];

  [coderCopy encodeInteger:-[DNDScheduleSettings bedtimeBehaviorEnabledSetting](self forKey:{"bedtimeBehaviorEnabledSetting"), @"bedtimeBehaviorEnabledSetting"}];
}

@end
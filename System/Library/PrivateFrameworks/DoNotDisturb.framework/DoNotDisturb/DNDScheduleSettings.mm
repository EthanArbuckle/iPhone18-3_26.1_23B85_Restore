@interface DNDScheduleSettings
- (BOOL)isEqual:(id)a3;
- (DNDScheduleSettings)initWithCoder:(id)a3;
- (DNDScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)a3 timePeriod:(id)a4 bedtimeBehaviorEnabledSetting:(unint64_t)a5;
- (id)_initWithSettings:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDScheduleSettings

- (id)_initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 scheduleEnabledSetting];
  v6 = [v4 timePeriod];
  v7 = [v4 bedtimeBehaviorEnabledSetting];

  v8 = [(DNDScheduleSettings *)self initWithScheduleEnabledSetting:v5 timePeriod:v6 bedtimeBehaviorEnabledSetting:v7];
  return v8;
}

- (DNDScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)a3 timePeriod:(id)a4 bedtimeBehaviorEnabledSetting:(unint64_t)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = DNDScheduleSettings;
  v9 = [(DNDScheduleSettings *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_scheduleEnabledSetting = a3;
    v11 = [v8 copy];
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

    v10->_bedtimeBehaviorEnabledSetting = a5;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDScheduleSettings *)self scheduleEnabledSetting];
  v4 = [(DNDScheduleSettings *)self timePeriod];
  v5 = [v4 hash];
  v6 = v3 ^ [(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DNDScheduleSettings *)self scheduleEnabledSetting];
      if (v10 != [(DNDScheduleSettings *)v9 scheduleEnabledSetting])
      {
        v15 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v11 = [(DNDScheduleSettings *)self timePeriod];
      v12 = [(DNDScheduleSettings *)v9 timePeriod];
      if (v11 != v12)
      {
        v13 = [(DNDScheduleSettings *)self timePeriod];
        if (!v13)
        {
          v15 = 0;
          goto LABEL_17;
        }

        v3 = v13;
        v14 = [(DNDScheduleSettings *)v9 timePeriod];
        if (!v14)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v4 = v14;
        v5 = [(DNDScheduleSettings *)self timePeriod];
        v6 = [(DNDScheduleSettings *)v9 timePeriod];
        if (![v5 isEqual:v6])
        {
          v15 = 0;
LABEL_13:

LABEL_16:
          goto LABEL_17;
        }
      }

      v16 = [(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting];
      v15 = v16 == [(DNDScheduleSettings *)v9 bedtimeBehaviorEnabledSetting];
      if (v11 != v12)
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
  v5 = [(DNDScheduleSettings *)self timePeriod];
  v6 = DNDEnabledSettingToString([(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting]);
  v7 = [v3 stringWithFormat:@"<schedule: enabled: %@ period: %@; bedtime: %@>", v4, v5, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableScheduleSettings alloc];

  return [(DNDScheduleSettings *)v4 _initWithSettings:self];
}

- (DNDScheduleSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"scheduleEnabledSetting"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timePeriod"];
  v7 = [v4 decodeIntegerForKey:@"bedtimeBehaviorEnabledSetting"];

  v8 = [(DNDScheduleSettings *)self initWithScheduleEnabledSetting:v5 timePeriod:v6 bedtimeBehaviorEnabledSetting:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[DNDScheduleSettings scheduleEnabledSetting](self forKey:{"scheduleEnabledSetting"), @"scheduleEnabledSetting"}];
  v4 = [(DNDScheduleSettings *)self timePeriod];
  [v5 encodeObject:v4 forKey:@"timePeriod"];

  [v5 encodeInteger:-[DNDScheduleSettings bedtimeBehaviorEnabledSetting](self forKey:{"bedtimeBehaviorEnabledSetting"), @"bedtimeBehaviorEnabledSetting"}];
}

@end
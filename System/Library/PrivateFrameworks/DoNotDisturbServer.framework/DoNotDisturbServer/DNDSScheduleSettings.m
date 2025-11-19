@interface DNDSScheduleSettings
+ (id)defaultScheduleSettings;
+ (id)settingsForRecord:(id)a3;
+ (id)settingsWithClientSettings:(id)a3 creationDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)a3 timePeriod:(id)a4 bedtimeBehaviorEnabledSetting:(unint64_t)a5 creationDate:(id)a6;
- (id)description;
- (id)makeRecord;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation DNDSScheduleSettings

+ (id)defaultScheduleSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D05A80]);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [DNDSScheduleSettings settingsWithClientSettings:v2 creationDate:v3];

  return v4;
}

+ (id)settingsWithClientSettings:(id)a3 creationDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [v7 scheduleEnabledSetting];
  v10 = [v7 timePeriod];
  v11 = [v7 bedtimeBehaviorEnabledSetting];

  v12 = [v8 initWithScheduleEnabledSetting:v9 timePeriod:v10 bedtimeBehaviorEnabledSetting:v11 creationDate:v6];

  return v12;
}

- (DNDSScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)a3 timePeriod:(id)a4 bedtimeBehaviorEnabledSetting:(unint64_t)a5 creationDate:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = DNDSScheduleSettings;
  v11 = [(DNDScheduleSettings *)&v15 initWithScheduleEnabledSetting:a3 timePeriod:a4 bedtimeBehaviorEnabledSetting:a5];
  if (v11)
  {
    v12 = [v10 copy];
    creationDate = v11->_creationDate;
    v11->_creationDate = v12;
  }

  return v11;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = DNDSScheduleSettings;
  v3 = [(DNDScheduleSettings *)&v7 hash];
  v4 = [(DNDSScheduleSettings *)self creationDate];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v14.receiver = self;
      v14.super_class = DNDSScheduleSettings;
      if ([(DNDScheduleSettings *)&v14 isEqual:v5])
      {
        v6 = [(DNDSScheduleSettings *)self creationDate];
        v7 = [(DNDSScheduleSettings *)v5 creationDate];
        if (v6 == v7)
        {
          v12 = 1;
        }

        else
        {
          v8 = [(DNDSScheduleSettings *)self creationDate];
          if (v8)
          {
            v9 = [(DNDSScheduleSettings *)v5 creationDate];
            if (v9)
            {
              v10 = [(DNDSScheduleSettings *)self creationDate];
              v11 = [(DNDSScheduleSettings *)v5 creationDate];
              v12 = [v10 isEqual:v11];
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(DNDScheduleSettings *)self scheduleEnabledSetting];
  v4 = DNDEnabledSettingToString();
  v5 = [(DNDScheduleSettings *)self timePeriod];
  [(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting];
  v6 = DNDEnabledSettingToString();
  v7 = [(DNDSScheduleSettings *)self creationDate];
  v8 = [v3 stringWithFormat:@"<schedule: enabled: %@ %@; bedtime: %@; creation: %@>", v4, v5, v6, v7];;

  return v8;
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D05A80]);
  v5 = [(DNDScheduleSettings *)self scheduleEnabledSetting];
  v6 = [(DNDScheduleSettings *)self timePeriod];
  v7 = [v4 initWithScheduleEnabledSetting:v5 timePeriod:v6 bedtimeBehaviorEnabledSetting:{-[DNDScheduleSettings bedtimeBehaviorEnabledSetting](self, "bedtimeBehaviorEnabledSetting")}];

  return v7;
}

+ (id)settingsForRecord:(id)a3
{
  v3 = MEMORY[0x277D05A60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 timePeriodStartTimeHour];
  [v5 setHour:{objc_msgSend(v6, "unsignedIntegerValue")}];

  v7 = [v4 timePeriodStartTimeMinute];
  [v5 setMinute:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = objc_alloc_init(MEMORY[0x277D05A60]);
  v9 = [v4 timePeriodEndTimeHour];
  [v8 setHour:{objc_msgSend(v9, "unsignedIntegerValue")}];

  v10 = [v4 timePeriodEndTimeMinute];
  [v8 setMinute:{objc_msgSend(v10, "unsignedIntegerValue")}];

  v11 = [v4 timePeriodWeekdays];
  v12 = [v11 integerValue];

  v13 = objc_alloc_init(MEMORY[0x277D05A68]);
  [v13 setStartTime:v5];
  [v13 setEndTime:v8];
  [v13 setWeekdays:v12];
  v14 = [v4 scheduleEnabledSetting];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v4 bedtimeBehaviorEnabledSetting];
  v17 = [v16 unsignedIntegerValue];

  v18 = MEMORY[0x277CBEAA8];
  v19 = [v4 lastUpdatedTimestamp];

  [v19 doubleValue];
  v20 = [v18 dateWithTimeIntervalSinceReferenceDate:?];

  v21 = [[DNDSScheduleSettings alloc] initWithScheduleEnabledSetting:v15 timePeriod:v13 bedtimeBehaviorEnabledSetting:v17 creationDate:v20];

  return v21;
}

- (id)makeRecord
{
  v3 = objc_alloc_init(DNDSMutableScheduleSettingsRecord);
  v4 = MEMORY[0x277CCABB0];
  v5 = [(DNDSScheduleSettings *)self creationDate];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [(DNDSMutableScheduleSettingsRecord *)v3 setLastUpdatedTimestamp:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDScheduleSettings scheduleEnabledSetting](self, "scheduleEnabledSetting")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setScheduleEnabledSetting:v7];

  v8 = [(DNDScheduleSettings *)self timePeriod];
  v9 = [v8 weekdays];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodWeekdays:v10];

  v11 = [v8 startTime];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodStartTimeHour:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodStartTimeMinute:v13];

  v14 = [v8 endTime];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodEndTimeHour:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodEndTimeMinute:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDScheduleSettings bedtimeBehaviorEnabledSetting](self, "bedtimeBehaviorEnabledSetting")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setBedtimeBehaviorEnabledSetting:v17];

  return v3;
}

@end
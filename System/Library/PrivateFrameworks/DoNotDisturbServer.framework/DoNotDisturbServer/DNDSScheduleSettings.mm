@interface DNDSScheduleSettings
+ (id)defaultScheduleSettings;
+ (id)settingsForRecord:(id)record;
+ (id)settingsWithClientSettings:(id)settings creationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (DNDSScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)setting timePeriod:(id)period bedtimeBehaviorEnabledSetting:(unint64_t)enabledSetting creationDate:(id)date;
- (id)description;
- (id)makeRecord;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
@end

@implementation DNDSScheduleSettings

+ (id)defaultScheduleSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D05A80]);
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [DNDSScheduleSettings settingsWithClientSettings:v2 creationDate:date];

  return v4;
}

+ (id)settingsWithClientSettings:(id)settings creationDate:(id)date
{
  dateCopy = date;
  settingsCopy = settings;
  v8 = [self alloc];
  scheduleEnabledSetting = [settingsCopy scheduleEnabledSetting];
  timePeriod = [settingsCopy timePeriod];
  bedtimeBehaviorEnabledSetting = [settingsCopy bedtimeBehaviorEnabledSetting];

  v12 = [v8 initWithScheduleEnabledSetting:scheduleEnabledSetting timePeriod:timePeriod bedtimeBehaviorEnabledSetting:bedtimeBehaviorEnabledSetting creationDate:dateCopy];

  return v12;
}

- (DNDSScheduleSettings)initWithScheduleEnabledSetting:(unint64_t)setting timePeriod:(id)period bedtimeBehaviorEnabledSetting:(unint64_t)enabledSetting creationDate:(id)date
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = DNDSScheduleSettings;
  v11 = [(DNDScheduleSettings *)&v15 initWithScheduleEnabledSetting:setting timePeriod:period bedtimeBehaviorEnabledSetting:enabledSetting];
  if (v11)
  {
    v12 = [dateCopy copy];
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
  creationDate = [(DNDSScheduleSettings *)self creationDate];
  v5 = [creationDate hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v14.receiver = self;
      v14.super_class = DNDSScheduleSettings;
      if ([(DNDScheduleSettings *)&v14 isEqual:v5])
      {
        creationDate = [(DNDSScheduleSettings *)self creationDate];
        creationDate2 = [(DNDSScheduleSettings *)v5 creationDate];
        if (creationDate == creationDate2)
        {
          v12 = 1;
        }

        else
        {
          creationDate3 = [(DNDSScheduleSettings *)self creationDate];
          if (creationDate3)
          {
            creationDate4 = [(DNDSScheduleSettings *)v5 creationDate];
            if (creationDate4)
            {
              creationDate5 = [(DNDSScheduleSettings *)self creationDate];
              creationDate6 = [(DNDSScheduleSettings *)v5 creationDate];
              v12 = [creationDate5 isEqual:creationDate6];
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
  timePeriod = [(DNDScheduleSettings *)self timePeriod];
  [(DNDScheduleSettings *)self bedtimeBehaviorEnabledSetting];
  v6 = DNDEnabledSettingToString();
  creationDate = [(DNDSScheduleSettings *)self creationDate];
  v8 = [v3 stringWithFormat:@"<schedule: enabled: %@ %@; bedtime: %@; creation: %@>", v4, timePeriod, v6, creationDate];;

  return v8;
}

- (id)replacementObjectForCoder:(id)coder
{
  v4 = objc_alloc(MEMORY[0x277D05A80]);
  scheduleEnabledSetting = [(DNDScheduleSettings *)self scheduleEnabledSetting];
  timePeriod = [(DNDScheduleSettings *)self timePeriod];
  v7 = [v4 initWithScheduleEnabledSetting:scheduleEnabledSetting timePeriod:timePeriod bedtimeBehaviorEnabledSetting:{-[DNDScheduleSettings bedtimeBehaviorEnabledSetting](self, "bedtimeBehaviorEnabledSetting")}];

  return v7;
}

+ (id)settingsForRecord:(id)record
{
  v3 = MEMORY[0x277D05A60];
  recordCopy = record;
  v5 = objc_alloc_init(v3);
  timePeriodStartTimeHour = [recordCopy timePeriodStartTimeHour];
  [v5 setHour:{objc_msgSend(timePeriodStartTimeHour, "unsignedIntegerValue")}];

  timePeriodStartTimeMinute = [recordCopy timePeriodStartTimeMinute];
  [v5 setMinute:{objc_msgSend(timePeriodStartTimeMinute, "unsignedIntegerValue")}];

  v8 = objc_alloc_init(MEMORY[0x277D05A60]);
  timePeriodEndTimeHour = [recordCopy timePeriodEndTimeHour];
  [v8 setHour:{objc_msgSend(timePeriodEndTimeHour, "unsignedIntegerValue")}];

  timePeriodEndTimeMinute = [recordCopy timePeriodEndTimeMinute];
  [v8 setMinute:{objc_msgSend(timePeriodEndTimeMinute, "unsignedIntegerValue")}];

  timePeriodWeekdays = [recordCopy timePeriodWeekdays];
  integerValue = [timePeriodWeekdays integerValue];

  v13 = objc_alloc_init(MEMORY[0x277D05A68]);
  [v13 setStartTime:v5];
  [v13 setEndTime:v8];
  [v13 setWeekdays:integerValue];
  scheduleEnabledSetting = [recordCopy scheduleEnabledSetting];
  unsignedIntegerValue = [scheduleEnabledSetting unsignedIntegerValue];

  bedtimeBehaviorEnabledSetting = [recordCopy bedtimeBehaviorEnabledSetting];
  unsignedIntegerValue2 = [bedtimeBehaviorEnabledSetting unsignedIntegerValue];

  v18 = MEMORY[0x277CBEAA8];
  lastUpdatedTimestamp = [recordCopy lastUpdatedTimestamp];

  [lastUpdatedTimestamp doubleValue];
  v20 = [v18 dateWithTimeIntervalSinceReferenceDate:?];

  v21 = [[DNDSScheduleSettings alloc] initWithScheduleEnabledSetting:unsignedIntegerValue timePeriod:v13 bedtimeBehaviorEnabledSetting:unsignedIntegerValue2 creationDate:v20];

  return v21;
}

- (id)makeRecord
{
  v3 = objc_alloc_init(DNDSMutableScheduleSettingsRecord);
  v4 = MEMORY[0x277CCABB0];
  creationDate = [(DNDSScheduleSettings *)self creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [(DNDSMutableScheduleSettingsRecord *)v3 setLastUpdatedTimestamp:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDScheduleSettings scheduleEnabledSetting](self, "scheduleEnabledSetting")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setScheduleEnabledSetting:v7];

  timePeriod = [(DNDScheduleSettings *)self timePeriod];
  weekdays = [timePeriod weekdays];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:weekdays];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodWeekdays:v10];

  startTime = [timePeriod startTime];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(startTime, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodStartTimeHour:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(startTime, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodStartTimeMinute:v13];

  endTime = [timePeriod endTime];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(endTime, "hour")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodEndTimeHour:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(endTime, "minute")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setTimePeriodEndTimeMinute:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDScheduleSettings bedtimeBehaviorEnabledSetting](self, "bedtimeBehaviorEnabledSetting")}];
  [(DNDSMutableScheduleSettingsRecord *)v3 setBedtimeBehaviorEnabledSetting:v17];

  return v3;
}

@end
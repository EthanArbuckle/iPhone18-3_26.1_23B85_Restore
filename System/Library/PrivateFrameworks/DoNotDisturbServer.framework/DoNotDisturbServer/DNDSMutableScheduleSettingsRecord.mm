@interface DNDSMutableScheduleSettingsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBedtimeBehaviorEnabledSetting:(id)setting;
- (void)setLastUpdatedTimestamp:(id)timestamp;
- (void)setScheduleEnabledSetting:(id)setting;
- (void)setTimePeriodEndTimeHour:(id)hour;
- (void)setTimePeriodEndTimeMinute:(id)minute;
- (void)setTimePeriodStartTimeHour:(id)hour;
- (void)setTimePeriodStartTimeMinute:(id)minute;
- (void)setTimePeriodWeekdays:(id)weekdays;
@end

@implementation DNDSMutableScheduleSettingsRecord

- (void)setLastUpdatedTimestamp:(id)timestamp
{
  v4 = [timestamp copy];
  lastUpdatedTimestamp = self->super._lastUpdatedTimestamp;
  self->super._lastUpdatedTimestamp = v4;

  MEMORY[0x2821F96F8](v4, lastUpdatedTimestamp);
}

- (void)setScheduleEnabledSetting:(id)setting
{
  v4 = [setting copy];
  scheduleEnabledSetting = self->super._scheduleEnabledSetting;
  self->super._scheduleEnabledSetting = v4;

  MEMORY[0x2821F96F8](v4, scheduleEnabledSetting);
}

- (void)setTimePeriodStartTimeHour:(id)hour
{
  v4 = [hour copy];
  timePeriodStartTimeHour = self->super._timePeriodStartTimeHour;
  self->super._timePeriodStartTimeHour = v4;

  MEMORY[0x2821F96F8](v4, timePeriodStartTimeHour);
}

- (void)setTimePeriodStartTimeMinute:(id)minute
{
  v4 = [minute copy];
  timePeriodStartTimeMinute = self->super._timePeriodStartTimeMinute;
  self->super._timePeriodStartTimeMinute = v4;

  MEMORY[0x2821F96F8](v4, timePeriodStartTimeMinute);
}

- (void)setTimePeriodEndTimeHour:(id)hour
{
  v4 = [hour copy];
  timePeriodEndTimeHour = self->super._timePeriodEndTimeHour;
  self->super._timePeriodEndTimeHour = v4;

  MEMORY[0x2821F96F8](v4, timePeriodEndTimeHour);
}

- (void)setTimePeriodEndTimeMinute:(id)minute
{
  v4 = [minute copy];
  timePeriodEndTimeMinute = self->super._timePeriodEndTimeMinute;
  self->super._timePeriodEndTimeMinute = v4;

  MEMORY[0x2821F96F8](v4, timePeriodEndTimeMinute);
}

- (void)setTimePeriodWeekdays:(id)weekdays
{
  v4 = [weekdays copy];
  timePeriodWeekdays = self->super._timePeriodWeekdays;
  self->super._timePeriodWeekdays = v4;

  MEMORY[0x2821F96F8](v4, timePeriodWeekdays);
}

- (void)setBedtimeBehaviorEnabledSetting:(id)setting
{
  v4 = [setting copy];
  bedtimeBehaviorEnabledSetting = self->super._bedtimeBehaviorEnabledSetting;
  self->super._bedtimeBehaviorEnabledSetting = v4;

  MEMORY[0x2821F96F8](v4, bedtimeBehaviorEnabledSetting);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSScheduleSettingsRecord alloc];

  return [(DNDSScheduleSettingsRecord *)v4 _initWithRecord:self];
}

@end
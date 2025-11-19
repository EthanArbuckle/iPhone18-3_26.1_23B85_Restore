@interface DNDSMutableScheduleSettingsRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBedtimeBehaviorEnabledSetting:(id)a3;
- (void)setLastUpdatedTimestamp:(id)a3;
- (void)setScheduleEnabledSetting:(id)a3;
- (void)setTimePeriodEndTimeHour:(id)a3;
- (void)setTimePeriodEndTimeMinute:(id)a3;
- (void)setTimePeriodStartTimeHour:(id)a3;
- (void)setTimePeriodStartTimeMinute:(id)a3;
- (void)setTimePeriodWeekdays:(id)a3;
@end

@implementation DNDSMutableScheduleSettingsRecord

- (void)setLastUpdatedTimestamp:(id)a3
{
  v4 = [a3 copy];
  lastUpdatedTimestamp = self->super._lastUpdatedTimestamp;
  self->super._lastUpdatedTimestamp = v4;

  MEMORY[0x2821F96F8](v4, lastUpdatedTimestamp);
}

- (void)setScheduleEnabledSetting:(id)a3
{
  v4 = [a3 copy];
  scheduleEnabledSetting = self->super._scheduleEnabledSetting;
  self->super._scheduleEnabledSetting = v4;

  MEMORY[0x2821F96F8](v4, scheduleEnabledSetting);
}

- (void)setTimePeriodStartTimeHour:(id)a3
{
  v4 = [a3 copy];
  timePeriodStartTimeHour = self->super._timePeriodStartTimeHour;
  self->super._timePeriodStartTimeHour = v4;

  MEMORY[0x2821F96F8](v4, timePeriodStartTimeHour);
}

- (void)setTimePeriodStartTimeMinute:(id)a3
{
  v4 = [a3 copy];
  timePeriodStartTimeMinute = self->super._timePeriodStartTimeMinute;
  self->super._timePeriodStartTimeMinute = v4;

  MEMORY[0x2821F96F8](v4, timePeriodStartTimeMinute);
}

- (void)setTimePeriodEndTimeHour:(id)a3
{
  v4 = [a3 copy];
  timePeriodEndTimeHour = self->super._timePeriodEndTimeHour;
  self->super._timePeriodEndTimeHour = v4;

  MEMORY[0x2821F96F8](v4, timePeriodEndTimeHour);
}

- (void)setTimePeriodEndTimeMinute:(id)a3
{
  v4 = [a3 copy];
  timePeriodEndTimeMinute = self->super._timePeriodEndTimeMinute;
  self->super._timePeriodEndTimeMinute = v4;

  MEMORY[0x2821F96F8](v4, timePeriodEndTimeMinute);
}

- (void)setTimePeriodWeekdays:(id)a3
{
  v4 = [a3 copy];
  timePeriodWeekdays = self->super._timePeriodWeekdays;
  self->super._timePeriodWeekdays = v4;

  MEMORY[0x2821F96F8](v4, timePeriodWeekdays);
}

- (void)setBedtimeBehaviorEnabledSetting:(id)a3
{
  v4 = [a3 copy];
  bedtimeBehaviorEnabledSetting = self->super._bedtimeBehaviorEnabledSetting;
  self->super._bedtimeBehaviorEnabledSetting = v4;

  MEMORY[0x2821F96F8](v4, bedtimeBehaviorEnabledSetting);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSScheduleSettingsRecord alloc];

  return [(DNDSScheduleSettingsRecord *)v4 _initWithRecord:self];
}

@end
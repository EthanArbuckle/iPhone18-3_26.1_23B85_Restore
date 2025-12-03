@interface HDSleepPeriodInfo
- (HDSleepPeriodInfo)initWithUserSetSchedules:(id)schedules incompleteSessions:(id)sessions mappedTimezones:(id)timezones;
@end

@implementation HDSleepPeriodInfo

- (HDSleepPeriodInfo)initWithUserSetSchedules:(id)schedules incompleteSessions:(id)sessions mappedTimezones:(id)timezones
{
  schedulesCopy = schedules;
  sessionsCopy = sessions;
  timezonesCopy = timezones;
  v19.receiver = self;
  v19.super_class = HDSleepPeriodInfo;
  v11 = [(HDSleepPeriodInfo *)&v19 init];
  if (v11)
  {
    v12 = [schedulesCopy copy];
    userSetSchedules = v11->_userSetSchedules;
    v11->_userSetSchedules = v12;

    v14 = [sessionsCopy copy];
    incompleteSessions = v11->_incompleteSessions;
    v11->_incompleteSessions = v14;

    v16 = [timezonesCopy copy];
    mappedTimezones = v11->_mappedTimezones;
    v11->_mappedTimezones = v16;
  }

  return v11;
}

@end
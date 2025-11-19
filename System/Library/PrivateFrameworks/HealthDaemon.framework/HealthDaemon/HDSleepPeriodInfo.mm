@interface HDSleepPeriodInfo
- (HDSleepPeriodInfo)initWithUserSetSchedules:(id)a3 incompleteSessions:(id)a4 mappedTimezones:(id)a5;
@end

@implementation HDSleepPeriodInfo

- (HDSleepPeriodInfo)initWithUserSetSchedules:(id)a3 incompleteSessions:(id)a4 mappedTimezones:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDSleepPeriodInfo;
  v11 = [(HDSleepPeriodInfo *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    userSetSchedules = v11->_userSetSchedules;
    v11->_userSetSchedules = v12;

    v14 = [v9 copy];
    incompleteSessions = v11->_incompleteSessions;
    v11->_incompleteSessions = v14;

    v16 = [v10 copy];
    mappedTimezones = v11->_mappedTimezones;
    v11->_mappedTimezones = v16;
  }

  return v11;
}

@end
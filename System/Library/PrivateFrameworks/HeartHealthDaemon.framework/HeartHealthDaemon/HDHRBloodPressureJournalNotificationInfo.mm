@interface HDHRBloodPressureJournalNotificationInfo
- (HDHRBloodPressureJournalNotificationInfo)initWithWakeupAlarmStartDate:(id)date wakeupAlarmCount:(unint64_t)count bedtimeAlarmStartDate:(id)startDate bedtimeAlarmCount:(unint64_t)alarmCount;
- (id)description;
@end

@implementation HDHRBloodPressureJournalNotificationInfo

- (HDHRBloodPressureJournalNotificationInfo)initWithWakeupAlarmStartDate:(id)date wakeupAlarmCount:(unint64_t)count bedtimeAlarmStartDate:(id)startDate bedtimeAlarmCount:(unint64_t)alarmCount
{
  dateCopy = date;
  startDateCopy = startDate;
  v15.receiver = self;
  v15.super_class = HDHRBloodPressureJournalNotificationInfo;
  v12 = [(HDHRBloodPressureJournalNotificationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(HDHRBloodPressureJournalNotificationInfo *)v12 setWakeupAlarmStartDate:dateCopy];
    [(HDHRBloodPressureJournalNotificationInfo *)v13 setWakeupAlarmCount:count];
    [(HDHRBloodPressureJournalNotificationInfo *)v13 setBedtimeAlarmStartDate:startDateCopy];
    [(HDHRBloodPressureJournalNotificationInfo *)v13 setBedtimeAlarmCount:alarmCount];
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm"];
  wakeupAlarmStartDate = [(HDHRBloodPressureJournalNotificationInfo *)self wakeupAlarmStartDate];
  if (wakeupAlarmStartDate)
  {
    wakeupAlarmStartDate2 = [(HDHRBloodPressureJournalNotificationInfo *)self wakeupAlarmStartDate];
    v6 = [v3 stringFromDate:wakeupAlarmStartDate2];
  }

  else
  {
    v6 = @"nil";
  }

  bedtimeAlarmStartDate = [(HDHRBloodPressureJournalNotificationInfo *)self bedtimeAlarmStartDate];
  if (bedtimeAlarmStartDate)
  {
    bedtimeAlarmStartDate2 = [(HDHRBloodPressureJournalNotificationInfo *)self bedtimeAlarmStartDate];
    v9 = [v3 stringFromDate:bedtimeAlarmStartDate2];
  }

  else
  {
    v9 = @"nil";
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"<%@: %p> {\n  wakeupAlarmStartDate: %@, \n  wakeupAlarmCount: %lu, \n  bedtimeAlarmStartDate: %@, \n  bedtimeAlarmCount: %lu\n}", v12, self, v6, -[HDHRBloodPressureJournalNotificationInfo wakeupAlarmCount](self, "wakeupAlarmCount"), v9, -[HDHRBloodPressureJournalNotificationInfo bedtimeAlarmCount](self, "bedtimeAlarmCount")];

  return v13;
}

@end
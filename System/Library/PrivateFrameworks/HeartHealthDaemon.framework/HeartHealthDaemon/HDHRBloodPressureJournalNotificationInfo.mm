@interface HDHRBloodPressureJournalNotificationInfo
- (HDHRBloodPressureJournalNotificationInfo)initWithWakeupAlarmStartDate:(id)a3 wakeupAlarmCount:(unint64_t)a4 bedtimeAlarmStartDate:(id)a5 bedtimeAlarmCount:(unint64_t)a6;
- (id)description;
@end

@implementation HDHRBloodPressureJournalNotificationInfo

- (HDHRBloodPressureJournalNotificationInfo)initWithWakeupAlarmStartDate:(id)a3 wakeupAlarmCount:(unint64_t)a4 bedtimeAlarmStartDate:(id)a5 bedtimeAlarmCount:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HDHRBloodPressureJournalNotificationInfo;
  v12 = [(HDHRBloodPressureJournalNotificationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(HDHRBloodPressureJournalNotificationInfo *)v12 setWakeupAlarmStartDate:v10];
    [(HDHRBloodPressureJournalNotificationInfo *)v13 setWakeupAlarmCount:a4];
    [(HDHRBloodPressureJournalNotificationInfo *)v13 setBedtimeAlarmStartDate:v11];
    [(HDHRBloodPressureJournalNotificationInfo *)v13 setBedtimeAlarmCount:a6];
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm"];
  v4 = [(HDHRBloodPressureJournalNotificationInfo *)self wakeupAlarmStartDate];
  if (v4)
  {
    v5 = [(HDHRBloodPressureJournalNotificationInfo *)self wakeupAlarmStartDate];
    v6 = [v3 stringFromDate:v5];
  }

  else
  {
    v6 = @"nil";
  }

  v7 = [(HDHRBloodPressureJournalNotificationInfo *)self bedtimeAlarmStartDate];
  if (v7)
  {
    v8 = [(HDHRBloodPressureJournalNotificationInfo *)self bedtimeAlarmStartDate];
    v9 = [v3 stringFromDate:v8];
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
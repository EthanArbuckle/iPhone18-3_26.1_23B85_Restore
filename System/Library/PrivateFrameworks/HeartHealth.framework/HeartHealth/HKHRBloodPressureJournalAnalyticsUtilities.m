@interface HKHRBloodPressureJournalAnalyticsUtilities
- (HKHRBloodPressureJournalAnalyticsUtilities)initWithLatestActiveJournal:(id)a3;
- (int64_t)fetchNumDaysSinceMostRecentBPJCycleStart:(id)a3;
- (int64_t)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4 withCalendar:(id)a5;
@end

@implementation HKHRBloodPressureJournalAnalyticsUtilities

- (HKHRBloodPressureJournalAnalyticsUtilities)initWithLatestActiveJournal:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHRBloodPressureJournalAnalyticsUtilities;
  v6 = [(HKHRBloodPressureJournalAnalyticsUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_latestActiveJournal, a3);
  }

  return v7;
}

- (int64_t)fetchNumDaysSinceMostRecentBPJCycleStart:(id)a3
{
  if (!self->_latestActiveJournal)
  {
    return -1;
  }

  v4 = a3;
  v5 = [v4 environmentDataSource];
  v6 = [v5 currentDate];

  v7 = [v4 environmentDataSource];

  v8 = [v7 calendarCache];
  v9 = [v8 currentCalendar];

  v10 = [(HKHRBloodPressureJournal *)self->_latestActiveJournal startDate];
  v11 = [(HKHRBloodPressureJournalAnalyticsUtilities *)self numberOfDaysBetweenStartDate:v10 endDate:v6 withCalendar:v9];

  return v11;
}

- (int64_t)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4 withCalendar:(id)a5
{
  v5 = [a5 components:16 fromDate:a3 toDate:a4 options:0];
  v6 = [v5 day];

  return v6;
}

@end
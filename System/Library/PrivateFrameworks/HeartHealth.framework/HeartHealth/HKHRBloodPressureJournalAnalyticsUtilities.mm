@interface HKHRBloodPressureJournalAnalyticsUtilities
- (HKHRBloodPressureJournalAnalyticsUtilities)initWithLatestActiveJournal:(id)journal;
- (int64_t)fetchNumDaysSinceMostRecentBPJCycleStart:(id)start;
- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate withCalendar:(id)calendar;
@end

@implementation HKHRBloodPressureJournalAnalyticsUtilities

- (HKHRBloodPressureJournalAnalyticsUtilities)initWithLatestActiveJournal:(id)journal
{
  journalCopy = journal;
  v9.receiver = self;
  v9.super_class = HKHRBloodPressureJournalAnalyticsUtilities;
  v6 = [(HKHRBloodPressureJournalAnalyticsUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_latestActiveJournal, journal);
  }

  return v7;
}

- (int64_t)fetchNumDaysSinceMostRecentBPJCycleStart:(id)start
{
  if (!self->_latestActiveJournal)
  {
    return -1;
  }

  startCopy = start;
  environmentDataSource = [startCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [startCopy environmentDataSource];

  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  startDate = [(HKHRBloodPressureJournal *)self->_latestActiveJournal startDate];
  v11 = [(HKHRBloodPressureJournalAnalyticsUtilities *)self numberOfDaysBetweenStartDate:startDate endDate:currentDate withCalendar:currentCalendar];

  return v11;
}

- (int64_t)numberOfDaysBetweenStartDate:(id)date endDate:(id)endDate withCalendar:(id)calendar
{
  v5 = [calendar components:16 fromDate:date toDate:endDate options:0];
  v6 = [v5 day];

  return v6;
}

@end
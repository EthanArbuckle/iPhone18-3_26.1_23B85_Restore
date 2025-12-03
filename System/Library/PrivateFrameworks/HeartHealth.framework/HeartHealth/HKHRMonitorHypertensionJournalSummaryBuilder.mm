@interface HKHRMonitorHypertensionJournalSummaryBuilder
+ (id)summaryFromSamples:(id)samples journal:(id)journal;
+ (id)summaryFromSamples:(id)samples journal:(id)journal calendar:(id)calendar;
@end

@implementation HKHRMonitorHypertensionJournalSummaryBuilder

+ (id)summaryFromSamples:(id)samples journal:(id)journal
{
  v5 = MEMORY[0x277CBEA80];
  journalCopy = journal;
  samplesCopy = samples;
  hk_gregorianCalendar = [v5 hk_gregorianCalendar];
  v9 = [HKHRMonitorHypertensionJournalSummaryBuilder summaryFromSamples:samplesCopy journal:journalCopy calendar:hk_gregorianCalendar];

  return v9;
}

+ (id)summaryFromSamples:(id)samples journal:(id)journal calendar:(id)calendar
{
  calendarCopy = calendar;
  journalCopy = journal;
  samplesCopy = samples;
  v10 = [[HKHRMonitorHypertensionJournalSummary alloc] initWithSamples:samplesCopy calendar:calendarCopy journal:journalCopy];

  return v10;
}

@end
@interface HKHRMonitorHypertensionJournalSummaryBuilder
+ (id)summaryFromSamples:(id)a3 journal:(id)a4;
+ (id)summaryFromSamples:(id)a3 journal:(id)a4 calendar:(id)a5;
@end

@implementation HKHRMonitorHypertensionJournalSummaryBuilder

+ (id)summaryFromSamples:(id)a3 journal:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 hk_gregorianCalendar];
  v9 = [HKHRMonitorHypertensionJournalSummaryBuilder summaryFromSamples:v7 journal:v6 calendar:v8];

  return v9;
}

+ (id)summaryFromSamples:(id)a3 journal:(id)a4 calendar:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HKHRMonitorHypertensionJournalSummary alloc] initWithSamples:v9 calendar:v7 journal:v8];

  return v10;
}

@end
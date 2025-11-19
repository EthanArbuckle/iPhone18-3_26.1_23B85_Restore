@interface WDSleepScheduleListDataProvider
- (WDSleepScheduleListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5;
@end

@implementation WDSleepScheduleListDataProvider

- (WDSleepScheduleListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v12.receiver = self;
  v12.super_class = WDSleepScheduleListDataProvider;
  v4 = [(WDSampleListDataProvider *)&v12 initWithDisplayType:a3 profile:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    standaloneFormatter = v4->_standaloneFormatter;
    v4->_standaloneFormatter = v5;

    [(NSDateFormatter *)v4->_standaloneFormatter setFormattingContext:2];
    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    listItemFormatter = v4->_listItemFormatter;
    v4->_listItemFormatter = v7;

    [(NSDateFormatter *)v4->_listItemFormatter setFormattingContext:5];
    v9 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalender = v4->_gregorianCalender;
    v4->_gregorianCalender = v9;
  }

  return v4;
}

- (unint64_t)numberOfSections
{
  v2 = [(WDSampleListDataProvider *)self samples];
  v3 = [v2 count] > 0;

  return v3;
}

- (void)removeObjectAtIndex:(unint64_t)a3 forSection:(unint64_t)a4 sectionRemoved:(BOOL *)a5
{
  v7.receiver = self;
  v7.super_class = WDSleepScheduleListDataProvider;
  [(WDSampleListDataProvider *)&v7 removeObjectAtIndex:a3 forSection:a4 sectionRemoved:?];
  if (![(WDSleepScheduleListDataProvider *)self numberOfSections])
  {
    *a5 = 1;
  }
}

- (id)titleForSection:(unint64_t)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SLEEP_SCHEDULE_ALL_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Eucalyptus"];

  return v4;
}

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD8D8] sleepScheduleType];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
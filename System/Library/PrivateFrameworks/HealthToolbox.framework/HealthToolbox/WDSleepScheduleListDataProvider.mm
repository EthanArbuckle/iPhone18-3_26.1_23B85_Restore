@interface WDSleepScheduleListDataProvider
- (WDSleepScheduleListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)removeObjectAtIndex:(unint64_t)index forSection:(unint64_t)section sectionRemoved:(BOOL *)removed;
@end

@implementation WDSleepScheduleListDataProvider

- (WDSleepScheduleListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  v12.receiver = self;
  v12.super_class = WDSleepScheduleListDataProvider;
  v4 = [(WDSampleListDataProvider *)&v12 initWithDisplayType:type profile:profile];
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
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalender = v4->_gregorianCalender;
    v4->_gregorianCalender = hk_gregorianCalendar;
  }

  return v4;
}

- (unint64_t)numberOfSections
{
  samples = [(WDSampleListDataProvider *)self samples];
  v3 = [samples count] > 0;

  return v3;
}

- (void)removeObjectAtIndex:(unint64_t)index forSection:(unint64_t)section sectionRemoved:(BOOL *)removed
{
  v7.receiver = self;
  v7.super_class = WDSleepScheduleListDataProvider;
  [(WDSampleListDataProvider *)&v7 removeObjectAtIndex:index forSection:section sectionRemoved:?];
  if (![(WDSleepScheduleListDataProvider *)self numberOfSections])
  {
    *removed = 1;
  }
}

- (id)titleForSection:(unint64_t)section
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SLEEP_SCHEDULE_ALL_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Eucalyptus"];

  return v4;
}

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  sleepScheduleType = [MEMORY[0x277CCD8D8] sleepScheduleType];
  v6[0] = sleepScheduleType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
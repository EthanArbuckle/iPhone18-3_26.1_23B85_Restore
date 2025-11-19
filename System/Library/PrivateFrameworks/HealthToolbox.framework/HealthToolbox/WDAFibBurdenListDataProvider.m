@interface WDAFibBurdenListDataProvider
- (WDAFibBurdenListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)_generateFeatureVersionFromUpdateVersion:(id)a3;
- (id)_timeZoneForSample:(id)a3;
- (id)featureVersionForSample:(id)a3;
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (id)updateVersionForSample:(id)a3;
- (id)viewControllerForItemAtIndexPath:(id)a3;
@end

@implementation WDAFibBurdenListDataProvider

- (WDAFibBurdenListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v8.receiver = self;
  v8.super_class = WDAFibBurdenListDataProvider;
  v4 = [(WDQuantityListDataProvider *)&v8 initWithDisplayType:a3 profile:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    calendarCache = v4->_calendarCache;
    v4->_calendarCache = v5;
  }

  return v4;
}

- (id)textForObject:(id)a3
{
  v4 = a3;
  v5 = [(WDSampleListDataProvider *)self displayType];
  v6 = [(WDSampleListDataProvider *)self unitController];
  v7 = [v6 unitForDisplayType:v5];

  v8 = [v4 quantity];
  [v8 doubleValueForUnit:v7];
  v10 = v9;

  v11 = [v5 presentation];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [v11 adjustedValueForDaemonValue:v12];

  v14 = [v4 metadata];

  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCC4F8]];
  LODWORD(v12) = [v15 BOOLValue];

  if (v12)
  {
    v16 = HKAFibBurdenClampedLowerBoundLocalizedString();
  }

  else
  {
    v17 = [v5 hk_valueFormatterForUnit:v7];
    v18 = [(WDSampleListDataProvider *)self unitController];
    v16 = [v17 stringFromValue:v13 displayType:v5 unitController:v18];
  }

  return v16;
}

- (id)secondaryTextForObject:(id)a3
{
  v4 = MEMORY[0x277CCA970];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 startDate];
  v8 = [v5 endDate];
  v9 = [v6 initWithStartDate:v7 endDate:v8];

  v10 = [v5 _timeZone];

  v11 = [(HKCalendarCache *)self->_calendarCache calendarForTimeZone:v10];
  v12 = MEMORY[0x277CCA970];
  v13 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v14 = [v12 hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v9 sourceCalendar:v11 localCalendar:v13];

  if (v14)
  {
    v15 = [MEMORY[0x277CCA978] hk_mediumDateStyleIntervalFormatter];
    v16 = [v15 stringFromDateInterval:v14];
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [WDAFibBurdenListDataProvider secondaryTextForObject:v17];
    }

    v16 = 0;
  }

  return v16;
}

- (id)_timeZoneForSample:(id)a3
{
  v3 = a3;
  v4 = [v3 _timeZoneName];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB0]);
    v6 = [v3 _timeZoneName];
    v7 = [v5 initWithName:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  return v7;
}

- (id)titleForSection:(unint64_t)a3
{
  v4 = [(WDSampleListDataProvider *)self samples];
  v5 = [v4 count];

  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(WDSampleListDataProvider *)self displayType];
    v7 = [v6 localization];
    v8 = [v7 displayName];
    v9 = [v8 localizedUppercaseString];
  }

  return v9;
}

- (id)updateVersionForSample:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCE0D0]];

  return v4;
}

- (id)featureVersionForSample:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC428]];

  if (v6)
  {
    v7 = [v6 stringValue];
  }

  else
  {
    v8 = [v4 metadata];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCE0D0]];

    if (v9)
    {
      v7 = [(WDAFibBurdenListDataProvider *)self _generateFeatureVersionFromUpdateVersion:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_generateFeatureVersionFromUpdateVersion:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 firstObject];

  return v4;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:v6];
  v8 = objc_alloc(MEMORY[0x277D12818]);
  v9 = [(WDSampleListDataProvider *)self profileName];
  v10 = [v8 initWithSample:v7 usingInsetStyling:1 profileName:v9 regulatedFeatureInfoProvider:self delegate:self];

  return v10;
}

@end
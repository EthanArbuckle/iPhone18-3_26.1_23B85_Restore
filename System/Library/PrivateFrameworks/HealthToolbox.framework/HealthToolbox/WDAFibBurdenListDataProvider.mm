@interface WDAFibBurdenListDataProvider
- (WDAFibBurdenListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)_generateFeatureVersionFromUpdateVersion:(id)version;
- (id)_timeZoneForSample:(id)sample;
- (id)featureVersionForSample:(id)sample;
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
- (id)updateVersionForSample:(id)sample;
- (id)viewControllerForItemAtIndexPath:(id)path;
@end

@implementation WDAFibBurdenListDataProvider

- (WDAFibBurdenListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  v8.receiver = self;
  v8.super_class = WDAFibBurdenListDataProvider;
  v4 = [(WDQuantityListDataProvider *)&v8 initWithDisplayType:type profile:profile];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    calendarCache = v4->_calendarCache;
    v4->_calendarCache = v5;
  }

  return v4;
}

- (id)textForObject:(id)object
{
  objectCopy = object;
  displayType = [(WDSampleListDataProvider *)self displayType];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v7 = [unitController unitForDisplayType:displayType];

  quantity = [objectCopy quantity];
  [quantity doubleValueForUnit:v7];
  v10 = v9;

  presentation = [displayType presentation];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [presentation adjustedValueForDaemonValue:v12];

  metadata = [objectCopy metadata];

  v15 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4F8]];
  LODWORD(v12) = [v15 BOOLValue];

  if (v12)
  {
    v16 = HKAFibBurdenClampedLowerBoundLocalizedString();
  }

  else
  {
    v17 = [displayType hk_valueFormatterForUnit:v7];
    unitController2 = [(WDSampleListDataProvider *)self unitController];
    v16 = [v17 stringFromValue:v13 displayType:displayType unitController:unitController2];
  }

  return v16;
}

- (id)secondaryTextForObject:(id)object
{
  v4 = MEMORY[0x277CCA970];
  objectCopy = object;
  v6 = [v4 alloc];
  startDate = [objectCopy startDate];
  endDate = [objectCopy endDate];
  v9 = [v6 initWithStartDate:startDate endDate:endDate];

  _timeZone = [objectCopy _timeZone];

  v11 = [(HKCalendarCache *)self->_calendarCache calendarForTimeZone:_timeZone];
  v12 = MEMORY[0x277CCA970];
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v14 = [v12 hk_julianDayDateIntervalFromOpenUpperBoundDateInterval:v9 sourceCalendar:v11 localCalendar:currentCalendar];

  if (v14)
  {
    hk_mediumDateStyleIntervalFormatter = [MEMORY[0x277CCA978] hk_mediumDateStyleIntervalFormatter];
    v16 = [hk_mediumDateStyleIntervalFormatter stringFromDateInterval:v14];
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

- (id)_timeZoneForSample:(id)sample
{
  sampleCopy = sample;
  _timeZoneName = [sampleCopy _timeZoneName];

  if (_timeZoneName)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB0]);
    _timeZoneName2 = [sampleCopy _timeZoneName];
    localTimeZone = [v5 initWithName:_timeZoneName2];
  }

  else
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  return localTimeZone;
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  v5 = [samples count];

  if (v5 < 1)
  {
    localizedUppercaseString = 0;
  }

  else
  {
    displayType = [(WDSampleListDataProvider *)self displayType];
    localization = [displayType localization];
    displayName = [localization displayName];
    localizedUppercaseString = [displayName localizedUppercaseString];
  }

  return localizedUppercaseString;
}

- (id)updateVersionForSample:(id)sample
{
  metadata = [sample metadata];
  v4 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE0D0]];

  return v4;
}

- (id)featureVersionForSample:(id)sample
{
  sampleCopy = sample;
  metadata = [sampleCopy metadata];
  v6 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC428]];

  if (v6)
  {
    stringValue = [v6 stringValue];
  }

  else
  {
    metadata2 = [sampleCopy metadata];
    v9 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277CCE0D0]];

    if (v9)
    {
      stringValue = [(WDAFibBurdenListDataProvider *)self _generateFeatureVersionFromUpdateVersion:v9];
    }

    else
    {
      stringValue = 0;
    }
  }

  return stringValue;
}

- (id)_generateFeatureVersionFromUpdateVersion:(id)version
{
  v3 = [version componentsSeparatedByString:@"."];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:section];
  v8 = objc_alloc(MEMORY[0x277D12818]);
  profileName = [(WDSampleListDataProvider *)self profileName];
  v10 = [v8 initWithSample:v7 usingInsetStyling:1 profileName:profileName regulatedFeatureInfoProvider:self delegate:self];

  return v10;
}

@end
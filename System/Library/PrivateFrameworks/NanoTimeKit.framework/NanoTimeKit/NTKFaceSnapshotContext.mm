@interface NTKFaceSnapshotContext
+ (id)currentContext;
- (BOOL)buildVersionMatchesContext:(id)context;
- (BOOL)calendarDateMatchesContext:(id)context;
- (BOOL)enhanceTextLegibilityEnabledMatchesContext:(id)context;
- (BOOL)localeMatchesContext:(id)context;
- (BOOL)locationSignificantlyDiffersFromContext:(id)context;
- (BOOL)lunarCalendarLocaleIDMatchesContext:(id)context;
- (BOOL)timeZoneMatchesContext:(id)context;
- (NTKFaceSnapshotContext)initWithCoder:(id)coder;
- (double)distanceInKilometersFromContext:(id)context;
- (id)_yearMonthDay;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKFaceSnapshotContext

+ (id)currentContext
{
  v2 = objc_alloc_init(NTKFaceSnapshotContext);
  v3 = +[(CLKDate *)NTKDate];
  [(NTKFaceSnapshotContext *)v2 setDate:v3];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  [(NTKFaceSnapshotContext *)v2 setCalendar:currentCalendar];

  v5 = +[NTKLocationManager sharedLocationManager];
  anyLocation = [v5 anyLocation];
  [(NTKFaceSnapshotContext *)v2 setLocation:anyLocation];

  v7 = +[NTKCustomMonogramStore sharedInstance];
  customMonogram = [v7 customMonogram];
  [(NTKFaceSnapshotContext *)v2 setMonogram:customMonogram];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [(NTKFaceSnapshotContext *)v2 setLocale:localeIdentifier];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:CLKLocaleIs24HourMode()];
  [(NTKFaceSnapshotContext *)v2 setUses24hTime:v11];

  v12 = NTKBuildVersion();
  [(NTKFaceSnapshotContext *)v2 setBuildVersion:v12];

  timeZoneDataVersion = [MEMORY[0x277CBEBB0] timeZoneDataVersion];
  [(NTKFaceSnapshotContext *)v2 setTzVersion:timeZoneDataVersion];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSEnhanceTextLegibilityEnabled()];
  [(NTKFaceSnapshotContext *)v2 setEnhanceTextLegibilityEnabled:v14];

  v15 = NTKLunarCalendarLocaleID();
  [(NTKFaceSnapshotContext *)v2 setLunarCalendarLocaleID:v15];

  return v2;
}

- (BOOL)calendarDateMatchesContext:(id)context
{
  contextCopy = context;
  _yearMonthDay = [(NTKFaceSnapshotContext *)self _yearMonthDay];
  _yearMonthDay2 = [contextCopy _yearMonthDay];

  LOBYTE(contextCopy) = [_yearMonthDay isEqual:_yearMonthDay2];
  return contextCopy;
}

- (BOOL)timeZoneMatchesContext:(id)context
{
  contextCopy = context;
  calendar = [(NTKFaceSnapshotContext *)self calendar];
  timeZone = [calendar timeZone];
  calendar2 = [contextCopy calendar];
  timeZone2 = [calendar2 timeZone];
  if ([timeZone isEqual:timeZone2])
  {
    tzVersion = [(NTKFaceSnapshotContext *)self tzVersion];
    tzVersion2 = [contextCopy tzVersion];
    v11 = [tzVersion isEqualToString:tzVersion2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)localeMatchesContext:(id)context
{
  contextCopy = context;
  locale = [(NTKFaceSnapshotContext *)self locale];
  locale2 = [contextCopy locale];
  if ([locale isEqualToString:locale2])
  {
    uses24hTime = [(NTKFaceSnapshotContext *)self uses24hTime];
    uses24hTime2 = [contextCopy uses24hTime];
    v9 = [uses24hTime isEqualToNumber:uses24hTime2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)buildVersionMatchesContext:(id)context
{
  contextCopy = context;
  buildVersion = [(NTKFaceSnapshotContext *)self buildVersion];
  buildVersion2 = [contextCopy buildVersion];

  LOBYTE(contextCopy) = [buildVersion isEqualToString:buildVersion2];
  return contextCopy;
}

- (BOOL)enhanceTextLegibilityEnabledMatchesContext:(id)context
{
  contextCopy = context;
  enhanceTextLegibilityEnabled = [(NTKFaceSnapshotContext *)self enhanceTextLegibilityEnabled];
  enhanceTextLegibilityEnabled2 = [contextCopy enhanceTextLegibilityEnabled];

  LOBYTE(contextCopy) = [enhanceTextLegibilityEnabled isEqualToNumber:enhanceTextLegibilityEnabled2];
  return contextCopy;
}

- (double)distanceInKilometersFromContext:(id)context
{
  contextCopy = context;
  location = [(NTKFaceSnapshotContext *)self location];
  v6 = 0.0;
  if (location)
  {
    v7 = location;
    location2 = [contextCopy location];

    if (location2)
    {
      location3 = [(NTKFaceSnapshotContext *)self location];
      location4 = [contextCopy location];
      [location3 distanceFromLocation:location4];
      v6 = v11 / 1000.0;
    }
  }

  return v6;
}

- (BOOL)locationSignificantlyDiffersFromContext:(id)context
{
  contextCopy = context;
  location = [(NTKFaceSnapshotContext *)self location];
  if (!location)
  {
    location2 = [contextCopy location];
    if (location2)
    {
      v9 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  location3 = [(NTKFaceSnapshotContext *)self location];
  if (location3)
  {
    location4 = [contextCopy location];
    if (location4)
    {
      [(NTKFaceSnapshotContext *)self distanceInKilometersFromContext:contextCopy];
      v9 = v8 > 50000.0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    [(NTKFaceSnapshotContext *)self distanceInKilometersFromContext:contextCopy];
    v9 = v11 > 50000.0;
  }

  if (!location)
  {
    location2 = 0;
    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (BOOL)lunarCalendarLocaleIDMatchesContext:(id)context
{
  contextCopy = context;
  lunarCalendarLocaleID = [(NTKFaceSnapshotContext *)self lunarCalendarLocaleID];
  lunarCalendarLocaleID2 = [contextCopy lunarCalendarLocaleID];

  LOBYTE(contextCopy) = [lunarCalendarLocaleID isEqualToString:lunarCalendarLocaleID2];
  return contextCopy;
}

- (NTKFaceSnapshotContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NTKFaceSnapshotContext;
  v5 = [(NTKFaceSnapshotContext *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    [(NTKFaceSnapshotContext *)v5 setLocation:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    [(NTKFaceSnapshotContext *)v5 setDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Calendar"];
    [(NTKFaceSnapshotContext *)v5 setCalendar:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Monogram"];
    [(NTKFaceSnapshotContext *)v5 setMonogram:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Locale"];
    [(NTKFaceSnapshotContext *)v5 setLocale:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Uses24h"];
    [(NTKFaceSnapshotContext *)v5 setUses24hTime:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BuildVersion"];
    [(NTKFaceSnapshotContext *)v5 setBuildVersion:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TZVersion"];
    [(NTKFaceSnapshotContext *)v5 setTzVersion:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BoldText"];
    [(NTKFaceSnapshotContext *)v5 setEnhanceTextLegibilityEnabled:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LunarCalendarLocaleID"];
    [(NTKFaceSnapshotContext *)v5 setLunarCalendarLocaleID:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(NTKFaceSnapshotContext *)self location];
  [coderCopy encodeObject:location forKey:@"Location"];

  date = [(NTKFaceSnapshotContext *)self date];
  [coderCopy encodeObject:date forKey:@"Date"];

  calendar = [(NTKFaceSnapshotContext *)self calendar];
  [coderCopy encodeObject:calendar forKey:@"Calendar"];

  monogram = [(NTKFaceSnapshotContext *)self monogram];
  [coderCopy encodeObject:monogram forKey:@"Monogram"];

  locale = [(NTKFaceSnapshotContext *)self locale];
  [coderCopy encodeObject:locale forKey:@"Locale"];

  uses24hTime = [(NTKFaceSnapshotContext *)self uses24hTime];
  [coderCopy encodeObject:uses24hTime forKey:@"Uses24h"];

  buildVersion = [(NTKFaceSnapshotContext *)self buildVersion];
  [coderCopy encodeObject:buildVersion forKey:@"BuildVersion"];

  tzVersion = [(NTKFaceSnapshotContext *)self tzVersion];
  [coderCopy encodeObject:tzVersion forKey:@"TZVersion"];

  enhanceTextLegibilityEnabled = [(NTKFaceSnapshotContext *)self enhanceTextLegibilityEnabled];
  [coderCopy encodeObject:enhanceTextLegibilityEnabled forKey:@"BoldText"];

  lunarCalendarLocaleID = [(NTKFaceSnapshotContext *)self lunarCalendarLocaleID];
  [coderCopy encodeObject:lunarCalendarLocaleID forKey:@"LunarCalendarLocaleID"];
}

- (id)_yearMonthDay
{
  calendar = [(NTKFaceSnapshotContext *)self calendar];
  date = [(NTKFaceSnapshotContext *)self date];
  v5 = [calendar components:28 fromDate:date];

  return v5;
}

@end
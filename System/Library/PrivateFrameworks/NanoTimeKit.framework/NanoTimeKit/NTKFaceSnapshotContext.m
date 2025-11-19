@interface NTKFaceSnapshotContext
+ (id)currentContext;
- (BOOL)buildVersionMatchesContext:(id)a3;
- (BOOL)calendarDateMatchesContext:(id)a3;
- (BOOL)enhanceTextLegibilityEnabledMatchesContext:(id)a3;
- (BOOL)localeMatchesContext:(id)a3;
- (BOOL)locationSignificantlyDiffersFromContext:(id)a3;
- (BOOL)lunarCalendarLocaleIDMatchesContext:(id)a3;
- (BOOL)timeZoneMatchesContext:(id)a3;
- (NTKFaceSnapshotContext)initWithCoder:(id)a3;
- (double)distanceInKilometersFromContext:(id)a3;
- (id)_yearMonthDay;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKFaceSnapshotContext

+ (id)currentContext
{
  v2 = objc_alloc_init(NTKFaceSnapshotContext);
  v3 = +[(CLKDate *)NTKDate];
  [(NTKFaceSnapshotContext *)v2 setDate:v3];

  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  [(NTKFaceSnapshotContext *)v2 setCalendar:v4];

  v5 = +[NTKLocationManager sharedLocationManager];
  v6 = [v5 anyLocation];
  [(NTKFaceSnapshotContext *)v2 setLocation:v6];

  v7 = +[NTKCustomMonogramStore sharedInstance];
  v8 = [v7 customMonogram];
  [(NTKFaceSnapshotContext *)v2 setMonogram:v8];

  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 localeIdentifier];
  [(NTKFaceSnapshotContext *)v2 setLocale:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:CLKLocaleIs24HourMode()];
  [(NTKFaceSnapshotContext *)v2 setUses24hTime:v11];

  v12 = NTKBuildVersion();
  [(NTKFaceSnapshotContext *)v2 setBuildVersion:v12];

  v13 = [MEMORY[0x277CBEBB0] timeZoneDataVersion];
  [(NTKFaceSnapshotContext *)v2 setTzVersion:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSEnhanceTextLegibilityEnabled()];
  [(NTKFaceSnapshotContext *)v2 setEnhanceTextLegibilityEnabled:v14];

  v15 = NTKLunarCalendarLocaleID();
  [(NTKFaceSnapshotContext *)v2 setLunarCalendarLocaleID:v15];

  return v2;
}

- (BOOL)calendarDateMatchesContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self _yearMonthDay];
  v6 = [v4 _yearMonthDay];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)timeZoneMatchesContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self calendar];
  v6 = [v5 timeZone];
  v7 = [v4 calendar];
  v8 = [v7 timeZone];
  if ([v6 isEqual:v8])
  {
    v9 = [(NTKFaceSnapshotContext *)self tzVersion];
    v10 = [v4 tzVersion];
    v11 = [v9 isEqualToString:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)localeMatchesContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self locale];
  v6 = [v4 locale];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(NTKFaceSnapshotContext *)self uses24hTime];
    v8 = [v4 uses24hTime];
    v9 = [v7 isEqualToNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)buildVersionMatchesContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self buildVersion];
  v6 = [v4 buildVersion];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)enhanceTextLegibilityEnabledMatchesContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self enhanceTextLegibilityEnabled];
  v6 = [v4 enhanceTextLegibilityEnabled];

  LOBYTE(v4) = [v5 isEqualToNumber:v6];
  return v4;
}

- (double)distanceInKilometersFromContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self location];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 location];

    if (v8)
    {
      v9 = [(NTKFaceSnapshotContext *)self location];
      v10 = [v4 location];
      [v9 distanceFromLocation:v10];
      v6 = v11 / 1000.0;
    }
  }

  return v6;
}

- (BOOL)locationSignificantlyDiffersFromContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self location];
  if (!v5)
  {
    v10 = [v4 location];
    if (v10)
    {
      v9 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v6 = [(NTKFaceSnapshotContext *)self location];
  if (v6)
  {
    v7 = [v4 location];
    if (v7)
    {
      [(NTKFaceSnapshotContext *)self distanceInKilometersFromContext:v4];
      v9 = v8 > 50000.0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    [(NTKFaceSnapshotContext *)self distanceInKilometersFromContext:v4];
    v9 = v11 > 50000.0;
  }

  if (!v5)
  {
    v10 = 0;
    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (BOOL)lunarCalendarLocaleIDMatchesContext:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self lunarCalendarLocaleID];
  v6 = [v4 lunarCalendarLocaleID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (NTKFaceSnapshotContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NTKFaceSnapshotContext;
  v5 = [(NTKFaceSnapshotContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    [(NTKFaceSnapshotContext *)v5 setLocation:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    [(NTKFaceSnapshotContext *)v5 setDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Calendar"];
    [(NTKFaceSnapshotContext *)v5 setCalendar:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Monogram"];
    [(NTKFaceSnapshotContext *)v5 setMonogram:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Locale"];
    [(NTKFaceSnapshotContext *)v5 setLocale:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Uses24h"];
    [(NTKFaceSnapshotContext *)v5 setUses24hTime:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BuildVersion"];
    [(NTKFaceSnapshotContext *)v5 setBuildVersion:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TZVersion"];
    [(NTKFaceSnapshotContext *)v5 setTzVersion:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BoldText"];
    [(NTKFaceSnapshotContext *)v5 setEnhanceTextLegibilityEnabled:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LunarCalendarLocaleID"];
    [(NTKFaceSnapshotContext *)v5 setLunarCalendarLocaleID:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceSnapshotContext *)self location];
  [v4 encodeObject:v5 forKey:@"Location"];

  v6 = [(NTKFaceSnapshotContext *)self date];
  [v4 encodeObject:v6 forKey:@"Date"];

  v7 = [(NTKFaceSnapshotContext *)self calendar];
  [v4 encodeObject:v7 forKey:@"Calendar"];

  v8 = [(NTKFaceSnapshotContext *)self monogram];
  [v4 encodeObject:v8 forKey:@"Monogram"];

  v9 = [(NTKFaceSnapshotContext *)self locale];
  [v4 encodeObject:v9 forKey:@"Locale"];

  v10 = [(NTKFaceSnapshotContext *)self uses24hTime];
  [v4 encodeObject:v10 forKey:@"Uses24h"];

  v11 = [(NTKFaceSnapshotContext *)self buildVersion];
  [v4 encodeObject:v11 forKey:@"BuildVersion"];

  v12 = [(NTKFaceSnapshotContext *)self tzVersion];
  [v4 encodeObject:v12 forKey:@"TZVersion"];

  v13 = [(NTKFaceSnapshotContext *)self enhanceTextLegibilityEnabled];
  [v4 encodeObject:v13 forKey:@"BoldText"];

  v14 = [(NTKFaceSnapshotContext *)self lunarCalendarLocaleID];
  [v4 encodeObject:v14 forKey:@"LunarCalendarLocaleID"];
}

- (id)_yearMonthDay
{
  v3 = [(NTKFaceSnapshotContext *)self calendar];
  v4 = [(NTKFaceSnapshotContext *)self date];
  v5 = [v3 components:28 fromDate:v4];

  return v5;
}

@end
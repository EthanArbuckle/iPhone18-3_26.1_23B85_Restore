@interface CLKUIAlmanacTransitInfo
+ (id)transitInfoForDate:(id)a3;
+ (id)transitInfoForDate:(id)a3 city:(id)a4;
+ (id)transitInfoForDate:(id)a3 city:(id)a4 sunAltitude:(double)a5;
+ (id)transitInfoForDate:(id)a3 location:(id)a4;
+ (id)transitInfoForDate:(id)a3 location:(id)a4 sunAltitude:(double)a5;
- ($F24F406B2B787EFB06265DBA3D28CBD5)location;
- (BOOL)isDateWithinTransitInfo:(id)a3;
- (CLKUIAlmanacTransitInfo)initWithCoder:(id)a3;
- (CLKUIAlmanacTransitInfo)initWithDate:(id)a3 city:(id)a4 sunAltitude:(double)a5;
- (CLKUIAlmanacTransitInfo)initWithDate:(id)a3 location:(id)a4 sunAltitude:(double)a5;
- (id)_dateOrNil:(double)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKUIAlmanacTransitInfo

- (CLKUIAlmanacTransitInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CLKUIAlmanacTransitInfo;
  v5 = [(CLKUIAlmanacTransitInfo *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"day"];
    day = v5->_day;
    v5->_day = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lat"];
    [v8 doubleValue];
    v5->_location.latitude = v9;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lon"];
    [v10 doubleValue];
    v5->_location.longitude = v11;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"constantSun"];
    v5->_constantSun = [v12 integerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rise"];
    rise = v5->_rise;
    v5->_rise = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"solarNoon"];
    solarNoon = v5->_solarNoon;
    v5->_solarNoon = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"set"];
    set = v5->_set;
    v5->_set = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"solarMidnight"];
    solarMidnight = v5->_solarMidnight;
    v5->_solarMidnight = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  day = self->_day;
  v8 = a3;
  [v8 encodeObject:day forKey:@"day"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_location.latitude];
  [v8 encodeObject:v5 forKey:@"lat"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_location.longitude];
  [v8 encodeObject:v6 forKey:@"lon"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_constantSun];
  [v8 encodeObject:v7 forKey:@"constantSun"];

  [v8 encodeObject:self->_rise forKey:@"rise"];
  [v8 encodeObject:self->_solarNoon forKey:@"solarNoon"];
  [v8 encodeObject:self->_set forKey:@"set"];
  [v8 encodeObject:self->_solarMidnight forKey:@"solarMidnight"];
}

+ (id)transitInfoForDate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDate:v4];

  return v5;
}

+ (id)transitInfoForDate:(id)a3 location:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [[a1 alloc] initWithDate:v7 location:{var0, var1}];

  return v8;
}

+ (id)transitInfoForDate:(id)a3 city:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDate:v7 city:v6];

  return v8;
}

+ (id)transitInfoForDate:(id)a3 location:(id)a4 sunAltitude:(double)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = [[a1 alloc] initWithDate:v9 location:var0 sunAltitude:{var1, a5}];

  return v10;
}

+ (id)transitInfoForDate:(id)a3 city:(id)a4 sunAltitude:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithDate:v9 city:v8 sunAltitude:a5];

  return v10;
}

- (CLKUIAlmanacTransitInfo)initWithDate:(id)a3 location:(id)a4 sunAltitude:(double)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = objc_opt_new();
  *&v11 = var0;
  [v10 setLatitude:v11];
  *&v12 = var1;
  [v10 setLongitude:v12];
  v13 = [(CLKUIAlmanacTransitInfo *)self initWithDate:v9 city:v10 sunAltitude:a5];

  return v13;
}

- (id)_dateOrNil:(double)a3
{
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v5;
}

- (CLKUIAlmanacTransitInfo)initWithDate:(id)a3 city:(id)a4 sunAltitude:(double)a5
{
  v8 = a3;
  v9 = a4;
  [v9 latitude];
  if (v10 == -180.0)
  {
    [v9 longitude];
    if (*&v11 == -180.0)
    {
      LODWORD(v11) = 1108698724;
      [v9 setLatitude:v11];
      LODWORD(v12) = -1024203161;
      [v9 setLongitude:v12];
    }
  }

  v37.receiver = self;
  v37.super_class = CLKUIAlmanacTransitInfo;
  v13 = [(CLKUIAlmanacTransitInfo *)&v37 init];
  if (v13)
  {
    [v9 latitude];
    v15 = v14;
    *&v36[1] = v14;
    [v9 longitude];
    v17 = v16;
    *&v36[2] = v16;
    v18 = [v9 timeZone];
    v19 = [v18 length];

    if (v19)
    {
      v20 = MEMORY[0x1E695DFE8];
      v21 = [v9 timeZone];
      [v20 timeZoneWithName:v21];
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v15 longitude:v17];
      [MEMORY[0x1E695FBC8] _timeZoneAtLocation:v21];
    }
    v22 = ;

    v35 = 0;
    v36[0] = 0;
    startAndEndOfDayForDateInTimeZone(v36, &v35, v8, v22);
    v23 = v36[0];
    v24 = v35;
    [(CLKUIAlmanacTransitInfo *)v13 setDay:v23];
    [(CLKUIAlmanacTransitInfo *)v13 setTomorrow:v24];
    [(CLKUIAlmanacTransitInfo *)v13 setLocation:v15, v17];
    v25 = objc_alloc(MEMORY[0x1E69A2598]);
    [v23 timeIntervalSinceReferenceDate];
    v27 = v26;

    v28 = [v25 initWithLocation:v15 time:v17 altitudeInDegrees:v27 accuracy:{a5, 60.0}];
    [v28 nextEventOfType:16];
    v29 = [(CLKUIAlmanacTransitInfo *)v13 _dateOrNil:?];
    [(CLKUIAlmanacTransitInfo *)v13 setSolarNoon:v29];

    [v28 nextEventOfType:512];
    v30 = [(CLKUIAlmanacTransitInfo *)v13 _dateOrNil:?];
    [(CLKUIAlmanacTransitInfo *)v13 setSolarMidnight:v30];

    [v28 nextEventOfType:8];
    v31 = [(CLKUIAlmanacTransitInfo *)v13 _dateOrNil:?];
    [v28 nextEventOfType:32];
    v32 = [(CLKUIAlmanacTransitInfo *)v13 _dateOrNil:?];
    if (v31 | v32)
    {
      [(CLKUIAlmanacTransitInfo *)v13 setRise:v31];
      [(CLKUIAlmanacTransitInfo *)v13 setSet:v32];
    }

    else
    {
      [v8 timeIntervalSinceReferenceDate];
      if (geo_isDayLightForLocation())
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      [(CLKUIAlmanacTransitInfo *)v13 setConstantSun:v33];
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CLKUIAlmanacTransitInfo *)self rise];
  v7 = [(CLKUIAlmanacTransitInfo *)self solarNoon];
  v8 = [(CLKUIAlmanacTransitInfo *)self set];
  v9 = [v3 stringWithFormat:@"<%@ %p rise: %@ solarNoon: %@ set: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isDateWithinTransitInfo:(id)a3
{
  v4 = a3;
  v5 = [(CLKUIAlmanacTransitInfo *)self day];
  v6 = [(CLKUIAlmanacTransitInfo *)self tomorrow];
  v7 = isDateBetweenDates(v4, v5, v6);

  return v7;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)location
{
  latitude = self->_location.latitude;
  longitude = self->_location.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end
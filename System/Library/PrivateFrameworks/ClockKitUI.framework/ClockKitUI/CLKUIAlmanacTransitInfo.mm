@interface CLKUIAlmanacTransitInfo
+ (id)transitInfoForDate:(id)date;
+ (id)transitInfoForDate:(id)date city:(id)city;
+ (id)transitInfoForDate:(id)date city:(id)city sunAltitude:(double)altitude;
+ (id)transitInfoForDate:(id)date location:(id)location;
+ (id)transitInfoForDate:(id)date location:(id)location sunAltitude:(double)altitude;
- ($F24F406B2B787EFB06265DBA3D28CBD5)location;
- (BOOL)isDateWithinTransitInfo:(id)info;
- (CLKUIAlmanacTransitInfo)initWithCoder:(id)coder;
- (CLKUIAlmanacTransitInfo)initWithDate:(id)date city:(id)city sunAltitude:(double)altitude;
- (CLKUIAlmanacTransitInfo)initWithDate:(id)date location:(id)location sunAltitude:(double)altitude;
- (id)_dateOrNil:(double)nil;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKUIAlmanacTransitInfo

- (CLKUIAlmanacTransitInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CLKUIAlmanacTransitInfo;
  v5 = [(CLKUIAlmanacTransitInfo *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"day"];
    day = v5->_day;
    v5->_day = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lat"];
    [v8 doubleValue];
    v5->_location.latitude = v9;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lon"];
    [v10 doubleValue];
    v5->_location.longitude = v11;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"constantSun"];
    v5->_constantSun = [v12 integerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rise"];
    rise = v5->_rise;
    v5->_rise = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"solarNoon"];
    solarNoon = v5->_solarNoon;
    v5->_solarNoon = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"set"];
    set = v5->_set;
    v5->_set = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"solarMidnight"];
    solarMidnight = v5->_solarMidnight;
    v5->_solarMidnight = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  day = self->_day;
  coderCopy = coder;
  [coderCopy encodeObject:day forKey:@"day"];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_location.latitude];
  [coderCopy encodeObject:v5 forKey:@"lat"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_location.longitude];
  [coderCopy encodeObject:v6 forKey:@"lon"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_constantSun];
  [coderCopy encodeObject:v7 forKey:@"constantSun"];

  [coderCopy encodeObject:self->_rise forKey:@"rise"];
  [coderCopy encodeObject:self->_solarNoon forKey:@"solarNoon"];
  [coderCopy encodeObject:self->_set forKey:@"set"];
  [coderCopy encodeObject:self->_solarMidnight forKey:@"solarMidnight"];
}

+ (id)transitInfoForDate:(id)date
{
  dateCopy = date;
  v5 = [[self alloc] initWithDate:dateCopy];

  return v5;
}

+ (id)transitInfoForDate:(id)date location:(id)location
{
  var1 = location.var1;
  var0 = location.var0;
  dateCopy = date;
  v8 = [[self alloc] initWithDate:dateCopy location:{var0, var1}];

  return v8;
}

+ (id)transitInfoForDate:(id)date city:(id)city
{
  cityCopy = city;
  dateCopy = date;
  v8 = [[self alloc] initWithDate:dateCopy city:cityCopy];

  return v8;
}

+ (id)transitInfoForDate:(id)date location:(id)location sunAltitude:(double)altitude
{
  var1 = location.var1;
  var0 = location.var0;
  dateCopy = date;
  v10 = [[self alloc] initWithDate:dateCopy location:var0 sunAltitude:{var1, altitude}];

  return v10;
}

+ (id)transitInfoForDate:(id)date city:(id)city sunAltitude:(double)altitude
{
  cityCopy = city;
  dateCopy = date;
  v10 = [[self alloc] initWithDate:dateCopy city:cityCopy sunAltitude:altitude];

  return v10;
}

- (CLKUIAlmanacTransitInfo)initWithDate:(id)date location:(id)location sunAltitude:(double)altitude
{
  var1 = location.var1;
  var0 = location.var0;
  dateCopy = date;
  v10 = objc_opt_new();
  *&v11 = var0;
  [v10 setLatitude:v11];
  *&v12 = var1;
  [v10 setLongitude:v12];
  v13 = [(CLKUIAlmanacTransitInfo *)self initWithDate:dateCopy city:v10 sunAltitude:altitude];

  return v13;
}

- (id)_dateOrNil:(double)nil
{
  if (nil == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v5;
}

- (CLKUIAlmanacTransitInfo)initWithDate:(id)date city:(id)city sunAltitude:(double)altitude
{
  dateCopy = date;
  cityCopy = city;
  [cityCopy latitude];
  if (v10 == -180.0)
  {
    [cityCopy longitude];
    if (*&v11 == -180.0)
    {
      LODWORD(v11) = 1108698724;
      [cityCopy setLatitude:v11];
      LODWORD(v12) = -1024203161;
      [cityCopy setLongitude:v12];
    }
  }

  v37.receiver = self;
  v37.super_class = CLKUIAlmanacTransitInfo;
  v13 = [(CLKUIAlmanacTransitInfo *)&v37 init];
  if (v13)
  {
    [cityCopy latitude];
    v15 = v14;
    *&v36[1] = v14;
    [cityCopy longitude];
    v17 = v16;
    *&v36[2] = v16;
    timeZone = [cityCopy timeZone];
    v19 = [timeZone length];

    if (v19)
    {
      v20 = MEMORY[0x1E695DFE8];
      timeZone2 = [cityCopy timeZone];
      [v20 timeZoneWithName:timeZone2];
    }

    else
    {
      timeZone2 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v15 longitude:v17];
      [MEMORY[0x1E695FBC8] _timeZoneAtLocation:timeZone2];
    }
    v22 = ;

    v35 = 0;
    v36[0] = 0;
    startAndEndOfDayForDateInTimeZone(v36, &v35, dateCopy, v22);
    v23 = v36[0];
    v24 = v35;
    [(CLKUIAlmanacTransitInfo *)v13 setDay:v23];
    [(CLKUIAlmanacTransitInfo *)v13 setTomorrow:v24];
    [(CLKUIAlmanacTransitInfo *)v13 setLocation:v15, v17];
    v25 = objc_alloc(MEMORY[0x1E69A2598]);
    [v23 timeIntervalSinceReferenceDate];
    v27 = v26;

    v28 = [v25 initWithLocation:v15 time:v17 altitudeInDegrees:v27 accuracy:{altitude, 60.0}];
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
      [dateCopy timeIntervalSinceReferenceDate];
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
  rise = [(CLKUIAlmanacTransitInfo *)self rise];
  solarNoon = [(CLKUIAlmanacTransitInfo *)self solarNoon];
  v8 = [(CLKUIAlmanacTransitInfo *)self set];
  v9 = [v3 stringWithFormat:@"<%@ %p rise: %@ solarNoon: %@ set: %@>", v5, self, rise, solarNoon, v8];

  return v9;
}

- (BOOL)isDateWithinTransitInfo:(id)info
{
  infoCopy = info;
  v5 = [(CLKUIAlmanacTransitInfo *)self day];
  tomorrow = [(CLKUIAlmanacTransitInfo *)self tomorrow];
  v7 = isDateBetweenDates(infoCopy, v5, tomorrow);

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
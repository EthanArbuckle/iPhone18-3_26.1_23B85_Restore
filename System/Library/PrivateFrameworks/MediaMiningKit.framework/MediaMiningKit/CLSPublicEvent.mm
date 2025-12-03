@interface CLSPublicEvent
+ (NSSet)supportedCategories;
- (CLLocationCoordinate2D)businessItemCoordinates;
- (CLSPublicEvent)init;
- (CLSPublicEvent)initWithCoder:(id)coder;
- (NSDateInterval)universalDateIntervalIncludingTime;
- (id)_calculateUniversalDateFromLocalDate:(id)date includingTimeZone:(id)zone localStartTime:(double)time;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSPublicEvent

- (CLLocationCoordinate2D)businessItemCoordinates
{
  latitude = self->_businessItemCoordinates.latitude;
  longitude = self->_businessItemCoordinates.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  muid = self->_muid;
  coderCopy = coder;
  [coderCopy encodeInteger:muid forKey:@"muid"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_localDateInterval forKey:@"universalDateInterval"];
  [coderCopy encodeDouble:@"localStartTime" forKey:self->_localStartTime];
  [coderCopy encodeDouble:@"localEndTime" forKey:self->_localEndTime];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeObject:self->_performers forKey:@"performers"];
  [coderCopy encodeObject:self->_categories forKey:@"categories"];
  [coderCopy encodeInteger:self->_businessItemMuid forKey:@"businessItemMuid"];
  [coderCopy encodeObject:self->_businessItemPlaceID forKey:@"businessItemPlaceID"];
  [coderCopy encodeDouble:@"businessItemCoordinatesLatitude" forKey:self->_businessItemCoordinates.latitude];
  [coderCopy encodeDouble:@"businessItemCoordinatesLongitude" forKey:self->_businessItemCoordinates.longitude];
  [coderCopy encodeInteger:self->_expectedAttendance forKey:@"expectedAttendance"];
  [coderCopy encodeInt64:self->_sourceService forKey:@"sourceService"];
  [coderCopy encodeBool:self->_supportsEventExperience forKey:@"supportsEventExperience"];
}

- (CLSPublicEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CLSPublicEvent;
  v5 = [(CLSPublicEvent *)&v32 init];
  if (v5)
  {
    v5->_muid = [coderCopy decodeIntegerForKey:@"muid"];
    v6 = [coderCopy decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"universalDateInterval"];
    localDateInterval = v5->_localDateInterval;
    v5->_localDateInterval = v10;

    [coderCopy decodeDoubleForKey:@"localStartTime"];
    v5->_localStartTime = v12;
    [coderCopy decodeDoubleForKey:@"localEndTime"];
    v5->_localEndTime = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"performers"];
    performers = v5->_performers;
    v5->_performers = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v24;

    v5->_businessItemMuid = [coderCopy decodeIntegerForKey:@"businessItemMuid"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessItemPlaceID"];
    businessItemPlaceID = v5->_businessItemPlaceID;
    v5->_businessItemPlaceID = v26;

    [coderCopy decodeDoubleForKey:@"businessItemCoordinatesLatitude"];
    v29 = v28;
    [coderCopy decodeDoubleForKey:@"businessItemCoordinatesLongitude"];
    v5->_businessItemCoordinates = CLLocationCoordinate2DMake(v29, v30);
    v5->_expectedAttendance = [coderCopy decodeIntegerForKey:@"expectedAttendance"];
    v5->_sourceService = [coderCopy decodeInt64ForKey:@"sourceService"];
    v5->_supportsEventExperience = [coderCopy decodeBoolForKey:@"supportsEventExperience"];
  }

  return v5;
}

- (id)_calculateUniversalDateFromLocalDate:(id)date includingTimeZone:(id)zone localStartTime:(double)time
{
  dateCopy = date;
  v8 = [dateCopy dateByAddingTimeInterval:{time - objc_msgSend(zone, "secondsFromGMTForDate:", dateCopy)}];

  return v8;
}

- (NSDateInterval)universalDateIntervalIncludingTime
{
  startDate = [(NSDateInterval *)self->_localDateInterval startDate];
  endDate = [(NSDateInterval *)self->_localDateInterval endDate];
  localStartTime = self->_localStartTime;
  localEndTime = self->_localEndTime;
  if (localEndTime < localStartTime && [startDate compare:endDate] != -1)
  {
    v7 = [CLSCalendar dateByAddingDays:1 toDate:startDate];

    endDate = v7;
  }

  v8 = [(CLSPublicEvent *)self _calculateUniversalDateFromLocalDate:startDate includingTimeZone:self->_timeZone localStartTime:localStartTime];
  v9 = [(CLSPublicEvent *)self _calculateUniversalDateFromLocalDate:endDate includingTimeZone:self->_timeZone localStartTime:localEndTime];
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];

  return v10;
}

- (id)debugDescription
{
  v3 = [(NSArray *)self->_performers componentsJoinedByString:@", "];
  v4 = [(NSArray *)self->_categories componentsJoinedByString:@", "];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(CLSPublicEvent *)self description];
  v7 = v6;
  if (self->_supportsEventExperience)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v5 stringWithFormat:@"%@\n\tbusinessItemMuid: %lu, businessItemPlaceID: %@, businessItemCoordinates: {%f, %f}, expectedAttendance %ld, \n\tcategories: %@, \n\tperformers: %@\n\tsupports event experience: %@", v6, self->_businessItemMuid, self->_businessItemPlaceID, *&self->_businessItemCoordinates.latitude, *&self->_businessItemCoordinates.longitude, self->_expectedAttendance, v4, v3, v8];

  return v9;
}

- (id)description
{
  localEndTime = self->_localEndTime;
  v4 = self->_localStartTime / 3600.0;
  v5 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = CLSPublicEvent;
  v6 = localEndTime / 3600.0;
  v7 = [(CLSPublicEvent *)&v16 description];
  v15 = *&self->_muid;
  name = self->_name;
  localDateInterval = self->_localDateInterval;
  [(CLSPublicEvent *)self isEnriched];
  v10 = NSStringFromBOOL();
  if (self->_sourceService)
  {
    v11 = @"shazam";
  }

  else
  {
    v11 = @"geo";
  }

  v12 = v11;
  v13 = [v5 stringWithFormat:@"%@ muid: %lu, identifier: %@, name: %@, dateInterval: %@, startTime: %.2f, endTime: %.2f, isEnriched: %@, sourceService: %@", v7, v15, name, localDateInterval, *&v4, *&v6, v10, v12];

  return v13;
}

- (CLSPublicEvent)init
{
  v3.receiver = self;
  v3.super_class = CLSPublicEvent;
  result = [(CLSPublicEvent *)&v3 init];
  if (result)
  {
    result->_businessItemMuid = -1;
    result->_businessItemCoordinates = *MEMORY[0x277CE4278];
    result->_expectedAttendance = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

+ (NSSet)supportedCategories
{
  if (supportedCategories_onceToken != -1)
  {
    dispatch_once(&supportedCategories_onceToken, &__block_literal_global_7652);
  }

  v3 = supportedCategories_allowedCategories;

  return v3;
}

void __37__CLSPublicEvent_supportedCategories__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v10 = +[CLSPublicEventCategory musicConcerts];
  v1 = +[CLSPublicEventCategory theater];
  v2 = +[CLSPublicEventCategory sports];
  v3 = +[CLSPublicEventCategory nightLife];
  v4 = +[CLSPublicEventCategory festivalsAndFairs];
  v5 = +[CLSPublicEventCategory dance];
  v6 = +[CLSPublicEventCategory artsAndMuseums];
  v7 = +[CLSPublicEventCategory appleEvents];
  v8 = [v0 setWithObjects:{v10, v1, v2, v3, v4, v5, v6, v7, 0}];
  v9 = supportedCategories_allowedCategories;
  supportedCategories_allowedCategories = v8;
}

@end
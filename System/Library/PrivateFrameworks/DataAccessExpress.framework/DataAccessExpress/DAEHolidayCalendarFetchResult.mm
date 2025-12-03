@interface DAEHolidayCalendarFetchResult
- (DAEHolidayCalendarFetchResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAEHolidayCalendarFetchResult

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = DAEHolidayCalendarFetchResult;
  v4 = [(DAEHolidayCalendarFetchResult *)&v11 description];
  region = [(DAEHolidayCalendarFetchResult *)self region];
  language = [(DAEHolidayCalendarFetchResult *)self language];
  uRLString = [(DAEHolidayCalendarFetchResult *)self URLString];
  calendarDescription = [(DAEHolidayCalendarFetchResult *)self calendarDescription];
  v9 = [v3 initWithFormat:@"[%@] region: %@  language: %@  URL: %@  description: %@", v4, region, language, uRLString, calendarDescription];

  return v9;
}

- (DAEHolidayCalendarFetchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DAEHolidayCalendarFetchResult;
  v5 = [(DAEHolidayCalendarFetchResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    [(DAEHolidayCalendarFetchResult *)v5 setRegion:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    [(DAEHolidayCalendarFetchResult *)v5 setLanguage:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLString"];
    [(DAEHolidayCalendarFetchResult *)v5 setURLString:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarDescription"];
    [(DAEHolidayCalendarFetchResult *)v5 setCalendarDescription:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  region = [(DAEHolidayCalendarFetchResult *)self region];
  [coderCopy encodeObject:region forKey:@"region"];

  language = [(DAEHolidayCalendarFetchResult *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  uRLString = [(DAEHolidayCalendarFetchResult *)self URLString];
  [coderCopy encodeObject:uRLString forKey:@"URLString"];

  calendarDescription = [(DAEHolidayCalendarFetchResult *)self calendarDescription];
  [coderCopy encodeObject:calendarDescription forKey:@"calendarDescription"];
}

@end
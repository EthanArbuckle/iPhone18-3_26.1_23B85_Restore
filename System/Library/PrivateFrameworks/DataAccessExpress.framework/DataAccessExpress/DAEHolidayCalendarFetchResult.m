@interface DAEHolidayCalendarFetchResult
- (DAEHolidayCalendarFetchResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAEHolidayCalendarFetchResult

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = DAEHolidayCalendarFetchResult;
  v4 = [(DAEHolidayCalendarFetchResult *)&v11 description];
  v5 = [(DAEHolidayCalendarFetchResult *)self region];
  v6 = [(DAEHolidayCalendarFetchResult *)self language];
  v7 = [(DAEHolidayCalendarFetchResult *)self URLString];
  v8 = [(DAEHolidayCalendarFetchResult *)self calendarDescription];
  v9 = [v3 initWithFormat:@"[%@] region: %@  language: %@  URL: %@  description: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (DAEHolidayCalendarFetchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DAEHolidayCalendarFetchResult;
  v5 = [(DAEHolidayCalendarFetchResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    [(DAEHolidayCalendarFetchResult *)v5 setRegion:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    [(DAEHolidayCalendarFetchResult *)v5 setLanguage:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLString"];
    [(DAEHolidayCalendarFetchResult *)v5 setURLString:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarDescription"];
    [(DAEHolidayCalendarFetchResult *)v5 setCalendarDescription:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAEHolidayCalendarFetchResult *)self region];
  [v4 encodeObject:v5 forKey:@"region"];

  v6 = [(DAEHolidayCalendarFetchResult *)self language];
  [v4 encodeObject:v6 forKey:@"language"];

  v7 = [(DAEHolidayCalendarFetchResult *)self URLString];
  [v4 encodeObject:v7 forKey:@"URLString"];

  v8 = [(DAEHolidayCalendarFetchResult *)self calendarDescription];
  [v4 encodeObject:v8 forKey:@"calendarDescription"];
}

@end
@interface CalEventOccurrenceCacheRange
- (BOOL)isEqual:(id)a3;
- (CalEventOccurrenceCacheRange)initWithCoder:(id)a3;
- (CalEventOccurrenceCacheRange)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalEventOccurrenceCacheRange

- (CalEventOccurrenceCacheRange)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CalEventOccurrenceCacheRange;
  v12 = [(CalEventOccurrenceCacheRange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, a3);
    objc_storeStrong(&v13->_endDate, a4);
    objc_storeStrong(&v13->_timeZone, a5);
  }

  return v13;
}

- (CalEventOccurrenceCacheRange)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CalEventOccurrenceCacheRange;
  v5 = [(CalEventOccurrenceCacheRange *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"start"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"end"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tz"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"start"];
  [v5 encodeObject:self->_endDate forKey:@"end"];
  [v5 encodeObject:self->_timeZone forKey:@"tz"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v6 = [(NSDate *)self->_startDate isEqualToDate:v7->_startDate]&& [(NSDate *)self->_endDate isEqualToDate:v7->_endDate]&& [(NSTimeZone *)self->_timeZone isEqualToTimeZone:v7->_timeZone];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_startDate hash];
  v4 = v3 + 13 * [(NSDate *)self->_endDate hash];
  return v4 + 37 * [(NSTimeZone *)self->_timeZone hash];
}

@end
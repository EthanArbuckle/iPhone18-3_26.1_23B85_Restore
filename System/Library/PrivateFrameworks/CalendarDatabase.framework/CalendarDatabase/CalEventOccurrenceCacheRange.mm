@interface CalEventOccurrenceCacheRange
- (BOOL)isEqual:(id)equal;
- (CalEventOccurrenceCacheRange)initWithCoder:(id)coder;
- (CalEventOccurrenceCacheRange)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CalEventOccurrenceCacheRange

- (CalEventOccurrenceCacheRange)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = CalEventOccurrenceCacheRange;
  v12 = [(CalEventOccurrenceCacheRange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
    objc_storeStrong(&v13->_timeZone, zone);
  }

  return v13;
}

- (CalEventOccurrenceCacheRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CalEventOccurrenceCacheRange;
  v5 = [(CalEventOccurrenceCacheRange *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"end"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tz"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"start"];
  [coderCopy encodeObject:self->_endDate forKey:@"end"];
  [coderCopy encodeObject:self->_timeZone forKey:@"tz"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
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
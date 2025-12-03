@interface PKDiscoveryRelevantDateRange
- (BOOL)isExpiredForDate:(id)date;
- (BOOL)isValidForTime:(id)time;
- (PKDiscoveryRelevantDateRange)initWithCoder:(id)coder;
- (PKDiscoveryRelevantDateRange)initWithDictionary:(id)dictionary;
- (PKDiscoveryRelevantDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDiscoveryRelevantDateRange

- (PKDiscoveryRelevantDateRange)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKDiscoveryRelevantDateRange;
  v5 = [(PKDiscoveryRelevantDateRange *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (PKDiscoveryRelevantDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v12.receiver = self;
  v12.super_class = PKDiscoveryRelevantDateRange;
  v9 = [(PKDiscoveryRelevantDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v10;
}

- (BOOL)isValidForTime:(id)time
{
  timeCopy = time;
  v5 = timeCopy;
  if (self->_startDate)
  {
    v6 = [timeCopy compare:?] < 2;
  }

  else
  {
    v6 = 1;
  }

  if (self->_endDate && ([v5 compare:?] + 1) >= 2)
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isExpiredForDate:(id)date
{
  endDate = self->_endDate;
  if (endDate)
  {
    LOBYTE(endDate) = [(NSDate *)endDate compare:date]== NSOrderedAscending;
  }

  return endDate;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (PKDiscoveryRelevantDateRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKDiscoveryRelevantDateRange;
  v5 = [(PKDiscoveryRelevantDateRange *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  startDate = [(PKDiscoveryRelevantDateRange *)self startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", startDate];

  endDate = [(PKDiscoveryRelevantDateRange *)self endDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", endDate];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

@end
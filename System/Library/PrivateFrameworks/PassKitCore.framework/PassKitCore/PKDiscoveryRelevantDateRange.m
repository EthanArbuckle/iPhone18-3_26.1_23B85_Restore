@interface PKDiscoveryRelevantDateRange
- (BOOL)isExpiredForDate:(id)a3;
- (BOOL)isValidForTime:(id)a3;
- (PKDiscoveryRelevantDateRange)initWithCoder:(id)a3;
- (PKDiscoveryRelevantDateRange)initWithDictionary:(id)a3;
- (PKDiscoveryRelevantDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDiscoveryRelevantDateRange

- (PKDiscoveryRelevantDateRange)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDiscoveryRelevantDateRange;
  v5 = [(PKDiscoveryRelevantDateRange *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKDateForKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 PKDateForKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (PKDiscoveryRelevantDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKDiscoveryRelevantDateRange;
  v9 = [(PKDiscoveryRelevantDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

- (BOOL)isValidForTime:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startDate)
  {
    v6 = [v4 compare:?] < 2;
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

- (BOOL)isExpiredForDate:(id)a3
{
  endDate = self->_endDate;
  if (endDate)
  {
    LOBYTE(endDate) = [(NSDate *)endDate compare:a3]== NSOrderedAscending;
  }

  return endDate;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (PKDiscoveryRelevantDateRange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDiscoveryRelevantDateRange;
  v5 = [(PKDiscoveryRelevantDateRange *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDate *)self->_startDate copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKDiscoveryRelevantDateRange *)self startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", v4];

  v5 = [(PKDiscoveryRelevantDateRange *)self endDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

@end
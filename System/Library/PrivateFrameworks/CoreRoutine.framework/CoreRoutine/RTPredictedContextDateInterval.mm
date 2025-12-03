@interface RTPredictedContextDateInterval
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextDateInterval)initWithCoder:(id)coder;
- (RTPredictedContextDateInterval)initWithStartDate:(id)date endDate:(id)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextDateInterval

- (RTPredictedContextDateInterval)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v12.receiver = self;
  v12.super_class = RTPredictedContextDateInterval;
  v9 = [(RTPredictedContextDateInterval *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (RTPredictedContextDateInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RTPredictedContextDateInterval;
  v5 = [(RTPredictedContextDateInterval *)&v11 init];
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
  v4 = [RTPredictedContextDateInterval alloc];
  startDate = self->_startDate;
  endDate = self->_endDate;

  return [(RTPredictedContextDateInterval *)v4 initWithStartDate:startDate endDate:endDate];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    startDate = [(RTPredictedContextDateInterval *)self startDate];
    startDate2 = [(RTPredictedContextDateInterval *)v6 startDate];
    if ([startDate isEqual:startDate2])
    {
      endDate = [(RTPredictedContextDateInterval *)self endDate];
      endDate2 = [(RTPredictedContextDateInterval *)v6 endDate];
      v11 = [endDate isEqual:endDate2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(RTPredictedContextDateInterval *)self startDate];
  endDate = [(RTPredictedContextDateInterval *)self endDate];
  v6 = [v3 stringWithFormat:@"startDate, %@, endDate, %@", startDate, endDate];

  return v6;
}

@end
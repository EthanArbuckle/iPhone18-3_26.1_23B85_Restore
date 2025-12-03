@interface RTPredictedContextDate
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextDate)initWithCoder:(id)coder;
- (RTPredictedContextDate)initWithDate:(id)date confidenceInterval:(double)interval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextDate

- (RTPredictedContextDate)initWithDate:(id)date confidenceInterval:(double)interval
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = RTPredictedContextDate;
  v8 = [(RTPredictedContextDate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, date);
    v9->_confidenceInterval = interval;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeDouble:@"confidenceInterval" forKey:self->_confidenceInterval];
}

- (RTPredictedContextDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RTPredictedContextDate;
  v5 = [(RTPredictedContextDate *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    [coderCopy decodeDoubleForKey:@"confidenceInterval"];
    v5->_confidenceInterval = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextDate alloc];
  date = self->_date;
  confidenceInterval = self->_confidenceInterval;

  return [(RTPredictedContextDate *)v4 initWithDate:date confidenceInterval:confidenceInterval];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    date = [(RTPredictedContextDate *)self date];
    date2 = [(RTPredictedContextDate *)v6 date];
    if ([date isEqualToDate:date2])
    {
      [(RTPredictedContextDate *)self confidenceInterval];
      v10 = v9;
      [(RTPredictedContextDate *)v6 confidenceInterval];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  date = [(RTPredictedContextDate *)self date];
  stringFromDate = [date stringFromDate];
  [(RTPredictedContextDate *)self confidenceInterval];
  v7 = [v3 stringWithFormat:@"date, %@, confidenceInterval, %.2f", stringFromDate, v6];

  return v7;
}

@end
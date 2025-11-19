@interface RTPredictedContextDate
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextDate)initWithCoder:(id)a3;
- (RTPredictedContextDate)initWithDate:(id)a3 confidenceInterval:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextDate

- (RTPredictedContextDate)initWithDate:(id)a3 confidenceInterval:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RTPredictedContextDate;
  v8 = [(RTPredictedContextDate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, a3);
    v9->_confidenceInterval = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeDouble:@"confidenceInterval" forKey:self->_confidenceInterval];
}

- (RTPredictedContextDate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RTPredictedContextDate;
  v5 = [(RTPredictedContextDate *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    [v4 decodeDoubleForKey:@"confidenceInterval"];
    v5->_confidenceInterval = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextDate alloc];
  date = self->_date;
  confidenceInterval = self->_confidenceInterval;

  return [(RTPredictedContextDate *)v4 initWithDate:date confidenceInterval:confidenceInterval];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContextDate *)self date];
    v8 = [(RTPredictedContextDate *)v6 date];
    if ([v7 isEqualToDate:v8])
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
  v4 = [(RTPredictedContextDate *)self date];
  v5 = [v4 stringFromDate];
  [(RTPredictedContextDate *)self confidenceInterval];
  v7 = [v3 stringWithFormat:@"date, %@, confidenceInterval, %.2f", v5, v6];

  return v7;
}

@end
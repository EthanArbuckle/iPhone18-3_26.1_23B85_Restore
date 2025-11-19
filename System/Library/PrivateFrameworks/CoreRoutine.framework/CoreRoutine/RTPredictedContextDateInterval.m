@interface RTPredictedContextDateInterval
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextDateInterval)initWithCoder:(id)a3;
- (RTPredictedContextDateInterval)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextDateInterval

- (RTPredictedContextDateInterval)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTPredictedContextDateInterval;
  v9 = [(RTPredictedContextDateInterval *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (RTPredictedContextDateInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RTPredictedContextDateInterval;
  v5 = [(RTPredictedContextDateInterval *)&v11 init];
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
  v4 = [RTPredictedContextDateInterval alloc];
  startDate = self->_startDate;
  endDate = self->_endDate;

  return [(RTPredictedContextDateInterval *)v4 initWithStartDate:startDate endDate:endDate];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContextDateInterval *)self startDate];
    v8 = [(RTPredictedContextDateInterval *)v6 startDate];
    if ([v7 isEqual:v8])
    {
      v9 = [(RTPredictedContextDateInterval *)self endDate];
      v10 = [(RTPredictedContextDateInterval *)v6 endDate];
      v11 = [v9 isEqual:v10];
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
  v4 = [(RTPredictedContextDateInterval *)self startDate];
  v5 = [(RTPredictedContextDateInterval *)self endDate];
  v6 = [v3 stringWithFormat:@"startDate, %@, endDate, %@", v4, v5];

  return v6;
}

@end
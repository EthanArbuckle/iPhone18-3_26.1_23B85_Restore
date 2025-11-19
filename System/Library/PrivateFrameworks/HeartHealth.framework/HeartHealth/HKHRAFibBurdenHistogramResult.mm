@interface HKHRAFibBurdenHistogramResult
- (BOOL)isEqual:(id)a3;
- (HKHRAFibBurdenHistogramResult)initWithCoder:(id)a3;
- (HKHRAFibBurdenHistogramResult)initWithDayOfWeekHistogram:(id)a3 timeOfDayHistogram:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenHistogramResult

- (HKHRAFibBurdenHistogramResult)initWithDayOfWeekHistogram:(id)a3 timeOfDayHistogram:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenHistogramResult;
  v9 = [(HKHRAFibBurdenHistogramResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dayOfWeekHistogram, a3);
    objc_storeStrong(&v10->_timeOfDayHistogram, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(HKHRAFibBurdenDayOfWeekHistogram *)self->_dayOfWeekHistogram isEqual:v5->_dayOfWeekHistogram])
      {
        v6 = [(HKHRAFibBurdenTimeOfDayHistogram *)self->_timeOfDayHistogram isEqual:v5->_timeOfDayHistogram];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  dayOfWeekHistogram = self->_dayOfWeekHistogram;
  v5 = a3;
  [v5 encodeObject:dayOfWeekHistogram forKey:@"DayOfWeekHistogramKey"];
  [v5 encodeObject:self->_timeOfDayHistogram forKey:@"TimeOfDayHistogramKey"];
}

- (HKHRAFibBurdenHistogramResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKHRAFibBurdenHistogramResult;
  v5 = [(HKHRAFibBurdenHistogramResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DayOfWeekHistogramKey"];
    dayOfWeekHistogram = v5->_dayOfWeekHistogram;
    v5->_dayOfWeekHistogram = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimeOfDayHistogramKey"];
    timeOfDayHistogram = v5->_timeOfDayHistogram;
    v5->_timeOfDayHistogram = v8;
  }

  return v5;
}

@end
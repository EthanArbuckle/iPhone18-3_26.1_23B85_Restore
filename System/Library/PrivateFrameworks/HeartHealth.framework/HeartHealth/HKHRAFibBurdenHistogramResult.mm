@interface HKHRAFibBurdenHistogramResult
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenHistogramResult)initWithCoder:(id)coder;
- (HKHRAFibBurdenHistogramResult)initWithDayOfWeekHistogram:(id)histogram timeOfDayHistogram:(id)dayHistogram;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenHistogramResult

- (HKHRAFibBurdenHistogramResult)initWithDayOfWeekHistogram:(id)histogram timeOfDayHistogram:(id)dayHistogram
{
  histogramCopy = histogram;
  dayHistogramCopy = dayHistogram;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenHistogramResult;
  v9 = [(HKHRAFibBurdenHistogramResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dayOfWeekHistogram, histogram);
    objc_storeStrong(&v10->_timeOfDayHistogram, dayHistogram);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  dayOfWeekHistogram = self->_dayOfWeekHistogram;
  coderCopy = coder;
  [coderCopy encodeObject:dayOfWeekHistogram forKey:@"DayOfWeekHistogramKey"];
  [coderCopy encodeObject:self->_timeOfDayHistogram forKey:@"TimeOfDayHistogramKey"];
}

- (HKHRAFibBurdenHistogramResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKHRAFibBurdenHistogramResult;
  v5 = [(HKHRAFibBurdenHistogramResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DayOfWeekHistogramKey"];
    dayOfWeekHistogram = v5->_dayOfWeekHistogram;
    v5->_dayOfWeekHistogram = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeOfDayHistogramKey"];
    timeOfDayHistogram = v5->_timeOfDayHistogram;
    v5->_timeOfDayHistogram = v8;
  }

  return v5;
}

@end
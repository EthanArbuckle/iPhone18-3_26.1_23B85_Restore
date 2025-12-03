@interface HKMHCountBasedQueryConfiguration
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHCountBasedQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHCountBasedQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HKMHCountBasedQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v9 copyWithZone:zone];
  dayIndexRange = [(HKMHCountBasedQueryConfiguration *)self dayIndexRange];
  [v4 setDayIndexRange:{dayIndexRange, v6}];
  gregorianCalendar = [(HKMHCountBasedQueryConfiguration *)self gregorianCalendar];
  [v4 setGregorianCalendar:gregorianCalendar];

  return v4;
}

- (HKMHCountBasedQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKMHCountBasedQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dayIndexRange.start = [coderCopy decodeIntegerForKey:@"DayIndexRangeStart"];
    v5->_dayIndexRange.duration = [coderCopy decodeIntegerForKey:@"DayIndexRangeDuration"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GregorianCalendar"];
    gregorianCalendar = v5->_gregorianCalendar;
    v5->_gregorianCalendar = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMHCountBasedQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_dayIndexRange.start forKey:{@"DayIndexRangeStart", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
  [coderCopy encodeObject:self->_gregorianCalendar forKey:@"GregorianCalendar"];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange
{
  p_dayIndexRange = &self->_dayIndexRange;
  start = self->_dayIndexRange.start;
  duration = p_dayIndexRange->duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end
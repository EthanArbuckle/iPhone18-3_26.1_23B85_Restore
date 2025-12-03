@interface HKMHValenceDistributionSummaryQueryConfiguration
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHValenceDistributionSummaryQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHValenceDistributionSummaryQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HKMHValenceDistributionSummaryQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v9 copyWithZone:zone];
  dayIndexRange = [(HKMHValenceDistributionSummaryQueryConfiguration *)self dayIndexRange];
  [v4 setDayIndexRange:{dayIndexRange, v6}];
  gregorianCalendar = [(HKMHValenceDistributionSummaryQueryConfiguration *)self gregorianCalendar];
  [v4 setGregorianCalendar:gregorianCalendar];

  [v4 setOptions:{-[HKMHValenceDistributionSummaryQueryConfiguration options](self, "options")}];
  [v4 setAscending:{-[HKMHValenceDistributionSummaryQueryConfiguration ascending](self, "ascending")}];
  [v4 setLimit:{-[HKMHValenceDistributionSummaryQueryConfiguration limit](self, "limit")}];
  return v4;
}

- (HKMHValenceDistributionSummaryQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKMHValenceDistributionSummaryQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dayIndexRange.start = [coderCopy decodeIntegerForKey:@"DayIndexRangeStart"];
    v5->_dayIndexRange.duration = [coderCopy decodeIntegerForKey:@"DayIndexRangeDuration"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GregorianCalendar"];
    gregorianCalendar = v5->_gregorianCalendar;
    v5->_gregorianCalendar = v6;

    v5->_options = [coderCopy decodeIntegerForKey:@"Options"];
    v5->_ascending = [coderCopy decodeBoolForKey:@"Ascending"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMHValenceDistributionSummaryQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_dayIndexRange.start forKey:{@"DayIndexRangeStart", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
  [coderCopy encodeObject:self->_gregorianCalendar forKey:@"GregorianCalendar"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
  [coderCopy encodeBool:self->_ascending forKey:@"Ascending"];
  [coderCopy encodeInteger:self->_limit forKey:@"Limit"];
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
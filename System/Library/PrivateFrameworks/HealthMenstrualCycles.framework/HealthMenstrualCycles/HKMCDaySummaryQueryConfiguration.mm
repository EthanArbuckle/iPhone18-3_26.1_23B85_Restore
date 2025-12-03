@interface HKMCDaySummaryQueryConfiguration
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMCDaySummaryQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCDaySummaryQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HKMCDaySummaryQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:zone];
  dayIndexRange = [(HKMCDaySummaryQueryConfiguration *)self dayIndexRange];
  [v4 setDayIndexRange:{dayIndexRange, v6}];
  [v4 setAscending:{-[HKMCDaySummaryQueryConfiguration ascending](self, "ascending")}];
  [v4 setLimit:{-[HKMCDaySummaryQueryConfiguration limit](self, "limit")}];
  return v4;
}

- (HKMCDaySummaryQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKMCDaySummaryQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dayIndexRange.start = [coderCopy decodeIntegerForKey:@"DayIndexRangeStart"];
    v5->_dayIndexRange.duration = [coderCopy decodeIntegerForKey:@"DayIndexRangeDuration"];
    v5->_ascending = [coderCopy decodeBoolForKey:@"Ascending"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMCDaySummaryQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_dayIndexRange.start forKey:{@"DayIndexRangeStart", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
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
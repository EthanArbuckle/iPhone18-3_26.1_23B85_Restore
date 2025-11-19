@interface HKMHDaySummaryQueryConfiguration
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHDaySummaryQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHDaySummaryQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = HKMHDaySummaryQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v9 copyWithZone:a3];
  v5 = [(HKMHDaySummaryQueryConfiguration *)self dayIndexRange];
  [v4 setDayIndexRange:{v5, v6}];
  v7 = [(HKMHDaySummaryQueryConfiguration *)self gregorianCalendar];
  [v4 setGregorianCalendar:v7];

  [v4 setAscending:{-[HKMHDaySummaryQueryConfiguration ascending](self, "ascending")}];
  [v4 setLimit:{-[HKMHDaySummaryQueryConfiguration limit](self, "limit")}];
  return v4;
}

- (HKMHDaySummaryQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMHDaySummaryQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_dayIndexRange.start = [v4 decodeIntegerForKey:@"DayIndexRangeStart"];
    v5->_dayIndexRange.duration = [v4 decodeIntegerForKey:@"DayIndexRangeDuration"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GregorianCalendar"];
    gregorianCalendar = v5->_gregorianCalendar;
    v5->_gregorianCalendar = v6;

    v5->_ascending = [v4 decodeBoolForKey:@"Ascending"];
    v5->_limit = [v4 decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMHDaySummaryQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_dayIndexRange.start forKey:{@"DayIndexRangeStart", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
  [v4 encodeObject:self->_gregorianCalendar forKey:@"GregorianCalendar"];
  [v4 encodeBool:self->_ascending forKey:@"Ascending"];
  [v4 encodeInteger:self->_limit forKey:@"Limit"];
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
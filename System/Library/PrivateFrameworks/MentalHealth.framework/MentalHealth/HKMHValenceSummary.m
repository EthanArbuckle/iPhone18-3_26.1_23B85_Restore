@interface HKMHValenceSummary
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (BOOL)isEqual:(id)a3;
- (HKMHValenceSummary)initWithCoder:(id)a3;
- (HKMHValenceSummary)initWithCountPleasant:(int64_t)a3 countNeutral:(int64_t)a4 countUnpleasant:(int64_t)a5 dayIndexRange:(id)a6;
- (id)description;
- (void)_addValence:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHValenceSummary

- (HKMHValenceSummary)initWithCountPleasant:(int64_t)a3 countNeutral:(int64_t)a4 countUnpleasant:(int64_t)a5 dayIndexRange:(id)a6
{
  v10.receiver = self;
  v10.super_class = HKMHValenceSummary;
  result = [(HKMHValenceSummary *)&v10 init:a3];
  if (result)
  {
    result->_countPleasant = a3;
    result->_countNeutral = a4;
    result->_countUnpleasant = a5;
  }

  return result;
}

- (void)_addValence:(int64_t)a3
{
  if ((a3 - 1) <= 6)
  {
    ++*(&self->super.isa + qword_258970260[a3 - 1]);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v7 = self->_countPleasant == v5[1] && self->_countNeutral == v5[2] && self->_countUnpleasant == v5[3] && self->_dayIndexRange.start == v5[4] && self->_dayIndexRange.duration == v5[5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_countPleasant];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_countNeutral];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_countUnpleasant];
  start = self->_dayIndexRange.start;
  duration = self->_dayIndexRange.duration;
  v10 = NSStringFromHKDayIndexRange();
  v11 = [v3 stringWithFormat:@"<%@:%p Counts pleasant:%@ neutral:%@ unpleasant:%@ day index range:%@>", v4, self, v5, v6, v7, v10];

  return v11;
}

- (HKMHValenceSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"CountPleasant"];
  v6 = [v4 decodeIntegerForKey:@"CountUnpleasant"];
  v7 = [v4 decodeIntegerForKey:@"CountNeutral"];
  v8 = [v4 decodeIntegerForKey:@"DayIndexRangeStart"];
  v9 = [v4 decodeIntegerForKey:@"DayIndexRangeDuration"];

  return [(HKMHValenceSummary *)self initWithCountPleasant:v5 countNeutral:v7 countUnpleasant:v6 dayIndexRange:v8, v9];
}

- (void)encodeWithCoder:(id)a3
{
  countPleasant = self->_countPleasant;
  v5 = a3;
  [v5 encodeInteger:countPleasant forKey:@"CountPleasant"];
  [v5 encodeInteger:self->_countNeutral forKey:@"CountNeutral"];
  [v5 encodeInteger:self->_countUnpleasant forKey:@"CountUnpleasant"];
  [v5 encodeInteger:self->_dayIndexRange.start forKey:@"DayIndexRangeStart"];
  [v5 encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange
{
  duration = self->_dayIndexRange.duration;
  start = self->_dayIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end
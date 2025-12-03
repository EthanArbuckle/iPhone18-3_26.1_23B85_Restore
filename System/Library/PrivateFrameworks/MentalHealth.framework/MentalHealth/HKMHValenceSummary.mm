@interface HKMHValenceSummary
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (BOOL)isEqual:(id)equal;
- (HKMHValenceSummary)initWithCoder:(id)coder;
- (HKMHValenceSummary)initWithCountPleasant:(int64_t)pleasant countNeutral:(int64_t)neutral countUnpleasant:(int64_t)unpleasant dayIndexRange:(id)range;
- (id)description;
- (void)_addValence:(int64_t)valence;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHValenceSummary

- (HKMHValenceSummary)initWithCountPleasant:(int64_t)pleasant countNeutral:(int64_t)neutral countUnpleasant:(int64_t)unpleasant dayIndexRange:(id)range
{
  v10.receiver = self;
  v10.super_class = HKMHValenceSummary;
  result = [(HKMHValenceSummary *)&v10 init:pleasant];
  if (result)
  {
    result->_countPleasant = pleasant;
    result->_countNeutral = neutral;
    result->_countUnpleasant = unpleasant;
  }

  return result;
}

- (void)_addValence:(int64_t)valence
{
  if ((valence - 1) <= 6)
  {
    ++*(&self->super.isa + qword_258970260[valence - 1]);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HKMHValenceSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"CountPleasant"];
  v6 = [coderCopy decodeIntegerForKey:@"CountUnpleasant"];
  v7 = [coderCopy decodeIntegerForKey:@"CountNeutral"];
  v8 = [coderCopy decodeIntegerForKey:@"DayIndexRangeStart"];
  v9 = [coderCopy decodeIntegerForKey:@"DayIndexRangeDuration"];

  return [(HKMHValenceSummary *)self initWithCountPleasant:v5 countNeutral:v7 countUnpleasant:v6 dayIndexRange:v8, v9];
}

- (void)encodeWithCoder:(id)coder
{
  countPleasant = self->_countPleasant;
  coderCopy = coder;
  [coderCopy encodeInteger:countPleasant forKey:@"CountPleasant"];
  [coderCopy encodeInteger:self->_countNeutral forKey:@"CountNeutral"];
  [coderCopy encodeInteger:self->_countUnpleasant forKey:@"CountUnpleasant"];
  [coderCopy encodeInteger:self->_dayIndexRange.start forKey:@"DayIndexRangeStart"];
  [coderCopy encodeInteger:self->_dayIndexRange.duration forKey:@"DayIndexRangeDuration"];
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
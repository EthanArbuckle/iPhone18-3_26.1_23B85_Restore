@interface HKMCCycleSegment
+ (id)_fertileWindowSegmentWithDays:(id)days;
+ (id)_menstruationSegmentWithDays:(id)days;
- ($0AC6E346AE4835514AAA8AC86D8F4844)days;
- (BOOL)isEqual:(id)equal;
- (HKMCCycleSegment)initWithCoder:(id)coder;
- (id)_initWithType:(int64_t)type days:(id)days;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCCycleSegment

+ (id)_menstruationSegmentWithDays:(id)days
{
  v3 = [[self alloc] _initWithType:0 days:{days.var0, days.var1}];

  return v3;
}

+ (id)_fertileWindowSegmentWithDays:(id)days
{
  v3 = [[self alloc] _initWithType:1 days:{days.var0, days.var1}];

  return v3;
}

- (id)_initWithType:(int64_t)type days:(id)days
{
  var1 = days.var1;
  var0 = days.var0;
  v8.receiver = self;
  v8.super_class = HKMCCycleSegment;
  result = [(HKMCCycleSegment *)&v8 init];
  if (result)
  {
    *(result + 2) = var1;
    *(result + 3) = type;
    *(result + 1) = var0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"Type"];
  [coderCopy encodeInteger:self->_days.start forKey:@"DaysStart"];
  [coderCopy encodeInteger:self->_days.duration forKey:@"DaysDuration"];
}

- (HKMCCycleSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKMCCycleSegment;
  v5 = [(HKMCCycleSegment *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v5->_days.start = [coderCopy decodeIntegerForKey:@"DaysStart"];
    v5->_days.duration = [coderCopy decodeIntegerForKey:@"DaysDuration"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  start = self->_days.start;
  duration = self->_days.duration;
  v8 = NSStringFromHKDayIndexRange();
  v9 = [v3 stringWithFormat:@"<%@:%p type:%@ days:%@>", v4, self, v5, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HKMCCycleSegment *)self type], v5 == [(HKMCCycleSegment *)equalCopy type]))
    {
      days = [(HKMCCycleSegment *)self days];
      v8 = v7;
      v11 = days == [(HKMCCycleSegment *)equalCopy days]&& v8 == v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)days
{
  duration = self->_days.duration;
  start = self->_days.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end
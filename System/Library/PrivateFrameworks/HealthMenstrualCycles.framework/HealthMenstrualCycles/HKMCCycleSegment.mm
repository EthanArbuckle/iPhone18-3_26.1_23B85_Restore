@interface HKMCCycleSegment
+ (id)_fertileWindowSegmentWithDays:(id)a3;
+ (id)_menstruationSegmentWithDays:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)days;
- (BOOL)isEqual:(id)a3;
- (HKMCCycleSegment)initWithCoder:(id)a3;
- (id)_initWithType:(int64_t)a3 days:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCCycleSegment

+ (id)_menstruationSegmentWithDays:(id)a3
{
  v3 = [[a1 alloc] _initWithType:0 days:{a3.var0, a3.var1}];

  return v3;
}

+ (id)_fertileWindowSegmentWithDays:(id)a3
{
  v3 = [[a1 alloc] _initWithType:1 days:{a3.var0, a3.var1}];

  return v3;
}

- (id)_initWithType:(int64_t)a3 days:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8.receiver = self;
  v8.super_class = HKMCCycleSegment;
  result = [(HKMCCycleSegment *)&v8 init];
  if (result)
  {
    *(result + 2) = var1;
    *(result + 3) = a3;
    *(result + 1) = var0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"Type"];
  [v5 encodeInteger:self->_days.start forKey:@"DaysStart"];
  [v5 encodeInteger:self->_days.duration forKey:@"DaysDuration"];
}

- (HKMCCycleSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKMCCycleSegment;
  v5 = [(HKMCCycleSegment *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"Type"];
    v5->_days.start = [v4 decodeIntegerForKey:@"DaysStart"];
    v5->_days.duration = [v4 decodeIntegerForKey:@"DaysDuration"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HKMCCycleSegment *)self type], v5 == [(HKMCCycleSegment *)v4 type]))
    {
      v6 = [(HKMCCycleSegment *)self days];
      v8 = v7;
      v11 = v6 == [(HKMCCycleSegment *)v4 days]&& v8 == v9;
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
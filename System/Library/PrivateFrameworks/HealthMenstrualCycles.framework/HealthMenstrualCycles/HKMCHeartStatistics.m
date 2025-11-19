@interface HKMCHeartStatistics
+ (id)heartStatisticsFromStatistics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKMCHeartStatistics)initWithCoder:(id)a3;
- (HKMCHeartStatistics)initWithPercentileQuantityValue:(double)a3 sampleCount:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCHeartStatistics

- (HKMCHeartStatistics)initWithPercentileQuantityValue:(double)a3 sampleCount:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = HKMCHeartStatistics;
  result = [(HKMCHeartStatistics *)&v7 init];
  if (result)
  {
    result->_percentileQuantityValue = a3;
    result->_sampleCount = a4;
  }

  return result;
}

+ (id)heartStatisticsFromStatistics:(id)a3
{
  v4 = a3;
  v5 = [v4 percentileQuantity];
  [v5 _value];
  v7 = v6;

  if (v7 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v8 = [a1 alloc];
    v9 = [v4 percentileQuantity];
    v10 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    [v9 doubleValueForUnit:v10];
    v12 = [v8 initWithPercentileQuantityValue:objc_msgSend(v4 sampleCount:{"dataCount"), v11}];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  percentileQuantityValue = self->_percentileQuantityValue;
  v5 = a3;
  [v5 encodeDouble:@"PercentileQuantityValue" forKey:percentileQuantityValue];
  [v5 encodeInteger:self->_sampleCount forKey:@"SampleCount"];
}

- (HKMCHeartStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKMCHeartStatistics;
  v5 = [(HKMCHeartStatistics *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"PercentileQuantityValue"];
    v5->_percentileQuantityValue = v6;
    v5->_sampleCount = [v4 decodeIntegerForKey:@"SampleCount"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_percentileQuantityValue];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sampleCount];
  v7 = [v3 stringWithFormat:@"<%@:%p percentileQuantity:%@ sampleCount:%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(HKMCHeartStatistics *)self percentileQuantityValue], v6 = v5, [(HKMCHeartStatistics *)v4 percentileQuantityValue], v6 == v7))
    {
      v8 = [(HKMCHeartStatistics *)self sampleCount];
      v9 = v8 == [(HKMCHeartStatistics *)v4 sampleCount];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_percentileQuantityValue];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sampleCount];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end
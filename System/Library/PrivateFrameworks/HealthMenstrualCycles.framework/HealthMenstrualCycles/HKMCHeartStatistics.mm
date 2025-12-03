@interface HKMCHeartStatistics
+ (id)heartStatisticsFromStatistics:(id)statistics;
- (BOOL)isEqual:(id)equal;
- (HKMCHeartStatistics)initWithCoder:(id)coder;
- (HKMCHeartStatistics)initWithPercentileQuantityValue:(double)value sampleCount:(int64_t)count;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCHeartStatistics

- (HKMCHeartStatistics)initWithPercentileQuantityValue:(double)value sampleCount:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = HKMCHeartStatistics;
  result = [(HKMCHeartStatistics *)&v7 init];
  if (result)
  {
    result->_percentileQuantityValue = value;
    result->_sampleCount = count;
  }

  return result;
}

+ (id)heartStatisticsFromStatistics:(id)statistics
{
  statisticsCopy = statistics;
  percentileQuantity = [statisticsCopy percentileQuantity];
  [percentileQuantity _value];
  v7 = v6;

  if (v7 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v8 = [self alloc];
    percentileQuantity2 = [statisticsCopy percentileQuantity];
    _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    [percentileQuantity2 doubleValueForUnit:_countPerMinuteUnit];
    v12 = [v8 initWithPercentileQuantityValue:objc_msgSend(statisticsCopy sampleCount:{"dataCount"), v11}];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  percentileQuantityValue = self->_percentileQuantityValue;
  coderCopy = coder;
  [coderCopy encodeDouble:@"PercentileQuantityValue" forKey:percentileQuantityValue];
  [coderCopy encodeInteger:self->_sampleCount forKey:@"SampleCount"];
}

- (HKMCHeartStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HKMCHeartStatistics;
  v5 = [(HKMCHeartStatistics *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"PercentileQuantityValue"];
    v5->_percentileQuantityValue = v6;
    v5->_sampleCount = [coderCopy decodeIntegerForKey:@"SampleCount"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(HKMCHeartStatistics *)self percentileQuantityValue], v6 = v5, [(HKMCHeartStatistics *)equalCopy percentileQuantityValue], v6 == v7))
    {
      sampleCount = [(HKMCHeartStatistics *)self sampleCount];
      v9 = sampleCount == [(HKMCHeartStatistics *)equalCopy sampleCount];
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
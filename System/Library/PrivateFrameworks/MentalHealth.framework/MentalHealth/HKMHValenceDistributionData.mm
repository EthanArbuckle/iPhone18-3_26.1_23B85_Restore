@interface HKMHValenceDistributionData
- (BOOL)isEqual:(id)equal;
- (HKMHValenceDistributionData)initWithCoder:(id)coder;
- (HKMHValenceDistributionData)initWithMinimumValence:(double)valence maximumValence:(double)maximumValence sampleCount:(int64_t)count reflectiveInterval:(int64_t)interval;
- (NSString)hk_redactedDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)addValenceDistribution:(id)distribution;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHValenceDistributionData

- (HKMHValenceDistributionData)initWithMinimumValence:(double)valence maximumValence:(double)maximumValence sampleCount:(int64_t)count reflectiveInterval:(int64_t)interval
{
  v11.receiver = self;
  v11.super_class = HKMHValenceDistributionData;
  result = [(HKMHValenceDistributionData *)&v11 init];
  if (result)
  {
    result->_minimumValence = valence;
    result->_maximumValence = maximumValence;
    result->_sampleCount = count;
    result->_reflectiveInterval = interval;
  }

  return result;
}

- (void)addValenceDistribution:(id)distribution
{
  distributionCopy = distribution;
  [distributionCopy minimumValence];
  if (v4 < self->_minimumValence)
  {
    [distributionCopy minimumValence];
    self->_minimumValence = v5;
  }

  [distributionCopy maximumValence];
  if (v6 > self->_maximumValence)
  {
    [distributionCopy maximumValence];
    self->_maximumValence = v7;
  }

  self->_sampleCount += [distributionCopy sampleCount];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_minimumValence == v5->_minimumValence && self->_maximumValence == v5->_maximumValence && self->_sampleCount == v5->_sampleCount && self->_reflectiveInterval == v5->_reflectiveInterval;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumValence];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumValence];
  v6 = [v5 hash] ^ v4;
  v7 = self->_sampleCount ^ self->_reflectiveInterval;

  return v6 ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKMHValenceDistributionData allocWithZone:zone];
  minimumValence = self->_minimumValence;
  maximumValence = self->_maximumValence;
  sampleCount = self->_sampleCount;
  reflectiveInterval = self->_reflectiveInterval;

  return [(HKMHValenceDistributionData *)v4 initWithMinimumValence:sampleCount maximumValence:reflectiveInterval sampleCount:minimumValence reflectiveInterval:maximumValence];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HKMHValenceDistributionData;
  v4 = [(HKMHValenceDistributionData *)&v11 description];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumValence];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumValence];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sampleCount];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_reflectiveInterval];
  v9 = [v3 stringWithFormat:@"%@[min:%@ max:%@ count:%@ interval:%@]", v4, v5, v6, v7, v8];

  return v9;
}

- (NSString)hk_redactedDescription
{
  v4.receiver = self;
  v4.super_class = HKMHValenceDistributionData;
  v2 = [(HKMHValenceDistributionData *)&v4 description];

  return v2;
}

- (HKMHValenceDistributionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"MinimumValence"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"MaximumValence"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"SampleCount"];
  v10 = [coderCopy decodeIntegerForKey:@"ReflectiveInterval"];

  return [(HKMHValenceDistributionData *)self initWithMinimumValence:v9 maximumValence:v10 sampleCount:v6 reflectiveInterval:v8];
}

- (void)encodeWithCoder:(id)coder
{
  minimumValence = self->_minimumValence;
  coderCopy = coder;
  [coderCopy encodeDouble:@"MinimumValence" forKey:minimumValence];
  [coderCopy encodeDouble:@"MaximumValence" forKey:self->_maximumValence];
  [coderCopy encodeInteger:self->_sampleCount forKey:@"SampleCount"];
  [coderCopy encodeInteger:self->_reflectiveInterval forKey:@"ReflectiveInterval"];
}

@end
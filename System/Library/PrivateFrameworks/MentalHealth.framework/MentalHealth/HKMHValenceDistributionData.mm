@interface HKMHValenceDistributionData
- (BOOL)isEqual:(id)a3;
- (HKMHValenceDistributionData)initWithCoder:(id)a3;
- (HKMHValenceDistributionData)initWithMinimumValence:(double)a3 maximumValence:(double)a4 sampleCount:(int64_t)a5 reflectiveInterval:(int64_t)a6;
- (NSString)hk_redactedDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)addValenceDistribution:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHValenceDistributionData

- (HKMHValenceDistributionData)initWithMinimumValence:(double)a3 maximumValence:(double)a4 sampleCount:(int64_t)a5 reflectiveInterval:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = HKMHValenceDistributionData;
  result = [(HKMHValenceDistributionData *)&v11 init];
  if (result)
  {
    result->_minimumValence = a3;
    result->_maximumValence = a4;
    result->_sampleCount = a5;
    result->_reflectiveInterval = a6;
  }

  return result;
}

- (void)addValenceDistribution:(id)a3
{
  v8 = a3;
  [v8 minimumValence];
  if (v4 < self->_minimumValence)
  {
    [v8 minimumValence];
    self->_minimumValence = v5;
  }

  [v8 maximumValence];
  if (v6 > self->_maximumValence)
  {
    [v8 maximumValence];
    self->_maximumValence = v7;
  }

  self->_sampleCount += [v8 sampleCount];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKMHValenceDistributionData allocWithZone:a3];
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

- (HKMHValenceDistributionData)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"MinimumValence"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"MaximumValence"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"SampleCount"];
  v10 = [v4 decodeIntegerForKey:@"ReflectiveInterval"];

  return [(HKMHValenceDistributionData *)self initWithMinimumValence:v9 maximumValence:v10 sampleCount:v6 reflectiveInterval:v8];
}

- (void)encodeWithCoder:(id)a3
{
  minimumValence = self->_minimumValence;
  v5 = a3;
  [v5 encodeDouble:@"MinimumValence" forKey:minimumValence];
  [v5 encodeDouble:@"MaximumValence" forKey:self->_maximumValence];
  [v5 encodeInteger:self->_sampleCount forKey:@"SampleCount"];
  [v5 encodeInteger:self->_reflectiveInterval forKey:@"ReflectiveInterval"];
}

@end
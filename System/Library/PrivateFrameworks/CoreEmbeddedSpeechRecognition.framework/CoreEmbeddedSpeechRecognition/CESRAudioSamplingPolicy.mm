@interface CESRAudioSamplingPolicy
- (CESRAudioSamplingPolicy)initWithRuleDimension:(id)dimension samplingRate:(id)rate numDimension:(int64_t)numDimension;
- (id)description;
@end

@implementation CESRAudioSamplingPolicy

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  ruleDimension = [(CESRAudioSamplingPolicy *)self ruleDimension];
  samplingRate = [(CESRAudioSamplingPolicy *)self samplingRate];
  [samplingRate floatValue];
  v7 = [v3 stringWithFormat:@"< ruleDimension=%@, samplingRate=%.2f, numDimension=%zd >", ruleDimension, v6, -[CESRAudioSamplingPolicy numDimension](self, "numDimension")];

  return v7;
}

- (CESRAudioSamplingPolicy)initWithRuleDimension:(id)dimension samplingRate:(id)rate numDimension:(int64_t)numDimension
{
  dimensionCopy = dimension;
  rateCopy = rate;
  v14.receiver = self;
  v14.super_class = CESRAudioSamplingPolicy;
  v11 = [(CESRAudioSamplingPolicy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ruleDimension, dimension);
    objc_storeStrong(&v12->_samplingRate, rate);
    v12->_numDimension = numDimension;
  }

  return v12;
}

@end
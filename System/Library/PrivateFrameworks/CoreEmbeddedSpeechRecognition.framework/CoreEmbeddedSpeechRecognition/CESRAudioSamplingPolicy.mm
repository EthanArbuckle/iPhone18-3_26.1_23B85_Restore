@interface CESRAudioSamplingPolicy
- (CESRAudioSamplingPolicy)initWithRuleDimension:(id)a3 samplingRate:(id)a4 numDimension:(int64_t)a5;
- (id)description;
@end

@implementation CESRAudioSamplingPolicy

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CESRAudioSamplingPolicy *)self ruleDimension];
  v5 = [(CESRAudioSamplingPolicy *)self samplingRate];
  [v5 floatValue];
  v7 = [v3 stringWithFormat:@"< ruleDimension=%@, samplingRate=%.2f, numDimension=%zd >", v4, v6, -[CESRAudioSamplingPolicy numDimension](self, "numDimension")];

  return v7;
}

- (CESRAudioSamplingPolicy)initWithRuleDimension:(id)a3 samplingRate:(id)a4 numDimension:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CESRAudioSamplingPolicy;
  v11 = [(CESRAudioSamplingPolicy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ruleDimension, a3);
    objc_storeStrong(&v12->_samplingRate, a4);
    v12->_numDimension = a5;
  }

  return v12;
}

@end
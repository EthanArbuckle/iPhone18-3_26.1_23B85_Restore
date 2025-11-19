@interface CBTwilightPolicy
- (BOOL)nitsAreInActiveRange:(float)a3;
- (CBTwilightPolicy)initWithParams:(id)a3;
- (float)rampTargetLuxCap;
- (void)dealloc;
@end

@implementation CBTwilightPolicy

- (CBTwilightPolicy)initWithParams:(id)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CBTwilightPolicy;
  v7 = [(CBTwilightPolicy *)&v4 init];
  v7->_params = v5;
  return v7;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_params).n128_u64[0];
  v5->_params = 0;
  v3.receiver = v5;
  v3.super_class = CBTwilightPolicy;
  [(CBTwilightPolicy *)&v3 dealloc];
}

- (BOOL)nitsAreInActiveRange:(float)a3
{
  [(CBFloatArray *)[(CBChromaticCorrectionParams *)self->_params nitsTable] get:0];
  v7 = 0;
  if (a3 >= v3)
  {
    [(CBChromaticCorrectionParams *)self->_params nitsActivationThreshold];
    return a3 <= v4;
  }

  return v7;
}

- (float)rampTargetLuxCap
{
  [(CBChromaticCorrectionParams *)self->_params luxActivationThreshold];
  v5 = v2;
  [(CBChromaticCorrectionParams *)self->_params rampDownLuxDeltaThreshold];
  return v5 + v3;
}

@end
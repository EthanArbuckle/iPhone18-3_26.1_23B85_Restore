@interface CBTwilightPolicy
- (BOOL)nitsAreInActiveRange:(float)range;
- (CBTwilightPolicy)initWithParams:(id)params;
- (float)rampTargetLuxCap;
- (void)dealloc;
@end

@implementation CBTwilightPolicy

- (CBTwilightPolicy)initWithParams:(id)params
{
  selfCopy = self;
  v6 = a2;
  paramsCopy = params;
  v4.receiver = self;
  v4.super_class = CBTwilightPolicy;
  selfCopy = [(CBTwilightPolicy *)&v4 init];
  selfCopy->_params = paramsCopy;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_params).n128_u64[0];
  selfCopy->_params = 0;
  v3.receiver = selfCopy;
  v3.super_class = CBTwilightPolicy;
  [(CBTwilightPolicy *)&v3 dealloc];
}

- (BOOL)nitsAreInActiveRange:(float)range
{
  [(CBFloatArray *)[(CBChromaticCorrectionParams *)self->_params nitsTable] get:0];
  v7 = 0;
  if (range >= v3)
  {
    [(CBChromaticCorrectionParams *)self->_params nitsActivationThreshold];
    return range <= v4;
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
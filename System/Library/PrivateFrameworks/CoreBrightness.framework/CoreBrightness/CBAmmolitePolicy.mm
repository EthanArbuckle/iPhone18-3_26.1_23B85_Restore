@interface CBAmmolitePolicy
- (CBAmmolitePolicy)initWithParams:(id)params;
- (float)rampTargetLuxCap;
- (void)dealloc;
@end

@implementation CBAmmolitePolicy

- (CBAmmolitePolicy)initWithParams:(id)params
{
  selfCopy = self;
  v6 = a2;
  paramsCopy = params;
  v4.receiver = self;
  v4.super_class = CBAmmolitePolicy;
  selfCopy = [(CBAmmolitePolicy *)&v4 init];
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
  v3.super_class = CBAmmolitePolicy;
  [(CBAmmolitePolicy *)&v3 dealloc];
}

- (float)rampTargetLuxCap
{
  [(CBChromaticCorrectionParams *)self->_params luxActivationThreshold];
  v5 = v2;
  [(CBChromaticCorrectionParams *)self->_params rampUpLuxDeltaThreshold];
  return v5 - v3;
}

@end
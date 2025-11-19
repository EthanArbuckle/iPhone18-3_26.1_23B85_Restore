@interface CBAmmolitePolicy
- (CBAmmolitePolicy)initWithParams:(id)a3;
- (float)rampTargetLuxCap;
- (void)dealloc;
@end

@implementation CBAmmolitePolicy

- (CBAmmolitePolicy)initWithParams:(id)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CBAmmolitePolicy;
  v7 = [(CBAmmolitePolicy *)&v4 init];
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
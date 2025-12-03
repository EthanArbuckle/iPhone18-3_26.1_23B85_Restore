@interface BWVideoQualityMetrics
+ (id)filterMetadata:(id)metadata;
+ (void)initialize;
- (double)_computeLuxScore;
- (double)computeQualityScore;
@end

@implementation BWVideoQualityMetrics

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    vqm_luxThreshold = 0x4062C00000000000;
    vqm_luxTransition = 0x4072C00000000000;
  }
}

+ (id)filterMetadata:(id)metadata
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v5 = *off_1E798B4B8;
  v6 = [metadata objectForKeyedSubscript:*off_1E798B4B8];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:v5];
  }

  return v4;
}

- (double)_computeLuxScore
{
  result = (self->_totalLux / self->_frames - (*&vqm_luxThreshold + *&vqm_luxTransition * -0.5)) / *&vqm_luxTransition;
  v3 = 1.0;
  v4 = result > 1.0 || result < 0.0;
  if (result < 0.0 && result <= 1.0)
  {
    v3 = 0.0;
  }

  if (v4)
  {
    return v3;
  }

  return result;
}

- (double)computeQualityScore
{
  if (!self->_frames)
  {
    return 1.0;
  }

  [(BWVideoQualityMetrics *)self _computeLuxScore];
  return result;
}

@end
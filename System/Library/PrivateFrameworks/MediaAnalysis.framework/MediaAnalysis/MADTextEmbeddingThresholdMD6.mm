@interface MADTextEmbeddingThresholdMD6
+ (float)thresholdBase;
@end

@implementation MADTextEmbeddingThresholdMD6

+ (float)thresholdBase
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MADTextEmbeddingThresholdMD6_thresholdBase__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADTextEmbeddingThresholdMD6 thresholdBase]::once != -1)
  {
    dispatch_once(&+[MADTextEmbeddingThresholdMD6 thresholdBase]::once, block);
  }

  return *&+[MADTextEmbeddingThresholdMD6 thresholdBase]::thresholdBase;
}

uint64_t __45__MADTextEmbeddingThresholdMD6_thresholdBase__block_invoke()
{
  v0 = objc_opt_class();
  LODWORD(v1) = 1053944709;
  result = [v0 computeThresholdBase:v1];
  +[MADTextEmbeddingThresholdMD6 thresholdBase]::thresholdBase = v3;
  return result;
}

@end
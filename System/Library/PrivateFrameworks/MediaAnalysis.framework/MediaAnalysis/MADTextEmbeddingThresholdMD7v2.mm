@interface MADTextEmbeddingThresholdMD7v2
+ (float)thresholdBase;
@end

@implementation MADTextEmbeddingThresholdMD7v2

+ (float)thresholdBase
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MADTextEmbeddingThresholdMD7v2_thresholdBase__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADTextEmbeddingThresholdMD7v2 thresholdBase]::once != -1)
  {
    dispatch_once(&+[MADTextEmbeddingThresholdMD7v2 thresholdBase]::once, block);
  }

  return *&+[MADTextEmbeddingThresholdMD7v2 thresholdBase]::thresholdBase;
}

uint64_t __47__MADTextEmbeddingThresholdMD7v2_thresholdBase__block_invoke()
{
  v0 = objc_opt_class();
  LODWORD(v1) = 1055286886;
  result = [v0 computeThresholdBase:v1];
  +[MADTextEmbeddingThresholdMD7v2 thresholdBase]::thresholdBase = v3;
  return result;
}

@end
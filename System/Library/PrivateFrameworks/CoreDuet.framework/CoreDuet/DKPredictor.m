@interface DKPredictor
@end

@implementation DKPredictor

uint64_t __28___DKPredictor_predictorLog__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet", "dkpredictor");
  v1 = predictorLog_predictorLog;
  predictorLog_predictorLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
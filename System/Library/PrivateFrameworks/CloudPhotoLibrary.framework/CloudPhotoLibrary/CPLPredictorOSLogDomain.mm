@interface CPLPredictorOSLogDomain
@end

@implementation CPLPredictorOSLogDomain

uint64_t ____CPLPredictorOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLPredictorOSLogDomain_result = os_log_create("com.apple.photos.cpl", "engine.scheduler.predictor");

  return MEMORY[0x1EEE66BB8]();
}

@end
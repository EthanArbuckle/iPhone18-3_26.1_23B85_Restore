@interface CPLSchedulerOSLogDomain
@end

@implementation CPLSchedulerOSLogDomain

uint64_t ____CPLSchedulerOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLSchedulerOSLogDomain_result = os_log_create("com.apple.photos.cpl", "engine.scheduler.session");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLSchedulerOSLogDomain_block_invoke_7607()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.scheduler");
  v1 = __CPLSchedulerOSLogDomain_result_7605;
  __CPLSchedulerOSLogDomain_result_7605 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
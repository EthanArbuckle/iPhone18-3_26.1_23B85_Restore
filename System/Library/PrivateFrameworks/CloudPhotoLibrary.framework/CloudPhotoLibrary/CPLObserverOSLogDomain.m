@interface CPLObserverOSLogDomain
@end

@implementation CPLObserverOSLogDomain

uint64_t ____CPLObserverOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "callobserver");
  v1 = __CPLObserverOSLogDomain_result;
  __CPLObserverOSLogDomain_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
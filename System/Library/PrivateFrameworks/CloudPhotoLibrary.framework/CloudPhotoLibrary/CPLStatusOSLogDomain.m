@interface CPLStatusOSLogDomain
@end

@implementation CPLStatusOSLogDomain

uint64_t ____CPLStatusOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.library.cplstatus");
  v1 = __CPLStatusOSLogDomain_result;
  __CPLStatusOSLogDomain_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
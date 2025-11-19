@interface CPLManagerOSLogDomain
@end

@implementation CPLManagerOSLogDomain

uint64_t ____CPLManagerOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  __CPLManagerOSLogDomain_result = os_log_create(v0, "client.librarymanager.proxy");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLManagerOSLogDomain_block_invoke_0()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "client.librarymanager");
  v1 = __CPLManagerOSLogDomain_result_0;
  __CPLManagerOSLogDomain_result_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
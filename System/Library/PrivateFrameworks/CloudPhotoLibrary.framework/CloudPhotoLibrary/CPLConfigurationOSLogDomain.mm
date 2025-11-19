@interface CPLConfigurationOSLogDomain
@end

@implementation CPLConfigurationOSLogDomain

uint64_t ____CPLConfigurationOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "configuration");
  v1 = __CPLConfigurationOSLogDomain_result;
  __CPLConfigurationOSLogDomain_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLConfigurationOSLogDomain_block_invoke_19528()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "configuration.fetch");
  v1 = __CPLConfigurationOSLogDomain_result_19525;
  __CPLConfigurationOSLogDomain_result_19525 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
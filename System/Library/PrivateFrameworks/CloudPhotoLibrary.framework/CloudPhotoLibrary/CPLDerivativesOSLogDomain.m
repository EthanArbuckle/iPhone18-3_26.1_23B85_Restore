@interface CPLDerivativesOSLogDomain
@end

@implementation CPLDerivativesOSLogDomain

uint64_t ____CPLDerivativesOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "derivatives");
  v1 = __CPLDerivativesOSLogDomain_result;
  __CPLDerivativesOSLogDomain_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
@interface CPLDropDerivativesOSLogDomain
@end

@implementation CPLDropDerivativesOSLogDomain

uint64_t ____CPLDropDerivativesOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  __CPLDropDerivativesOSLogDomain_result = os_log_create(v0, "cloudphotoservices.dropderivatives");

  return MEMORY[0x2821F96F8]();
}

@end
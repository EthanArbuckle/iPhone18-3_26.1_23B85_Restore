@interface CPLCloudPhotoServicesOSLogDomain
@end

@implementation CPLCloudPhotoServicesOSLogDomain

uint64_t ____CPLCloudPhotoServicesOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  __CPLCloudPhotoServicesOSLogDomain_result = os_log_create(v0, "cloudphotoservices");

  return MEMORY[0x2821F96F8]();
}

@end
@interface CPLItemOSLogDomain
@end

@implementation CPLItemOSLogDomain

uint64_t ____CPLItemOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.filestorage.item");
  v1 = __CPLItemOSLogDomain_result;
  __CPLItemOSLogDomain_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
@interface CPLSessionOSLogDomain
@end

@implementation CPLSessionOSLogDomain

uint64_t ____CPLSessionOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  __CPLSessionOSLogDomain_result = os_log_create(v0, "client.session.proxy");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLSessionOSLogDomain_block_invoke_0()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "client.session.pull");
  v1 = __CPLSessionOSLogDomain_result_0;
  __CPLSessionOSLogDomain_result_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLSessionOSLogDomain_block_invoke_16330()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "client.session.push.compute");
  v1 = __CPLSessionOSLogDomain_result_16328;
  __CPLSessionOSLogDomain_result_16328 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLSessionOSLogDomain_block_invoke_18252()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "client.session.push");
  v1 = __CPLSessionOSLogDomain_result_18250;
  __CPLSessionOSLogDomain_result_18250 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLSessionOSLogDomain_block_invoke_22804()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "client.session");
  v1 = __CPLSessionOSLogDomain_result_22801;
  __CPLSessionOSLogDomain_result_22801 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
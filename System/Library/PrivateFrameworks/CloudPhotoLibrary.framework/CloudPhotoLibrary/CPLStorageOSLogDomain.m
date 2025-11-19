@interface CPLStorageOSLogDomain
@end

@implementation CPLStorageOSLogDomain

uint64_t ____CPLStorageOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLStorageOSLogDomain_result = os_log_create("com.apple.photos.cpl", "engine.transientrepository.shared");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_209()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLStorageOSLogDomain_result_206 = os_log_create("com.apple.photos.cpl", "engine.resourcestorage");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_512()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLStorageOSLogDomain_result_509 = os_log_create("com.apple.photos.cpl", "engine.transientrepository.extraction");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_920()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLStorageOSLogDomain_result_917 = os_log_create("com.apple.photos.cpl", "engine.pushrepository");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_2033()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.resourcestorage.filestorage");
  v1 = __CPLStorageOSLogDomain_result_2030;
  __CPLStorageOSLogDomain_result_2030 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_6256()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.idmapping");
  v1 = __CPLStorageOSLogDomain_result_6253;
  __CPLStorageOSLogDomain_result_6253 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_7913()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.downloadQueue");
  v1 = __CPLStorageOSLogDomain_result_7911;
  __CPLStorageOSLogDomain_result_7911 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_8667()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.scopes");
  v1 = __CPLStorageOSLogDomain_result_8665;
  __CPLStorageOSLogDomain_result_8665 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_9100()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.cleanuptasks");
  v1 = __CPLStorageOSLogDomain_result_9097;
  __CPLStorageOSLogDomain_result_9097 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_9260()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.changepipe");
  v1 = __CPLStorageOSLogDomain_result_9258;
  __CPLStorageOSLogDomain_result_9258 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_9453()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.transientrepository");
  v1 = __CPLStorageOSLogDomain_result_9451;
  __CPLStorageOSLogDomain_result_9451 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_11271()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.storage.view");
  v1 = __CPLStorageOSLogDomain_result_11268;
  __CPLStorageOSLogDomain_result_11268 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_11348()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.remappedrecords");
  v1 = __CPLStorageOSLogDomain_result_11345;
  __CPLStorageOSLogDomain_result_11345 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_14643()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.pendingrecordchecks");
  v1 = __CPLStorageOSLogDomain_result_14638;
  __CPLStorageOSLogDomain_result_14638 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_17831()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.cloudcache");
  v1 = __CPLStorageOSLogDomain_result_17828;
  __CPLStorageOSLogDomain_result_17828 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_20280()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.computestatequeue");
  v1 = __CPLStorageOSLogDomain_result_20277;
  __CPLStorageOSLogDomain_result_20277 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_20560()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.statusCenter");
  v1 = __CPLStorageOSLogDomain_result_20554;
  __CPLStorageOSLogDomain_result_20554 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_21531()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.storage");
  v1 = __CPLStorageOSLogDomain_result_21528;
  __CPLStorageOSLogDomain_result_21528 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_22191()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.quarantinedrecords");
  v1 = __CPLStorageOSLogDomain_result_22188;
  __CPLStorageOSLogDomain_result_22188 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLStorageOSLogDomain_block_invoke_22442()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.outgoingResources");
  v1 = __CPLStorageOSLogDomain_result_22439;
  __CPLStorageOSLogDomain_result_22439 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
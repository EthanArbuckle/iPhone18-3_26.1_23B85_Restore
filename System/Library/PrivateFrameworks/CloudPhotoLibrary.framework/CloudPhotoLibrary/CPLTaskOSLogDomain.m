@interface CPLTaskOSLogDomain
@end

@implementation CPLTaskOSLogDomain

uint64_t ____CPLTaskOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLTaskOSLogDomain_result = os_log_create("com.apple.photos.cpl", "engine.sync.transportupdate");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_627()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLTaskOSLogDomain_result_624 = os_log_create("com.apple.photos.cpl", "engine.sync.mingle");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_1360()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.uploadcomputestates");
  v1 = __CPLTaskOSLogDomain_result_1358;
  __CPLTaskOSLogDomain_result_1358 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_2605()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.pullscopes");
  v1 = __CPLTaskOSLogDomain_result_2602;
  __CPLTaskOSLogDomain_result_2602 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_5489()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.cleanup");
  v1 = __CPLTaskOSLogDomain_result_5486;
  __CPLTaskOSLogDomain_result_5486 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_7265()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.reshare");
  v1 = __CPLTaskOSLogDomain_result_7262;
  __CPLTaskOSLogDomain_result_7262 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_11568()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.pushtotransport");
  v1 = __CPLTaskOSLogDomain_result_11565;
  __CPLTaskOSLogDomain_result_11565 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_14075()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.mingle");
  v1 = __CPLTaskOSLogDomain_result_14072;
  __CPLTaskOSLogDomain_result_14072 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_14548()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.backgrounddownloads");
  v1 = __CPLTaskOSLogDomain_result_14545;
  __CPLTaskOSLogDomain_result_14545 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_15635()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.task");
  v1 = __CPLTaskOSLogDomain_result_15633;
  __CPLTaskOSLogDomain_result_15633 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_17171()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.updatescope");
  v1 = __CPLTaskOSLogDomain_result_17169;
  __CPLTaskOSLogDomain_result_17169 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_21363()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.processtagedscopes");
  v1 = __CPLTaskOSLogDomain_result_21361;
  __CPLTaskOSLogDomain_result_21361 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_23152()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.pullfromtransport");
  v1 = __CPLTaskOSLogDomain_result_23150;
  __CPLTaskOSLogDomain_result_23150 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____CPLTaskOSLogDomain_block_invoke_24285()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  v0 = os_log_create("com.apple.photos.cpl", "engine.sync.pushtotransport.upload");
  v1 = __CPLTaskOSLogDomain_result_24283;
  __CPLTaskOSLogDomain_result_24283 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
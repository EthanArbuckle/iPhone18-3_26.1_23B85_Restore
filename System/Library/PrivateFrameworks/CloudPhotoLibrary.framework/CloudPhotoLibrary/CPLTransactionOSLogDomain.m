@interface CPLTransactionOSLogDomain
@end

@implementation CPLTransactionOSLogDomain

uint64_t ____CPLTransactionOSLogDomain_block_invoke()
{
  if (_CPLOSLogSubsystem_onceToken != -1)
  {
    dispatch_once(&_CPLOSLogSubsystem_onceToken, &__block_literal_global_40);
  }

  __CPLTransactionOSLogDomain_result = os_log_create("com.apple.photos.cpl", "engine.store.transactions");

  return MEMORY[0x1EEE66BB8]();
}

@end
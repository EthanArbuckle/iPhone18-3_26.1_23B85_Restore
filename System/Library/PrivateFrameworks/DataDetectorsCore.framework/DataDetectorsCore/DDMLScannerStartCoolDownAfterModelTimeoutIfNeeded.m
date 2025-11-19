@interface DDMLScannerStartCoolDownAfterModelTimeoutIfNeeded
@end

@implementation DDMLScannerStartCoolDownAfterModelTimeoutIfNeeded

void ___DDMLScannerStartCoolDownAfterModelTimeoutIfNeeded_block_invoke()
{
  os_unfair_lock_lock(&__DDMLCooldownLock);

  os_unfair_lock_unlock(&__DDMLCooldownLock);
}

@end
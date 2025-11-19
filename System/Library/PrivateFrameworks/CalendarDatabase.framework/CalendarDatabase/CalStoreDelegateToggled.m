@interface CalStoreDelegateToggled
@end

@implementation CalStoreDelegateToggled

uint64_t ___CalStoreDelegateToggled_block_invoke()
{
  v0 = dispatch_queue_create("delegateDataCleanupQueue", 0);
  v1 = _CalStoreDelegateToggled_delegateDataCleanupQueue;
  _CalStoreDelegateToggled_delegateDataCleanupQueue = v0;

  v2 = objc_opt_new();
  v3 = _CalStoreDelegateToggled_storeIDsPendingCleanup;
  _CalStoreDelegateToggled_storeIDsPendingCleanup = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void ___CalStoreDelegateToggled_block_invoke_2(uint64_t a1)
{
  obj = _CalStoreDelegateToggled_storeIDsPendingCleanup;
  objc_sync_enter(obj);
  if ([_CalStoreDelegateToggled_storeIDsPendingCleanup containsObject:*(a1 + 32)])
  {
    [_CalStoreDelegateToggled_storeIDsPendingCleanup removeObject:*(a1 + 32)];
    objc_sync_exit(obj);

    [*(a1 + 32) intValue];

    _CalStoreDeleteDisabledDelegateData();
  }

  else
  {
    objc_sync_exit(obj);
  }
}

@end
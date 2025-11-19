@interface InitObservation
@end

@implementation InitObservation

void ___InitObservation_block_invoke_2()
{
  v0 = _Log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C6152000, v0, OS_LOG_TYPE_DEFAULT, "Keybag lock status has changed", v2, 2u);
  }

  _lastNotificationTime = CFAbsoluteTimeGetCurrent();
  v1 = _KeyBagLockState();
  _NotifyObserversWithContentProtectionState(v1);
}

id ___InitObservation_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_create("com.apple.message.EFContentProtectionObserver", 0);
  v1 = _observationQueue;
  _observationQueue = v0;

  v2 = _KeyBagLockState();
  atomic_store(v2, sContentProtectionState);
  v3 = _Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_1E8248910[v2 + 1];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1C6152000, v3, OS_LOG_TYPE_DEFAULT, "Keybag lock status initialized to %{public}@", &v7, 0xCu);
  }

  dispatch_async(_observationQueue, &__block_literal_global_85);
  result = EFLogRegisterStateCaptureBlock(_observationQueue, @"EFContentProtectionObserver", 4, &__block_literal_global_95);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void ___InitObservation_block_invoke_83()
{
  if (MKBDeviceFormattedForContentProtection())
  {
    out_token = -1431655766;
    notify_register_dispatch(*MEMORY[0x1E69B1A70], &out_token, _observationQueue, &__block_literal_global_88);
    _beganObservingTime = CFAbsoluteTimeGetCurrent();
  }

  v0 = _KeyBagLockState();
  if (v0 != -1)
  {
    _NotifyObserversWithContentProtectionState(v0);
  }
}

@end
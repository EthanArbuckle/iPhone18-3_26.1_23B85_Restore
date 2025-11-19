@interface InitObservation
@end

@implementation InitObservation

void ___InitObservation_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.message.MFContentProtectionObserver", 0);
  _observationQueue = v0;

  dispatch_async(v0, &__block_literal_global_51);
}

uint64_t ___InitObservation_block_invoke_2()
{
  if (MKBDeviceFormattedForContentProtection())
  {
    out_token = 0;
    notify_register_dispatch(*MEMORY[0x277D28B30], &out_token, _observationQueue, &__block_literal_global_54);
    _beganObservingTime = CFAbsoluteTimeGetCurrent();
  }

  result = _KeyBagLockState();
  _contentProtectionState = result;
  return result;
}

void ___InitObservation_block_invoke_3()
{
  _lastNotificationTime = CFAbsoluteTimeGetCurrent();
  v0 = _KeyBagLockState();

  _NotifyObserversWithContentProtectionState(v0);
}

@end
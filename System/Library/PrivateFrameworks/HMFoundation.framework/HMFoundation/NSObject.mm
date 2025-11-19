@interface NSObject
@end

@implementation NSObject

void __81__NSObject_HMFKeyValueObserving__hmf_registerObserverForKeyPath_options_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = v2;
  if (v2)
  {
    objc_setAssociatedObject(v2, *(a1 + 48), 0, 0x301);
  }
}

@end
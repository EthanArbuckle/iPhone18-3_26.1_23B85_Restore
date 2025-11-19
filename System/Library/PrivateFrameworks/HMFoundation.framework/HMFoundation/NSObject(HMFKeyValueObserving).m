@interface NSObject(HMFKeyValueObserving)
- (HMFCancellationHandler)hmf_registerObserverForKeyPath:()HMFKeyValueObserving options:handler:;
@end

@implementation NSObject(HMFKeyValueObserving)

- (HMFCancellationHandler)hmf_registerObserverForKeyPath:()HMFKeyValueObserving options:handler:
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure(@"handler");
  }

  v10 = v9;
  v11 = [[HMFKeyValueBlockObserver alloc] initWithKeyPath:v8 object:a1 options:a4];
  [(HMFKeyValueBlockObserver *)v11 setHandler:v10];
  objc_setAssociatedObject(a1, a1, v11, 0x301);
  objc_initWeak(&location, a1);
  objc_initWeak(&from, v11);
  v12 = [HMFCancellationHandler alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__NSObject_HMFKeyValueObserving__hmf_registerObserverForKeyPath_options_handler___block_invoke;
  v15[3] = &unk_2786E8060;
  objc_copyWeak(&v16, &from);
  objc_copyWeak(v17, &location);
  v17[1] = a1;
  v13 = [(HMFCancellationHandler *)v12 initWithBlock:v15];
  objc_destroyWeak(v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v13;
}

@end
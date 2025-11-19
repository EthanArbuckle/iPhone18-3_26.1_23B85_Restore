@interface HMFObjectObserver
- (BOOL)isEqual:(id)a3;
- (HMFObjectObserver)init;
- (HMFObjectObserver)initWithObservedObject:(id)a3;
- (id)observedObject;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
@end

@implementation HMFObjectObserver

- (HMFObjectObserver)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFObjectObserver)initWithObservedObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = HMFObjectObserver;
    v5 = [(HMFObjectObserver *)&v9 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_observedObject, v4);
      v6->_cachedHash = [v4 hash];
      [(HMFObjectObserver *)v6 _startObserving];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  deallocationBlock = self->_deallocationBlock;
  self->_deallocationBlock = 0;

  [(HMFObjectObserver *)self _stopObserving];
  v4.receiver = self;
  v4.super_class = HMFObjectObserver;
  [(HMFObjectObserver *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = atomic_load(&self->_observedObject);
      v8 = atomic_load(v6 + 1);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      v11 = !v9 && v7 == v8;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_startObserving
{
  v3 = [(HMFObjectObserver *)self observedObject];
  if (v3)
  {
    v4 = objc_alloc_init(_HMFObjectObserverInternal);
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __36__HMFObjectObserver__startObserving__block_invoke;
    v5[3] = &unk_2786E6CA8;
    objc_copyWeak(&v6, &location);
    [(_HMFObjectObserverInternal *)v4 setDeallocationBlock:v5];
    objc_setAssociatedObject(v3, self, v4, 1);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __36__HMFObjectObserver__startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained deallocationBlock];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
    [WeakRetained setDeallocationBlock:0];
  }
}

- (void)_stopObserving
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(HMFObjectObserver *)self observedObject];
  v5 = v4;
  if (v4)
  {
    objc_setAssociatedObject(v4, self, 0, 1);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)observedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observedObject);

  return WeakRetained;
}

@end
@interface LCSFirstUnlockManager
- (LCSFirstUnlockManager)init;
- (void)dealloc;
- (void)endObservingForFirstUnlock;
- (void)setPostFirstUnlockHandler:(id)a3;
@end

@implementation LCSFirstUnlockManager

- (LCSFirstUnlockManager)init
{
  v10.receiver = self;
  v10.super_class = LCSFirstUnlockManager;
  v2 = [(LCSFirstUnlockManager *)&v10 init];
  if (v2)
  {
    v3 = MKBDeviceUnlockedSinceBoot();
    v2->_hasUnlockedSinceBoot = v3 > 0;
    if (v3 <= 0)
    {
      v4 = BSDispatchQueueCreateWithQualityOfService();
      queue = v2->_queue;
      v2->_queue = v4;

      objc_initWeak(&location, v2);
      v6 = v2->_queue;
      objc_copyWeak(&v8, &location);
      v2->_aksEvent = AKSEventsRegister();
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

void __29__LCSFirstUnlockManager_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2)
  {
    v6 = WeakRetained;
    [WeakRetained setHasUnlockedSinceBoot:1];
    v4 = [v6 postFirstUnlockHandler];
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
      [v6 setPostFirstUnlockHandler:0];
    }

    [v6 endObservingForFirstUnlock];

    WeakRetained = v6;
  }
}

- (void)endObservingForFirstUnlock
{
  if (self->_aksEvent)
  {
    AKSEventsUnregister();
    self->_aksEvent = 0;
  }
}

- (void)setPostFirstUnlockHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = v4;
  if (v4 && (v4 = [(LCSFirstUnlockManager *)self hasUnlockedSinceBoot], v5 = v8, v4))
  {
    v4 = v8[2](v8);
  }

  else
  {
    if (self->_postFirstUnlockHandler == v5)
    {
      goto LABEL_7;
    }

    v6 = [v5 copy];
    postFirstUnlockHandler = self->_postFirstUnlockHandler;
    self->_postFirstUnlockHandler = v6;
  }

  v5 = v8;
LABEL_7:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)dealloc
{
  [(LCSFirstUnlockManager *)self endObservingForFirstUnlock];
  v3.receiver = self;
  v3.super_class = LCSFirstUnlockManager;
  [(LCSFirstUnlockManager *)&v3 dealloc];
}

@end
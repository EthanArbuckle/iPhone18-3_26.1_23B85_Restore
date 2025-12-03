@interface CHCallInteractionInProcessDataSource
- (CHCallInteractionDataSourceDelegate)delegate;
- (CHCallInteractionInProcessDataSource)init;
- (void)setDelegate:(id)delegate;
@end

@implementation CHCallInteractionInProcessDataSource

- (CHCallInteractionInProcessDataSource)init
{
  v19.receiver = self;
  v19.super_class = CHCallInteractionInProcessDataSource;
  v2 = [(CHCallInteractionInProcessDataSource *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CallHistory.queue.%@.%p", objc_opt_class(), v2];
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);

    objc_initWeak(&location, v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__CHCallInteractionInProcessDataSource_init__block_invoke;
    aBlock[3] = &unk_1E81DC0A0;
    objc_copyWeak(&v17, &location);
    v8 = v3;
    v16 = v8;
    v9 = _Block_copy(aBlock);
    v10 = [CHNotifyObserver alloc];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.callhistory.notification.call-interactions-changed"];
    v12 = [(CHNotifyObserver *)v10 initWithName:v11 queue:v7 callback:v9];
    callInteractionObserver = v8->_callInteractionObserver;
    v8->_callInteractionObserver = v12;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __44__CHCallInteractionInProcessDataSource_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 callInteractionsDidChangeForDataSource:*(a1 + 32)];
    }

    WeakRetained = v4;
  }
}

- (CHCallInteractionDataSourceDelegate)delegate
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_delegate;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_delegate != delegateCopy)
  {
    objc_storeStrong(&self->_delegate, delegate);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

@end
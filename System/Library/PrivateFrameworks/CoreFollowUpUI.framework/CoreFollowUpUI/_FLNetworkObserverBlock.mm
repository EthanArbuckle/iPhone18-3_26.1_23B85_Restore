@interface _FLNetworkObserverBlock
- (id)_initWithBlock:(id)block networkObserver:(id)observer;
- (void)dealloc;
@end

@implementation _FLNetworkObserverBlock

- (id)_initWithBlock:(id)block networkObserver:(id)observer
{
  blockCopy = block;
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = _FLNetworkObserverBlock;
  v8 = [(_FLNetworkObserverBlock *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x245D69850](blockCopy);
    block = v8->_block;
    v8->_block = v9;

    objc_storeWeak(&v8->_networkObserver, observerCopy);
  }

  return v8;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_networkObserver);
  [WeakRetained removeNetworkReachableObserver:self];

  v4.receiver = self;
  v4.super_class = _FLNetworkObserverBlock;
  [(_FLNetworkObserverBlock *)&v4 dealloc];
}

@end
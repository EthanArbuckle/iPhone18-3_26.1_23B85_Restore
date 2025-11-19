@interface _FLNetworkObserverBlock
- (id)_initWithBlock:(id)a3 networkObserver:(id)a4;
- (void)dealloc;
@end

@implementation _FLNetworkObserverBlock

- (id)_initWithBlock:(id)a3 networkObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _FLNetworkObserverBlock;
  v8 = [(_FLNetworkObserverBlock *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x245D69850](v6);
    block = v8->_block;
    v8->_block = v9;

    objc_storeWeak(&v8->_networkObserver, v7);
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
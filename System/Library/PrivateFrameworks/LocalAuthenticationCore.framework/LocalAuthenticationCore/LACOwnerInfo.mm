@interface LACOwnerInfo
- (LACOwnerInfo)initWithProcessId:(int)a3 proxy:(id)a4 invalidationBlock:(id)a5;
- (id)proxy;
@end

@implementation LACOwnerInfo

- (id)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (LACOwnerInfo)initWithProcessId:(int)a3 proxy:(id)a4 invalidationBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = LACOwnerInfo;
  v10 = [(LACOwnerInfo *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = a3;
    objc_storeWeak(&v10->_proxy, v8);
    v12 = _Block_copy(v9);
    invalidationBlock = v11->_invalidationBlock;
    v11->_invalidationBlock = v12;
  }

  return v11;
}

@end
@interface LACOwnerInfo
- (LACOwnerInfo)initWithProcessId:(int)id proxy:(id)proxy invalidationBlock:(id)block;
- (id)proxy;
@end

@implementation LACOwnerInfo

- (id)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (LACOwnerInfo)initWithProcessId:(int)id proxy:(id)proxy invalidationBlock:(id)block
{
  proxyCopy = proxy;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = LACOwnerInfo;
  v10 = [(LACOwnerInfo *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_pid = id;
    objc_storeWeak(&v10->_proxy, proxyCopy);
    v12 = _Block_copy(blockCopy);
    invalidationBlock = v11->_invalidationBlock;
    v11->_invalidationBlock = v12;
  }

  return v11;
}

@end
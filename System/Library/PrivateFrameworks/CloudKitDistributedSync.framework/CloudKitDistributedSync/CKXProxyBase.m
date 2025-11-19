@interface CKXProxyBase
- (CKXBackingStore)backingStore;
- (id)initInternal;
- (void)reset;
@end

@implementation CKXProxyBase

- (id)initInternal
{
  v11.receiver = self;
  v11.super_class = CKXProxyBase;
  v2 = [(CKXProxyBase *)&v11 init];
  v9 = v2;
  if (v2)
  {
    objc_msgSend_reset(v2, v3, v4, v5, v6, v7, v8);
  }

  return v9;
}

- (void)reset
{
  objc_storeWeak(&self->_backingStore, 0);
  self->_scope = 0;
  self->_committed = 0;
}

- (CKXBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

@end
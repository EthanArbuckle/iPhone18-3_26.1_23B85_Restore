@interface _BRFileProviderShareOperationWrapper
- (_BRFileProviderShareOperationWrapper)initWithOperation:(id)a3;
- (void)setRemoteOperationProxy:(id)a3 userInfo:(id)a4;
@end

@implementation _BRFileProviderShareOperationWrapper

- (_BRFileProviderShareOperationWrapper)initWithOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _BRFileProviderShareOperationWrapper;
  v6 = [(_BRFileProviderShareCancellableWrapper *)&v9 initWithCancellable:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, a3);
  }

  return v7;
}

- (void)setRemoteOperationProxy:(id)a3 userInfo:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [[_BRFileProviderShareCancellableWrapper alloc] initWithCancellable:v6];

  remoteOperationProxy = self->_remoteOperationProxy;
  self->_remoteOperationProxy = v7;

  [(BROperationClient *)self->_wrapped setRemoteOperationProxy:self->_remoteOperationProxy userInfo:v9];
}

@end
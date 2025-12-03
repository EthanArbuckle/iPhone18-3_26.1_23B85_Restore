@interface _BRFileProviderShareOperationWrapper
- (_BRFileProviderShareOperationWrapper)initWithOperation:(id)operation;
- (void)setRemoteOperationProxy:(id)proxy userInfo:(id)info;
@end

@implementation _BRFileProviderShareOperationWrapper

- (_BRFileProviderShareOperationWrapper)initWithOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = _BRFileProviderShareOperationWrapper;
  v6 = [(_BRFileProviderShareCancellableWrapper *)&v9 initWithCancellable:operationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrapped, operation);
  }

  return v7;
}

- (void)setRemoteOperationProxy:(id)proxy userInfo:(id)info
{
  infoCopy = info;
  proxyCopy = proxy;
  v7 = [[_BRFileProviderShareCancellableWrapper alloc] initWithCancellable:proxyCopy];

  remoteOperationProxy = self->_remoteOperationProxy;
  self->_remoteOperationProxy = v7;

  [(BROperationClient *)self->_wrapped setRemoteOperationProxy:self->_remoteOperationProxy userInfo:infoCopy];
}

@end
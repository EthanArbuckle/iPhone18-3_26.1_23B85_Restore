@interface EMRemoteConnectionRecoveryAssertion
- (EMRemoteConnectionRecoveryAssertion)initWithConnection:(id)connection;
- (EMRemoteConnectionRecoveryAssertionDelegate)delegate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation EMRemoteConnectionRecoveryAssertion

- (EMRemoteConnectionRecoveryAssertion)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = EMRemoteConnectionRecoveryAssertion;
  v5 = [(EMRemoteConnectionRecoveryAssertion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, connectionCopy);
    [connectionCopy voucherInitialized];
  }

  return v6;
}

- (void)dealloc
{
  [(EMRemoteConnectionRecoveryAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = EMRemoteConnectionRecoveryAssertion;
  [(EMRemoteConnectionRecoveryAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained voucherInvalidated];

  objc_storeWeak(&self->_delegate, 0);

  os_unfair_lock_unlock(&self->_lock);
}

- (EMRemoteConnectionRecoveryAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
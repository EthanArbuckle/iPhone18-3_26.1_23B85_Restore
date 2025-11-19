@interface NPKDoublePressDelegationAssertion
- (NPKDoublePressDelegationAssertion)initWithQueue:(id)a3;
- (NPKDoublePressDelegationAssertionDelegate)delegate;
- (void)_resyncState;
- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)a3;
- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)a3;
@end

@implementation NPKDoublePressDelegationAssertion

- (NPKDoublePressDelegationAssertion)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = NPKDoublePressDelegationAssertion;
  v3 = [(NPKTransientAssertion *)&v6 initWithQueue:a3];
  v4 = v3;
  if (v3)
  {
    [(NPKDoublePressDelegationAssertion *)v3 _resyncState];
  }

  return v4;
}

- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)a3
{
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Double-press delegation assertion: received delegated event", v9, 2u);
    }
  }

  v8 = [(NPKDoublePressDelegationAssertion *)self delegate];
  [v8 doublePressDelegationAssertionDidReceiveDelegatedDoublePressEvent:self authIntentSource:a3];
}

- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Double-press delegation assertion: received terminal authentication request event", v9, 2u);
    }
  }

  v8 = [(NPKDoublePressDelegationAssertion *)self delegate];
  [v8 doublePressDelegationAssertion:self didReceiveTerminalAuthenticationRequestForPassWithUniqueID:v4];
}

- (void)_resyncState
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Double-press delegation assertion: resyncing state", v7, 2u);
    }
  }

  v6 = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [v6 setDoublePressDelegationRequested:1];
}

- (NPKDoublePressDelegationAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
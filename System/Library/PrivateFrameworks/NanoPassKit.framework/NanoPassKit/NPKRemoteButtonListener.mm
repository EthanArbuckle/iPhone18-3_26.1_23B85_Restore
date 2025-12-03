@interface NPKRemoteButtonListener
- (NPKRemoteButtonListener)init;
- (NPKRemoteButtonListenerDelegate)delegate;
- (void)dealloc;
- (void)doublePressDelegationAssertion:(id)assertion didReceiveTerminalAuthenticationRequestForPassWithUniqueID:(id)d;
- (void)doublePressDelegationAssertionDidReceiveDelegatedDoublePressEvent:(id)event authIntentSource:(unint64_t)source;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation NPKRemoteButtonListener

- (NPKRemoteButtonListener)init
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("NPKRemoteButtonListener", v3);
  v8.receiver = self;
  v8.super_class = NPKRemoteButtonListener;
  v5 = [(NPKButtonListener *)&v8 initWithHandlerQueue:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internalQueue, v4);
    v6->_enabled = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(NPKTransientAssertion *)self->_delegationAssertion invalidate];
  v3.receiver = self;
  v3.super_class = NPKRemoteButtonListener;
  [(NPKRemoteButtonListener *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"disable";
        if (enabledCopy)
        {
          v8 = @"enable";
        }

        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested to %@ remote button listener.", &v13, 0xCu);
      }
    }

    if (enabledCopy)
    {
      v9 = [[NPKDoublePressDelegationAssertion alloc] initWithQueue:self->_internalQueue];
      delegationAssertion = self->_delegationAssertion;
      self->_delegationAssertion = v9;

      [(NPKDoublePressDelegationAssertion *)self->_delegationAssertion setDelegate:self];
    }

    else
    {
      [(NPKTransientAssertion *)self->_delegationAssertion invalidate];
      [(NPKDoublePressDelegationAssertion *)self->_delegationAssertion setDelegate:0];
      v11 = self->_delegationAssertion;
      self->_delegationAssertion = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)doublePressDelegationAssertionDidReceiveDelegatedDoublePressEvent:(id)event authIntentSource:(unint64_t)source
{
  handlerQueue = [(NPKButtonListener *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  _handlerQueue_buttonHandler = [(NPKButtonListener *)self _handlerQueue_buttonHandler];
  if (_handlerQueue_buttonHandler)
  {
    v8 = _handlerQueue_buttonHandler;
    _handlerQueue_buttonHandler[2](_handlerQueue_buttonHandler, source);
    _handlerQueue_buttonHandler = v8;
  }
}

- (void)doublePressDelegationAssertion:(id)assertion didReceiveTerminalAuthenticationRequestForPassWithUniqueID:(id)d
{
  dCopy = d;
  delegate = [(NPKRemoteButtonListener *)self delegate];
  [delegate remoteButtonListener:self didReceiveTerminalAuthenticationRequestForPassWithUniqueID:dCopy];
}

- (NPKRemoteButtonListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
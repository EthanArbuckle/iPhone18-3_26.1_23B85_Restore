@interface IKServiceRequest
- (IKAppContext)appContext;
- (IKServiceRequest)initWithAppContext:(id)a3 serviceContext:(id)a4;
- (IKServiceRequestDelegate)delegate;
- (void)_completedWithStatus:(int64_t)a3 errorDictionary:(id)a4;
- (void)cancel;
- (void)send;
- (void)setDelegate:(id)a3;
@end

@implementation IKServiceRequest

- (IKServiceRequest)initWithAppContext:(id)a3 serviceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IKServiceRequest;
  v8 = [(IKServiceRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_appContext, v6);
    objc_storeStrong(&v9->_serviceContext, a4);
  }

  return v9;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = objc_opt_respondsToSelector();

  self->_srDelegateFlags.hasDidCompleteWithStatus = v5 & 1;
}

- (void)send
{
  if (!self->_state)
  {
    self->_state = 1;
    [(IKServiceRequest *)self onSend];
  }
}

- (void)cancel
{
  self->_state = 2;
  [(IKServiceRequest *)self onCancel];
  v3 = [(IKServiceRequest *)self delegate];
  [v3 serviceRequest:self didCompleteWithStatus:2 errorDictionary:0];
}

- (void)_completedWithStatus:(int64_t)a3 errorDictionary:(id)a4
{
  v6 = a4;
  if (self->_state == 1)
  {
    self->_state = 3;
    if (self->_srDelegateFlags.hasDidCompleteWithStatus)
    {
      v8 = v6;
      v7 = [(IKServiceRequest *)self delegate];
      [v7 serviceRequest:self didCompleteWithStatus:a3 errorDictionary:v8];

      v6 = v8;
    }
  }
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (IKServiceRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
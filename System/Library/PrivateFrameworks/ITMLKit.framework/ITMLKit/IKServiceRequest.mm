@interface IKServiceRequest
- (IKAppContext)appContext;
- (IKServiceRequest)initWithAppContext:(id)context serviceContext:(id)serviceContext;
- (IKServiceRequestDelegate)delegate;
- (void)_completedWithStatus:(int64_t)status errorDictionary:(id)dictionary;
- (void)cancel;
- (void)send;
- (void)setDelegate:(id)delegate;
@end

@implementation IKServiceRequest

- (IKServiceRequest)initWithAppContext:(id)context serviceContext:(id)serviceContext
{
  contextCopy = context;
  serviceContextCopy = serviceContext;
  v11.receiver = self;
  v11.super_class = IKServiceRequest;
  v8 = [(IKServiceRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_appContext, contextCopy);
    objc_storeStrong(&v9->_serviceContext, serviceContext);
  }

  return v9;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
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
  delegate = [(IKServiceRequest *)self delegate];
  [delegate serviceRequest:self didCompleteWithStatus:2 errorDictionary:0];
}

- (void)_completedWithStatus:(int64_t)status errorDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (self->_state == 1)
  {
    self->_state = 3;
    if (self->_srDelegateFlags.hasDidCompleteWithStatus)
    {
      v8 = dictionaryCopy;
      delegate = [(IKServiceRequest *)self delegate];
      [delegate serviceRequest:self didCompleteWithStatus:status errorDictionary:v8];

      dictionaryCopy = v8;
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
@interface CRKConcreteIDSMessageDidSendSubscription
- (CRKConcreteIDSMessageDidSendSubscription)initWithHandler:(id)handler;
- (CRKConcreteIDSMessageDidSendSubscriptionDelegate)delegate;
- (void)cancel;
- (void)receiveMessageIdentifier:(id)identifier didSucceed:(BOOL)succeed error:(id)error;
- (void)resume;
@end

@implementation CRKConcreteIDSMessageDidSendSubscription

- (CRKConcreteIDSMessageDidSendSubscription)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = CRKConcreteIDSMessageDidSendSubscription;
  v5 = [(CRKConcreteIDSMessageDidSendSubscription *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)receiveMessageIdentifier:(id)identifier didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  identifierCopy = identifier;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSMessageDidSendSubscription receiveMessageIdentifier:a2 didSucceed:? error:?];
  }

  handler = [(CRKConcreteIDSMessageDidSendSubscription *)self handler];
  v11 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, identifierCopy, succeedCopy, errorCopy);
  }
}

- (void)cancel
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(self);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)resume
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(self);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (CRKConcreteIDSMessageDidSendSubscriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receiveMessageIdentifier:(const char *)a1 didSucceed:error:.cold.1(const char *a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

@end
@interface CRKConcreteIDSMessageDidReceiveSubscription
- (CRKConcreteIDSMessageDidReceiveSubscription)initWithHandler:(id)handler;
- (CRKConcreteIDSMessageDidReceiveSubscriptionDelegate)delegate;
- (void)cancel;
- (void)receiveMessage:(id)message senderAppleID:(id)d senderAddress:(id)address;
- (void)resume;
@end

@implementation CRKConcreteIDSMessageDidReceiveSubscription

- (CRKConcreteIDSMessageDidReceiveSubscription)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = CRKConcreteIDSMessageDidReceiveSubscription;
  v5 = [(CRKConcreteIDSMessageDidReceiveSubscription *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)receiveMessage:(id)message senderAppleID:(id)d senderAddress:(id)address
{
  messageCopy = message;
  dCopy = d;
  addressCopy = address;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSMessageDidReceiveSubscription receiveMessage:a2 senderAppleID:? senderAddress:?];
  }

  handler = [(CRKConcreteIDSMessageDidReceiveSubscription *)self handler];
  v12 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, messageCopy, dCopy, addressCopy);
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

- (CRKConcreteIDSMessageDidReceiveSubscriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receiveMessage:(const char *)a1 senderAppleID:senderAddress:.cold.1(const char *a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

@end
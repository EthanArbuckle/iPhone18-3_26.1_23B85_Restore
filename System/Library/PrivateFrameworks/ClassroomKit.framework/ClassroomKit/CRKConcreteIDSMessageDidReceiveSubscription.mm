@interface CRKConcreteIDSMessageDidReceiveSubscription
- (CRKConcreteIDSMessageDidReceiveSubscription)initWithHandler:(id)a3;
- (CRKConcreteIDSMessageDidReceiveSubscriptionDelegate)delegate;
- (void)cancel;
- (void)receiveMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5;
- (void)resume;
@end

@implementation CRKConcreteIDSMessageDidReceiveSubscription

- (CRKConcreteIDSMessageDidReceiveSubscription)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteIDSMessageDidReceiveSubscription;
  v5 = [(CRKConcreteIDSMessageDidReceiveSubscription *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)receiveMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSMessageDidReceiveSubscription receiveMessage:a2 senderAppleID:? senderAddress:?];
  }

  v11 = [(CRKConcreteIDSMessageDidReceiveSubscription *)self handler];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v13, v9, v10);
  }
}

- (void)cancel
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)resume
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(a1);
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
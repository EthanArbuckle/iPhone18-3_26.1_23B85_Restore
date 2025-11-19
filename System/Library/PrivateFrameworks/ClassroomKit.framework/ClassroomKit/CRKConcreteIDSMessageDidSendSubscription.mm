@interface CRKConcreteIDSMessageDidSendSubscription
- (CRKConcreteIDSMessageDidSendSubscription)initWithHandler:(id)a3;
- (CRKConcreteIDSMessageDidSendSubscriptionDelegate)delegate;
- (void)cancel;
- (void)receiveMessageIdentifier:(id)a3 didSucceed:(BOOL)a4 error:(id)a5;
- (void)resume;
@end

@implementation CRKConcreteIDSMessageDidSendSubscription

- (CRKConcreteIDSMessageDidSendSubscription)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteIDSMessageDidSendSubscription;
  v5 = [(CRKConcreteIDSMessageDidSendSubscription *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)receiveMessageIdentifier:(id)a3 didSucceed:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v12 = a3;
  v9 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKConcreteIDSMessageDidSendSubscription receiveMessageIdentifier:a2 didSucceed:? error:?];
  }

  v10 = [(CRKConcreteIDSMessageDidSendSubscription *)self handler];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v12, v6, v9);
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
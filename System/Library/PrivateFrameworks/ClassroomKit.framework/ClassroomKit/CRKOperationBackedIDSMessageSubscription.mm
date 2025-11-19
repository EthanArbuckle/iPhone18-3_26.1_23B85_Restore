@interface CRKOperationBackedIDSMessageSubscription
- (CRKOperationBackedIDSMessageSubscription)initWithListenOperation:(id)a3 handler:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5;
@end

@implementation CRKOperationBackedIDSMessageSubscription

- (void)dealloc
{
  [(CRKOperationBackedIDSMessageSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKOperationBackedIDSMessageSubscription;
  [(CRKOperationBackedIDSMessageSubscription *)&v3 dealloc];
}

- (CRKOperationBackedIDSMessageSubscription)initWithListenOperation:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKOperationBackedIDSMessageSubscription;
  v9 = [(CRKOperationBackedIDSMessageSubscription *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listenOperation, a3);
    v11 = MEMORY[0x245D3AAD0](v8);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (void)taskOperation:(id)a3 didPostNotificationWithName:(id)a4 userInfo:(id)a5
{
  v7 = a5;
  v13 = v7;
  if (!v7)
  {
    [CRKOperationBackedIDSMessageSubscription taskOperation:a2 didPostNotificationWithName:self userInfo:?];
    v7 = 0;
  }

  v8 = [CRKIDSMessageNotificationInfo instanceWithDictionary:v7];
  v9 = [(CRKOperationBackedIDSMessageSubscription *)self handler];
  v10 = [v8 message];
  v11 = [v8 senderAppleID];
  v12 = [v8 senderAddress];
  (v9)[2](v9, v10, v11, v12);
}

- (void)cancel
{
  v3 = [(CRKOperationBackedIDSMessageSubscription *)self handler];

  if (v3)
  {
    v4 = [(CRKOperationBackedIDSMessageSubscription *)self listenOperation];
    [v4 cancel];

    [(CRKOperationBackedIDSMessageSubscription *)self setHandler:0];
  }
}

- (void)taskOperation:(uint64_t)a1 didPostNotificationWithName:(uint64_t)a2 userInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKOperationBackedIDSMessageSubscription.m" lineNumber:41 description:@"Expected a hydrated notification user-info"];
}

@end
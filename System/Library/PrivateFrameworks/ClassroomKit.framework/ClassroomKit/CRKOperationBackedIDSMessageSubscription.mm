@interface CRKOperationBackedIDSMessageSubscription
- (CRKOperationBackedIDSMessageSubscription)initWithListenOperation:(id)operation handler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)taskOperation:(id)operation didPostNotificationWithName:(id)name userInfo:(id)info;
@end

@implementation CRKOperationBackedIDSMessageSubscription

- (void)dealloc
{
  [(CRKOperationBackedIDSMessageSubscription *)self cancel];
  v3.receiver = self;
  v3.super_class = CRKOperationBackedIDSMessageSubscription;
  [(CRKOperationBackedIDSMessageSubscription *)&v3 dealloc];
}

- (CRKOperationBackedIDSMessageSubscription)initWithListenOperation:(id)operation handler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CRKOperationBackedIDSMessageSubscription;
  v9 = [(CRKOperationBackedIDSMessageSubscription *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listenOperation, operation);
    v11 = MEMORY[0x245D3AAD0](handlerCopy);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

- (void)taskOperation:(id)operation didPostNotificationWithName:(id)name userInfo:(id)info
{
  infoCopy = info;
  v13 = infoCopy;
  if (!infoCopy)
  {
    [CRKOperationBackedIDSMessageSubscription taskOperation:a2 didPostNotificationWithName:self userInfo:?];
    infoCopy = 0;
  }

  v8 = [CRKIDSMessageNotificationInfo instanceWithDictionary:infoCopy];
  handler = [(CRKOperationBackedIDSMessageSubscription *)self handler];
  message = [v8 message];
  senderAppleID = [v8 senderAppleID];
  senderAddress = [v8 senderAddress];
  (handler)[2](handler, message, senderAppleID, senderAddress);
}

- (void)cancel
{
  handler = [(CRKOperationBackedIDSMessageSubscription *)self handler];

  if (handler)
  {
    listenOperation = [(CRKOperationBackedIDSMessageSubscription *)self listenOperation];
    [listenOperation cancel];

    [(CRKOperationBackedIDSMessageSubscription *)self setHandler:0];
  }
}

- (void)taskOperation:(uint64_t)a1 didPostNotificationWithName:(uint64_t)a2 userInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKOperationBackedIDSMessageSubscription.m" lineNumber:41 description:@"Expected a hydrated notification user-info"];
}

@end
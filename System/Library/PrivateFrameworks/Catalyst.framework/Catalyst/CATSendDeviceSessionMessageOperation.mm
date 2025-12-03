@interface CATSendDeviceSessionMessageOperation
- (CATSendDeviceSessionMessageOperation)initWithDeviceSession:(id)session message:(id)message;
- (void)main;
- (void)sendMessage;
@end

@implementation CATSendDeviceSessionMessageOperation

- (CATSendDeviceSessionMessageOperation)initWithDeviceSession:(id)session message:(id)message
{
  sessionCopy = session;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = CATSendDeviceSessionMessageOperation;
  v9 = [(CATOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mDeviceSession, session);
    objc_storeStrong(&v10->mMessage, message);
  }

  return v10;
}

- (void)main
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CATSendDeviceSessionMessageOperation_main__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_0;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)sendMessage
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATSendDeviceSessionMessageOperation *)self isCancelled])
  {
    v6 = CATErrorWithCodeAndUserInfo(404, 0);
    [(CATOperation *)self endOperationWithError:v6];
  }

  else
  {
    mDeviceSession = self->mDeviceSession;
    dictionaryValue = [(CATDictionaryCodable *)self->mMessage dictionaryValue];
    [(CATSharingDeviceSession *)mDeviceSession sendMessage:dictionaryValue];

    [(CATOperation *)self endOperationWithResultObject:0];
  }
}

@end
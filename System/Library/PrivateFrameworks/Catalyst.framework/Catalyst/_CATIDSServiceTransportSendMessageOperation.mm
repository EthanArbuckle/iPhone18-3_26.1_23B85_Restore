@interface _CATIDSServiceTransportSendMessageOperation
- (_CATIDSServiceTransportSendMessageOperation)initWithConnection:(id)connection message:(id)message;
- (void)cancel;
- (void)didSendDataWithError:(id)error;
- (void)main;
- (void)sendData;
@end

@implementation _CATIDSServiceTransportSendMessageOperation

- (_CATIDSServiceTransportSendMessageOperation)initWithConnection:(id)connection message:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = _CATIDSServiceTransportSendMessageOperation;
  v9 = [(CATOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mConnection, connection);
    objc_storeStrong(&v10->mMessage, message);
  }

  return v10;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = _CATIDSServiceTransportSendMessageOperation;
  [(_CATIDSServiceTransportSendMessageOperation *)&v6 cancel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___CATIDSServiceTransportSendMessageOperation_cancel__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v3 = v5;
  v4 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_4;
  block[3] = &unk_278DA7208;
  v8 = v3;
  dispatch_async(v4, block);
}

- (void)main
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51___CATIDSServiceTransportSendMessageOperation_main__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_4;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)sendData
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATOperation *)self isExecuting])
  {
    v4 = [MEMORY[0x277CCAAB0] cat_archivedDataWithRootObject:self->mMessage];
    if (v4)
    {
      objc_initWeak(&location, self);
      mConnection = self->mConnection;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55___CATIDSServiceTransportSendMessageOperation_sendData__block_invoke;
      v7[3] = &unk_278DA7498;
      objc_copyWeak(&v8, &location);
      [(CATIDSServiceConnection *)mConnection sendData:v4 completion:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = CATErrorWithCodeAndUserInfo(301, 0);
      [(CATOperation *)self endOperationWithError:v6];
    }
  }
}

- (void)didSendDataWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATOperation *)self isExecuting])
  {
    if (errorCopy)
    {
      [(CATOperation *)self endOperationWithError:errorCopy];
    }

    else
    {
      [(CATOperation *)self endOperationWithResultObject:0];
    }
  }
}

@end
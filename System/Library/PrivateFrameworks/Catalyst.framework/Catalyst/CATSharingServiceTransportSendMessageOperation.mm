@interface CATSharingServiceTransportSendMessageOperation
- (CATSharingServiceTransportSendMessageOperation)initWithConnection:(id)a3 message:(id)a4;
- (void)cancel;
- (void)didSendMessageWithError:(id)a3;
- (void)main;
- (void)sendMessage;
@end

@implementation CATSharingServiceTransportSendMessageOperation

- (CATSharingServiceTransportSendMessageOperation)initWithConnection:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CATSharingServiceTransportSendMessageOperation;
  v9 = [(CATOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mConnection, a3);
    objc_storeStrong(&v10->mMessage, a4);
  }

  return v10;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = CATSharingServiceTransportSendMessageOperation;
  [(CATSharingServiceTransportSendMessageOperation *)&v6 cancel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CATSharingServiceTransportSendMessageOperation_cancel__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v3 = v5;
  v4 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_17;
  block[3] = &unk_278DA7208;
  v8 = v3;
  dispatch_async(v4, block);
}

void __56__CATSharingServiceTransportSendMessageOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo(404, 0);
    [v2 endOperationWithError:v3];
  }
}

- (void)main
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__CATSharingServiceTransportSendMessageOperation_main__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_17;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)sendMessage
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
      v7[2] = __61__CATSharingServiceTransportSendMessageOperation_sendMessage__block_invoke;
      v7[3] = &unk_278DA7498;
      objc_copyWeak(&v8, &location);
      [(CATSharingConnection *)mConnection sendData:v4 completion:v7];
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

void __61__CATSharingServiceTransportSendMessageOperation_sendMessage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CATSharingServiceTransportSendMessageOperation_sendMessage__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_17;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __61__CATSharingServiceTransportSendMessageOperation_sendMessage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSendMessageWithError:*(a1 + 32)];
}

- (void)didSendMessageWithError:(id)a3
{
  v5 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if ([(CATOperation *)self isExecuting])
  {
    if (v5)
    {
      [(CATOperation *)self endOperationWithError:v5];
    }

    else
    {
      [(CATOperation *)self endOperationWithResultObject:0];
    }
  }
}

@end
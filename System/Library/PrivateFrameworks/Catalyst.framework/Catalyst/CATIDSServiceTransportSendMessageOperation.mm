@interface CATIDSServiceTransportSendMessageOperation
@end

@implementation CATIDSServiceTransportSendMessageOperation

void __53___CATIDSServiceTransportSendMessageOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo(404, 0);
    [v2 endOperationWithError:v3];
  }
}

void __55___CATIDSServiceTransportSendMessageOperation_sendData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___CATIDSServiceTransportSendMessageOperation_sendData__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_4;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __55___CATIDSServiceTransportSendMessageOperation_sendData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSendDataWithError:*(a1 + 32)];
}

@end
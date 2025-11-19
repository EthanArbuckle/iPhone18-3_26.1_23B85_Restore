@interface CATSendBroadcastMessageOperation
- (CATSendBroadcastMessageOperation)initWithBroadcastPrimitive:(id)a3 message:(id)a4;
- (void)main;
- (void)sendMessage;
@end

@implementation CATSendBroadcastMessageOperation

- (CATSendBroadcastMessageOperation)initWithBroadcastPrimitive:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CATSendBroadcastMessageOperation;
  v9 = [(CATOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mBroadcastPrimitives, a3);
    objc_storeStrong(&v10->mMessage, a4);
  }

  return v10;
}

- (void)main
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__CATSendBroadcastMessageOperation_main__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_13;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

- (void)sendMessage
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if ([(CATSendBroadcastMessageOperation *)self isCancelled])
  {
    v6 = CATErrorWithCodeAndUserInfo(404, 0);
    [(CATOperation *)self endOperationWithError:v6];
  }

  else
  {
    mBroadcastPrimitives = self->mBroadcastPrimitives;
    v5 = [(CATDictionaryCodable *)self->mMessage dictionaryValue];
    [(CATSharingBroadcastPrimitives *)mBroadcastPrimitives sendMessageToPairedDevice:v5];

    [(CATOperation *)self endOperationWithResultObject:0];
  }
}

@end
@interface CATSendSerialIDSMessagesOperation
- (CATSendSerialIDSMessagesOperation)initWithIDSPrimitives:(id)a3 workQueue:(id)a4 messages:(id)a5 destinationAddress:(id)a6 sourceAppleID:(id)a7 options:(id)a8;
- (void)didSendMessagesWithError:(id)a3;
- (void)sendMessages;
@end

@implementation CATSendSerialIDSMessagesOperation

- (CATSendSerialIDSMessagesOperation)initWithIDSPrimitives:(id)a3 workQueue:(id)a4 messages:(id)a5 destinationAddress:(id)a6 sourceAppleID:(id)a7 options:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v32.receiver = self;
  v32.super_class = CATSendSerialIDSMessagesOperation;
  v21 = [(CATOperation *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->mPrimitives, a3);
    objc_storeStrong(&v22->mWorkQueue, a4);
    v23 = [v17 copy];
    mMessages = v22->mMessages;
    v22->mMessages = v23;

    v25 = [v18 copy];
    mDestinationAddress = v22->mDestinationAddress;
    v22->mDestinationAddress = v25;

    v27 = [v19 copy];
    mSourceAppleID = v22->mSourceAppleID;
    v22->mSourceAppleID = v27;

    v29 = [v20 copy];
    mOptions = v22->mOptions;
    v22->mOptions = v29;

    v22->mLock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

- (void)sendMessages
{
  v25 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = [(NSArray *)self->mMessages count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->mMessages;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [[CATIDSMessagePayload alloc] initWithMessage:v6];
        mPrimitives = self->mPrimitives;
        v10 = [(CATIDSMessagePayload *)v8 dictionaryValue];
        mDestinationAddress = self->mDestinationAddress;
        mSourceAppleID = self->mSourceAppleID;
        mOptions = self->mOptions;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __49__CATSendSerialIDSMessagesOperation_sendMessages__block_invoke;
        v16[3] = &unk_278DA7738;
        v16[4] = self;
        v16[5] = v21;
        v16[6] = v22;
        [(CATIDSPrimitives *)mPrimitives sendMessage:v10 toAddress:mDestinationAddress fromID:mSourceAppleID options:mOptions completion:v16];

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v3);
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __49__CATSendSerialIDSMessagesOperation_sendMessages__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 424));
  --*(*(*(a1 + 40) + 8) + 24);
  if (v7)
  {
    v4 = *(*(a1 + 48) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) didSendMessagesWithError:*(*(*(a1 + 48) + 8) + 40)];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 424));
}

- (void)didSendMessagesWithError:(id)a3
{
  if (a3)
  {
    [(CATOperation *)self endOperationWithError:?];
  }

  else
  {
    [(CATOperation *)self endOperationWithResultObject:?];
  }
}

@end
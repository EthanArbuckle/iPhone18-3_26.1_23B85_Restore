@interface HAP2SerializedOperationQueue
+ (NSOperationQueue)commonOperationQueue;
- (HAP2SerializedOperationQueue)init;
- (HAP2SerializedOperationQueue)initWithName:(id)a3;
- (HAP2SerializedOperationQueue)initWithName:(id)a3 operationQueue:(id)a4;
- (NSOperation)lastOperation;
- (id)_swapLastOperation:(id)a3;
- (void)addBlock:(id)a3;
- (void)addConcurrentBlock:(id)a3;
- (void)addConcurrentOperation:(id)a3;
- (void)addOperation:(id)a3;
- (void)setLastOperation:(id)a3;
@end

@implementation HAP2SerializedOperationQueue

- (NSOperation)lastOperation
{
  v3 = [(HAP2SerializedOperationQueue *)self lock];
  [v3 assertOwner];

  WeakRetained = objc_loadWeakRetained(&self->_lastOperation);

  return WeakRetained;
}

- (id)_swapLastOperation:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13039;
  v16 = __Block_byref_object_dispose__13040;
  v17 = 0;
  v5 = [(HAP2SerializedOperationQueue *)self lock];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HAP2SerializedOperationQueue__swapLastOperation___block_invoke;
  v9[3] = &unk_2786D4F60;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [v5 performBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __51__HAP2SerializedOperationQueue__swapLastOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastOperation];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 setLastOperation:v6];
}

- (void)addConcurrentBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAP2SerializedOperationQueue *)self queue];
  [v5 addOperationWithBlock:v4];
}

- (void)addConcurrentOperation:(id)a3
{
  v4 = a3;
  v5 = [(HAP2SerializedOperationQueue *)self queue];
  [v5 addOperation:v4];
}

- (void)addBlock:(id)a3
{
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:a3];
  [(HAP2SerializedOperationQueue *)self addOperation:v4];
}

- (void)addOperation:(id)a3
{
  location[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2SerializedOperationQueue *)self _swapLastOperation:v4];
  v6 = v4;
  v7 = [v6 dependencies];
  if ([v7 count])
  {
    v8 = [v7 count];
    v9 = [MEMORY[0x277CBEB58] setWithCapacity:v8 + 1];
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8 + 1];
    [v10 addObject:v6];
    if ([v10 count])
    {
      do
      {
        v11 = [v10 popFirstObject];
        if ([v9 containsObject:v11])
        {
          v12 = v7;
        }

        else
        {
          [v9 addObject:v11];
          v12 = [v11 dependencies];

          if ([v12 count])
          {
            [v10 addObjectsFromArray:v12];
          }
        }

        v7 = v12;
      }

      while ([v10 count]);
    }

    else
    {
      v12 = v7;
    }

    v13 = [v9 allObjects];

    v7 = v12;
  }

  else
  {
    location[0] = v6;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:location count:1];
  }

  if (v5 && ([v5 isFinished] & 1) == 0)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__HAP2SerializedOperationQueue_addOperation___block_invoke;
    v28[3] = &unk_2786D4C58;
    v29 = v5;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
  }

  objc_initWeak(location, v6);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__HAP2SerializedOperationQueue_addOperation___block_invoke_2;
  v26[3] = &unk_2786D6FC8;
  objc_copyWeak(&v27, location);
  v14 = MEMORY[0x231885210](v26);
  v15 = [v6 completionBlock];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __45__HAP2SerializedOperationQueue_addOperation___block_invoke_3;
  v23 = &unk_2786D4C80;
  v16 = v15;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  [v6 setCompletionBlock:&v20];
  v18 = [(HAP2SerializedOperationQueue *)self queue:v20];
  [v18 addOperations:v13 waitUntilFinished:0];

  objc_destroyWeak(&v27);
  objc_destroyWeak(location);

  v19 = *MEMORY[0x277D85DE8];
}

void __45__HAP2SerializedOperationQueue_addOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = [v3 dependencies];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __cleanUpOperationDependencies_block_invoke;
    v6[3] = &unk_2786D4C58;
    v7 = v3;
    v5 = v3;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
  }
}

uint64_t __45__HAP2SerializedOperationQueue_addOperation___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)setLastOperation:(id)a3
{
  obj = a3;
  v4 = [(HAP2SerializedOperationQueue *)self lock];
  [v4 assertOwner];

  objc_storeWeak(&self->_lastOperation, obj);
}

- (HAP2SerializedOperationQueue)initWithName:(id)a3 operationQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HAP2SerializedOperationQueue;
  v9 = [(HAP2SerializedOperationQueue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = [HAP2Lock lockWithName:@"HAP2OperationQueue.lock"];
    lock = v10->_lock;
    v10->_lock = v11;

    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

- (HAP2SerializedOperationQueue)initWithName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() commonOperationQueue];
  v6 = [(HAP2SerializedOperationQueue *)self initWithName:v4 operationQueue:v5];

  return v6;
}

- (HAP2SerializedOperationQueue)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(HAP2SerializedOperationQueue *)self initWithName:v4];

  return v5;
}

+ (NSOperationQueue)commonOperationQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HAP2SerializedOperationQueue_commonOperationQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (commonOperationQueue_onceToken != -1)
  {
    dispatch_once(&commonOperationQueue_onceToken, block);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13039;
  v10 = __Block_byref_object_dispose__13040;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HAP2SerializedOperationQueue_commonOperationQueue__block_invoke_3;
  v5[3] = &unk_2786D5688;
  v5[4] = &v6;
  v5[5] = a1;
  [commonOperationQueue_lock performBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__HAP2SerializedOperationQueue_commonOperationQueue__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v5 = NSStringFromClass(*(a1 + 32));
  v2 = [v1 stringWithFormat:@"%@.commonOperationQueueLock", v5];
  v3 = [HAP2Lock lockWithName:v2];
  v4 = commonOperationQueue_lock;
  commonOperationQueue_lock = v3;
}

void __52__HAP2SerializedOperationQueue_commonOperationQueue__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&commonOperationQueue_weakQueue);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 32) + 8) + 40) setQualityOfService:17];
    v8 = MEMORY[0x277CCACA8];
    v9 = NSStringFromClass(*(a1 + 40));
    v10 = [v8 stringWithFormat:@"com.apple.CoreHAP.%@.commonOperationQueue", v9];
    [*(*(*(a1 + 32) + 8) + 40) setName:v10];

    v11 = *(*(*(a1 + 32) + 8) + 40);

    objc_storeWeak(&commonOperationQueue_weakQueue, v11);
  }
}

@end
@interface HKClinicalStore
- (HKClinicalStore)initWithHealthStore:(id)a3 exportedObject:(id)a4;
- (id)clientQueueBoolHandlerWithCompletion:(id)a3;
- (id)clientQueueDoubleBoolHandlerWithCompletion:(id)a3;
- (id)clientQueueFailableActionHandlerWithCompletion:(id)a3;
- (void)dispatchAsyncProxyClientQueue:(id)a3;
@end

@implementation HKClinicalStore

- (HKClinicalStore)initWithHealthStore:(id)a3 exportedObject:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [HKClinicalStore initWithHealthStore:a2 exportedObject:self];
  }

  v18.receiver = self;
  v18.super_class = HKClinicalStore;
  v10 = [(HKClinicalStore *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_healthStore, a3);
    v12 = objc_alloc(MEMORY[0x277CCDAA0]);
    v13 = [objc_opt_class() taskIdentifier];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v12 initWithHealthStore:v8 taskIdentifier:v13 exportedObject:v9 taskUUID:v14];
    proxyProvider = v11->_proxyProvider;
    v11->_proxyProvider = v15;
  }

  return v11;
}

- (void)dispatchAsyncProxyClientQueue:(id)a3
{
  proxyProvider = self->_proxyProvider;
  v4 = a3;
  v5 = [(HKTaskServerProxyProvider *)proxyProvider clientQueue];
  dispatch_async(v5, v4);
}

- (id)clientQueueBoolHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider exportedObject];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HKClinicalStore_clientQueueBoolHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_2796DC1B0;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __56__HKClinicalStore_clientQueueBoolHandlerWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HKClinicalStore_clientQueueBoolHandlerWithCompletion___block_invoke_2;
  v7[3] = &unk_2796DC188;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = a2;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v4 dispatchAsyncProxyClientQueue:v7];
}

void __56__HKClinicalStore_clientQueueBoolHandlerWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48));
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)clientQueueDoubleBoolHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider exportedObject];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__HKClinicalStore_clientQueueDoubleBoolHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_2796DC200;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __62__HKClinicalStore_clientQueueDoubleBoolHandlerWithCompletion___block_invoke(uint64_t a1, char a2, char a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HKClinicalStore_clientQueueDoubleBoolHandlerWithCompletion___block_invoke_2;
  v9[3] = &unk_2796DC1D8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  [v6 dispatchAsyncProxyClientQueue:v9];
}

void __62__HKClinicalStore_clientQueueDoubleBoolHandlerWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 49));
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)clientQueueFailableActionHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider exportedObject];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__HKClinicalStore_clientQueueFailableActionHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_2796DC250;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __66__HKClinicalStore_clientQueueFailableActionHandlerWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HKClinicalStore_clientQueueFailableActionHandlerWithCompletion___block_invoke_2;
  v9[3] = &unk_2796DC228;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v13 = a2;
  v8 = v5;
  [v6 dispatchAsyncProxyClientQueue:v9];
}

void __66__HKClinicalStore_clientQueueFailableActionHandlerWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[7], a1[4]);
  }

  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)initWithHealthStore:(uint64_t)a1 exportedObject:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalStore.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"healthStore != nil"}];
}

@end
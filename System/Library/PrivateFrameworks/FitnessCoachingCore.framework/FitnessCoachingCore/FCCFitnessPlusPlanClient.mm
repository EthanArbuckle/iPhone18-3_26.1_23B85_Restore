@interface FCCFitnessPlusPlanClient
- (FCCFitnessPlusPlanClient)init;
- (FCCFitnessPlusPlanClient)initWithQueue:(id)queue xpcClient:(id)client;
- (void)_hasPlanScheduledWorkoutsForTodayWithCompletion:(id)completion;
- (void)_postNotificationWithRequest:(id)request completion:(id)completion;
- (void)hasPlanScheduledWorkoutsForTodayWithCompletion:(id)completion;
@end

@implementation FCCFitnessPlusPlanClient

- (FCCFitnessPlusPlanClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCFitnessPlusPlanClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCFitnessPlusPlanClient)initWithQueue:(id)queue xpcClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = FCCFitnessPlusPlanClient;
  v9 = [(FCCFitnessPlusPlanClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_xpcClient, client);
  }

  return v10;
}

- (void)hasPlanScheduledWorkoutsForTodayWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__FCCFitnessPlusPlanClient_hasPlanScheduledWorkoutsForTodayWithCompletion___block_invoke;
  v7[3] = &unk_27900A068;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_postNotificationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  transportData = [request transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:9 data:transportData completion:completionCopy];
}

- (void)_hasPlanScheduledWorkoutsForTodayWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcClient = self->_xpcClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__FCCFitnessPlusPlanClient__hasPlanScheduledWorkoutsForTodayWithCompletion___block_invoke;
  v7[3] = &unk_27900A0B0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(FCCXPCClient *)xpcClient transportRequest:4 data:0 completion:v7];
}

void __76__FCCFitnessPlusPlanClient__hasPlanScheduledWorkoutsForTodayWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[FCCFitnessPlusPlanState alloc] initWithTransportData:v6];

  (*(*(a1 + 32) + 16))();
}

@end
@interface CRXFHealthCloudSyncObserver
- (CRXFHealthCloudSyncObserver)initWithQueue:(id)queue completion:(id)completion;
- (void)cloudSyncObserver:(id)observer didFailToPopulateStatusWithError:(id)error;
- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status;
- (void)startObservingHealthStore:(id)store;
@end

@implementation CRXFHealthCloudSyncObserver

- (CRXFHealthCloudSyncObserver)initWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = CRXFHealthCloudSyncObserver;
  v9 = [(CRXFHealthCloudSyncObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = MEMORY[0x24C1A0F30](completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

- (void)startObservingHealthStore:(id)store
{
  v4 = MEMORY[0x277CCD130];
  storeCopy = store;
  v6 = [[v4 alloc] initWithHealthStore:storeCopy delegate:self];

  cloudSyncObserver = self->_cloudSyncObserver;
  self->_cloudSyncObserver = v6;

  v8 = self->_cloudSyncObserver;

  [(HKCloudSyncObserver *)v8 startObservingSyncStatus];
}

- (void)cloudSyncObserverStatusUpdated:(id)updated status:(id)status
{
  statusCopy = status;
  [(HKCloudSyncObserver *)self->_cloudSyncObserver setDelegate:0];
  cloudSyncObserver = self->_cloudSyncObserver;
  self->_cloudSyncObserver = 0;

  v7 = MEMORY[0x24C1A0F30](self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CRXFHealthCloudSyncObserver_cloudSyncObserverStatusUpdated_status___block_invoke;
  v12[3] = &unk_278EA0300;
  v13 = statusCopy;
  v14 = v7;
  v10 = v7;
  v11 = statusCopy;
  [(CRXUDispatchQueue *)queue dispatchAsync:v12];
}

uint64_t __69__CRXFHealthCloudSyncObserver_cloudSyncObserverStatusUpdated_status___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastPushDate];
  v3 = 0;
  v4 = 0;
  if (v2)
  {
    v5 = [*(a1 + 32) lastPushDate];
    [v5 timeIntervalSinceReferenceDate];
    v4 = v6;
  }

  v7 = [*(a1 + 32) lastPullDate];
  if (v7)
  {
    v8 = [*(a1 + 32) lastPullDate];
    [v8 timeIntervalSinceReferenceDate];
    v3 = v9;
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) syncEnabled];
  v12 = *(v10 + 16);
  v13.n128_u64[0] = v4;
  v14.n128_u64[0] = v3;

  return v12(v10, v11, 0, v13, v14);
}

- (void)cloudSyncObserver:(id)observer didFailToPopulateStatusWithError:(id)error
{
  errorCopy = error;
  [(HKCloudSyncObserver *)self->_cloudSyncObserver setDelegate:0];
  cloudSyncObserver = self->_cloudSyncObserver;
  self->_cloudSyncObserver = 0;

  v7 = MEMORY[0x24C1A0F30](self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__CRXFHealthCloudSyncObserver_cloudSyncObserver_didFailToPopulateStatusWithError___block_invoke;
  v12[3] = &unk_278E9FCB8;
  v13 = errorCopy;
  v14 = v7;
  v10 = errorCopy;
  v11 = v7;
  [(CRXUDispatchQueue *)queue dispatchAsync:v12];
}

@end
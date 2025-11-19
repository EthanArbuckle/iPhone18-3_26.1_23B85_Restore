@interface PADVNSerialRequestsScheduler
- (PADVNSerialRequestsScheduler)init;
- (PADVNSerialRequestsScheduler)initWithQueue:(id)a3;
- (void)_dispatchVisionRequestForFrame:(id)a3;
- (void)_reset;
- (void)analyzeObservationComposite:(id)a3;
- (void)handleResultForRequest:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)processFrame:(id)a3;
- (void)waitForCurrentFrameProcessingWithCompletion:(id)a3;
@end

@implementation PADVNSerialRequestsScheduler

- (PADVNSerialRequestsScheduler)init
{
  v8.receiver = self;
  v8.super_class = PADVNSerialRequestsScheduler;
  v2 = [(PADVNSerialRequestsScheduler *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(PADVNSerialRequestsScheduler *)v2 _reset];
  }

  return v2;
}

- (PADVNSerialRequestsScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PADVNSerialRequestsScheduler;
  v6 = [(PADVNSerialRequestsScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    [(PADVNSerialRequestsScheduler *)v7 _reset];
  }

  return v7;
}

- (void)processFrame:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_remainingRequests)
  {
  }

  else
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PADVNSerialRequestsScheduler_processFrame___block_invoke;
    block[3] = &unk_278E836E8;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    dispatch_async(queue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __45__PADVNSerialRequestsScheduler_processFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && !WeakRetained[4] && (v4 = WeakRetained, [WeakRetained shouldProcessFrame:*(a1 + 32)]))
  {
    [v4 _dispatchVisionRequestForFrame:*(a1 + 32)];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)waitForCurrentFrameProcessingWithCompletion:(id)a3
{
  if (self->_isProcessingFrame)
  {
    self->_currentFrameProcessingCompletion = _Block_copy(a3);

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = *(a3 + 2);

    v4(a3);
  }
}

- (void)_dispatchVisionRequestForFrame:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_remainingRequests)
  {
    [PADVNSerialRequestsScheduler _dispatchVisionRequestForFrame:];
  }

  self->_isProcessingFrame = 1;
  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __63__PADVNSerialRequestsScheduler__dispatchVisionRequestForFrame___block_invoke;
  v38[3] = &unk_278E83738;
  objc_copyWeak(&v39, &location);
  v5 = [(PADVNSerialRequestsScheduler *)self requestsForFrame:v4 handler:v38];
  requests = self->_requests;
  self->_requests = v5;

  self->_remainingRequests = [(NSArray *)self->_requests count];
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  currentObservationComposite = self->_currentObservationComposite;
  self->_currentObservationComposite = v7;

  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_requests;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v12)
  {
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v34 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
        }

        else
        {
          v16 = v10;
        }

        [v16 addObject:v15];
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v12);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PADVNSerialRequestsScheduler__dispatchVisionRequestForFrame___block_invoke_3;
  block[3] = &unk_278E83710;
  objc_copyWeak(&v33, &location);
  v18 = v10;
  v31 = v18;
  v19 = v4;
  v32 = v19;
  dispatch_async(queue, block);
  v20 = objc_alloc(MEMORY[0x277CE2D50]);
  v21 = [v19 buffer];
  v22 = [v19 orientation];
  v23 = [v20 initWithCVPixelBuffer:v21 orientation:v22 options:MEMORY[0x277CBEC10]];
  v29 = 0;
  v24 = [v23 performRequests:v9 error:&v29];
  v25 = v29;
  v26 = v29;
  if ((v24 & 1) == 0)
  {
    v27 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PADVNSerialRequestsScheduler *)v26 _dispatchVisionRequestForFrame:v27];
    }

    self->_remainingRequests -= [v9 count];
    objc_storeStrong(&self->_requestError, v25);
    if (!self->_remainingRequests)
    {
      [(PADVNSerialRequestsScheduler *)self handleObservationCompositeError:self->_requestError];
      requestError = self->_requestError;
      self->_requestError = 0;
    }
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __63__PADVNSerialRequestsScheduler__dispatchVisionRequestForFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PADVNSerialRequestsScheduler__dispatchVisionRequestForFrame___block_invoke_2;
    block[3] = &unk_278E83710;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void __63__PADVNSerialRequestsScheduler__dispatchVisionRequestForFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained handleResultForRequest:*(a1 + 32) error:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __63__PADVNSerialRequestsScheduler__dispatchVisionRequestForFrame___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = *(a1 + 40);
          v11 = 0;
          [v8 performOn:v9 error:&v11];
          v10 = v11;
          [WeakRetained handleResultForRequest:v8 error:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (void)handleResultForRequest:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  --self->_remainingRequests;
  if (v7)
  {
    v9 = recentlyLoggedError;
    v10 = [v7 debugDescription];
    LOBYTE(v9) = [v9 isEqualToString:v10];

    if ((v9 & 1) == 0)
    {
      v11 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(PADVNSerialRequestsScheduler *)v6 handleResultForRequest:v8 error:v11];
      }

      v12 = [v8 debugDescription];
      v13 = recentlyLoggedError;
      recentlyLoggedError = v12;
    }

    objc_storeStrong(&self->_requestError, a4);
  }

  if (self->_requestError)
  {
    if (!self->_remainingRequests)
    {
      [(PADVNSerialRequestsScheduler *)self handleObservationCompositeError:?];
      requestError = self->_requestError;
      self->_requestError = 0;
LABEL_19:
    }
  }

  else if (self->_currentObservationComposite)
  {
    requestError = [(PADVNSerialRequestsScheduler *)self observationsFromRequest:v6];
    if (requestError)
    {
      hasLoggedObservationError = 0;
      currentObservationComposite = self->_currentObservationComposite;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [(NSMutableDictionary *)currentObservationComposite setObject:requestError forKeyedSubscript:v17];

      v18 = [(NSMutableDictionary *)self->_currentObservationComposite count];
      if (v18 == [(NSArray *)self->_requests count])
      {
        [(NSMutableArray *)self->_currentObservationCompositeSet addObject:self->_currentObservationComposite];
        [(PADVNSerialRequestsScheduler *)self analyzeObservationComposite:self->_currentObservationComposite];
        v19 = self->_currentObservationComposite;
        self->_currentObservationComposite = 0;

        v20 = [(PADVNSerialRequestsScheduler *)self observationCompositeSetSize];
        if ([(NSMutableArray *)self->_currentObservationCompositeSet count]== v20)
        {
          [(PADVNSerialRequestsScheduler *)self analyzeObservationCompositeSet:self->_currentObservationCompositeSet];
          [(NSMutableArray *)self->_currentObservationCompositeSet removeObjectAtIndex:0];
        }
      }
    }

    else if ((hasLoggedObservationError & 1) == 0)
    {
      v21 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PADVNSerialRequestsScheduler handleResultForRequest:v6 error:v21];
      }

      hasLoggedObservationError = 1;
    }

    goto LABEL_19;
  }
}

- (void)analyzeObservationComposite:(id)a3
{
  self->_isProcessingFrame = 0;
  currentFrameProcessingCompletion = self->_currentFrameProcessingCompletion;
  if (currentFrameProcessingCompletion)
  {
    currentFrameProcessingCompletion[2](currentFrameProcessingCompletion, a2, a3);
    v5 = self->_currentFrameProcessingCompletion;
    self->_currentFrameProcessingCompletion = 0;
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);

  [(PADVNSerialRequestsScheduler *)self _reset];
}

- (void)_reset
{
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  currentObservationComposite = self->_currentObservationComposite;
  self->_currentObservationComposite = v3;

  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  currentObservationCompositeSet = self->_currentObservationCompositeSet;
  self->_currentObservationCompositeSet = v5;

  self->_remainingRequests = 0;
  self->_isProcessingFrame = 0;
}

- (void)_dispatchVisionRequestForFrame:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_245686000, a2, OS_LOG_TYPE_ERROR, "Vision request dispatch failed (%{public}@).", &v2, 0xCu);
}

- (void)handleResultForRequest:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_245686000, log, OS_LOG_TYPE_ERROR, "Request %{public}@ failed (%{public}@).", &v3, 0x16u);
}

- (void)handleResultForRequest:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_245686000, a2, OS_LOG_TYPE_ERROR, "Request %{public}@ did not obtain any observations.", &v2, 0xCu);
}

@end
@interface MDMSSRequestDelegate
- (MDMSSRequestDelegate)initWithRequest:(id)request;
- (void)_startTimeout:(double)timeout completionBlock:(id)block;
- (void)_timerDidFire:(id)fire;
- (void)cancel;
- (void)dealloc;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
@end

@implementation MDMSSRequestDelegate

- (MDMSSRequestDelegate)initWithRequest:(id)request
{
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = MDMSSRequestDelegate;
  v6 = [(MDMSSRequestDelegate *)&v15 init];
  v7 = v6;
  if (v6)
  {
    if (!requestCopy)
    {
      [MDMSSRequestDelegate initWithRequest:];
    }

    objc_storeStrong(&v6->_request, request);
    [(SSRequest *)v7->_request setDelegate:v7];
    v8 = objc_alloc(MEMORY[0x277CBEBB8]);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
    [distantFuture2 timeIntervalSinceReferenceDate];
    v11 = [v8 initWithFireDate:distantFuture interval:v7 target:sel__timerDidFire_ selector:v7 userInfo:1 repeats:?];
    timeoutTimer = v7->_timeoutTimer;
    v7->_timeoutTimer = v11;

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:v7->_timeoutTimer forMode:*MEMORY[0x277CBE738]];
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)self->_timeoutTimer invalidate];
  v3.receiver = self;
  v3.super_class = MDMSSRequestDelegate;
  [(MDMSSRequestDelegate *)&v3 dealloc];
}

- (void)_startTimeout:(double)timeout completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MDMSSRequestDelegate__startTimeout_completionBlock___block_invoke;
  v8[3] = &unk_27982BB68;
  timeoutCopy = timeout;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  _performBlockOnMainThread(v8);
}

void __54__MDMSSRequestDelegate__startTimeout_completionBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v7 = v5;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Request starting. Timeout: %.1f seconds", buf, 0x16u);
  }

  if (*(*(a1 + 32) + 16))
  {
    __54__MDMSSRequestDelegate__startTimeout_completionBlock___block_invoke_cold_1();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__MDMSSRequestDelegate__startTimeout_completionBlock___block_invoke_2;
  aBlock[3] = &unk_27982BD00;
  v15 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;

  v11 = *(*(a1 + 32) + 24);
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 48)];
  [v11 setFireDate:v12];

  [*(*(a1 + 32) + 8) start];
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __54__MDMSSRequestDelegate__startTimeout_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__MDMSSRequestDelegate_cancel__block_invoke;
  v2[3] = &unk_27982BA78;
  v2[4] = self;
  _performBlockOnMainThread(v2);
}

uint64_t __30__MDMSSRequestDelegate_cancel__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v11 = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Canceling request...", &v11, 0xCu);
  }

  v6 = *(a1 + 32);
  if (!*(v6 + 16))
  {
    __30__MDMSSRequestDelegate_cancel__block_invoke_cold_1();
  }

  v7 = *(v6 + 24);
  v8 = [MEMORY[0x277CBEAA8] distantFuture];
  [v7 setFireDate:v8];

  result = [*(*(a1 + 32) + 8) cancel];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)request:(id)request didFailWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = errorCopy;
    v8 = v19;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Request failed. Error: %{public}@", buf, 0x16u);
  }

  timeoutTimer = self->_timeoutTimer;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [(NSTimer *)timeoutTimer setFireDate:distantFuture];

  v11 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  if (v11)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__MDMSSRequestDelegate_request_didFailWithError___block_invoke;
    v15[3] = &unk_27982B898;
    v17 = v11;
    v16 = errorCopy;
    dispatch_async(v13, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestDidFinish:(id)finish
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Request completed.", buf, 0xCu);
  }

  timeoutTimer = self->_timeoutTimer;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [(NSTimer *)timeoutTimer setFireDate:distantFuture];

  v9 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  if (v9)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__MDMSSRequestDelegate_requestDidFinish___block_invoke;
    block[3] = &unk_27982CC88;
    v14 = v9;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_timerDidFire:(id)fire
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    *buf = 138543362;
    v19 = objc_opt_class();
    v6 = v19;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Request timed out. Canceling.", buf, 0xCu);
  }

  [(MDMSSRequestDelegate *)self cancel];
  v7 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D03450];
  v11 = DMCErrorArray();
  v12 = [v9 DMCErrorWithDomain:v10 code:30001 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], 0}];

  if (v7)
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__MDMSSRequestDelegate__timerDidFire___block_invoke;
    block[3] = &unk_27982B898;
    v17 = v7;
    v16 = v12;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end
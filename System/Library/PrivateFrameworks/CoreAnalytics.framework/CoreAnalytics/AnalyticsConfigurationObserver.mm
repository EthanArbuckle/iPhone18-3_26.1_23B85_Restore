@interface AnalyticsConfigurationObserver
- (AnalyticsConfigurationObserver)init;
- (AnalyticsConfigurationObserverDelegate)delegate;
- (BOOL)startObservingConfigurationType:(id)a3;
- (BOOL)stopObservingConfigurationType:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)setConfigurationObserverDelegate:(id)a3 queue:(id)a4;
@end

@implementation AnalyticsConfigurationObserver

- (AnalyticsConfigurationObserver)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AnalyticsConfigurationObserver;
  v2 = [(AnalyticsConfigurationObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CoreAnalytics.ConfigurationObserver", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    [(AnalyticsConfigurationObserver *)v2 setDelegate:0];
    [(AnalyticsConfigurationObserver *)v2 setDelegateQueue:0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  cntrl = self->observer.__cntrl_;
  self->observer.__ptr_ = 0;
  self->observer.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v5.receiver = self;
  v5.super_class = AnalyticsConfigurationObserver;
  [(AnalyticsConfigurationObserver *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setConfigurationObserverDelegate:(id)a3 queue:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CASPIEnter();
  v8 = [(AnalyticsConfigurationObserver *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AnalyticsConfigurationObserver_setConfigurationObserverDelegate_queue___block_invoke;
  v12[3] = &unk_1E7A2A538;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, v12);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __73__AnalyticsConfigurationObserver_setConfigurationObserverDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (BOOL)startObservingConfigurationType:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CASPIEnter();
  v5 = [(AnalyticsConfigurationObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AnalyticsConfigurationObserver_startObservingConfigurationType___block_invoke;
  block[3] = &unk_1E7A2A658;
  block[4] = self;
  v10 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, block);

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void __66__AnalyticsConfigurationObserver_startObservingConfigurationType___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  [*(a1 + 40) UTF8String];
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  [*(a1 + 32) delegateQueue];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

- (BOOL)stopObservingConfigurationType:(id)a3
{
  v7[5] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v4 = [(AnalyticsConfigurationObserver *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AnalyticsConfigurationObserver_stopObservingConfigurationType___block_invoke;
  v7[3] = &unk_1E7A2A560;
  v7[4] = self;
  dispatch_barrier_async(v4, v7);

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

void __65__AnalyticsConfigurationObserver_stopObservingConfigurationType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

- (AnalyticsConfigurationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end
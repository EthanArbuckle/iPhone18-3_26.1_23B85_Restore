@interface AnalyticsEventObserver
- (AnalyticsEventObserver)init;
- (AnalyticsEventObserverDelegate)delegate;
- (BOOL)startObservingEventList:(id)list withErrorHandler:(id)handler;
- (BOOL)stopObserving;
- (id).cxx_construct;
- (uint64_t)startObservingEventList:withErrorHandler:;
- (void)dealloc;
- (void)setEventObserverDelegate:(id)delegate queue:(id)queue;
- (void)startObservingEventList:withErrorHandler:;
@end

@implementation AnalyticsEventObserver

- (AnalyticsEventObserver)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AnalyticsEventObserver;
  v2 = [(AnalyticsEventObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CoreAnalytics.EventObserver", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    [(AnalyticsEventObserver *)v2 setDelegate:0];
    [(AnalyticsEventObserver *)v2 setDelegateQueue:0];
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
  v5.super_class = AnalyticsEventObserver;
  [(AnalyticsEventObserver *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setEventObserverDelegate:(id)delegate queue:(id)queue
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  CASPIEnter();
  queue = [(AnalyticsEventObserver *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__AnalyticsEventObserver_setEventObserverDelegate_queue___block_invoke;
  v12[3] = &unk_1E7A2A538;
  v12[4] = self;
  v13 = delegateCopy;
  v14 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_barrier_async(queue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __57__AnalyticsEventObserver_setEventObserverDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (BOOL)startObservingEventList:(id)list withErrorHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  listCopy = list;
  handlerCopy = handler;
  CASPIEnter();
  v38 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v38);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::array::create(&v37);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = listCopy;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = v12;
        applesauce::xpc::object::object(&v39, [v12 UTF8String]);
        v14 = v39;
        v15 = v37;
        xpc_array_append_value(v15, v14);

        v16 = v39;
        v39 = 0;
      }

      v9 = [v8 countByEnumeratingWithState:&v43 objects:v42 count:16];
    }

    while (v9);
  }

  applesauce::xpc::object::object(&v35, &v37);
  v39 = &v38;
  v40 = "events";
  applesauce::xpc::dict::object_proxy::operator=(&v39, &v35, &v36);
  v17 = v36;
  v36 = 0;

  v18 = v35;
  v35 = 0;

  v20 = CoreAnalytics::Client::get(v19);
  if (handlerCopy)
  {
    v21 = MEMORY[0x1B2704490](handlerCopy);
    v39 = &unk_1F241FC98;
    v40 = v21;
    v41 = &v39;
    CoreAnalytics::Client::registerErrorHandler(v20, &v39);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&v39);
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  std::string::basic_string[abi:ne200100]<0>(__p, "create-event-observer");
  applesauce::xpc::object::object(&v31, &v38);
  CoreAnalytics::Client::sendManagementCommandWithReply(v20, __p, &v31, &v34);
  v22 = v31;
  v31 = 0;

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v34) == MEMORY[0x1E69E9E80])
  {
    v39 = &v34;
    v40 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v39))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "create-event-observer failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  queue = [(AnalyticsEventObserver *)self queue];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__AnalyticsEventObserver_startObservingEventList_withErrorHandler___block_invoke;
  v30[3] = &unk_1E7A2A560;
  v30[4] = self;
  dispatch_barrier_async(queue, v30);

  v24 = v34;
  v34 = 0;

  v25 = v37;
  v37 = 0;

  v26 = v38;
  v38 = 0;

  v27 = *MEMORY[0x1E69E9840];
  return 1;
}

void __67__AnalyticsEventObserver_startObservingEventList_withErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  [*v1 delegateQueue];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

- (BOOL)stopObserving
{
  v6[5] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  queue = [(AnalyticsEventObserver *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__AnalyticsEventObserver_stopObserving__block_invoke;
  v6[3] = &unk_1E7A2A560;
  v6[4] = self;
  dispatch_barrier_async(queue, v6);

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

void __39__AnalyticsEventObserver_stopObserving__block_invoke(uint64_t a1)
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

- (AnalyticsEventObserverDelegate)delegate
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

- (void)startObservingEventList:withErrorHandler:
{
  *(&v8 + 1) = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&v8 = *(a2 + 16);
  }

  v3 = *(self + 8);
  if ((SBYTE7(v8) & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v4, *__p, v8}];
  (*(v3 + 16))(v3, v5);

  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)startObservingEventList:withErrorHandler:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end
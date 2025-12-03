@interface CoreDAVSRVLookupTask
- (CoreDAVSRVLookupTask)initWithServiceString:(id)string;
- (id)description;
- (void)_runOnCallbackThread:(id)thread;
- (void)finishCoreDAVTaskWithError:(id)error;
- (void)handleResolvedEndPoints:(id)points;
- (void)performCoreDAVTask;
@end

@implementation CoreDAVSRVLookupTask

- (CoreDAVSRVLookupTask)initWithServiceString:(id)string
{
  stringCopy = string;
  if (!stringCopy || (v6 = stringCopy, ![stringCopy length]))
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Non-nil and non-zero length 'serviceSting' required." userInfo:0];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = CoreDAVSRVLookupTask;
  v7 = [(CoreDAVTask *)&v12 initWithURL:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_serviceString, string);
    fetchedRecords = v8->_fetchedRecords;
    v8->_fetchedRecords = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVSRVLookupTask;
  v4 = [(CoreDAVTask *)&v8 description];
  [v3 appendFormat:@"[%@ ", v4];

  serviceString = [(CoreDAVSRVLookupTask *)self serviceString];
  [v3 appendFormat:@"|  Service string: [%@]", serviceString];

  fetchedRecords = [(CoreDAVSRVLookupTask *)self fetchedRecords];
  [v3 appendFormat:@"| Number of SRV records: [%lu]", objc_msgSend(fetchedRecords, "count")];

  [v3 appendFormat:@"]"];

  return v3;
}

- (void)performCoreDAVTask
{
  if (self->_resolver)
  {
    nw_resolver_set_cancel_handler();
    resolver = self->_resolver;
    nw_resolver_cancel();
    v4 = self->_resolver;
    self->_resolver = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    [(NSTimer *)timeoutTimer invalidate];
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  serviceString = [(CoreDAVSRVLookupTask *)self serviceString];
  [serviceString UTF8String];
  srv = nw_endpoint_create_srv();

  v9 = MEMORY[0x245D68950]();
  v10 = nw_resolver_create_with_endpoint();
  v11 = self->_resolver;
  self->_resolver = v10;
  v12 = v10;

  v13 = self->_resolver;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_2;
  v33 = &unk_278E30F18;
  selfCopy = self;
  nw_resolver_set_cancel_handler();
  v14 = self->_resolver;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_2_20;
  v28 = &unk_278E310E0;
  selfCopy2 = self;
  nw_resolver_set_update_handler();
  [(CoreDAVTask *)self timeoutInterval];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_4;
  v22 = &unk_278E31108;
  if (v15 <= 0.0)
  {
    v15 = 60.0;
  }

  v24 = v15;
  selfCopy3 = self;
  v16 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:0 repeats:&v19 block:?];
  v17 = self->_timeoutTimer;
  self->_timeoutTimer = v16;

  v18 = [(CoreDAVTask *)self workRunLoop:v19];
  [v18 addTimer:self->_timeoutTimer forMode:*MEMORY[0x277CBE640]];
}

uint64_t __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_2(uint64_t a1)
{
  v2 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = [v2 logHandleForAccountInfoProvider:WeakRetained];

  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2452FB000, v4, OS_LOG_TYPE_DEFAULT, "nw_resolver canceled; canceling CoreDAVSRVLookupTask", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_18;
  v7[3] = &unk_278E30F18;
  v7[4] = v5;
  return [v5 _runOnCallbackThread:v7];
}

void __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [v1 finishCoreDAVTaskWithError:v2];
}

void __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_2_20(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_3;
    v8[3] = &unk_278E30F90;
    v8[4] = v7;
    v9 = v5;
    [v7 _runOnCallbackThread:v8];
  }
}

void __42__CoreDAVSRVLookupTask_performCoreDAVTask__block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[CoreDAVLogging sharedLogging];
  v3 = [v2 logHandleForAccountInfoProvider:0];
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_2452FB000, v4, OS_LOG_TYPE_ERROR, "Timeout interval of %f reached", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  [*(a1 + 32) finishCoreDAVTaskWithError:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v8.receiver = self;
  v8.super_class = CoreDAVSRVLookupTask;
  [(CoreDAVTask *)&v8 finishCoreDAVTaskWithError:error];
  if (self->_resolver)
  {
    nw_resolver_set_cancel_handler();
    resolver = self->_resolver;
    nw_resolver_cancel();
    v5 = self->_resolver;
    self->_resolver = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    [(NSTimer *)timeoutTimer invalidate];
    v7 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (void)_runOnCallbackThread:(id)thread
{
  threadCopy = thread;
  taskManager = [(CoreDAVTask *)self taskManager];
  workRunLoop = [taskManager workRunLoop];
  [workRunLoop performBlock:threadCopy];
}

- (void)handleResolvedEndPoints:(id)points
{
  v20 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  if (!pointsCopy || (count = nw_array_get_count()) == 0)
  {
    if (self->_resolver)
    {
      error = nw_resolver_get_error();
      srv_weighted_variant = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v9 = [srv_weighted_variant logHandleForAccountInfoProvider:WeakRetained];

      if (!error)
      {
        if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "SRV lookup returned no records", buf, 2u);
        }

        goto LABEL_4;
      }

      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v19 = error;
        _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "nw_resolver_get_error returned %i", buf, 8u);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
    goto LABEL_12;
  }

  v6 = count;
  srv_weighted_variant = nw_resolver_create_srv_weighted_variant();
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  v16 = MEMORY[0x277D85DD0];
  v17 = v8;
  v9 = v8;
  nw_array_apply();
  v10 = [v9 copy:v16];
  fetchedRecords = self->_fetchedRecords;
  self->_fetchedRecords = v10;

LABEL_4:
  v12 = 0;
LABEL_12:
  [(CoreDAVSRVLookupTask *)self finishCoreDAVTaskWithError:v12];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __48__CoreDAVSRVLookupTask_handleResolvedEndPoints___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(CoreDAVSRVResourceRecord);
  v6 = [*(a1 + 32) serviceString];
  [(CoreDAVSRVResourceRecord *)v5 setServiceString:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:nw_endpoint_get_port(v4)];
  [(CoreDAVSRVResourceRecord *)v5 setPort:v7];

  hostname = nw_endpoint_get_hostname(v4);
  v9 = [MEMORY[0x277CCACA8] stringWithCString:hostname encoding:4];
  if ([v9 hasSuffix:@"."])
  {
    v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 1}];

    v9 = v10;
  }

  [(CoreDAVSRVResourceRecord *)v5 setTarget:v9];
  [*(a1 + 40) addObject:v5];

  return 1;
}

@end
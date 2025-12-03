@interface BRKDataCollectionScheduler
- (BRKDataCollectionScheduler)init;
- (void)_queue_schedule:(id)_queue_schedule;
- (void)_queue_setSchedulerCriteria;
- (void)schedule:(id)schedule;
@end

@implementation BRKDataCollectionScheduler

- (BRKDataCollectionScheduler)init
{
  v10.receiver = self;
  v10.super_class = BRKDataCollectionScheduler;
  v2 = [(BRKDataCollectionScheduler *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.brook"];
    scheduler = v2->_scheduler;
    v2->_scheduler = v3;

    v5 = dispatch_semaphore_create(0);
    sema = v2->_sema;
    v2->_sema = v5;

    v7 = BRKCreateDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)_queue_setSchedulerCriteria
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 0);
  v4 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241ED9000, v4, OS_LOG_TYPE_INFO, "Executing NRPairedDeviceRegistry call to check for Tinker configuration", buf, 2u);
  }

  if ((BRKActiveDeviceIsAltAccount() & 1) == 0)
  {
    v5 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_241ED9000, v5, OS_LOG_TYPE_INFO, "Device is not configured with Tinker - scheduler criteria will be mutated!", v6, 2u);
    }

    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86240], 1);
  }

  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86250], 5);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  [(NSBackgroundActivityScheduler *)self->_scheduler _setAdditionalXPCActivityProperties:v3];
  dispatch_semaphore_signal(self->_sema);
}

- (void)schedule:(id)schedule
{
  scheduleCopy = schedule;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BRKDataCollectionScheduler_schedule___block_invoke;
  block[3] = &unk_278D27E10;
  block[4] = self;
  v10 = scheduleCopy;
  v6 = scheduleCopy;
  dispatch_async(queue, block);
  v7 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_241ED9000, v7, OS_LOG_TYPE_INFO, "Queued data collection upload scheduler", v8, 2u);
  }
}

uint64_t __39__BRKDataCollectionScheduler_schedule___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_setSchedulerCriteria];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_schedule:v3];
}

- (void)_queue_schedule:(id)_queue_schedule
{
  _queue_scheduleCopy = _queue_schedule;
  dispatch_assert_queue_V2(self->_queue);
  sema = self->_sema;
  v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 300);
  v7 = dispatch_semaphore_wait(sema, v6);
  v8 = BRKLoggingObjectForDomain();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BRKDataCollectionScheduler *)v7 _queue_schedule:v9];
    }

    v10 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241ED9000, v10, OS_LOG_TYPE_INFO, "Canceling data collection upload scheduler", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241ED9000, v9, OS_LOG_TYPE_INFO, "Scheduling data collection scheduler", buf, 2u);
    }

    scheduler = self->_scheduler;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__BRKDataCollectionScheduler__queue_schedule___block_invoke;
    v12[3] = &unk_278D27E38;
    v13 = _queue_scheduleCopy;
    [(NSBackgroundActivityScheduler *)scheduler scheduleWithBlock:v12];
    v10 = v13;
  }
}

void __46__BRKDataCollectionScheduler__queue_schedule___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_241ED9000, v4, OS_LOG_TYPE_INFO, "Fired data collection scheduler", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v3[2](v3, 1);
}

- (void)_queue_schedule:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_241ED9000, a2, OS_LOG_TYPE_ERROR, "Unable to wait on semaphore %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
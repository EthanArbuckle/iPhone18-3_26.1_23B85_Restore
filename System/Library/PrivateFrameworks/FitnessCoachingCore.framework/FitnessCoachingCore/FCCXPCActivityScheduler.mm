@interface FCCXPCActivityScheduler
- (FCCXPCActivityScheduler)init;
- (FCCXPCActivityScheduler)initWithDateProvider:(id)a3 dispatchQueue:(id)a4;
- (FCCXPCActivitySchedulerDelegate)delegate;
- (id)_stringForXPCActivityState:(int64_t)a3;
- (void)_checkInActivity:(id)a3 name:(id)a4 scheduledDate:(id)a5;
- (void)_runActivity:(id)a3 name:(id)a4;
- (void)cancelActivityWithName:(id)a3;
- (void)scheduleActivityWithName:(id)a3 scheduledDate:(id)a4;
@end

@implementation FCCXPCActivityScheduler

- (FCCXPCActivityScheduler)init
{
  v3 = objc_alloc_init(FCCDateProvider);
  v4 = [(FCCXPCActivityScheduler *)self initWithDateProvider:v3 dispatchQueue:MEMORY[0x277D85CD0]];

  return v4;
}

- (FCCXPCActivityScheduler)initWithDateProvider:(id)a3 dispatchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCCXPCActivityScheduler;
  v9 = [(FCCXPCActivityScheduler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateProvider, a3);
    objc_storeStrong(&v10->_dispatchQueue, a4);
  }

  return v10;
}

- (void)scheduleActivityWithName:(id)a3 scheduledDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 UTF8String];
  v9 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__FCCXPCActivityScheduler_scheduleActivityWithName_scheduledDate___block_invoke;
  handler[3] = &unk_27900A0D8;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  xpc_activity_register(v8, v9, handler);
}

void __66__FCCXPCActivityScheduler_scheduleActivityWithName_scheduledDate___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v6 = a1[5];
    v8 = v5;
    v9 = [v6 _stringForXPCActivityState:state];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_24B53B000, v8, OS_LOG_TYPE_DEFAULT, "XPC activity %@ fired with state: %@", &v13, 0x16u);
  }

  v11 = a1[4];
  v10 = a1[5];
  if (state)
  {
    [v10 _runActivity:v3 name:v11];
  }

  else
  {
    [v10 _checkInActivity:v3 name:v11 scheduledDate:a1[6]];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelActivityWithName:(id)a3
{
  v3 = [a3 UTF8String];

  xpc_activity_unregister(v3);
}

- (void)_checkInActivity:(id)a3 name:(id)a4 scheduledDate:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  dateProvider = self->_dateProvider;
  v11 = a5;
  v12 = [(FCCDateProvider *)dateProvider coachingDate];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13;

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_int64(v15, *MEMORY[0x277D86250], v14 & ~(v14 >> 63));
  xpc_dictionary_set_string(v15, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v16 = xpc_activity_copy_criteria(v8);
  v17 = v16;
  if (!v16 || !xpc_equal(v16, v15))
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_24B53B000, v18, OS_LOG_TYPE_DEFAULT, "Updated criteria for xpc activity: %@", &v20, 0xCu);
    }

    xpc_activity_set_criteria(v8, v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_runActivity:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!xpc_activity_set_state(v6, 4))
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCCXPCActivityScheduler _runActivity:v7 name:v8];
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FCCXPCActivityScheduler__runActivity_name___block_invoke;
  block[3] = &unk_27900A128;
  v13 = v7;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(dispatchQueue, block);
}

void __45__FCCXPCActivityScheduler__runActivity_name___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_24B53B000, v2, OS_LOG_TYPE_DEFAULT, "Running xpc activity: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__FCCXPCActivityScheduler__runActivity_name___block_invoke_293;
  v8[3] = &unk_27900A100;
  v9 = v5;
  v10 = *(a1 + 48);
  [WeakRetained scheduler:v6 performActivityWithName:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __45__FCCXPCActivityScheduler__runActivity_name___block_invoke_293(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC290];
  v3 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_24B53B000, v3, OS_LOG_TYPE_DEFAULT, "Setting xpc activity to done: %@", &v7, 0xCu);
  }

  if (!xpc_activity_set_state(*(a1 + 40), 5))
  {
    _HKInitializeLogging();
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      __45__FCCXPCActivityScheduler__runActivity_name___block_invoke_293_cold_1(a1, v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_stringForXPCActivityState:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27900A148[a3];
  }
}

- (FCCXPCActivitySchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_runActivity:(uint64_t)a1 name:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B53B000, a2, OS_LOG_TYPE_ERROR, "failed to set xpc activity state to continue: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __45__FCCXPCActivityScheduler__runActivity_name___block_invoke_293_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24B53B000, a2, OS_LOG_TYPE_ERROR, "Failed to set xpc activity state to done: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
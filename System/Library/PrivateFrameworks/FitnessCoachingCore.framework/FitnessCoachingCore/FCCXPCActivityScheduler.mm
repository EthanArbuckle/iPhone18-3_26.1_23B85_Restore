@interface FCCXPCActivityScheduler
- (FCCXPCActivityScheduler)init;
- (FCCXPCActivityScheduler)initWithDateProvider:(id)provider dispatchQueue:(id)queue;
- (FCCXPCActivitySchedulerDelegate)delegate;
- (id)_stringForXPCActivityState:(int64_t)state;
- (void)_checkInActivity:(id)activity name:(id)name scheduledDate:(id)date;
- (void)_runActivity:(id)activity name:(id)name;
- (void)cancelActivityWithName:(id)name;
- (void)scheduleActivityWithName:(id)name scheduledDate:(id)date;
@end

@implementation FCCXPCActivityScheduler

- (FCCXPCActivityScheduler)init
{
  v3 = objc_alloc_init(FCCDateProvider);
  v4 = [(FCCXPCActivityScheduler *)self initWithDateProvider:v3 dispatchQueue:MEMORY[0x277D85CD0]];

  return v4;
}

- (FCCXPCActivityScheduler)initWithDateProvider:(id)provider dispatchQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = FCCXPCActivityScheduler;
  v9 = [(FCCXPCActivityScheduler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateProvider, provider);
    objc_storeStrong(&v10->_dispatchQueue, queue);
  }

  return v10;
}

- (void)scheduleActivityWithName:(id)name scheduledDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  uTF8String = [nameCopy UTF8String];
  v9 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__FCCXPCActivityScheduler_scheduleActivityWithName_scheduledDate___block_invoke;
  handler[3] = &unk_27900A0D8;
  v13 = nameCopy;
  selfCopy = self;
  v15 = dateCopy;
  v10 = dateCopy;
  v11 = nameCopy;
  xpc_activity_register(uTF8String, v9, handler);
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

- (void)cancelActivityWithName:(id)name
{
  uTF8String = [name UTF8String];

  xpc_activity_unregister(uTF8String);
}

- (void)_checkInActivity:(id)activity name:(id)name scheduledDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  nameCopy = name;
  dateProvider = self->_dateProvider;
  dateCopy = date;
  coachingDate = [(FCCDateProvider *)dateProvider coachingDate];
  [dateCopy timeIntervalSinceDate:coachingDate];
  v14 = v13;

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v15, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_int64(v15, *MEMORY[0x277D86250], v14 & ~(v14 >> 63));
  xpc_dictionary_set_string(v15, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v16 = xpc_activity_copy_criteria(activityCopy);
  v17 = v16;
  if (!v16 || !xpc_equal(v16, v15))
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = nameCopy;
      _os_log_impl(&dword_24B53B000, v18, OS_LOG_TYPE_DEFAULT, "Updated criteria for xpc activity: %@", &v20, 0xCu);
    }

    xpc_activity_set_criteria(activityCopy, v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_runActivity:(id)activity name:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  if (!xpc_activity_set_state(activityCopy, 4))
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCCXPCActivityScheduler _runActivity:nameCopy name:v8];
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FCCXPCActivityScheduler__runActivity_name___block_invoke;
  block[3] = &unk_27900A128;
  v13 = nameCopy;
  selfCopy = self;
  v15 = activityCopy;
  v10 = activityCopy;
  v11 = nameCopy;
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

- (id)_stringForXPCActivityState:(int64_t)state
{
  if (state > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27900A148[state];
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
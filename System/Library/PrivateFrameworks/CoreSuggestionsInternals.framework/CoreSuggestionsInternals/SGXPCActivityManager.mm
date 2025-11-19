@interface SGXPCActivityManager
+ (id)sharedInstance;
- (BOOL)shouldDefer:(id)a3;
- (SGXPCActivityManager)init;
- (id)_taskForActivity:(id)a3;
- (id)copyCriteria:(id)a3;
- (void)dealloc;
- (void)registerActivitiesWithSystem;
- (void)registerForActivity:(int)a3 handler:(id)a4;
- (void)setCriteria:(id)a3 criteria:(id)a4 forActivity:(int)a5;
@end

@implementation SGXPCActivityManager

- (id)copyCriteria:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGXPCActivity.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"activity"}];
  }

  v6 = xpc_activity_copy_criteria(v5);

  return v6;
}

- (BOOL)shouldDefer:(id)a3
{
  v4 = a3;
  if (xpc_activity_should_defer(v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SGXPCActivityManager *)self _taskForActivity:v4];
    v5 = [v6 shouldDefer];
  }

  return v5;
}

- (id)_taskForActivity:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = 0;
  while (1)
  {
    v6 = [(NSMutableArray *)self->_activities objectAtIndexedSubscript:v5];

    if (v6 == v4)
    {
      break;
    }

    if (++v5 == 15)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  currentTasks = self->_currentTasks;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v7 = [(NSMutableDictionary *)currentTasks objectForKeyedSubscript:v9];

LABEL_6:
  pthread_mutex_unlock(&self->_lock);

  return v7;
}

- (void)setCriteria:(id)a3 criteria:(id)a4 forActivity:(int)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"SGXPCActivity.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"criteria"}];
  }

  pthread_mutex_lock(&self->_lock);
  v11 = a5;
  v12 = [(NSMutableArray *)self->_lastCriteria objectAtIndexedSubscript:a5];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    goto LABEL_12;
  }

  v14 = v12;
  v15 = v10;
  v16 = *MEMORY[0x277D86340];
  string = xpc_dictionary_get_string(v14, *MEMORY[0x277D86340]);
  v18 = xpc_dictionary_get_string(v15, v16);
  if (strcmp(string, v18) || (v19 = *MEMORY[0x277D86288], int64 = xpc_dictionary_get_int64(v14, *MEMORY[0x277D86288]), int64 != xpc_dictionary_get_int64(v15, v19)) || (v21 = *MEMORY[0x277D86250], v22 = xpc_dictionary_get_int64(v14, *MEMORY[0x277D86250]), v22 != xpc_dictionary_get_int64(v15, v21)))
  {

LABEL_12:
    goto LABEL_13;
  }

  v23 = *MEMORY[0x277D86270];
  v24 = xpc_dictionary_get_int64(v14, *MEMORY[0x277D86270]);
  v25 = xpc_dictionary_get_int64(v15, v23);

  if (v24 == v25)
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEBUG, "Ignoring CTS criteria change as it didn't change.", buf, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  [(NSMutableArray *)self->_lastCriteria setObject:v10 atIndexedSubscript:v11];
  v27 = sgLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_231E60000, v27, OS_LOG_TYPE_INFO, "Setting CTS criteria for activity: %@, criteria: %@", buf, 0x16u);
  }

  xpc_activity_set_criteria(v9, v10);
LABEL_16:
  pthread_mutex_unlock(&self->_lock);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)registerForActivity:(int)a3 handler:(id)a4
{
  v7 = a4;
  v12 = v7;
  if (a3 >= 0xF)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGXPCActivity.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"0 <= activityId && activityId < _SGXPCActivityCount"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"SGXPCActivity.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  pthread_mutex_lock(&self->_lock);
  v8 = [v12 copy];
  v9 = MEMORY[0x2383809F0]();
  [(NSMutableArray *)self->_handlers setObject:v9 atIndexedSubscript:a3];

  pthread_mutex_unlock(&self->_lock);
}

- (void)registerActivitiesWithSystem
{
  p_lock = &self->_lock;
  pthread_mutex_lock(&self->_lock);
  if (self->_registered)
  {
    pthread_mutex_unlock(p_lock);
    v4 = sgLogHandle();
    if (os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, &v4->super.super, OS_LOG_TYPE_DEBUG, "Already registered for activities", buf, 2u);
    }
  }

  else
  {
    self->_registered = 1;
    v4 = self->_activities;
    v5 = self->_lastCriteria;
    v6 = self->_handlers;
    v7 = self->_currentTasks;
    pthread_mutex_unlock(p_lock);
    v8 = 0;
    v9 = *MEMORY[0x277D86238];
    *&v10 = v4;
    *(&v10 + 1) = v5;
    v18 = v10;
    *&v10 = v6;
    *(&v10 + 1) = v7;
    v17 = v10;
    do
    {
      v11 = identifierForActivityId(v8);
      if (*v11)
      {
        v12 = v11;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __52__SGXPCActivityManager_registerActivitiesWithSystem__block_invoke;
        handler[3] = &unk_27894DC80;
        v23 = v8;
        v22 = p_lock;
        v13 = v4;
        v14 = v5;
        v15 = v6;
        v16 = v7;
        v20 = v18;
        v21 = v17;
        xpc_activity_register(v12, v9, handler);
      }

      v8 = (v8 + 1);
    }

    while (v8 != 15);
  }
}

void __52__SGXPCActivityManager_registerActivitiesWithSystem__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    v4 = +[SGLongRunningTaskManager sharedInstance];
    v5 = [v4 taskWithDeadline:3600.0];

    pthread_mutex_lock(*(a1 + 64));
    v6 = [*(a1 + 48) objectAtIndexedSubscript:*(a1 + 72)];
    v7 = *(a1 + 56);
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
    [v7 setObject:v5 forKeyedSubscript:v8];

    pthread_mutex_unlock(*(a1 + 64));
    v9 = nullHandler();

    if (v6 == v9)
    {
      v13 = sgLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v19 = identifierForActivityId(*(a1 + 72));
        v20 = 136315138;
        v21 = v19;
        _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "Stub activity called for %s", &v20, 0xCu);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      (v6)[2](v6, v3);
      objc_autoreleasePoolPop(v10);
    }

    [v5 markFinished];
    pthread_mutex_lock(*(a1 + 64));
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
    [v14 removeObjectForKey:v15];

    pthread_mutex_unlock(*(a1 + 64));
  }

  else
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = identifierForActivityId(*(a1 + 72));
      v20 = 136315138;
      v21 = v18;
      _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "Checking in for activity %s", &v20, 0xCu);
    }

    pthread_mutex_lock(*(a1 + 64));
    [*(a1 + 32) setObject:v3 atIndexedSubscript:*(a1 + 72)];
    v12 = xpc_activity_copy_criteria(v3);
    if (v12)
    {
      [*(a1 + 40) setObject:v12 atIndexedSubscript:*(a1 + 72)];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB68] null];
      [*(a1 + 40) setObject:v16 atIndexedSubscript:*(a1 + 72)];
    }

    pthread_mutex_unlock(*(a1 + 64));
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = SGXPCActivityManager;
  [(SGXPCActivityManager *)&v3 dealloc];
}

- (SGXPCActivityManager)init
{
  v16.receiver = self;
  v16.super_class = SGXPCActivityManager;
  v2 = [(SGXPCActivityManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    v4 = [MEMORY[0x277CBEB68] null];
    v5 = arrayFilledWith(v4);
    activities = v3->_activities;
    v3->_activities = v5;

    v7 = [MEMORY[0x277CBEB68] null];
    v8 = arrayFilledWith(v7);
    lastCriteria = v3->_lastCriteria;
    v3->_lastCriteria = v8;

    v10 = nullHandler();
    v11 = arrayFilledWith(v10);
    handlers = v3->_handlers;
    v3->_handlers = v11;

    v13 = objc_opt_new();
    currentTasks = v3->_currentTasks;
    v3->_currentTasks = v13;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_14491 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_14491, &__block_literal_global_14492);
  }

  v3 = sharedInstance__pasExprOnceResult_14493;

  return v3;
}

void __38__SGXPCActivityManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_14493;
  sharedInstance__pasExprOnceResult_14493 = v1;

  objc_autoreleasePoolPop(v0);
}

@end
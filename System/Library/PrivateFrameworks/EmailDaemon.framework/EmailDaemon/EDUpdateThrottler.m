@interface EDUpdateThrottler
+ (EFLocked)instances;
+ (OS_os_log)log;
+ (void)_registerInstance:(id)a3;
+ (void)resetAllInstances;
- (EDUpdateThrottler)initWithName:(id)a3 delayInterval:(double)a4 resumable:(id)a5;
- (EDUpdateThrottler)initWithName:(id)a3 delayInterval:(double)a4 scalingFactor:(int64_t)a5;
- (id)updateWithBlock:(id)a3 unacknowledgedUpdatesCount:(unint64_t *)a4;
- (unint64_t)unacknowledgedUpdatesCountAndTimeSinceLastAcknowledgement:(double *)a3;
- (void)_reset;
- (void)dealloc;
@end

@implementation EDUpdateThrottler

+ (EFLocked)instances
{
  if (instances_onceToken != -1)
  {
    +[EDUpdateThrottler instances];
  }

  v3 = instances_instances;

  return v3;
}

- (void)_reset
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_updatesLock);
  v3 = [(NSMutableArray *)self->_unacknowledgedUpdates copy];
  os_unfair_lock_unlock(&self->_updatesLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) invoke];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __38__EDUpdateThrottler_resetAllInstances__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setRepresentation];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)resetAllInstances
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__52;
  v17 = __Block_byref_object_dispose__52;
  v18 = 0;
  v2 = [a1 instances];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__EDUpdateThrottler_resetAllInstances__block_invoke;
  v12[3] = &unk_1E8259000;
  v12[4] = &v13;
  [v2 performWhileLocked:v12];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) _reset];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(EFDebouncer *)self->_resumeClientDebouncer cancel];
  v3.receiver = self;
  v3.super_class = EDUpdateThrottler;
  [(EDUpdateThrottler *)&v3 dealloc];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EDUpdateThrottler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_108 != -1)
  {
    dispatch_once(&log_onceToken_108, block);
  }

  v2 = log_log_108;

  return v2;
}

void __24__EDUpdateThrottler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_108;
  log_log_108 = v1;
}

void __30__EDUpdateThrottler_instances__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E699B7F0]);
  v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = [v0 initWithObject:?];
  v2 = instances_instances;
  instances_instances = v1;
}

+ (void)_registerInstance:(id)a3
{
  v4 = a3;
  v5 = [a1 instances];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__EDUpdateThrottler__registerInstance___block_invoke;
  v7[3] = &unk_1E8256378;
  v6 = v4;
  v8 = v6;
  [v5 performWhileLocked:v7];
}

- (EDUpdateThrottler)initWithName:(id)a3 delayInterval:(double)a4 resumable:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EDUpdateThrottler *)self initWithDelayInterval:1 scalingFactor:a4];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    objc_storeStrong(&v10->_resumable, a5);
    v13 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EmailDaemon.EDUpdateThrottler.resumeClientScheduler"];
    resumeClientScheduler = v10->_resumeClientScheduler;
    v10->_resumeClientScheduler = v13;

    v15 = objc_alloc(MEMORY[0x1E699B7A8]);
    v16 = v10->_resumeClientScheduler;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__EDUpdateThrottler_initWithName_delayInterval_resumable___block_invoke;
    v20[3] = &unk_1E8254CC8;
    v21 = v9;
    v17 = [v15 initWithTimeInterval:v16 scheduler:0 startAfter:v20 block:a4];
    resumeClientDebouncer = v10->_resumeClientDebouncer;
    v10->_resumeClientDebouncer = v17;
  }

  return v10;
}

- (EDUpdateThrottler)initWithName:(id)a3 delayInterval:(double)a4 scalingFactor:(int64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = EDUpdateThrottler;
  v9 = [(EDUpdateThrottler *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_delayInterval = a4;
    v9->_scalingFactor = a5;
    v9->_updatesLock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unacknowledgedUpdates = v9->_unacknowledgedUpdates;
    v9->_unacknowledgedUpdates = v12;

    [objc_opt_class() _registerInstance:v9];
  }

  return v9;
}

- (id)updateWithBlock:(id)a3 unacknowledgedUpdatesCount:(unint64_t *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_updatesLock);
  v7 = [(NSMutableArray *)self->_unacknowledgedUpdates count];
  if (v7)
  {
    [(EDUpdateThrottler *)self delayInterval];
    v9 = v8 * pow([(EDUpdateThrottler *)self scalingFactor], v7 + -1.0);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v11 = [(EDUpdateThrottler *)self lastUpdateDate];
  [v10 ef_timeIntervalSinceDate:v11];
  v13 = v12;

  if (v13 >= v9)
  {
    v16 = [(EDUpdateThrottler *)self name];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = [(EDUpdateThrottler *)self name];
      v19 = [(EDUpdateThrottler *)self updateCounter];
      [(EDUpdateThrottler *)self setUpdateCounter:v19 + 1];
      v20 = [v17 initWithFormat:@"%@ %ld", v18, v19];
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = [(EDUpdateThrottler *)self updateCounter];
      [(EDUpdateThrottler *)self setUpdateCounter:v22 + 1];
      v20 = [v21 initWithFormat:@"%ld", v22];
    }

    v15 = [objc_alloc(MEMORY[0x1E699B7D8]) initWithLabel:v20];
    [(NSMutableArray *)self->_unacknowledgedUpdates addObject:v15];
    [(EDUpdateThrottler *)self setLastUpdateDate:v10];
    [(EDUpdateThrottler *)self setHasChangesSinceLastUpdate:0];
    v23 = [(EDUpdateThrottler *)self resumeClientDebouncer];
    v24 = [MEMORY[0x1E695DFB0] null];
    [v23 debounceResult:v24];
  }

  else
  {
    v14 = +[EDUpdateThrottler log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v34 = v13;
      v35 = 2048;
      v36 = v9;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Time since the last update %f has not exceeded the current delay %f", buf, 0x16u);
    }

    [(EDUpdateThrottler *)self setHasChangesSinceLastUpdate:1];
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_updatesLock);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v15);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__EDUpdateThrottler_updateWithBlock_unacknowledgedUpdatesCount___block_invoke;
  v28[3] = &unk_1E8259028;
  objc_copyWeak(&v30, buf);
  objc_copyWeak(&v31, &location);
  v25 = v6;
  v29 = v25;
  [v15 addInvocationBlock:v28];
  if (a4)
  {
    *a4 = v7;
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v26 = *MEMORY[0x1E69E9840];

  return v15;
}

void __64__EDUpdateThrottler_updateWithBlock_unacknowledgedUpdatesCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [*(WeakRetained + 2) removeObject:v2];
    if ([*(WeakRetained + 2) count])
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
      [WeakRetained setLastAcknowledgementDate:v3];

      os_unfair_lock_unlock(WeakRetained + 2);
    }

    else
    {
      [WeakRetained setLastAcknowledgementDate:0];
      [WeakRetained hasChangesSinceLastUpdate];
      os_unfair_lock_unlock(WeakRetained + 2);
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (unint64_t)unacknowledgedUpdatesCountAndTimeSinceLastAcknowledgement:(double *)a3
{
  os_unfair_lock_lock(&self->_updatesLock);
  v5 = [(NSMutableArray *)self->_unacknowledgedUpdates count];
  v6 = [(EDUpdateThrottler *)self lastAcknowledgementDate];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(EDUpdateThrottler *)self lastUpdateDate];
  }

  v9 = v8;

  os_unfair_lock_unlock(&self->_updatesLock);
  if (a3)
  {
    if (v5)
    {
      [v9 timeIntervalSinceNow];
      v11 = -v10;
    }

    else
    {
      v11 = 0.0;
    }

    *a3 = v11;
  }

  return v5;
}

@end
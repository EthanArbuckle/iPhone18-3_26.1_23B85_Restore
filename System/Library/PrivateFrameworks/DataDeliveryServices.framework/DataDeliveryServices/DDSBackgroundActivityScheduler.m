@interface DDSBackgroundActivityScheduler
- (DDSBackgroundActivityScheduler)init;
- (void)cancelActivityWithIdentifier:(id)a3;
- (void)scheduleActivityWithIdentifier:(id)a3 interval:(double)a4 tolerance:(double)a5;
@end

@implementation DDSBackgroundActivityScheduler

- (DDSBackgroundActivityScheduler)init
{
  v5.receiver = self;
  v5.super_class = DDSBackgroundActivityScheduler;
  v2 = [(DDSBackgroundActivityScheduler *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(DDSBackgroundActivityScheduler *)v2 setSchedulerByIdentifier:v3];
  }

  return v2;
}

- (void)scheduleActivityWithIdentifier:(id)a3 interval:(double)a4 tolerance:(double)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v9 dateByAddingTimeInterval:a4];

  v11 = UpdateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DDSBackgroundActivityScheduler scheduleActivityWithIdentifier:v10 interval:v11 tolerance:a4];
  }

  v12 = UpdateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = DDS_STRING_FROM_DATE(v10);
    *buf = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v13;
    v26 = 2048;
    v27 = a5;
    _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling activity: %{public}@ for approximately %{public}@ (tolerance of %ld seconds)", buf, 0x20u);
  }

  v14 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:v8];
  [v14 setQualityOfService:17];
  [v14 setRepeats:0];
  [v14 setDelay:a4];
  [v14 setTolerance:a5];
  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v15, *MEMORY[0x1E69E9C68], a4);
  [v14 _setAdditionalXPCActivityProperties:v15];
  v16 = [(DDSBackgroundActivityScheduler *)self schedulerByIdentifier];
  [v16 setObject:v14 forKey:v8];

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__DDSBackgroundActivityScheduler_scheduleActivityWithIdentifier_interval_tolerance___block_invoke;
  v19[3] = &unk_1E86C5FE8;
  objc_copyWeak(&v21, buf);
  v17 = v8;
  v20 = v17;
  [v14 scheduleWithBlock:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x1E69E9840];
}

void __84__DDSBackgroundActivityScheduler_scheduleActivityWithIdentifier_interval_tolerance___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = UpdateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Scheduled activity %{public}@ fired!", &v10, 0xCu);
    }

    v7 = [WeakRetained delegate];
    [v7 performScheduledActivityWithIdentifier:*(a1 + 32)];

    v8 = [WeakRetained schedulerByIdentifier];
    [v8 removeObjectForKey:*(a1 + 32)];
  }

  v3[2](v3, 1);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancelActivityWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DDSBackgroundActivityScheduler *)self schedulerByIdentifier];
  v7 = [v5 objectForKeyedSubscript:v4];

  v6 = v7;
  if (v7)
  {
    [v7 invalidate];
    v6 = v7;
  }
}

- (void)scheduleActivityWithIdentifier:(void *)a1 interval:(NSObject *)a2 tolerance:(double)a3 .cold.1(void *a1, NSObject *a2, double a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = DDS_STRING_FROM_DATE(v6);
  v8 = DDS_STRING_FROM_DATE(a1);
  v10 = 134218498;
  v11 = a3;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Delay: %ld Now: %{public}@ Future: %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end
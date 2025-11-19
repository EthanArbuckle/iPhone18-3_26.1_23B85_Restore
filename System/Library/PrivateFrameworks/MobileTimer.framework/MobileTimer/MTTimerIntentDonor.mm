@interface MTTimerIntentDonor
- (MTTimerIntentDonor)initWithStorage:(id)a3;
- (void)_queue_donateCreateTimerIntent:(id)a3 source:(id)a4;
- (void)source:(id)a3 didAddTimers:(id)a4;
- (void)source:(id)a3 didFireTimer:(id)a4;
- (void)source:(id)a3 didUpdateTimers:(id)a4;
@end

@implementation MTTimerIntentDonor

- (MTTimerIntentDonor)initWithStorage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self)
  {
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", &v15, 0xCu);
    }

    objc_storeStrong(&self->_storage, a3);
    [(MTTimerStorage *)self->_storage registerObserver:self];
    v7 = [MEMORY[0x1E695DFA8] set];
    donatedTimerIDs = self->_donatedTimerIDs;
    self->_donatedTimerIDs = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.MTTimerIntentDonor.serialqueue", v9);

    v11 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v10];
    serializer = self->_serializer;
    self->_serializer = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)source:(id)a3 didAddTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 donatesIntent])
  {
    v8 = [(MTTimerIntentDonor *)self serializer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__MTTimerIntentDonor_source_didAddTimers___block_invoke;
    v9[3] = &unk_1E7B0C9A0;
    v9[4] = self;
    v10 = v7;
    v11 = v6;
    [v8 performBlock:v9];
  }
}

void __42__MTTimerIntentDonor_source_didAddTimers___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ didAddTimers %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _queue_donateCreateTimerIntent:*(*(&v11 + 1) + 8 * v9++) source:{*(a1 + 48), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 donatesIntent])
  {
    v8 = [(MTTimerIntentDonor *)self serializer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MTTimerIntentDonor_source_didUpdateTimers___block_invoke;
    v9[3] = &unk_1E7B0C9A0;
    v9[4] = self;
    v10 = v7;
    v11 = v6;
    [v8 performBlock:v9];
  }
}

void __45__MTTimerIntentDonor_source_didUpdateTimers___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v20 = v3;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ didUpdateTimers %{public}@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 state] == 3)
        {
          [*(a1 + 32) _queue_donateCreateTimerIntent:v10 source:*(a1 + 48)];
        }

        else if ([v10 state] == 1)
        {
          v11 = *(*(a1 + 32) + 16);
          v12 = [v10 timerID];
          [v11 removeObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didFireTimer:(id)a4
{
  v5 = a4;
  v6 = [(MTTimerIntentDonor *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MTTimerIntentDonor_source_didFireTimer___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performBlock:v8];
}

void __42__MTTimerIntentDonor_source_didFireTimer___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ didFireTimer %{public}@", &v9, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 16);
  v7 = [v5 timerID];
  [v6 removeObject:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_donateCreateTimerIntent:(id)a3 source:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  donatedTimerIDs = self->_donatedTimerIDs;
  v9 = [v6 timerID];
  LOBYTE(donatedTimerIDs) = [(NSMutableSet *)donatedTimerIDs containsObject:v9];

  if ((donatedTimerIDs & 1) == 0)
  {
    if ([v6 hasDefaultTitle])
    {
      v10 = 0;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E696EA50]);
      v12 = [v6 displayTitle];
      v10 = [v11 initWithSpokenPhrase:v12];
    }

    v13 = objc_alloc(MEMORY[0x1E696E7D0]);
    [v6 duration];
    v14 = [v13 initWithLabel:v10 duration:0 type:?];
    [v14 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
    [v14 _setLaunchId:@"com.apple.mobiletimer"];
    [v14 _setNanoLaunchId:@"com.apple.private.NanoTimer"];
    v15 = MTLogForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = self;
      v35 = 2114;
      v36 = v14;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Donating intent: %{public}@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E696B090] mtUserActivityWithActivityType:@"com.apple.clock.timer"];
    v31[0] = @"identifier";
    v17 = [v14 identifier];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1F29360E0;
    }

    v31[1] = @"duration";
    v32[0] = v19;
    v20 = MEMORY[0x1E696AD98];
    [v14 duration];
    v21 = [v20 numberWithDouble:?];
    v32[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v16 setUserInfo:v22];

    v23 = [objc_alloc(MEMORY[0x1E696E7D8]) initWithCode:3 userActivity:v16];
    v24 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v14 response:v23];
    [v24 mtSetIntentDonorFromSource:v7];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke;
    v29[3] = &unk_1E7B0D658;
    v30 = v14;
    v25 = v14;
    [v24 donateInteractionWithCompletion:v29];
    v26 = self->_donatedTimerIDs;
    v27 = [v6 timerID];
    [(NSMutableSet *)v26 addObject:v27];
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Error donating timer create intent: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
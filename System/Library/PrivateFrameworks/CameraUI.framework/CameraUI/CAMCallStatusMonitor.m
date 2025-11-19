@interface CAMCallStatusMonitor
+ (id)_processNameForPid:(id)a3;
- (CAMCallStatusMonitor)initWithInitialDisabledReasons:(id)a3;
- (id)_descriptionForReasons:(id)a3;
- (id)_descriptionStringForReason:(int64_t)a3;
- (id)initDisabledForLaunch;
- (int)_processIdentifer;
- (void)_accessQueue_queryCallActiveStatusForReason:(id)a3;
- (void)_accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion:(id)a3;
- (void)_asyncQueryCallActiveStatusForReason:(id)a3;
- (void)_handleServerConnectionDiedNotification:(id)a3;
- (void)_registerForAVSystemControllerNotificationsAndQueryState;
- (void)_setCallActive:(BOOL)a3;
- (void)_unregisterForAVSystemControllerNotifications;
- (void)addDisabledReason:(int64_t)a3;
- (void)dealloc;
- (void)removeDisabledReason:(int64_t)a3;
@end

@implementation CAMCallStatusMonitor

- (id)initDisabledForLaunch
{
  v3 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F16C7A78];
  v4 = [(CAMCallStatusMonitor *)self initWithInitialDisabledReasons:v3];

  return v4;
}

- (void)_unregisterForAVSystemControllerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69AEA40] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECB8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AEB70] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AECC0] object:0];
}

- (CAMCallStatusMonitor)initWithInitialDisabledReasons:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CAMCallStatusMonitor;
  v5 = [(CAMCallStatusMonitor *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_callActive = 0;
    if (v4)
    {
      v7 = [v4 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    disabledReasons = v6->__disabledReasons;
    v6->__disabledReasons = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.camera.avsystemcontroller-access", v9);
    avscAccessQueue = v6->__avscAccessQueue;
    v6->__avscAccessQueue = v10;

    v12 = +[CAMPriorityNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v12 addObserver:v6 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    if (![(NSMutableSet *)v6->__disabledReasons count])
    {
      v13 = os_log_create("com.apple.camera", "CallStatus");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Enabling call status monitoring immediately", v16, 2u);
      }

      [(CAMCallStatusMonitor *)v6 _registerForAVSystemControllerNotificationsAndQueryState];
    }

    v14 = v6;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[CAMPriorityNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(CAMCallStatusMonitor *)self _unregisterForAVSystemControllerNotifications];
  v4.receiver = self;
  v4.super_class = CAMCallStatusMonitor;
  [(CAMCallStatusMonitor *)&v4 dealloc];
}

- (void)_registerForAVSystemControllerNotificationsAndQueryState
{
  [(CAMCallStatusMonitor *)self _unregisterForAVSystemControllerNotifications];
  objc_initWeak(&location, self);
  v3 = [(CAMCallStatusMonitor *)self _avscAccessQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CAMCallStatusMonitor__registerForAVSystemControllerNotificationsAndQueryState__block_invoke;
  v4[3] = &unk_1E76F8580;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __80__CAMCallStatusMonitor__registerForAVSystemControllerNotificationsAndQueryState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__CAMCallStatusMonitor__registerForAVSystemControllerNotificationsAndQueryState__block_invoke_2;
  v3[3] = &unk_1E76F95D0;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained _accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion:v3];

  objc_destroyWeak(&v4);
}

void __80__CAMCallStatusMonitor__registerForAVSystemControllerNotificationsAndQueryState__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained _avscAccessQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__CAMCallStatusMonitor__registerForAVSystemControllerNotificationsAndQueryState__block_invoke_3;
      block[3] = &unk_1E76F8580;
      objc_copyWeak(&v7, (a1 + 32));
      dispatch_async(v5, block);

      objc_destroyWeak(&v7);
    }
  }
}

void __80__CAMCallStatusMonitor__registerForAVSystemControllerNotificationsAndQueryState__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessQueue_queryCallActiveStatusForReason:@"initial query"];
}

- (void)_accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCallStatusMonitor *)self _avscAccessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v7 = *MEMORY[0x1E69AEB70];
  v18[0] = *MEMORY[0x1E69AEA40];
  v18[1] = v7;
  v18[2] = *MEMORY[0x1E69AECC0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v9 = *MEMORY[0x1E69AECD8];
  v17 = 0;
  [v6 setAttribute:v8 forKey:v9 error:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = os_log_create("com.apple.camera", "CallStatus");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CAMCallStatusMonitor *)v8 _accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion:v10, v11];
    }
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__CAMCallStatusMonitor__accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion___block_invoke;
  v13[3] = &unk_1E76FA3A0;
  objc_copyWeak(&v15, &location);
  v14 = v4;
  v12 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __94__CAMCallStatusMonitor__accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _disabledReasons];
  v3 = [v2 count];

  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:WeakRetained selector:sel__handleRecordingStateDidChangeNotification_ name:*MEMORY[0x1E69AEB70] object:0];
    [v4 addObserver:WeakRetained selector:sel__handleCallIsActiveDidChangeNotification_ name:*MEMORY[0x1E69AEA40] object:0];
    [v4 addObserver:WeakRetained selector:sel__handleServerConnectionDiedNotification_ name:*MEMORY[0x1E69AECB8] object:0];
    [v4 addObserver:WeakRetained selector:sel__handleSomeClientIsActiveDidChangeNotification_ name:*MEMORY[0x1E69AECC0] object:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)addDisabledReason:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(CAMCallStatusMonitor *)self _disabledReasons];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 addObject:v7];

  v8 = [v5 count];
  if (v6 || !v8)
  {
    if (v6 != v8)
    {
      v11 = os_log_create("com.apple.camera", "CallStatus");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CAMCallStatusMonitor *)self _descriptionStringForReason:a3];
        v13 = [(CAMCallStatusMonitor *)self _descriptionForReasons:v5];
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Added call status monitoring disabled reason %{public}@: %{public}@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "CallStatus");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMCallStatusMonitor *)self _descriptionStringForReason:a3];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Disabling call status monitoring for reason %{public}@", &v14, 0xCu);
    }

    [(CAMCallStatusMonitor *)self _unregisterForAVSystemControllerNotifications];
  }
}

- (void)removeDisabledReason:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(CAMCallStatusMonitor *)self _disabledReasons];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 removeObject:v7];

  v8 = [v5 count];
  if (!v6 || v8)
  {
    if (v6 != v8)
    {
      v11 = os_log_create("com.apple.camera", "CallStatus");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CAMCallStatusMonitor *)self _descriptionStringForReason:a3];
        v13 = [(CAMCallStatusMonitor *)self _descriptionForReasons:v5];
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Removed call status monitoring disabled reason %{public}@: %{public}@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "CallStatus");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMCallStatusMonitor *)self _descriptionStringForReason:a3];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Enabling call status monitoring after removing final disabled reason %{public}@", &v14, 0xCu);
    }

    [(CAMCallStatusMonitor *)self _registerForAVSystemControllerNotificationsAndQueryState];
  }
}

- (id)_descriptionStringForReason:(int64_t)a3
{
  v3 = @"ApplicationBackgrounded";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"InitialLaunch";
  }
}

- (id)_descriptionForReasons:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__CAMCallStatusMonitor__descriptionForReasons___block_invoke;
    v21[3] = &unk_1E76FA878;
    v22 = v5;
    v23 = self;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v21];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_19];

    v9 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __47__CAMCallStatusMonitor__descriptionForReasons___block_invoke_3;
    v18 = &unk_1E76FA8C0;
    v10 = v9;
    v19 = v10;
    v20 = v8;
    v11 = v8;
    [v11 enumerateObjectsUsingBlock:&v15];
    [v10 appendString:@""], v15, v16, v17, v18);
    v12 = v20;
    v13 = v10;
  }

  else
  {
    v13 = &stru_1F1660A30;
  }

  return v13;
}

void __47__CAMCallStatusMonitor__descriptionForReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _descriptionStringForReason:v3];
  [v4 addObject:v5];
}

uint64_t __47__CAMCallStatusMonitor__descriptionForReasons___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) appendString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 > a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:{@", "}];
  }

  return result;
}

- (void)_accessQueue_queryCallActiveStatusForReason:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCallStatusMonitor *)self _avscAccessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v7 = [v6 attributeForKey:*MEMORY[0x1E69AEA38]];
  v8 = [v6 attributeForKey:*MEMORY[0x1E69AEB30]];
  v9 = [v6 attributeForKey:*MEMORY[0x1E69AEA88]];
  v35 = [v6 attributeForKey:*MEMORY[0x1E69AE9D0]];
  v10 = [v35 objectForKeyedSubscript:*MEMORY[0x1E69AE9D8]];
  v11 = [v8 count];
  v37 = v8;
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[CAMCallStatusMonitor _processIdentifer](self, "_processIdentifer")}];
    v14 = [v8 containsObject:v13];

    v15 = v12 != (v14 & 1);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v9 isEqualToString:@"Ringtone"];
  v17 = [v7 BOOLValue];
  v34 = v10;
  v18 = [v10 BOOLValue];
  if (v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17 & (v15 | v18);
  }

  v36 = self;
  if (v15)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = [(CAMCallStatusMonitor *)self _processIdentifer];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __68__CAMCallStatusMonitor__accessQueue_queryCallActiveStatusForReason___block_invoke;
    v40[3] = &unk_1E76FA8E8;
    v42 = v21;
    v41 = v20;
    v22 = v20;
    [v37 enumerateObjectsUsingBlock:v40];
    v23 = MEMORY[0x1E696AEC0];
    [v22 componentsJoinedByString:{@", "}];
    v24 = v9;
    v25 = v7;
    v27 = v26 = v4;
    v28 = [v23 stringWithFormat:@" Recording PIDs (%@)", v27];

    v4 = v26;
    v7 = v25;
    v9 = v24;
  }

  else
  {
    v28 = 0;
  }

  v29 = os_log_create("com.apple.camera", "CallStatus");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = @"Inactive";
    if (v19)
    {
      v30 = @"Active -";
    }

    v31 = @" Ringtone";
    if (!v16)
    {
      v31 = &stru_1F1660A30;
    }

    *buf = 138544386;
    v44 = v30;
    v32 = @" HighPriority";
    v45 = 2114;
    v46 = v31;
    if (!v18)
    {
      v32 = &stru_1F1660A30;
    }

    v47 = 2114;
    v48 = v32;
    v49 = 2114;
    if (v28)
    {
      v33 = v28;
    }

    else
    {
      v33 = &stru_1F1660A30;
    }

    v50 = v33;
    v51 = 2114;
    v52 = v4;
    _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "Call status: %{public}@%{public}@%{public}@%{public}@ (%{public}@)", buf, 0x34u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CAMCallStatusMonitor__accessQueue_queryCallActiveStatusForReason___block_invoke_72;
  block[3] = &unk_1E76F7850;
  block[4] = v36;
  v39 = v19;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__CAMCallStatusMonitor__accessQueue_queryCallActiveStatusForReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 intValue] != *(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = [CAMCallStatusMonitor _processNameForPid:v5];
    [v3 addObject:v4];
  }
}

- (int)_processIdentifer
{
  if (_processIdentifer_onceToken != -1)
  {
    [CAMCallStatusMonitor _processIdentifer];
  }

  return _processIdentifer_pid;
}

void __41__CAMCallStatusMonitor__processIdentifer__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  _processIdentifer_pid = [v0 processIdentifier];
}

+ (id)_processNameForPid:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (proc_name([v3 intValue], buffer, 0x100u))
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
  }

  else
  {
    [v3 stringValue];
  }
  v4 = ;

  return v4;
}

- (void)_asyncQueryCallActiveStatusForReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CAMCallStatusMonitor *)self _avscAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CAMCallStatusMonitor__asyncQueryCallActiveStatusForReason___block_invoke;
  block[3] = &unk_1E76F7DC0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__CAMCallStatusMonitor__asyncQueryCallActiveStatusForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _accessQueue_queryCallActiveStatusForReason:*(a1 + 32)];
}

- (void)_handleServerConnectionDiedNotification:(id)a3
{
  v4 = os_log_create("com.apple.camera", "CallStatus");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "AVSystemController server connection died, rebuilding AVSystemController.", v5, 2u);
  }

  [(CAMCallStatusMonitor *)self _registerForAVSystemControllerNotificationsAndQueryState];
}

- (void)_setCallActive:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(CAMCallStatusMonitor *)self isCallActive]!= v3)
  {
    [(CAMCallStatusMonitor *)self setCallActive:v3];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"CAMCallStatusMonitorDidChangeCallActiveNotification" object:self];
  }
}

- (void)_accessQueue_subscribeToAVSystemControllerNotificationsWithCompletion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Could not subscribe to notifications: %{public}@. Error: %{public}@", &v3, 0x16u);
}

@end
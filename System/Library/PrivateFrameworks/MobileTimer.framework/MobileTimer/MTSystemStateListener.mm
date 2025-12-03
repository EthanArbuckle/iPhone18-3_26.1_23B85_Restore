@interface MTSystemStateListener
+ (BOOL)isSystemRestoreDone;
- (BOOL)_checkIfRestoreDone;
- (BOOL)checkSystemReady;
- (BOOL)handlesNotification:(id)notification ofType:(int64_t)type;
- (MTSystemStateDelegate)delegate;
- (MTSystemStateListener)initWithDelegate:(id)delegate;
- (id)gatherDiagnostics;
- (id)liveDarwinNotifications;
- (void)_handleF5Reset;
- (void)_handleRestoreDone;
- (void)_verifyRestoreDone;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
- (void)printDiagnostics;
- (void)springboardStartMonitor:(id)monitor didReceiveStarted:(BOOL)started;
@end

@implementation MTSystemStateListener

- (MTSystemStateListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = MTSystemStateListener;
  v5 = [(MTSystemStateListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[MTScheduler serialSchedulerForObject:priority:](MTScheduler, "serialSchedulerForObject:priority:", v6, +[MTScheduler defaultPriority]);
    serializer = v6->_serializer;
    v6->_serializer = v7;
  }

  return v6;
}

- (BOOL)checkSystemReady
{
  v10 = *MEMORY[0x1E69E9840];
  _checkIfRestoreDone = [(MTSystemStateListener *)self _checkIfRestoreDone];
  v4 = +[MTSpringboardStartMonitor sharedInstance];
  [v4 addObserver:self];

  if (_checkIfRestoreDone)
  {
    v5 = MTLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ System is ready.", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return _checkIfRestoreDone;
}

- (BOOL)_checkIfRestoreDone
{
  isSystemRestoreDone = [objc_opt_class() isSystemRestoreDone];
  v4 = MTLogForCategory(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSystemRestoreDone)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Restore is done or not needed.", buf, 2u);
    }

    [(MTSystemStateListener *)self _handleRestoreDone];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Restore isn't done.", v7, 2u);
    }
  }

  return isSystemRestoreDone;
}

+ (BOOL)isSystemRestoreDone
{
  v2 = +[MTSpringboardStartMonitor sharedInstance];
  isSpringboardStarted = [v2 isSpringboardStarted];

  v4 = MTLogForCategory(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSpringboardStarted)
  {
    if (v5)
    {
      v10 = 0;
      v6 = "Springboard/Carousel is started.";
      v7 = &v10;
LABEL_6:
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v9 = 0;
    v6 = "Springboard/Carousel not started.";
    v7 = &v9;
    goto LABEL_6;
  }

  return isSpringboardStarted;
}

- (void)springboardStartMonitor:(id)monitor didReceiveStarted:(BOOL)started
{
  v5 = MTLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Carousel/Springboard started", v7, 2u);
  }

  [(MTSystemStateListener *)self _verifyRestoreDone];
  v6 = +[MTSpringboardStartMonitor sharedInstance];
  [v6 removeObserver:self];
}

- (void)_verifyRestoreDone
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ verifying restore is done", &v5, 0xCu);
  }

  [(MTSystemStateListener *)self _handleRestoreDone];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_handleRestoreDone
{
  serializer = [(MTSystemStateListener *)self serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__MTSystemStateListener__handleRestoreDone__block_invoke;
  v4[3] = &unk_1E7B0C9D8;
  v4[4] = self;
  [serializer performBlock:v4];
}

void __43__MTSystemStateListener__handleRestoreDone__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) restoreDoneHandled];
  v3 = MTLogForCategory(1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ restore already handled", &v10, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v7 = [objc_opt_class() _restoreNotification];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ has been notified that restore is done (received %{public}@) or not needed.", &v10, 0x16u);
    }

    v8 = [*(a1 + 32) delegate];
    [v8 restoreDidFinish];

    [*(a1 + 32) setRestoreDoneHandled:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleF5Reset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ has been notified of F5 demo", &v6, 0xCu);
  }

  delegate = [(MTSystemStateListener *)self delegate];
  [delegate handleF5Reset];

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)handlesNotification:(id)notification ofType:(int64_t)type
{
  notificationCopy = notification;
  liveDarwinNotifications = [(MTSystemStateListener *)self liveDarwinNotifications];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MTSystemStateListener_handlesNotification_ofType___block_invoke;
  v10[3] = &unk_1E7B0C848;
  v11 = notificationCopy;
  v7 = notificationCopy;
  v8 = [liveDarwinNotifications na_any:v10];

  return v8;
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  notificationCopy = notification;
  _restoreNotification = [objc_opt_class() _restoreNotification];
  v10 = [notificationCopy isEqualToString:_restoreNotification];

  if (v10)
  {
    v11 = MTLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = _restoreNotification;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "Received %{public}@", &v13, 0xCu);
    }

    [(MTSystemStateListener *)self _verifyRestoreDone];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)liveDarwinNotifications
{
  array = [MEMORY[0x1E695DF70] array];
  _restoreNotification = [objc_opt_class() _restoreNotification];
  if (_restoreNotification)
  {
    [array addObject:_restoreNotification];
  }

  return array;
}

- (void)printDiagnostics
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "-----MTSystemStateListener-----", v6, 2u);
  }

  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isSystemRestoreDone = [objc_opt_class() isSystemRestoreDone];
    v6[0] = 67240192;
    v6[1] = isSystemRestoreDone;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Restore done: %{public}d", v6, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"Restore done";
  isSystemRestoreDone = [objc_opt_class() isSystemRestoreDone];
  v3 = @"NO";
  if (isSystemRestoreDone)
  {
    v3 = @"YES";
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (MTSystemStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface MTTimeListener
- (MTTimeListener)init;
- (MTTimeListener)initWithCallbackScheduler:(id)a3;
- (double)assertionTimeOutForNotification:(id)a3 ofType:(int64_t)a4;
- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5;
- (void)registerObserver:(id)a3;
@end

@implementation MTTimeListener

- (MTTimeListener)init
{
  v3 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v4 = [(MTTimeListener *)self initWithCallbackScheduler:v3];

  return v4;
}

- (MTTimeListener)initWithCallbackScheduler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MTTimeListener;
  v5 = [(MTTimeListener *)&v13 init];
  if (v5)
  {
    v6 = MTLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v7 = dispatch_queue_create("com.apple.MTTimeListener.access-queue", 0);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [[MTObserverStore alloc] initWithCallbackScheduler:v4];
    observers = v5->_observers;
    v5->_observers = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)assertionTimeOutForNotification:(id)a3 ofType:(int64_t)a4
{
  v4 = [a3 isEqualToString:{@"SignificantTimeChange", a4}];
  result = 60.0;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = MTLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = self;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received significant time change notification. Notifying observers", buf, 0xCu);
  }

  [MEMORY[0x1E695DFE8] resetSystemTimeZone];
  v8 = MTLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E695DFE8] systemTimeZone];
    *buf = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ timeZone: %{public}@", buf, 0x16u);
  }

  v10 = dispatch_group_create();
  v11 = [(MTTimeListener *)self observers];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__MTTimeListener_handleNotification_ofType_completion___block_invoke;
  v18[3] = &unk_1E7B0EDB8;
  v19 = v10;
  v20 = self;
  v12 = v10;
  [v11 enumerateObserversWithBlock:v18];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MTTimeListener_handleNotification_ofType_completion___block_invoke_3;
  block[3] = &unk_1E7B0D6F0;
  v17 = v6;
  v14 = v6;
  dispatch_group_notify(v12, queue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __55__MTTimeListener_handleNotification_ofType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MTTimeListener_handleNotification_ofType_completion___block_invoke_2;
  v6[3] = &unk_1E7B0C9D8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v4 timeListener:v5 didDetectSignificantTimeChangeWithCompletionBlock:v6];
}

uint64_t __55__MTTimeListener_handleNotification_ofType_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(MTTimeListener *)self observers];
  [v5 addObserver:v4];
}

@end
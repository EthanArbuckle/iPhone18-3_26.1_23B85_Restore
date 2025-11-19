@interface EFDebouncer
+ (id)log;
- (EFDebouncer)initWithTimeInterval:(double)a3 scheduler:(id)a4 startAfter:(unint64_t)a5 block:(id)a6;
- (void)cancel;
- (void)dealloc;
- (void)debounceResult:(id)a3;
@end

@implementation EFDebouncer

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__EFDebouncer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __18__EFDebouncer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (void)cancel
{
  v2 = [(EFDebouncer *)self cancelable];
  [v2 cancel];
}

- (void)dealloc
{
  [(EFDebouncer *)self cancel];
  v3.receiver = self;
  v3.super_class = EFDebouncer;
  [(EFDebouncer *)&v3 dealloc];
}

- (EFDebouncer)initWithTimeInterval:(double)a3 scheduler:(id)a4 startAfter:(unint64_t)a5 block:(id)a6
{
  v40[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v33.receiver = self;
  v33.super_class = EFDebouncer;
  v12 = [(EFDebouncer *)&v33 init];
  if (v12)
  {
    v13 = +[EFObservable observableObserver];
    observable = v12->_observable;
    v12->_observable = v13;

    v15 = v12->_observable;
    if (a5)
    {
      v16 = [(EFObserver *)v15 take:a5];
      v17 = v16;
      if (v10)
      {
        v18 = [v16 observeOn:v10];

        v17 = v18;
      }

      v19 = [(EFObserver *)v12->_observable skip:a5];
      v20 = v10;
      if (v10)
      {
        [v19 debounceWithTimeInterval:v20 scheduler:a3];
      }

      else
      {
        [v19 debounceWithTimeInterval:a3];
      }
      v23 = ;

      v40[0] = v17;
      v40[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      v25 = [EFObservable merge:v24];

      v26 = +[EFDebouncer log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v35 = v17;
        v36 = 2112;
        v37 = v23;
        v38 = 2112;
        v39 = v25;
        _os_log_debug_impl(&dword_1C6152000, v26, OS_LOG_TYPE_DEBUG, "Merge [first %@, rest %@] to debouncedObservable: %@", buf, 0x20u);
      }
    }

    else
    {
      v21 = v15;
      v22 = v10;
      if (v22)
      {
        [(EFObserver *)v21 debounceWithTimeInterval:v22 scheduler:a3];
      }

      else
      {
        [(EFObserver *)v21 debounceWithTimeInterval:a3];
      }
      v25 = ;

      v17 = +[EFDebouncer log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [EFDebouncer initWithTimeInterval:v25 scheduler:v17 startAfter:? block:?];
      }
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __63__EFDebouncer_initWithTimeInterval_scheduler_startAfter_block___block_invoke;
    v31[3] = &unk_1E8248620;
    v32 = v11;
    v27 = [v25 subscribeWithResultBlock:v31];
    cancelable = v12->_cancelable;
    v12->_cancelable = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

void __63__EFDebouncer_initWithTimeInterval_scheduler_startAfter_block___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFB0] null];
  if (v4 == v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  (*(v3 + 16))(v3, v5);
}

- (void)debounceResult:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EFDebouncer log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(EFDebouncer *)self observable];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1C6152000, v5, OS_LOG_TYPE_DEFAULT, "Observer: %@ received result: %@", &v10, 0x16u);
  }

  v7 = [(EFDebouncer *)self observable];
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  [v7 observerDidReceiveResult:v8];
  if (!v4)
  {
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithTimeInterval:(os_log_t)log scheduler:startAfter:block:.cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEBUG, "Subscribing to %@ with %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end
@interface MapsSuggestionsBaseTrigger
- (MapsSuggestionsBaseTrigger)initWithName:(id)a3;
- (MapsSuggestionsBaseTrigger)initWithName:(id)a3 queue:(id)a4;
- (void)registerObserver:(id)a3;
- (void)triggerMyObservers;
- (void)unregisterObserver:(id)a3;
@end

@implementation MapsSuggestionsBaseTrigger

- (void)triggerMyObservers
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(MapsSuggestionsBaseTrigger *)self uniqueName];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "FIRING %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MapsSuggestionsBaseTrigger_triggerMyObservers__block_invoke;
  v6[3] = &unk_1E81F80C0;
  objc_copyWeak(&v7, buf);
  [(MapsSuggestionsObservers *)observers callBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __48__MapsSuggestionsBaseTrigger_triggerMyObservers__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 triggerFired:WeakRetained];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsTrigger.m";
      v8 = 1026;
      v9 = 66;
      v10 = 2082;
      v11 = "[MapsSuggestionsBaseTrigger triggerMyObservers]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (MapsSuggestionsBaseTrigger)initWithName:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:@"%@Queue", v5];
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);
  v10 = [(MapsSuggestionsBaseTrigger *)self initWithName:v5 queue:v9];

  return v10;
}

- (MapsSuggestionsBaseTrigger)initWithName:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MapsSuggestionsBaseTrigger;
  v8 = [(MapsSuggestionsBaseTrigger *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_queue, a4);
    v11 = [MapsSuggestionsObservers alloc];
    queue = v8->_queue;
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [(MapsSuggestionsBaseTrigger *)v8 uniqueName];
    v15 = [v13 initWithFormat:@"%@Observers", v14];
    v16 = [(MapsSuggestionsObservers *)v11 initWithCallbackQueue:queue name:v15];
    observers = v8->_observers;
    v8->_observers = v16;
  }

  return v8;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MapsSuggestionsBaseTrigger_registerObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers registerObserver:v4 handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__MapsSuggestionsBaseTrigger_registerObserver___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = GEOFindOrCreateLog();
    v4 = v3;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = [(dispatch_queue_t *)WeakRetained uniqueName];
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "First observer added for %@", &v7, 0xCu);
      }

      dispatch_assert_queue_V2(WeakRetained[1]);
      [(dispatch_queue_t *)WeakRetained didAddFirstObserver];
    }

    else
    {
      v6 = v3;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "MapsSuggestionsTrigger.m";
        v9 = 1026;
        v10 = 83;
        v11 = 2082;
        v12 = "[MapsSuggestionsBaseTrigger registerObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MapsSuggestionsBaseTrigger_unregisterObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers unregisterObserver:v4 handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__MapsSuggestionsBaseTrigger_unregisterObserver___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = GEOFindOrCreateLog();
    v4 = v3;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = [(dispatch_queue_t *)WeakRetained uniqueName];
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Last observer removed for %@", &v7, 0xCu);
      }

      dispatch_assert_queue_V2(WeakRetained[1]);
      [(dispatch_queue_t *)WeakRetained didRemoveLastObserver];
    }

    else
    {
      v6 = v3;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "MapsSuggestionsTrigger.m";
        v9 = 1026;
        v10 = 96;
        v11 = 2082;
        v12 = "[MapsSuggestionsBaseTrigger unregisterObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
      }
    }
  }
}

@end
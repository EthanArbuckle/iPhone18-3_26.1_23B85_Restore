@interface MapsSuggestionsBaseTrigger
- (MapsSuggestionsBaseTrigger)initWithName:(id)name;
- (MapsSuggestionsBaseTrigger)initWithName:(id)name queue:(id)queue;
- (void)registerObserver:(id)observer;
- (void)triggerMyObservers;
- (void)unregisterObserver:(id)observer;
@end

@implementation MapsSuggestionsBaseTrigger

- (void)triggerMyObservers
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseTrigger *)self uniqueName];
    *buf = 138412290;
    v9 = uniqueName;
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

- (MapsSuggestionsBaseTrigger)initWithName:(id)name
{
  v4 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  nameCopy = [[v4 alloc] initWithFormat:@"%@Queue", nameCopy];
  uTF8String = [nameCopy UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(uTF8String, v8);
  v10 = [(MapsSuggestionsBaseTrigger *)self initWithName:nameCopy queue:v9];

  return v10;
}

- (MapsSuggestionsBaseTrigger)initWithName:(id)name queue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = MapsSuggestionsBaseTrigger;
  v8 = [(MapsSuggestionsBaseTrigger *)&v19 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_queue, queue);
    v11 = [MapsSuggestionsObservers alloc];
    queue = v8->_queue;
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    uniqueName = [(MapsSuggestionsBaseTrigger *)v8 uniqueName];
    v15 = [v13 initWithFormat:@"%@Observers", uniqueName];
    v16 = [(MapsSuggestionsObservers *)v11 initWithCallbackQueue:queue name:v15];
    observers = v8->_observers;
    v8->_observers = v16;
  }

  return v8;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MapsSuggestionsBaseTrigger_registerObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers registerObserver:observerCopy handler:v6];
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

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MapsSuggestionsBaseTrigger_unregisterObserver___block_invoke;
  v6[3] = &unk_1E81F5EF0;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers unregisterObserver:observerCopy handler:v6];
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
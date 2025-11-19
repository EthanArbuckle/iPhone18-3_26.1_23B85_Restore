@interface MapsSuggestionsNavigationStateChangedTrigger
- (BOOL)isTrue;
- (MapsSuggestionsNavigationStateChangedTrigger)init;
- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5;
@end

@implementation MapsSuggestionsNavigationStateChangedTrigger

- (MapsSuggestionsNavigationStateChangedTrigger)init
{
  v8.receiver = self;
  v8.super_class = MapsSuggestionsNavigationStateChangedTrigger;
  v2 = [(MapsSuggestionsBaseTrigger *)&v8 initWithName:@"MapsSuggestionsNavigationStateChangedTrigger"];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69A2290]);
    v4 = [(MapsSuggestionsBaseTrigger *)v2 dispatchQueue];
    v5 = [v3 initWithQueue:v4];
    navigationListener = v2->_navigationListener;
    v2->_navigationListener = v5;

    [(GEONavigationListener *)v2->_navigationListener setDelegate:v2];
  }

  return v2;
}

- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5
{
  objc_initWeak(&location, self);
  v7 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__MapsSuggestionsNavigationStateChangedTrigger_navigationListener_didChangeNavigationState_transportType___block_invoke;
  block[3] = &unk_1E81F5948;
  objc_copyWeak(v9, &location);
  v9[1] = a4;
  dispatch_async(v7, block);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __106__MapsSuggestionsNavigationStateChangedTrigger_navigationListener_didChangeNavigationState_transportType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4] == 2;
    v5 = *(a1 + 40);
    WeakRetained[4] = v5;
    if ((v4 ^ (v5 == 2)))
    {
      [WeakRetained triggerMyObservers];
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsNavigationStateChangedTrigger.mm";
      v9 = 1026;
      v10 = 56;
      v11 = 2082;
      v12 = "[MapsSuggestionsNavigationStateChangedTrigger navigationListener:didChangeNavigationState:transportType:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (BOOL)isTrue
{
  v2 = self;
  v3 = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MapsSuggestionsNavigationStateChangedTrigger_isTrue__block_invoke;
  v6[3] = &unk_1E81F5E28;
  v6[4] = v2;
  v4 = v6;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN3MSg13dispatch_syncIbEET_PU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFS1_vE_block_invoke;
  block[3] = &unk_1E81F5E78;
  v8 = v4;
  v9 = &v10;
  dispatch_sync(v3, block);
  LOBYTE(v2) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v2;
}

@end
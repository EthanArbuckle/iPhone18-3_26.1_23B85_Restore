@interface MapsSuggestionsLocaleChangedTrigger
- (MapsSuggestionsLocaleChangedTrigger)init;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsLocaleChangedTrigger

- (MapsSuggestionsLocaleChangedTrigger)init
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsLocaleChangedTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v3 initWithName:@"MapsSuggestionsLocaleChangedTrigger"];
}

- (void)didAddFirstObserver
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
  v4 = *MEMORY[0x1E695D8F0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MapsSuggestionsLocaleChangedTrigger_didAddFirstObserver__block_invoke;
  v6[3] = &unk_1E81F8098;
  objc_copyWeak(&v7, &location);
  v5 = [defaultCenter addObserverForName:v4 object:0 queue:currentQueue usingBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __58__MapsSuggestionsLocaleChangedTrigger_didAddFirstObserver__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained triggerMyObservers];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsLocaleChangedTrigger.m";
      v9 = 1026;
      v10 = 32;
      v11 = 2082;
      v12 = "[MapsSuggestionsLocaleChangedTrigger didAddFirstObserver]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)didRemoveLastObserver
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

@end
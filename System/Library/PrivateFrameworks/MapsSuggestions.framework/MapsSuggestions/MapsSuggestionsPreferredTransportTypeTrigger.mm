@interface MapsSuggestionsPreferredTransportTypeTrigger
- (MapsSuggestionsPreferredTransportTypeTrigger)init;
- (void)didAddFirstObserver;
@end

@implementation MapsSuggestionsPreferredTransportTypeTrigger

- (MapsSuggestionsPreferredTransportTypeTrigger)init
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsPreferredTransportTypeTrigger;
  return [(MapsSuggestionsBaseTrigger *)&v3 initWithName:@"MapsSuggestionsPreferredTransportTypeTrigger"];
}

- (void)didAddFirstObserver
{
  objc_initWeak(&location, self);
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  objc_copyWeak(&v6, &location);
  v4 = _GEOConfigAddBlockListenerForKey();
  transportTypeChangedListener = self->_transportTypeChangedListener;
  self->_transportTypeChangedListener = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__MapsSuggestionsPreferredTransportTypeTrigger_didAddFirstObserver__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained triggerMyObservers];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsPreferredTransportTypeTrigger.m";
      v6 = 1026;
      v7 = 37;
      v8 = 2082;
      v9 = "[MapsSuggestionsPreferredTransportTypeTrigger didAddFirstObserver]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

@end
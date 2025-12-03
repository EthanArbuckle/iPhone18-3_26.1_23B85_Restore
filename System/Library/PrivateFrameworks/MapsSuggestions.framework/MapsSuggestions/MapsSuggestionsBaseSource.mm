@interface MapsSuggestionsBaseSource
+ (BOOL)isEnabled;
+ (unint64_t)disposition;
- (BOOL)canProduceEntriesOfType:(int64_t)type;
- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler;
- (MapsSuggestionsBaseSource)initWithDelegate:(id)delegate name:(id)name;
- (MapsSuggestionsSourceDelegate)delegate;
- (double)updateSuggestionEntriesOfType:(int64_t)type handler:(id)handler;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (unint64_t)addOrUpdateMySuggestionEntries:(id)entries;
@end

@implementation MapsSuggestionsBaseSource

- (MapsSuggestionsSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)isEnabled
{
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

+ (unint64_t)disposition
{
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (MapsSuggestionsBaseSource)initWithDelegate:(id)delegate name:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = MapsSuggestionsBaseSource;
  v8 = [(MapsSuggestionsBaseSource *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;
  }

  return v9;
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  depotCopy = depot;
  nameCopy = name;
  result = [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (id)initFromResourceDepot:(id)depot
{
  depotCopy = depot;
  v5 = [objc_opt_class() description];
  v6 = [(MapsSuggestionsBaseSource *)self initFromResourceDepot:depotCopy name:v5];

  return v6;
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (double)updateSuggestionEntriesOfType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (!type || (v7 = 0.0, [(MapsSuggestionsBaseSource *)self canProduceEntriesOfType:type]))
  {
    [(MapsSuggestionsBaseSource *)self updateSuggestionEntriesWithHandler:handlerCopy];
    v7 = v8;
  }

  return v7;
}

- (BOOL)canProduceEntriesOfType:(int64_t)type
{
  result = [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler
{
  entryCopy = entry;
  handlerCopy = handler;
  result = [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (unint64_t)addOrUpdateMySuggestionEntries:(id)entries
{
  v18 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  if (entriesCopy)
  {
    delegate = [(MapsSuggestionsBaseSource *)self delegate];
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    v7 = [delegate addOrUpdateSuggestionEntries:entriesCopy source:uniqueName];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseSource.m";
      v12 = 1024;
      v13 = 105;
      v14 = 2082;
      v15 = "[MapsSuggestionsBaseSource addOrUpdateMySuggestionEntries:]";
      v16 = 2082;
      v17 = "nil == (entries)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more entries", &v10, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

@end
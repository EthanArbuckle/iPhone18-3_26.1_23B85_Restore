@interface MapsSuggestionsBaseSource
+ (BOOL)isEnabled;
+ (unint64_t)disposition;
- (BOOL)canProduceEntriesOfType:(int64_t)a3;
- (BOOL)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5;
- (MapsSuggestionsBaseSource)initWithDelegate:(id)a3 name:(id)a4;
- (MapsSuggestionsSourceDelegate)delegate;
- (double)updateSuggestionEntriesOfType:(int64_t)a3 handler:(id)a4;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (unint64_t)addOrUpdateMySuggestionEntries:(id)a3;
@end

@implementation MapsSuggestionsBaseSource

- (MapsSuggestionsSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)isEnabled
{
  result = [a1 doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

+ (unint64_t)disposition
{
  result = [a1 doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (MapsSuggestionsBaseSource)initWithDelegate:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MapsSuggestionsBaseSource;
  v8 = [(MapsSuggestionsBaseSource *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [v7 copy];
    name = v9->_name;
    v9->_name = v10;
  }

  return v9;
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  result = [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (id)initFromResourceDepot:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() description];
  v6 = [(MapsSuggestionsBaseSource *)self initFromResourceDepot:v4 name:v5];

  return v6;
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v5 = a3;
  [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (double)updateSuggestionEntriesOfType:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (!a3 || (v7 = 0.0, [(MapsSuggestionsBaseSource *)self canProduceEntriesOfType:a3]))
  {
    [(MapsSuggestionsBaseSource *)self updateSuggestionEntriesWithHandler:v6];
    v7 = v8;
  }

  return v7;
}

- (BOOL)canProduceEntriesOfType:(int64_t)a3
{
  result = [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (BOOL)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  result = [(MapsSuggestionsBaseSource *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (unint64_t)addOrUpdateMySuggestionEntries:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(MapsSuggestionsBaseSource *)self delegate];
    v6 = [(MapsSuggestionsBaseSource *)self uniqueName];
    v7 = [v5 addOrUpdateSuggestionEntries:v4 source:v6];
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
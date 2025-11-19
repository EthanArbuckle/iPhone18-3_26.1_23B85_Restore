@interface MapsSuggestionsBaseAction
- (MapsSuggestionsBaseAction)initWithName:(id)a3;
- (void)actWithHandler:(id)a3;
@end

@implementation MapsSuggestionsBaseAction

- (MapsSuggestionsBaseAction)initWithName:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsBaseAction;
    v5 = [(MapsSuggestionsBaseAction *)&v11 init];
    if (v5)
    {
      v6 = [v4 copy];
      name = v5->_name;
      v5->_name = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseAction.m";
      v14 = 1024;
      v15 = 24;
      v16 = 2082;
      v17 = "[MapsSuggestionsBaseAction initWithName:]";
      v18 = 2082;
      v19 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)actWithHandler:(id)a3
{
  v5 = a3;
  [(MapsSuggestionsBaseAction *)self doesNotRecognizeSelector:a2];
  __break(1u);
}

@end
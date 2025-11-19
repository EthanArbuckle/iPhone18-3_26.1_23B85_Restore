@interface MapsSuggestionsBlockAction
- (MapsSuggestionsBlockAction)initWithName:(id)a3 block:(id)a4;
@end

@implementation MapsSuggestionsBlockAction

- (MapsSuggestionsBlockAction)initWithName:(id)a3 block:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBlockAction.m";
      v19 = 1024;
      v20 = 27;
      v21 = 2082;
      v22 = "[MapsSuggestionsBlockAction initWithName:block:]";
      v23 = 2082;
      v24 = "nil == (name)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x26u);
    }

LABEL_11:

    v12 = 0;
    goto LABEL_12;
  }

  if (!v7)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBlockAction.m";
      v19 = 1024;
      v20 = 28;
      v21 = 2082;
      v22 = "[MapsSuggestionsBlockAction initWithName:block:]";
      v23 = 2082;
      v24 = "nil == (block)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an action block";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v16.receiver = self;
  v16.super_class = MapsSuggestionsBlockAction;
  v9 = [(MapsSuggestionsBaseAction *)&v16 initWithName:v6];
  if (v9)
  {
    v10 = [v8 copy];
    block = v9->_block;
    v9->_block = v10;
  }

  self = v9;
  v12 = self;
LABEL_12:

  return v12;
}

@end
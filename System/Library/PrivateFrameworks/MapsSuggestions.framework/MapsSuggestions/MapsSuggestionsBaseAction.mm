@interface MapsSuggestionsBaseAction
- (MapsSuggestionsBaseAction)initWithName:(id)name;
- (void)actWithHandler:(id)handler;
@end

@implementation MapsSuggestionsBaseAction

- (MapsSuggestionsBaseAction)initWithName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsBaseAction;
    v5 = [(MapsSuggestionsBaseAction *)&v11 init];
    if (v5)
    {
      v6 = [nameCopy copy];
      name = v5->_name;
      v5->_name = v6;
    }

    self = v5;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)actWithHandler:(id)handler
{
  handlerCopy = handler;
  [(MapsSuggestionsBaseAction *)self doesNotRecognizeSelector:a2];
  __break(1u);
}

@end
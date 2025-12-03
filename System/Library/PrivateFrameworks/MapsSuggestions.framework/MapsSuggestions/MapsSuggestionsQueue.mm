@interface MapsSuggestionsQueue
+ (id)serialQueueWithName:(id)name;
- (id)initSerialQueueWithName:(id)name;
@end

@implementation MapsSuggestionsQueue

- (id)initSerialQueueWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v9.receiver = self;
    v9.super_class = MapsSuggestionsQueue;
    v5 = [(MapsSuggestionsQueue *)&v9 self];

    if (v5)
    {
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    self = 0;
    selfCopy = self;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136446978;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsQueue.mm";
      v11 = 1024;
      v12 = 28;
      v13 = 2082;
      v14 = "[MapsSuggestionsQueue initSerialQueueWithName:]";
      v15 = 2082;
      v16 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)serialQueueWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initSerialQueueWithName:nameCopy];

  return v5;
}

@end
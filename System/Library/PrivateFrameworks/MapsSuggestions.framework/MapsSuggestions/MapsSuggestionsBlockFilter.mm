@interface MapsSuggestionsBlockFilter
+ (id)filterWithBlock:(id)block;
- (BOOL)shouldKeepEntry:(id)entry;
- (MapsSuggestionsBlockFilter)initWithBlock:(id)block;
- (MapsSuggestionsBlockFilter)initWithBlock:(id)block name:(id)name;
@end

@implementation MapsSuggestionsBlockFilter

+ (id)filterWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:blockCopy];

  return v4;
}

- (MapsSuggestionsBlockFilter)initWithBlock:(id)block name:(id)name
{
  blockCopy = block;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = MapsSuggestionsBlockFilter;
  v8 = [(MapsSuggestionsBlockFilter *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [blockCopy copy];
    block = v8->_block;
    v8->_block = v11;
  }

  return v8;
}

- (MapsSuggestionsBlockFilter)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = [objc_opt_class() description];
  v6 = [(MapsSuggestionsBlockFilter *)self initWithBlock:blockCopy name:v5];

  return v6;
}

- (BOOL)shouldKeepEntry:(id)entry
{
  v15 = *MEMORY[0x1E69E9840];
  block = self->_block;
  if (block)
  {
    v4 = *(block + 2);

    return v4();
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBlockFilter.m";
      v9 = 1024;
      v10 = 49;
      v11 = 2082;
      v12 = "[MapsSuggestionsBlockFilter shouldKeepEntry:]";
      v13 = 2082;
      v14 = "nil == (_block)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a block.", &v7, 0x26u);
    }

    return 1;
  }
}

@end
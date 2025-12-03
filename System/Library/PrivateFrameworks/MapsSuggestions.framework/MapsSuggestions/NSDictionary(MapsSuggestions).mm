@interface NSDictionary(MapsSuggestions)
- (NSObject)MSg_mutableCopyIf:()MapsSuggestions;
- (id)MSg_copyIf:()MapsSuggestions;
@end

@implementation NSDictionary(MapsSuggestions)

- (id)MSg_copyIf:()MapsSuggestions
{
  v1 = [self MSg_mutableCopyIf:?];
  v2 = [v1 copy];

  return v2;
}

- (NSObject)MSg_mutableCopyIf:()MapsSuggestions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__NSDictionary_MapsSuggestions__MSg_mutableCopyIf___block_invoke;
    v11[3] = &unk_1E81F8020;
    v13 = v4;
    v6 = v5;
    v12 = v6;
    [self enumerateKeysAndObjectsUsingBlock:v11];
    v7 = v12;
    v8 = v6;

    v9 = v8;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCopyIf.m";
      v16 = 1024;
      v17 = 48;
      v18 = 2082;
      v19 = "[NSDictionary(MapsSuggestions) MSg_mutableCopyIf:]";
      v20 = 2082;
      v21 = "nil == (condition)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a condition block", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

@end
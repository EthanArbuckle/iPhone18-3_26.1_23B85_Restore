@interface NSArray(MapsSuggestions)
- (id)MSg_copyIf:()MapsSuggestions;
- (id)MSg_mutableCopyIf:()MapsSuggestions;
@end

@implementation NSArray(MapsSuggestions)

- (id)MSg_copyIf:()MapsSuggestions
{
  v1 = [self MSg_mutableCopyIf:?];
  v2 = [v1 copy];

  return v2;
}

- (id)MSg_mutableCopyIf:()MapsSuggestions
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (v4[2](v4, v11))
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    selfCopy = GEOFindOrCreateLog();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCopyIf.m";
      v20 = 1024;
      v21 = 23;
      v22 = 2082;
      v23 = "[NSArray(MapsSuggestions) MSg_mutableCopyIf:]";
      v24 = 2082;
      v25 = "nil == (condition)";
      _os_log_impl(&dword_1C5126000, selfCopy, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a condition block", buf, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

@end
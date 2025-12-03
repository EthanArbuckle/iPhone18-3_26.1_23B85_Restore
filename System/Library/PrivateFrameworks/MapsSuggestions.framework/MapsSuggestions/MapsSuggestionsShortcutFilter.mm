@interface MapsSuggestionsShortcutFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsShortcutFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v16 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutFilter.m";
      v10 = 1024;
      v11 = 21;
      v12 = 2082;
      v13 = "[MapsSuggestionsShortcutFilter shouldKeepEntry:]";
      v14 = 2082;
      v15 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Required suggestion entry", &v8, 0x26u);
    }

    goto LABEL_9;
  }

  if ([entryCopy type] == 18 || objc_msgSend(v4, "containsKey:", @"MapsSuggestionsShortcutOnlyKey") && (objc_msgSend(v4, "BOOLeanForKey:", @"MapsSuggestionsShortcutOnlyKey") & 1) != 0)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

@end
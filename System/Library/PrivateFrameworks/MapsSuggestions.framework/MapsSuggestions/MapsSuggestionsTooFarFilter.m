@interface MapsSuggestionsTooFarFilter
- (BOOL)shouldKeepEntry:(id)a3;
@end

@implementation MapsSuggestionsTooFarFilter

- (BOOL)shouldKeepEntry:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (MapsSuggestionsIsShortcutEntry(v3))
    {
LABEL_3:
      v5 = 1;
      goto LABEL_13;
    }

    v7 = [v4 type];
    if (v7 > 0x19)
    {
      v9 = 0.0;
    }

    else
    {
      if (((1 << v7) & 0x1FFF7FF) == 0)
      {
        goto LABEL_3;
      }

      GEOConfigGetDouble();
      v9 = v8;
    }

    *v12 = 0;
    v10 = !MapsSuggestionsDistanceFromHereToEntry(v4, v12);
    v5 = *v12 <= v9 || v10;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136446978;
      *&v12[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTooFarFilter.m";
      v13 = 1024;
      v14 = 25;
      v15 = 2082;
      v16 = "[MapsSuggestionsTooFarFilter shouldKeepEntry:]";
      v17 = 2082;
      v18 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Required suggestion entry", v12, 0x26u);
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

@end
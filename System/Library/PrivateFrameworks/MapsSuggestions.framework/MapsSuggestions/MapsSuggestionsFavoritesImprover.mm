@interface MapsSuggestionsFavoritesImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsFavoritesImprover

- (BOOL)improveEntry:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFavoritesImprover.m";
      v12 = 1024;
      v13 = 23;
      v14 = 2082;
      v15 = "[MapsSuggestionsFavoritesImprover improveEntry:]";
      v16 = 2082;
      v17 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestions entry", &v10, 0x26u);
    }

    goto LABEL_9;
  }

  if ([v3 type] != 6)
  {
LABEL_9:
    LOBYTE(v5) = 0;
    goto LABEL_10;
  }

  v5 = [v4 geoMapItem];

  if (v5)
  {
    v6 = [v4 undecoratedSubtitle];

    if (!v6)
    {
      v5 = [v4 geoMapItem];
      v7 = MapsSuggestionsMapItemShortAddress(v5);
      [v4 setUndecoratedSubtitle:v7];

      LOBYTE(v5) = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

@end
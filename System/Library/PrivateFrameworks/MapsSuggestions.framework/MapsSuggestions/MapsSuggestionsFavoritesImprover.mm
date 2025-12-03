@interface MapsSuggestionsFavoritesImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsFavoritesImprover

- (BOOL)improveEntry:(id)entry
{
  v18 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
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

  if ([entryCopy type] != 6)
  {
LABEL_9:
    LOBYTE(geoMapItem) = 0;
    goto LABEL_10;
  }

  geoMapItem = [v4 geoMapItem];

  if (geoMapItem)
  {
    undecoratedSubtitle = [v4 undecoratedSubtitle];

    if (!undecoratedSubtitle)
    {
      geoMapItem = [v4 geoMapItem];
      v7 = MapsSuggestionsMapItemShortAddress(geoMapItem);
      [v4 setUndecoratedSubtitle:v7];

      LOBYTE(geoMapItem) = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:

  return geoMapItem;
}

@end
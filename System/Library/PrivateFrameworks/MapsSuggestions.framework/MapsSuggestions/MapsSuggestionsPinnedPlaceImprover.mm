@interface MapsSuggestionsPinnedPlaceImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsPinnedPlaceImprover

- (BOOL)improveEntry:(id)entry
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPinnedPlaceImprover.m";
      v17 = 1024;
      v18 = 22;
      v19 = 2082;
      v20 = "[MapsSuggestionsPinnedPlaceImprover improveEntry:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an Entry", &v15, 0x26u);
    }

    goto LABEL_10;
  }

  if (![entryCopy isPureShortcut])
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (![v4 isShortcutForSetup])
  {
    if (MapsSuggestionsEntryIsNearbyTransit(v4))
    {
LABEL_17:
      v14 = MapsSuggestionsLocalizedNearbyTransitShortSubtitleString();
      v11 = [v4 updateUndecoratedSubtitle:v14];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = MapsSuggestionsShortcutTypeFromEntryType([v4 type]);
  v6 = MapsSuggestionsShortcutSetupStringForType(v5, 1);
  if (v6 && ([v4 undecoratedSubtitle], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, (v8 & 1) == 0))
  {
    [v4 setUndecoratedSubtitle:v6];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  IsNearbyTransit = MapsSuggestionsEntryIsNearbyTransit(v4);
  v11 = v9 | IsNearbyTransit;
  if ((v9 & 1) == 0 && IsNearbyTransit)
  {
    goto LABEL_17;
  }

LABEL_11:

  return v11;
}

@end
@interface MapsSuggestionsCalendarEventDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsCalendarEventDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v32 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarEventDeduper.m";
      v26 = 1024;
      v27 = 22;
      v28 = 2082;
      v29 = "[MapsSuggestionsCalendarEventDeduper dedupeByEnrichingEntry:withEntry:]";
      v30 = 2082;
      v31 = "nil == (originalEntry)";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_19:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v17, &v24, 0x26u);
    }

LABEL_21:

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  if (!withEntryCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarEventDeduper.m";
      v26 = 1024;
      v27 = 23;
      v28 = 2082;
      v29 = "[MapsSuggestionsCalendarEventDeduper dedupeByEnrichingEntry:withEntry:]";
      v30 = 2082;
      v31 = "nil == (entry)";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(3, withEntryCopy, entryCopy) && (MapsSuggestionsEntriesShouldBeOfOneOfEachType(13, 3, entryCopy, v7) & 1) == 0 && (MapsSuggestionsEntriesShouldBeOfOneOfEachType(14, 3, entryCopy, v7) & 1) == 0 && (MapsSuggestionsEntriesShouldBeOfOneOfEachType(15, 3, entryCopy, v7) & 1) == 0 && !MapsSuggestionsEntriesShouldBeOfOneOfEachType(16, 3, entryCopy, v7))
  {
    goto LABEL_22;
  }

  uniqueIdentifier = [v7 uniqueIdentifier];
  if (!uniqueIdentifier || (v9 = uniqueIdentifier, [v7 uniqueIdentifier], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(entryCopy, "uniqueIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) == 0))
  {
    v13 = [v7 stringForKey:@"MapsSuggestionsEventIDKey"];
    v14 = [entryCopy stringForKey:@"MapsSuggestionsEventIDKey"];
    if (v13 && [v13 isEqualToString:v14])
    {

      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_13:
  if ([v7 type] == 3)
  {
    type = [v7 type];
    v16 = type == [entryCopy type];
  }

  else
  {
    v16 = 1;
  }

  v20 = [v7 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
  v21 = [entryCopy dateForKey:@"MapsSuggestionsScheduledTimeKey"];
  [entryCopy mergeFromSuggestionEntry:v7 behavior:v16];
  if (v20 && ([v20 isEqualToDate:v21] & 1) == 0)
  {
    undecoratedSubtitle = [v7 undecoratedSubtitle];
    [entryCopy setUndecoratedSubtitle:undecoratedSubtitle];

    subtitle = [v7 subtitle];
    [entryCopy setSubtitle:subtitle];
  }

  v18 = 1;
LABEL_23:

  return v18;
}

@end
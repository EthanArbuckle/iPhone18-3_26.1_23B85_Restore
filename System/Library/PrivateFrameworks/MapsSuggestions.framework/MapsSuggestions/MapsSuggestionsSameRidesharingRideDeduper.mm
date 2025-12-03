@interface MapsSuggestionsSameRidesharingRideDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsSameRidesharingRideDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  v27 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  withEntryCopy = withEntry;
  v7 = withEntryCopy;
  if (!entryCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSameRidesharingRideDeduper.m";
    v21 = 1024;
    v22 = 21;
    v23 = 2082;
    v24 = "[MapsSuggestionsSameRidesharingRideDeduper dedupeByEnrichingEntry:withEntry:]";
    v25 = 2082;
    v26 = "nil == (originalEntry)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an original suggestion entry";
LABEL_16:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x26u);
    goto LABEL_17;
  }

  if (!withEntryCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSameRidesharingRideDeduper.m";
    v21 = 1024;
    v22 = 22;
    v23 = 2082;
    v24 = "[MapsSuggestionsSameRidesharingRideDeduper dedupeByEnrichingEntry:withEntry:]";
    v25 = 2082;
    v26 = "nil == (entry)";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a new suggestion entry";
    goto LABEL_16;
  }

  uniqueIdentifier = [entryCopy uniqueIdentifier];
  v9 = [uniqueIdentifier length];

  if (!v9)
  {
    v16 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = 136446978;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSameRidesharingRideDeduper.m";
    v21 = 1024;
    v22 = 23;
    v23 = 2082;
    v24 = "[MapsSuggestionsSameRidesharingRideDeduper dedupeByEnrichingEntry:withEntry:]";
    v25 = 2082;
    v26 = "0u == originalEntry.uniqueIdentifier.length";
    v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Every suggestion entry requires a .uniqueIdentifier by contract.";
    goto LABEL_16;
  }

  uniqueIdentifier2 = [v7 uniqueIdentifier];
  v11 = [uniqueIdentifier2 length];

  if (!v11)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSameRidesharingRideDeduper.m";
      v21 = 1024;
      v22 = 24;
      v23 = 2082;
      v24 = "[MapsSuggestionsSameRidesharingRideDeduper dedupeByEnrichingEntry:withEntry:]";
      v25 = 2082;
      v26 = "0u == entry.uniqueIdentifier.length";
      v17 = "At %{public}s:%d, %{public}s forbids: %{public}s. Every suggestion entry requires a .uniqueIdentifier by contract.";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (!MapsSuggestionsEntriesAreBothOfType(9, v7, entryCopy))
  {
    goto LABEL_18;
  }

  uniqueIdentifier3 = [entryCopy uniqueIdentifier];
  uniqueIdentifier4 = [v7 uniqueIdentifier];
  v14 = [uniqueIdentifier3 isEqualToString:uniqueIdentifier4];

  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = 1;
  [entryCopy mergeFromSuggestionEntry:v7 behavior:1];
LABEL_19:

  return v15;
}

@end
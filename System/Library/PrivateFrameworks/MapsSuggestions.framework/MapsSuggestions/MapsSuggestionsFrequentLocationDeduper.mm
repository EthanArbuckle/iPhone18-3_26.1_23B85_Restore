@interface MapsSuggestionsFrequentLocationDeduper
- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry;
@end

@implementation MapsSuggestionsFrequentLocationDeduper

- (BOOL)dedupeByEnrichingEntry:(id)entry withEntry:(id)withEntry
{
  entryCopy = entry;
  withEntryCopy = withEntry;
  if (MapsSuggestionsEntriesAreBothOfType(4, withEntryCopy, entryCopy) && ([entryCopy uniqueIdentifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(withEntryCopy, "uniqueIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = 1;
    [entryCopy mergeFromSuggestionEntry:withEntryCopy behavior:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
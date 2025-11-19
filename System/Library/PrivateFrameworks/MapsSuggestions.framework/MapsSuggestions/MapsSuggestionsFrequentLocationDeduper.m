@interface MapsSuggestionsFrequentLocationDeduper
- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4;
@end

@implementation MapsSuggestionsFrequentLocationDeduper

- (BOOL)dedupeByEnrichingEntry:(id)a3 withEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MapsSuggestionsEntriesAreBothOfType(4, v6, v5) && ([v5 uniqueIdentifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "uniqueIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = 1;
    [v5 mergeFromSuggestionEntry:v6 behavior:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
@interface MapsSuggestionsFlightDeparturesOnlyFilter
- (BOOL)shouldKeepEntry:(id)a3;
@end

@implementation MapsSuggestionsFlightDeparturesOnlyFilter

- (BOOL)shouldKeepEntry:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlightDeparturesOnlyFilter.m";
      v14 = 1024;
      v15 = 22;
      v16 = 2082;
      v17 = "[MapsSuggestionsFlightDeparturesOnlyFilter shouldKeepEntry:]";
      v18 = 2082;
      v19 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Required suggestion entry", &v12, 0x26u);
    }

LABEL_9:
    v9 = 0;
    goto LABEL_13;
  }

  if ([v3 type] != 15)
  {
    v9 = 1;
    goto LABEL_13;
  }

  if (![v4 containsKey:@"MapsSuggestionsScheduledTimeKey"])
  {
    goto LABEL_9;
  }

  v5 = [v4 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
  v6 = v5;
  if (v5)
  {
    v7 = MapsSuggestionsSecondsSince(v5);
    GEOConfigGetDouble();
    v9 = v7 <= v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  return v9;
}

@end
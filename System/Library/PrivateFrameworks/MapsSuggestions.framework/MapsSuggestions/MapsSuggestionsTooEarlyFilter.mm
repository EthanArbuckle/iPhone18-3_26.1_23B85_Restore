@interface MapsSuggestionsTooEarlyFilter
- (BOOL)shouldKeepEntry:(id)entry;
@end

@implementation MapsSuggestionsTooEarlyFilter

- (BOOL)shouldKeepEntry:(id)entry
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    v5 = 1;
    switch([entryCopy type])
    {
      case 0:
      case 1:
      case 5:
      case 6:
      case 7:
      case 10:
      case 11:
      case 12:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 25:
        break;
      case 2:
      case 3:
      case 4:
      case 8:
      case 9:
      case 13:
      case 14:
      case 15:
      case 16:
      case 23:
      case 24:
        GEOConfigGetDouble();
        v8 = v7;
        v9 = v4;
        if ([v9 containsKey:@"MapsSuggestionsScheduledTimeKey"])
        {
          v10 = [v9 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
          v11 = MapsSuggestionsNow();
          [v10 timeIntervalSinceDate:v11];
          v5 = v12 < v8;
        }

        break;
      default:
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 136446978;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTooEarlyFilter.m";
          v17 = 1024;
          v18 = 100;
          v19 = 2082;
          v20 = "[MapsSuggestionsTooEarlyFilter shouldKeepEntry:]";
          v21 = 2082;
          v22 = "YES";
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v15, 0x26u);
        }

        v5 = 1;
        break;
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTooEarlyFilter.m";
      v17 = 1024;
      v18 = 41;
      v19 = 2082;
      v20 = "[MapsSuggestionsTooEarlyFilter shouldKeepEntry:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v15, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

@end
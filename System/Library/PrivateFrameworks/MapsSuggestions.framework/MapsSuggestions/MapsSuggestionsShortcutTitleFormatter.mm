@interface MapsSuggestionsShortcutTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry distance:(double)distance trafficString:(id)string;
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsShortcutTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v32 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (entryCopy)
  {
    if (etaCopy)
    {
      [etaCopy seconds];
      v10 = v9;
      GEOConfigGetDouble();
      v12 = v11;
      *v25 = 0;
      if (MapsSuggestionsDistanceFromHereToEntry(entryCopy, v25) && (v13 = *v25, GEOConfigGetDouble(), v13 < v14))
      {
        [entryCopy setBoolean:1 forKey:@"MapsSuggestionsAlreadyThereKey"];
      }

      else
      {
        [entryCopy setBoolean:v10 < v12 forKey:@"MapsSuggestionsAlreadyThereKey"];
        if (v10 >= v12)
        {
          [v8 seconds];
          v20 = v19;
          [v8 seconds];
          if (v20 >= 3600.0)
          {
            NSStringFromMapsSuggestionsAbbreviatedETA(v21);
          }

          else
          {
            NSStringFromMapsSuggestionsShortETA(v21);
          }
          v17 = ;
LABEL_20:
          v22 = v17;
          undecoratedTitle = [entryCopy undecoratedTitle];
          v18 = 1;
          [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:undecoratedTitle subtitle:v22 includeLockedVersions:1];

          goto LABEL_21;
        }
      }

      if (_nearbyString_s_onceToken != -1)
      {
        [MapsSuggestionsShortcutTitleFormatter formatTitlesForEntry:eta:];
      }

      v17 = _nearbyString_s_nearbyString;
      goto LABEL_20;
    }

    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136446978;
      *&v25[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutTitleFormatter.m";
      v26 = 1024;
      v27 = 35;
      v28 = 2082;
      v29 = "[MapsSuggestionsShortcutTitleFormatter formatTitlesForEntry:eta:]";
      v30 = 2082;
      v31 = "nil == (eta)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
      goto LABEL_14;
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136446978;
      *&v25[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutTitleFormatter.m";
      v26 = 1024;
      v27 = 34;
      v28 = 2082;
      v29 = "[MapsSuggestionsShortcutTitleFormatter formatTitlesForEntry:eta:]";
      v30 = 2082;
      v31 = "nil == (entry)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
LABEL_14:
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, v16, v25, 0x26u);
    }
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (BOOL)formatTitlesForEntry:(id)entry distance:(double)distance trafficString:(id)string
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    GEOConfigGetDouble();
    v9 = v8;
    [entryCopy setBoolean:v8 > distance forKey:@"MapsSuggestionsAlreadyThereKey"];
    if (v9 <= distance)
    {
      v10 = MapsSuggestionsDistanceString();
    }

    else
    {
      if (_nearbyString_s_onceToken != -1)
      {
        [MapsSuggestionsShortcutTitleFormatter formatTitlesForEntry:distance:trafficString:];
      }

      v10 = _nearbyString_s_nearbyString;
    }

    v12 = v10;
    undecoratedTitle = [entryCopy undecoratedTitle];
    [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:undecoratedTitle subtitle:v12 includeLockedVersions:1];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutTitleFormatter.m";
      v17 = 1024;
      v18 = 71;
      v19 = 2082;
      v20 = "[MapsSuggestionsShortcutTitleFormatter formatTitlesForEntry:distance:trafficString:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v15, 0x26u);
    }
  }

  return entryCopy != 0;
}

@end
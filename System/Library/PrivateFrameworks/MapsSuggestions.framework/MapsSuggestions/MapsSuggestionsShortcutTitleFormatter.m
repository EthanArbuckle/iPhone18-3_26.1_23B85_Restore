@interface MapsSuggestionsShortcutTitleFormatter
- (BOOL)formatTitlesForEntry:(id)a3 distance:(double)a4 trafficString:(id)a5;
- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4;
@end

@implementation MapsSuggestionsShortcutTitleFormatter

- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      [v7 seconds];
      v10 = v9;
      GEOConfigGetDouble();
      v12 = v11;
      *v25 = 0;
      if (MapsSuggestionsDistanceFromHereToEntry(v6, v25) && (v13 = *v25, GEOConfigGetDouble(), v13 < v14))
      {
        [v6 setBoolean:1 forKey:@"MapsSuggestionsAlreadyThereKey"];
      }

      else
      {
        [v6 setBoolean:v10 < v12 forKey:@"MapsSuggestionsAlreadyThereKey"];
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
          v23 = [v6 undecoratedTitle];
          v18 = 1;
          [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v6 title:v23 subtitle:v22 includeLockedVersions:1];

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

- (BOOL)formatTitlesForEntry:(id)a3 distance:(double)a4 trafficString:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    GEOConfigGetDouble();
    v9 = v8;
    [v7 setBoolean:v8 > a4 forKey:@"MapsSuggestionsAlreadyThereKey"];
    if (v9 <= a4)
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
    v13 = [v7 undecoratedTitle];
    [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v7 title:v13 subtitle:v12 includeLockedVersions:1];
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

  return v7 != 0;
}

@end
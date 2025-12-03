@interface MapsSuggestionsEventETATitleFormatter
- (BOOL)_etaDuration:(double)duration meetsThresholdForEntry:;
- (BOOL)shouldDecorateEntry:(id)entry withETA:(id)a;
@end

@implementation MapsSuggestionsEventETATitleFormatter

- (BOOL)shouldDecorateEntry:(id)entry withETA:(id)a
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  aCopy = a;
  v8 = aCopy;
  if (!entryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventETATitleFormatter.m";
      v17 = 1024;
      v18 = 18;
      v19 = 2082;
      v20 = "[MapsSuggestionsEventETATitleFormatter shouldDecorateEntry:withETA:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_12:
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x26u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!aCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventETATitleFormatter.m";
      v17 = 1024;
      v18 = 19;
      v19 = 2082;
      v20 = "[MapsSuggestionsEventETATitleFormatter shouldDecorateEntry:withETA:]";
      v21 = 2082;
      v22 = "nil == (eta)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([entryCopy BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey" is:1])
  {
    goto LABEL_14;
  }

  LOBYTE(v9) = 1;
  if (([entryCopy BOOLeanForKey:@"MapsSuggestionsWithinImminentTimeWindowKey" is:1] & 1) == 0)
  {
    v9 = [entryCopy dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    if (v9)
    {
      [v8 seconds];
      v11 = [(MapsSuggestionsEventETATitleFormatter *)self _etaDuration:entryCopy meetsThresholdForEntry:v10];

      if (v11)
      {
        LOBYTE(v9) = 1;
        [entryCopy setBoolean:1 forKey:@"MapsSuggestionsWithinImminentTimeWindowKey"];
        goto LABEL_15;
      }

LABEL_14:
      LOBYTE(v9) = 0;
    }
  }

LABEL_15:

  return v9;
}

- (BOOL)_etaDuration:(double)duration meetsThresholdForEntry:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    v15 = 0;
    goto LABEL_16;
  }

  if (v5)
  {
    if ([v5 containsKey:@"MapsSuggestionsScheduledTimeKey"])
    {
      v7 = [v6 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      v8 = MapsSuggestionsNow();
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;

      [v6 type];
      GEOConfigGetDouble();
      v12 = v11 * duration;
      GEOConfigGetDouble();
      v14 = fmax(v12, v13);
      v15 = v10 <= v14;
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = @"NO";
        v22 = 2048;
        v20 = 134218754;
        v21 = v10 / 60.0;
        *v23 = duration / 60.0;
        if (v10 <= v14)
        {
          v17 = @"Yes";
        }

        *&v23[8] = 2112;
        *&v23[10] = v7;
        *&v23[18] = 2112;
        *&v23[20] = v17;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "timeToEvent: %f min, eta: %f min, scheduledTime %@, meetsThreshold: %@", &v20, 0x2Au);
      }

      goto LABEL_15;
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventETATitleFormatter.m");
      v22 = 1024;
      *v23 = 41;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsEventETATitleFormatter _etaDuration:meetsThresholdForEntry:]";
      *&v23[14] = 2082;
      *&v23[16] = "[entry containsKey:MapsSuggestionsScheduledTimeKey] == NO";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Entry doesn't have a value for MapsSuggestionsScheduledTimeKey to verify if we are in the time window";
      goto LABEL_13;
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEventETATitleFormatter.m");
      v22 = 1024;
      *v23 = 40;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsEventETATitleFormatter _etaDuration:meetsThresholdForEntry:]";
      *&v23[14] = 2082;
      *&v23[16] = "nil == (entry)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_13:
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, v18, &v20, 0x26u);
    }
  }

  v15 = 0;
LABEL_15:

LABEL_16:
  return v15;
}

@end
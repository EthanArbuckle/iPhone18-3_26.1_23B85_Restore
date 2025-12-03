@interface MapsSuggestionsPortraitImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsPortraitImprover

- (BOOL)improveEntry:(id)entry
{
  v24 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    if ([entryCopy type] == 17)
    {
      geoMapItem = [v5 geoMapItem];
      name = [geoMapItem name];
      [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:name forEntry:v5];

      v8 = v5;
      if (![v8 containsKey:@"MapsSuggestionsOriginBundleIDKey"])
      {
        goto LABEL_15;
      }

      v9 = [v8 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
      if ([v9 isEqualToString:@"com.apple.siri"])
      {
        v10 = MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry();
      }

      else
      {
        if (![v9 isEqualToString:@"com.apple.siri.homepod"])
        {
          v13 = 0;
LABEL_14:

          if (v13)
          {
LABEL_19:

            [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v13 forEntry:v8];
            [v8 setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
            v12 = 1;
            goto LABEL_20;
          }

LABEL_15:
          v14 = [v8 stringForKey:@"MapsSuggestionsOriginatingAppName"];
          if ([v14 length])
          {
            MapsSuggestionsLocalizedSiriFoundInString(v14);
          }

          else
          {
            MapsSuggestionsLocalizedSiriSuggestionsString();
          }
          v13 = ;

          goto LABEL_19;
        }

        v10 = MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry();
      }

      v13 = v10;
      goto LABEL_14;
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitImprover.m";
      v18 = 1024;
      v19 = 23;
      v20 = 2082;
      v21 = "[MapsSuggestionsPortraitImprover improveEntry:]";
      v22 = 2082;
      v23 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", &v16, 0x26u);
    }
  }

  v12 = 0;
LABEL_20:

  return v12;
}

@end
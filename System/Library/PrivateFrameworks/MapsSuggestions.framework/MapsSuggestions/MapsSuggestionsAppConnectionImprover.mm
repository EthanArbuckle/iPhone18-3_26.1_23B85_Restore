@interface MapsSuggestionsAppConnectionImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsAppConnectionImprover

- (BOOL)improveEntry:(id)entry
{
  v35 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    if ([entryCopy type] == 12)
    {
      v6 = v5;
      if ([v6 BOOLeanForKey:@"MapsSuggestionsAppConnectionIsCoordinateOnlyURL" is:1])
      {
        if (![v6 containsKey:@"MapsSuggestionsAppConnectionMessageSenderContactName"])
        {
          v8 = MapsSuggestionsLocalizedSharedLocationString();
LABEL_23:

          if (!v8)
          {
            v12 = 0;
LABEL_27:
            v20 = v6;
            v21 = [v20 stringForKey:@"MapsSuggestionsAppConnectionOriginatingWebsiteName"];
            if ([v21 length])
            {
              v22 = MapsSuggestionsLocalizedSiriFoundOnString(v21);
LABEL_39:

              v10 = v12 | [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v22 forEntry:v20];
              goto LABEL_40;
            }

            v23 = [v20 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
            if ([v23 isEqualToString:@"com.apple.siri"])
            {
              v24 = MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry();
            }

            else
            {
              if (![v23 isEqualToString:@"com.apple.siri.homepod"])
              {
                goto LABEL_34;
              }

              v24 = MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry();
            }

            v22 = v24;
            if (v24)
            {
LABEL_38:

              goto LABEL_39;
            }

LABEL_34:
            v25 = [v20 stringForKey:@"MapsSuggestionsOriginatingAppName"];
            if ([v25 length])
            {
              MapsSuggestionsLocalizedSiriFoundInString(v25);
            }

            else
            {
              MapsSuggestionsLocalizedSiriSuggestionsString();
            }
            v22 = ;

            goto LABEL_38;
          }

          v12 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v8 forEntry:v6];
LABEL_25:

          goto LABEL_27;
        }

        geoMapItem2 = [v6 stringForKey:@"MapsSuggestionsAppConnectionMessageSenderContactName"];
        v8 = MapsSuggestionsLocalizedSharedByString(geoMapItem2);
LABEL_22:

        goto LABEL_23;
      }

      undecoratedTitle = [v6 undecoratedTitle];
      if ([undecoratedTitle length])
      {
      }

      else
      {
        geoMapItem = [v6 geoMapItem];

        if (geoMapItem)
        {
          geoMapItem2 = [v6 geoMapItem];
          name = [geoMapItem2 name];
          v15 = name;
          if (name)
          {
            v8 = name;
          }

          else
          {
            geoMapItem3 = [v6 geoMapItem];
            v17 = MapsSuggestionsMapItemShortAddress(geoMapItem3);
            v18 = v17;
            if (v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = MapsSuggestionsLocalizedFoundInAppString();
            }

            v8 = v19;
          }

          goto LABEL_22;
        }
      }

      v12 = 0;
      v8 = v6;
      goto LABEL_25;
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v27 = 136446978;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsAppConnectionImprover.m";
      v29 = 1024;
      v30 = 24;
      v31 = 2082;
      v32 = "[MapsSuggestionsAppConnectionImprover improveEntry:]";
      v33 = 2082;
      v34 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v27, 0x26u);
    }
  }

  LOBYTE(v10) = 0;
LABEL_40:

  return v10;
}

@end
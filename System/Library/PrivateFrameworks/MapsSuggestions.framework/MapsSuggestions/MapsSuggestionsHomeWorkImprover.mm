@interface MapsSuggestionsHomeWorkImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsHomeWorkImprover

- (BOOL)improveEntry:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446978;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsHomeWorkImprover.m";
      v37 = 1024;
      v38 = 30;
      v39 = 2082;
      v40 = "[MapsSuggestionsHomeWorkImprover improveEntry:]";
      v41 = 2082;
      v42 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a entry", &v35, 0x26u);
    }

    goto LABEL_32;
  }

  v6 = [v4 type];
  switch(v6)
  {
    case 19:
      v7 = MapsSuggestionsLocalizedSchoolString();
      break;
    case 2:
      v7 = MapsSuggestionsLocalizedWorkString();
      break;
    case 1:
      v7 = MapsSuggestionsLocalizedHomeString();
      break;
    default:
      v8 = 0;
LABEL_32:
      v24 = 0;
      goto LABEL_44;
  }

  v8 = v7;
  if ([v5 containsKey:@"MapsSuggestionsTransportTypeKey"])
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Removing existing value for MapsSuggestionsTransportTypeKey", &v35, 2u);
    }

    [v5 setNumber:0 forKey:@"MapsSuggestionsTransportTypeKey"];
  }

  if ([v5 containsKey:@"MapsSuggestionsCoreRoutineCustomLabel"])
  {
    v10 = [v5 stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v5 stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];

      v8 = v12;
    }
  }

  if ([v8 length])
  {
    [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v8 forEntry:v5];
  }

  v13 = [v5 geoMapItem];

  if (v13)
  {
    v14 = [v5 geoMapItem];
    v15 = MapsSuggestionsMapItemCityName(v14);

    if (v15)
    {
      v16 = [v5 undecoratedSubtitle];
      v17 = [v15 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        v18 = v5;
        v19 = [v18 subtitle];

        if (v19)
        {
          v20 = [v18 subtitle];
          v21 = [v18 undecoratedSubtitle];
          v22 = [v20 isEqualToString:v21];

          if (!v22)
          {
            v23 = [v18 subtitle];
            [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v15 forEntry:v18];
            if (v23)
            {
              [v18 setSubtitle:v23];
            }

            goto LABEL_29;
          }
        }

        else
        {
        }

        [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v15 forEntry:v18];
      }
    }

LABEL_29:
  }

  if ([v5 containsKey:@"MapsSuggestionsAlreadyLocalizedKey"] && (objc_msgSend(v5, "BOOLeanForKey:", @"MapsSuggestionsAlreadyLocalizedKey") & 1) != 0)
  {
    goto LABEL_32;
  }

  v25 = [v5 subtitle];
  v26 = [v25 length];

  if (!v26)
  {
    [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v5 forEntry:?];
  }

  [v5 setBoolean:1 forKey:@"MapsSuggestionsAlreadyLocalizedKey"];
  [v5 setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
  if ([v5 containsKey:@"MapsSuggestionsCoreRoutineCustomLabel"])
  {
    v27 = [v5 stringForKey:@"MapsSuggestionsCoreRoutineCustomLabel"];
    if ([v27 length])
    {
      [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v27 forEntry:v5];
    }
  }

  if ([v5 containsKey:@"MapsSuggestionsScheduledTimeKey"])
  {
    v28 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    v29 = MapsSuggestionsNow();
    [v28 timeIntervalSinceDate:v29];
    v31 = v30;
    GEOConfigGetDouble();
    v33 = v32;

    if (v31 > v33)
    {
      [v5 setWeight:0.0];
    }
  }

  v24 = 1;
LABEL_44:

  return v24;
}

@end
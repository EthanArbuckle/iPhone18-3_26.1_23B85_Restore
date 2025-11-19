@interface MapsSuggestionsResumeRouteTitleFormatter
- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4 requiredChargeLevel:(id)a5 currentChargeLevel:(id)a6;
@end

@implementation MapsSuggestionsResumeRouteTitleFormatter

- (BOOL)formatTitlesForEntry:(id)a3 eta:(id)a4 requiredChargeLevel:(id)a5 currentChargeLevel:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v32 = 136446978;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteTitleFormatter.m";
    v34 = 1024;
    v35 = 24;
    v36 = 2082;
    v37 = "[MapsSuggestionsResumeRouteTitleFormatter formatTitlesForEntry:eta:requiredChargeLevel:currentChargeLevel:]";
    v38 = 2082;
    v39 = "nil == (entry)";
    v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_19:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v25, &v32, 0x26u);
    goto LABEL_20;
  }

  if (!v11)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v32 = 136446978;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteTitleFormatter.m";
    v34 = 1024;
    v35 = 25;
    v36 = 2082;
    v37 = "[MapsSuggestionsResumeRouteTitleFormatter formatTitlesForEntry:eta:requiredChargeLevel:currentChargeLevel:]";
    v38 = 2082;
    v39 = "nil == (eta)";
    v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
    goto LABEL_19;
  }

  if ([v10 type] != 11)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v32 = 136446978;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteTitleFormatter.m";
    v34 = 1024;
    v35 = 26;
    v36 = 2082;
    v37 = "[MapsSuggestionsResumeRouteTitleFormatter formatTitlesForEntry:eta:requiredChargeLevel:currentChargeLevel:]";
    v38 = 2082;
    v39 = "MapsSuggestionsEntryTypeResumeRoute != entry.type";
    v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Needs to be a Resume Route";
    goto LABEL_19;
  }

  v14 = [v10 stringForKey:@"MapsSuggestionsResumeRouteDefaultTitle"];
  if (v14)
  {
    [v12 doubleValue];
    v16 = v15;
    [v13 doubleValue];
    v18 = v17;
    v19 = [v10 BOOLeanForKey:@"MapsSuggestionsIsResumingAnEVRoute" is:0];
    if (v13 && v12 && (v19 & 1) == 0 && (![v10 BOOLeanForKey:@"MapsSuggestionsIsResumingAnEVRoute" is:1] || (v21 = v18 * 100.0, v20 = v16 * 100.0, v18 * 100.0 < v16 * 100.0)))
    {
      [v10 setBoolean:0 forKey:{@"MapsSuggestionsHasEnoughChargeKey", v20, v21}];
      v22 = [v10 stringForKey:@"MapsSuggestionsResumeRouteTitleWhenCharging"];
      v28 = [v10 stringForKey:@"MapsSuggestionsResumeRouteSubtitleWhenCharging"];
      if (v22)
      {
        v29 = GEOFindOrCreateLog();
        v30 = v29;
        if (v28)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v32 = 138412290;
            v33 = v13;
            _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_INFO, "Setting titles for EV ResumeRoute entry because the vehicle is still charging at %@", &v32, 0xCu);
          }

          v24 = 1;
          if (([(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v10 title:v22 subtitle:v28 includeLockedVersions:1]& 1) != 0)
          {
            goto LABEL_39;
          }

          [v10 setTitle:v22];
        }

        else
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v32 = 136446978;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteTitleFormatter.m";
            v34 = 1024;
            v35 = 69;
            v36 = 2082;
            v37 = "[MapsSuggestionsResumeRouteTitleFormatter formatTitlesForEntry:eta:requiredChargeLevel:currentChargeLevel:]";
            v38 = 2082;
            v39 = "nil == (chargingSubtitle)";
            _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. EV Resume Route requires a subtitle when charging", &v32, 0x26u);
          }
        }
      }

      else
      {
        v31 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = 136446978;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteTitleFormatter.m";
          v34 = 1024;
          v35 = 68;
          v36 = 2082;
          v37 = "[MapsSuggestionsResumeRouteTitleFormatter formatTitlesForEntry:eta:requiredChargeLevel:currentChargeLevel:]";
          v38 = 2082;
          v39 = "nil == (chargingTitle)";
          _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. EV Resume Route requires a title when charging", &v32, 0x26u);
        }
      }

      v24 = 0;
    }

    else
    {
      [v10 setBoolean:1 forKey:@"MapsSuggestionsHasEnoughChargeKey"];
      v22 = [v10 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
      if (v22)
      {
        v23 = [v10 uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"] + 1;
        if (v23 < [v22 waypointsCount])
        {
          v24 = 0;
LABEL_40:

          goto LABEL_21;
        }
      }

      v28 = [v11 trafficString];
      v24 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v10 title:v14 subtitle:v28 includeLockedVersions:1];
    }

LABEL_39:

    goto LABEL_40;
  }

  v27 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v32 = 136446978;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteTitleFormatter.m";
    v34 = 1024;
    v35 = 29;
    v36 = 2082;
    v37 = "[MapsSuggestionsResumeRouteTitleFormatter formatTitlesForEntry:eta:requiredChargeLevel:currentChargeLevel:]";
    v38 = 2082;
    v39 = "nil == (defaultTitle)";
    _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Resume Route requires a default title", &v32, 0x26u);
  }

LABEL_20:
  v24 = 0;
LABEL_21:

  return v24;
}

@end
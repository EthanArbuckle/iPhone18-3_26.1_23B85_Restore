@interface MapsSuggestionsResumeRouteImprover
- (BOOL)improveEntry:(id)a3;
- (id)_extractTitleAndSubtitleFromMapItem:(uint64_t)a1;
- (void)_setDecayingWeightForEntry:(uint64_t)a1;
@end

@implementation MapsSuggestionsResumeRouteImprover

- (BOOL)improveEntry:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v32 = 136446978;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteImprover.m";
      v34 = 1024;
      *v35 = 44;
      *&v35[4] = 2082;
      *&v35[6] = "[MapsSuggestionsResumeRouteImprover improveEntry:]";
      v36 = 2082;
      v37 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
      v11 = v6;
      v12 = 38;
LABEL_14:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v10, &v32, v12);
    }

LABEL_15:
    v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  if ([v4 type] == 11)
  {
    if ([v5 containsKey:@"MapsSuggestionsWhenItHappenedKey"])
    {
      v6 = [v5 geoMapItem];

      if (v6)
      {
        v7 = [v5 geoMapItem];
        v8 = [(MapsSuggestionsResumeRouteImprover *)self _extractTitleAndSubtitleFromMapItem:v7];

        if ([v8 count])
        {
          v9 = [v8 firstObject];
          [v5 setString:v9 forKey:@"MapsSuggestionsEntryTitleNameKey"];
        }

        if ([v8 count] < 2)
        {
          v6 = 0;
        }

        else
        {
          v6 = [v8 lastObject];
        }
      }

      v14 = [v5 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
      if ([v14 length])
      {
        v15 = [v5 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
        if (v15)
        {
          if ([v5 containsKey:@"MapsSuggestionsResumeRouteWaypointIndex"])
          {
            v17 = [v5 uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"] + 1;
            if (v17 < [v15 waypointsCount])
            {
              v18 = MapsSuggestionsLocalizedMultipointRouteStopsString([v15 waypointsCount]- v17);

              v6 = v18;
            }
          }
        }

        [(MapsSuggestionsResumeRouteImprover *)self _setDecayingWeightForEntry:v5];
        [v5 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
        v19 = MapsSuggestionsLocalizedTitleFormatForStandardResumeRouteEntry(v14);
        [v5 setString:v19 forKey:@"MapsSuggestionsResumeRouteDefaultTitle"];
        if (![v6 length])
        {
          v20 = v14;

          v21 = MapsSuggestionsLocalizedResumeRouteString();

          v19 = v20;
          v6 = v21;
        }

        v22 = [v5 numberForKey:@"MapsSuggestionsRequiredChargeForEVKey"];
        if (([v5 BOOLeanForKey:@"MapsSuggestionsIsResumingAnEVRoute" is:0] & 1) != 0 || !v22 || (objc_msgSend(v22, "floatValue"), v23 == 0.0))
        {
          v24 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v19 forEntry:v5];
          if (v6)
          {
            v25 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v6 forEntry:v5];
          }

          else
          {
            v25 = 0;
          }

          v13 = v24 | v25;
        }

        else
        {
          [v22 floatValue];
          v27 = MapsSuggestionsLocalizedTitleFormatForEVResumeRouteEntryWithChargePercentage(v26);
          v28 = [v5 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
          v29 = MapsSuggestionsLocalizedSubtitleFormatForEVResumeRouteEntry(v28);

          v30 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v32 = 138412546;
            v33 = v27;
            v34 = 2112;
            *v35 = v29;
            _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_INFO, "Setting title and subtitle when charging: %@, %@", &v32, 0x16u);
          }

          [v5 setString:v27 forKey:@"MapsSuggestionsResumeRouteTitleWhenCharging"];
          [v5 setString:v29 forKey:@"MapsSuggestionsResumeRouteSubtitleWhenCharging"];
          v31 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v27 forEntry:v5];
          v13 = v31 | [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v29 forEntry:v5];
        }
      }

      else
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412290;
          v33 = v5;
          _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "Entry missing a MapsSuggestionsEntryTitleNameKey: %@", &v32, 0xCu);
        }

        v13 = 0;
      }

      goto LABEL_23;
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v32 = 138412290;
      v33 = v5;
      v10 = "Entry missing a MapsSuggestionsWhenItHappenedKey: %@";
      v11 = v6;
      v12 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_24:

  return v13 & 1;
}

- (id)_extractTitleAndSubtitleFromMapItem:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 name];
    v7 = [v6 length];

    if (!v7 || ([v4 name], v8 = objc_claimAutoreleasedReturnValue(), v21 = 0, v22 = &v21, v23 = 0x3032000000, v24 = __Block_byref_object_copy__14, v25 = __Block_byref_object_dispose__14, v26 = 0, v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = ___firstLineOfString_block_invoke_1, v20[3] = &unk_1E81F6000, v20[4] = &v21, objc_msgSend(v8, "enumerateLinesUsingBlock:", v20), v7 = v22[5], _Block_object_dispose(&v21, 8), v26, v8, v8, !v7) || (v9 = v7, !objc_msgSend(v7, "length")))
    {
      v9 = MapsSuggestionsMapItemShortAddress(v4);
    }

    v10 = [v4 contactName];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v4 contactName];
    }

    else
    {
      v12 = v9;
      v9 = 0;
    }

    v13 = MapsSuggestionsMapItemHomeWorkSchoolName(v4);
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v12 = v15;
    }

    v16 = [v4 eventName];
    v17 = [v16 length];

    if (v17)
    {

      v18 = [v4 eventName];
    }

    else
    {
      v18 = v12;
      v12 = v9;
    }

    if ([v18 length])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v18, v12, 0}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_setDecayingWeightForEntry:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      GEOConfigGetDouble();
      v6 = v5;
      v7 = [v4 dateForKey:@"MapsSuggestionsWhenItHappenedKey"];
      v8 = MapsSuggestionsNow();
      [v7 timeIntervalSinceDate:v8];
      v10 = -v9;

      GEOConfigGetDouble();
      v12 = v11;
      if (v6 <= v10)
      {
        GEOConfigGetDouble();
        v15 = v14;
        GEOConfigGetDouble();
        [v4 setWeight:v12 + -(v12 - v15) / (v16 - v6) * (v10 - v6)];
      }

      else
      {
        [v4 setWeight:v11];
      }

      v13 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
      [v4 setNumber:v13 forKey:@"MapsSuggestionsSinkRankKey"];
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = 136446978;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsResumeRouteImprover.m";
        v19 = 1024;
        v20 = 23;
        v21 = 2082;
        v22 = "[MapsSuggestionsResumeRouteImprover _setDecayingWeightForEntry:]";
        v23 = 2082;
        v24 = "nil == (entry)";
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v17, 0x26u);
      }
    }
  }
}

@end
@interface MapsSuggestionsReservationImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsReservationImprover

- (BOOL)improveEntry:(id)entry
{
  v54 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v4 = entryCopy;
  if (!entryCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v46 = 136446978;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationImprover.m";
      v48 = 1024;
      v49 = 22;
      v50 = 2082;
      v51 = "[MapsSuggestionsReservationImprover improveEntry:]";
      v52 = 2082;
      v53 = "nil == (entry)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry";
      v12 = v5;
      v13 = 38;
LABEL_14:
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v11, &v46, v13);
    }

LABEL_15:
    v14 = 0;
LABEL_52:

    goto LABEL_53;
  }

  if ([entryCopy type] == 8)
  {
    if ([v4 containsKey:@"MapsSuggestionsScheduledTimeKey"])
    {
      v5 = [v4 copy];
      v6 = [v4 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      if (![v4 containsKey:@"MapsSuggestionsReservationsStatusKey"])
      {
LABEL_29:
        v19 = MapsSuggestionsNow();
        [v6 timeIntervalSinceDate:v19];
        v21 = v20;

        if ([v4 containsKey:@"MapsSuggestionsCalendarIsSharedToMeKey"])
        {
          v22 = [v4 BOOLeanForKey:@"MapsSuggestionsCalendarIsSharedToMeKey"];
        }

        else
        {
          v22 = 0;
        }

        GEOConfigGetDouble();
        v24 = v23;
        if (v22)
        {
          [v4 setWeight:v23];
        }

        GEOConfigGetDouble();
        if (v21 <= v25)
        {
          if ([v4 containsKey:@"MapsSuggestionsAlreadyThereKey"])
          {
            v29 = [v4 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"] ^ 1;
          }

          else
          {
            v29 = 1;
          }

          GEOConfigGetDouble();
          v31 = fmin(v24, v30);
          if (v22)
          {
            v30 = v31;
          }

          [v4 setWeight:v30];
          [v4 setBoolean:v29 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
          v32 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [v4 weight];
            v46 = 134217984;
            v47 = v33;
            _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "Resetting the entry's weight to %g", &v46, 0xCu);
          }
        }

        else
        {
          GEOConfigGetDouble();
          v27 = fmin(v24, v26);
          if (v22)
          {
            v26 = v27;
          }

          [v4 setWeight:v26];
          v28 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
          [v4 setNumber:v28 forKey:@"MapsSuggestionsSinkRankKey"];

          [v4 setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
        }

        v34 = v4;
        v35 = v5;
        [v34 weight];
        v37 = v36;
        [v35 weight];
        if (vabdd_f64(v37, v38) < 2.22044605e-16 && (v39 = [v34 integerForKey:@"MapsSuggestionsSinkRankKey"], v39 == -[NSObject integerForKey:](v35, "integerForKey:", @"MapsSuggestionsSinkRankKey")) && (v40 = objc_msgSend(v34, "containsKey:", @"MapsSuggestionsNeedsETATrackingKey"), v40 == -[NSObject containsKey:](v35, "containsKey:", @"MapsSuggestionsNeedsETATrackingKey")) && (v41 = objc_msgSend(v34, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey"), v41 == -[NSObject BOOLeanForKey:](v35, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey")))
        {
          undecoratedSubtitle = [v4 undecoratedSubtitle];
          undecoratedSubtitle2 = [v5 undecoratedSubtitle];
          v45 = [undecoratedSubtitle isEqualToString:undecoratedSubtitle2];

          v14 = v45 ^ 1;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_52;
      }

      v7 = [v4 integerForKey:@"MapsSuggestionsReservationsStatusKey"];
      v8 = v6;
      v9 = v8;
      if (v7 <= 1)
      {
        if (!v7)
        {
LABEL_24:

          undecoratedSubtitle3 = [v4 undecoratedSubtitle];
          if ([undecoratedSubtitle3 isEqualToString:v7])
          {
          }

          else
          {
            v18 = [v7 length];

            if (v18)
            {
              [v4 setUndecoratedSubtitle:v7];
            }
          }

          goto LABEL_29;
        }

        if (v7 == 1)
        {
          v10 = NSStringFromMapsSuggestionsEventTime(v8);
          v7 = MapsSuggestionsLocalizedRestaurantReservationStringConfirmed(v10);

          goto LABEL_24;
        }

LABEL_19:
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v46 = 136446978;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationImprover.m";
          v48 = 1024;
          v49 = 95;
          v50 = 2082;
          v51 = "NSString *_subtitleForReservation(MapsSuggestionsRestaurantReservationStatus, NSDate *__strong)";
          v52 = 2082;
          v53 = "YES";
          _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsRestaurantReservationStatus!", &v46, 0x26u);
        }

        v7 = @"UnsupportedType";
        goto LABEL_24;
      }

      if (v7 == 2)
      {
        v15 = MapsSuggestionsLocalizedRestaurantReservationStringCancelled();
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_19;
        }

        v15 = MapsSuggestionsLocalizedRestaurantReservationStringPending();
      }

      v7 = v15;
      goto LABEL_24;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = v4;
      v11 = "Entry didn't have a MapsSuggestionsScheduledTimeKey: %@";
      v12 = v5;
      v13 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v14 = 0;
LABEL_53:

  return v14;
}

@end
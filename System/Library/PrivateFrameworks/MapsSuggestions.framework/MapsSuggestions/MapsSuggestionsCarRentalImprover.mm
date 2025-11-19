@interface MapsSuggestionsCarRentalImprover
- (BOOL)improveEntry:(id)a3;
@end

@implementation MapsSuggestionsCarRentalImprover

- (BOOL)improveEntry:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCarRentalImprover.m";
      *&buf[12] = 1024;
      *&buf[14] = 21;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsCarRentalImprover improveEntry:]";
      *&buf[28] = 2082;
      *&buf[30] = "entry == nil";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", buf, 0x26u);
    }

    v11 = 0;
    goto LABEL_40;
  }

  if ([v4 type] == 14)
  {
    v6 = [v5 BOOLeanForKey:@"MapsSuggestionsCalendarCarRentalIsPickupDayKey"];
    v7 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    v8 = NSStringFromMapsSuggestionsEventTime(v7);
    if ([v8 length])
    {
      if ([v5 containsKey:@"MapsSuggestionsEntryTitleNameKey"])
      {
        v9 = [v5 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
        v10 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v9 forEntry:v5];
      }

      else
      {
        v10 = 0;
      }

      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = @"isDropoffDay = YES";
        if (v6)
        {
          v14 = @"isPickupDay = YES";
        }

        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "%@. Time = %@.", buf, 0x16u);
      }

      if (v6)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___MapsSuggestionsBundle_block_invoke;
        *&buf[24] = &__block_descriptor_40_e5_v8__0l;
        *&buf[32] = "CarRentalImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken, buf);
        }

        v15 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier;
        v16 = @"MAPS_SUGGESTIONS_CAR_RENTAL_PICKUP_STRING";
        v17 = @"Pick up from %@<unlocalized>";
      }

      else
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___MapsSuggestionsBundle_block_invoke;
        *&buf[24] = &__block_descriptor_40_e5_v8__0l;
        *&buf[32] = "CarRentalImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken, buf);
        }

        v15 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier;
        v16 = @"MAPS_SUGGESTIONS_CAR_RENTAL_DROPOFF_STRING";
        v17 = @"Drop off by %@<unlocalized>";
      }

      v18 = [v15 localizedStringForKey:v16 value:v17 table:0];
      v12 = MapsSuggestionsNonNilString(v18, &stru_1F444C108);

      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12, v8];
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "Subtitle from the Car Rental Improver = %@", buf, 0xCu);
      }

      v21 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v19 forEntry:v5];
      if ([v5 BOOLeanForKey:@"MapsSuggestionsAlreadyLocalizedKey"])
      {
        v11 = v10 | v21;
      }

      else
      {
        v11 = 1;
        [v5 setBoolean:1 forKey:@"MapsSuggestionsAlreadyLocalizedKey"];
      }

      if ([v5 containsKey:@"MapsSuggestionsAlreadyThereKey"])
      {
        v22 = [v5 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"] ^ 1;
      }

      else
      {
        v22 = 1;
      }

      if ([v5 containsKey:@"MapsSuggestionsCalendarIsSharedToMeKey"] && objc_msgSend(v5, "BOOLeanForKey:", @"MapsSuggestionsCalendarIsSharedToMeKey"))
      {
        GEOConfigGetDouble();
        [v5 setWeight:?];
        v11 = 1;
      }

      if (v22 != [v5 BOOLeanForKey:@"MapsSuggestionsNeedsETATrackingKey"])
      {
        v11 = 1;
        [v5 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
      }
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "timeOfAction is zero. MapsSuggestionsScheduledTimeKey on the entry should have had a value", buf, 2u);
      }

      v11 = 0;
    }

LABEL_40:
    goto LABEL_41;
  }

  v11 = 0;
LABEL_41:

  return v11;
}

@end
@interface MapsSuggestionsFrequentLocationImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsFrequentLocationImprover

- (BOOL)improveEntry:(id)entry
{
  v21 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy)
  {
    geoMapItem2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(geoMapItem2, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136446978;
      *&v20[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFrequentLocationImprover.m";
      *&v20[12] = 1024;
      *&v20[14] = 27;
      *&v20[18] = 2082;
      *&v20[20] = "[MapsSuggestionsFrequentLocationImprover improveEntry:]";
      *&v20[28] = 2082;
      *&v20[30] = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, geoMapItem2, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", v20, 0x26u);
    }

    LOBYTE(v13) = 0;
    goto LABEL_27;
  }

  if ([entryCopy type] == 4)
  {
    geoMapItem = [v5 geoMapItem];

    if (geoMapItem)
    {
      geoMapItem2 = [v5 geoMapItem];
      v8 = [v5 stringForKey:@"MapsSuggestionsCoreRoutineLabel"];
      v9 = MapsSuggestionsMapItemCityName(geoMapItem2);
      if (![v8 length] && -[NSObject _hasMUID](geoMapItem2, "_hasMUID") && -[NSObject _muid](geoMapItem2, "_muid"))
      {
        name = [geoMapItem2 name];

        v8 = name;
      }

      v11 = MapsSuggestionsMapItemStreetName(geoMapItem2);
      if ([v8 length] || !objc_msgSend(v11, "length"))
      {
        v12 = 0;
      }

      else
      {
        v14 = v11;

        v12 = MapsSuggestionsLocalizedFrequentLocationNearStreetTitleString(v14);
        *v20 = MEMORY[0x1E69E9820];
        *&v20[8] = 3221225472;
        *&v20[16] = ___MapsSuggestionsBundle_block_invoke_1;
        *&v20[24] = &__block_descriptor_40_e5_v8__0l;
        *&v20[32] = "FrequentLocationImprover";
        if (_MapsSuggestionsBundle_s_msgBundleToken_1 != -1)
        {
          dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_1, v20);
        }

        v15 = [_MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_1 localizedStringForKey:@"MAPS_SUGG_FREQ_LOC_SUBTITLE" value:@"Significant Location<unlocalized>" table:{0, *v20, *&v20[8], *&v20[24], v21}];
        v16 = MapsSuggestionsNonNilString(v15, &stru_1F444C108);

        v8 = v14;
        v9 = v16;
      }

      [v5 setString:v8 forKey:@"MapsSuggestionsFrequentLocationTitleWithoutNearKey"];
      if ([v9 length])
      {
        v13 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v9 forEntry:v5];
      }

      else
      {
        v13 = 0;
      }

      if ([v12 length])
      {
        v13 |= [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v12 forEntry:v5];
      }

      if (![v5 containsKey:@"MapsSuggestionsNeedsETATrackingKey"] || (objc_msgSend(v5, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey") & 1) == 0)
      {
        LOBYTE(v13) = 1;
        [v5 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
      }

      v17 = MapsSuggestionsLocalizedHideInMapsString();
      [v5 setString:v17 forKey:@"MapsSuggestionsRemovalBehaviorStringForHide"];

      v18 = MapsSuggestionsLocalizedForgetMyVisitsString();
      [v5 setString:v18 forKey:@"MapsSuggestionsRemovalBehaviorStringForForget"];

LABEL_27:
      goto LABEL_28;
    }
  }

  LOBYTE(v13) = 0;
LABEL_28:

  return v13;
}

@end
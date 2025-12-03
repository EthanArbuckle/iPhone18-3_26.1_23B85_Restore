@interface MapsSuggestionsFlightTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
@end

@implementation MapsSuggestionsFlightTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v54 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  if ([entryCopy type] == 15)
  {
    if (formatTitlesForEntry_eta__s_onceToken == -1)
    {
      if (etaCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [MapsSuggestionsFlightTitleFormatter formatTitlesForEntry:eta:];
      if (etaCopy)
      {
        goto LABEL_10;
      }
    }

    if ([entryCopy containsKey:@"MapsSuggestionsETAKey"])
    {
      etaCopy = [entryCopy ETAForKey:@"MapsSuggestionsETAKey"];
    }

    else
    {
      etaCopy = 0;
    }

LABEL_10:
    if ([entryCopy containsKey:@"MapsSuggestionsFlightStatusKey"])
    {
      v10 = [entryCopy stringForKey:@"MapsSuggestionsFlightStatusKey"];
      if ([v10 length])
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = entryCopy;
    if ([v12 containsKey:@"MapsSuggestionsFlightFullTargetAirportKey"] && (objc_msgSend(v12, "BOOLeanForKey:is:", @"MapsSuggestionsFlightMapItemIsTerminalKey", 1) & 1) != 0)
    {
      v13 = @"MapsSuggestionsFlightFullTargetAirportKey";
    }

    else
    {
      v13 = @"MapsSuggestionsEntryTitleNameKey";
    }

    v14 = [v12 stringForKey:v13];

    v15 = v14;
    LODWORD(v16) = MapsSuggestionsFlightUpdateAlreadyThere(v12);
    if (v16)
    {
      if ([v12 hasFullFlightInfoAndGate])
      {
        v17 = [v12 stringForKey:@"MapsSuggestionsFlightDepartureGateKey"];
        v18 = [v12 stringForKey:@"MapsSuggestionsFullFlightNumberKey"];
        v44 = MapsSuggestionsLocalizedFlightGate(v17);

        [v12 dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
        v19 = v16;
        v16 = v15;
        v21 = v20 = self;
        v22 = MapsSuggestionsLocalizedFlightDepatureTime(v18, v21);
        v23 = v11;
        v11 = v22;

        self = v20;
        v15 = v16;
        LOBYTE(v16) = v19;
        v24 = v44;

        trafficString = 0;
LABEL_28:

LABEL_30:
        v28 = v11;
        subtitle = [v12 subtitle];
        if (subtitle)
        {
          v30 = subtitle;
          [v12 subtitle];
          v43 = v16;
          v32 = v31 = self;
          v45 = v12;
          v33 = trafficString;
          v34 = entryCopy;
          v35 = v24;
          v36 = v15;
          v37 = etaCopy;
          v38 = [v32 length] | v28;

          self = v31;
          v39 = v38 == 0;
          etaCopy = v37;
          v15 = v36;
          v24 = v35;
          entryCopy = v34;
          trafficString = v33;
          v12 = v45;
          v40 = v43;
          if (!v39)
          {
            v40 = 1;
          }
        }

        else if (v28)
        {
          v40 = 1;
        }

        else
        {
          v40 = v16;
        }

        v41 = v28;
        if ((v40 & 1) == 0)
        {
          v41 = trafficString;
          v28 = 0;
        }

        v9 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:v12 title:v24 subtitle:v41 includeLockedVersions:1];

        goto LABEL_39;
      }
    }

    else if (etaCopy)
    {
      [etaCopy seconds];
      v27 = NSStringFromMapsSuggestionsShortETA(v26);
      v17 = v27;
      v24 = v15;
      if (v27)
      {
        v24 = v15;
        if (formatTitlesForEntry_eta__s_fmtStringETA)
        {
          v24 = MapsSuggestionsLocalizedFlightETAString(v27, v15);
        }
      }

      trafficString = [etaCopy trafficString];
      goto LABEL_28;
    }

    trafficString = 0;
    v24 = v15;
    goto LABEL_30;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlightTitleFormatter.m";
    v48 = 1024;
    v49 = 37;
    v50 = 2082;
    v51 = "[MapsSuggestionsFlightTitleFormatter formatTitlesForEntry:eta:]";
    v52 = 2082;
    v53 = "MapsSuggestionsEntryTypeTravelFlight != entry.type";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a TravelFlight entry", buf, 0x26u);
  }

  v9 = 0;
LABEL_39:

  return v9;
}

void __64__MapsSuggestionsFlightTitleFormatter_formatTitlesForEntry_eta___block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_0;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "FlightTitleFormatter";
  if (_MapsSuggestionsBundle_s_msgBundleToken_0 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_0, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_0;
  v1 = [v0 localizedStringForKey:@"MAPS_ETA_TO" value:@"%@ to %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);
  v3 = formatTitlesForEntry_eta__s_fmtStringETA;
  formatTitlesForEntry_eta__s_fmtStringETA = v2;
}

@end
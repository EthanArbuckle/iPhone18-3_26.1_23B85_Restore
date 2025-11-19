@interface GEORouteAttributes(MNExtras)
+ (id)defaultRouteAttributesForTransportType:()MNExtras;
- (id)_userPreferences;
- (id)_vehicleSpecifications;
- (id)anyDate;
- (id)arriveByDate;
- (id)departAtDate;
- (uint64_t)_automobileOptions;
- (uint64_t)supportsDirections;
- (uint64_t)supportsTurnByTurnNavigation;
@end

@implementation GEORouteAttributes(MNExtras)

- (id)_userPreferences
{
  v1 = [a1 _automobileOptions];
  v2 = [v1 userPreferences];

  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2708]);
    [v1 setUserPreferences:v3];
  }

  v4 = [v1 userPreferences];

  return v4;
}

- (id)_vehicleSpecifications
{
  v1 = [a1 _automobileOptions];
  v2 = [v1 vehicleSpecifications];

  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2740]);
    [v1 setVehicleSpecifications:v3];
  }

  v4 = [v1 vehicleSpecifications];

  return v4;
}

- (uint64_t)_automobileOptions
{
  v2 = [a1 automobileOptions];

  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1B90]);
    [a1 setAutomobileOptions:v3];
  }

  return [a1 automobileOptions];
}

- (id)anyDate
{
  [a1 timepoint];

  return 0;
}

- (id)arriveByDate
{
  [a1 timepoint];
  if (v4 == 1)
  {
    v2 = [a1 anyDate];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)departAtDate
{
  [a1 timepoint];
  if (v4)
  {
    v2 = 0;
  }

  else
  {
    v2 = [a1 anyDate];
  }

  return v2;
}

- (uint64_t)supportsTurnByTurnNavigation
{
  result = [a1 supportsDirections];
  if (result)
  {
    v3 = [a1 phoneticLocaleIdentifier];
    v4 = [v3 length];

    if (v4)
    {
      result = [a1 includePhonetics];
      if (result)
      {
        if ([a1 uiContextsCount])
        {
          v5 = 0;
          while (1)
          {
            v6 = [a1 uiContextAtIndex:v5];
            if ((v6 & 4) == 0)
            {
              break;
            }

            if (++v5 >= [a1 uiContextsCount])
            {
              return 1;
            }
          }

          return (v6 >> 2) & 1;
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)supportsDirections
{
  if ([a1 mainTransportType] == 4)
  {
    return 0;
  }

  if (([a1 includeRoutingPathLeg] & 1) != 0 || (result = objc_msgSend(a1, "includeZilchPoints"), result))
  {
    result = [a1 includeManeuverIcons];
    if (result)
    {
      result = [a1 uiContextsCount];
      if (result)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          v3 |= 1 << ([a1 uiContextAtIndex:v4++] - 1);
        }

        while (v4 < [a1 uiContextsCount]);
        return (~v3 & 3) == 0;
      }
    }
  }

  return result;
}

+ (id)defaultRouteAttributesForTransportType:()MNExtras
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A2500] defaultRouteAttributes];
  [v4 setMainTransportType:a3];
  if (a3 == 1)
  {
    BOOL = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E69A1A08];
    v7 = *(MEMORY[0x1E69A1A08] + 8);
    BOOL = GEOConfigGetBOOL();
  }

  [v4 setIncludeRoutingPathLeg:BOOL];
  v8 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v9 = [v8 currentCountrySupportsNavigation];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 _navigation_isNavd];

    if (v11)
    {
      +[MNUserOptionsEngine sharedInstance];
    }

    else
    {
      +[MNNavigationService sharedService];
    }
    v12 = ;
    v13 = [v12 currentVoiceLanguage];
    [v4 setPhoneticLocaleIdentifier:v13];

    v14 = [v4 phoneticLocaleIdentifier];

    if (!v14)
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315906;
        v22 = "+[GEORouteAttributes(MNExtras) defaultRouteAttributesForTransportType:]";
        v23 = 2080;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEORouteAttributes+MNExtras.m";
        v25 = 1024;
        v26 = 80;
        v27 = 2080;
        v28 = "attributes.phoneticLocaleIdentifier != nil";
        _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v21, 0x26u);
      }
    }

    [v4 setIncludeContingencyRoutes:1];
    [v4 setIncludePhonetics:1];
    v15 = [MEMORY[0x1E695DF58] currentLocale];
    [v4 setUseMetricThreshold:{objc_msgSend(v15, "_navigation_distanceUsesMetricSystem")}];

    if ((a3 - 2) >= 2)
    {
      if (a3 == 1)
      {
LABEL_16:
        v16 = objc_alloc_init(MEMORY[0x1E69A2668]);
        [v16 setPrioritization:0];
        if (GEOConfigGetBOOL())
        {
          [v16 setRoutingBehavior:1];
        }

        [v4 setTransitOptions:v16];
        goto LABEL_25;
      }

      if (a3)
      {
        goto LABEL_26;
      }
    }

    [v4 addUiContext:4];
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69A2770]);
      [v16 setAvoidHills:0];
      [v16 setAvoidStairs:0];
      [v16 setAvoidBusyRoads:0];
      v17 = objc_alloc_init(MEMORY[0x1E69A2768]);
      [v17 setWalkingUserPreferences:v16];
      [v4 setWalkingOptions:v17];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_26;
      }

      v16 = objc_alloc_init(MEMORY[0x1E69A1CE8]);
      [v16 setAvoidStairs:0];
      [v16 setAvoidHills:0];
      [v16 setAvoidBusyRoads:0];
      v17 = objc_alloc_init(MEMORY[0x1E69A1CE0]);
      [v17 setCyclingUserPreferences:v16];
      [v4 setCyclingOptions:v17];
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    v16 = objc_alloc_init(MEMORY[0x1E69A1B90]);
    [v16 setIncludeHistoricTravelTime:1];
    [v16 setTrafficType:3];
    [v4 setAutomobileOptions:v16];
  }

LABEL_25:

LABEL_26:
  [v4 setRoutePointTypeForTransportType:a3];
  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
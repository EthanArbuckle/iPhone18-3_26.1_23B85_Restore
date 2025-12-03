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
  _automobileOptions = [self _automobileOptions];
  userPreferences = [_automobileOptions userPreferences];

  if (!userPreferences)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2708]);
    [_automobileOptions setUserPreferences:v3];
  }

  userPreferences2 = [_automobileOptions userPreferences];

  return userPreferences2;
}

- (id)_vehicleSpecifications
{
  _automobileOptions = [self _automobileOptions];
  vehicleSpecifications = [_automobileOptions vehicleSpecifications];

  if (!vehicleSpecifications)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2740]);
    [_automobileOptions setVehicleSpecifications:v3];
  }

  vehicleSpecifications2 = [_automobileOptions vehicleSpecifications];

  return vehicleSpecifications2;
}

- (uint64_t)_automobileOptions
{
  automobileOptions = [self automobileOptions];

  if (!automobileOptions)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1B90]);
    [self setAutomobileOptions:v3];
  }

  return [self automobileOptions];
}

- (id)anyDate
{
  [self timepoint];

  return 0;
}

- (id)arriveByDate
{
  [self timepoint];
  if (v4 == 1)
  {
    anyDate = [self anyDate];
  }

  else
  {
    anyDate = 0;
  }

  return anyDate;
}

- (id)departAtDate
{
  [self timepoint];
  if (v4)
  {
    anyDate = 0;
  }

  else
  {
    anyDate = [self anyDate];
  }

  return anyDate;
}

- (uint64_t)supportsTurnByTurnNavigation
{
  result = [self supportsDirections];
  if (result)
  {
    phoneticLocaleIdentifier = [self phoneticLocaleIdentifier];
    v4 = [phoneticLocaleIdentifier length];

    if (v4)
    {
      result = [self includePhonetics];
      if (result)
      {
        if ([self uiContextsCount])
        {
          v5 = 0;
          while (1)
          {
            v6 = [self uiContextAtIndex:v5];
            if ((v6 & 4) == 0)
            {
              break;
            }

            if (++v5 >= [self uiContextsCount])
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
  if ([self mainTransportType] == 4)
  {
    return 0;
  }

  if (([self includeRoutingPathLeg] & 1) != 0 || (result = objc_msgSend(self, "includeZilchPoints"), result))
  {
    result = [self includeManeuverIcons];
    if (result)
    {
      result = [self uiContextsCount];
      if (result)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          v3 |= 1 << ([self uiContextAtIndex:v4++] - 1);
        }

        while (v4 < [self uiContextsCount]);
        return (~v3 & 3) == 0;
      }
    }
  }

  return result;
}

+ (id)defaultRouteAttributesForTransportType:()MNExtras
{
  v29 = *MEMORY[0x1E69E9840];
  defaultRouteAttributes = [MEMORY[0x1E69A2500] defaultRouteAttributes];
  [defaultRouteAttributes setMainTransportType:a3];
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

  [defaultRouteAttributes setIncludeRoutingPathLeg:BOOL];
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  currentCountrySupportsNavigation = [mEMORY[0x1E69A1CD8] currentCountrySupportsNavigation];

  if (currentCountrySupportsNavigation)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    _navigation_isNavd = [processInfo _navigation_isNavd];

    if (_navigation_isNavd)
    {
      +[MNUserOptionsEngine sharedInstance];
    }

    else
    {
      +[MNNavigationService sharedService];
    }
    v12 = ;
    currentVoiceLanguage = [v12 currentVoiceLanguage];
    [defaultRouteAttributes setPhoneticLocaleIdentifier:currentVoiceLanguage];

    phoneticLocaleIdentifier = [defaultRouteAttributes phoneticLocaleIdentifier];

    if (!phoneticLocaleIdentifier)
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

    [defaultRouteAttributes setIncludeContingencyRoutes:1];
    [defaultRouteAttributes setIncludePhonetics:1];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [defaultRouteAttributes setUseMetricThreshold:{objc_msgSend(currentLocale, "_navigation_distanceUsesMetricSystem")}];

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

        [defaultRouteAttributes setTransitOptions:v16];
        goto LABEL_25;
      }

      if (a3)
      {
        goto LABEL_26;
      }
    }

    [defaultRouteAttributes addUiContext:4];
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
      [defaultRouteAttributes setWalkingOptions:v17];
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
      [defaultRouteAttributes setCyclingOptions:v17];
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
    [defaultRouteAttributes setAutomobileOptions:v16];
  }

LABEL_25:

LABEL_26:
  [defaultRouteAttributes setRoutePointTypeForTransportType:a3];
  v18 = *MEMORY[0x1E69E9840];

  return defaultRouteAttributes;
}

@end
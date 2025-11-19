@interface NavdRouteHypothesisUserPreferencesProvider
- (id)currentTransitOptions;
- (id)currentUserPreferences;
@end

@implementation NavdRouteHypothesisUserPreferencesProvider

- (id)currentUserPreferences
{
  v2 = objc_alloc_init(GEOUserPreferences);
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  v5 = [v4 path];

  [v2 setAvoidTolls:_CFPreferencesGetAppBooleanValueWithContainer() != 0];
  [v2 setAvoidHighways:_CFPreferencesGetAppBooleanValueWithContainer() != 0];

  return v2;
}

- (id)currentTransitOptions
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  v4 = [v3 path];
  v5 = _CFPreferencesCopyAppValueWithContainer();

  v6 = [v5 integerValue] & 0xF;
  if (v6)
  {
    v7 = objc_alloc_init(GEOTransitOptions);
    v8 = NavigationConfig_DebugNavigationIncludeRealtimeUpdates[1];
    if (GEOConfigGetBOOL())
    {
      [v7 setRoutingBehavior:1];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = sub_10000DAEC(v6);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v7 addAvoidedMode:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "integerValue", v15)}];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
@interface TransitPreferences
+ (BOOL)isModeDisabled:(unint64_t)a3 inUserDefaults:(id)a4;
+ (unint64_t)disabledModesByTogglingMode:(unint64_t)a3 inModes:(unint64_t)a4;
+ (void)toggleMode:(unint64_t)a3 inUserDefaults:(id)a4;
- (BOOL)isModeDisabled:(unint64_t)a3;
- (TransitPreferences)initWithCopy:(id)a3;
- (TransitPreferences)initWithTransitOptions:(id)a3 defaults:(id)a4;
- (id)_values;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)transitOptions;
- (void)_copyPropertiesTo:(id)a3;
- (void)loadValuesFromDefaults;
@end

@implementation TransitPreferences

- (id)transitOptions
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(GEOTransitOptions);
    [v2 setPrioritization:{objc_msgSend(v1, "sortOption")}];
    v3 = objc_alloc_init(GEOFareOptions);
    [v3 setPaymentType:{objc_msgSend(v1, "showICFares")}];
    v4 = [v1 surchargeOption];

    if (v4)
    {
      v5 = [v1 surchargeOption];
      [v3 setPreferredSurchargeType:{objc_msgSend(v5, "integerValue")}];
    }

    [v2 setFareOptions:v3];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = sub_10001C5E0([v1 disabledModes]);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v2 addAvoidedMode:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "integerValue")}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = NavigationConfig_DebugNavigationIncludeRealtimeUpdates[1];
    if (GEOConfigGetBOOL())
    {
      [v2 setRoutingBehavior:1];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (TransitPreferences)initWithTransitOptions:(id)a3 defaults:(id)a4
{
  v6 = a3;
  v7 = [(WatchSyncedPreferences *)self initWithDefaults:a4];
  if (v7)
  {
    -[TransitPreferences setSortOption:](v7, "setSortOption:", [v6 prioritization]);
    v8 = [v6 fareOptions];
    v9 = v8;
    if (v8)
    {
      -[TransitPreferences setShowICFares:](v7, "setShowICFares:", [v8 paymentType] == 1);
      if ([v9 hasPreferredSurchargeType])
      {
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 preferredSurchargeType]);
        [(TransitPreferences *)v7 setSurchargeOption:v10];
      }
    }

    if ([v6 avoidedModesCount])
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = [v6 avoidedModeAtIndex:v11];
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 == 2)
            {
              v12 |= 4uLL;
            }

            goto LABEL_19;
          }
        }

        else if (v13 != 3)
        {
          v14 = v12 | 1;
          if (v13 != 4)
          {
            v14 = v12;
          }

          if (v13 == 5)
          {
            v12 |= 8uLL;
          }

          else
          {
            v12 = v14;
          }

          goto LABEL_19;
        }

        v12 |= 2uLL;
LABEL_19:
        if (++v11 >= [v6 avoidedModesCount])
        {
          goto LABEL_22;
        }
      }
    }

    v12 = 0;
LABEL_22:
    [(TransitPreferences *)v7 setDisabledModes:v12];
  }

  return v7;
}

- (TransitPreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TransitPreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        [v4 _copyPropertiesTo:v5];
      }
    }
  }

  return v5;
}

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  -[TransitPreferences setDisabledModes:](self, "setDisabledModes:", [v3 integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF);

  v4 = [(WatchSyncedPreferences *)self defaults];
  -[TransitPreferences setSortOption:](self, "setSortOption:", [v4 integerForKey:@"MapsTransitSortOption"]);

  v5 = [(WatchSyncedPreferences *)self defaults];
  v6 = [v5 objectForKey:@"MapsTransitSurchargeOption"];
  [(TransitPreferences *)self setSurchargeOption:v6];

  v7 = [(WatchSyncedPreferences *)self defaults];
  v9 = [v7 objectForKey:@"MapsTransitShowICFaresKey"];

  if (v9)
  {
    v8 = [v9 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  [(TransitPreferences *)self setShowICFares:v8];
}

- (id)_values
{
  v3 = [NSNumber numberWithUnsignedInteger:[(TransitPreferences *)self disabledModes]];
  v10[0] = v3;
  v4 = [NSNumber numberWithInt:[(TransitPreferences *)self sortOption]];
  v10[1] = v4;
  v5 = [(TransitPreferences *)self surchargeOption];
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v10[2] = v6;
  v7 = [NSNumber numberWithBool:[(TransitPreferences *)self showICFares]];
  v10[3] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:4];

  if (!v5)
  {
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TransitMutablePreferences allocWithZone:a3];
  v5 = [(WatchSyncedPreferences *)self defaults];
  v6 = [(WatchSyncedPreferences *)v4 initWithDefaults:v5];

  [(TransitPreferences *)self _copyPropertiesTo:v6];
  return v6;
}

- (void)_copyPropertiesTo:(id)a3
{
  v5 = a3;
  [v5 setDisabledModes:{-[TransitPreferences disabledModes](self, "disabledModes")}];
  [v5 setSortOption:{-[TransitPreferences sortOption](self, "sortOption")}];
  v4 = [(TransitPreferences *)self surchargeOption];
  [v5 setSurchargeOption:v4];

  [v5 setShowICFares:{-[TransitPreferences showICFares](self, "showICFares")}];
}

- (BOOL)isModeDisabled:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(TransitPreferences *)self disabledModes];

  return [v5 isModeDisabled:a3 inModes:v6];
}

+ (unint64_t)disabledModesByTogglingMode:(unint64_t)a3 inModes:(unint64_t)a4
{
  if ((a4 & a3) != 0)
  {
    return a4 & ~a3;
  }

  else
  {
    return a4 | a3;
  }
}

+ (BOOL)isModeDisabled:(unint64_t)a3 inUserDefaults:(id)a4
{
  v6 = [a4 integerForKey:@"DefaultDisabledTransitModesKey"] & 0xF;

  return [a1 isModeDisabled:a3 inModes:v6];
}

+ (void)toggleMode:(unint64_t)a3 inUserDefaults:(id)a4
{
  v6 = a4;
  v7 = [a1 disabledModesByTogglingMode:a3 inModes:{objc_msgSend(v6, "integerForKey:", @"DefaultDisabledTransitModesKey"}];
  [v6 setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];

  v8 = +[NSUserDefaults __maps_groupUserDefaults];
  [v8 setInteger:v7 forKey:@"DefaultDisabledTransitModesKey"];
}

@end
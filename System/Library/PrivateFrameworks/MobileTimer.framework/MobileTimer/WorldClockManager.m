@interface WorldClockManager
+ (id)sharedManager;
- (BOOL)canAddCity;
- (BOOL)checkIfCitiesModified;
- (WorldClockManager)initWithPreferences:(id)a3;
- (id)allCities;
- (id)citiesMatchingIdentifiers:(id)a3;
- (id)citiesMatchingName:(id)a3;
- (id)cityWithIdUrl:(id)a3;
- (id)closestCityToLocation:(id)a3 matchingTimeZone:(id)a4;
- (id)closestCityToLocation:(id)a3 matchingTimeZone:(id)a4 requireTimeZoneEquivalence:(BOOL)a5;
- (id)fixUpCityProperties:(id)a3;
- (id)updateALDataWithCity:(id)a3;
- (id)updatedDataForCityWithID:(id)a3;
- (id)updatedTimezoneForCityWithID:(id)a3;
- (id)worldClockCityFromPersistenceArray:(id)a3;
- (id)worldClockCityFromPersistenceDictionary:(id)a3;
- (id)worldClockCityFromPersistenceRepresentation:(id)a3;
- (unint64_t)addCity:(id)a3;
- (void)_notifyNano;
- (void)addDefaultCitiesIfNeeded;
- (void)loadCities;
- (void)moveCityFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)pushCityPropertiesToPreferences;
- (void)saveCities;
@end

@implementation WorldClockManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WorldClockManager sharedManager];
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

void __34__WorldClockManager_sharedManager__block_invoke()
{
  v2 = objc_alloc_init(WorldClockPreferences);
  v0 = [[WorldClockManager alloc] initWithPreferences:v2];
  v1 = sharedManager__sharedManager;
  sharedManager__sharedManager = v0;
}

- (WorldClockManager)initWithPreferences:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WorldClockManager;
  v6 = [(WorldClockManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, a3);
    v8 = v7;
  }

  return v7;
}

- (void)loadCities
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WorldClockPreferences *)self->_defaults lastModified];
  [(WorldClockManager *)self setLastModified:v3];

  v4 = [(WorldClockPreferences *)self->_defaults cities];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  cities = self->_cities;
  self->_cities = v6;

  v8 = [(WorldClockPreferences *)self->_defaults cityDataNeedsUpdate];
  v9 = MTLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = self;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ loading cities, needs city data update: %d", &v17, 0x12u);
  }

  if ([(NSMutableArray *)self->_cities count])
  {
    if ([(NSMutableArray *)self->_cities count]>= 1)
    {
      v10 = 0;
      do
      {
        v11 = [(NSMutableArray *)self->_cities objectAtIndex:v10];
        v12 = [(WorldClockManager *)self worldClockCityFromPersistenceRepresentation:v11];
        if (v8)
        {
          v13 = [(WorldClockManager *)self updateALDataWithCity:v12];

          v12 = v13;
        }

        v14 = self->_cities;
        if (v12)
        {
          [(NSMutableArray *)v14 replaceObjectAtIndex:v10++ withObject:v12];
        }

        else
        {
          [(NSMutableArray *)v14 removeObjectAtIndex:v10];
        }
      }

      while (v10 < [(NSMutableArray *)self->_cities count]);
    }
  }

  else
  {
    [(WorldClockManager *)self addDefaultCitiesIfNeeded];
  }

  if (self->_dirty || v8)
  {
    [(WorldClockManager *)self pushCityPropertiesToPreferences];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"com.apple.mobiletimer.user-preferences-dirty" object:0];

    self->_dirty = 0;
    [(WorldClockPreferences *)self->_defaults cityDataUpdated];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)updateALDataWithCity:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = [a3 alCityId];
  v6 = [v5 stringValue];
  v7 = [v4 arrayWithObjects:{v6, 0}];
  v8 = [(WorldClockManager *)self citiesMatchingIdentifiers:v7];
  v9 = [v8 firstObject];

  return v9;
}

- (id)updatedTimezoneForCityWithID:(id)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];
  v5 = [(WorldClockManager *)self citiesMatchingIdentifiers:v4];
  v6 = [v5 firstObject];
  v7 = [v6 timeZone];

  return v7;
}

- (id)updatedDataForCityWithID:(id)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];
  v5 = [(WorldClockManager *)self citiesMatchingIdentifiers:v4];
  v6 = [v5 firstObject];

  v7 = [MTUtilities mtCityFromWorldClockCity:v6];

  return v7;
}

- (void)saveCities
{
  v3 = [(WorldClockManager *)self cities];

  if (v3)
  {
    [(WorldClockManager *)self pushCityPropertiesToPreferences];
    v4 = [MEMORY[0x1E695DF00] date];
    [(WorldClockManager *)self setLastModified:v4];

    defaults = self->_defaults;
    v6 = [(WorldClockManager *)self lastModified];
    [(WorldClockPreferences *)defaults setLastModified:v6];

    [(WorldClockPreferences *)self->_defaults synchronize];
    [(WorldClockManager *)self _notifyNano];
    [ClockManager saveAndNotifyForUserPreferences:1 localNotifications:1];
    self->_dirty = 0;
  }
}

- (id)allCities
{
  v2 = [MEMORY[0x1E698B670] sharedManager];
  v3 = [v2 allCities];

  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__WorldClockManager_allCities__block_invoke;
  v8[3] = &unk_1E7B0E0F0;
  v9 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __30__WorldClockManager_allCities__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[WorldClockCity alloc] initWithALCity:v3];

  [v2 addObject:v4];
}

- (id)worldClockCityFromPersistenceRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WorldClockManager *)self worldClockCityFromPersistenceDictionary:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WorldClockManager *)self worldClockCityFromPersistenceArray:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)worldClockCityFromPersistenceArray:(id)a3
{
  v3 = MEMORY[0x1E698B670];
  v4 = a3;
  v5 = [v3 sharedManager];
  v6 = [v5 bestCityForLegacyCity:v4];

  if (v6)
  {
    v7 = [[WorldClockCity alloc] initWithALCity:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)worldClockCityFromPersistenceDictionary:(id)a3
{
  v3 = [(WorldClockManager *)self fixUpCityProperties:a3];
  if ([WorldClockCity isWorldClockCityProperties:v3])
  {
    v4 = [[WorldClockCity alloc] initWithProperties:v3];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E698B668]) initWithProperties:v3];
    v4 = [[WorldClockCity alloc] initWithALCity:v5];
  }

  return v4;
}

- (void)addDefaultCitiesIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(WorldClockPreferences *)self->_defaults defaultCitiesAdded])
  {
    v3 = [MEMORY[0x1E698B670] sharedManager];
    v4 = MGGetStringAnswer();
    if (CFStringCompare(v4, @"iPad", 0))
    {
      v5 = [MEMORY[0x1E695DF58] currentLocale];
      v6 = [v5 localeIdentifier];
      v7 = [v3 defaultCitiesForLocaleCode:v6 options:3];
    }

    else
    {
      v7 = [v3 defaultCitiesShownInWorldClock];
    }

    CFRelease(v4);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [WorldClockCity alloc];
          v15 = [(WorldClockCity *)v14 initWithALCity:v13, v17];
          [(NSMutableArray *)self->_cities addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(WorldClockPreferences *)self->_defaults setDefaultCitiesAdded:1];
    [(WorldClockManager *)self saveCities];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)pushCityPropertiesToPreferences
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(WorldClockManager *)self cities];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(WorldClockManager *)self cities];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) properties];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(WorldClockPreferences *)self->_defaults setCities:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)fixUpCityProperties:(id)a3
{
  v4 = a3;
  if ([WorldClockCity isCachedLanguageStaleForProperties:v4])
  {
    self->_dirty = 1;
    v5 = [v4 objectForKey:@"city"];
    v6 = [v5 mutableCopy];
    [v6 removeObjectForKey:@"name"];
    [v6 removeObjectForKey:@"countryName"];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
    [v7 setObject:v6 forKey:@"city"];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (BOOL)checkIfCitiesModified
{
  v3 = [(WorldClockPreferences *)self->_defaults lastModified];
  v4 = [(WorldClockManager *)self lastModified];
  if (v4 == v3)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(WorldClockManager *)self lastModified];
    [v5 timeIntervalSinceReferenceDate];
    v7 = round(v6);
    [v3 timeIntervalSinceReferenceDate];
    v9 = v7 != round(v8);
  }

  return v9;
}

- (id)cityWithIdUrl:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_cities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 idUrl];
        v11 = [v4 isEqual:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)canAddCity
{
  v2 = [(WorldClockManager *)self cities];
  v3 = [v2 count] < 0x18;

  return v3;
}

- (unint64_t)addCity:(id)a3
{
  v4 = a3;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(WorldClockManager *)self canAddCity])
  {
    v5 = [(NSMutableArray *)self->_cities indexOfObject:v4];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_cities addObject:v4];
      self->_dirty = 1;
      v5 = [(NSMutableArray *)self->_cities count]- 1;
    }
  }

  return v5;
}

- (void)moveCityFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(NSMutableArray *)self->_cities objectAtIndex:?];
  [(NSMutableArray *)self->_cities removeObjectAtIndex:a3];
  [(NSMutableArray *)self->_cities insertObject:v7 atIndex:a4];
  self->_dirty = 1;
}

- (void)_notifyNano
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"PerformanceTestingEnabled"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/tmp/WorldClock-performance_test.plist"];
    if (!v5)
    {
      v5 = objc_opt_new();
    }

    v6 = [v5 objectForKeyedSubscript:@"cityAddTest"];
    if (!v6)
    {
      v6 = objc_opt_new();
    }

    v7 = CFAbsoluteTimeGetCurrent() + *MEMORY[0x1E695E468];
    v20 = @"timestamp";
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v21[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"citySent"];

    [v5 setObject:v6 forKeyedSubscript:@"cityAddTest"];
    [v5 writeToFile:@"/tmp/WorldClock-performance_test.plist" atomically:1];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__WorldClockManager__notifyNano__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  if (_notifyNano_onceToken != -1)
  {
    dispatch_once(&_notifyNano_onceToken, block);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v10 = getNPSManagerClass_softClass;
  v19 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getNPSManagerClass_block_invoke;
    v15[3] = &unk_1E7B0C600;
    v15[4] = &v16;
    __getNPSManagerClass_block_invoke(v15);
    v10 = v17[3];
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);
  v12 = objc_opt_new();
  [v12 synchronizeUserDefaultsDomain:@"com.apple.mobiletimer" keys:_notifyNano_keys];

  v13 = *MEMORY[0x1E69E9840];
}

void __32__WorldClockManager__notifyNano__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [*(*(a1 + 32) + 24) defaultsKeys];
  v3 = [v2 initWithArray:v5];
  v4 = _notifyNano_keys;
  _notifyNano_keys = v3;
}

- (id)citiesMatchingIdentifiers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E698B670] sharedManager];
  v5 = [v4 citiesWithIdentifiers:v3];
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [WorldClockCity alloc];
        v14 = [(WorldClockCity *)v13 initWithALCity:v12, v18];
        if (v14)
        {
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)citiesMatchingName:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E698B670] sharedManager];
  v5 = [v4 citiesMatchingName:v3];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_39];
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [WorldClockCity alloc];
        v15 = [(WorldClockCity *)v14 initWithALCity:v13, v19];
        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __40__WorldClockManager_citiesMatchingName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)closestCityToLocation:(id)a3 matchingTimeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WorldClockManager *)self closestCityToLocation:v6 matchingTimeZone:v7 requireTimeZoneEquivalence:1];
  if (!v8)
  {
    v8 = [(WorldClockManager *)self closestCityToLocation:v6 matchingTimeZone:v7 requireTimeZoneEquivalence:0];
  }

  return v8;
}

- (id)closestCityToLocation:(id)a3 matchingTimeZone:(id)a4 requireTimeZoneEquivalence:(BOOL)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v7 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(WorldClockManager *)self allCities];
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v34;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = MEMORY[0x1E695DFE8];
        v16 = [v14 timeZone];
        v17 = [v15 timeZoneWithName:v16];

        if (([v17 isEquivalentTo:v7] & 1) != 0 || !a5 && (v27 = objc_msgSend(v17, "secondsFromGMT"), v27 == objc_msgSend(v7, "secondsFromGMT")))
        {
          v18 = [v14 alCity];
          v19 = objc_alloc(MEMORY[0x1E6985C40]);
          [v18 latitude];
          v21 = v20;
          [v18 longitude];
          v23 = [v19 initWithLatitude:v21 longitude:v22];
          [v23 distanceFromLocation:v32];
          v25 = v24;
          if (!v10 || v24 < v12)
          {
            v26 = v14;

            v12 = v25;
            v10 = v26;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

@end
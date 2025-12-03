@interface CLSTimeZones
+ (id)sharedInstance;
- (NSArray)timeZonesDB;
- (id)_importDataBaseFromFile:(id)file;
- (id)closestZoneInfoWithLocation:(id)location source:(id)source;
- (id)filteredTimeZonesWithCountyCode:(id)code;
- (id)timeZoneWithDictionary:(id)dictionary;
- (id)timeZoneWithLocation:(id)location;
- (id)timeZoneWithLocation:(id)location countryCode:(id)code;
- (void)invalidateCaches;
@end

@implementation CLSTimeZones

- (id)timeZoneWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"zone"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filteredTimeZonesWithCountyCode:(id)code
{
  code = [MEMORY[0x277CCAC30] predicateWithFormat:@"country_code LIKE %@", code];
  timeZonesDB = [(CLSTimeZones *)self timeZonesDB];
  v6 = [timeZonesDB filteredArrayUsingPredicate:code];

  return v6;
}

- (id)closestZoneInfoWithLocation:(id)location source:(id)source
{
  v24 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  sourceCopy = source;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [sourceCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(sourceCopy);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"clLocation"];
        [locationCopy distanceFromLocation:v14];
        if (v15 < v11)
        {
          v16 = v15;
          v17 = v13;

          v9 = v17;
          v11 = v16;
        }
      }

      v8 = [sourceCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_importDataBaseFromFile:(id)file
{
  v32 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:fileCopy ofType:0];

  v25 = v5;
  [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  v24 = v30 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v23 = v30;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{@"latitude", v23}];
        [v14 doubleValue];
        v16 = v15;

        v17 = [v13 objectForKeyedSubscript:@"longitude"];
        [v17 doubleValue];
        v19 = v18;

        v20 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v16 longitude:v19];
        if (v20)
        {
          v21 = [v13 mutableCopy];
          [v21 setObject:v20 forKeyedSubscript:@"clLocation"];
          [v7 addObject:v21];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  return v7;
}

- (NSArray)timeZonesDB
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeZonesDB = selfCopy->_timeZonesDB;
  if (!timeZonesDB)
  {
    v4 = [(CLSTimeZones *)selfCopy _importDataBaseFromFile:@"timezonesDB.json"];
    v5 = selfCopy->_timeZonesDB;
    selfCopy->_timeZonesDB = v4;

    timeZonesDB = selfCopy->_timeZonesDB;
  }

  v6 = timeZonesDB;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)invalidateCaches
{
  obj = self;
  objc_sync_enter(obj);
  timeZonesDB = obj->_timeZonesDB;
  obj->_timeZonesDB = 0;

  objc_sync_exit(obj);
}

- (id)timeZoneWithLocation:(id)location countryCode:(id)code
{
  locationCopy = location;
  if (code)
  {
    v7 = [(CLSTimeZones *)self filteredTimeZonesWithCountyCode:code];
    v8 = [(CLSTimeZones *)self closestZoneInfoWithLocation:locationCopy source:v7];
    v9 = [(CLSTimeZones *)self timeZoneWithDictionary:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(CLSTimeZones *)self timeZoneWithLocation:locationCopy];
    }

    v12 = v11;
  }

  else
  {
    v12 = [(CLSTimeZones *)self timeZoneWithLocation:locationCopy];
  }

  return v12;
}

- (id)timeZoneWithLocation:(id)location
{
  locationCopy = location;
  timeZonesDB = [(CLSTimeZones *)self timeZonesDB];
  v6 = [(CLSTimeZones *)self closestZoneInfoWithLocation:locationCopy source:timeZonesDB];

  if (!v6 || ([(CLSTimeZones *)self timeZoneWithDictionary:v6], (systemTimeZone = objc_claimAutoreleasedReturnValue()) == 0))
  {
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  }

  return systemTimeZone;
}

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    dispatch_once(&sharedInstance_pred, &__block_literal_global_6381);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__CLSTimeZones_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(CLSTimeZones);

  return MEMORY[0x2821F96F8]();
}

@end
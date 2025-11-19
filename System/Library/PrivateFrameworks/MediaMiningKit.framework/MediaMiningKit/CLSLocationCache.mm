@interface CLSLocationCache
+ (BOOL)cachedRegion:(id)a3 isMatchingOtherRegion:(id)a4;
- (BOOL)hasCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4;
- (BOOL)hasRegion:(id)a3;
- (CLSLocationCache)initWithURL:(id)a3 dataModelName:(id)a4;
- (id)_insertManagedPlacemarkForLitePlacemark:(id)a3 inContext:(id)a4;
- (id)_insertManagedPlacemarksForLitePlacemarks:(id)a3 inContext:(id)a4;
- (id)_litePlacemarkFromManagedPlacemark:(id)a3;
- (id)_litePlacemarksFromManagedPlacemarks:(id)a3;
- (id)_stringifyAddressDictionaryValues:(id)a3;
- (id)_stringifyCircularRegionValue:(id)a3;
- (id)_stringifyPostalAddress:(id)a3;
- (id)fetchPlacemarkForLocation:(id)a3 withQueryAccuracy:(double)a4;
- (id)nearestEntryForCoordinate:(CLLocationCoordinate2D)a3 entries:(id)a4;
- (id)placemarkForMUID:(unint64_t)a3;
- (id)placemarksForAddressDictionary:(id)a3;
- (id)placemarksForLocation:(id)a3 withQueryAccuracy:(double)a4;
- (id)placemarksForLocationAddress:(id)a3;
- (id)placemarksForLocationCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4 queryAccuracy:(double)a5;
- (id)placemarksForPostalAddress:(id)a3;
- (id)predicateForCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4 queryAccuracy:(double)a5;
- (void)_setPlacemarks:(id)a3 forEntryWithPredicate:(id)a4 entrySetupBlock:(id)a5;
- (void)insertBatchesOfPlacemarks:(id)a3 forLocations:(id)a4;
- (void)invalidateCacheForGeoServiceProviderChangeToProvider:(id)a3;
- (void)invalidateCacheForLocationCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4;
- (void)invalidateCacheForMUID:(unint64_t)a3;
- (void)invalidateCacheItemsBeforeDateWithTimestamp:(double)a3;
- (void)setPlacemark:(id)a3 forMUID:(unint64_t)a4;
- (void)setPlacemarks:(id)a3 forAddressDictionary:(id)a4;
- (void)setPlacemarks:(id)a3 forCLLocation:(id)a4;
- (void)setPlacemarks:(id)a3 forLocation:(id)a4;
- (void)setPlacemarks:(id)a3 forLocationAddress:(id)a4;
- (void)setPlacemarks:(id)a3 forLocationCoordinate:(CLLocationCoordinate2D)a4 withHorizontalAccuracy:(double)a5;
- (void)setPlacemarks:(id)a3 forPostalAddress:(id)a4;
@end

@implementation CLSLocationCache

- (void)invalidateCacheForGeoServiceProviderChangeToProvider:(id)a3
{
  v4 = a3;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__CLSLocationCache_invalidateCacheForGeoServiceProviderChangeToProvider___block_invoke;
  v8[3] = &unk_2788A8900;
  v9 = v4;
  v10 = v5;
  v11 = self;
  v6 = v5;
  v7 = v4;
  [v6 performBlockAndWait:v8];
}

void __73__CLSLocationCache_invalidateCacheForGeoServiceProviderChangeToProvider___block_invoke(uint64_t a1)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedPlacemark entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"geoServiceProvider != %@", *(a1 + 32)];
  v6 = [MEMORY[0x277D3AD60] autoNaviCountryCode];
  if ([MEMORY[0x277D3AD60] isAutoNaviRevGeoProvider:*(a1 + 32)])
  {
    v7 = @"isoCountryCode == %@";
  }

  else
  {
    v7 = @"isoCountryCode != %@";
  }

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:v7, v6];
  v9 = MEMORY[0x277CCA920];
  v61[0] = v5;
  v61[1] = v8;
  v48 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  [v4 setPredicate:v11];
  v12 = *(a1 + 40);
  v55 = 0;
  v13 = [v12 executeFetchRequest:v4 error:&v55];
  v14 = v55;
  if ([v13 count])
  {
    v47 = v5;
    v15 = MEMORY[0x277CBE428];
    v16 = +[CLSLocationCacheEntry entityName];
    v17 = [v15 fetchRequestWithEntityName:v16];

    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY placemarks IN %@", v13];

    v44 = v18;
    [v17 setPredicate:v18];
    v45 = v17;
    v19 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v17];
    [v19 setResultType:2];
    v20 = *(a1 + 40);
    v54 = v14;
    v43 = v19;
    v21 = [v20 executeRequest:v19 error:&v54];
    v22 = v54;

    v23 = +[CLSLogging sharedLogging];
    v24 = [v23 loggingConnection];

    v46 = v6;
    v42 = v4;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v22;
        _os_log_error_impl(&dword_22F907000, v24, OS_LOG_TYPE_ERROR, "Failed to batch location cache entries: Error: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v21 result];
      v26 = *(a1 + 32);
      *buf = 138412546;
      v58 = v25;
      v59 = 2112;
      v60 = v26;
      _os_log_impl(&dword_22F907000, v24, OS_LOG_TYPE_INFO, "Batch deleted %@ location cache entries, for provider %@", buf, 0x16u);
    }

    v27 = v21;

    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v29 = v13;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v51;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v50 + 1) + 8 * i) objectID];
          [v28 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v31);
    }

    v35 = [objc_alloc(MEMORY[0x277CBE360]) initWithObjectIDs:v28];
    v36 = *(a1 + 40);
    v49 = v22;
    v37 = [v36 executeRequest:v35 error:&v49];
    v14 = v49;

    v38 = +[CLSLogging sharedLogging];
    v39 = [v38 loggingConnection];

    if (v14)
    {
      v6 = v46;
      v4 = v42;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v14;
        _os_log_error_impl(&dword_22F907000, v39, OS_LOG_TYPE_ERROR, "Failed to batch location cache entries: Error: %@", buf, 0xCu);
      }
    }

    else
    {
      v6 = v46;
      v4 = v42;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [v37 result];
        v41 = *(a1 + 32);
        *buf = 138478083;
        v58 = v40;
        v59 = 2112;
        v60 = v41;
        _os_log_impl(&dword_22F907000, v39, OS_LOG_TYPE_INFO, "Batch deleted %{private}@ location cache placemarks, for provider %@", buf, 0x16u);
      }
    }

    [*(a1 + 48) _save];
    v11 = v44;
    v5 = v47;
  }
}

- (id)_litePlacemarkFromManagedPlacemark:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(CLSLitePlacemark);
  [v3 latitude];
  v6 = v5;
  [v3 longitude];
  v65 = CLLocationCoordinate2DMake(v6, v7);
  latitude = v65.latitude;
  longitude = v65.longitude;
  if (CLLocationCoordinate2DIsValid(v65))
  {
    v10 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [(CLSLitePlacemark *)v4 setLocation:v10];
  }

  else
  {
    [(CLSLitePlacemark *)v4 setLocation:0];
  }

  [v3 regionLatitude];
  v12 = v11;
  [v3 regionLongitude];
  v66 = CLLocationCoordinate2DMake(v12, v13);
  v14 = v66.latitude;
  v15 = v66.longitude;
  if (CLLocationCoordinate2DIsValid(v66))
  {
    v16 = objc_alloc(MEMORY[0x277CBFBC8]);
    [v3 regionRadius];
    v18 = v17;
    v19 = [v3 regionIdentifier];
    v20 = [v16 initWithCenter:v19 radius:v14 identifier:{v15, v18}];

    [(CLSLitePlacemark *)v4 setRegion:v20];
  }

  v21 = [v3 thoroughfare];
  [(CLSLitePlacemark *)v4 setThoroughfare:v21];

  v22 = [v3 subThoroughfare];
  [(CLSLitePlacemark *)v4 setSubThoroughfare:v22];

  v23 = [v3 locality];
  [(CLSLitePlacemark *)v4 setLocality:v23];

  v24 = [v3 subLocality];
  [(CLSLitePlacemark *)v4 setSubLocality:v24];

  v25 = [v3 administrativeArea];
  [(CLSLitePlacemark *)v4 setAdministrativeArea:v25];

  v26 = [v3 administrativeAreaCode];
  [(CLSLitePlacemark *)v4 setAdministrativeAreaCode:v26];

  v27 = [v3 subAdministrativeArea];
  [(CLSLitePlacemark *)v4 setSubAdministrativeArea:v27];

  v28 = [v3 isoCountryCode];
  [(CLSLitePlacemark *)v4 setISOcountryCode:v28];

  v29 = [v3 inlandWater];
  [(CLSLitePlacemark *)v4 setInlandWater:v29];

  v30 = [v3 ocean];
  [(CLSLitePlacemark *)v4 setOcean:v30];

  -[CLSLitePlacemark setIsIsland:](v4, "setIsIsland:", [v3 isIsland]);
  v31 = [v3 areasOfInterest];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 componentsSeparatedByString:@"_#_"];
  }

  else
  {
    v33 = 0;
  }

  [(CLSLitePlacemark *)v4 setAreasOfInterest:v33];

  v34 = [v3 revGeoLocationData];
  [(CLSLitePlacemark *)v4 setRevGeoLocationData:v34];

  v35 = [v3 geoServiceProvider];
  [(CLSLitePlacemark *)v4 setGeoServiceProvider:v35];

  v36 = [v3 popularityScoresOrderedByAOI];
  v37 = v36;
  if (v36)
  {
    v55 = v4;
    v38 = [v36 componentsSeparatedByString:@"_#_"];
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v40 = v38;
    v41 = [v40 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v57;
      v44 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v46 = MEMORY[0x277CCABB0];
          [*(*(&v56 + 1) + 8 * i) doubleValue];
          v47 = [v46 numberWithDouble:?];
          v48 = v47;
          if (!v47)
          {
            v49 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
            v48 = &unk_28449B7D0;
            if (v49)
            {
              *buf = 138412290;
              v61 = v37;
              _os_log_error_impl(&dword_22F907000, v44, OS_LOG_TYPE_ERROR, "[CLSLocationCache] Could not convert deserialize AOI string %@ to NSNumbers", buf, 0xCu);
              v48 = &unk_28449B7D0;
            }
          }

          [v39 addObject:v48];
        }

        v42 = [v40 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v42);
    }

    v4 = v55;
  }

  else
  {
    v39 = 0;
  }

  [(CLSLitePlacemark *)v4 setPopularityScoresOrderedByAOI:v39];
  v50 = [(CLSLitePlacemark *)v4 areasOfInterest];
  if (v50)
  {
    v51 = [(CLSLitePlacemark *)v4 popularityScoresOrderedByAOI];

    if (!v51)
    {
      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([v50 count])
      {
        v53 = 0;
        do
        {
          [v52 setObject:&unk_28449B7D0 atIndexedSubscript:v53++];
        }

        while (v53 < [v50 count]);
      }

      [(CLSLitePlacemark *)v4 setPopularityScoresOrderedByAOI:v52];
    }
  }

  return v4;
}

- (id)_insertManagedPlacemarkForLitePlacemark:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBE408];
  v7 = a4;
  v8 = +[CLSManagedPlacemark entityName];
  v9 = [v6 insertNewObjectForEntityForName:v8 inManagedObjectContext:v7];

  v10 = [v5 location];
  v11 = v10;
  if (v10)
  {
    [v10 coordinate];
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x277CE4278];
    v14 = *(MEMORY[0x277CE4278] + 8);
  }

  [v9 setLatitude:v12];
  [v9 setLongitude:v14];
  v15 = [v5 region];
  v16 = v15;
  if (v15)
  {
    [v15 center];
    v19 = v18;
  }

  else
  {
    v17 = *MEMORY[0x277CE4278];
    v19 = *(MEMORY[0x277CE4278] + 8);
  }

  [v9 setRegionLatitude:v17];
  [v9 setRegionLongitude:v19];
  [v16 radius];
  [v9 setRegionRadius:?];
  v20 = [v16 identifier];
  [v9 setRegionIdentifier:v20];

  v21 = [v5 thoroughfare];
  [v9 setThoroughfare:v21];

  v22 = [v5 subThoroughfare];
  [v9 setSubThoroughfare:v22];

  v23 = [v5 locality];
  [v9 setLocality:v23];

  v24 = [v5 subLocality];
  [v9 setSubLocality:v24];

  v25 = [v5 administrativeArea];
  [v9 setAdministrativeArea:v25];

  v26 = [v5 administrativeAreaCode];
  [v9 setAdministrativeAreaCode:v26];

  v27 = [v5 subAdministrativeArea];
  [v9 setSubAdministrativeArea:v27];

  v28 = [v5 ISOcountryCode];
  [v9 setIsoCountryCode:v28];

  v29 = [v5 inlandWater];
  [v9 setInlandWater:v29];

  v30 = [v5 ocean];
  [v9 setOcean:v30];

  [v9 setIsIsland:{objc_msgSend(v5, "isIsland")}];
  v31 = [v5 areasOfInterest];
  if ([v31 count])
  {
    v32 = [v31 componentsJoinedByString:@"_#_"];
  }

  else
  {
    v32 = 0;
  }

  [v9 setAreasOfInterest:v32];

  v33 = [v5 revGeoLocationData];
  [v9 setRevGeoLocationData:v33];

  v34 = [v5 geoServiceProvider];
  [v9 setGeoServiceProvider:v34];

  v35 = [v5 popularityScoresOrderedByAOI];
  if ([v35 count])
  {
    v36 = [v35 componentsJoinedByString:@"_#_"];
  }

  else
  {
    v36 = 0;
  }

  [v9 setPopularityScoresOrderedByAOI:v36];

  return v9;
}

- (id)_insertManagedPlacemarksForLitePlacemarks:(id)a3 inContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(CLSLocationCache *)self _insertManagedPlacemarkForLitePlacemark:*(*(&v16 + 1) + 8 * i) inContext:v7, v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_litePlacemarksFromManagedPlacemarks:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(CLSLocationCache *)self _litePlacemarkFromManagedPlacemark:*(*(&v13 + 1) + 8 * i), v13];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setPlacemarks:(id)a3 forEntryWithPredicate:(id)a4 entrySetupBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = [(CLSDBCache *)self managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__CLSLocationCache__setPlacemarks_forEntryWithPredicate_entrySetupBlock___block_invoke;
    v13[3] = &unk_2788A6F78;
    v14 = v9;
    v15 = v11;
    v18 = v10;
    v16 = self;
    v17 = v8;
    v12 = v11;
    [v12 performBlockAndWait:v13];
  }
}

void __73__CLSLocationCache__setPlacemarks_forEntryWithPredicate_entrySetupBlock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchLimit:1];
  [v4 setPredicate:*(a1 + 32)];
  v5 = *(a1 + 40);
  v22 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v22];
  v7 = v22;
  if (v6 && [v6 count] == 1)
  {
    v8 = [v6 objectAtIndexedSubscript:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 placemarks];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 40) deleteObject:*(*(&v18 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v14 = MEMORY[0x277CBE408];
    v15 = +[CLSLocationCacheEntry entityName];
    v8 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:*(a1 + 40)];

    (*(*(a1 + 64) + 16))();
  }

  v16 = [*(a1 + 48) _insertManagedPlacemarksForLitePlacemarks:*(a1 + 56) inContext:*(a1 + 40)];
  [v8 setPlacemarks:v16];

  v17 = [MEMORY[0x277CBEAA8] date];
  [v17 timeIntervalSince1970];
  [v8 setUpdateTimestamp:?];

  [*(a1 + 48) _save];
}

- (id)fetchPlacemarkForLocation:(id)a3 withQueryAccuracy:(double)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CLSLocationCache *)self placemarksForLocation:v6 withQueryAccuracy:a4];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v9 = [CLSCachedGeocoderOperation operationForceGeocoderWithLocation:v6];
    v20 = 0;
    v10 = [v9 performSynchronouslyWithLocationCache:self error:&v20];
    v11 = v20;
    if (v10)
    {
      [v6 coordinate];
      v13 = v12;
      v15 = v14;
      [v6 horizontalAccuracy];
      [(CLSLocationCache *)self setPlacemarks:v10 forLocationCoordinate:v13 withHorizontalAccuracy:v15, v16];
      v8 = [v10 firstObject];
    }

    else
    {
      v17 = +[CLSLogging sharedLogging];
      v18 = [v17 loggingConnection];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[CLSLocationCache fetchPlacemarkForLocation:withQueryAccuracy:]";
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&dword_22F907000, v18, OS_LOG_TYPE_ERROR, "%s - %@", buf, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)invalidateCacheItemsBeforeDateWithTimestamp:(double)a3
{
  v5 = [(CLSDBCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__CLSLocationCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke;
  v7[3] = &unk_2788A8860;
  v10 = a3;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __64__CLSLocationCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"updateTimestamp <= %f", *(a1 + 48)];
  [v4 setPredicate:v5];
  v6 = *(a1 + 32);
  v24 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v24];
  v8 = v24;
  v9 = v8;
  if (v7)
  {
    v18 = v8;
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          [*(a1 + 32) deleteObject:v16];
          if (v13 >= 0x13)
          {
            [*(a1 + 40) _save];
            v13 = 0;
          }

          else
          {
            ++v13;
          }

          objc_autoreleasePoolPop(v17);
          ++v15;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    [*(a1 + 40) _save];
    v9 = v18;
    v5 = v19;
  }
}

- (void)invalidateCacheForMUID:(unint64_t)a3
{
  v5 = [(CLSDBCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CLSLocationCache_invalidateCacheForMUID___block_invoke;
  v7[3] = &unk_2788A8860;
  v8 = v5;
  v9 = a3;
  v7[4] = self;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __43__CLSLocationCache_invalidateCacheForMUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = *(*(a1 + 32) + 88);
  v6 = MEMORY[0x277CBEAC0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"muid"];
  v9 = [v5 predicateWithSubstitutionVariables:v8];

  [v4 setPredicate:v9];
  [v4 setFetchLimit:1];
  v10 = *(a1 + 40);
  v15 = 0;
  v11 = [v10 executeFetchRequest:v4 error:&v15];
  v12 = v15;
  if ([v11 count] == 1)
  {
    v13 = *(a1 + 40);
    v14 = [v11 objectAtIndexedSubscript:0];
    [v13 deleteObject:v14];

    [*(a1 + 32) _save];
  }
}

- (id)placemarkForMUID:(unint64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__731;
  v17 = __Block_byref_object_dispose__732;
  v18 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__CLSLocationCache_placemarkForMUID___block_invoke;
  v9[3] = &unk_2788A73A0;
  v9[4] = self;
  v12 = a3;
  v6 = v5;
  v10 = v6;
  v11 = &v13;
  [v6 performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __37__CLSLocationCache_placemarkForMUID___block_invoke(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = *(a1[4] + 88);
  v22 = @"muid";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v23[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v8 = [v5 predicateWithSubstitutionVariables:v7];

  [v4 setFetchLimit:1];
  [v4 setPredicate:v8];
  v9 = a1[5];
  v19 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v19];
  v11 = v19;
  if (v10 && [v10 count] == 1)
  {
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = [v12 placemarks];
    v14 = a1[4];
    v15 = [v13 anyObject];
    v16 = [v14 _litePlacemarkFromManagedPlacemark:v15];
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(a1[6] + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not unarchive litePlacemark, error %@", buf, 0xCu);
    }
  }
}

- (void)setPlacemark:(id)a3 forMUID:(unint64_t)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v16[0] = a3;
    v6 = MEMORY[0x277CBEA60];
    v7 = a3;
    v8 = [v6 arrayWithObjects:v16 count:1];
    entryPredicateWithMUID = self->_entryPredicateWithMUID;
    v14 = @"muid";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v15 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [(NSPredicate *)entryPredicateWithMUID predicateWithSubstitutionVariables:v11];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__CLSLocationCache_setPlacemark_forMUID___block_invoke;
    v13[3] = &__block_descriptor_40_e31_v16__0__CLSLocationCacheEntry_8l;
    v13[4] = a4;
    [(CLSLocationCache *)self _setPlacemarks:v8 forEntryWithPredicate:v12 entrySetupBlock:v13];
  }
}

- (id)_stringifyPostalAddress:(id)a3
{
  v3 = [MEMORY[0x277CBDB80] stringFromPostalAddress:a3 style:0];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"_"];

  return v5;
}

- (id)_stringifyCircularRegionValue:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 identifier];
  [v4 center];
  v7 = v6;
  [v4 center];
  v9 = v8;
  [v4 radius];
  v11 = v10;

  v12 = [v3 stringWithFormat:@"%@_%.5lf_%.5lf_%.2lf", v5, v7, v9, v11];

  return v12;
}

- (id)_stringifyAddressDictionaryValues:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [v3 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 appendFormat:@"%@_", v12];
      }

      v13 = [v6 length];

      if (v13 > 0xFF)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v6;
}

- (id)placemarksForLocation:(id)a3 withQueryAccuracy:(double)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [v7 coordinate];
    v9 = v8;
    v11 = v10;
    [v7 horizontalAccuracy];
LABEL_5:
    v15 = v12;

    v16 = [(CLSLocationCache *)self placemarksForLocationCoordinate:v9 withHorizontalAccuracy:v11 queryAccuracy:v15, a4];
LABEL_6:
    v17 = v16;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [v7 center];
    v9 = v13;
    v11 = v14;
    [v7 clsHorizontalAccuracy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(CLSLocationCache *)self placemarksForAddressDictionary:v6];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(CLSLocationCache *)self placemarksForLocationAddress:v6];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = *MEMORY[0x277CE4208];
    if (*MEMORY[0x277CE4208] == a4)
    {
      v20 = [[CLSLitePlacemark alloc] initWithCLPlacemark:v6];
      v28[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
LABEL_21:
      v17 = v21;

      goto LABEL_7;
    }

LABEL_20:
    v20 = [v6 location];
    [(CLSLitePlacemark *)v20 coordinate];
    v23 = v22;
    v25 = v24;
    [(CLSLitePlacemark *)v20 horizontalAccuracy];
    v21 = [(CLSLocationCache *)self placemarksForLocationCoordinate:v23 withHorizontalAccuracy:v25 queryAccuracy:v26, a4];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = *MEMORY[0x277CE4208];
    if (*MEMORY[0x277CE4208] == a4)
    {
      v27 = v6;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:{1, v19}];
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(CLSLocationCache *)self placemarksForPostalAddress:v6];
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (id)placemarksForPostalAddress:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__731;
  v18 = __Block_byref_object_dispose__732;
  v19 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CLSLocationCache_placemarksForPostalAddress___block_invoke;
  v10[3] = &unk_2788A88D8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [v7 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __47__CLSLocationCache_placemarksForPostalAddress___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[7];
  v22 = @"postalAddress";
  v8 = [v5 _stringifyPostalAddress:v6];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v10 = [v7 predicateWithSubstitutionVariables:v9];

  [v4 setFetchLimit:1];
  [v4 setPredicate:v10];
  v11 = *(a1 + 48);
  v19 = 0;
  v12 = [v11 executeFetchRequest:v4 error:&v19];
  v13 = v19;
  if (v12 && [v12 count] == 1)
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v14 placemarks];

    v16 = [*(a1 + 32) _litePlacemarksFromManagedPlacemarks:v15];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 56) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not unarchive litePlacemarks, error %@", buf, 0xCu);
    }
  }
}

- (void)setPlacemarks:(id)a3 forPostalAddress:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CLSLocationCache *)self _stringifyPostalAddress:a4];
  entryPredicateWithContactsPostalAddressTemplate = self->_entryPredicateWithContactsPostalAddressTemplate;
  v16 = @"postalAddress";
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v10 = [(NSPredicate *)entryPredicateWithContactsPostalAddressTemplate predicateWithSubstitutionVariables:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__CLSLocationCache_setPlacemarks_forPostalAddress___block_invoke;
  v13[3] = &unk_2788A6F30;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(CLSLocationCache *)self _setPlacemarks:v12 forEntryWithPredicate:v10 entrySetupBlock:v13];
}

void __51__CLSLocationCache_setPlacemarks_forPostalAddress___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) firstObject];
  v4 = [v3 location];

  if (v4)
  {
    [v4 coordinate];
    v6 = v5;
    [v7 setLatitude:?];
    [v7 setLongitude:v6];
    [v7 setCoarse:0];
  }

  [v7 setPostalAddress:*(a1 + 40)];
}

- (id)placemarksForAddressDictionary:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__731;
  v18 = __Block_byref_object_dispose__732;
  v19 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__CLSLocationCache_placemarksForAddressDictionary___block_invoke;
  v10[3] = &unk_2788A88D8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [v7 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __51__CLSLocationCache_placemarksForAddressDictionary___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[8];
  v22 = @"addressDictionaryString";
  v8 = [v5 _stringifyAddressDictionaryValues:v6];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v10 = [v7 predicateWithSubstitutionVariables:v9];

  [v4 setFetchLimit:1];
  [v4 setPredicate:v10];
  v11 = *(a1 + 48);
  v19 = 0;
  v12 = [v11 executeFetchRequest:v4 error:&v19];
  v13 = v19;
  if (v12 && [v12 count] == 1)
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v14 placemarks];

    v16 = [*(a1 + 32) _litePlacemarksFromManagedPlacemarks:v15];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 56) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not unarchive litePlacemarks, error %@", buf, 0xCu);
    }
  }
}

- (void)setPlacemarks:(id)a3 forAddressDictionary:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CLSLocationCache *)self _stringifyAddressDictionaryValues:a4];
  entryPredicateWithAddressBookDictionaryTemplate = self->_entryPredicateWithAddressBookDictionaryTemplate;
  v16 = @"addressDictionaryString";
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v10 = [(NSPredicate *)entryPredicateWithAddressBookDictionaryTemplate predicateWithSubstitutionVariables:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__CLSLocationCache_setPlacemarks_forAddressDictionary___block_invoke;
  v13[3] = &unk_2788A6F30;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(CLSLocationCache *)self _setPlacemarks:v12 forEntryWithPredicate:v10 entrySetupBlock:v13];
}

void __55__CLSLocationCache_setPlacemarks_forAddressDictionary___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) firstObject];
  v4 = [v3 location];

  if (v4)
  {
    [v4 coordinate];
    v6 = v5;
    [v7 setLatitude:?];
    [v7 setLongitude:v6];
    [v7 setCoarse:0];
  }

  [v7 setAddressDictionaryString:*(a1 + 40)];
}

- (id)placemarksForLocationAddress:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__731;
  v18 = __Block_byref_object_dispose__732;
  v19 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__CLSLocationCache_placemarksForLocationAddress___block_invoke;
  v10[3] = &unk_2788A88D8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [v7 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __49__CLSLocationCache_placemarksForLocationAddress___block_invoke(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = a1[5];
  v6 = *(a1[4] + 80);
  v21 = @"address";
  v22[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v8 = [v6 predicateWithSubstitutionVariables:v7];

  [v4 setFetchLimit:1];
  [v4 setPredicate:v8];
  v9 = a1[6];
  v18 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v18];
  v11 = v18;
  if (v10 && [v10 count] == 1)
  {
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = a1[4];
    v14 = [v12 placemarks];
    v15 = [v13 _litePlacemarksFromManagedPlacemarks:v14];
    v16 = *(a1[7] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (!*(*(a1[7] + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not unarchive litePlacemarks, error %@", buf, 0xCu);
    }
  }
}

- (void)setPlacemarks:(id)a3 forLocationAddress:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  entryPredicateWithAddressTemplate = self->_entryPredicateWithAddressTemplate;
  v16 = @"address";
  v17[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v10 = [(NSPredicate *)entryPredicateWithAddressTemplate predicateWithSubstitutionVariables:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__CLSLocationCache_setPlacemarks_forLocationAddress___block_invoke;
  v13[3] = &unk_2788A6F30;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(CLSLocationCache *)self _setPlacemarks:v12 forEntryWithPredicate:v10 entrySetupBlock:v13];
}

void __53__CLSLocationCache_setPlacemarks_forLocationAddress___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) firstObject];
  v4 = [v3 location];

  if (v4)
  {
    [v4 coordinate];
    v6 = v5;
    [v7 setLatitude:?];
    [v7 setLongitude:v6];
    [v7 setCoarse:0];
  }

  [v7 setAddress:*(a1 + 40)];
}

- (id)placemarksForLocationCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4 queryAccuracy:(double)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__731;
  v25 = __Block_byref_object_dispose__732;
  v26 = 0;
  v10 = [(CLSDBCache *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__CLSLocationCache_placemarksForLocationCoordinate_withHorizontalAccuracy_queryAccuracy___block_invoke;
  v14[3] = &unk_2788A6F08;
  v14[4] = self;
  v17 = latitude;
  v18 = longitude;
  v19 = a4;
  v20 = a5;
  v11 = v10;
  v15 = v11;
  v16 = &v21;
  [v11 performBlockAndWait:v14];
  v12 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __89__CLSLocationCache_placemarksForLocationCoordinate_withHorizontalAccuracy_queryAccuracy___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateForCoordinate:*(a1 + 56) withHorizontalAccuracy:*(a1 + 64) queryAccuracy:{*(a1 + 72), *(a1 + 80)}];
  [v4 setPredicate:v5];
  v6 = *(a1 + 40);
  v15 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v15];
  v8 = v15;
  if (v7 && [v7 count])
  {
    v9 = [*(a1 + 32) nearestEntryForCoordinate:v7 entries:{*(a1 + 56), *(a1 + 64)}];
    v10 = *(a1 + 32);
    v11 = [v9 placemarks];
    v12 = [v10 _litePlacemarksFromManagedPlacemarks:v11];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)setPlacemarks:(id)a3 forLocationCoordinate:(CLLocationCoordinate2D)a4 withHorizontalAccuracy:(double)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v20[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v21.latitude = latitude;
  v21.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v21))
  {
    v10 = [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:a5];
    entryPredicateWithCoordinateTemplate = self->_entryPredicateWithCoordinateTemplate;
    v19[0] = @"latitude";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:latitude];
    v20[0] = v12;
    v19[1] = @"longitude";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
    v20[1] = v13;
    v19[2] = @"coarse";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v20[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v16 = [(NSPredicate *)entryPredicateWithCoordinateTemplate predicateWithSubstitutionVariables:v15];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__CLSLocationCache_setPlacemarks_forLocationCoordinate_withHorizontalAccuracy___block_invoke;
    v17[3] = &__block_descriptor_49_e31_v16__0__CLSLocationCacheEntry_8l;
    *&v17[4] = latitude;
    *&v17[5] = longitude;
    v18 = v10;
    [(CLSLocationCache *)self _setPlacemarks:v9 forEntryWithPredicate:v16 entrySetupBlock:v17];
  }
}

void __79__CLSLocationCache_setPlacemarks_forLocationCoordinate_withHorizontalAccuracy___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLatitude:v3];
  [v4 setLongitude:*(a1 + 40)];
  [v4 setCoarse:*(a1 + 48)];
}

- (void)setPlacemarks:(id)a3 forCLLocation:(id)a4
{
  v6 = a4;
  v13 = a3;
  [v6 coordinate];
  v8 = v7;
  v10 = v9;
  [v6 horizontalAccuracy];
  v12 = v11;

  [(CLSLocationCache *)self setPlacemarks:v13 forLocationCoordinate:v8 withHorizontalAccuracy:v10, v12];
}

- (void)insertBatchesOfPlacemarks:(id)a3 forLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CLSDBCache *)self managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CLSLocationCache_insertBatchesOfPlacemarks_forLocations___block_invoke;
  v12[3] = &unk_2788A7350;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = self;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [v9 performBlockAndWait:v12];
}

uint64_t __59__CLSLocationCache_insertBatchesOfPlacemarks_forLocations___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [*(a1 + 40) objectAtIndexedSubscript:{v8, v22}];
        [v12 coordinate];
        if (v11)
        {
          v15 = v13;
          v16 = v14;
          if ([v11 count])
          {
            v28.latitude = v15;
            v28.longitude = v16;
            if (CLLocationCoordinate2DIsValid(v28))
            {
              v17 = MEMORY[0x277CBE408];
              v18 = +[CLSLocationCacheEntry entityName];
              v19 = [v17 insertNewObjectForEntityForName:v18 inManagedObjectContext:*(a1 + 48)];

              [v19 setLatitude:v15];
              [v19 setLongitude:v16];
              [v19 setCoarse:{objc_msgSend(MEMORY[0x277D3ACD0], "locationIsCoarse:", v12)}];
              [v19 setUpdateTimestamp:v4];
              v20 = [*(a1 + 56) _insertManagedPlacemarksForLitePlacemarks:v11 inContext:*(a1 + 48)];
              [v19 setPlacemarks:v20];
            }
          }
        }

        ++v10;
        ++v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  return [*(a1 + 56) _save];
}

- (void)setPlacemarks:(id)a3 forLocation:(id)a4
{
  v15 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CLSLocationCache *)self setPlacemarks:v15 forCLLocation:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      [v7 center];
      v9 = v8;
      v11 = v10;
      [v7 clsHorizontalAccuracy];
      v13 = v12;

      [(CLSLocationCache *)self setPlacemarks:v15 forLocationCoordinate:v9 withHorizontalAccuracy:v11, v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CLSLocationCache *)self setPlacemarks:v15 forAddressDictionary:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLSLocationCache *)self setPlacemarks:v15 forLocationAddress:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v14 = [v6 location];
            [(CLSLocationCache *)self setPlacemarks:v15 forCLLocation:v14];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CLSLocationCache *)self setPlacemarks:v15 forPostalAddress:v6];
            }
          }
        }
      }
    }
  }
}

- (BOOL)hasCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(CLSDBCache *)self managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CLSLocationCache_hasCoordinate_withHorizontalAccuracy___block_invoke;
  v12[3] = &unk_2788A6EC0;
  v12[4] = self;
  v15 = latitude;
  v16 = longitude;
  v17 = a4;
  v9 = v8;
  v13 = v9;
  v14 = &v18;
  [v9 performBlockAndWait:v12];
  v10 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v10;
}

void __57__CLSLocationCache_hasCoordinate_withHorizontalAccuracy___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateForCoordinate:*(a1 + 56) withHorizontalAccuracy:{*(a1 + 64), *(a1 + 72)}];
  [v4 setPredicate:v5];
  v6 = *(a1 + 40);
  v9 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v9];
  v8 = v9;
  if (v7 && [v7 count])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)hasRegion:(id)a3
{
  v4 = a3;
  [v4 center];
  v6 = v5;
  v8 = v7;
  [v4 clsHorizontalAccuracy];
  v10 = v9;

  return [(CLSLocationCache *)self hasCoordinate:v6 withHorizontalAccuracy:v8, v10];
}

- (id)nearestEntryForCoordinate:(CLLocationCoordinate2D)a3 entries:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v4 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        [v11 latitude];
        v13 = v12;
        [v11 longitude];
        v15 = CLLocationCoordinate2DMake(v13, v14);
        CLLocationCoordinate2DGetDistanceFrom();
        if (v16 < v9)
        {
          v17 = v16;
          v18 = v11;

          v7 = v18;
          v9 = v17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:{16, *&v15.latitude, *&v15.longitude}];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)predicateForCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4 queryAccuracy:(double)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = a3.latitude * 0.0174532925;
  v7 = a3.longitude * 0.0174532925;
  v8 = a5 / 6378137.0;
  v9 = (v6 + a5 / 6378137.0) * 57.2957795;
  v10 = (v7 - v8) * 57.2957795;
  v11 = (v6 - v8) * 57.2957795;
  v12 = (v7 + v8) * 57.2957795;
  if (v11 <= v9)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v12 <= v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v12 <= v10)
  {
    v12 = v10;
  }

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%f <= latitude && latitude <= %f && %f <= longitude && longitude <= %f", *&v13, *&v11, *&v14, *&v12];
  v16 = [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:a4];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"coarse == %d", v16];
  v18 = MEMORY[0x277CCA920];
  v22[0] = v15;
  v22[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v20 = [v18 andPredicateWithSubpredicates:v19];

  return v20;
}

- (void)invalidateCacheForLocationCoordinate:(CLLocationCoordinate2D)a3 withHorizontalAccuracy:(double)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:a4];
  v8 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__CLSLocationCache_invalidateCacheForLocationCoordinate_withHorizontalAccuracy___block_invoke;
  v10[3] = &unk_2788A6E98;
  v12 = latitude;
  v13 = longitude;
  v14 = v7;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v9 performBlockAndWait:v10];
}

void __80__CLSLocationCache_invalidateCacheForLocationCoordinate_withHorizontalAccuracy___block_invoke(uint64_t a1)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSLocationCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = *(*(a1 + 32) + 72);
  v17[0] = @"latitude";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v18[0] = v6;
  v17[1] = @"longitude";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v18[1] = v7;
  v17[2] = @"coarse";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v18[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v10 = [v5 predicateWithSubstitutionVariables:v9];

  [v4 setFetchLimit:1];
  [v4 setPredicate:v10];
  v11 = *(a1 + 40);
  v16 = 0;
  v12 = [v11 executeFetchRequest:v4 error:&v16];
  v13 = v16;
  if ([v12 count] == 1)
  {
    v14 = *(a1 + 40);
    v15 = [v12 objectAtIndexedSubscript:0];
    [v14 deleteObject:v15];

    [*(a1 + 32) _save];
  }
}

- (CLSLocationCache)initWithURL:(id)a3 dataModelName:(id)a4
{
  v16.receiver = self;
  v16.super_class = CLSLocationCache;
  v4 = [(CLSDBCache *)&v16 initWithURL:a3 dataModelName:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(postalAddress = $postalAddress)"];
    entryPredicateWithContactsPostalAddressTemplate = v4->_entryPredicateWithContactsPostalAddressTemplate;
    v4->_entryPredicateWithContactsPostalAddressTemplate = v5;

    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(addressDictionaryString = $addressDictionaryString)"];
    entryPredicateWithAddressBookDictionaryTemplate = v4->_entryPredicateWithAddressBookDictionaryTemplate;
    v4->_entryPredicateWithAddressBookDictionaryTemplate = v7;

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(address = $address)"];
    entryPredicateWithAddressTemplate = v4->_entryPredicateWithAddressTemplate;
    v4->_entryPredicateWithAddressTemplate = v9;

    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(latitude = $latitude) && (longitude = $longitude) && (coarse = $coarse)"];
    entryPredicateWithCoordinateTemplate = v4->_entryPredicateWithCoordinateTemplate;
    v4->_entryPredicateWithCoordinateTemplate = v11;

    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(muid = $muid)"];
    entryPredicateWithMUID = v4->_entryPredicateWithMUID;
    v4->_entryPredicateWithMUID = v13;
  }

  return v4;
}

+ (BOOL)cachedRegion:(id)a3 isMatchingOtherRegion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D3ACD0];
  [v5 clsHorizontalAccuracy];
  LODWORD(v7) = [v7 horizontalAccuracyIsCoarse:?];
  v8 = MEMORY[0x277D3ACD0];
  [v6 clsHorizontalAccuracy];
  if (v7 == [v8 horizontalAccuracyIsCoarse:?])
  {
    v10 = *MEMORY[0x277CE4208];
    [v5 center];
    v12 = v11;
    v14 = v13;
    [v6 center];
    v17 = (v12 * 0.0174532925 + v10 / 6378137.0) * 57.2957795;
    v18 = (v14 * 0.0174532925 - v10 / 6378137.0) * 57.2957795;
    v19 = (v12 * 0.0174532925 - v10 / 6378137.0) * 57.2957795;
    v20 = (v14 * 0.0174532925 + v10 / 6378137.0) * 57.2957795;
    if (v19 <= v17)
    {
      v21 = (v12 * 0.0174532925 - v10 / 6378137.0) * 57.2957795;
    }

    else
    {
      v21 = (v12 * 0.0174532925 + v10 / 6378137.0) * 57.2957795;
    }

    if (v19 <= v17)
    {
      v19 = (v12 * 0.0174532925 + v10 / 6378137.0) * 57.2957795;
    }

    if (v20 <= v18)
    {
      v22 = (v14 * 0.0174532925 + v10 / 6378137.0) * 57.2957795;
    }

    else
    {
      v22 = (v14 * 0.0174532925 - v10 / 6378137.0) * 57.2957795;
    }

    if (v20 <= v18)
    {
      v20 = (v14 * 0.0174532925 - v10 / 6378137.0) * 57.2957795;
    }

    v23 = v21 <= v15;
    if (v15 > v19)
    {
      v23 = 0;
    }

    if (v22 > v16)
    {
      v23 = 0;
    }

    v9 = v16 <= v20 && v23;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
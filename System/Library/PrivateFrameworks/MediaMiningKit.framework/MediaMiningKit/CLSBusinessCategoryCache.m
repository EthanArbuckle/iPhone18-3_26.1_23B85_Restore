@interface CLSBusinessCategoryCache
- (BOOL)hasRegion:(id)a3;
- (CLSBusinessCategoryCache)initWithURL:(id)a3 dataModelName:(id)a4;
- (id)_businessItemInRegion:(id)a3 matchingCategories:(id)a4 maximumDistance:(double)a5 forBusinessItems:(id)a6;
- (id)_fetchBusinessItemsForMUIDs:(id)a3;
- (id)_fetchedBusinessItemByMUIDForBusinessItems:(id)a3;
- (id)businessItemFromManagedObject:(id)a3;
- (id)businessItemsForMuid:(unint64_t)a3;
- (id)businessItemsForMuids:(id)a3;
- (id)businessItemsForRegion:(id)a3;
- (id)businessItemsInRegion:(id)a3 categories:(id)a4 maximumDistance:(double)a5;
- (id)nearestItemForRegion:(id)a3 inItems:(id)a4;
- (id)predicateForEntryNearbyRegion:(id)a3;
- (id)predicateForRegion:(id)a3;
- (id)updateBusinessItems:(id)a3;
- (unint64_t)numberOfBusinessItemsForRegion:(id)a3;
- (void)_updateManagedBusinessItem:(id)a3 withBusinessItem:(id)a4;
- (void)insertBatchesOfBusinessItems:(id)a3 forRegions:(id)a4;
- (void)invalidateCacheForGeoServiceProviderChangeToProvider:(id)a3;
- (void)invalidateCacheItemsBeforeDateWithTimestamp:(double)a3;
@end

@implementation CLSBusinessCategoryCache

- (id)updateBusinessItems:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(CLSDBCache *)self managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__CLSBusinessCategoryCache_updateBusinessItems___block_invoke;
  v13[3] = &unk_2788A7350;
  v14 = v4;
  v15 = self;
  v7 = v5;
  v16 = v7;
  v17 = v6;
  v8 = v6;
  v9 = v4;
  [v8 performBlockAndWait:v13];
  v10 = v17;
  v11 = v7;

  return v7;
}

void __48__CLSBusinessCategoryCache_updateBusinessItems___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
  v5 = 0x277CCA000uLL;
  if (v4)
  {
    v6 = v4;
    v7 = *v43;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v42 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "muid", v31)}];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v6);
  }

  v11 = v31;
  v12 = *(v31 + 40);
  v13 = [v2 allKeys];
  v14 = [v12 _fetchBusinessItemsForMUIDs:v13];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v14;
  v33 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v33)
  {
    v15 = *v39;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * j);
        v18 = [*(v5 + 2992) numberWithUnsignedLongLong:{objc_msgSend(v17, "muid", v31)}];
        v19 = [v2 objectForKeyedSubscript:v18];
        if (v19)
        {
          v20 = v2;
          [v2 removeObjectForKey:v18];
          v21 = [v19 name];
          [v17 setName:v21];

          [v17 setVenueCapacity:{objc_msgSend(v19, "venueCapacity")}];
          v22 = [v19 businessCategories];
          if ([v22 count])
          {
            v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v22];
            [v23 allObjects];
            v25 = v24 = v15;
            v26 = [v25 componentsJoinedByString:@"_#_"];

            v15 = v24;
            v11 = v31;
          }

          else
          {
            v26 = 0;
          }

          [v17 setBusinessCategories:v26];

          v27 = [v11[5] businessItemFromManagedObject:v17];
          if (v27)
          {
            [v11[6] addObject:v27];
          }

          v5 = 0x277CCA000;
          v2 = v20;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v33);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __48__CLSBusinessCategoryCache_updateBusinessItems___block_invoke_2;
  v34[3] = &unk_2788A73F0;
  v28 = v11[7];
  v29 = v11[5];
  v30 = v11[6];
  v35 = v28;
  v36 = v29;
  v37 = v30;
  [v2 enumerateKeysAndObjectsUsingBlock:v34];
  [v11[5] _save];
}

void __48__CLSBusinessCategoryCache_updateBusinessItems___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = +[CLSManagedBusinessItem entityName];
  v8 = [v4 insertNewObjectForEntityForName:v6 inManagedObjectContext:*(a1 + 32)];

  [*(a1 + 40) _updateManagedBusinessItem:v8 withBusinessItem:v5];
  v7 = [*(a1 + 40) businessItemFromManagedObject:v8];
  if (v7)
  {
    [*(a1 + 48) addObject:v7];
  }
}

- (void)_updateManagedBusinessItem:(id)a3 withBusinessItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 region];
  v8 = [v6 categories];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v9 = GEOSpatialLookupAllCategories();
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = ___CLSBusinessCategoryCacheSerializeCategories_block_invoke;
  v26 = &unk_2788A7418;
  v10 = v8;
  v27 = v10;
  v28 = &v29;
  [v9 enumerateObjectsUsingBlock:&v23];
  v11 = *(v30 + 6);

  _Block_object_dispose(&v29, 8);
  [v7 center];
  v13 = v12;
  v15 = v14;
  [v5 setMuid:{objc_msgSend(v6, "muid")}];
  [v5 setVenueCapacity:{objc_msgSend(v6, "venueCapacity")}];
  [v5 setLatitude:v13];
  [v5 setLongitude:v15];
  [v7 radius];
  [v5 setRadius:?];
  [v5 setCategories:v11];
  v16 = [v6 name];
  [v5 setName:v16];

  v17 = [v6 businessCategories];
  if ([v17 count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v17];
    v19 = [v18 allObjects];
    v20 = [v19 componentsJoinedByString:@"_#_"];
  }

  else
  {
    v20 = 0;
  }

  [v5 setBusinessCategories:v20];

  v21 = [v6 geoServiceProvider];
  [v5 setGeoServiceProvider:v21];

  v22 = [v6 isoCountryCode];
  [v5 setIsoCountryCode:v22];
}

- (id)_fetchBusinessItemsForMUIDs:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1259;
  v18 = __Block_byref_object_dispose__1260;
  v19 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CLSBusinessCategoryCache__fetchBusinessItemsForMUIDs___block_invoke;
  v10[3] = &unk_2788A73C8;
  v6 = v4;
  v11 = v6;
  v13 = &v14;
  v7 = v5;
  v12 = v7;
  [v7 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __56__CLSBusinessCategoryCache__fetchBusinessItemsForMUIDs___block_invoke(void *a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedBusinessItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"muid IN %@", a1[4]];
  [v4 setPredicate:v5];

  v6 = a1[5];
  v11 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v11];
  v8 = v11;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (unint64_t)numberOfBusinessItemsForRegion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CLSBusinessCategoryCache_numberOfBusinessItemsForRegion___block_invoke;
  v10[3] = &unk_2788A88D8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [v7 performBlockAndWait:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __59__CLSBusinessCategoryCache_numberOfBusinessItemsForRegion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSBusinessCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchLimit:1];
  v5 = [*(a1 + 32) predicateForRegion:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 48);
  v18 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v18];
  v8 = v18;
  if (v7 && [v7 count])
  {
    v9 = [v7 firstObject];
    v10 = MEMORY[0x277CBE428];
    v11 = +[CLSManagedBusinessItem entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(entry == %@)", v9];
    [v12 setPredicate:v13];
    v14 = *(a1 + 48);
    v17 = v8;
    v15 = [v14 countForFetchRequest:v12 error:&v17];
    v16 = v17;

    *(*(*(a1 + 56) + 8) + 24) = v15;
    v8 = v16;
  }
}

- (BOOL)hasRegion:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__CLSBusinessCategoryCache_hasRegion___block_invoke;
  v9[3] = &unk_2788A88D8;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [v7 performBlockAndWait:v9];
  LOBYTE(v5) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v5;
}

void __38__CLSBusinessCategoryCache_hasRegion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSBusinessCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateForRegion:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 48);
  v11 = 0;
  v7 = [v6 countForFetchRequest:v4 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9;
  *(*(*(a1 + 56) + 8) + 24) = v10;
}

- (id)businessItemFromManagedObject:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  [v3 latitude];
  v6 = v5;
  [v3 longitude];
  v8 = v7;
  [v3 radius];
  v10 = v9;
  v11 = [v3 muid];
  v12 = CLLocationCoordinate2DMake(v6, v8);
  v13 = objc_alloc(MEMORY[0x277CBFBC8]);
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  v16 = [v13 initWithCenter:v15 radius:v12.latitude identifier:{v12.longitude, v10}];

  LODWORD(v14) = [v3 categories];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = GEOSpatialLookupAllCategories();
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___CLSBusinessCategoryCacheDeserializeCategories_block_invoke;
  v32 = &unk_2788A7440;
  v34 = v14;
  v19 = v17;
  v33 = v19;
  [v18 enumerateObjectsUsingBlock:&v29];

  if (v19)
  {
    v20 = [CLSBusinessItem alloc];
    v21 = [(CLSBusinessItem *)v20 initWithName:v4 region:v16 categories:v19, v29, v30, v31, v32];
    [(CLSBusinessItem *)v21 setMuid:v11];
    [(CLSBusinessItem *)v21 setCached:1];
    v22 = [v3 businessCategories];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 componentsSeparatedByString:@"_#_"];
    }

    else
    {
      v24 = 0;
    }

    [(CLSBusinessItem *)v21 setBusinessCategories:v24];

    -[CLSBusinessItem setVenueCapacity:](v21, "setVenueCapacity:", [v3 venueCapacity]);
    v27 = [v3 geoServiceProvider];
    [(CLSBusinessItem *)v21 setGeoServiceProvider:v27];

    v26 = [v3 isoCountryCode];
    [(CLSBusinessItem *)v21 setIsoCountryCode:v26];
  }

  else
  {
    v25 = [CLSLogging sharedLogging:v29];
    v26 = [v25 loggingConnection];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&dword_22F907000, v26, OS_LOG_TYPE_ERROR, "An error occurred unarchiving categories value for business item", &v29, 2u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)businessItemsForMuids:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1259;
  v19 = __Block_byref_object_dispose__1260;
  v20 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__CLSBusinessCategoryCache_businessItemsForMuids___block_invoke;
  v10[3] = &unk_2788A88D8;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v13 = self;
  v14 = &v15;
  v12 = v7;
  [v7 performBlockAndWait:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __50__CLSBusinessCategoryCache_businessItemsForMuids___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedBusinessItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"muid in %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 40);
  v22 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v22];
  v8 = v22;
  if ([v7 count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(a1 + 48) businessItemFromManagedObject:*(*(&v18 + 1) + 8 * v16)];
          if (v17)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (id)businessItemsForMuid:(unint64_t)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1259;
  v18 = __Block_byref_object_dispose__1260;
  v19 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CLSBusinessCategoryCache_businessItemsForMuid___block_invoke;
  v9[3] = &unk_2788A73A0;
  v13 = a3;
  v6 = v5;
  v11 = self;
  v12 = &v14;
  v10 = v6;
  [v6 performBlockAndWait:v9];
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __49__CLSBusinessCategoryCache_businessItemsForMuid___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedBusinessItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"muid == %lu", *(a1 + 56)];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:1];
  v6 = *(a1 + 32);
  v13 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v13];
  v8 = v13;
  if ([v7 count])
  {
    v9 = [v7 firstObject];
    v10 = [*(a1 + 40) businessItemFromManagedObject:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)_businessItemInRegion:(id)a3 matchingCategories:(id)a4 maximumDistance:(double)a5 forBusinessItems:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v10;
  v39.latitude = 0.0;
  *&v39.longitude = &v39;
  v40 = 0x2020000000;
  v41 = 0;
  v13 = GEOSpatialLookupAllCategories();
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = ___CLSBusinessCategoryCacheSerializeCategories_block_invoke;
  v36 = &unk_2788A7418;
  v14 = v12;
  v37 = v14;
  v38 = &v39;
  [v13 enumerateObjectsUsingBlock:&v33];
  v15 = *(*&v39.longitude + 24);

  _Block_object_dispose(&v39, 8);
  v16 = [MEMORY[0x277CBEB58] set];
  [v9 center];
  v33 = v17;
  v34 = v18;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v11;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v20)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if (([v23 categories] & v15) != 0)
        {
          v39.latitude = 0.0;
          v39.longitude = 0.0;
          [v23 latitude];
          v25 = v24;
          [v23 longitude];
          v39 = CLLocationCoordinate2DMake(v25, v26);
          CLLocationCoordinate2DGetDistanceFrom();
          if (v27 <= a5)
          {
            [v16 addObject:v23];
          }
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v20);
  }

  return v16;
}

- (id)businessItemsInRegion:(id)a3 categories:(id)a4 maximumDistance:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 count])
  {
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = [(CLSDBCache *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__CLSBusinessCategoryCache_businessItemsInRegion_categories_maximumDistance___block_invoke;
    v17[3] = &unk_2788A7378;
    v17[4] = self;
    v18 = v8;
    v19 = v11;
    v20 = v9;
    v22 = a5;
    v12 = v10;
    v21 = v12;
    v13 = v11;
    [v13 performBlockAndWait:v17];
    v14 = v21;
    v15 = v12;
  }

  else
  {
    v15 = [MEMORY[0x277CBEB98] set];
  }

  return v15;
}

void __77__CLSBusinessCategoryCache_businessItemsInRegion_categories_maximumDistance___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSBusinessCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateForEntryNearbyRegion:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 48);
  v30 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v30];
  v8 = v30;
  if (v7 && [v7 count])
  {
    v9 = [*(a1 + 32) nearestItemForRegion:*(a1 + 40) inItems:v7];
    v10 = MEMORY[0x277CBE428];
    v11 = +[CLSManagedBusinessItem entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    v24 = v9;
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(entry == %@)", v9];
    [v12 setPredicate:?];
    v13 = *(a1 + 48);
    v29 = v8;
    v14 = [v13 executeFetchRequest:v12 error:&v29];
    v22 = v29;

    v15 = [*(a1 + 32) _businessItemInRegion:*(a1 + 40) matchingCategories:*(a1 + 56) maximumDistance:v14 forBusinessItems:*(a1 + 72)];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(a1 + 32) businessItemFromManagedObject:*(*(&v25 + 1) + 8 * v19)];
          if (v20)
          {
            [*(a1 + 64) addObject:v20];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }

    v8 = v22;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 40);
    *buf = 138477827;
    v32 = v21;
    _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[BusinessCache] No Entry for region %{private}@", buf, 0xCu);
  }
}

- (id)businessItemsForRegion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1259;
  v18 = __Block_byref_object_dispose__1260;
  v19 = 0;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__CLSBusinessCategoryCache_businessItemsForRegion___block_invoke;
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

void __51__CLSBusinessCategoryCache_businessItemsForRegion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSBusinessCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchLimit:1];
  v5 = [*(a1 + 32) predicateForRegion:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 48);
  v32 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v32];
  v8 = v32;
  if (v7 && [v7 count])
  {
    v9 = [v7 firstObject];
    v10 = MEMORY[0x277CBE428];
    v11 = +[CLSManagedBusinessItem entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    v26 = v9;
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(entry == %@)", v9];
    [v12 setPredicate:v13];
    v14 = *(a1 + 48);
    v31 = v8;
    v15 = [v14 executeFetchRequest:v12 error:&v31];
    v25 = v31;

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v15;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        v23 = 0;
        do
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(a1 + 32) businessItemFromManagedObject:*(*(&v27 + 1) + 8 * v23)];
          if (v24)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v24];
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v21);
    }

    v8 = v25;
  }
}

- (id)nearestItemForRegion:(id)a3 inItems:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 center];
  v29 = v7;
  v30 = v8;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        [v16 latitude];
        v18 = v17;
        [v16 longitude];
        v20 = CLLocationCoordinate2DMake(v18, v19);
        CLLocationCoordinate2DGetDistanceFrom();
        if (v21 < v14)
        {
          v22 = v21;
          v23 = v16;

          v12 = v23;
          v14 = v22;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:{16, *&v20.latitude, *&v20.longitude}];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)insertBatchesOfBusinessItems:(id)a3 forRegions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v7 count];
      if (v9 == [v6 count])
      {
        v10 = [(CLSDBCache *)self managedObjectContext];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __68__CLSBusinessCategoryCache_insertBatchesOfBusinessItems_forRegions___block_invoke;
        v12[3] = &unk_2788A7350;
        v13 = v6;
        v14 = v8;
        v15 = v10;
        v16 = self;
        v11 = v10;
        [v11 performBlockAndWait:v12];
      }
    }
  }
}

uint64_t __68__CLSBusinessCategoryCache_insertBatchesOfBusinessItems_forRegions___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v5 = 0;
    v26 = *v38;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = *(*(&v37 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v32 = v5;
        v8 = [*(a1 + 40) objectAtIndexedSubscript:v5];
        v9 = MEMORY[0x277CBE408];
        v10 = +[CLSBusinessCacheEntry entityName];
        v11 = [v9 insertNewObjectForEntityForName:v10 inManagedObjectContext:*(a1 + 48)];

        [v8 center];
        v13 = v12;
        [v11 setLatitude:?];
        [v11 setLongitude:v13];
        v29 = v8;
        [v8 radius];
        [v11 setRadius:?];
        v28 = v11;
        [v11 setUpdateTimestamp:v4];
        v14 = [MEMORY[0x277CBEB58] set];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = v7;
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            v19 = 0;
            do
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * v19);
              v21 = MEMORY[0x277CBE408];
              v22 = +[CLSManagedBusinessItem entityName];
              v23 = [v21 insertNewObjectForEntityForName:v22 inManagedObjectContext:*(a1 + 48)];

              [*(a1 + 56) _updateManagedBusinessItem:v23 withBusinessItem:v20];
              [v14 addObject:v23];

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v17);
        }

        v5 = v32 + 1;

        [v28 setBusinessItems:v14];
        objc_autoreleasePoolPop(context);
        v6 = v31 + 1;
      }

      while (v31 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  return [*(a1 + 56) _save];
}

- (id)_fetchedBusinessItemByMUIDForBusinessItems:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v27 + 1) + 8 * i), "muid")}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v12 = [(CLSBusinessCategoryCache *)self _fetchBusinessItemsForMUIDs:v5];
  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        v20 = [v19 muid];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
        [v13 setObject:v19 forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  return v13;
}

- (id)predicateForRegion:(id)a3
{
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v3 = a3;
  CLSCalculateRangeCoordinateForRegion(v3, &v16, &v15, &v14, &v13);
  v4 = MEMORY[0x277CCAC30];
  v6 = v15;
  v5 = v16;
  v8 = v13;
  v7 = v14;
  [v3 radius];
  v10 = v9;

  v11 = [v4 predicateWithFormat:@"(latitude >= %f) && (latitude <= %f) && (longitude >= %f) && (longitude <= %f) && (radius == %f)", v5, v7, v6, v8, v10];

  return v11;
}

- (id)predicateForEntryNearbyRegion:(id)a3
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  CLSCalculateRangeCoordinateForRegion(a3, &v8, &v7, &v6, &v5);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(latitude >= %f) && (latitude <= %f) && (longitude >= %f) && (longitude <= %f)", v8, v6, v7, v5];

  return v3;
}

- (void)invalidateCacheForGeoServiceProviderChangeToProvider:(id)a3
{
  v4 = a3;
  v5 = [(CLSDBCache *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__CLSBusinessCategoryCache_invalidateCacheForGeoServiceProviderChangeToProvider___block_invoke;
  v8[3] = &unk_2788A8900;
  v9 = v4;
  v10 = v5;
  v11 = self;
  v6 = v5;
  v7 = v4;
  [v6 performBlockAndWait:v8];
}

void __81__CLSBusinessCategoryCache_invalidateCacheForGeoServiceProviderChangeToProvider___block_invoke(uint64_t a1)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedBusinessItem entityName];
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
  v48 = v8;
  v61[0] = v8;
  v61[1] = v5;
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
    v16 = +[CLSBusinessCacheEntry entityName];
    v17 = [v15 fetchRequestWithEntityName:v16];

    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY businessItems IN %@", v13];

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
        _os_log_error_impl(&dword_22F907000, v24, OS_LOG_TYPE_ERROR, "Failed to batch-delete business cache entries: Error: %@", buf, 0xCu);
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
      _os_log_impl(&dword_22F907000, v24, OS_LOG_TYPE_INFO, "Batch deleted %@ business cache entries, for provider %@", buf, 0x16u);
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
        _os_log_error_impl(&dword_22F907000, v39, OS_LOG_TYPE_ERROR, "Failed to batch-delete business cache entries: Error: %@", buf, 0xCu);
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
        *buf = 138412546;
        v58 = v40;
        v59 = 2112;
        v60 = v41;
        _os_log_impl(&dword_22F907000, v39, OS_LOG_TYPE_INFO, "Batch deleted %@ business items, for provider %@", buf, 0x16u);
      }
    }

    [*(a1 + 48) _save];
    v11 = v44;
    v5 = v47;
  }
}

- (void)invalidateCacheItemsBeforeDateWithTimestamp:(double)a3
{
  v5 = [(CLSDBCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CLSBusinessCategoryCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke;
  v7[3] = &unk_2788A8860;
  v9 = a3;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __72__CLSBusinessCategoryCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSBusinessCacheEntry entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateEntryWithUpdateTimestamp];
  v21 = @"updateTimestamp";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v22[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v8 = [v5 predicateWithSubstitutionVariables:v7];

  [v4 setPredicate:v8];
  v9 = [*(a1 + 32) managedObjectContext];
  v20 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v20];
  v19 = v20;

  if (v10)
  {
    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = 0;
        do
        {
          v16 = [v10 objectAtIndexedSubscript:v13 + v15];
          [*(a1 + 40) deleteObject:v16];
          v17 = v13 + v15 + 1;

          v18 = v15 + 1;
          if (v15 > 0x12)
          {
            break;
          }

          ++v15;
        }

        while (v17 < v12);
        [*(a1 + 32) _save];
        objc_autoreleasePoolPop(v14);
        v13 += v18;
      }

      while (v17 < v12);
    }
  }
}

- (CLSBusinessCategoryCache)initWithURL:(id)a3 dataModelName:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLSBusinessCategoryCache;
  v4 = [(CLSDBCache *)&v8 initWithURL:a3 dataModelName:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(updateTimestamp <= $updateTimestamp)"];
    predicateEntryWithUpdateTimestamp = v4->_predicateEntryWithUpdateTimestamp;
    v4->_predicateEntryWithUpdateTimestamp = v5;
  }

  return v4;
}

@end
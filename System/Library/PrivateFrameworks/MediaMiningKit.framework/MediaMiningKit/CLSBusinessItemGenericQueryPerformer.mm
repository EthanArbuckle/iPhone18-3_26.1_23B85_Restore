@interface CLSBusinessItemGenericQueryPerformer
+ (id)queryWithTemplate:(id)template forRegions:(id)regions;
- ($06626BA963112C91E7E52BBD3AECAE4D)statistics;
- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions;
- (CLSBusinessItemGenericQueryPerformer)initWithBusinessCategoryCache:(id)cache locationCache:(id)locationCache;
- (CLSBusinessItemGenericQueryPerformer)initWithRegions:(id)regions categories:(id)categories precision:(double)precision businessCategoryCache:(id)cache locationCache:(id)locationCache;
- (unint64_t)cacheItems:(id)items;
- (void)cancel;
- (void)logGeoLookupCounterAndDurationWithLookupDuration:(id)duration;
- (void)logGeoLookupFailureResult;
- (void)setStatistics:(id *)statistics;
- (void)submitWithHandler:(id)handler;
@end

@implementation CLSBusinessItemGenericQueryPerformer

- (void)setStatistics:(id *)statistics
{
  v3 = *&statistics->var0;
  v4 = *&statistics->var2;
  self->_statistics.batchSize = statistics->var4;
  *&self->_statistics.numberOfUnneededLocations = v4;
  *&self->_statistics.numberOfLocations = v3;
}

- ($06626BA963112C91E7E52BBD3AECAE4D)statistics
{
  v3 = *&self[2].var1;
  *&retstr->var0 = *&self[1].var4;
  *&retstr->var2 = v3;
  retstr->var4 = self[2].var3;
  return self;
}

- (void)logGeoLookupFailureResult
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CF6EC0];
  v4 = @"spatialLookupFailureCount";
  v5[0] = &unk_28449B7B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 sendEvent:@"com.apple.Photos.GraphGeoService" withPayload:v3];
}

- (void)logGeoLookupCounterAndDurationWithLookupDuration:(id)duration
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (duration)
  {
    v3 = MEMORY[0x277CF6EC0];
    v7[0] = @"spatialLookupCount";
    v7[1] = @"spatialLookupDelay";
    v8[0] = &unk_28449B7B8;
    v8[1] = duration;
    v4 = MEMORY[0x277CBEAC0];
    durationCopy = duration;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];
    [v3 sendEvent:@"com.apple.Photos.GraphGeoService" withPayload:v6];
  }
}

- (unint64_t)cacheItems:(id)items
{
  v66 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  selfCopy = self;
  loggingConnection = [(CLSBusinessItemGenericQueryPerformer *)self loggingConnection];
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = loggingConnection;
  v8 = v7;
  v38 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F907000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CacheItems", "", buf, 2u);
  }

  spid = v6;
  v37 = v8;

  info = 0;
  mach_timebase_info(&info);
  v36 = mach_absolute_time();
  businessCategoryCache = [(CLSBusinessItemGenericQueryPerformer *)selfCopy businessCategoryCache];
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = itemsCopy;
  v44 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v44)
  {
    v9 = 0;
    v10 = 0;
    v42 = *v56;
    do
    {
      v39 = v10;
      for (i = 0; i != v44; ++i)
      {
        v50 = v9;
        if (*v56 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        allKeys = [v12 allKeys];
        firstObject = [allKeys firstObject];

        v47 = [(CLSLocationCache *)selfCopy->_locationCache placemarksForLocation:firstObject];
        firstObject2 = [v47 firstObject];
        iSOcountryCode = [firstObject2 ISOcountryCode];

        if (!iSOcountryCode)
        {
          v17 = +[CLSLogging sharedLogging];
          loggingConnection2 = [v17 loggingConnection];

          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "[GeoMapService BusinessItemQuery] Not able to hit the cache, business item will have an empty isoCountryCode", buf, 2u);
          }
        }

        v48 = firstObject;
        allValues = [v12 allValues];
        firstObject3 = [allValues firstObject];

        v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(firstObject3, "count")}];
        v22 = [firstObject3 count];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v23 = firstObject3;
        v24 = [v23 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v52;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v52 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [[CLSBusinessItem alloc] initFromMapItem:*(*(&v51 + 1) + 8 * j) isoCountryCode:iSOcountryCode categoryOnly:1];
              if (v28)
              {
                [v21 addObject:v28];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v51 objects:v64 count:16];
          }

          while (v25);
        }

        v9 = v22 + v50;

        [v46 addObject:v21];
        [v45 addObject:v48];
        if ((v22 + v50) >= 0xC8)
        {
          [businessCategoryCache insertBatchesOfBusinessItems:v46 forRegions:v45];
          [businessCategoryCache invalidateMemoryCaches];
          [v46 removeAllObjects];
          [v45 removeAllObjects];
          v9 = 0;
        }

        objc_autoreleasePoolPop(context);
      }

      v10 = v39 + v44;
      v44 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v44);
  }

  else
  {
    v10 = 0;
  }

  [businessCategoryCache insertBatchesOfBusinessItems:v46 forRegions:v45];
  [businessCategoryCache invalidateMemoryCaches];
  v29 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v32 = v37;
  v33 = v32;
  if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F907000, v33, OS_SIGNPOST_INTERVAL_END, spid, "CacheItems", "", buf, 2u);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v61 = "CacheItems";
    v62 = 2048;
    v63 = ((((v29 - v36) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F907000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v10;
}

- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions
{
  v28 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  regionsCopy = regions;
  v8 = [regionsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(regionsCopy);
        }

        if ([CLSLocationCache cachedRegion:*(*(&v23 + 1) + 8 * i) isMatchingOtherRegion:regionCopy, v23])
        {
          LOBYTE(v21) = 0;
          businessCategoryCache = regionsCopy;
          goto LABEL_11;
        }
      }

      v9 = [regionsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  businessCategoryCache = [(CLSBusinessItemGenericQueryPerformer *)self businessCategoryCache];
  v13 = objc_alloc(MEMORY[0x277CBFBC8]);
  [regionCopy center];
  v15 = v14;
  v17 = v16;
  precision = self->_precision;
  identifier = [regionCopy identifier];
  v20 = [v13 initWithCenter:identifier radius:v15 identifier:{v17, precision}];

  v21 = [businessCategoryCache hasRegion:v20] ^ 1;
LABEL_11:

  return v21;
}

- (void)cancel
{
  businessGenericTicket = [(CLSBusinessItemGenericQueryPerformer *)self businessGenericTicket];
  [businessGenericTicket cancel];

  self->_isCancelled = 1;
}

- (void)submitWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  businessGenericTicket = [(CLSBusinessItemGenericQueryPerformer *)self businessGenericTicket];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CLSBusinessItemGenericQueryPerformer_submitWithHandler___block_invoke;
  v9[3] = &unk_2788A7F20;
  v7 = handlerCopy;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  v8 = +[CLSGeoMapQueryHelper auditToken];
  [businessGenericTicket submitWithHandler:v9 auditToken:v8 networkActivity:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v5);
}

void __58__CLSBusinessItemGenericQueryPerformer_submitWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[CLSLogging sharedLogging];
  v6 = [v5 loggingConnection];

  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v36 = [v3 localizedDescription];
      *buf = 138412290;
      v57 = v36;
      _os_log_error_impl(&dword_22F907000, v6, OS_LOG_TYPE_ERROR, "[GeoMapService BusinessItemQuery] Failed to complete with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F907000, v6, OS_LOG_TYPE_INFO, "[GeoMapService BusinessItemQuery] Sucessfully completed business item query", buf, 2u);
    }

    v43 = [MEMORY[0x277CBEB18] array];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v38 = a1;
      v39 = v4;
      v9 = [WeakRetained locationGeoParameters];
      v42 = [v8 businessGenericTicket];
      v41 = [v8 regions];
      v37 = v8;
      [v8 precision];
      v11 = v10;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v9;
      v12 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v49;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v49 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v48 + 1) + 8 * i);
            v18 = [MEMORY[0x277CBEB18] array];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v19 = [v42 mapItemsForParameters:v17];
            v20 = [v19 countByEnumeratingWithState:&v44 objects:v54 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v45;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v45 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  [v18 addObject:*(*(&v44 + 1) + 8 * j)];
                }

                v21 = [v19 countByEnumeratingWithState:&v44 objects:v54 count:16];
              }

              while (v21);
            }

            v24 = +[CLSLogging sharedLogging];
            v25 = [v24 loggingConnection];

            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v18 count];
              *buf = 134217984;
              v57 = v26;
              _os_log_impl(&dword_22F907000, v25, OS_LOG_TYPE_INFO, "[GeoMapService BusinessItemQuery] Fetched: %lu map items for business item", buf, 0xCu);
            }

            v27 = [v41 objectAtIndexedSubscript:v14];
            v28 = objc_alloc(MEMORY[0x277CBFBC8]);
            [v27 center];
            v30 = v29;
            v32 = v31;
            v33 = [v27 identifier];
            v34 = [v28 initWithCenter:v33 radius:v30 identifier:{v32, v11}];

            v52 = v34;
            v53 = v18;
            v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
            [v43 addObject:v35];
            ++v14;
          }

          v13 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v13);
      }

      v4 = v39;
      v3 = 0;
      v8 = v37;
      a1 = v38;
    }

    (*(*(a1 + 32) + 16))();
  }

  objc_autoreleasePoolPop(v4);
}

- (CLSBusinessItemGenericQueryPerformer)initWithRegions:(id)regions categories:(id)categories precision:(double)precision businessCategoryCache:(id)cache locationCache:(id)locationCache
{
  v43 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  categoriesCopy = categories;
  cacheCopy = cache;
  locationCacheCopy = locationCache;
  v13 = [(CLSBusinessItemGenericQueryPerformer *)self initWithBusinessCategoryCache:cacheCopy locationCache:?];
  v14 = v13;
  if (v13)
  {
    v13->_precision = precision;
    v15 = +[CLSLocationShifter sharedLocationShifter];
    array = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = regionsCopy;
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v18)
    {
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          [v21 center];
          v23 = v22;
          [v21 center];
          [v15 shiftedCoordinateForOriginalCoordinate:v23];
          v26 = [objc_alloc(MEMORY[0x277D0ED60]) initWithCoordinate:categoriesCopy radius:v24 categories:{v25, precision}];
          [array addObject:v26];
        }

        v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v18);
    }

    v27 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    locationGeoParameters = v14->_locationGeoParameters;
    v14->_locationGeoParameters = v27;

    mEMORY[0x277D0EBD0] = [MEMORY[0x277D0EBD0] sharedService];
    objc_sync_enter(mEMORY[0x277D0EBD0]);
    v30 = [mEMORY[0x277D0EBD0] ticketForSpatialLookupParameters:v14->_locationGeoParameters traits:0];
    businessGenericTicket = v14->_businessGenericTicket;
    v14->_businessGenericTicket = v30;

    objc_sync_exit(mEMORY[0x277D0EBD0]);
    v32 = [v17 copy];
    regions = v14->_regions;
    v14->_regions = v32;
  }

  return v14;
}

- (CLSBusinessItemGenericQueryPerformer)initWithBusinessCategoryCache:(id)cache locationCache:(id)locationCache
{
  cacheCopy = cache;
  locationCacheCopy = locationCache;
  v13.receiver = self;
  v13.super_class = CLSBusinessItemGenericQueryPerformer;
  v9 = [(CLSBusinessItemGenericQueryPerformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_isCancelled = 0;
    [objc_opt_class() defaultPrecision];
    v10->_precision = v11;
    *&v10->_statistics.numberOfLocations = 0u;
    *&v10->_statistics.numberOfUnneededLocations = 0u;
    v10->_statistics.batchSize = 0;
    objc_storeStrong(&v10->_businessCategoryCache, cache);
    objc_storeStrong(&v10->_locationCache, locationCache);
  }

  return v10;
}

+ (id)queryWithTemplate:(id)template forRegions:(id)regions
{
  regionsCopy = regions;
  templateCopy = template;
  v7 = objc_alloc(objc_opt_class());
  categories = [objc_opt_class() categories];
  [templateCopy precision];
  v10 = v9;
  businessCategoryCache = [templateCopy businessCategoryCache];
  locationCache = [templateCopy locationCache];

  v13 = [v7 initWithRegions:regionsCopy categories:categories precision:businessCategoryCache businessCategoryCache:locationCache locationCache:v10];

  return v13;
}

@end
@interface CLSBusinessItemGenericQueryPerformer
+ (id)queryWithTemplate:(id)a3 forRegions:(id)a4;
- ($06626BA963112C91E7E52BBD3AECAE4D)statistics;
- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4;
- (CLSBusinessItemGenericQueryPerformer)initWithBusinessCategoryCache:(id)a3 locationCache:(id)a4;
- (CLSBusinessItemGenericQueryPerformer)initWithRegions:(id)a3 categories:(id)a4 precision:(double)a5 businessCategoryCache:(id)a6 locationCache:(id)a7;
- (unint64_t)cacheItems:(id)a3;
- (void)cancel;
- (void)logGeoLookupCounterAndDurationWithLookupDuration:(id)a3;
- (void)logGeoLookupFailureResult;
- (void)setStatistics:(id *)a3;
- (void)submitWithHandler:(id)a3;
@end

@implementation CLSBusinessItemGenericQueryPerformer

- (void)setStatistics:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->_statistics.batchSize = a3->var4;
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

- (void)logGeoLookupCounterAndDurationWithLookupDuration:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CF6EC0];
    v7[0] = @"spatialLookupCount";
    v7[1] = @"spatialLookupDelay";
    v8[0] = &unk_28449B7B8;
    v8[1] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];
    [v3 sendEvent:@"com.apple.Photos.GraphGeoService" withPayload:v6];
  }
}

- (unint64_t)cacheItems:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = self;
  v5 = [(CLSBusinessItemGenericQueryPerformer *)self loggingConnection];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
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
  v40 = [(CLSBusinessItemGenericQueryPerformer *)v43 businessCategoryCache];
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
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
        v13 = [v12 allKeys];
        v14 = [v13 firstObject];

        v47 = [(CLSLocationCache *)v43->_locationCache placemarksForLocation:v14];
        v15 = [v47 firstObject];
        v16 = [v15 ISOcountryCode];

        if (!v16)
        {
          v17 = +[CLSLogging sharedLogging];
          v18 = [v17 loggingConnection];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F907000, v18, OS_LOG_TYPE_ERROR, "[GeoMapService BusinessItemQuery] Not able to hit the cache, business item will have an empty isoCountryCode", buf, 2u);
          }
        }

        v48 = v14;
        v19 = [v12 allValues];
        v20 = [v19 firstObject];

        v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
        v22 = [v20 count];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v23 = v20;
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

              v28 = [[CLSBusinessItem alloc] initFromMapItem:*(*(&v51 + 1) + 8 * j) isoCountryCode:v16 categoryOnly:1];
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
          [v40 insertBatchesOfBusinessItems:v46 forRegions:v45];
          [v40 invalidateMemoryCaches];
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

  [v40 insertBatchesOfBusinessItems:v46 forRegions:v45];
  [v40 invalidateMemoryCaches];
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

- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([CLSLocationCache cachedRegion:*(*(&v23 + 1) + 8 * i) isMatchingOtherRegion:v6, v23])
        {
          LOBYTE(v21) = 0;
          v12 = v7;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(CLSBusinessItemGenericQueryPerformer *)self businessCategoryCache];
  v13 = objc_alloc(MEMORY[0x277CBFBC8]);
  [v6 center];
  v15 = v14;
  v17 = v16;
  precision = self->_precision;
  v19 = [v6 identifier];
  v20 = [v13 initWithCenter:v19 radius:v15 identifier:{v17, precision}];

  v21 = [v12 hasRegion:v20] ^ 1;
LABEL_11:

  return v21;
}

- (void)cancel
{
  v3 = [(CLSBusinessItemGenericQueryPerformer *)self businessGenericTicket];
  [v3 cancel];

  self->_isCancelled = 1;
}

- (void)submitWithHandler:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  v6 = [(CLSBusinessItemGenericQueryPerformer *)self businessGenericTicket];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CLSBusinessItemGenericQueryPerformer_submitWithHandler___block_invoke;
  v9[3] = &unk_2788A7F20;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  v8 = +[CLSGeoMapQueryHelper auditToken];
  [v6 submitWithHandler:v9 auditToken:v8 networkActivity:0];

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

- (CLSBusinessItemGenericQueryPerformer)initWithRegions:(id)a3 categories:(id)a4 precision:(double)a5 businessCategoryCache:(id)a6 locationCache:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v12 = a4;
  v35 = a6;
  v36 = a7;
  v13 = [(CLSBusinessItemGenericQueryPerformer *)self initWithBusinessCategoryCache:v35 locationCache:?];
  v14 = v13;
  if (v13)
  {
    v13->_precision = a5;
    v15 = +[CLSLocationShifter sharedLocationShifter];
    v16 = [MEMORY[0x277CBEB18] array];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = v37;
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
          v26 = [objc_alloc(MEMORY[0x277D0ED60]) initWithCoordinate:v12 radius:v24 categories:{v25, a5}];
          [v16 addObject:v26];
        }

        v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v18);
    }

    v27 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    locationGeoParameters = v14->_locationGeoParameters;
    v14->_locationGeoParameters = v27;

    v29 = [MEMORY[0x277D0EBD0] sharedService];
    objc_sync_enter(v29);
    v30 = [v29 ticketForSpatialLookupParameters:v14->_locationGeoParameters traits:0];
    businessGenericTicket = v14->_businessGenericTicket;
    v14->_businessGenericTicket = v30;

    objc_sync_exit(v29);
    v32 = [v17 copy];
    regions = v14->_regions;
    v14->_regions = v32;
  }

  return v14;
}

- (CLSBusinessItemGenericQueryPerformer)initWithBusinessCategoryCache:(id)a3 locationCache:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    objc_storeStrong(&v10->_businessCategoryCache, a3);
    objc_storeStrong(&v10->_locationCache, a4);
  }

  return v10;
}

+ (id)queryWithTemplate:(id)a3 forRegions:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [objc_opt_class() categories];
  [v6 precision];
  v10 = v9;
  v11 = [v6 businessCategoryCache];
  v12 = [v6 locationCache];

  v13 = [v7 initWithRegions:v5 categories:v8 precision:v11 businessCategoryCache:v12 locationCache:v10];

  return v13;
}

@end
@interface CLSLocationQueryPerformer
+ (id)queryWithTemplate:(id)a3 forRegions:(id)a4;
- ($06626BA963112C91E7E52BBD3AECAE4D)statistics;
- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4;
- (CLSLocationQueryPerformer)initWithLocationCache:(id)a3;
- (CLSLocationQueryPerformer)initWithRegions:(id)a3 precision:(double)a4 locationCache:(id)a5;
- (unint64_t)cacheItems:(id)a3;
- (void)logGeoLookupCounterAndDurationWithLookupDuration:(id)a3;
- (void)logGeoLookupFailureResult;
- (void)setStatistics:(id *)a3;
- (void)submitWithHandler:(id)a3;
@end

@implementation CLSLocationQueryPerformer

- (void)setStatistics:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->_statistics.batchSize = a3->var4;
  *&self->_statistics.numberOfLocations = v3;
  *&self->_statistics.numberOfUnneededLocations = v4;
}

- ($06626BA963112C91E7E52BBD3AECAE4D)statistics
{
  v3 = *&self[2].var0;
  *&retstr->var0 = *&self[1].var3;
  *&retstr->var2 = v3;
  retstr->var4 = self[2].var2;
  return self;
}

- (void)logGeoLookupFailureResult
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CF6EC0];
  v4 = @"reverseLookupFailureCount";
  v5[0] = &unk_28449B500;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 sendEvent:@"com.apple.Photos.GraphGeoService" withPayload:v3];
}

- (void)logGeoLookupCounterAndDurationWithLookupDuration:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF6EC0];
  v7[0] = @"reverseLookupCount";
  v7[1] = @"reverseLookupDelay";
  v8[0] = &unk_28449B500;
  v8[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v3 sendEvent:@"com.apple.Photos.GraphGeoService" withPayload:v6];
}

- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([CLSLocationCache cachedRegion:*(*(&v14 + 1) + 8 * i) isMatchingOtherRegion:v6, v14])
        {

          LOBYTE(v12) = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = ![(CLSLocationCache *)self->_locationCache hasRegion:v6];
LABEL_11:

  return v12;
}

- (void)submitWithHandler:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  ticket = self->_ticket;
  v6 = +[CLSGeoMapQueryHelper auditToken];
  [(GEOMapServiceTicket *)ticket submitWithHandler:v7 auditToken:v6 timeout:20 networkActivity:0];

  objc_autoreleasePoolPop(v4);
}

- (unint64_t)cacheItems:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v32 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v32)
  {
    v4 = 0;
    v5 = 0;
    v31 = *v37;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [MEMORY[0x277CBFC40] placemarkWithGEOMapItem:v7];
        if (v9)
        {
          v34 = v8;
          v10 = [v7 areasOfInterest];
          v35 = v5;
          if (v10)
          {
            v11 = [v7 _additionalPlaceInfos];
            v12 = [CLSLitePlacemark popularityScoresOrderedByAOIFromAdditionalPlaceInfos:v11 areasOfInterest:v10];
          }

          else
          {
            v12 = 0;
          }

          v33 = v12;
          v13 = [[CLSLitePlacemark alloc] initWithCLPlacemark:v9 popularityScoresOrderedByAOI:v12];
          v40 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
          [v29 addObject:v14];
          v15 = [(NSArray *)self->_geoLocations objectAtIndexedSubscript:v4];
          v16 = [v15 latLng];
          [v15 horizontalAccuracy];
          v18 = v17;
          [v16 lat];
          v20 = v19;
          [v16 lng];
          v22 = v21;
          v23 = objc_alloc(MEMORY[0x277CE41F8]);
          v24 = [MEMORY[0x277CBEAA8] date];
          v25 = [v23 initWithCoordinate:v24 altitude:v20 horizontalAccuracy:v22 verticalAccuracy:0.0 timestamp:{v18, 0.0}];

          [v28 addObject:v25];
          v5 = v35 + 1;

          v8 = v34;
        }

        ++v4;

        objc_autoreleasePoolPop(v8);
      }

      v32 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v32);
  }

  else
  {
    v5 = 0;
  }

  [(CLSLocationCache *)self->_locationCache insertBatchesOfPlacemarks:v29 forLocations:v28];
  return v5;
}

- (CLSLocationQueryPerformer)initWithRegions:(id)a3 precision:(double)a4 locationCache:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v28 = a5;
  v8 = [(CLSLocationQueryPerformer *)self initWithLocationCache:?];
  v30 = v8;
  if (v8)
  {
    v8->_precision = a4;
    v9 = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v29;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    v12 = *MEMORY[0x277CE4208];
    if (v11)
    {
      v13 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          [v15 clsHorizontalAccuracy];
          v17 = v16;
          v18 = objc_alloc_init(MEMORY[0x277D0EB80]);
          v19 = objc_alloc_init(MEMORY[0x277D0EB58]);
          [v15 center];
          [v19 setLat:?];
          [v15 center];
          [v19 setLng:v20];
          [v18 setLatLng:v19];
          [v18 setHorizontalAccuracy:v17];
          [v9 addObject:v18];

          v12 = fmax(v12, v17);
        }

        v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    if ([MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v12])
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v10 copy];
    regions = v30->_regions;
    v30->_regions = v22;

    objc_storeStrong(&v30->_geoLocations, v9);
    v30->_isCancelled = 0;
    v24 = [MEMORY[0x277D0EBD0] sharedService];
    objc_sync_enter(v24);
    v25 = [v24 ticketForBatchReverseGeocodeLocations:v30->_geoLocations locationShifter:&__block_literal_global_615 additionalPlaceTypes:&kPLAnalyzerAdditionalPlaceTypes additionalPlaceTypesCount:9 placeTypeLimit:v21 traits:0];
    ticket = v30->_ticket;
    v30->_ticket = v25;

    objc_sync_exit(v24);
  }

  return v30;
}

id __69__CLSLocationQueryPerformer_initWithRegions_precision_locationCache___block_invoke()
{
  v0 = +[CLSLocationShifter sharedLocationShifter];
  v1 = [v0 locationShifter];

  return v1;
}

- (CLSLocationQueryPerformer)initWithLocationCache:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CLSLocationQueryPerformer;
  v6 = [(CLSLocationQueryPerformer *)&v9 init];
  if (v6)
  {
    [objc_opt_class() defaultPrecision];
    v6->_precision = v7;
    *&v6->_statistics.numberOfLocations = 0u;
    *&v6->_statistics.numberOfUnneededLocations = 0u;
    v6->_statistics.batchSize = 0;
    v6->_statistics.batchSize = [objc_opt_class() numberOfRegionsPerBatch];
    objc_storeStrong(&v6->_locationCache, a3);
  }

  return v6;
}

+ (id)queryWithTemplate:(id)a3 forRegions:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  [v6 precision];
  v9 = v8;
  v10 = [v6 locationCache];

  v11 = [v7 initWithRegions:v5 precision:v10 locationCache:v9];

  return v11;
}

@end
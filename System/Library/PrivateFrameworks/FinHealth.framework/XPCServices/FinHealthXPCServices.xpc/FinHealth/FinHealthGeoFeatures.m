@interface FinHealthGeoFeatures
- (FinHealthGeoFeatures)init;
- (void)_evaluatePointsOfInterestWithCache:(id)a3 bypassMapService:(BOOL)a4 completion:(id)a5;
- (void)_updateCacheWithSpatialPlaceLookupParameters:(id)a3;
- (void)evaluatePointsOfInterest:(id)a3 bypassMapService:(BOOL)a4 completion:(id)a5;
- (void)resetTotalRecordsProcessed;
@end

@implementation FinHealthGeoFeatures

- (FinHealthGeoFeatures)init
{
  v18.receiver = self;
  v18.super_class = FinHealthGeoFeatures;
  v2 = [(FinHealthGeoFeatures *)&v18 init];
  if (v2)
  {
    v3 = [NSArray arrayWithObjects:GEOPOICategoryAirport, GEOPOICategoryAmusementPark, GEOPOICategoryAquarium, GEOPOICategoryBeach, GEOPOICategoryCampground, GEOPOICategoryEVCharger, GEOPOICategoryFireStation, GEOPOICategoryHospital, GEOPOICategoryMovieTheater, GEOPOICategoryMuseum, GEOPOICategoryNationalPark, GEOPOICategoryPark, GEOPOICategoryPlayground, GEOPOICategoryPolice, GEOPOICategoryPostOffice, GEOPOICategoryPublicTransport, GEOPOICategoryReligiousSite, GEOPOICategorySchool, GEOPOICategoryStadium, GEOPOICategoryUniversity, GEOPOICategoryWinery, GEOPOICategoryZoo, 0];
    v4 = [NSArray arrayWithObjects:GEOPOICategoryATM, GEOPOICategoryBakery, GEOPOICategoryBank, GEOPOICategoryBrewery, GEOPOICategoryCafe, GEOPOICategoryCarRental, GEOPOICategoryFitnessCenter, GEOPOICategoryFoodMarket, GEOPOICategoryGasStation, GEOPOICategoryHotel, GEOPOICategoryLaundry, GEOPOICategoryLibrary, GEOPOICategoryMarina, GEOPOICategoryNightlife, GEOPOICategoryParking, GEOPOICategoryPharmacy, GEOPOICategoryRestaurant, GEOPOICategoryRestroom, GEOPOICategoryStore, GEOPOICategoryTheater, GEOPOICategoryAirportGate, GEOPOICategoryAirportTerminal, 0];
    v5 = dispatch_queue_create("com.apple.finhealth.geoservices", 0);
    geoServicesQueue = v2->_geoServicesQueue;
    v2->_geoServicesQueue = v5;

    v7 = objc_alloc_init(GEOMapService);
    geoMapService = v2->_geoMapService;
    v2->_geoMapService = v7;

    v9 = [[GEOPOICategoryFilter alloc] initWithCategoriesToInclude:v3 categoriesToExclude:v4];
    poiCategoryFilter = v2->_poiCategoryFilter;
    v2->_poiCategoryFilter = v9;

    v11 = FHTransactionHasLocationKey;
    v12 = [NSNumber numberWithBool:1];
    v13 = [NSPredicate predicateWithFormat:@"SELF.%K == %@ AND SELF.%K IN %@", v11, v12, FHTransactionSourceKey, &off_100021B90];
    geoPredicate = v2->_geoPredicate;
    v2->_geoPredicate = v13;

    v15 = objc_alloc_init(NSCache);
    geoPOICache = v2->_geoPOICache;
    v2->_geoPOICache = v15;

    v2->_numberOfSkippedBatches = 0;
    v2->_geoSpatialParameterLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)evaluatePointsOfInterest:(id)a3 bypassMapService:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = FHGeoMaxAllowedRecords;
  v11 = self->_totalRecordsProcessed >= FHGeoMaxAllowedRecords || v6;
  v12 = FinHealthLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    totalRecordsProcessed = self->_totalRecordsProcessed;
    *buf = 134218754;
    if (v11)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v19 = totalRecordsProcessed;
    v20 = 2048;
    if (v6)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v21 = v10;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_totalRecordsProcessed: %lu, maxAllowedRecords: %lu, thresholdOrBypass: %@, bypassMapService: %@", buf, 0x2Au);
  }

  if (v9)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000186C;
    v16[3] = &unk_100020A28;
    v17 = v9;
    [(FinHealthGeoFeatures *)self _evaluatePointsOfInterestWithCache:v8 bypassMapService:v11 completion:v16];
  }
}

- (void)_evaluatePointsOfInterestWithCache:(id)a3 bypassMapService:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v81 = objc_alloc_init(NSMutableDictionary);
  if (v9 && !v6)
  {
    v82 = self;
    v77 = v9;
    v78 = v8;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v84;
      v80 = FHSmartFeatureCompoundTypePointsOfInterest;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v84 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v83 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v14 location];
          [v16 coordinate];
          v18 = v17;
          v19 = [v14 location];
          [v19 coordinate];
          v21 = [NSString stringWithFormat:@"[%.03f, %.03f]", v18, v20];

          v22 = [(NSCache *)v82->_geoPOICache objectForKey:v21];
          if (v22)
          {
            v23 = [[NSDictionary alloc] initWithObjectsAndKeys:{v22, v80, 0}];
            [v81 setObject:v23 forKey:v15];

            v24 = FinHealthLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v88 = v15;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "cachedValue found for transactionId: %@", buf, 0xCu);
            }

            [v14 setLocation:0];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
      }

      while (v11);
    }

    v25 = v82;
    if (v82->_numberOfSkippedBatches == 10)
    {
      v26 = FinHealthLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        numberOfSkippedBatches = v82->_numberOfSkippedBatches;
        *buf = 134217984;
        v88 = numberOfSkippedBatches;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "_numberOfSkippedBatches: %lu, resetting", buf, 0xCu);
      }

      v82->_numberOfSkippedBatches = 0;
    }

    v28 = [(FinHealthGeoFeatures *)v82 filterTransactions:obj];
    v29 = v82->_numberOfSkippedBatches;
    if (v29)
    {
      v82->_numberOfSkippedBatches = v29 + 1;
      v30 = FinHealthLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = v82->_numberOfSkippedBatches;
        *buf = 134217984;
        v88 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "GEO ticket has a previous error, will use cache as a last resort, _numberOfSkippedBatches: %lu", buf, 0xCu);
      }
    }

    else
    {
      v36 = [(GEOMapService *)v82->_geoMapService maxParametersCountForSpatialPlaceLookup];
      v37 = FinHealthLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = [v28 count];
        *buf = 134218240;
        v88 = v38;
        v89 = 2048;
        v90 = *&v36;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "[filteredFHTransactions count]: %lu, maxParametersForLookup: %lu", buf, 0x16u);
      }

      v30 = objc_opt_new();
      v39 = +[NSMutableIndexSet indexSet];
      if ([v28 count])
      {
        v40 = 0;
        v41 = FHGeoDefaultRadius;
        do
        {
          v42 = [v28 objectAtIndex:v40];
          v43 = [v42 location];
          [v43 coordinate];
          v45 = v44;
          v47 = v46;

          v48 = [NSString stringWithFormat:@"%.03f", v45];
          [v48 doubleValue];
          v50 = v49;

          v51 = [NSString stringWithFormat:@"%.03f", v47];
          [v51 doubleValue];
          v53 = v52;

          v54 = FinHealthLogObject();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = [v42 displayName];
            *buf = 138412802;
            v88 = v55;
            v89 = 2048;
            v90 = v50;
            v91 = 2048;
            v92 = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "[fhTransaction displayName]: %@ - using approximate latitude: %f, longitude :%f", buf, 0x20u);
          }

          v56 = [[GEOSpatialPlaceLookupParameters alloc] initWithCoordinate:v82->_poiCategoryFilter radius:v50 poiCategoryFilter:{v53, v41}];
          [v30 addObject:v56];

          [v39 addIndex:v40];
          if ([v30 count]== v36 || v40 == [v28 count]- 1)
          {
            os_unfair_lock_lock(&v82->_geoSpatialParameterLock);
            v57 = [v30 copy];
            [(FinHealthGeoFeatures *)v82 _updateCacheWithSpatialPlaceLookupParameters:v57];

            [v30 removeAllObjects];
            os_unfair_lock_unlock(&v82->_geoSpatialParameterLock);
          }

          ++v40;
        }

        while (v40 < [v28 count]);
      }

      v25 = v82;
    }

    if ([v28 count])
    {
      v58 = 0;
      v59 = FHSmartFeatureCompoundTypePointsOfInterest;
      do
      {
        v60 = [v28 objectAtIndex:v58];
        v61 = [v60 location];
        [v61 coordinate];
        v63 = v62;
        v65 = v64;

        v66 = [NSString stringWithFormat:@"%.03f", v63];
        [v66 doubleValue];
        v68 = v67;

        v69 = [NSString stringWithFormat:@"%.03f", v65];
        [v69 doubleValue];
        v71 = v70;

        v72 = [NSString stringWithFormat:@"[%.03f, %.03f]", v68, v71];
        v73 = [(NSCache *)v25->_geoPOICache objectForKey:v72];
        if (v73)
        {
          v74 = [[NSDictionary alloc] initWithObjectsAndKeys:{v73, v59, 0}];
          v75 = [v60 identifier];
          [v81 setObject:v74 forKey:v75];

          v25 = v82;
        }

        ++v58;
      }

      while (v58 < [v28 count]);
    }

    v76 = [v81 copy];
    v9 = v77;
    v77[2](v77, v76);

    v8 = v78;
LABEL_46:

    goto LABEL_47;
  }

  if (v9)
  {
    v32 = [v81 copy];
    v9[2](v9, v32);

    v33 = FinHealthLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = @"FALSE";
      if (v6)
      {
        v34 = @"TRUE";
      }

      *buf = 138412290;
      v88 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "bypassMapService: %@", buf, 0xCu);
    }

    if (v6)
    {
      v28 = FinHealthLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v8 count];
        *buf = 134217984;
        v88 = v35;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Skipping GEO for %lu records", buf, 0xCu);
      }

      goto LABEL_46;
    }
  }

LABEL_47:
}

- (void)_updateCacheWithSpatialPlaceLookupParameters:(id)a3
{
  v4 = a3;
  geoMapService = self->_geoMapService;
  v6 = [(GEOMapService *)geoMapService defaultBackgroundTraits];
  v7 = [(GEOMapService *)geoMapService ticketForSpatialPlaceLookupParameters:v4 traits:v6];

  v8 = FinHealthLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v21 = [v4 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "spatialPlaceLookupParameters count: %lu", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002380;
  v15[3] = &unk_100020A50;
  objc_copyWeak(&v18, &location);
  v10 = v4;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  [v7 submitWithHandler:v15 queue:self->_geoServicesQueue];
  v12 = dispatch_time(0, 1000000 * FHGeoDefaultMillisecondTimeout);
  v13 = dispatch_group_wait(v11, v12);
  v14 = FinHealthLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "didTimeout: %lu", buf, 0xCu);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)resetTotalRecordsProcessed
{
  os_unfair_lock_lock(&self->_geoSpatialParameterLock);
  v3 = FinHealthLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    totalRecordsProcessed = self->_totalRecordsProcessed;
    numberOfSkippedBatches = self->_numberOfSkippedBatches;
    v6 = 134218240;
    v7 = totalRecordsProcessed;
    v8 = 2048;
    v9 = numberOfSkippedBatches;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Resetting fhGeoFeatures records processed counter: _totalRecordsProcessed: %lu, _numberOfSkippedBatches: %lu", &v6, 0x16u);
  }

  self->_totalRecordsProcessed = 0;
  self->_numberOfSkippedBatches = 0;
  os_unfair_lock_unlock(&self->_geoSpatialParameterLock);
}

@end
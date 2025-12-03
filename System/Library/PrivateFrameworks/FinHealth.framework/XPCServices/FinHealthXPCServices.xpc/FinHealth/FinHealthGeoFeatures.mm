@interface FinHealthGeoFeatures
- (FinHealthGeoFeatures)init;
- (void)_evaluatePointsOfInterestWithCache:(id)cache bypassMapService:(BOOL)service completion:(id)completion;
- (void)_updateCacheWithSpatialPlaceLookupParameters:(id)parameters;
- (void)evaluatePointsOfInterest:(id)interest bypassMapService:(BOOL)service completion:(id)completion;
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

- (void)evaluatePointsOfInterest:(id)interest bypassMapService:(BOOL)service completion:(id)completion
{
  serviceCopy = service;
  interestCopy = interest;
  completionCopy = completion;
  v10 = FHGeoMaxAllowedRecords;
  v11 = self->_totalRecordsProcessed >= FHGeoMaxAllowedRecords || serviceCopy;
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
    if (serviceCopy)
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

  if (completionCopy)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000186C;
    v16[3] = &unk_100020A28;
    v17 = completionCopy;
    [(FinHealthGeoFeatures *)self _evaluatePointsOfInterestWithCache:interestCopy bypassMapService:v11 completion:v16];
  }
}

- (void)_evaluatePointsOfInterestWithCache:(id)cache bypassMapService:(BOOL)service completion:(id)completion
{
  serviceCopy = service;
  cacheCopy = cache;
  completionCopy = completion;
  v81 = objc_alloc_init(NSMutableDictionary);
  if (completionCopy && !serviceCopy)
  {
    selfCopy = self;
    v77 = completionCopy;
    v78 = cacheCopy;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = cacheCopy;
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
          identifier = [v14 identifier];
          location = [v14 location];
          [location coordinate];
          v18 = v17;
          location2 = [v14 location];
          [location2 coordinate];
          v21 = [NSString stringWithFormat:@"[%.03f, %.03f]", v18, v20];

          v22 = [(NSCache *)selfCopy->_geoPOICache objectForKey:v21];
          if (v22)
          {
            v23 = [[NSDictionary alloc] initWithObjectsAndKeys:{v22, v80, 0}];
            [v81 setObject:v23 forKey:identifier];

            v24 = FinHealthLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v88 = identifier;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "cachedValue found for transactionId: %@", buf, 0xCu);
            }

            [v14 setLocation:0];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
      }

      while (v11);
    }

    v25 = selfCopy;
    if (selfCopy->_numberOfSkippedBatches == 10)
    {
      v26 = FinHealthLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        numberOfSkippedBatches = selfCopy->_numberOfSkippedBatches;
        *buf = 134217984;
        v88 = numberOfSkippedBatches;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "_numberOfSkippedBatches: %lu, resetting", buf, 0xCu);
      }

      selfCopy->_numberOfSkippedBatches = 0;
    }

    v28 = [(FinHealthGeoFeatures *)selfCopy filterTransactions:obj];
    v29 = selfCopy->_numberOfSkippedBatches;
    if (v29)
    {
      selfCopy->_numberOfSkippedBatches = v29 + 1;
      v30 = FinHealthLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = selfCopy->_numberOfSkippedBatches;
        *buf = 134217984;
        v88 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "GEO ticket has a previous error, will use cache as a last resort, _numberOfSkippedBatches: %lu", buf, 0xCu);
      }
    }

    else
    {
      maxParametersCountForSpatialPlaceLookup = [(GEOMapService *)selfCopy->_geoMapService maxParametersCountForSpatialPlaceLookup];
      v37 = FinHealthLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = [v28 count];
        *buf = 134218240;
        v88 = v38;
        v89 = 2048;
        v90 = *&maxParametersCountForSpatialPlaceLookup;
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
          location3 = [v42 location];
          [location3 coordinate];
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
            displayName = [v42 displayName];
            *buf = 138412802;
            v88 = displayName;
            v89 = 2048;
            v90 = v50;
            v91 = 2048;
            v92 = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "[fhTransaction displayName]: %@ - using approximate latitude: %f, longitude :%f", buf, 0x20u);
          }

          v56 = [[GEOSpatialPlaceLookupParameters alloc] initWithCoordinate:selfCopy->_poiCategoryFilter radius:v50 poiCategoryFilter:{v53, v41}];
          [v30 addObject:v56];

          [v39 addIndex:v40];
          if ([v30 count]== maxParametersCountForSpatialPlaceLookup || v40 == [v28 count]- 1)
          {
            os_unfair_lock_lock(&selfCopy->_geoSpatialParameterLock);
            v57 = [v30 copy];
            [(FinHealthGeoFeatures *)selfCopy _updateCacheWithSpatialPlaceLookupParameters:v57];

            [v30 removeAllObjects];
            os_unfair_lock_unlock(&selfCopy->_geoSpatialParameterLock);
          }

          ++v40;
        }

        while (v40 < [v28 count]);
      }

      v25 = selfCopy;
    }

    if ([v28 count])
    {
      v58 = 0;
      v59 = FHSmartFeatureCompoundTypePointsOfInterest;
      do
      {
        v60 = [v28 objectAtIndex:v58];
        location4 = [v60 location];
        [location4 coordinate];
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
          identifier2 = [v60 identifier];
          [v81 setObject:v74 forKey:identifier2];

          v25 = selfCopy;
        }

        ++v58;
      }

      while (v58 < [v28 count]);
    }

    v76 = [v81 copy];
    completionCopy = v77;
    v77[2](v77, v76);

    cacheCopy = v78;
LABEL_46:

    goto LABEL_47;
  }

  if (completionCopy)
  {
    v32 = [v81 copy];
    completionCopy[2](completionCopy, v32);

    v33 = FinHealthLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = @"FALSE";
      if (serviceCopy)
      {
        v34 = @"TRUE";
      }

      *buf = 138412290;
      v88 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "bypassMapService: %@", buf, 0xCu);
    }

    if (serviceCopy)
    {
      v28 = FinHealthLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v35 = [cacheCopy count];
        *buf = 134217984;
        v88 = v35;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Skipping GEO for %lu records", buf, 0xCu);
      }

      goto LABEL_46;
    }
  }

LABEL_47:
}

- (void)_updateCacheWithSpatialPlaceLookupParameters:(id)parameters
{
  parametersCopy = parameters;
  geoMapService = self->_geoMapService;
  defaultBackgroundTraits = [(GEOMapService *)geoMapService defaultBackgroundTraits];
  v7 = [(GEOMapService *)geoMapService ticketForSpatialPlaceLookupParameters:parametersCopy traits:defaultBackgroundTraits];

  v8 = FinHealthLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v21 = [parametersCopy count];
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
  v10 = parametersCopy;
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
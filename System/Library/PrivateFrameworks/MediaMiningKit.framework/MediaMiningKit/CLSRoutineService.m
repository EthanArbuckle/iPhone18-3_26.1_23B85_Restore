@interface CLSRoutineService
- (BOOL)hasLocationsOfInterestInformation;
- (BOOL)isRemoteLocation:(id)a3 inDateInterval:(id)a4;
- (CLSRoutineService)initWithFetchDateInterval:(id)a3 locationCache:(id)a4;
- (double)_disambiguationDistanceForDevicePlacementType:(unint64_t)a3;
- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)a3;
- (id)_fetchLocationOfInterestTransitionsWithinDateInterval:(id)a3 routineManager:(id)a4;
- (id)_fetchLocationsOfInterestWithinDateInterval:(id)a3 routineManager:(id)a4;
- (id)_placemarksFromLocationsOfInterest:(id)a3;
- (id)lastLocationOfInterestVisit;
- (id)locationOfInterestAtLocation:(id)a3;
- (id)locationOfInterestCloseToLocation:(id)a3 inDateInterval:(id)a4;
- (id)locationOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4;
- (id)locationOfInterestVisitsInDateInterval:(id)a3;
- (id)locationsOfInterestOfType:(int64_t)a3;
- (id)placemarksOfInterestOfType:(int64_t)a3;
- (id)visitsCache;
- (int64_t)predominantTransportationModeForDateInterval:(id)a3 confidence:(double *)a4;
- (unint64_t)_devicePlacementTypeForLocationsOfInterestVisits:(id)a3;
- (unint64_t)_fetchFinerGranularityMapItemForVisitIdentifier:(id)a3 routineManager:(id)a4;
- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)a3;
- (void)_buildLocationsOfInterestCache;
- (void)_pinPendingVisits;
- (void)cacheLocationOfInterest:(id)a3;
- (void)invalidateLocationsOfInterest;
@end

@implementation CLSRoutineService

- (unint64_t)_fetchFinerGranularityMapItemForVisitIdentifier:(id)a3 routineManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_routineIsAvailable)
  {
    v8 = dispatch_block_create(0, &__block_literal_global_16);
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4314;
    v28 = __Block_byref_object_dispose__4315;
    v29 = 0;
    if (objc_opt_respondsToSelector())
    {
      v9 = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__CLSRoutineService__fetchFinerGranularityMapItemForVisitIdentifier_routineManager___block_invoke_2;
      aBlock[3] = &unk_2788A8048;
      v23 = buf;
      v10 = v8;
      v22 = v10;
      v11 = _Block_copy(aBlock);
      [v9 fetchFinerGranularityInferredMapItemWithVisitIdentifier:v6 handler:v11];

      v12 = dispatch_time(0, 2000000000);
      if (dispatch_block_wait(v10, v12))
      {
        v13 = +[CLSLogging sharedLogging];
        v14 = [v13 loggingConnection];

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_22F907000, v14, OS_LOG_TYPE_ERROR, "[RoutineLocationIngest] Timeout getting Finer granularity map item from CoreRoutine", v20, 2u);
        }

        self->_routineIsAvailable = 0;
      }

      if ([*(v25 + 5) validMUID])
      {
        v15 = [*(v25 + 5) muid];
      }

      else
      {
        v17 = +[CLSLogging sharedLogging];
        v18 = [v17 loggingConnection];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_22F907000, v18, OS_LOG_TYPE_DEFAULT, "[RoutineLocationIngest] Finer Granularity Map Item is invalid. Returning unknown MUID", v20, 2u);
        }

        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = +[CLSLogging sharedLogging];
    v8 = [v16 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "[RoutineLocationIngest] Core Routine is not available", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

void __84__CLSRoutineService__fetchFinerGranularityMapItemForVisitIdentifier_routineManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v15 = +[CLSLogging sharedLogging];
      v8 = [v15 loggingConnection];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "[RoutineLocationIngest] Map Item not available on inferred map item.", &v16, 2u);
      }

      goto LABEL_17;
    }

    v8 = v5;
    v9 = [v8 mapItem];
    [v8 confidence];
    if (v9)
    {
      v11 = v10;
      if ([v9 validMUID])
      {
        if (v11 >= 0.9)
        {
          v12 = +[CLSLogging sharedLogging];
          v13 = [v12 loggingConnection];

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 134283521;
            v17 = [v9 muid];
            _os_log_impl(&dword_22F907000, v13, OS_LOG_TYPE_DEFAULT, "[RoutineLocationIngest] Fetched valid finer granularity map item with MUID:%{private}lu", &v16, 0xCu);
          }

          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
        }
      }
    }

    goto LABEL_14;
  }

  if (v6)
  {
    v14 = +[CLSLogging sharedLogging];
    v8 = [v14 loggingConnection];

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      goto LABEL_18;
    }

    v9 = [v7 localizedDescription];
    v16 = 138412290;
    v17 = v9;
    _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "[RoutineLocationIngest] Error fetching finer granularity map item, error:%@", &v16, 0xCu);
LABEL_14:

    goto LABEL_17;
  }

LABEL_18:
  (*(*(a1 + 32) + 16))();
}

- (id)_placemarksFromLocationsOfInterest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) placemarkWithLocationCache:{self->_locationCache, v14}];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_pinPendingVisits
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableSet *)self->_pendingPinningVisitIdentifiers count];
  if (self->_routineIsAvailable && v3 != 0)
  {
    v5 = v3;
    v6 = [(CLSRoutineService *)self visitsCache];
    v7 = v5;
    v8 = [v6 numberOfLocationsOfInterestVisits];
    if (v8 * 0.8 <= v5)
    {
      v9 = [v6 locationsOfInterestOfType:0];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = 0;
      v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v11)
      {
        v12 = *v42;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v41 + 1) + 8 * i) visits];
            v15 = [v14 count];

            v10 += v15;
          }

          v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v11);
      }

      v16 = [v6 locationsOfInterestOfType:1];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v17)
      {
        v18 = *v38;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [*(*(&v37 + 1) + 8 * j) visits];
            v21 = [v20 count];

            v10 += v21;
          }

          v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v17);
      }

      if (v8 * 0.9 > v10)
      {
        v22 = +[CLSLogging sharedLogging];
        v23 = [v22 loggingConnection];

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v7 / v8;
          *&buf[12] = 2048;
          *&buf[14] = v10 / v8;
          _os_log_impl(&dword_22F907000, v23, OS_LOG_TYPE_INFO, "Safeguard Pinning. Not pinning any visits. total %f, homeWork %f", buf, 0x16u);
        }

        v24 = [MEMORY[0x277CBEB58] set];
        pendingPinningVisitIdentifiers = self->_pendingPinningVisitIdentifiers;
        self->_pendingPinningVisitIdentifiers = v24;

LABEL_30:
        return;
      }
    }

    v9 = [MEMORY[0x277D01280] defaultManager];
    v26 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v46 = 0;
    v27 = self->_pendingPinningVisitIdentifiers;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __38__CLSRoutineService__pinPendingVisits__block_invoke;
    v34[3] = &unk_2788A8020;
    v36 = buf;
    v34[4] = self;
    v16 = v26;
    v35 = v16;
    [v9 extendLifetimeOfVisitsWithIdentifiers:v27 handler:v34];
    v28 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v16, v28))
    {
      *(*&buf[8] + 24) = 0;
      v29 = +[CLSLogging sharedLogging];
      v30 = [v29 loggingConnection];

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_error_impl(&dword_22F907000, v30, OS_LOG_TYPE_ERROR, "Timeout pinning visits CoreRoutine", v33, 2u);
      }
    }

    v31 = [MEMORY[0x277CBEB58] set];
    v32 = self->_pendingPinningVisitIdentifiers;
    self->_pendingPinningVisitIdentifiers = v31;

    _Block_object_dispose(buf, 8);
    goto LABEL_30;
  }
}

void __38__CLSRoutineService__pinPendingVisits__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = v3 == 0;
  if (v3)
  {
    v4 = +[CLSLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 24);
      v7 = [v3 localizedDescription];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_22F907000, v5, OS_LOG_TYPE_ERROR, "Could not pin visit with UUIDs %@. %@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_fetchLocationOfInterestTransitionsWithinDateInterval:(id)a3 routineManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4314;
    v25 = __Block_byref_object_dispose__4315;
    v26 = 0;
    v8 = dispatch_block_create(0, &__block_literal_global_13);
    v9 = [v6 startDate];
    v10 = [v6 endDate];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__CLSRoutineService__fetchLocationOfInterestTransitionsWithinDateInterval_routineManager___block_invoke_2;
    v18[3] = &unk_2788A7FF8;
    v20 = &v21;
    v18[4] = self;
    v11 = v8;
    v19 = v11;
    [v7 fetchTransitionsBetweenStartDate:v9 endDate:v10 handler:v18];

    v12 = dispatch_time(0, 2000000000);
    if (dispatch_block_wait(v11, v12))
    {
      v13 = +[CLSLogging sharedLogging];
      v14 = [v13 loggingConnection];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_22F907000, v14, OS_LOG_TYPE_ERROR, "Timeout getting loi transitions from CoreRoutine", v17, 2u);
      }

      v15 = 0;
      self->_routineIsAvailable = 0;
    }

    else if (self->_routineIsAvailable)
    {
      v15 = v22[5];
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __90__CLSRoutineService__fetchLocationOfInterestTransitionsWithinDateInterval_routineManager___block_invoke_2(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CLSLogging sharedLogging];
  v9 = [v8 loggingConnection];

  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 userInfo];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_22F907000, v9, OS_LOG_TYPE_ERROR, "CoreRoutine error getting loi transitions, error: %@, userInfo: %@", &v11, 0x16u);
    }

    *(a1[4] + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = [v6 count];
      _os_log_impl(&dword_22F907000, v9, OS_LOG_TYPE_INFO, "CoreRoutine found %lu transitions.", &v11, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  (*(a1[5] + 16))();
}

- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)a3
{
  v4 = a3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76__CLSRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke;
  v14 = &unk_2788A7FD0;
  v15 = v4;
  v16 = self;
  v5 = v4;
  v6 = _Block_copy(&v11);
  v7 = v6[2](v6, 0);
  if (self->_routineIsAvailable)
  {
    v8 = v6[2](v6, 1);
    if (self->_routineIsAvailable)
    {
      v9 = [v7 mutableCopy];
      [v9 addObjectsFromArray:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

id __76__CLSRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4314;
  v21 = __Block_byref_object_dispose__4315;
  v22 = 0;
  v4 = dispatch_block_create(0, &__block_literal_global_10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__CLSRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke_2;
  v13[3] = &unk_2788A7FA8;
  v15 = &v17;
  v16 = a2;
  v5 = *(a1 + 32);
  v13[4] = *(a1 + 40);
  v6 = v4;
  v14 = v6;
  [v5 fetchLocationsOfInterestOfType:a2 withHandler:v13];
  v7 = dispatch_time(0, 2000000000);
  if (dispatch_block_wait(v6, v7))
  {
    v8 = +[CLSLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_22F907000, v9, OS_LOG_TYPE_ERROR, "Timeout getting loi information from CoreRoutine", v12, 2u);
    }

    *(*(a1 + 40) + 40) = 0;
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __76__CLSRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke_2(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CLSLogging sharedLogging];
  v9 = [v8 loggingConnection];

  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 userInfo];
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_22F907000, v9, OS_LOG_TYPE_ERROR, "CoreRoutine error getting lois, error: %@, userInfo: %@", &v13, 0x16u);
    }

    *(a1[4] + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 count];
      v11 = a1[7];
      v13 = 134218240;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_22F907000, v9, OS_LOG_TYPE_INFO, "CoreRoutine found %lu lois for type %lu", &v13, 0x16u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  (*(a1[5] + 16))();
}

- (id)_fetchLocationsOfInterestWithinDateInterval:(id)a3 routineManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CLSRoutineService *)self _fetchHomeAndWorkLocationsOfInterestWithRoutineManager:v7];
  v9 = v8;
  if (self->_routineIsAvailable)
  {
    if (v8)
    {
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB18] array];
    }

    v11 = v10;
    if (v6)
    {
      v12 = dispatch_block_create(0, &__block_literal_global_4341);
      v13 = [v6 startDate];
      v14 = [v6 endDate];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __80__CLSRoutineService__fetchLocationsOfInterestWithinDateInterval_routineManager___block_invoke_2;
      v21[3] = &unk_2788A7F80;
      v11 = v11;
      v22 = v11;
      v23 = self;
      v15 = v12;
      v24 = v15;
      [v7 fetchLocationsOfInterestVisitedBetweenStartDate:v13 endDate:v14 withHandler:v21];

      v16 = dispatch_time(0, 2000000000);
      if (dispatch_block_wait(v15, v16))
      {
        v17 = +[CLSLogging sharedLogging];
        v18 = [v17 loggingConnection];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_22F907000, v18, OS_LOG_TYPE_ERROR, "Timeout getting loi information from CoreRoutine", v20, 2u);
        }

        self->_routineIsAvailable = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __80__CLSRoutineService__fetchLocationsOfInterestWithinDateInterval_routineManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CLSLogging sharedLogging];
  v8 = [v7 loggingConnection];

  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 userInfo];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "CoreRoutine error getting lois, error: %@, userInfo: %@", &v10, 0x16u);
    }

    *(*(a1 + 40) + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v5 count];
      _os_log_impl(&dword_22F907000, v8, OS_LOG_TYPE_INFO, "CoreRoutine found %lu lois", &v10, 0xCu);
    }

    [*(a1 + 32) addObjectsFromArray:v5];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_buildLocationsOfInterestCache
{
  v93 = *MEMORY[0x277D85DE8];
  if (self->_routineIsAvailable)
  {
    v2 = self;
    v76 = [[CLSLocationOfInterestCache alloc] initWithLocationCache:self->_locationCache];
    v3 = objc_autoreleasePoolPush();
    v4 = [MEMORY[0x277D01280] defaultManager];
    v5 = [(CLSRoutineService *)v2 _fetchLocationsOfInterestWithinDateInterval:v2->_fetchDateInterval routineManager:v4];
    if (v2->_routineIsAvailable)
    {
      v62 = v3;
      v63 = v5;
      v64 = v4;
      v65 = v2;
      if (v5)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        obj = v5;
        v68 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
        if (v68)
        {
          v67 = *v82;
          do
          {
            v6 = 0;
            do
            {
              if (*v82 != v67)
              {
                objc_enumerationMutation(obj);
              }

              v7 = *(*(&v81 + 1) + 8 * v6);
              v8 = objc_autoreleasePoolPush();
              v9 = v7;
              v10 = [v9 mapItem];
              if ([v10 validMUID])
              {
                v11 = [v10 muid];
              }

              else
              {
                v11 = 0;
              }

              v12 = [[CLSLitePlacemark alloc] initWithRTMapItem:v10];
              v13 = [v9 type];
              v14 = v13 + 1;
              context = v8;
              v75 = v6;
              v71 = v10;
              if ((v13 + 1) >= 5)
              {
                v17 = v13;
                v18 = +[CLSLogging sharedLogging];
                v19 = [v18 loggingConnection];

                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v92 = v17;
                  _os_log_error_impl(&dword_22F907000, v19, OS_LOG_TYPE_ERROR, "Undefined LocationOfInterestType %lu. File a radar against Photos Media Mining.", buf, 0xCu);
                }

                v15 = -1;
                v16 = 50.0;
              }

              else
              {
                v15 = qword_22F992830[v14];
                v16 = dbl_22F992858[v14];
              }

              v20 = [(CLSLitePlacemark *)v12 location];
              v21 = [CLSLocationOfInterest alloc];
              v22 = [v9 identifier];
              v70 = v12;
              v23 = [(CLSLitePlacemark *)v12 region];
              v69 = v20;
              v24 = [(CLSLocationOfInterest *)v21 initWithIdentifier:v22 locationOfInterestType:v15 location:v20 placemarkRegion:v23 businessItemMuid:v11 radius:v16];

              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v72 = v9;
              v25 = [v9 visits];
              v26 = [v25 countByEnumeratingWithState:&v85 objects:buf count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v86;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v86 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v85 + 1) + 8 * i);
                    v31 = objc_alloc(MEMORY[0x277CCA970]);
                    v32 = [v30 entryDate];
                    v33 = [v30 exitDate];
                    v34 = [v31 initWithStartDate:v32 endDate:v33];

                    [v30 locationOfInterestConfidence];
                    v36 = v35;
                    v37 = [CLSLocationOfInterestVisit alloc];
                    v38 = [v30 identifier];
                    v39 = [(CLSLocationOfInterestVisit *)v37 initWithIdentifier:v38 visitInterval:v34 confidence:v36];

                    [(CLSLocationOfInterest *)v24 addVisit:v39];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v85 objects:buf count:16];
                }

                while (v27);
              }

              [(CLSLocationOfInterestCache *)v76 addLocationOfInterest:v24];
              objc_autoreleasePoolPop(context);
              v6 = v75 + 1;
            }

            while (v75 + 1 != v68);
            v68 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
          }

          while (v68);
        }

        v2 = v65;
      }

      contexta = objc_autoreleasePoolPush();
      [(CLSRoutineService *)v2 _fetchLocationOfInterestTransitionsWithinDateInterval:v2->_fetchDateInterval routineManager:v4];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v40 = v80 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v77 objects:v89 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v78;
        do
        {
          v44 = 0;
          do
          {
            if (*v78 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v77 + 1) + 8 * v44);
            v46 = objc_autoreleasePoolPush();
            v47 = v45;
            v48 = objc_alloc(MEMORY[0x277CCA970]);
            v49 = [v47 startDate];
            v50 = [v47 stopDate];
            v51 = [v48 initWithStartDate:v49 endDate:v50];

            v52 = [v47 modeOfTransportation];
            v53 = v52;
            if (v52 >= 4)
            {
              v55 = +[CLSLogging sharedLogging];
              v56 = [v55 loggingConnection];

              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v92 = v53;
                _os_log_error_impl(&dword_22F907000, v56, OS_LOG_TYPE_ERROR, "Undefined ModeOfTransportation %lu. File a radar against Photos Media Mining.", buf, 0xCu);
              }

              v54 = -1;
            }

            else
            {
              v54 = v52 - 1;
            }

            v57 = [CLSLocationOfInterestTransition alloc];
            v58 = [v47 identifier];
            v59 = [(CLSLocationOfInterestTransition *)v57 initWithIdentifier:v58 transitionInterval:v51 transportationMode:v54];

            [(CLSLocationOfInterestCache *)v76 addLocationOfInterestTransition:v59];
            objc_autoreleasePoolPop(v46);
            ++v44;
          }

          while (v42 != v44);
          v42 = [v40 countByEnumeratingWithState:&v77 objects:v89 count:16];
        }

        while (v42);
      }

      objc_autoreleasePoolPop(contexta);
      v4 = v64;
      v2 = v65;
      v3 = v62;
      v5 = v63;
    }

    objc_autoreleasePoolPop(v3);
    visitsCache = v2->_visitsCache;
    v2->_visitsCache = v76;
    v61 = v76;

    [(CLSLocationOfInterestCache *)v61 numberOfLocationsOfInterest];
    [(CLSLocationOfInterestCache *)v61 numberOfLocationsOfInterestVisits];
    [(CLSLocationOfInterestCache *)v61 numberOfLocationsOfInterestTransitions];
  }
}

- (int64_t)predominantTransportationModeForDateInterval:(id)a3 confidence:(double *)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v38 = [(CLSRoutineService *)self visitsCache];
  v6 = [v38 locationsOfInterestTransitionInDateInterval:v5];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [v13 transportationMode];
        v15 = [v13 transitionInterval];
        [v15 duration];
        v17 = v16;

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        v19 = [v7 objectForKeyedSubscript:v18];
        [v19 doubleValue];
        v21 = v20;

        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v17 + v21];
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        [v7 setObject:v22 forKeyedSubscript:v23];
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = v7;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    v28 = -1;
    v29 = -1.79769313e308;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v40 + 1) + 8 * j);
        v32 = [v24 objectForKeyedSubscript:v31];
        [v32 doubleValue];
        v34 = v33;

        if (v34 > v29)
        {
          v28 = [v31 unsignedIntegerValue];
          v29 = v34;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);

    v35 = 1.0;
    if (v29 != -1.79769313e308)
    {
      [v5 duration];
      if (v36 > 0.0)
      {
        v35 = fmin(v29 / v36, 1.0);
      }
    }
  }

  else
  {

    v35 = 1.0;
    v28 = -1;
  }

  if (a4)
  {
    *a4 = v35;
  }

  return v28;
}

- (double)_disambiguationDistanceForDevicePlacementType:(unint64_t)a3
{
  result = 1.79769313e308;
  if (a3 == 2)
  {
    result = 200000.0;
  }

  if (a3 == 1)
  {
    return 50000.0;
  }

  return result;
}

- (unint64_t)_devicePlacementTypeForLocationsOfInterestVisits:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    if (v4 <= 2)
    {
      v6 = [v3 anyObject];
      v7 = [v6 visitInterval];
      [v7 duration];
      v9 = v8;

      if (v9 >= 43200.0)
      {
        if (v9 >= 172800.0)
        {
          if (v9 <= 86400.0)
          {
            v5 = 0;
          }

          else
          {
            v5 = 3;
          }
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRemoteLocation:(id)a3 inDateInterval:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++self->_statistics.numberOfMatchRequests;
  v8 = [(CLSRoutineService *)self visitsCache];
  v9 = [v8 locationsOfInterestVisitsInDateInterval:v7];
  if (![v9 count])
  {
    goto LABEL_3;
  }

  v10 = [v8 earliestVisitStartDate];
  v11 = [v7 startDate];
  v12 = [v10 compare:v11];

  if (v12 == 1)
  {
    goto LABEL_3;
  }

  v34 = v8;
  v35 = v7;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = v9;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        pendingPinningVisitIdentifiers = self->_pendingPinningVisitIdentifiers;
        v22 = [v20 identifier];
        [(NSMutableSet *)pendingPinningVisitIdentifiers addObject:v22];

        v23 = [v20 locationOfInterest];
        v24 = [v23 location];
        [v24 distanceFromLocation:v6];
        v26 = v25;
        [v23 placemarkLocationDistanceFromLocation:v24 locationCache:self->_locationCache];
        v28 = fmin(v26, v27);
        if (v28 <= 200.0)
        {
          ++self->_statistics.numberOfCloseByLocationMatches;
        }

        v17 |= v28 <= 200.0;
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  self->_statistics.numberOfTimeMatches += [v14 count];
  numberOfVisits = self->_statistics.numberOfVisits;
  if (numberOfVisits)
  {
    self->_statistics.pinningVisitsRatio = [(NSMutableSet *)self->_pendingPinningVisitIdentifiers count]/ numberOfVisits;
  }

  if (v17)
  {
    v13 = 0;
    v7 = v35;
LABEL_23:
    v9 = v33;
    v8 = v34;
    goto LABEL_24;
  }

  v30 = [(CLSRoutineService *)self _devicePlacementTypeForLocationsOfInterestVisits:v14];
  v13 = 0;
  v7 = v35;
  if (!v30)
  {
    goto LABEL_23;
  }

  v9 = v33;
  v8 = v34;
  if (v30 == 3)
  {
    goto LABEL_24;
  }

  [(CLSRoutineService *)self _disambiguationDistanceForDevicePlacementType:v30];
  v31 = [v34 closestLocationOfInterestVisitToLocation:v6 withinDistance:v35 inDateInterval:?];

  if (!v31)
  {
    ++self->_statistics.numberOfRemoteLocationMatches;
    v13 = 1;
    goto LABEL_24;
  }

LABEL_3:
  v13 = 0;
LABEL_24:

  return v13;
}

- (id)locationOfInterestVisitsInDateInterval:(id)a3
{
  v4 = a3;
  v5 = [(CLSRoutineService *)self visitsCache];
  v6 = [v5 locationsOfInterestVisitsAtLocation:0 inDateInterval:v4];

  return v6;
}

- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)a3
{
  v4 = MEMORY[0x277D01280];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [(CLSRoutineService *)self _fetchFinerGranularityMapItemForVisitIdentifier:v5 routineManager:v6];

  return v7;
}

- (id)locationOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CLSRoutineService *)self visitsCache];
  v9 = [v8 locationsOfInterestVisitsAtLocation:v7 inDateInterval:v6];

  return v9;
}

- (id)locationOfInterestAtLocation:(id)a3
{
  v4 = a3;
  v5 = [(CLSRoutineService *)self visitsCache];
  v6 = [v5 locationOfInterestAtLocation:v4];

  return v6;
}

- (id)locationOfInterestCloseToLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CLSRoutineService *)self visitsCache];
  v9 = [v8 closestLocationOfInterestVisitToLocation:v7 withinDistance:v6 inDateInterval:200.0];

  v10 = [v9 locationOfInterest];

  return v10;
}

- (id)placemarksOfInterestOfType:(int64_t)a3
{
  v4 = [(CLSRoutineService *)self locationsOfInterestOfType:a3];
  v5 = [(CLSRoutineService *)self _placemarksFromLocationsOfInterest:v4];

  return v5;
}

- (id)locationsOfInterestOfType:(int64_t)a3
{
  v4 = [(CLSRoutineService *)self visitsCache];
  v5 = [v4 locationsOfInterestOfType:a3];

  return v5;
}

- (void)cacheLocationOfInterest:(id)a3
{
  v4 = a3;
  v5 = [(CLSRoutineService *)self visitsCache];
  [v5 addLocationOfInterest:v4];
}

- (id)visitsCache
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_visitsCache)
  {
    [(CLSRoutineService *)v2 _buildLocationsOfInterestCache];
  }

  objc_sync_exit(v2);

  visitsCache = v2->_visitsCache;

  return visitsCache;
}

- (id)lastLocationOfInterestVisit
{
  v2 = [(CLSRoutineService *)self visitsCache];
  v3 = [v2 lastLocationOfInterestVisit];

  return v3;
}

- (BOOL)hasLocationsOfInterestInformation
{
  v2 = [(CLSRoutineService *)self visitsCache];
  v3 = [v2 numberOfLocationsOfInterest] != 0;

  return v3;
}

- (void)invalidateLocationsOfInterest
{
  self->_statistics.pinningVisitsRatio = 0.0;
  *&self->_statistics.numberOfTimeMatches = 0u;
  *&self->_statistics.numberOfRemoteLocationMatches = 0u;
  *&self->_statistics.routineAvailable = 0u;
  *&self->_statistics.numberOfVisits = 0u;
  visitsCache = self->_visitsCache;
  self->_visitsCache = 0;

  self->_pendingPinningVisitIdentifiers = objc_alloc_init(MEMORY[0x277CBEB58]);

  MEMORY[0x2821F96F8]();
}

- (CLSRoutineService)initWithFetchDateInterval:(id)a3 locationCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CLSRoutineService;
  v9 = [(CLSRoutineService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_routineIsAvailable = 1;
    objc_storeStrong(&v9->_fetchDateInterval, a3);
    objc_storeStrong(&v10->_locationCache, a4);
    [(CLSRoutineService *)v10 invalidateLocationsOfInterest];
  }

  return v10;
}

@end
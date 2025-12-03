@interface CLSRoutineService
- (BOOL)hasLocationsOfInterestInformation;
- (BOOL)isRemoteLocation:(id)location inDateInterval:(id)interval;
- (CLSRoutineService)initWithFetchDateInterval:(id)interval locationCache:(id)cache;
- (double)_disambiguationDistanceForDevicePlacementType:(unint64_t)type;
- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)manager;
- (id)_fetchLocationOfInterestTransitionsWithinDateInterval:(id)interval routineManager:(id)manager;
- (id)_fetchLocationsOfInterestWithinDateInterval:(id)interval routineManager:(id)manager;
- (id)_placemarksFromLocationsOfInterest:(id)interest;
- (id)lastLocationOfInterestVisit;
- (id)locationOfInterestAtLocation:(id)location;
- (id)locationOfInterestCloseToLocation:(id)location inDateInterval:(id)interval;
- (id)locationOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval;
- (id)locationOfInterestVisitsInDateInterval:(id)interval;
- (id)locationsOfInterestOfType:(int64_t)type;
- (id)placemarksOfInterestOfType:(int64_t)type;
- (id)visitsCache;
- (int64_t)predominantTransportationModeForDateInterval:(id)interval confidence:(double *)confidence;
- (unint64_t)_devicePlacementTypeForLocationsOfInterestVisits:(id)visits;
- (unint64_t)_fetchFinerGranularityMapItemForVisitIdentifier:(id)identifier routineManager:(id)manager;
- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)identifier;
- (void)_buildLocationsOfInterestCache;
- (void)_pinPendingVisits;
- (void)cacheLocationOfInterest:(id)interest;
- (void)invalidateLocationsOfInterest;
@end

@implementation CLSRoutineService

- (unint64_t)_fetchFinerGranularityMapItemForVisitIdentifier:(id)identifier routineManager:(id)manager
{
  identifierCopy = identifier;
  managerCopy = manager;
  if (self->_routineIsAvailable)
  {
    loggingConnection3 = dispatch_block_create(0, &__block_literal_global_16);
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4314;
    v28 = __Block_byref_object_dispose__4315;
    v29 = 0;
    if (objc_opt_respondsToSelector())
    {
      v9 = managerCopy;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__CLSRoutineService__fetchFinerGranularityMapItemForVisitIdentifier_routineManager___block_invoke_2;
      aBlock[3] = &unk_2788A8048;
      v23 = buf;
      v10 = loggingConnection3;
      v22 = v10;
      v11 = _Block_copy(aBlock);
      [v9 fetchFinerGranularityInferredMapItemWithVisitIdentifier:identifierCopy handler:v11];

      v12 = dispatch_time(0, 2000000000);
      if (dispatch_block_wait(v10, v12))
      {
        v13 = +[CLSLogging sharedLogging];
        loggingConnection = [v13 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "[RoutineLocationIngest] Timeout getting Finer granularity map item from CoreRoutine", v20, 2u);
        }

        self->_routineIsAvailable = 0;
      }

      if ([*(v25 + 5) validMUID])
      {
        muid = [*(v25 + 5) muid];
      }

      else
      {
        v17 = +[CLSLogging sharedLogging];
        loggingConnection2 = [v17 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[RoutineLocationIngest] Finer Granularity Map Item is invalid. Returning unknown MUID", v20, 2u);
        }

        muid = 0;
      }
    }

    else
    {
      muid = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = +[CLSLogging sharedLogging];
    loggingConnection3 = [v16 loggingConnection];

    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, loggingConnection3, OS_LOG_TYPE_ERROR, "[RoutineLocationIngest] Core Routine is not available", buf, 2u);
    }

    muid = 0;
  }

  return muid;
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

- (id)_placemarksFromLocationsOfInterest:(id)interest
{
  v19 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  v5 = interestCopy;
  if (interestCopy)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(interestCopy, "count")}];
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
    visitsCache = [(CLSRoutineService *)self visitsCache];
    v7 = v5;
    numberOfLocationsOfInterestVisits = [visitsCache numberOfLocationsOfInterestVisits];
    if (numberOfLocationsOfInterestVisits * 0.8 <= v5)
    {
      defaultManager = [visitsCache locationsOfInterestOfType:0];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = 0;
      v11 = [defaultManager countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v11)
      {
        v12 = *v42;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(defaultManager);
            }

            visits = [*(*(&v41 + 1) + 8 * i) visits];
            v15 = [visits count];

            v10 += v15;
          }

          v11 = [defaultManager countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v11);
      }

      v16 = [visitsCache locationsOfInterestOfType:1];
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

            visits2 = [*(*(&v37 + 1) + 8 * j) visits];
            v21 = [visits2 count];

            v10 += v21;
          }

          v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v17);
      }

      if (numberOfLocationsOfInterestVisits * 0.9 > v10)
      {
        v22 = +[CLSLogging sharedLogging];
        loggingConnection = [v22 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v7 / numberOfLocationsOfInterestVisits;
          *&buf[12] = 2048;
          *&buf[14] = v10 / numberOfLocationsOfInterestVisits;
          _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Safeguard Pinning. Not pinning any visits. total %f, homeWork %f", buf, 0x16u);
        }

        v24 = [MEMORY[0x277CBEB58] set];
        pendingPinningVisitIdentifiers = self->_pendingPinningVisitIdentifiers;
        self->_pendingPinningVisitIdentifiers = v24;

LABEL_30:
        return;
      }
    }

    defaultManager = [MEMORY[0x277D01280] defaultManager];
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
    [defaultManager extendLifetimeOfVisitsWithIdentifiers:v27 handler:v34];
    v28 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v16, v28))
    {
      *(*&buf[8] + 24) = 0;
      v29 = +[CLSLogging sharedLogging];
      loggingConnection2 = [v29 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "Timeout pinning visits CoreRoutine", v33, 2u);
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

- (id)_fetchLocationOfInterestTransitionsWithinDateInterval:(id)interval routineManager:(id)manager
{
  intervalCopy = interval;
  managerCopy = manager;
  if (intervalCopy)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4314;
    v25 = __Block_byref_object_dispose__4315;
    v26 = 0;
    v8 = dispatch_block_create(0, &__block_literal_global_13);
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__CLSRoutineService__fetchLocationOfInterestTransitionsWithinDateInterval_routineManager___block_invoke_2;
    v18[3] = &unk_2788A7FF8;
    v20 = &v21;
    v18[4] = self;
    v11 = v8;
    v19 = v11;
    [managerCopy fetchTransitionsBetweenStartDate:startDate endDate:endDate handler:v18];

    v12 = dispatch_time(0, 2000000000);
    if (dispatch_block_wait(v11, v12))
    {
      v13 = +[CLSLogging sharedLogging];
      loggingConnection = [v13 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Timeout getting loi transitions from CoreRoutine", v17, 2u);
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

- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)manager
{
  managerCopy = manager;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76__CLSRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke;
  v14 = &unk_2788A7FD0;
  v15 = managerCopy;
  selfCopy = self;
  v5 = managerCopy;
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

- (id)_fetchLocationsOfInterestWithinDateInterval:(id)interval routineManager:(id)manager
{
  intervalCopy = interval;
  managerCopy = manager;
  v8 = [(CLSRoutineService *)self _fetchHomeAndWorkLocationsOfInterestWithRoutineManager:managerCopy];
  v9 = v8;
  if (self->_routineIsAvailable)
  {
    if (v8)
    {
      array = [v8 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v11 = array;
    if (intervalCopy)
    {
      v12 = dispatch_block_create(0, &__block_literal_global_4341);
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __80__CLSRoutineService__fetchLocationsOfInterestWithinDateInterval_routineManager___block_invoke_2;
      v21[3] = &unk_2788A7F80;
      v11 = v11;
      v22 = v11;
      selfCopy = self;
      v15 = v12;
      v24 = v15;
      [managerCopy fetchLocationsOfInterestVisitedBetweenStartDate:startDate endDate:endDate withHandler:v21];

      v16 = dispatch_time(0, 2000000000);
      if (dispatch_block_wait(v15, v16))
      {
        v17 = +[CLSLogging sharedLogging];
        loggingConnection = [v17 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Timeout getting loi information from CoreRoutine", v20, 2u);
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
    selfCopy = self;
    v76 = [[CLSLocationOfInterestCache alloc] initWithLocationCache:self->_locationCache];
    v3 = objc_autoreleasePoolPush();
    defaultManager = [MEMORY[0x277D01280] defaultManager];
    v5 = [(CLSRoutineService *)selfCopy _fetchLocationsOfInterestWithinDateInterval:selfCopy->_fetchDateInterval routineManager:defaultManager];
    if (selfCopy->_routineIsAvailable)
    {
      v62 = v3;
      v63 = v5;
      v64 = defaultManager;
      v65 = selfCopy;
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
              mapItem = [v9 mapItem];
              if ([mapItem validMUID])
              {
                muid = [mapItem muid];
              }

              else
              {
                muid = 0;
              }

              v12 = [[CLSLitePlacemark alloc] initWithRTMapItem:mapItem];
              type = [v9 type];
              v14 = type + 1;
              context = v8;
              v75 = v6;
              v71 = mapItem;
              if ((type + 1) >= 5)
              {
                v17 = type;
                v18 = +[CLSLogging sharedLogging];
                loggingConnection = [v18 loggingConnection];

                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v92 = v17;
                  _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Undefined LocationOfInterestType %lu. File a radar against Photos Media Mining.", buf, 0xCu);
                }

                v15 = -1;
                v16 = 50.0;
              }

              else
              {
                v15 = qword_22F992830[v14];
                v16 = dbl_22F992858[v14];
              }

              location = [(CLSLitePlacemark *)v12 location];
              v21 = [CLSLocationOfInterest alloc];
              identifier = [v9 identifier];
              v70 = v12;
              region = [(CLSLitePlacemark *)v12 region];
              v69 = location;
              v24 = [(CLSLocationOfInterest *)v21 initWithIdentifier:identifier locationOfInterestType:v15 location:location placemarkRegion:region businessItemMuid:muid radius:v16];

              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v72 = v9;
              visits = [v9 visits];
              v26 = [visits countByEnumeratingWithState:&v85 objects:buf count:16];
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
                      objc_enumerationMutation(visits);
                    }

                    v30 = *(*(&v85 + 1) + 8 * i);
                    v31 = objc_alloc(MEMORY[0x277CCA970]);
                    entryDate = [v30 entryDate];
                    exitDate = [v30 exitDate];
                    v34 = [v31 initWithStartDate:entryDate endDate:exitDate];

                    [v30 locationOfInterestConfidence];
                    v36 = v35;
                    v37 = [CLSLocationOfInterestVisit alloc];
                    identifier2 = [v30 identifier];
                    v39 = [(CLSLocationOfInterestVisit *)v37 initWithIdentifier:identifier2 visitInterval:v34 confidence:v36];

                    [(CLSLocationOfInterest *)v24 addVisit:v39];
                  }

                  v27 = [visits countByEnumeratingWithState:&v85 objects:buf count:16];
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

        selfCopy = v65;
      }

      contexta = objc_autoreleasePoolPush();
      [(CLSRoutineService *)selfCopy _fetchLocationOfInterestTransitionsWithinDateInterval:selfCopy->_fetchDateInterval routineManager:defaultManager];
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
            startDate = [v47 startDate];
            stopDate = [v47 stopDate];
            v51 = [v48 initWithStartDate:startDate endDate:stopDate];

            modeOfTransportation = [v47 modeOfTransportation];
            v53 = modeOfTransportation;
            if (modeOfTransportation >= 4)
            {
              v55 = +[CLSLogging sharedLogging];
              loggingConnection2 = [v55 loggingConnection];

              if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v92 = v53;
                _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "Undefined ModeOfTransportation %lu. File a radar against Photos Media Mining.", buf, 0xCu);
              }

              v54 = -1;
            }

            else
            {
              v54 = modeOfTransportation - 1;
            }

            v57 = [CLSLocationOfInterestTransition alloc];
            identifier3 = [v47 identifier];
            v59 = [(CLSLocationOfInterestTransition *)v57 initWithIdentifier:identifier3 transitionInterval:v51 transportationMode:v54];

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
      defaultManager = v64;
      selfCopy = v65;
      v3 = v62;
      v5 = v63;
    }

    objc_autoreleasePoolPop(v3);
    visitsCache = selfCopy->_visitsCache;
    selfCopy->_visitsCache = v76;
    v61 = v76;

    [(CLSLocationOfInterestCache *)v61 numberOfLocationsOfInterest];
    [(CLSLocationOfInterestCache *)v61 numberOfLocationsOfInterestVisits];
    [(CLSLocationOfInterestCache *)v61 numberOfLocationsOfInterestTransitions];
  }
}

- (int64_t)predominantTransportationModeForDateInterval:(id)interval confidence:(double *)confidence
{
  v50 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v6 = [visitsCache locationsOfInterestTransitionInDateInterval:intervalCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        transportationMode = [v13 transportationMode];
        transitionInterval = [v13 transitionInterval];
        [transitionInterval duration];
        v17 = v16;

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:transportationMode];
        v19 = [dictionary objectForKeyedSubscript:v18];
        [v19 doubleValue];
        v21 = v20;

        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v17 + v21];
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:transportationMode];
        [dictionary setObject:v22 forKeyedSubscript:v23];
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = dictionary;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    unsignedIntegerValue = -1;
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
          unsignedIntegerValue = [v31 unsignedIntegerValue];
          v29 = v34;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);

    v35 = 1.0;
    if (v29 != -1.79769313e308)
    {
      [intervalCopy duration];
      if (v36 > 0.0)
      {
        v35 = fmin(v29 / v36, 1.0);
      }
    }
  }

  else
  {

    v35 = 1.0;
    unsignedIntegerValue = -1;
  }

  if (confidence)
  {
    *confidence = v35;
  }

  return unsignedIntegerValue;
}

- (double)_disambiguationDistanceForDevicePlacementType:(unint64_t)type
{
  result = 1.79769313e308;
  if (type == 2)
  {
    result = 200000.0;
  }

  if (type == 1)
  {
    return 50000.0;
  }

  return result;
}

- (unint64_t)_devicePlacementTypeForLocationsOfInterestVisits:(id)visits
{
  visitsCopy = visits;
  v4 = [visitsCopy count];
  if (v4)
  {
    if (v4 <= 2)
    {
      anyObject = [visitsCopy anyObject];
      visitInterval = [anyObject visitInterval];
      [visitInterval duration];
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

- (BOOL)isRemoteLocation:(id)location inDateInterval:(id)interval
{
  v41 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  intervalCopy = interval;
  ++self->_statistics.numberOfMatchRequests;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v9 = [visitsCache locationsOfInterestVisitsInDateInterval:intervalCopy];
  if (![v9 count])
  {
    goto LABEL_3;
  }

  earliestVisitStartDate = [visitsCache earliestVisitStartDate];
  startDate = [intervalCopy startDate];
  v12 = [earliestVisitStartDate compare:startDate];

  if (v12 == 1)
  {
    goto LABEL_3;
  }

  v34 = visitsCache;
  v35 = intervalCopy;
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
        identifier = [v20 identifier];
        [(NSMutableSet *)pendingPinningVisitIdentifiers addObject:identifier];

        locationOfInterest = [v20 locationOfInterest];
        location = [locationOfInterest location];
        [location distanceFromLocation:locationCopy];
        v26 = v25;
        [locationOfInterest placemarkLocationDistanceFromLocation:location locationCache:self->_locationCache];
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
    intervalCopy = v35;
LABEL_23:
    v9 = v33;
    visitsCache = v34;
    goto LABEL_24;
  }

  v30 = [(CLSRoutineService *)self _devicePlacementTypeForLocationsOfInterestVisits:v14];
  v13 = 0;
  intervalCopy = v35;
  if (!v30)
  {
    goto LABEL_23;
  }

  v9 = v33;
  visitsCache = v34;
  if (v30 == 3)
  {
    goto LABEL_24;
  }

  [(CLSRoutineService *)self _disambiguationDistanceForDevicePlacementType:v30];
  v31 = [v34 closestLocationOfInterestVisitToLocation:locationCopy withinDistance:v35 inDateInterval:?];

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

- (id)locationOfInterestVisitsInDateInterval:(id)interval
{
  intervalCopy = interval;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v6 = [visitsCache locationsOfInterestVisitsAtLocation:0 inDateInterval:intervalCopy];

  return v6;
}

- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D01280];
  identifierCopy = identifier;
  defaultManager = [v4 defaultManager];
  v7 = [(CLSRoutineService *)self _fetchFinerGranularityMapItemForVisitIdentifier:identifierCopy routineManager:defaultManager];

  return v7;
}

- (id)locationOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval
{
  intervalCopy = interval;
  locationCopy = location;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v9 = [visitsCache locationsOfInterestVisitsAtLocation:locationCopy inDateInterval:intervalCopy];

  return v9;
}

- (id)locationOfInterestAtLocation:(id)location
{
  locationCopy = location;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v6 = [visitsCache locationOfInterestAtLocation:locationCopy];

  return v6;
}

- (id)locationOfInterestCloseToLocation:(id)location inDateInterval:(id)interval
{
  intervalCopy = interval;
  locationCopy = location;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v9 = [visitsCache closestLocationOfInterestVisitToLocation:locationCopy withinDistance:intervalCopy inDateInterval:200.0];

  locationOfInterest = [v9 locationOfInterest];

  return locationOfInterest;
}

- (id)placemarksOfInterestOfType:(int64_t)type
{
  v4 = [(CLSRoutineService *)self locationsOfInterestOfType:type];
  v5 = [(CLSRoutineService *)self _placemarksFromLocationsOfInterest:v4];

  return v5;
}

- (id)locationsOfInterestOfType:(int64_t)type
{
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v5 = [visitsCache locationsOfInterestOfType:type];

  return v5;
}

- (void)cacheLocationOfInterest:(id)interest
{
  interestCopy = interest;
  visitsCache = [(CLSRoutineService *)self visitsCache];
  [visitsCache addLocationOfInterest:interestCopy];
}

- (id)visitsCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_visitsCache)
  {
    [(CLSRoutineService *)selfCopy _buildLocationsOfInterestCache];
  }

  objc_sync_exit(selfCopy);

  visitsCache = selfCopy->_visitsCache;

  return visitsCache;
}

- (id)lastLocationOfInterestVisit
{
  visitsCache = [(CLSRoutineService *)self visitsCache];
  lastLocationOfInterestVisit = [visitsCache lastLocationOfInterestVisit];

  return lastLocationOfInterestVisit;
}

- (BOOL)hasLocationsOfInterestInformation
{
  visitsCache = [(CLSRoutineService *)self visitsCache];
  v3 = [visitsCache numberOfLocationsOfInterest] != 0;

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

- (CLSRoutineService)initWithFetchDateInterval:(id)interval locationCache:(id)cache
{
  intervalCopy = interval;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = CLSRoutineService;
  v9 = [(CLSRoutineService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_routineIsAvailable = 1;
    objc_storeStrong(&v9->_fetchDateInterval, interval);
    objc_storeStrong(&v10->_locationCache, cache);
    [(CLSRoutineService *)v10 invalidateLocationsOfInterest];
  }

  return v10;
}

@end
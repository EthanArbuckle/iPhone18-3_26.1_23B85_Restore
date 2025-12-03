@interface CLSLocationOfInterestCache
- (CLSLocationOfInterestCache)initWithLocationCache:(id)cache;
- (id)closestLocationOfInterestVisitToLocation:(id)location withinDistance:(double)distance inDateInterval:(id)interval;
- (id)locationOfInterestAtLocation:(id)location;
- (id)locationsOfInterestOfType:(int64_t)type;
- (id)locationsOfInterestTransitionInDateInterval:(id)interval;
- (id)locationsOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval;
- (id)mergeHighConfidenceVisits:(id)visits withLowConfidenceVisits:(id)confidenceVisits;
- (unint64_t)numberOfLocationsOfInterest;
- (unint64_t)numberOfLocationsOfInterestTransitions;
- (void)addLocationOfInterest:(id)interest;
- (void)addLocationOfInterestTransition:(id)transition;
@end

@implementation CLSLocationOfInterestCache

- (unint64_t)numberOfLocationsOfInterestTransitions
{
  allLocationsOfInterestTransitionIdentifiers = [(CLSLocationOfInterestCache *)self allLocationsOfInterestTransitionIdentifiers];
  v3 = [allLocationsOfInterestTransitionIdentifiers count];

  return v3;
}

- (id)locationsOfInterestTransitionInDateInterval:(id)interval
{
  v40 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = intervalCopy;
  startDate = [v5 startDate];
  v7 = [CLSCalendar validDateForDate:startDate];

  endDate = [v5 endDate];
  v9 = [CLSCalendar validDateForDate:endDate];

  v28 = v7;
  v10 = [CLSCalendar startOfDayForDate:v7];
  array = [MEMORY[0x277CBEB18] array];
  if ([v10 compare:v9] == -1)
  {
    do
    {
      v13 = [CLSCalendar components:28 fromDate:v10];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v13, "year"), objc_msgSend(v13, "month"), objc_msgSend(v13, "day")];
      [array addObject:v14];
      v12 = [CLSCalendar dateByAddingDays:1 toDate:v10];

      v10 = v12;
    }

    while ([v12 compare:v9] == -1);
  }

  else
  {
    v12 = v10;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = array;
  v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v29)
  {
    v26 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [(NSMutableDictionary *)self->_transitionsCache objectForKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * j);
              transitionInterval = [v21 transitionInterval];
              v23 = [transitionInterval intersectsDateInterval:v5];

              if (v23)
              {
                [v4 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v18);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v29);
  }

  return v4;
}

- (void)addLocationOfInterestTransition:(id)transition
{
  v39 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  identifier = [transitionCopy identifier];
  v6 = self->_allLocationsOfInterestTransitionIdentifiers;
  if (([(NSMutableSet *)v6 containsObject:identifier]& 1) == 0)
  {
    [(NSMutableSet *)v6 addObject:identifier];
    transitionInterval = [transitionCopy transitionInterval];
    [transitionInterval duration];
    if (v8 <= 31557600.0)
    {
      v29 = v6;
      v30 = identifier;
      v28 = transitionInterval;
      v11 = transitionInterval;
      startDate = [v11 startDate];
      v13 = [CLSCalendar validDateForDate:startDate];

      v27 = v11;
      endDate = [v11 endDate];
      v15 = [CLSCalendar validDateForDate:endDate];

      v16 = [CLSCalendar startOfDayForDate:v13];
      array = [MEMORY[0x277CBEB18] array];
      if ([v16 compare:v15] == -1)
      {
        v31 = v15;
        do
        {
          v19 = [CLSCalendar components:28 fromDate:v16];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v19, "year"), objc_msgSend(v19, "month"), objc_msgSend(v19, "day")];
          [array addObject:v20];
          v18 = [CLSCalendar dateByAddingDays:1 toDate:v16];

          v15 = v31;
          v16 = v18;
        }

        while ([v18 compare:v31] == -1);
      }

      else
      {
        v18 = v16;
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      loggingConnection = array;
      v21 = [loggingConnection countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v33;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(loggingConnection);
            }

            v25 = *(*(&v32 + 1) + 8 * i);
            array2 = [(NSMutableDictionary *)self->_transitionsCache objectForKeyedSubscript:v25];
            if (!array2)
            {
              array2 = [MEMORY[0x277CBEB18] array];
              [(NSMutableDictionary *)self->_transitionsCache setObject:array2 forKeyedSubscript:v25];
            }

            [array2 addObject:transitionCopy];
          }

          v22 = [loggingConnection countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v22);
      }

      v6 = v29;
      identifier = v30;
      transitionInterval = v28;
    }

    else
    {
      v9 = +[CLSLogging sharedLogging];
      loggingConnection = [v9 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = transitionInterval;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Duration for location of interest transition %@ is too long, aborting.", buf, 0xCu);
      }
    }
  }
}

- (unint64_t)numberOfLocationsOfInterest
{
  allLocationsOfInterest = [(CLSLocationOfInterestCache *)self allLocationsOfInterest];
  v3 = [allLocationsOfInterest count];

  return v3;
}

- (id)mergeHighConfidenceVisits:(id)visits withLowConfidenceVisits:(id)confidenceVisits
{
  v21 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  confidenceVisitsCopy = confidenceVisits;
  v7 = [visitsCopy mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = confidenceVisitsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([visitsCopy containsObject:{v13, v16}] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (id)locationsOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval
{
  v88 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  intervalCopy = interval;
  v69 = [MEMORY[0x277CBEB58] set];
  v66 = [MEMORY[0x277CBEB58] set];
  v6 = intervalCopy;
  startDate = [v6 startDate];
  v8 = [CLSCalendar validDateForDate:startDate];

  v70 = v6;
  endDate = [v6 endDate];
  v10 = [CLSCalendar validDateForDate:endDate];

  v11 = [CLSCalendar startOfDayForDate:v8];
  array = [MEMORY[0x277CBEB18] array];
  if ([v11 compare:v10] == -1)
  {
    do
    {
      v14 = [CLSCalendar components:28 fromDate:v11];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v14, "year"), objc_msgSend(v14, "month"), objc_msgSend(v14, "day")];
      [array addObject:v15];
      v13 = [CLSCalendar dateByAddingDays:1 toDate:v11];

      v11 = v13;
    }

    while ([v13 compare:v10] == -1);
  }

  else
  {
    v13 = v11;
  }

  v16 = v6;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = array;
  v17 = locationCopy;
  v18 = v69;
  v64 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v64)
  {
    v63 = *v77;
    do
    {
      v19 = 0;
      do
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v19;
        v20 = [(NSMutableDictionary *)self->_visitsCache objectForKeyedSubscript:*(*(&v76 + 1) + 8 * v19)];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v71 = v20;
        v21 = [v20 countByEnumeratingWithState:&v72 objects:v86 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v73;
          do
          {
            v24 = 0;
            do
            {
              if (*v73 != v23)
              {
                objc_enumerationMutation(v71);
              }

              v25 = *(*(&v72 + 1) + 8 * v24);
              visitInterval = [v25 visitInterval];
              v27 = [visitInterval intersectsDateInterval:v16];

              if (v27)
              {
                if (!v17)
                {
                  [v18 addObject:v25];
                  goto LABEL_44;
                }

                locationOfInterest = [v25 locationOfInterest];
                businessItemMuid = [locationOfInterest businessItemMuid];
                if (locationOfInterest)
                {
                  v30 = businessItemMuid;
                  location = [locationOfInterest location];
                  [location distanceFromLocation:v17];
                  v33 = v32;
                  if (location)
                  {
                    v34 = v32 > 2.22044605e-16;
                  }

                  else
                  {
                    v34 = 1;
                  }

                  if (!v34)
                  {
                    v43 = +[CLSLogging sharedLogging];
                    loggingConnection = [v43 loggingConnection];

                    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier = [locationOfInterest identifier];
                      *buf = 138412547;
                      v81 = identifier;
                      v82 = 2049;
                      v83 = v30;
                      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Visit ingested after exact match with location coordinates. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                    }

                    v18 = v69;
                    v47 = v69;
                    goto LABEL_42;
                  }

                  if (!_os_feature_enabled_impl() || (([v25 visitInterval], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "duration"), v37 = v36, v35, v18 = v69, v37 >= 300.0) ? (v38 = v33 > 100.0) : (v38 = 1), v38))
                  {
                    [locationOfInterest placemarkLocationDistanceFromLocation:v17 locationCache:self->_locationCache];
                    if (v39 <= 2.22044605e-16)
                    {
                      v40 = +[CLSLogging sharedLogging];
                      loggingConnection = [v40 loggingConnection];

                      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier2 = [locationOfInterest identifier];
                        *buf = 138412547;
                        v81 = identifier2;
                        v82 = 2049;
                        v83 = v30;
                        _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Visit ingested after exact match with placemark location distance. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                      }

                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    isHighConfidence = [v25 isHighConfidence];
                    v49 = +[CLSLogging sharedLogging];
                    loggingConnection = [v49 loggingConnection];

                    v50 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT);
                    if (isHighConfidence)
                    {
                      if (v50)
                      {
                        identifier3 = [locationOfInterest identifier];
                        *buf = 138412547;
                        v81 = identifier3;
                        v82 = 2049;
                        v83 = v30;
                        _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Visit ingested after passing dwell time and relaxed distance threshold. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                      }

                      v18 = v69;
LABEL_41:
                      v47 = v18;
                      v17 = locationCopy;
                      goto LABEL_42;
                    }

                    if (v50)
                    {
                      identifier4 = [locationOfInterest identifier];
                      *buf = 138412547;
                      v81 = identifier4;
                      v82 = 2049;
                      v83 = v30;
                      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Low confidence visit ingested after passing dwell time and relaxed distance threshold. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                    }

                    v47 = v66;
                    v17 = locationCopy;
                    v18 = v69;
LABEL_42:

                    [v47 addObject:v25];
                  }
                }

                else
                {
                  v42 = +[CLSLogging sharedLogging];
                  location = [v42 loggingConnection];

                  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v81 = v25;
                    _os_log_error_impl(&dword_22F907000, location, OS_LOG_TYPE_ERROR, "LOI nil for visit %{private}@", buf, 0xCu);
                  }
                }

                v16 = v70;
              }

LABEL_44:
              ++v24;
            }

            while (v22 != v24);
            v53 = [v71 countByEnumeratingWithState:&v72 objects:v86 count:16];
            v22 = v53;
          }

          while (v53);
        }

        v19 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v64);
  }

  if (_os_feature_enabled_impl())
  {
    v54 = [v18 count];
    v55 = [v66 count];
    v56 = [(CLSLocationOfInterestCache *)self mergeHighConfidenceVisits:v18 withLowConfidenceVisits:v66];
    v57 = [v56 count];
    if (v57)
    {
      v58 = v57;
      v59 = +[CLSLogging sharedLogging];
      loggingConnection2 = [v59 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v81 = v54;
        v82 = 2048;
        v83 = v55;
        v84 = 2048;
        v85 = v58;
        _os_log_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_INFO, "Returning visits after merging high and low confidence visits. High Confidence visit count:%lu | Low Confidence visit count:%lu | Merged Count:%lu", buf, 0x20u);
      }

      v17 = locationCopy;
    }
  }

  else
  {
    v56 = v18;
  }

  return v56;
}

- (id)locationOfInterestAtLocation:(id)location
{
  v27 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allLocationsOfInterest = [(CLSLocationOfInterestCache *)self allLocationsOfInterest];
  v6 = [allLocationsOfInterest countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allLocationsOfInterest);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        location = [v11 location];
        [location distanceFromLocation:locationCopy];
        v14 = v13;

        if (v14 <= 2.22044605e-16)
        {
          v15 = v11;

          v8 = v15;
        }

        [v11 placemarkLocationDistanceFromLocation:locationCopy locationCache:self->_locationCache];
        if (v16 <= 2.22044605e-16)
        {
          v17 = v11;
          if (v17)
          {
            v18 = v17;
            goto LABEL_15;
          }
        }
      }

      v7 = [allLocationsOfInterest countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
    v8 = 0;
  }

LABEL_15:

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v8;
  }

  v20 = v19;

  return v19;
}

- (id)closestLocationOfInterestVisitToLocation:(id)location withinDistance:(double)distance inDateInterval:(id)interval
{
  v38 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  intervalCopy = interval;
  [(CLSLocationOfInterestCache *)self locationsOfInterestVisitsInDateInterval:intervalCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v31 = intervalCopy;
    v12 = 0;
    v13 = 0;
    v14 = *v34;
    v15 = 1.79769313e308;
    v16 = 1.79769313e308;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        locationOfInterest = [v18 locationOfInterest];
        location = [locationOfInterest location];
        [location distanceFromLocation:locationCopy];
        if (v21 < v16)
        {
          v22 = v21;
          v23 = v18;
          v24 = v13;
          v13 = v23;

          v16 = v22;
        }

        [locationOfInterest placemarkLocationDistanceFromLocation:locationCopy locationCache:self->_locationCache];
        if (v25 < v15)
        {
          v26 = v25;
          v27 = v18;

          v15 = v26;
          v12 = v27;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
    intervalCopy = v31;
    if (v12 && (v28 = v12, v15 - distance <= 2.22044605e-16) || (v29 = 0, v13) && (v28 = v13, v16 - distance <= 2.22044605e-16))
    {
      v29 = v28;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v29 = 0;
  }

  return v29;
}

- (id)locationsOfInterestOfType:(int64_t)type
{
  if (type == 1)
  {
    workLocations = [(CLSLocationOfInterestCache *)self workLocations];
    if (!workLocations)
    {
LABEL_4:
      workLocations = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    if (type)
    {
      goto LABEL_4;
    }

    workLocations = [(CLSLocationOfInterestCache *)self homeLocations];
    if (!workLocations)
    {
      goto LABEL_4;
    }
  }

  return workLocations;
}

- (void)addLocationOfInterest:(id)interest
{
  v56 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  visits = [interestCopy visits];
  if (([(NSMutableSet *)self->_allLocationsOfInterest containsObject:interestCopy]& 1) != 0)
  {
    goto LABEL_35;
  }

  self->_numberOfLocationsOfInterestVisits += [visits count];
  [(NSMutableSet *)self->_allLocationsOfInterest addObject:interestCopy];
  if (![interestCopy type])
  {
    v6 = 48;
    goto LABEL_6;
  }

  if ([interestCopy type] == 1)
  {
    v6 = 56;
LABEL_6:
    [*(&self->super.isa + v6) addObject:interestCopy];
  }

  v33 = visits;
  v34 = interestCopy;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = visits;
  v37 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v37)
  {
    v38 = 0;
    v36 = *v51;
    v7 = 0x2788A5000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * v8);
        visitInterval = [v9 visitInterval];
        startDate = [visitInterval startDate];
        v43 = visitInterval;
        endDate = [visitInterval endDate];
        earliestVisitStartDate = self->_earliestVisitStartDate;
        if (!earliestVisitStartDate || [(NSDate *)earliestVisitStartDate compare:startDate]== NSOrderedDescending)
        {
          objc_storeStrong(&self->_earliestVisitStartDate, startDate);
        }

        v44 = v8;
        v41 = endDate;
        if (!self->_lastLocationOfInterestVisit || [v38 compare:endDate] == -1)
        {
          objc_storeStrong(&self->_lastLocationOfInterestVisit, v9);
          v14 = endDate;

          v38 = v14;
        }

        visitInterval2 = [v9 visitInterval];
        v16 = *(v7 + 3992);
        startDate2 = [visitInterval2 startDate];
        v18 = [v16 validDateForDate:startDate2];

        v19 = *(v7 + 3992);
        v40 = visitInterval2;
        endDate2 = [visitInterval2 endDate];
        v21 = [v19 validDateForDate:endDate2];

        v39 = v18;
        v22 = [*(v7 + 3992) startOfDayForDate:v18];
        [MEMORY[0x277CBEB18] array];
        v45 = v42 = startDate;
        if ([v22 compare:v21] == -1)
        {
          do
          {
            v24 = [*(v7 + 3992) components:28 fromDate:v22];
            v7 = 0x2788A5000uLL;
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v24, "year"), objc_msgSend(v24, "month"), objc_msgSend(v24, "day")];
            [v45 addObject:v25];
            v23 = [CLSCalendar dateByAddingDays:1 toDate:v22];

            v22 = v23;
          }

          while ([v23 compare:v21] == -1);
        }

        else
        {
          v23 = v22;
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v26 = v45;
        v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v47;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v47 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v46 + 1) + 8 * i);
              array = [(NSMutableDictionary *)self->_visitsCache objectForKeyedSubscript:v31];
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
                [(NSMutableDictionary *)self->_visitsCache setObject:array forKeyedSubscript:v31];
              }

              [array addObject:v9];
            }

            v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v28);
        }

        v8 = v44 + 1;
        v7 = 0x2788A5000;
      }

      while (v44 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  visits = v33;
  interestCopy = v34;
LABEL_35:
}

- (CLSLocationOfInterestCache)initWithLocationCache:(id)cache
{
  cacheCopy = cache;
  v21.receiver = self;
  v21.super_class = CLSLocationOfInterestCache;
  v6 = [(CLSLocationOfInterestCache *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationCache, cache);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visitsCache = v7->_visitsCache;
    v7->_visitsCache = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transitionsCache = v7->_transitionsCache;
    v7->_transitionsCache = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allLocationsOfInterest = v7->_allLocationsOfInterest;
    v7->_allLocationsOfInterest = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allLocationsOfInterestTransitionIdentifiers = v7->_allLocationsOfInterestTransitionIdentifiers;
    v7->_allLocationsOfInterestTransitionIdentifiers = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    homeLocations = v7->_homeLocations;
    v7->_homeLocations = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    workLocations = v7->_workLocations;
    v7->_workLocations = v18;
  }

  return v7;
}

@end
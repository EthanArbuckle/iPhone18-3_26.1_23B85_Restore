@interface CLSLocationOfInterestCache
- (CLSLocationOfInterestCache)initWithLocationCache:(id)a3;
- (id)closestLocationOfInterestVisitToLocation:(id)a3 withinDistance:(double)a4 inDateInterval:(id)a5;
- (id)locationOfInterestAtLocation:(id)a3;
- (id)locationsOfInterestOfType:(int64_t)a3;
- (id)locationsOfInterestTransitionInDateInterval:(id)a3;
- (id)locationsOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4;
- (id)mergeHighConfidenceVisits:(id)a3 withLowConfidenceVisits:(id)a4;
- (unint64_t)numberOfLocationsOfInterest;
- (unint64_t)numberOfLocationsOfInterestTransitions;
- (void)addLocationOfInterest:(id)a3;
- (void)addLocationOfInterestTransition:(id)a3;
@end

@implementation CLSLocationOfInterestCache

- (unint64_t)numberOfLocationsOfInterestTransitions
{
  v2 = [(CLSLocationOfInterestCache *)self allLocationsOfInterestTransitionIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)locationsOfInterestTransitionInDateInterval:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = v3;
  v6 = [v5 startDate];
  v7 = [CLSCalendar validDateForDate:v6];

  v8 = [v5 endDate];
  v9 = [CLSCalendar validDateForDate:v8];

  v28 = v7;
  v10 = [CLSCalendar startOfDayForDate:v7];
  v11 = [MEMORY[0x277CBEB18] array];
  if ([v10 compare:v9] == -1)
  {
    do
    {
      v13 = [CLSCalendar components:28 fromDate:v10];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v13, "year"), objc_msgSend(v13, "month"), objc_msgSend(v13, "day")];
      [v11 addObject:v14];
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
  obj = v11;
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
              v22 = [v21 transitionInterval];
              v23 = [v22 intersectsDateInterval:v5];

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

- (void)addLocationOfInterestTransition:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = self->_allLocationsOfInterestTransitionIdentifiers;
  if (([(NSMutableSet *)v6 containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)v6 addObject:v5];
    v7 = [v4 transitionInterval];
    [v7 duration];
    if (v8 <= 31557600.0)
    {
      v29 = v6;
      v30 = v5;
      v28 = v7;
      v11 = v7;
      v12 = [v11 startDate];
      v13 = [CLSCalendar validDateForDate:v12];

      v27 = v11;
      v14 = [v11 endDate];
      v15 = [CLSCalendar validDateForDate:v14];

      v16 = [CLSCalendar startOfDayForDate:v13];
      v17 = [MEMORY[0x277CBEB18] array];
      if ([v16 compare:v15] == -1)
      {
        v31 = v15;
        do
        {
          v19 = [CLSCalendar components:28 fromDate:v16];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v19, "year"), objc_msgSend(v19, "month"), objc_msgSend(v19, "day")];
          [v17 addObject:v20];
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
      v10 = v17;
      v21 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
              objc_enumerationMutation(v10);
            }

            v25 = *(*(&v32 + 1) + 8 * i);
            v26 = [(NSMutableDictionary *)self->_transitionsCache objectForKeyedSubscript:v25];
            if (!v26)
            {
              v26 = [MEMORY[0x277CBEB18] array];
              [(NSMutableDictionary *)self->_transitionsCache setObject:v26 forKeyedSubscript:v25];
            }

            [v26 addObject:v4];
          }

          v22 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v22);
      }

      v6 = v29;
      v5 = v30;
      v7 = v28;
    }

    else
    {
      v9 = +[CLSLogging sharedLogging];
      v10 = [v9 loggingConnection];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_error_impl(&dword_22F907000, v10, OS_LOG_TYPE_ERROR, "Duration for location of interest transition %@ is too long, aborting.", buf, 0xCu);
      }
    }
  }
}

- (unint64_t)numberOfLocationsOfInterest
{
  v2 = [(CLSLocationOfInterestCache *)self allLocationsOfInterest];
  v3 = [v2 count];

  return v3;
}

- (id)mergeHighConfidenceVisits:(id)a3 withLowConfidenceVisits:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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
        if (([v5 containsObject:{v13, v16}] & 1) == 0)
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

- (id)locationsOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v5 = a4;
  v69 = [MEMORY[0x277CBEB58] set];
  v66 = [MEMORY[0x277CBEB58] set];
  v6 = v5;
  v7 = [v6 startDate];
  v8 = [CLSCalendar validDateForDate:v7];

  v70 = v6;
  v9 = [v6 endDate];
  v10 = [CLSCalendar validDateForDate:v9];

  v11 = [CLSCalendar startOfDayForDate:v8];
  v12 = [MEMORY[0x277CBEB18] array];
  if ([v11 compare:v10] == -1)
  {
    do
    {
      v14 = [CLSCalendar components:28 fromDate:v11];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v14, "year"), objc_msgSend(v14, "month"), objc_msgSend(v14, "day")];
      [v12 addObject:v15];
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
  obj = v12;
  v17 = v67;
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
              v26 = [v25 visitInterval];
              v27 = [v26 intersectsDateInterval:v16];

              if (v27)
              {
                if (!v17)
                {
                  [v18 addObject:v25];
                  goto LABEL_44;
                }

                v28 = [v25 locationOfInterest];
                v29 = [v28 businessItemMuid];
                if (v28)
                {
                  v30 = v29;
                  v31 = [v28 location];
                  [v31 distanceFromLocation:v17];
                  v33 = v32;
                  if (v31)
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
                    v44 = [v43 loggingConnection];

                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = [v28 identifier];
                      *buf = 138412547;
                      v81 = v46;
                      v82 = 2049;
                      v83 = v30;
                      _os_log_impl(&dword_22F907000, v44, OS_LOG_TYPE_DEFAULT, "Visit ingested after exact match with location coordinates. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                    }

                    v18 = v69;
                    v47 = v69;
                    goto LABEL_42;
                  }

                  if (!_os_feature_enabled_impl() || (([v25 visitInterval], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "duration"), v37 = v36, v35, v18 = v69, v37 >= 300.0) ? (v38 = v33 > 100.0) : (v38 = 1), v38))
                  {
                    [v28 placemarkLocationDistanceFromLocation:v17 locationCache:self->_locationCache];
                    if (v39 <= 2.22044605e-16)
                    {
                      v40 = +[CLSLogging sharedLogging];
                      v44 = [v40 loggingConnection];

                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                      {
                        v41 = [v28 identifier];
                        *buf = 138412547;
                        v81 = v41;
                        v82 = 2049;
                        v83 = v30;
                        _os_log_impl(&dword_22F907000, v44, OS_LOG_TYPE_DEFAULT, "Visit ingested after exact match with placemark location distance. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                      }

                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    v48 = [v25 isHighConfidence];
                    v49 = +[CLSLogging sharedLogging];
                    v44 = [v49 loggingConnection];

                    v50 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
                    if (v48)
                    {
                      if (v50)
                      {
                        v51 = [v28 identifier];
                        *buf = 138412547;
                        v81 = v51;
                        v82 = 2049;
                        v83 = v30;
                        _os_log_impl(&dword_22F907000, v44, OS_LOG_TYPE_DEFAULT, "Visit ingested after passing dwell time and relaxed distance threshold. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                      }

                      v18 = v69;
LABEL_41:
                      v47 = v18;
                      v17 = v67;
                      goto LABEL_42;
                    }

                    if (v50)
                    {
                      v52 = [v28 identifier];
                      *buf = 138412547;
                      v81 = v52;
                      v82 = 2049;
                      v83 = v30;
                      _os_log_impl(&dword_22F907000, v44, OS_LOG_TYPE_DEFAULT, "Low confidence visit ingested after passing dwell time and relaxed distance threshold. LOI-ID: %@{private}@ | MUID:%{private}llu", buf, 0x16u);
                    }

                    v47 = v66;
                    v17 = v67;
                    v18 = v69;
LABEL_42:

                    [v47 addObject:v25];
                  }
                }

                else
                {
                  v42 = +[CLSLogging sharedLogging];
                  v31 = [v42 loggingConnection];

                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v81 = v25;
                    _os_log_error_impl(&dword_22F907000, v31, OS_LOG_TYPE_ERROR, "LOI nil for visit %{private}@", buf, 0xCu);
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
      v60 = [v59 loggingConnection];

      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v81 = v54;
        v82 = 2048;
        v83 = v55;
        v84 = 2048;
        v85 = v58;
        _os_log_impl(&dword_22F907000, v60, OS_LOG_TYPE_INFO, "Returning visits after merging high and low confidence visits. High Confidence visit count:%lu | Low Confidence visit count:%lu | Merged Count:%lu", buf, 0x20u);
      }

      v17 = v67;
    }
  }

  else
  {
    v56 = v18;
  }

  return v56;
}

- (id)locationOfInterestAtLocation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(CLSLocationOfInterestCache *)self allLocationsOfInterest];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 location];
        [v12 distanceFromLocation:v4];
        v14 = v13;

        if (v14 <= 2.22044605e-16)
        {
          v15 = v11;

          v8 = v15;
        }

        [v11 placemarkLocationDistanceFromLocation:v4 locationCache:self->_locationCache];
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

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (id)closestLocationOfInterestVisitToLocation:(id)a3 withinDistance:(double)a4 inDateInterval:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [(CLSLocationOfInterestCache *)self locationsOfInterestVisitsInDateInterval:v9];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v31 = v9;
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
        v19 = [v18 locationOfInterest];
        v20 = [v19 location];
        [v20 distanceFromLocation:v8];
        if (v21 < v16)
        {
          v22 = v21;
          v23 = v18;
          v24 = v13;
          v13 = v23;

          v16 = v22;
        }

        [v19 placemarkLocationDistanceFromLocation:v8 locationCache:self->_locationCache];
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
    v9 = v31;
    if (v12 && (v28 = v12, v15 - a4 <= 2.22044605e-16) || (v29 = 0, v13) && (v28 = v13, v16 - a4 <= 2.22044605e-16))
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

- (id)locationsOfInterestOfType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(CLSLocationOfInterestCache *)self workLocations];
    if (!v3)
    {
LABEL_4:
      v3 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_4;
    }

    v3 = [(CLSLocationOfInterestCache *)self homeLocations];
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  return v3;
}

- (void)addLocationOfInterest:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 visits];
  if (([(NSMutableSet *)self->_allLocationsOfInterest containsObject:v4]& 1) != 0)
  {
    goto LABEL_35;
  }

  self->_numberOfLocationsOfInterestVisits += [v5 count];
  [(NSMutableSet *)self->_allLocationsOfInterest addObject:v4];
  if (![v4 type])
  {
    v6 = 48;
    goto LABEL_6;
  }

  if ([v4 type] == 1)
  {
    v6 = 56;
LABEL_6:
    [*(&self->super.isa + v6) addObject:v4];
  }

  v33 = v5;
  v34 = v4;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
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
        v10 = [v9 visitInterval];
        v11 = [v10 startDate];
        v43 = v10;
        v12 = [v10 endDate];
        earliestVisitStartDate = self->_earliestVisitStartDate;
        if (!earliestVisitStartDate || [(NSDate *)earliestVisitStartDate compare:v11]== NSOrderedDescending)
        {
          objc_storeStrong(&self->_earliestVisitStartDate, v11);
        }

        v44 = v8;
        v41 = v12;
        if (!self->_lastLocationOfInterestVisit || [v38 compare:v12] == -1)
        {
          objc_storeStrong(&self->_lastLocationOfInterestVisit, v9);
          v14 = v12;

          v38 = v14;
        }

        v15 = [v9 visitInterval];
        v16 = *(v7 + 3992);
        v17 = [v15 startDate];
        v18 = [v16 validDateForDate:v17];

        v19 = *(v7 + 3992);
        v40 = v15;
        v20 = [v15 endDate];
        v21 = [v19 validDateForDate:v20];

        v39 = v18;
        v22 = [*(v7 + 3992) startOfDayForDate:v18];
        [MEMORY[0x277CBEB18] array];
        v45 = v42 = v11;
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
              v32 = [(NSMutableDictionary *)self->_visitsCache objectForKeyedSubscript:v31];
              if (!v32)
              {
                v32 = [MEMORY[0x277CBEB18] array];
                [(NSMutableDictionary *)self->_visitsCache setObject:v32 forKeyedSubscript:v31];
              }

              [v32 addObject:v9];
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

  v5 = v33;
  v4 = v34;
LABEL_35:
}

- (CLSLocationOfInterestCache)initWithLocationCache:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CLSLocationOfInterestCache;
  v6 = [(CLSLocationOfInterestCache *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationCache, a3);
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
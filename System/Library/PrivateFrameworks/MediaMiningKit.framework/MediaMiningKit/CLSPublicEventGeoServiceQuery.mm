@interface CLSPublicEventGeoServiceQuery
- (CLSPublicEventGeoServiceQuery)initWithTimeLocationTuples:(id)a3 radius:(double)a4;
- (id)_parametersByTimeLocationTupleIdentifierForTimeLocationTuples:(id)a3;
- (id)_publicEventsForGeoEvent:(id)a3 matchingParameters:(id)a4;
- (void)prepareForRetry;
- (void)submitWithHandler:(id)a3;
@end

@implementation CLSPublicEventGeoServiceQuery

- (id)_parametersByTimeLocationTupleIdentifierForTimeLocationTuples:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = +[CLSPublicEvent supportedCategories];
  v7 = [v6 allObjects];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        [v12 coordinates];
        v14 = v13;
        v16 = v15;
        v17 = objc_alloc(MEMORY[0x277CCA970]);
        v18 = [v12 expandedStartDate];
        v19 = [v12 expandedEndDate];
        v20 = [v17 initWithStartDate:v18 endDate:v19];

        v21 = [objc_alloc(MEMORY[0x277D0ED58]) initWithCoordinate:v7 radius:v20 categories:v14 dateInterval:{v16, self->_radius}];
        v22 = [v12 timeLocationIdentifier];
        [v5 setObject:v21 forKeyedSubscript:v22];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)_publicEventsForGeoEvent:(id)a3 matchingParameters:(id)a4
{
  v138 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v88 = a4;
  v6 = [v5 categories];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v92 = [v5 localizedName];
  v94 = v5;
  v8 = [v5 identifier];
  v90 = [v8 muid];

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v122 objects:v137 count:16];
  v97 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v100 = *v123;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v123 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v122 + 1) + 8 * i);
        v14 = [v13 category];
        v15 = [[CLSPublicEventCategory alloc] initWithCategory:v14];
        v16 = [v13 localizedNames];
        v17 = [v16 count];
        v18 = [v16 firstObject];
        [(CLSPublicEventCategory *)v15 setLocalizedName:v18];

        v19 = v17 - 1;
        if (v17 <= 1)
        {
          [(CLSPublicEventCategory *)v15 setLocalizedSubcategories:MEMORY[0x277CBEBF8], v19];
        }

        else
        {
          v20 = [v16 subarrayWithRange:{1, v19}];
          [(CLSPublicEventCategory *)v15 setLocalizedSubcategories:v20];
        }

        [v7 addObject:v15];
        v21 = +[CLSPublicEventCategory festivalsAndFairs];
        if ([v14 isEqualToString:v21])
        {
          v11 = 1;
        }

        else
        {
          v22 = +[CLSPublicEventCategory appleEvents];
          v23 = [v14 isEqualToString:v22];

          v11 |= v23;
          v7 = v97;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v122 objects:v137 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v96 = v11;

  v24 = [v94 performers];
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v118 objects:v136 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v119;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v119 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v118 + 1) + 8 * j);
        v32 = [CLSPublicEventPerformer alloc];
        v33 = [v31 localizedName];
        v34 = [v31 iTunesIdentifier];
        v35 = [(CLSPublicEventPerformer *)v32 initWithLocalizedName:v33 iTunesIdentifier:v34];

        [v25 addObject:v35];
      }

      v28 = [v26 countByEnumeratingWithState:&v118 objects:v136 count:16];
    }

    while (v28);
  }

  [v94 centerCoordinate];
  v38 = CLLocationCoordinate2DMake(v36, v37);
  v39 = [v94 hours];
  v40 = [v94 timeZone];
  if (!v40)
  {
    v41 = +[CLSLogging sharedLogging];
    v42 = [v41 loggingConnection];

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, v42, OS_LOG_TYPE_ERROR, "[EventsFetch] Time Zone is nil on GeoEvent. Using GMT as fallback", buf, 2u);
    }

    v40 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  }

  v87 = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CLSPublicEventGeoServiceQuery__publicEventsForGeoEvent_matchingParameters___block_invoke;
  aBlock[3] = &unk_2788A7CF8;
  v116 = v90;
  v89 = v92;
  v111 = v89;
  v43 = v40;
  v112 = v43;
  v86 = v97;
  v113 = v86;
  v84 = v25;
  v114 = v84;
  v117 = v38;
  v44 = v94;
  v115 = v44;
  v45 = _Block_copy(aBlock);
  v46 = [v88 dateInterval];
  v47 = [v46 startDate];
  v48 = [CLSCalendar localDateFromUniversalDate:v47 inTimeZone:v43];
  v49 = [CLSCalendar startOfDayForDate:v48];

  v83 = v46;
  v50 = [v46 endDate];
  v85 = v43;
  v51 = [CLSCalendar localDateFromUniversalDate:v50 inTimeZone:v43];
  v52 = [CLSCalendar endOfDayForDate:v51];

  v53 = [v52 laterDate:v49];
  LODWORD(v50) = [v53 isEqualToDate:v49];

  v82 = v49;
  if (v50)
  {
    v54 = v86;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v129 = v89;
      v130 = 2048;
      v131 = v90;
      v132 = 2112;
      v133 = v49;
      v134 = 2112;
      v135 = v52;
      _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[EventsFetch] Cannot ingest event %{public}@ with muid %lu. Parameters start date %@ cannot be later in time than end date %@.", buf, 0x2Au);
    }

    v55 = MEMORY[0x277CBEBF8];
    v57 = v84;
    v56 = v85;
    v58 = v87;
    goto LABEL_60;
  }

  v81 = v26;
  v80 = v52;
  v59 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v49 endDate:v52];
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v60 = v87;
  v61 = v96;
  v101 = [v60 countByEnumeratingWithState:&v106 objects:v127 count:16];
  if (!v101)
  {
    goto LABEL_55;
  }

  v62 = *v107;
  v93 = v59;
  v95 = *v107;
  v91 = v60;
  do
  {
    for (k = 0; k != v101; ++k)
    {
      if (*v107 != v62)
      {
        objc_enumerationMutation(v60);
      }

      v64 = *(*(&v106 + 1) + 8 * k);
      v65 = [v64 dateInterval];
      if ([v65 intersectsDateInterval:v59])
      {
        v66 = [v64 hours];
        if ([v66 count])
        {
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v98 = v66;
          v67 = v66;
          v68 = [v67 countByEnumeratingWithState:&v102 objects:v126 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v103;
            do
            {
              for (m = 0; m != v69; ++m)
              {
                if (*v103 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = *(*(&v102 + 1) + 8 * m);
                [v72 startTime];
                v74 = v73;
                [v72 endTime];
                v76 = v45[2](v45, v65, v74, v75);
                [v55 addObject:v76];
              }

              v69 = [v67 countByEnumeratingWithState:&v102 objects:v126 count:16];
            }

            while (v69);
            v60 = v91;
            v59 = v93;
          }

          v66 = v98;
          goto LABEL_51;
        }

        if (v61)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v129 = v89;
            v130 = 2048;
            v131 = v90;
            _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[EventsFetch] Event %{public}@ with muid %lu contains no hours. Will use full day as hours.", buf, 0x16u);
          }

          v67 = v45[2](v45, v65, 0.0, 86400.0);
          [v55 addObject:v67];
LABEL_51:

          v61 = v96;
          v62 = v95;
        }
      }
    }

    v101 = [v60 countByEnumeratingWithState:&v106 objects:v127 count:16];
  }

  while (v101);
LABEL_55:

  v26 = v81;
  v54 = v86;
  if ([v55 count] >= 2)
  {
    v77 = +[CLSLogging sharedLogging];
    v78 = [v77 loggingConnection];

    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v129 = v55;
      _os_log_impl(&dword_22F907000, v78, OS_LOG_TYPE_INFO, "Created more than one public event for Geo event. %@", buf, 0xCu);
    }
  }

  v58 = v87;
  v57 = v84;
  v56 = v85;
  v52 = v80;
LABEL_60:

  return v55;
}

CLSPublicEvent *__77__CLSPublicEventGeoServiceQuery__publicEventsForGeoEvent_matchingParameters___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = objc_alloc_init(CLSPublicEvent);
  [(CLSPublicEvent *)v8 setMuid:*(a1 + 72)];
  [(CLSPublicEvent *)v8 setName:*(a1 + 32)];
  [(CLSPublicEvent *)v8 setLocalDateInterval:v7];

  [(CLSPublicEvent *)v8 setLocalStartTime:a3];
  [(CLSPublicEvent *)v8 setLocalEndTime:a4];
  [(CLSPublicEvent *)v8 setTimeZone:*(a1 + 40)];
  [(CLSPublicEvent *)v8 setCategories:*(a1 + 48)];
  [(CLSPublicEvent *)v8 setPerformers:*(a1 + 56)];
  [(CLSPublicEvent *)v8 setBusinessItemCoordinates:*(a1 + 80), *(a1 + 88)];
  v9 = [*(a1 + 64) relatedPOIIdentifiers];
  v10 = [v9 firstObject];
  -[CLSPublicEvent setBusinessItemMuid:](v8, "setBusinessItemMuid:", [v10 muid]);

  -[CLSPublicEvent setExpectedAttendance:](v8, "setExpectedAttendance:", [*(a1 + 64) expectedAttendance]);
  [(CLSPublicEvent *)v8 setSourceService:0];

  return v8;
}

- (void)prepareForRetry
{
  self->_isCancelled = 0;
  v6 = [(NSDictionary *)self->_parametersByTimeLocationTupleIdentifier allValues];
  v3 = [MEMORY[0x277D0EBD0] sharedService];
  v4 = [v3 ticketForSpatialEventLookupParameters:v6 traits:0];
  ticket = self->_ticket;
  self->_ticket = v4;
}

- (void)submitWithHandler:(id)a3
{
  v4 = a3;
  ticket = self->_ticket;
  v8 = MEMORY[0x277D85DD0];
  v9 = v4;
  v6 = v4;
  v7 = [CLSGeoMapQueryHelper auditToken:v8];
  [(GEOMapServiceSpatialEventLookupTicket *)ticket submitWithHandler:&v8 auditToken:v7 queue:self->_geoQueue];
}

void __51__CLSPublicEventGeoServiceQuery_submitWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 code] != -8)
  {
    v14 = +[CLSLogging sharedLogging];
    v8 = [v14 loggingConnection];

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v13 = [*(a1 + 32) timeLocationTuples];
    *buf = 138412547;
    v24 = v7;
    v25 = 2113;
    v26 = v13;
    _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "[EventsFetch] Error fetching public events: %@. timeLocationTuples %{private}@", buf, 0x16u);
  }

  else
  {
    v8 = [*(a1 + 32) parametersByTimeLocationTupleIdentifier];
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSObject count](v8, "count")}];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__CLSPublicEventGeoServiceQuery_submitWithHandler___block_invoke_7;
    v18 = &unk_2788A7CA8;
    v19 = v5;
    v20 = v9;
    v11 = *(a1 + 32);
    v21 = v10;
    v22 = v11;
    v12 = v10;
    v13 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:&v15];
    [*(a1 + 32) setResolvedPublicEventsByTimeLocationTupleIdentifier:{v13, v15, v16, v17, v18}];
    [*(a1 + 32) setInvalidationTokens:v12];
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __51__CLSPublicEventGeoServiceQuery_submitWithHandler___block_invoke_7(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] poiEventsForSpatialLookupParameters:v6];
  v8 = [v7 count];
  if (v8)
  {
    v22 = v5;
    v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v8];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v7;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 valueForKey:@"invalidationData"];
          v16 = [v15 versionDomains];
          v17 = [v16 description];

          v18 = [v14 invalidationToken];
          [a1[6] setObject:v18 forKeyedSubscript:v17];
          v19 = [a1[7] _publicEventsForGeoEvent:v14 matchingParameters:v6];
          [v9 addObjectsFromArray:v19];
        }

        v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v5 = v22;
    [a1[5] setObject:v9 forKeyedSubscript:v22];

    v7 = v21;
  }

  else
  {
    v20 = [MEMORY[0x277CBEB98] set];
    [a1[5] setObject:v20 forKeyedSubscript:v5];
  }
}

- (CLSPublicEventGeoServiceQuery)initWithTimeLocationTuples:(id)a3 radius:(double)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24.receiver = self;
  v24.super_class = CLSPublicEventGeoServiceQuery;
  v8 = [(CLSPublicEventGeoServiceQuery *)&v24 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.photos.mediamining.georequest.publicevent", v9);
    geoQueue = v8->_geoQueue;
    v8->_geoQueue = v10;

    v8->_isCancelled = 0;
    objc_storeStrong(&v8->_timeLocationTuples, a3);
    v8->_radius = a4;
    v12 = [(CLSPublicEventGeoServiceQuery *)v8 _parametersByTimeLocationTupleIdentifierForTimeLocationTuples:v7];
    objc_storeStrong(&v8->_parametersByTimeLocationTupleIdentifier, v12);
    v13 = [v12 allValues];
    v14 = +[CLSLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 count];
      v17 = [v7 count];
      *buf = 134218240;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      _os_log_impl(&dword_22F907000, v15, OS_LOG_TYPE_INFO, "[EventsFetch] creating GEOMapService ticket with %llu event lookup parameters from %llu time location tuples", buf, 0x16u);
    }

    v18 = [MEMORY[0x277D0EBD0] sharedService];
    v19 = [v18 ticketForSpatialEventLookupParameters:v13 traits:0];
    ticket = v8->_ticket;
    v8->_ticket = v19;

    if (!v8->_ticket)
    {
      v21 = +[CLSLogging sharedLogging];
      v22 = [v21 loggingConnection];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = v7;
        _os_log_error_impl(&dword_22F907000, v22, OS_LOG_TYPE_ERROR, "[EventsFetch] Cannot create ticket for parameters %@, tuples %@", buf, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

@end
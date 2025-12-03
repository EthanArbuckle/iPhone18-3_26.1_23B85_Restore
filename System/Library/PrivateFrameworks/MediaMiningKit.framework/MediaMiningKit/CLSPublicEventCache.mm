@interface CLSPublicEventCache
- (BOOL)getCachedServiceVersion:(id *)version forEventSourceService:(int64_t)service error:(id *)error;
- (BOOL)getScheduledCacheInvalidationDate:(id *)date forEventSourceService:(int64_t)service error:(id *)error;
- (BOOL)insertBatchesOfPublicEventsByTimeLocationIdentifier:(id)identifier forTimeLocationTuples:(id)tuples;
- (BOOL)setLatestVersionScheduledInvalidationDate:(id)date forEventSourceService:(int64_t)service error:(id *)error;
- (BOOL)setNewCachedServiceVersion:(id)version forEventSourceService:(int64_t)service error:(id *)error;
- (id)_fetchRequestForLatestServerVersionForEventSourceService:(int64_t)service;
- (id)predicateForTimeLocationTuple:(id)tuple;
- (id)publicEventFromManagedObject:(id)object;
- (id)publicEventsForMuid:(unint64_t)muid;
- (id)publicEventsForTimeLocationTuple:(id)tuple;
- (id)readAllEvents;
- (unint64_t)eventCountForEventSourceService:(int64_t)service error:(id *)error;
- (unint64_t)numberOftimeLocationTuplesForTimeLocationTuple:(id)tuple;
- (void)_updateManagedEvent:(id)event withEvent:(id)withEvent inContext:(id)context;
- (void)invalidateCacheItemsBeforeDateWithTimestamp:(double)timestamp;
@end

@implementation CLSPublicEventCache

- (id)_fetchRequestForLatestServerVersionForEventSourceService:(int64_t)service
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBE428];
  v5 = +[CLSManagedPublicEventServerVersion entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  service = [MEMORY[0x277CCAC30] predicateWithFormat:@"sourceService == %d", service];
  [v6 setPredicate:service];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateOfLastCachedVersion" ascending:0];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 setSortDescriptors:v9];

  [v6 setFetchLimit:1];

  return v6;
}

- (BOOL)setLatestVersionScheduledInvalidationDate:(id)date forEventSourceService:(int64_t)service error:(id *)error
{
  dateCopy = date;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7241;
  v24 = __Block_byref_object_dispose__7242;
  v25 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__CLSPublicEventCache_setLatestVersionScheduledInvalidationDate_forEventSourceService_error___block_invoke;
  v14[3] = &unk_2788A89A8;
  v14[4] = self;
  serviceCopy = service;
  v10 = managedObjectContext;
  v15 = v10;
  v17 = &v20;
  v18 = &v26;
  v11 = dateCopy;
  v16 = v11;
  [v10 performBlockAndWait:v14];
  v12 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v12 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12 & 1;
}

void __93__CLSPublicEventCache_setLatestVersionScheduledInvalidationDate_forEventSourceService_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForLatestServerVersionForEventSourceService:*(a1 + 72)];
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v17];
  v5 = v17;
  v6 = v17;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  if (v4)
  {
    v7 = [v4 firstObject];
    v8 = v7;
    if (v7)
    {
      [v7 setDateOfScheduledCacheInvalidationForVersion:*(a1 + 48)];
      v9 = *(a1 + 32);
      v16 = v6;
      v10 = [v9 _saveWithError:&v16];
      v11 = v16;
      v12 = v16;

      *(*(*(a1 + 64) + 8) + 24) = v10;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
      v6 = v12;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLSErrorDomain" code:-1 localizedDescription:@"No cached version found on which to set invalidation date"];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (BOOL)getScheduledCacheInvalidationDate:(id *)date forEventSourceService:(int64_t)service error:(id *)error
{
  if (date)
  {
    managedObjectContext = [(CLSDBCache *)self managedObjectContext];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__7241;
    v33 = __Block_byref_object_dispose__7242;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__7241;
    v27 = __Block_byref_object_dispose__7242;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__CLSPublicEventCache_getScheduledCacheInvalidationDate_forEventSourceService_error___block_invoke;
    v13[3] = &unk_2788A8980;
    v13[4] = self;
    serviceCopy = service;
    v10 = managedObjectContext;
    v14 = v10;
    v15 = &v29;
    v16 = &v23;
    v17 = &v19;
    [v10 performBlockAndWait:v13];
    *date = v24[5];
    v11 = *(v20 + 24);
    if (error && (v20[3] & 1) == 0)
    {
      *error = v30[5];
      v11 = *(v20 + 24);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(&v29, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"CLSErrorDomain" code:-1 localizedDescription:@"getScheduledCacheInvalidationDate does not accept NULL date"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __85__CLSPublicEventCache_getScheduledCacheInvalidationDate_forEventSourceService_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForLatestServerVersionForEventSourceService:*(a1 + 72)];
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v11];
  v5 = v11;
  v6 = v11;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v4)
  {
    v7 = [v4 firstObject];
    v8 = [v7 dateOfScheduledCacheInvalidationForVersion];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (BOOL)setNewCachedServiceVersion:(id)version forEventSourceService:(int64_t)service error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v29 = 0;
  v9 = [(CLSPublicEventCache *)self getCachedServiceVersion:&v29 forEventSourceService:service error:error];
  v10 = v29;
  if (v9)
  {
    versionString = [versionCopy versionString];
    v12 = [v10 isEqualToString:versionString];

    if (v12)
    {
      v13 = +[CLSLogging sharedLogging];
      loggingConnection = [v13 loggingConnection];

      v15 = 1;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = service;
        _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Already found cached version %@ for source service %lld", buf, 0x16u);
      }
    }

    else
    {
      managedObjectContext = [(CLSDBCache *)self managedObjectContext];
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v31 = __Block_byref_object_copy__7241;
      v32 = __Block_byref_object_dispose__7242;
      v33 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __78__CLSPublicEventCache_setNewCachedServiceVersion_forEventSourceService_error___block_invoke;
      v18[3] = &unk_2788A89A8;
      loggingConnection = managedObjectContext;
      v19 = loggingConnection;
      v23 = buf;
      serviceCopy = service;
      v20 = versionCopy;
      selfCopy = self;
      v22 = &v25;
      [loggingConnection performBlockAndWait:v18];
      if (error)
      {
        *error = *(*&buf[8] + 40);
      }

      v15 = *(v26 + 24);

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v25, 8);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void __78__CLSPublicEventCache_setNewCachedServiceVersion_forEventSourceService_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE408];
  v3 = +[CLSManagedPublicEventServerVersion entityName];
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:*(a1 + 32)];

  v5 = [*(a1 + 40) versionString];
  [v4 setVersion:v5];

  [v4 setSourceService:*(a1 + 72)];
  v6 = [*(a1 + 40) dateOfServerUpdate];
  [v4 setDateOfServerUpdate:v6];

  v7 = [MEMORY[0x277CBEAA8] now];
  [v4 setDateOfLastCachedVersion:v7];

  v8 = *(a1 + 48);
  obj = 0;
  v9 = [v8 _saveWithError:&obj];
  v10 = obj;
  *(*(*(a1 + 56) + 8) + 24) = v9;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
}

- (BOOL)getCachedServiceVersion:(id *)version forEventSourceService:(int64_t)service error:(id *)error
{
  if (version)
  {
    managedObjectContext = [(CLSDBCache *)self managedObjectContext];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__7241;
    v23 = __Block_byref_object_dispose__7242;
    v24 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__CLSPublicEventCache_getCachedServiceVersion_forEventSourceService_error___block_invoke;
    v13[3] = &unk_2788A8958;
    v13[4] = self;
    serviceCopy = service;
    v10 = managedObjectContext;
    v14 = v10;
    v15 = &v19;
    versionCopy = version;
    v16 = &v25;
    [v10 performBlockAndWait:v13];
    v11 = *(v26 + 24);
    if (error && (v26[3] & 1) == 0)
    {
      *error = v20[5];
      v11 = *(v26 + 24);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"CLSErrorDomain" code:-1 localizedDescription:@"getCachedServiceVersion does not accept NULL version"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __75__CLSPublicEventCache_getCachedServiceVersion_forEventSourceService_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForLatestServerVersionForEventSourceService:*(a1 + 64)];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6 = v8;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v4)
  {
    v7 = [v4 firstObject];
    **(a1 + 72) = [v7 version];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (unint64_t)eventCountForEventSourceService:(int64_t)service error:(id *)error
{
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7241;
  v19 = __Block_byref_object_dispose__7242;
  v20 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__CLSPublicEventCache_eventCountForEventSourceService_error___block_invoke;
  v10[3] = &unk_2788A8928;
  serviceCopy = service;
  v12 = &v21;
  v7 = managedObjectContext;
  v11 = v7;
  v13 = &v15;
  [v7 performBlockAndWait:v10];
  v8 = v22[3];
  if (error && v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *error = v16[5];
    v8 = v22[3];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v8;
}

void __61__CLSPublicEventCache_eventCountForEventSourceService_error___block_invoke(void *a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedPublicEvent entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"sourceService == %d", a1[7]];
  [v4 setPredicate:v5];

  [v4 setResultType:4];
  v6 = a1[4];
  obj = 0;
  v7 = [v6 countForFetchRequest:v4 error:&obj];
  v8 = obj;
  *(*(a1[5] + 8) + 24) = v7;
  objc_storeStrong((*(a1[6] + 8) + 40), v8);
}

- (id)readAllEvents
{
  v3 = [MEMORY[0x277CBEB58] set];
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__CLSPublicEventCache_readAllEvents__block_invoke;
  v10[3] = &unk_2788A8900;
  v11 = managedObjectContext;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  v6 = managedObjectContext;
  [v6 performBlockAndWait:v10];
  v7 = v13;
  v8 = v5;

  return v5;
}

void __36__CLSPublicEventCache_readAllEvents__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedQueryLocation entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = *(a1 + 32);
  v31 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v31];
  v7 = v31;
  if (v6 && [v6 count])
  {
    v20 = v7;
    v21 = v6;
    v22 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = [v13 publicEvents];
          v15 = [v14 countByEnumeratingWithState:&v23 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v24;
            do
            {
              v18 = 0;
              do
              {
                if (*v24 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(a1 + 40) publicEventFromManagedObject:*(*(&v23 + 1) + 8 * v18)];
                [*(a1 + 48) addObject:v19];

                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v23 objects:v32 count:16];
            }

            while (v16);
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v10);
    }

    v6 = v21;
    v4 = v22;
    v7 = v20;
  }
}

- (unint64_t)numberOftimeLocationTuplesForTimeLocationTuple:(id)tuple
{
  tupleCopy = tuple;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__CLSPublicEventCache_numberOftimeLocationTuplesForTimeLocationTuple___block_invoke;
  v10[3] = &unk_2788A88D8;
  v10[4] = self;
  v6 = tupleCopy;
  v11 = v6;
  v13 = &v14;
  v7 = managedObjectContext;
  v12 = v7;
  [v7 performBlockAndWait:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __70__CLSPublicEventCache_numberOftimeLocationTuplesForTimeLocationTuple___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedQueryLocation entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateForTimeLocationTuple:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 48);
  v9 = 0;
  v7 = [v6 countForFetchRequest:v4 error:&v9];
  v8 = v9;
  *(*(*(a1 + 56) + 8) + 24) = v7;
}

- (id)publicEventFromManagedObject:(id)object
{
  v57 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  performers = [objectCopy performers];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(performers, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = performers;
  v6 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [CLSPublicEventPerformer alloc];
        localizedName = [v10 localizedName];
        iTunesIdentifier = [v10 iTunesIdentifier];
        v14 = [(CLSPublicEventPerformer *)v11 initWithLocalizedName:localizedName iTunesIdentifier:iTunesIdentifier];

        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  v44 = v5;

  v45 = objectCopy;
  categories = [objectCopy categories];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(categories, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = categories;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v48;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v47 + 1) + 8 * j);
        v23 = [CLSPublicEventCategory alloc];
        category = [v22 category];
        v25 = [(CLSPublicEventCategory *)v23 initWithCategory:category];

        localizedName2 = [v22 localizedName];
        [(CLSPublicEventCategory *)v25 setLocalizedName:localizedName2];

        localizedSubcategories = [v22 localizedSubcategories];
        v28 = localizedSubcategories;
        if (localizedSubcategories)
        {
          v29 = [localizedSubcategories componentsSeparatedByString:@"_#_"];
        }

        else
        {
          v29 = 0;
        }

        [(CLSPublicEventCategory *)v25 setLocalizedSubcategories:v29];

        [v16 addObject:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v19);
  }

  v30 = objc_alloc_init(CLSPublicEvent);
  -[CLSPublicEvent setMuid:](v30, "setMuid:", [v45 muid]);
  identifier = [v45 identifier];
  [(CLSPublicEvent *)v30 setIdentifier:identifier];

  name = [v45 name];
  [(CLSPublicEvent *)v30 setName:name];

  v33 = objc_alloc(MEMORY[0x277CCA970]);
  localStartDate = [v45 localStartDate];
  localEndDate = [v45 localEndDate];
  v36 = [v33 initWithStartDate:localStartDate endDate:localEndDate];
  [(CLSPublicEvent *)v30 setLocalDateInterval:v36];

  [v45 localStartTime];
  [(CLSPublicEvent *)v30 setLocalStartTime:?];
  [v45 localEndTime];
  [(CLSPublicEvent *)v30 setLocalEndTime:?];
  timeZone = [v45 timeZone];
  [(CLSPublicEvent *)v30 setTimeZone:timeZone];

  [(CLSPublicEvent *)v30 setCategories:v16];
  [(CLSPublicEvent *)v30 setPerformers:v44];
  -[CLSPublicEvent setExpectedAttendance:](v30, "setExpectedAttendance:", [v45 expectedAttendance]);
  -[CLSPublicEvent setBusinessItemMuid:](v30, "setBusinessItemMuid:", [v45 businessItemMuid]);
  businessItemPlaceID = [v45 businessItemPlaceID];
  [(CLSPublicEvent *)v30 setBusinessItemPlaceID:businessItemPlaceID];

  [v45 businessItemLatitude];
  v40 = v39;
  [v45 businessItemLongitude];
  v42 = CLLocationCoordinate2DMake(v40, v41);
  [(CLSPublicEvent *)v30 setBusinessItemCoordinates:v42.latitude, v42.longitude];
  -[CLSPublicEvent setSourceService:](v30, "setSourceService:", [v45 sourceService]);
  -[CLSPublicEvent setSupportsEventExperience:](v30, "setSupportsEventExperience:", [v45 supportsEventExperience]);

  return v30;
}

- (id)publicEventsForTimeLocationTuple:(id)tuple
{
  tupleCopy = tuple;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7241;
  v18 = __Block_byref_object_dispose__7242;
  v19 = 0;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CLSPublicEventCache_publicEventsForTimeLocationTuple___block_invoke;
  v10[3] = &unk_2788A88D8;
  v10[4] = self;
  v6 = tupleCopy;
  v11 = v6;
  v7 = managedObjectContext;
  v12 = v7;
  v13 = &v14;
  [v7 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __56__CLSPublicEventCache_publicEventsForTimeLocationTuple___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedQueryLocation entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 32) predicateForTimeLocationTuple:*(a1 + 40)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 48);
  v35 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v35];
  v8 = v35;
  if (v7 && [v7 count])
  {
    v24 = v8;
    v26 = v4;
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * v16);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v18 = [v17 publicEvents];
          v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
            do
            {
              v22 = 0;
              do
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(a1 + 32) publicEventFromManagedObject:*(*(&v27 + 1) + 8 * v22)];
                [*(*(*(a1 + 56) + 8) + 40) addObject:v23];

                ++v22;
              }

              while (v20 != v22);
              v20 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
            }

            while (v20);
          }

          ++v16;
        }

        while (v16 != v14);
        v14 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v14);
    }

    v7 = v25;
    v4 = v26;
    v8 = v24;
  }
}

- (id)publicEventsForMuid:(unint64_t)muid
{
  v5 = [MEMORY[0x277CBEB58] set];
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__CLSPublicEventCache_publicEventsForMuid___block_invoke;
  v12[3] = &unk_2788A88B0;
  muidCopy = muid;
  v13 = managedObjectContext;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = managedObjectContext;
  [v8 performBlockAndWait:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

void __43__CLSPublicEventCache_publicEventsForMuid___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedPublicEvent entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"muid == %lu", *(a1 + 56)];
  [v4 setPredicate:v5];

  v6 = *(a1 + 32);
  v22 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v22];
  v8 = v22;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(a1 + 40) publicEventFromManagedObject:*(*(&v18 + 1) + 8 * v13)];
        [*(a1 + 48) addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v11);
  }

  if (![v9 count])
  {
    v15 = +[CLSLogging sharedLogging];
    v16 = [v15 loggingConnection];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 56);
      *buf = 134217984;
      v24 = v17;
      _os_log_error_impl(&dword_22F907000, v16, OS_LOG_TYPE_ERROR, "Didn't find event for muid %lu", buf, 0xCu);
    }
  }
}

- (void)_updateManagedEvent:(id)event withEvent:(id)withEvent inContext:(id)context
{
  v82 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  withEventCopy = withEvent;
  contextCopy = context;
  [eventCopy setMuid:{objc_msgSend(withEventCopy, "muid")}];
  identifier = [withEventCopy identifier];
  [eventCopy setIdentifier:identifier];

  name = [withEventCopy name];
  [eventCopy setName:name];

  localDateInterval = [withEventCopy localDateInterval];
  startDate = [localDateInterval startDate];
  [eventCopy setLocalStartDate:startDate];

  v59 = localDateInterval;
  endDate = [localDateInterval endDate];
  [eventCopy setLocalEndDate:endDate];

  [withEventCopy localStartTime];
  [eventCopy setLocalStartTime:?];
  [withEventCopy localEndTime];
  [eventCopy setLocalEndTime:?];
  timeZone = [withEventCopy timeZone];
  [eventCopy setTimeZoneOffset:{objc_msgSend(timeZone, "secondsFromGMT")}];

  [eventCopy setExpectedAttendance:{objc_msgSend(withEventCopy, "expectedAttendance")}];
  [eventCopy setBusinessItemMuid:{objc_msgSend(withEventCopy, "businessItemMuid")}];
  businessItemPlaceID = [withEventCopy businessItemPlaceID];
  [eventCopy setBusinessItemPlaceID:businessItemPlaceID];

  [withEventCopy businessItemCoordinates];
  [eventCopy setBusinessItemLatitude:?];
  [withEventCopy businessItemCoordinates];
  [eventCopy setBusinessItemLongitude:v17];
  [eventCopy setSourceService:{objc_msgSend(withEventCopy, "sourceService")}];
  v61 = withEventCopy;
  [eventCopy setSupportsEventExperience:{objc_msgSend(withEventCopy, "supportsEventExperience")}];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v60 = eventCopy;
  categories = [eventCopy categories];
  v19 = [categories countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v75;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v75 != v21)
        {
          objc_enumerationMutation(categories);
        }

        [contextCopy deleteObject:*(*(&v74 + 1) + 8 * i)];
      }

      v20 = [categories countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v20);
  }

  categories2 = [v61 categories];
  v24 = [categories2 count];
  v25 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v24];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v26 = categories2;
  v27 = [v26 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v71;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v71 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v70 + 1) + 8 * j);
        v32 = MEMORY[0x277CBE408];
        v33 = +[CLSManagedPublicEventCategory entityName];
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:contextCopy];

        category = [v31 category];
        [v34 setCategory:category];

        localizedName = [v31 localizedName];
        [v34 setLocalizedName:localizedName];

        localizedSubcategories = [v31 localizedSubcategories];
        if ([localizedSubcategories count])
        {
          v38 = [localizedSubcategories componentsJoinedByString:@"_#_"];
        }

        else
        {
          v38 = 0;
        }

        [v34 setLocalizedSubcategories:v38];

        [v25 addObject:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v28);
  }

  v58 = v26;

  [v60 setCategories:v25];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  performers = [v60 performers];
  v40 = [performers countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v67;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(performers);
        }

        [contextCopy deleteObject:*(*(&v66 + 1) + 8 * k)];
      }

      v41 = [performers countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v41);
  }

  performers2 = [v61 performers];
  v45 = [performers2 count];
  v46 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v45];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = performers2;
  v48 = [v47 countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v63;
    do
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v62 + 1) + 8 * m);
        v53 = MEMORY[0x277CBE408];
        v54 = +[CLSManagedPublicEventPerformer entityName];
        v55 = [v53 insertNewObjectForEntityForName:v54 inManagedObjectContext:contextCopy];

        localizedName2 = [v52 localizedName];
        [v55 setLocalizedName:localizedName2];

        iTunesIdentifier = [v52 iTunesIdentifier];
        [v55 setITunesIdentifier:iTunesIdentifier];

        [v46 addObject:v55];
      }

      v49 = [v47 countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v49);
  }

  [v60 setPerformers:v46];
}

- (BOOL)insertBatchesOfPublicEventsByTimeLocationIdentifier:(id)identifier forTimeLocationTuples:(id)tuples
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tuplesCopy = tuples;
  if (identifierCopy)
  {
    if ([identifierCopy count])
    {
      v8 = [tuplesCopy count];
      v9 = [identifierCopy count];
      if (v8 != v9)
      {
        v10 = v9;
        v11 = +[CLSLogging sharedLogging];
        loggingConnection = [v11 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = v8;
          _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "[PublicEventCache] Number of event batches (%lu) does not match number of time location tuples (%lu). Inserting partial batch.", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v26 = 0;
      managedObjectContext = [(CLSDBCache *)self managedObjectContext];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __97__CLSPublicEventCache_insertBatchesOfPublicEventsByTimeLocationIdentifier_forTimeLocationTuples___block_invoke;
      v19[3] = &unk_2788A8888;
      v20 = tuplesCopy;
      v21 = identifierCopy;
      v14 = managedObjectContext;
      v22 = v14;
      selfCopy = self;
      v24 = buf;
      [v14 performBlockAndWait:v19];
      v15 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v16 = +[CLSLogging sharedLogging];
    loggingConnection2 = [v16 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PublicEventCache] Unexpectedly have nil publicEventBatches to insert.", buf, 2u);
    }

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t __97__CLSPublicEventCache_insertBatchesOfPublicEventsByTimeLocationIdentifier_forTimeLocationTuples___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 32);
  v35 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v35)
  {
    v34 = *v46;
    *&v5 = 138477827;
    v32 = v5;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 timeLocationIdentifier];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
        if (v10)
        {
          v36 = v7;
          v38 = v9;
          v39 = v8;
          v40 = i;
          v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v10, "count")}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v37 = v10;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v42;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v42 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v41 + 1) + 8 * j);
                v18 = MEMORY[0x277CBE408];
                v19 = +[CLSManagedPublicEvent entityName];
                v20 = [v18 insertNewObjectForEntityForName:v19 inManagedObjectContext:*(a1 + 48)];

                [*(a1 + 56) _updateManagedEvent:v20 withEvent:v17 inContext:*(a1 + 48)];
                [v11 addObject:v20];
              }

              v14 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v14);
          }

          [v36 coordinates];
          v22 = v21;
          v24 = v23;
          v25 = MEMORY[0x277CBE408];
          v26 = +[CLSManagedQueryLocation entityName];
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:*(a1 + 48)];

          [v27 setUpdateTimestamp:v4];
          v28 = [v36 startDate];
          [v27 setStartDate:v28];

          v29 = [v36 endDate];
          [v27 setEndDate:v29];

          [v27 setLatitude:v22];
          [v27 setLongitude:v24];
          [v27 setPublicEvents:v11];

          v8 = v39;
          i = v40;
          v10 = v37;
          v9 = v38;
        }

        else
        {
          v30 = +[CLSLogging sharedLogging];
          v11 = [v30 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v32;
            v51 = v9;
            _os_log_impl(&dword_22F907000, v11, OS_LOG_TYPE_INFO, "[PublicEventCache] Missing resolved public events for time location tuple identifier %{private}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v8);
      }

      v35 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v35);
  }

  result = [*(a1 + 56) _save];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (id)predicateForTimeLocationTuple:(id)tuple
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v3 = MEMORY[0x277CBFBC8];
  tupleCopy = tuple;
  v5 = [v3 alloc];
  [tupleCopy coordinates];
  v7 = v6;
  v9 = v8;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [v5 initWithCenter:uUIDString radius:v7 identifier:{v9, 20.0}];

  CLSCalculateRangeCoordinateForRegion(v12, &v21, &v20, &v19, &v18);
  v13 = MEMORY[0x277CCAC30];
  startDate = [tupleCopy startDate];
  endDate = [tupleCopy endDate];

  v16 = [v13 predicateWithFormat:@"startDate >= %@ && endDate <= %@ && %f <= latitude && latitude <= %f && %f <= longitude && longitude <= %f", startDate, endDate, v21, v19, v20, v18];

  return v16;
}

- (void)invalidateCacheItemsBeforeDateWithTimestamp:(double)timestamp
{
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CLSPublicEventCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke;
  v7[3] = &unk_2788A8860;
  timestampCopy = timestamp;
  v7[4] = self;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
  [v6 performBlockAndWait:v7];
}

void __67__CLSPublicEventCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBE428];
  v3 = +[CLSManagedQueryLocation entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x277CCAC30];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v7 = [v5 predicateWithFormat:@"updateTimestamp <= %@", v6];

  [v4 setPredicate:v7];
  v8 = [*(a1 + 32) managedObjectContext];
  v32 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v32];
  v10 = v32;

  if ([v9 count])
  {
    v21 = v10;
    v23 = v7;
    v24 = v4;
    v11 = [MEMORY[0x277CBEB58] set];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__CLSPublicEventCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke_2;
    aBlock[3] = &unk_2788A8838;
    aBlock[4] = *(a1 + 32);
    v12 = _Block_copy(aBlock);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v9;
    obj = v9;
    v13 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v28;
      do
      {
        v17 = 0;
        v25 = v15;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v27 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          v20 = [v18 publicEvents];
          if (v20)
          {
            [v11 unionSet:v20];
          }

          [*(a1 + 40) deleteObject:v18];
          if (v15 >= 0x32)
          {
            v12[2](v12, *(a1 + 40), v11);
          }

          ++v15;

          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v14 != v17);
        v15 = v25 + v14;
        v14 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v14);
    }

    v12[2](v12, *(a1 + 40), v11);
    v7 = v23;
    v4 = v24;
    v10 = v21;
    v9 = v22;
  }
}

void __67__CLSPublicEventCache_invalidateCacheItemsBeforeDateWithTimestamp___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [v5 processPendingChanges];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 queryLocations];
        v14 = [v13 count];

        if (!v14)
        {
          [v5 deleteObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v7 removeAllObjects];
  [*(a1 + 32) _save];
}

@end
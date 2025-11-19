@interface CLSPublicEventManager
- (CLSPublicEventManager)initWithURL:(id)a3 analytics:(id)a4;
- (id)loadInvalidationTokensAndInvalidateCachesIfNeeded;
- (id)publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples:(id)a3 cachingOptions:(id)a4 progressBlock:(id)a5 error:(id *)a6;
- (id)urlForEventsForCacheInvalidation;
- (void)_removeEventsWithEventSourceService:(int64_t)a3;
- (void)removeEventSourcesFromCacheIfNecessary;
- (void)requestCurrentServiceVersionWithCompletionBlock:(id)a3;
- (void)saveEventsForCacheInvalidation:(id)a3;
@end

@implementation CLSPublicEventManager

- (void)requestCurrentServiceVersionWithCompletionBlock:(id)a3
{
  v3 = a3;
  v4 = +[CLSPublicEventServiceFactory publicEventServiceClient];
  [v4 serverVersionWithCompletionBlock:v3];
}

- (void)_removeEventsWithEventSourceService:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  cache = self->_cache;
  v15 = 0;
  v6 = [(CLSPublicEventCache *)cache eventCountForEventSourceService:a3 error:&v15];
  v7 = v15;
  if (v6)
  {
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = +[CLSLogging sharedLogging];
      v9 = [v8 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = @"shazam";
        if (!a3)
        {
          v10 = @"geo";
        }

        v11 = v10;
        v12 = [v7 localizedDescription];
        *buf = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_error_impl(&dword_22F907000, v9, OS_LOG_TYPE_ERROR, "PublicEventManager - invalidating caches because an error occurred during cache read of event count from %@ service: %@", buf, 0x16u);

LABEL_11:
      }
    }

    else
    {
      v13 = +[CLSLogging sharedLogging];
      v9 = [v13 loggingConnection];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"shazam";
        if (!a3)
        {
          v14 = @"geo";
        }

        v11 = v14;
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_22F907000, v9, OS_LOG_TYPE_DEFAULT, "PublicEventManager - detected events from %@ service in cache, will invalidate caches to remove these events", buf, 0xCu);
        goto LABEL_11;
      }
    }

    [(CLSPublicEventManager *)self invalidateDiskCaches];
    [(CLSPublicEventManager *)self invalidateMemoryCaches];
  }
}

- (void)removeEventSourcesFromCacheIfNecessary
{
  v3 = _os_feature_enabled_impl();
  v4 = +[CLSLogging sharedLogging];
  v5 = [v4 loggingConnection];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_22F907000, v5, OS_LOG_TYPE_DEFAULT, "PublicEventManager - configured to fetch events from Shazam event end-point", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_22F907000, v5, OS_LOG_TYPE_DEFAULT, "PublicEventManager - configured to fetch events from GEO event end-point", v8, 2u);
    }

    v7 = 1;
  }

  [(CLSPublicEventManager *)self _removeEventsWithEventSourceService:v7];
}

- (id)urlForEventsForCacheInvalidation
{
  v2 = [(CLSDBCache *)self->_cache diskCacheURL];
  v3 = [v2 URLByDeletingLastPathComponent];

  v4 = [v3 URLByAppendingPathComponent:@"eventsForCacheInvalidation.plist"];

  return v4;
}

- (id)loadInvalidationTokensAndInvalidateCachesIfNeeded
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [(CLSPublicEventManager *)self urlForEventsForCacheInvalidation];
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v44 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:0 error:&v44];
    v8 = v44;
    if (v7)
    {
      v9 = MEMORY[0x277CCAAC8];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
      v43 = v8;
      v14 = [v9 unarchivedObjectOfClasses:v13 fromData:v7 error:&v43];
      v15 = v43;

      if (v14)
      {
        v37 = v7;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v16 = [v14 objectEnumerator];
        v17 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v40;
          v20 = v15;
          v36 = v14;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v38 = v20;
              v23 = [MEMORY[0x277D0EC30] isUpdateRequiredForInvalidationToken:v22 error:&v38];
              v15 = v38;

              if (v23)
              {
                goto LABEL_26;
              }

              if (v15)
              {
                v30 = +[CLSLogging sharedLogging];
                v31 = [v30 loggingConnection];

                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v35 = [v15 localizedDescription];
                  *buf = 138412546;
                  v47 = v3;
                  v48 = 2112;
                  v49 = v35;
                  _os_log_error_impl(&dword_22F907000, v31, OS_LOG_TYPE_ERROR, "PublicEventManager - an error occurred deserializing GEOPOIEvent cache invalidation file at %@: %@", buf, 0x16u);
                }

LABEL_26:
                [(CLSDBCache *)self->_cache invalidateDiskCaches];
                [(CLSDBCache *)self->_cache invalidateMemoryCaches];
                v24 = [MEMORY[0x277CBEAC0] dictionary];

                v14 = v36;
                v7 = v37;
                goto LABEL_27;
              }

              v20 = 0;
            }

            v18 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
            v20 = 0;
            v15 = 0;
            v14 = v36;
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v24 = v14;
        v7 = v37;
      }

      else
      {
        v28 = +[CLSLogging sharedLogging];
        v29 = [v28 loggingConnection];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v34 = [v15 localizedDescription];
          *buf = 138412546;
          v47 = v3;
          v48 = 2112;
          v49 = v34;
          _os_log_error_impl(&dword_22F907000, v29, OS_LOG_TYPE_ERROR, "PublicEventManager - an error occurred deserializing GEOPOIEvent cache invalidation file at %@: %@", buf, 0x16u);
        }

        [(CLSDBCache *)self->_cache invalidateDiskCaches];
        [(CLSDBCache *)self->_cache invalidateMemoryCaches];
        v24 = [MEMORY[0x277CBEAC0] dictionary];
      }

LABEL_27:

      v8 = v15;
    }

    else
    {
      v26 = +[CLSLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v33 = [v8 localizedDescription];
        *buf = 138412546;
        v47 = v3;
        v48 = 2112;
        v49 = v33;
        _os_log_error_impl(&dword_22F907000, v27, OS_LOG_TYPE_ERROR, "PublicEventManager - an error occurred reading GEOPOIEvent cache invalidation file at %@: %@", buf, 0x16u);
      }

      [(CLSDBCache *)self->_cache invalidateDiskCaches];
      [(CLSDBCache *)self->_cache invalidateMemoryCaches];
      v24 = [MEMORY[0x277CBEAC0] dictionary];
    }
  }

  else
  {
    v25 = +[CLSLogging sharedLogging];
    v8 = [v25 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F907000, v8, OS_LOG_TYPE_INFO, "PublicEventManager - no existing public event cache invalidation token", buf, 2u);
    }

    v24 = MEMORY[0x277CBEC10];
  }

  return v24;
}

- (void)saveEventsForCacheInvalidation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = [(CLSPublicEventManager *)self urlForEventsForCacheInvalidation];
    v14 = v5;
    v7 = [v4 writeToURL:v6 options:0 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = +[CLSLogging sharedLogging];
      v10 = [v9 loggingConnection];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [v8 localizedDescription];
        *buf = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v13;
        _os_log_error_impl(&dword_22F907000, v10, OS_LOG_TYPE_ERROR, "PublicEventManager - an error occurred creating GEOPOIEvent cache invalidation file at %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = +[CLSLogging sharedLogging];
    v6 = [v11 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 localizedDescription];
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_22F907000, v6, OS_LOG_TYPE_ERROR, "PublicEventManager - an error occurred serializing GEOPOIEvent cache invalidation tokens %@", buf, 0xCu);
    }

    v8 = v5;
  }
}

- (id)publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples:(id)a3 cachingOptions:(id)a4 progressBlock:(id)a5 error:(id *)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v51 = a4;
  v11 = a5;
  v52 = v10;
  v49 = [v10 count];
  v50 = v11;
  if (!v49)
  {
    v15 = MEMORY[0x277CBEC10];
    goto LABEL_41;
  }

  v47 = a6;
  v12 = _Block_copy(v11);
  v13 = v12;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if (v12)
  {
    LOBYTE(v65) = 0;
    (*(v12 + 2))(v12, &v65, 0.0);
    v14 = *(v70 + 24) | v65;
    *(v70 + 24) = v14;
    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = 69;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v15 = MEMORY[0x277CBEC10];
      goto LABEL_40;
    }
  }

  v16 = [(CLSPublicEventManager *)self loadInvalidationTokensAndInvalidateCachesIfNeeded];
  v48 = [v16 mutableCopy];

  [(CLSPublicEventManager *)self removeEventSourcesFromCacheIfNecessary];
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v53 = [MEMORY[0x277CBEB58] set];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v19)
  {
    v20 = *v62;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v61 + 1) + 8 * i);
        v23 = [(CLSPublicEventCache *)self->_cache publicEventsForTimeLocationTuple:v22];
        if (v23)
        {
          v24 = [v22 timeLocationIdentifier];
          [v17 setObject:v23 forKeyedSubscript:v24];
        }

        else
        {
          [v53 addObject:v22];
        }

        v66[3] = 1.0 / v49 * 0.35 + v66[3];
        if (v13)
        {
          buf[0] = 0;
          (v13)[2](v13, buf);
          v25 = *(v70 + 24) | buf[0];
          *(v70 + 24) = v25;
          if (v25)
          {

            goto LABEL_23;
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v61 objects:v76 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (v13)
  {
LABEL_23:
    v60 = 0;
    (v13[2])(v13, &v60, v66[3]);
    v26 = *(v70 + 24) | v60;
    *(v70 + 24) = v26;
    if (v26)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = 96;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v15 = MEMORY[0x277CBEC10];
      goto LABEL_39;
    }
  }

  v27 = [v53 count];
  v28 = +[CLSLogging sharedLogging];
  v29 = [v28 loggingConnection];

  v30 = v49 - v27;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v49;
    *&buf[12] = 2048;
    *&buf[14] = v49 - v27;
    *&buf[22] = 2048;
    v74 = v27;
    _os_log_impl(&dword_22F907000, v29, OS_LOG_TYPE_DEFAULT, "PublicEventManager - numberOfLocationTuples: %lu, numberOfAlreadyCachedLocationTuples: %lu, numberOfTimeLocationTuplesToQuery: %lu", buf, 0x20u);
  }

  v31 = v66[3];
  v32 = +[CLSLogging sharedLogging];
  v33 = [v32 loggingConnection];

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v53 count];
    *buf = 134217984;
    *&buf[4] = v34;
    _os_log_impl(&dword_22F907000, v33, OS_LOG_TYPE_DEFAULT, "PublicEventManager -publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples, %lu time location tuples to query", buf, 0xCu);
  }

  if (v27)
  {
    v35 = [[CLSPublicEventCacheCreator alloc] initWithCache:self->_cache queryRadius:self->_analytics analytics:self->_queryRadius];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __123__CLSPublicEventManager_publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples_cachingOptions_progressBlock_error___block_invoke;
    v54[3] = &unk_2788A8288;
    v56 = &v65;
    v58 = v31;
    v59 = 1.0 - v31;
    v55 = v13;
    v57 = &v69;
    v36 = [(CLSPublicEventCacheCreator *)v35 createCacheForTimeLocationTuples:v53 cachingOptions:v51 progressBlock:v54 error:v47];
    v37 = [v36 resolvedPublicEventsByTimeLocationIdentifier];
    [v17 addEntriesFromDictionary:v37];

    v38 = [v36 invalidationTokenByTimeLocationIdentifier];
    [v48 addEntriesFromDictionary:v38];

    [(CLSPublicEventManager *)self saveEventsForCacheInvalidation:v48];
    v39 = [v36 numberOfRequests];
    v40 = [(CLSPublicEventCacheCreator *)v35 maximumBatchSize];
  }

  else
  {
    v41 = +[CLSLogging sharedLogging];
    v35 = [v41 loggingConnection];

    if (os_log_type_enabled(&v35->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F907000, &v35->super, OS_LOG_TYPE_DEFAULT, "PublicEventManager -publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples, all tuples in cache, no fetch necessary", buf, 2u);
    }

    v40 = 0;
    v39 = 0;
  }

  v42 = [v17 count];
  *buf = v49;
  *&buf[8] = v42 - v30;
  *&buf[16] = v30;
  v74 = v39;
  v75 = v40;
  CLSPrintQueryPerformerProtocolStatisticsDescription(@"CLSPublicEventQuery", buf);
  v43 = +[CLSLogging sharedLogging];
  v44 = [v43 loggingConnection];

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [v17 count];
    *buf = 134217984;
    *&buf[4] = v45;
    _os_log_impl(&dword_22F907000, v44, OS_LOG_TYPE_DEFAULT, "PublicEventManager -publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples, returning %lu events by tuple", buf, 0xCu);
  }

  v15 = v17;
LABEL_39:

  _Block_object_dispose(&v65, 8);
LABEL_40:
  _Block_object_dispose(&v69, 8);

LABEL_41:

  return v15;
}

uint64_t __123__CLSPublicEventManager_publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples_cachingOptions_progressBlock_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) + a3 * *(a1 + 64);
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, *(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 48) + 8) + 24) |= v6;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (CLSPublicEventManager)initWithURL:(id)a3 analytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CLSPublicEventManager;
  v8 = [(CLSPublicEventManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_queryRadius = 500.0;
    v10 = [CLSPublicEventCache alloc];
    v11 = [(CLSDBCache *)CLSPublicEventCache urlWithParentURL:v6];
    v12 = [(CLSDBCache *)v10 initWithURL:v11];
    cache = v9->_cache;
    v9->_cache = v12;

    objc_storeStrong(&v9->_analytics, a4);
  }

  return v9;
}

@end
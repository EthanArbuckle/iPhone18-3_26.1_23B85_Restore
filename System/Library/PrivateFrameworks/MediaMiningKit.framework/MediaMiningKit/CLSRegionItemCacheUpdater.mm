@interface CLSRegionItemCacheUpdater
- (BOOL)createCacheForRegions:(id)regions progressBlock:(id)block error:(id *)error;
- (CLSRegionItemCacheUpdater)initWithQueryPerformers:(id)performers;
@end

@implementation CLSRegionItemCacheUpdater

- (BOOL)createCacheForRegions:(id)regions progressBlock:(id)block error:(id *)error
{
  errorCopy = error;
  v112 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  blockCopy = block;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = dispatch_group_create();
  v10 = dispatch_semaphore_create(1);
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v12 = objc_alloc_init(CLSGeoServiceThread);
  [(CLSGeoServiceThread *)v12 setName:@"GeoService thread Run Loop"];
  [(CLSGeoServiceThread *)v12 start];
  [v11 addObject:v12];

  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__1034;
  v100 = __Block_byref_object_dispose__1035;
  v101 = 0;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v95 = 0;
  v13 = [regionsCopy count];
  v14 = [(NSArray *)self->_queryPerformers count];
  v15 = objc_opt_new();
  v16 = (v14 * v13);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke;
  aBlock[3] = &unk_2788A7248;
  group = v9;
  v84 = group;
  v90 = &v102;
  v51 = v10;
  v85 = v51;
  selfCopy = self;
  v53 = v15;
  v87 = v53;
  v52 = v11;
  v88 = v52;
  v56 = blockCopy;
  v89 = v56;
  v91 = v94;
  v93 = v16;
  v92 = &v96;
  v57 = _Block_copy(aBlock);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v19 = regionsCopy;
  v20 = [v19 countByEnumeratingWithState:&v79 objects:v111 count:16];
  if (v20)
  {
    v21 = *v80;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v80 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v79 + 1) + 8 * i);
        v24 = MEMORY[0x277D3ACD0];
        [v23 clsHorizontalAccuracy];
        if ([v24 horizontalAccuracyIsCoarse:?])
        {
          v25 = array2;
        }

        else
        {
          v25 = array;
        }

        [v25 addObject:v23];
      }

      v20 = [v19 countByEnumeratingWithState:&v79 objects:v111 count:16];
    }

    while (v20);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = self->_queryPerformers;
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v110 count:16];
  if (v26)
  {
    v27 = *v76;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v76 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v75 + 1) + 8 * j);
        numberOfRegionsPerBatch = [objc_opt_class() numberOfRegionsPerBatch];
        [v29 setLoggingConnection:self->_loggingConnection];
        v31 = v29;
        objc_sync_enter(v31);
        v109 = 0;
        buf = 0u;
        v108 = 0u;
        if (v31)
        {
          [v31 statistics];
        }

        *&buf = [v19 count];
        v73[0] = buf;
        v73[1] = v108;
        v74 = v109;
        [v31 setStatistics:v73];
        objc_sync_exit(v31);

        v32 = self->_loggingConnection;
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_4;
        v64[3] = &unk_2788A7298;
        v33 = v32;
        v65 = v33;
        v66 = v31;
        v71 = numberOfRegionsPerBatch;
        v67 = v57;
        v69 = &v102;
        v68 = v56;
        v70 = v94;
        v72 = v16;
        v34 = _Block_copy(v64);
        v34[2](v34, array, @"precise");
        v35 = atomic_load(v103 + 24);
        if (v35 & 1) != 0 || (v34[2](v34, array2, @"coarse"), v36 = atomic_load(v103 + 24), (v36))
        {

          goto LABEL_24;
        }

        dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      }

      v26 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v110 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  v37 = atomic_load(v103 + 24);
  if (v37)
  {
    v38 = v53;
    objc_sync_enter(v38);
    v39 = [v38 copy];
    objc_sync_exit(v38);

    [v39 enumerateObjectsUsingBlock:&__block_literal_global_1038];
    if (errorCopy)
    {
      *errorCopy = v97[5];
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v40 = v52;
  v41 = [v40 countByEnumeratingWithState:&v60 objects:v106 count:16];
  if (v41)
  {
    v42 = *v61;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(v40);
        }

        [*(*(&v60 + 1) + 8 * k) cancel];
      }

      v41 = [v40 countByEnumeratingWithState:&v60 objects:v106 count:16];
    }

    while (v41);
  }

  loggingConnection = [(CLSRegionItemCacheUpdater *)self loggingConnection];

  if (loggingConnection)
  {
    queryPerformers = self->_queryPerformers;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_2_174;
    v59[3] = &unk_2788A72E0;
    v59[4] = self;
    [(NSArray *)queryPerformers enumerateObjectsUsingBlock:v59];
  }

  v46 = CFAbsoluteTimeGetCurrent();
  loggingConnection2 = [(CLSRegionItemCacheUpdater *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v46 - Current;
    _os_log_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_INFO, "[GEO] Location Cache Creation took %.2f s", &buf, 0xCu);
  }

  v48 = v97[5] == 0;
  _Block_object_dispose(v94, 8);
  _Block_object_dispose(&v96, 8);

  _Block_object_dispose(&v102, 8);
  return v48;
}

void __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  v7 = atomic_load((*(*(a1 + 80) + 8) + 24));
  if (v7)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [objc_opt_class() queryWithTemplate:v5 forRegions:v6];
    [v8 setLoggingConnection:*(*(a1 + 48) + 16)];
    v9 = *(a1 + 56);
    objc_sync_enter(v9);
    v10 = [*(a1 + 64) lastObject];
    [*(a1 + 64) removeLastObject];
    objc_sync_exit(v9);

    v11 = [[CLSQueryHandler alloc] initWithQueryPerformer:v8 geoServiceThread:v10 loggingConnection:*(*(a1 + 48) + 16)];
    -[CLSQueryHandler setSimulatesTimeout:](v11, "setSimulatesTimeout:", [*(a1 + 48) isSimulatingTimeout]);
    [*(a1 + 48) timeoutInterval];
    [(CLSQueryHandler *)v11 setTimeoutInterval:?];
    -[CLSQueryHandler setNumberOfRetries:](v11, "setNumberOfRetries:", [*(a1 + 48) numberOfRetries]);
    v12 = *(a1 + 72);
    if (v12)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_2;
      v33[3] = &unk_2788A71F8;
      v35 = *(a1 + 88);
      v37 = *(a1 + 104);
      v13 = v12;
      v14 = *(a1 + 80);
      v34 = v13;
      v36 = v14;
      [(CLSQueryHandler *)v11 setProgressBlock:v33];
    }

    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, v11);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_3;
    v23 = &unk_2788A7220;
    objc_copyWeak(v31, &location);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v16 = v5;
    v17 = *(a1 + 80);
    v26 = v16;
    v18 = *(a1 + 96);
    v29 = v17;
    v30 = v18;
    v31[1] = *&Current;
    v27 = *(a1 + 40);
    v28 = *(a1 + 32);
    [(CLSQueryHandler *)v11 setCompletionBlock:&v20];
    v19 = *(a1 + 56);
    objc_sync_enter(v19);
    [*(a1 + 56) addObject:{v11, v20, v21, v22, v23}];
    objc_sync_exit(v19);

    [(CLSQueryHandler *)v11 cacheItems];
    objc_destroyWeak(v31);
    objc_destroyWeak(&location);
  }
}

void __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 lastObject];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 67109634;
    v28 = [v5 count];
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = objc_opt_class();
    _os_log_impl(&dword_22F907000, v11, OS_LOG_TYPE_DEFAULT, "[CLSRegionItemCacheUpdater] Starting to process %d %@ regions with %@", buf, 0x1Cu);

    v10 = *(a1 + 32);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_159;
  v17[3] = &unk_2788A7270;
  v17[4] = *(a1 + 40);
  v18 = v8;
  v25 = *(a1 + 80);
  v19 = v9;
  v20 = v7;
  v21 = v10;
  v22 = *(a1 + 48);
  v16 = *(a1 + 56);
  v12 = v16;
  v23 = v16;
  v24 = *(a1 + 72);
  v26 = *(a1 + 88);
  v13 = v7;
  v14 = v9;
  v15 = v8;
  [v5 enumerateObjectsUsingBlock:v17];
}

void __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_2_174(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v3)
  {
    [v3 statistics];
    v6 = *buf;
    v7 = *&buf[8];
    v9 = *(&v14 + 1);
    v8 = v14;
    v10 = v15;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v15 = 0;
    *buf = 0u;
    v14 = 0u;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[CLSQuery] %@ | [Locations]: %lu | [Cached Locations]: %lu | [Resolved Locations]: %lu | [Requests]: %lu | [Batch Size]: %lu", v5, v6, v8, v7, v9, v10, *buf, *&buf[8], v14, v15, v16];
  v12 = [*(a1 + 32) loggingConnection];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&dword_22F907000, v12, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }
}

void __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_159(uint64_t a1, void *a2, uint64_t a3, uint8_t *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) shouldQueryItemsForRegion:v6 selectedRegions:*(a1 + 40)])
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v34 = 0;
    memset(buf, 0, sizeof(buf));
    v9 = *(a1 + 32);
    if (v9)
    {
      [v9 statistics];
      v9 = *(a1 + 32);
      v10 = *&buf[16] + 1;
    }

    else
    {
      v10 = 1;
    }

    *&buf[16] = v10;
    *&info[0].numer = *buf;
    v31 = *&buf[16];
    v32 = v34;
    [v9 setStatistics:info];
    objc_sync_exit(v8);

LABEL_8:
    if (*(a1 + 56) != v6 || ![*(a1 + 48) count])
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  [*(a1 + 48) addObject:v6];
  [*(a1 + 40) addObject:v6];
  if ([*(a1 + 48) count] < *(a1 + 104))
  {
    goto LABEL_8;
  }

LABEL_10:
  v11 = *(a1 + 64);
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F907000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CLSRegionItemCacheUpdater", "", buf, 2u);
  }

  info[0] = 0;
  mach_timebase_info(info);
  v29 = mach_absolute_time();
  v15 = *(a1 + 72);
  v16 = *(a1 + 32);
  v17 = [*(a1 + 48) copy];
  (*(v15 + 16))(v15, v16, v17);

  v18 = mach_absolute_time();
  v19 = info[0];
  v20 = v14;
  v21 = v20;
  if (v12 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v20))
  {
    v22 = [*(a1 + 48) count];
    *buf = 67109120;
    *&buf[4] = v22;
    _os_signpost_emit_with_name_impl(&dword_22F907000, v21, OS_SIGNPOST_INTERVAL_END, v12, "CLSRegionItemCacheUpdater", "Processed batch of %d regions", buf, 8u);
  }

  v23 = v21;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Processed batch of %d regions", objc_msgSend(*(a1 + 48), "count")];
    *buf = 136315650;
    *&buf[4] = "CLSRegionItemCacheUpdater";
    *&buf[12] = 2112;
    *&buf[14] = v24;
    *&buf[22] = 2048;
    *&buf[24] = ((((v18 - v29) * v19.numer) / v19.denom) / 1000000.0);
    _os_log_impl(&dword_22F907000, v23, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  [*(a1 + 48) removeAllObjects];
  v25 = atomic_load((*(*(a1 + 88) + 8) + 24));
  *a4 = v25 & 1;

LABEL_19:
  if (*(a1 + 80))
  {
    v26 = atomic_load((*(*(a1 + 96) + 8) + 24));
    v27 = *(a1 + 112);
    buf[0] = 0;
    (*(*(a1 + 80) + 16))((v26 / v27));
    v28 = buf[0];
    atomic_store(buf[0], (*(*(a1 + 88) + 8) + 24));
    *a4 = v28;
  }

  atomic_fetch_add((*(*(a1 + 96) + 8) + 24), 1u);
  objc_autoreleasePoolPop(v7);
}

uint64_t __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_2(uint64_t a1, unsigned __int8 *a2)
{
  v4 = atomic_load((*(*(a1 + 40) + 8) + 24));
  v5 = *(a1 + 56);
  v8 = 0;
  result = (*(*(a1 + 32) + 16))((v4 / v5));
  v7 = v8;
  atomic_store(v8, (*(*(a1 + 48) + 8) + 24));
  *a2 = v7;
  return result;
}

void __71__CLSRegionItemCacheUpdater_createCacheForRegions_progressBlock_error___block_invoke_3(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = [*(a1 + 32) containsObject:WeakRetained];
    objc_sync_exit(v10);

    if (v11)
    {
      v12 = *(a1 + 32);
      objc_sync_enter(v12);
      [*(a1 + 32) removeObject:WeakRetained];
      v13 = *(a1 + 40);
      v14 = [WeakRetained geoServiceThread];
      [v13 addObject:v14];

      objc_sync_exit(v12);
      v15 = *(a1 + 48);
      objc_sync_enter(v15);
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v16 = *(a1 + 48);
      if (v16)
      {
        [v16 statistics];
        v17 = *(&v25 + 1);
        v16 = *(a1 + 48);
        v18 = *(&v26 + 1) + 1;
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }

      *(&v25 + 1) = v17 + a3;
      *(&v26 + 1) = v18;
      v23[0] = v25;
      v23[1] = v26;
      v24 = v27;
      [v16 setStatistics:v23];
      objc_sync_exit(v15);

      v19 = a2 ^ 1;
      atomic_store(v19, (*(*(a1 + 72) + 8) + 24));
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
      Current = CFAbsoluteTimeGetCurrent();
      if (v19)
      {
        [*(a1 + 48) logGeoLookupFailureResult];
      }

      else
      {
        v21 = *(a1 + 48);
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:Current - *(a1 + 96)];
        [v21 logGeoLookupCounterAndDurationWithLookupDuration:v22];
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
  dispatch_group_leave(*(a1 + 64));
}

- (CLSRegionItemCacheUpdater)initWithQueryPerformers:(id)performers
{
  performersCopy = performers;
  v11.receiver = self;
  v11.super_class = CLSRegionItemCacheUpdater;
  v6 = [(CLSRegionItemCacheUpdater *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryPerformers, performers);
    v7->_simulatesTimeout = 0;
    v7->_timeoutInterval = 20.0;
    v7->_numberOfRetries = 0;
    v8 = os_log_create("com.apple.mediaminingkit", "default");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;
  }

  return v7;
}

@end
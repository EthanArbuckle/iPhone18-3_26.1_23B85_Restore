@interface CKDPCSMemoryCache
+ (void)initialize;
+ (void)registerEvictionTimer;
+ (void)runMemoryCacheEvictionInAllCaches;
+ (void)setupMemoryNotifications;
+ (void)startEvictionTimer;
+ (void)stopEvictionTimer;
- (CKDPCSMemoryCache)init;
- (id)CKStatusReportArray;
- (unint64_t)_cacheCount;
- (void)_lockedEvictEntriesFromCache;
- (void)clearCache;
- (void)getPCSDataFromCacheForID:(id)a3 databaseScope:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)runCacheEviction;
- (void)setPCSData:(id)a3 forItemID:(id)a4 databaseScope:(int64_t)a5 withCompletionHandler:(id)a6;
@end

@implementation CKDPCSMemoryCache

- (void)_lockedEvictEntriesFromCache
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_accessQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_cacheEntries(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v11, v12);
  v14 = v13;
  objc_msgSend_minAge(self, v15, v16);
  v18 = v14 - v17;
  v19 = qword_280D583E0;
  v71 = v10;
  if (v10 > objc_msgSend_maxEntries(self, v20, v21) || v10 && v19 != 1 && (objc_msgSend_oldestCacheEntry(self, v22, v23), v24 < v18))
  {
    LODWORD(v24) = 1068708659;
    if (v19 != 4)
    {
      *&v24 = 1.0;
    }

    v25 = v19 == 2 ? 1.2 : *&v24;
    v26 = objc_msgSend_maxEntries(self, v22, v23, v24, v10);
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v27, v28);
    v30 = v29;
    objc_msgSend_minAge(self, v31, v32);
    v34 = v33;
    objc_msgSend_oldestCacheEntry(self, v35, v36);
    if (v37 != 0.0)
    {
      objc_msgSend_oldestCacheEntry(self, v22, v23);
      if (v38 < v30 + v34 * ((2.0 - v25) * -5.0))
      {
        goto LABEL_10;
      }
    }

    v10 = -(v26 - (v71 * v25));
    if (v10)
    {
LABEL_10:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v39 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v78 = v10;
        v79 = 2048;
        v80 = self;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Attempting to evict %lu items from PCS memory cache %p", buf, 0x16u);
      }

      objc_msgSend_keysSortedByValueUsingComparator_(v7, v40, &unk_28385DBC0);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v41 = v75 = 0u;
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v72, v76, 16);
      if (v43)
      {
        v45 = v43;
        v46 = 0;
        v47 = *v73;
        v48 = 1.79769313e308;
        while (2)
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v73 != v47)
            {
              objc_enumerationMutation(v41);
            }

            v50 = *(*(&v72 + 1) + 8 * i);
            v51 = objc_msgSend_objectForKey_(v7, v44, v50);
            objc_msgSend_lastAccess(v51, v52, v53);
            if (v56 < v48)
            {
              objc_msgSend_lastAccess(v51, v54, v55);
              v48 = v57;
            }

            if (v46 >= v10)
            {

              goto LABEL_33;
            }

            objc_msgSend_lastAccess(v51, v54, v55);
            if (v60 <= v18 || v71 - v46 > objc_msgSend_maxEntries(self, v58, v59))
            {
              objc_msgSend_removeObjectForKey_(v7, v58, v50);
              ++v46;
              v48 = 1.79769313e308;
            }
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v72, v76, 16);
          if (v45)
          {
            continue;
          }

          break;
        }

LABEL_33:

        if (v48 < 1.79769313e308)
        {
          objc_msgSend_setOldestCacheEntry_(self, v61, v62, v48);
        }

        if (v46)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v63 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v78 = v46;
            v79 = 2048;
            v80 = self;
            _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Evicted %lu items from PCS memory cache %p", buf, 0x16u);
          }

          v66 = objc_msgSend_memoryCacheEvictCount(self, v64, v65);
          objc_msgSend_setMemoryCacheEvictCount_(self, v67, v66 + v46);
        }
      }

      else
      {
      }
    }
  }

  if (objc_msgSend_count(v7, v22, v23, v71))
  {
    objc_msgSend_startEvictionTimer(CKDPCSMemoryCache, v68, v69);
  }

  v70 = *MEMORY[0x277D85DE8];
}

+ (void)startEvictionTimer
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if ((byte_280D583D8 & 1) == 0)
  {
    byte_280D583D8 = 1;
    dispatch_resume(qword_280D583F0);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Started PCS memory cache timer.", v4, 2u);
    }
  }

  objc_sync_exit(v2);
}

- (void)clearCache
{
  v4 = objc_msgSend_accessQueue(self, a2, v2);
  dispatch_assert_queue_not_V2(v4);

  v7 = objc_msgSend_accessQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2250A783C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v7, block);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_msgSend_setupMemoryNotifications(a1, v3, v4);

    MEMORY[0x2821F9670](a1, sel_registerEvictionTimer, v5);
  }
}

+ (void)setupMemoryNotifications
{
  qword_280D583E0 = 1;
  v2 = dispatch_get_global_queue(17, 0);
  v3 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, v2);
  v4 = qword_280D583E8;
  qword_280D583E8 = v3;

  v5 = qword_280D583E8;

  dispatch_source_set_event_handler(v5, &unk_28385DB60);
}

+ (void)runMemoryCacheEvictionInAllCaches
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Flushing all PCS memory caches", v7, 2u);
  }

  v5 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v3, v4);
  objc_msgSend_enumerateConnections_(v5, v6, &unk_28385DB80);
}

+ (void)stopEvictionTimer
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (byte_280D583D8 == 1)
  {
    byte_280D583D8 = 0;
    dispatch_suspend(qword_280D583F0);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Stopped PCS memory cache timer.", v4, 2u);
    }
  }

  objc_sync_exit(v2);
}

+ (void)registerEvictionTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B57EC;
  block[3] = &unk_278545AD0;
  block[4] = a1;
  if (qword_280D586E8 != -1)
  {
    dispatch_once(&qword_280D586E8, block);
  }
}

- (CKDPCSMemoryCache)init
{
  v20.receiver = self;
  v20.super_class = CKDPCSMemoryCache;
  v2 = [(CKDPCSMemoryCache *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cacheEntries = v2->_cacheEntries;
    v2->_cacheEntries = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cloudkit.pcs.memorycache", v5);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v6;

    v10 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v8, v9);
    v2->_maxEntries = objc_msgSend_PCSCacheSize(v10, v11, v12);

    v15 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v13, v14);
    objc_msgSend_PCSCacheMinTime(v15, v16, v17);
    v2->_minAge = v18;

    v2->_oldestCacheEntry = 0.0;
  }

  return v2;
}

- (void)getPCSDataFromCacheForID:(id)a3 databaseScope:(int64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v12 = objc_msgSend_accessQueue(self, v10, v11);
  dispatch_assert_queue_not_V2(v12);

  v15 = objc_msgSend_memoryCacheRequestCount(self, v13, v14);
  objc_msgSend_setMemoryCacheRequestCount_(self, v16, v15 + 1);
  v17 = sub_2250A0C50(v9, a4);

  v20 = objc_msgSend_accessQueue(self, v18, v19);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B5C20;
  block[3] = &unk_278546C30;
  block[4] = self;
  v24 = v17;
  v25 = v8;
  v21 = v8;
  v22 = v17;
  dispatch_async(v20, block);
}

- (void)setPCSData:(id)a3 forItemID:(id)a4 databaseScope:(int64_t)a5 withCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v15 = objc_msgSend_accessQueue(self, v13, v14);
  dispatch_assert_queue_not_V2(v15);

  v16 = sub_2250A0C50(v12, a5);

  v19 = objc_msgSend_accessQueue(self, v17, v18);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2252B5FDC;
  v23[3] = &unk_2785488E0;
  v24 = v10;
  v25 = self;
  v26 = v16;
  v27 = v11;
  v20 = v11;
  v21 = v16;
  v22 = v10;
  dispatch_async(v19, v23);
}

- (void)runCacheEviction
{
  v4 = objc_msgSend_accessQueue(self, a2, v2);
  dispatch_assert_queue_not_V2(v4);

  v7 = objc_msgSend_accessQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B6318;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v7, block);
}

- (unint64_t)_cacheCount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = objc_msgSend_accessQueue(self, a2, v2);
  dispatch_assert_queue_not_V2(v4);

  v7 = objc_msgSend_accessQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2252B640C;
  v10[3] = &unk_278546448;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)CKStatusReportArray
{
  v3 = objc_opt_new();
  v6 = objc_msgSend__cacheCount(self, v4, v5);
  v50 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_maxEntries(self, v7, v8);
  v49 = objc_msgSend_maxEntries(self, v10, v11);
  v48 = objc_msgSend_memoryCacheHighwaterCount(self, v12, v13);
  objc_msgSend_minAge(self, v14, v15);
  v17 = v16;
  objc_msgSend_oldestCacheEntry(self, v18, v19);
  v21 = v20;
  v24 = objc_msgSend_memoryCacheHitCount(self, v22, v23);
  v27 = objc_msgSend_memoryCacheRequestCount(self, v25, v26);
  v30 = objc_msgSend_memoryCacheHitCount(self, v28, v29);
  v33 = objc_msgSend_memoryCacheRequestCount(self, v31, v32);
  updated = objc_msgSend_memoryCacheUpdateCount(self, v34, v35);
  v39 = objc_msgSend_memoryCacheDeleteCount(self, v37, v38);
  v42 = objc_msgSend_memoryCacheEvictCount(self, v40, v41);
  if ((qword_280D583E0 - 1) > 3)
  {
    v44 = @"unknown";
  }

  else
  {
    v44 = off_27854C5D8[qword_280D583E0 - 1];
  }

  v45 = objc_msgSend_stringWithFormat_(v50, v43, @"[%0.2f%% full: %lu/%lu (max: %lu) (%f min, %f oldest)] [Hit rate %0.2f%% (%lu/%lu), Updates: %lu, Deletes: %lu, Evictions: %lu Memory Status: %@]", (v6 / v9) * 100.0, v6, v49, v48, v17, v21, (v24 / v27) * 100.0, v30, v33, updated, v39, v42, v44);
  objc_msgSend_addObject_(v3, v46, v45);

  return v3;
}

@end
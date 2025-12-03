@interface CKDPCSCache
- (BOOL)beginContentAccess;
- (BOOL)hasStatusToReport;
- (BOOL)isContentDiscarded;
- (CKDPCSCache)initWithDeviceContext:(id)context containerID:(id)d accountOverrideInfo:(id)info accountID:(id)iD encryptionServiceName:(id)name;
- (id)CKStatusReportArray;
- (id)_lockedGetOutstandingFetchForOperation:(id)operation options:(unint64_t)options itemIDString:(id)string;
- (void)_discardSQLCache;
- (void)_lockedAddOutstandingFetch:(id)fetch forItemIDString:(id)string databaseScope:(int64_t)scope;
- (void)_lockedCreatePCSCacheFetchOfItem:(id)item forOperation:(id)operation options:(unint64_t)options fetchCreator:(id)creator withCompletionHandler:(id)handler;
- (void)_lockedFetchPCSForItem:(id)item memoryCache:(id)cache forOperation:(id)operation options:(unint64_t)options fetchCreator:(id)creator withCompletionHandler:(id)handler;
- (void)_lockedGetSQLCacheWithCompletionHandler:(id)handler;
- (void)_lockedHandleMemoryFetchOfItem:(id)item pcsData:(id)data forOperation:(id)operation options:(unint64_t)options fetchCreator:(id)creator withCompletionHandler:(id)handler;
- (void)_lockedInvalidateAllOutstandingPCSFetchesForItemIDString:(id)string databaseScope:(int64_t)scope;
- (void)_lockedRemoveOutstandingFetch:(id)fetch forItemIDString:(id)string databaseScope:(int64_t)scope;
- (void)_setPCSData:(id)data forFetchedRecordID:(id)d withScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)_setPCSData:(id)data forFetchedShareID:(id)d withScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)_setPCSData:(id)data forFetchedZoneID:(id)d withScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)_updateMemoryCacheWithPCSData:(id)data forItemWithID:(id)d inMemoryCache:(id)cache databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)clearInvalidatedPCSSQLCacheEntriesWithSkipZonePCS:(BOOL)s completionHandler:(id)handler;
- (void)clearPCSCaches;
- (void)clearPCSMemoryCaches;
- (void)dealloc;
- (void)discardContentIfPossible;
- (void)endContentAccess;
- (void)fetchPCSForRecordWithID:(id)d forOperation:(id)operation options:(unint64_t)options withCompletionHandler:(id)handler;
- (void)fetchPCSForShareWithID:(id)d forOperation:(id)operation options:(unint64_t)options withCompletionHandler:(id)handler;
- (void)fetchPCSForZoneWithID:(id)d forOperation:(id)operation options:(unint64_t)options withCompletionHandler:(id)handler;
- (void)getSQLCache:(id)cache;
- (void)removePCSDataForItemsInShareWithID:(id)d;
- (void)removePCSDataForItemsInZoneWithID:(id)d;
- (void)runMemoryCacheEviction;
- (void)updateMemoryCacheWithRecordPCSData:(id)data forRecordWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)updateMemoryCacheWithSharePCSData:(id)data forShareWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)updateMemoryCacheWithZonePCSData:(id)data forZoneWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
@end

@implementation CKDPCSCache

- (BOOL)beginContentAccess
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_accessCount(selfCopy, v3, v4);
  objc_msgSend_setAccessCount_(selfCopy, v6, v5 + 1);
  selfCopy->_contentDiscarded = 0;
  objc_sync_exit(selfCopy);

  return 1;
}

- (void)endContentAccess
{
  obj = self;
  objc_sync_enter(obj);
  v4 = objc_msgSend_accessCount(obj, v2, v3);
  objc_msgSend_setAccessCount_(obj, v5, v4 - 1);
  objc_sync_exit(obj);
}

- (void)discardContentIfPossible
{
  obj = self;
  objc_sync_enter(obj);
  if (!objc_msgSend_accessCount(obj, v2, v3))
  {
    obj->_contentDiscarded = 1;
    objc_msgSend__discardSQLCache(obj, v4, v5);
    objc_msgSend_clearPCSMemoryCaches(obj, v6, v7);
  }

  objc_sync_exit(obj);
}

- (void)_discardSQLCache
{
  v4 = objc_msgSend_fetchQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2250A7618;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)clearPCSMemoryCaches
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Clearing memory-based PCS caches", v19, 2u);
  }

  v6 = objc_msgSend_zoneMemoryCache(self, v4, v5);
  objc_msgSend_clearCache(v6, v7, v8);

  v11 = objc_msgSend_recordMemoryCache(self, v9, v10);
  objc_msgSend_clearCache(v11, v12, v13);

  v16 = objc_msgSend_shareMemoryCache(self, v14, v15);
  objc_msgSend_clearCache(v16, v17, v18);
}

- (CKDPCSCache)initWithDeviceContext:(id)context containerID:(id)d accountOverrideInfo:(id)info accountID:(id)iD encryptionServiceName:(id)name
{
  contextCopy = context;
  dCopy = d;
  infoCopy = info;
  iDCopy = iD;
  nameCopy = name;
  v57.receiver = self;
  v57.super_class = CKDPCSCache;
  v17 = [(CKDPCSCache *)&v57 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deviceContext, context);
    objc_storeStrong(&v18->_containerID, d);
    objc_storeStrong(&v18->_accountOverrideInfo, info);
    objc_storeStrong(&v18->_accountID, iD);
    objc_storeStrong(&v18->_encryptionServiceName, name);
    v19 = MEMORY[0x277CCACA8];
    v22 = objc_msgSend_containerIdentifier(dCopy, v20, v21);
    v24 = objc_msgSend_stringWithFormat_(v19, v23, @"%@.%@", @"com.apple.CloudKit.PCSCache.fetchQueue", v22);
    v25 = v24;
    v28 = objc_msgSend_UTF8String(v25, v26, v27);
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create(v28, v29);
    fetchQueue = v18->_fetchQueue;
    v18->_fetchQueue = v30;

    dispatch_queue_set_specific(v18->_fetchQueue, "com.apple.CloudKit.PCSCache.fetchQueue", 1, 0);
    v32 = MEMORY[0x277CCACA8];
    v35 = objc_msgSend_containerIdentifier(dCopy, v33, v34);
    v37 = objc_msgSend_stringWithFormat_(v32, v36, @"%@.%@", @"com.apple.CloudKit.PCSCache.callbackQueue", v35);
    v38 = v37;
    v41 = objc_msgSend_UTF8String(v38, v39, v40);
    v42 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v43 = dispatch_queue_create(v41, v42);
    callbackQueue = v18->_callbackQueue;
    v18->_callbackQueue = v43;

    v18->_accessCount = 1;
    v45 = objc_opt_new();
    recordMemoryCache = v18->_recordMemoryCache;
    v18->_recordMemoryCache = v45;

    v47 = objc_opt_new();
    zoneMemoryCache = v18->_zoneMemoryCache;
    v18->_zoneMemoryCache = v47;

    objc_msgSend_setMinAge_(v18->_zoneMemoryCache, v49, v50, 300.0);
    v51 = objc_opt_new();
    shareMemoryCache = v18->_shareMemoryCache;
    v18->_shareMemoryCache = v51;

    v53 = objc_opt_new();
    outstandingFetches = v18->_outstandingFetches;
    v18->_outstandingFetches = v53;
  }

  return v18;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "PCS cache deallocating: %p", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CKDPCSCache;
  [(CKDPCSCache *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)runMemoryCacheEviction
{
  objc_msgSend_runCacheEviction(self->_recordMemoryCache, a2, v2);
  objc_msgSend_runCacheEviction(self->_zoneMemoryCache, v4, v5);
  shareMemoryCache = self->_shareMemoryCache;

  objc_msgSend_runCacheEviction(shareMemoryCache, v6, v7);
}

- (void)_lockedGetSQLCacheWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_msgSend_fetchQueue(self, v4, v5);
  dispatch_assert_queue_V2(v6);

  v7 = handlerCopy;
  if (handlerCopy)
  {
    sqlCache = self->_sqlCache;
    if (!sqlCache)
    {
      v9 = [CKDPCSSQLCache alloc];
      v12 = objc_msgSend_deviceContext(self, v10, v11);
      v15 = objc_msgSend_containerID(self, v13, v14);
      v18 = objc_msgSend_accountOverrideInfo(self, v16, v17);
      v21 = objc_msgSend_accountID(self, v19, v20);
      v24 = objc_msgSend_encryptionServiceName(self, v22, v23);
      v26 = objc_msgSend_initWithDeviceContext_containerID_accountOverrideInfo_accountID_encryptionServiceName_(v9, v25, v12, v15, v18, v21, v24);
      v27 = self->_sqlCache;
      self->_sqlCache = v26;

      v7 = handlerCopy;
      sqlCache = self->_sqlCache;
    }

    (v7)[2](handlerCopy, sqlCache, 0);
    v7 = handlerCopy;
  }
}

- (void)getSQLCache:(id)cache
{
  cacheCopy = cache;
  if (dispatch_get_specific("com.apple.CloudKit.PCSCache.fetchQueue"))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2252743A0;
    v9[3] = &unk_27854B6A0;
    v9[4] = self;
    v10 = cacheCopy;
    objc_msgSend__lockedGetSQLCacheWithCompletionHandler_(self, v5, v9);
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = objc_msgSend_fetchQueue(self, v6, v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252741F8;
    block[3] = &unk_278547220;
    objc_copyWeak(&v13, &location);
    v12 = cacheCopy;
    dispatch_async(v8, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_lockedHandleMemoryFetchOfItem:(id)item pcsData:(id)data forOperation:(id)operation options:(unint64_t)options fetchCreator:(id)creator withCompletionHandler:(id)handler
{
  itemCopy = item;
  dataCopy = data;
  operationCopy = operation;
  creatorCopy = creator;
  handlerCopy = handler;
  v21 = objc_msgSend_fetchQueue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252745FC;
  block[3] = &unk_27854B6C8;
  v33 = creatorCopy;
  optionsCopy = options;
  v28 = dataCopy;
  v29 = itemCopy;
  selfCopy = self;
  v31 = operationCopy;
  v32 = handlerCopy;
  v22 = creatorCopy;
  v23 = operationCopy;
  v24 = handlerCopy;
  v25 = itemCopy;
  v26 = dataCopy;
  dispatch_async(v21, block);
}

- (void)_lockedRemoveOutstandingFetch:(id)fetch forItemIDString:(id)string databaseScope:(int64_t)scope
{
  fetchCopy = fetch;
  stringCopy = string;
  v11 = objc_msgSend_fetchQueue(self, v9, v10);
  dispatch_assert_queue_V2(v11);

  if (fetchCopy)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%lu-%@", scope, stringCopy);
    v16 = objc_msgSend_outstandingFetches(self, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v13);

    if (v18)
    {
      objc_msgSend_removeObject_(v18, v19, fetchCopy);
      if (!objc_msgSend_count(v18, v20, v21))
      {
        v24 = objc_msgSend_outstandingFetches(self, v22, v23);
        objc_msgSend_removeObjectForKey_(v24, v25, v13);
      }
    }
  }
}

- (id)_lockedGetOutstandingFetchForOperation:(id)operation options:(unint64_t)options itemIDString:(id)string
{
  v39 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  stringCopy = string;
  v12 = objc_msgSend_fetchQueue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  if (stringCopy)
  {
    v15 = objc_msgSend_outstandingFetches(self, v13, v14);
    v18 = objc_msgSend_databaseScope(operationCopy, v16, v17);
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%lu-%@", v18, stringCopy);
    v22 = objc_msgSend_objectForKeyedSubscript_(v15, v21, v20);

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v22;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v34, v38, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v35;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v34 + 1) + 8 * i);
          if (objc_msgSend_canBeUsedForOperation_withOptions_(v30, v26, operationCopy, options))
          {
            v31 = v30;
            goto LABEL_12;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v34, v38, 16);
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0;
LABEL_12:
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_lockedAddOutstandingFetch:(id)fetch forItemIDString:(id)string databaseScope:(int64_t)scope
{
  fetchCopy = fetch;
  stringCopy = string;
  v11 = objc_msgSend_fetchQueue(self, v9, v10);
  dispatch_assert_queue_V2(v11);

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%lu-%@", scope, stringCopy);

  v16 = objc_msgSend_outstandingFetches(self, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v13);

  if (!v18)
  {
    v18 = objc_opt_new();
    v22 = objc_msgSend_outstandingFetches(self, v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v18, v13);
  }

  objc_msgSend_addObject_(v18, v19, fetchCopy);
}

- (void)_lockedInvalidateAllOutstandingPCSFetchesForItemIDString:(id)string databaseScope:(int64_t)scope
{
  v30 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v9 = objc_msgSend_fetchQueue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%lu-%@", scope, stringCopy);
  v14 = objc_msgSend_outstandingFetches(self, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v11);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v25, v29, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_setPcsDataInvalidated_(*(*(&v25 + 1) + 8 * v23++), v20, 1);
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v25, v29, 16);
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_lockedCreatePCSCacheFetchOfItem:(id)item forOperation:(id)operation options:(unint64_t)options fetchCreator:(id)creator withCompletionHandler:(id)handler
{
  v94 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  operationCopy = operation;
  creatorCopy = creator;
  handlerCopy = handler;
  v17 = objc_msgSend_databaseScope(operationCopy, v15, v16);
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_225074110;
  v88 = sub_225073614;
  v89 = objc_msgSend__lockedGetOutstandingFetchForOperation_options_itemIDString_(self, v18, operationCopy, options, itemCopy);
  v23 = objc_msgSend_parentOperation(operationCopy, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_operationID(v85[5], v21, v22);
    v27 = objc_msgSend_operationID(v23, v25, v26);
    isEqualToString = objc_msgSend_isEqualToString_(v24, v28, v27);
  }

  else
  {
    isEqualToString = 0;
  }

  v30 = objc_msgSend_operationID(v85[5], v21, v22);
  v33 = objc_msgSend_operationID(operationCopy, v31, v32);
  v35 = objc_msgSend_isEqualToString_(v30, v34, v33);

  v38 = v85[5];
  if (!v38 || (objc_msgSend_isPCSDataInvalidated(v38, v36, v37) & 1) != 0 || ((objc_msgSend_isCancelled(v85[5], v39, v40) | isEqualToString | v35) & 1) != 0)
  {
LABEL_13:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v54 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v91 = itemCopy;
      _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Creating a new fetch operation for %{public}@", buf, 0xCu);
    }

    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_2252757AC;
    v76[3] = &unk_27854B740;
    v79 = &v84;
    v76[4] = self;
    v77 = itemCopy;
    v80 = v17;
    v78 = handlerCopy;
    creatorCopy[2](creatorCopy, v76);

    goto LABEL_18;
  }

  v43 = objc_msgSend_parentOperation(v85[5], v41, v42);
  v46 = objc_msgSend_container(v43, v44, v45);
  v49 = objc_msgSend_fetchAggregator(v46, v47, v48);

  if (objc_msgSend_fetchRequestForExistingOperation_isDependentOnOperation_(v49, v50, v43, operationCopy))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v65 = objc_msgSend_operationID(v85[5], v52, v53);
      v68 = objc_msgSend_operationID(operationCopy, v66, v67);
      *buf = 138543618;
      v91 = v65;
      v92 = 2114;
      v93 = v68;
      v74 = v65;
      v69 = v68;
      _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Not adding callback to existing fetch operation %{public}@ for operation %{public}@ as it would create a dependency cycle", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v56 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    v70 = objc_msgSend_operationID(v85[5], v57, v58);
    v73 = objc_msgSend_operationID(operationCopy, v71, v72);
    *buf = 138543618;
    v91 = v70;
    v92 = 2114;
    v93 = v73;
    _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Adding callback to existing fetch operation %{public}@ for operation %{public}@", buf, 0x16u);
  }

  v61 = objc_msgSend_fetchGroup(v85[5], v59, v60);
  v64 = objc_msgSend_callbackQueue(self, v62, v63);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225275710;
  block[3] = &unk_27854B6F0;
  v82 = handlerCopy;
  v83 = &v84;
  dispatch_group_notify(v61, v64, block);

LABEL_18:
  _Block_object_dispose(&v84, 8);

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_lockedFetchPCSForItem:(id)item memoryCache:(id)cache forOperation:(id)operation options:(unint64_t)options fetchCreator:(id)creator withCompletionHandler:(id)handler
{
  itemCopy = item;
  cacheCopy = cache;
  operationCopy = operation;
  creatorCopy = creator;
  handlerCopy = handler;
  v21 = objc_msgSend_fetchQueue(self, v19, v20);
  dispatch_assert_queue_V2(v21);

  v24 = objc_msgSend_databaseScope(operationCopy, v22, v23);
  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_225275E48;
  v30[3] = &unk_27854B768;
  objc_copyWeak(v35, &location);
  v25 = itemCopy;
  v31 = v25;
  v26 = operationCopy;
  v32 = v26;
  v35[1] = options;
  v27 = creatorCopy;
  v33 = v27;
  v28 = handlerCopy;
  v34 = v28;
  objc_msgSend_getPCSDataFromCacheForID_databaseScope_withCompletionHandler_(cacheCopy, v29, v25, v24, v30);

  objc_destroyWeak(v35);
  objc_destroyWeak(&location);
}

- (void)fetchPCSForRecordWithID:(id)d forOperation:(id)operation options:(unint64_t)options withCompletionHandler:(id)handler
{
  dCopy = d;
  operationCopy = operation;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDPCSCache.m", 329, @"Invalid record ID: %@", dCopy);
  }

  v16 = options | 0x800;
  v17 = objc_msgSend_fetchQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225276024;
  block[3] = &unk_27854B7B8;
  v24 = dCopy;
  v25 = operationCopy;
  v27 = handlerCopy;
  v28 = v16;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = operationCopy;
  v20 = dCopy;
  dispatch_async(v17, block);
}

- (void)fetchPCSForZoneWithID:(id)d forOperation:(id)operation options:(unint64_t)options withCompletionHandler:(id)handler
{
  dCopy = d;
  operationCopy = operation;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDPCSCache.m", 351, @"Invalid zone ID: %@", dCopy);
  }

  v16 = options | 0x400;
  v17 = objc_msgSend_fetchQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225276450;
  block[3] = &unk_27854B7B8;
  v24 = dCopy;
  v25 = operationCopy;
  v27 = handlerCopy;
  v28 = v16;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = operationCopy;
  v20 = dCopy;
  dispatch_async(v17, block);
}

- (void)fetchPCSForShareWithID:(id)d forOperation:(id)operation options:(unint64_t)options withCompletionHandler:(id)handler
{
  dCopy = d;
  operationCopy = operation;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDPCSCache.m", 375, @"Invalid share ID: %@", dCopy);
  }

  v16 = options | 0x1000;
  v17 = objc_msgSend_fetchQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22527687C;
  block[3] = &unk_27854B7B8;
  v24 = dCopy;
  v25 = operationCopy;
  v27 = handlerCopy;
  v28 = v16;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = operationCopy;
  v20 = dCopy;
  dispatch_async(v17, block);
}

- (void)_setPCSData:(id)data forFetchedRecordID:(id)d withScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v23, a2, self, @"CKDPCSCache.m", 401, @"PCS data is of the wrong class: %@", v22);
    }
  }

  v16 = objc_msgSend_fetchQueue(self, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225276CC4;
  block[3] = &unk_27854B7B8;
  v25 = dCopy;
  v26 = dataCopy;
  v28 = handlerCopy;
  scopeCopy = scope;
  selfCopy = self;
  v17 = handlerCopy;
  v18 = dataCopy;
  v19 = dCopy;
  dispatch_async(v16, block);
}

- (void)_setPCSData:(id)data forFetchedZoneID:(id)d withScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v23, a2, self, @"CKDPCSCache.m", 440, @"PCS data is of the wrong class: %@", v22);
    }
  }

  v16 = objc_msgSend_fetchQueue(self, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22527733C;
  block[3] = &unk_27854B7B8;
  v25 = dCopy;
  v26 = dataCopy;
  v28 = handlerCopy;
  scopeCopy = scope;
  selfCopy = self;
  v17 = handlerCopy;
  v18 = dataCopy;
  v19 = dCopy;
  dispatch_async(v16, block);
}

- (void)_setPCSData:(id)data forFetchedShareID:(id)d withScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v23, a2, self, @"CKDPCSCache.m", 479, @"PCS data is of the wrong class: %@", v22);
    }
  }

  v16 = objc_msgSend_fetchQueue(self, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252779E4;
  block[3] = &unk_27854B7B8;
  v25 = dCopy;
  v26 = dataCopy;
  v28 = handlerCopy;
  scopeCopy = scope;
  selfCopy = self;
  v17 = handlerCopy;
  v18 = dataCopy;
  v19 = dCopy;
  dispatch_async(v16, block);
}

- (void)_updateMemoryCacheWithPCSData:(id)data forItemWithID:(id)d inMemoryCache:(id)cache databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cacheCopy = cache;
  dataCopy = data;
  v17 = objc_msgSend_sqliteRepresentation(d, v14, v15);
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(cacheCopy, v16, dataCopy, v17, scope, handlerCopy);
}

- (void)updateMemoryCacheWithZonePCSData:(id)data forZoneWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v20, a2, self, @"CKDPCSCache.m", 524, @"PCS data is of the wrong class: %@", v19);
    }
  }

  v15 = objc_msgSend_zoneMemoryCache(self, v12, v13);
  objc_msgSend__updateMemoryCacheWithPCSData_forItemWithID_inMemoryCache_databaseScope_withCompletionHandler_(self, v16, dataCopy, dCopy, v15, scope, handlerCopy);
}

- (void)updateMemoryCacheWithRecordPCSData:(id)data forRecordWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v20, a2, self, @"CKDPCSCache.m", 529, @"PCS data is of the wrong class: %@", v19);
    }
  }

  v15 = objc_msgSend_recordMemoryCache(self, v12, v13);
  objc_msgSend__updateMemoryCacheWithPCSData_forItemWithID_inMemoryCache_databaseScope_withCompletionHandler_(self, v16, dataCopy, dCopy, v15, scope, handlerCopy);
}

- (void)updateMemoryCacheWithSharePCSData:(id)data forShareWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v20, a2, self, @"CKDPCSCache.m", 534, @"PCS data is of the wrong class: %@", v19);
    }
  }

  v15 = objc_msgSend_shareMemoryCache(self, v12, v13);
  objc_msgSend__updateMemoryCacheWithPCSData_forItemWithID_inMemoryCache_databaseScope_withCompletionHandler_(self, v16, dataCopy, dCopy, v15, scope, handlerCopy);
}

- (void)removePCSDataForItemsInZoneWithID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_fetchQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22527840C;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(v7, v9);
}

- (void)removePCSDataForItemsInShareWithID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_fetchQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22527860C;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(v7, v9);
}

- (BOOL)hasStatusToReport
{
  v4 = objc_msgSend_zoneMemoryCache(self, a2, v2);
  if (objc_msgSend_hasStatusToReport(v4, v5, v6))
  {
    hasStatusToReport = 1;
  }

  else
  {
    v10 = objc_msgSend_recordMemoryCache(self, v7, v8);
    if (objc_msgSend_hasStatusToReport(v10, v11, v12))
    {
      hasStatusToReport = 1;
    }

    else
    {
      v15 = objc_msgSend_shareMemoryCache(self, v13, v14);
      if (objc_msgSend_hasStatusToReport(v15, v16, v17))
      {
        hasStatusToReport = 1;
      }

      else
      {
        hasStatusToReport = objc_msgSend_hasStatusToReport(self->_sqlCache, v18, v19);
      }
    }
  }

  return hasStatusToReport;
}

- (id)CKStatusReportArray
{
  v3 = objc_opt_new();
  v4 = self->_sqlCache;
  v7 = objc_msgSend_fetchQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252788E4;
  block[3] = &unk_278546990;
  block[4] = self;
  v8 = v3;
  v14 = v8;
  v15 = v4;
  v9 = v4;
  dispatch_sync(v7, block);

  v10 = v15;
  v11 = v8;

  return v8;
}

- (BOOL)isContentDiscarded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  contentDiscarded = selfCopy->_contentDiscarded;
  objc_sync_exit(selfCopy);

  return contentDiscarded;
}

- (void)clearPCSCaches
{
  v4 = objc_msgSend_fetchQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225278DA0;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)clearInvalidatedPCSSQLCacheEntriesWithSkipZonePCS:(BOOL)s completionHandler:(id)handler
{
  sCopy = s;
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v11 = @"NO";
    if (sCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v16 = v11;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Clearing invalidated PCS SQL cache entries. Skipping zone pcs: %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2252790B4;
  v12[3] = &unk_27854B858;
  v14 = sCopy;
  v13 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_getSQLCache_(self, v9, v12);

  v10 = *MEMORY[0x277D85DE8];
}

@end
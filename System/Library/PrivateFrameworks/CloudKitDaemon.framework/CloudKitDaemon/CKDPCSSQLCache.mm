@interface CKDPCSSQLCache
+ (void)evictPCSSQLCachesForKnownContainers;
- (CKDPCSSQLCache)initWithDeviceContext:(id)context containerID:(id)d accountOverrideInfo:(id)info accountID:(id)iD encryptionServiceName:(id)name;
- (id)CKStatusReportArray;
- (id)_lockedFetchPCSDataForID:(id)d databaseScope:(int64_t)scope itemType:(unint64_t)type;
- (void)_lockedSetPCSData:(id)data databaseScope:(int64_t)scope itemType:(unint64_t)type forID:(id)d;
- (void)_setPCSData:(id)data forItemWithID:(id)d databaseScope:(int64_t)scope itemType:(unint64_t)type withCompletionHandler:(id)handler;
- (void)clearCache;
- (void)clearInvalidatedCacheEntriesWithSkipZonePCS:(BOOL)s completionHandler:(id)handler;
- (void)fetchPCSDataForRecordWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)fetchPCSDataForShareWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)fetchPCSDataForZoneWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler;
- (void)removePCSDataForItemsInShareWithID:(id)d withCompletionHandler:(id)handler;
- (void)removePCSDataForItemsInZoneWithID:(id)d withCompletionHandler:(id)handler;
@end

@implementation CKDPCSSQLCache

+ (void)evictPCSSQLCachesForKnownContainers
{
  v7 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, a2, v2);
  v5 = objc_msgSend_deviceScopedDatabase(v7, v3, v4);
  objc_msgSend_enumerateGroupsInDatabase_block_(CKDPCSSQLCacheTableGroup, v6, v5, &unk_28385DC60);
}

- (CKDPCSSQLCache)initWithDeviceContext:(id)context containerID:(id)d accountOverrideInfo:(id)info accountID:(id)iD encryptionServiceName:(id)name
{
  contextCopy = context;
  dCopy = d;
  infoCopy = info;
  iDCopy = iD;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = CKDPCSSQLCache;
  v17 = [(CKDPCSSQLCache *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_containerID, d);
    objc_storeStrong(&v18->_accountID, iD);
    objc_storeStrong(&v18->_encryptionServiceName, name);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("PCSSQLCache", v19);
    asyncQueue = v18->_asyncQueue;
    v18->_asyncQueue = v20;

    v23 = objc_msgSend_groupNameForContainerID_accountOverrideInfo_(CKDPCSSQLCacheTableGroup, v22, dCopy, infoCopy);
    v24 = v18->_asyncQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2252BA61C;
    v27[3] = &unk_2785463D0;
    v28 = contextCopy;
    v29 = dCopy;
    v30 = v23;
    v31 = v18;
    v25 = v23;
    dispatch_async(v24, v27);
  }

  return v18;
}

- (id)_lockedFetchPCSDataForID:(id)d databaseScope:(int64_t)scope itemType:(unint64_t)type
{
  atomic_fetch_add_explicit(&self->_cacheRequestCount, 1u, memory_order_relaxed);
  result = objc_msgSend_PCSDataForID_databaseScope_itemType_accountID_serviceName_(self->_table, a2, d, scope, type, self->_accountID, self->_encryptionServiceName);
  if (result)
  {
    atomic_fetch_add_explicit(&self->_cacheHitCount, 1u, memory_order_relaxed);
  }

  return result;
}

- (void)fetchPCSDataForRecordWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252BA8CC;
  v13[3] = &unk_278547EB0;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  scopeCopy = scope;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(asyncQueue, v13);
}

- (void)fetchPCSDataForZoneWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252BAA24;
  v13[3] = &unk_278547EB0;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  scopeCopy = scope;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(asyncQueue, v13);
}

- (void)fetchPCSDataForShareWithID:(id)d databaseScope:(int64_t)scope withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252BAB7C;
  v13[3] = &unk_278547EB0;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  scopeCopy = scope;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(asyncQueue, v13);
}

- (void)_lockedSetPCSData:(id)data databaseScope:(int64_t)scope itemType:(unint64_t)type forID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if (!dataCopy)
  {
    table = self->_table;
    v13 = objc_msgSend_sqliteRepresentation(dCopy, v10, v11);
    v27 = objc_msgSend_deletePCSDataForID_databaseScope_itemType_accountID_serviceName_(table, v26, v13, scope, type, self->_accountID, self->_encryptionServiceName);
    goto LABEL_14;
  }

  v13 = objc_alloc_init(CKDPCSSQLCacheEntry);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_msgSend_zoneID(dataCopy, v28, v29);
      if (objc_msgSend_specialContainerType(self->_containerID, v30, v31) != 5)
      {
LABEL_11:
        v24 = 0;
        v19 = 0;
        goto LABEL_13;
      }

      v32 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v22, v23, 1209600.0);
      objc_msgSend_setExpirationDate_(v13, v33, v32);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = 0;
        v19 = 0;
        v16 = 0;
        goto LABEL_13;
      }

      v32 = objc_msgSend_shareID(dataCopy, v22, v23);
      v16 = objc_msgSend_zoneID(v32, v34, v35);
    }

    goto LABEL_11;
  }

  v16 = objc_msgSend_zoneID(dataCopy, v14, v15);
  v19 = objc_msgSend_shareID(dataCopy, v17, v18);
  v24 = objc_msgSend_parentID(dataCopy, v20, v21);
LABEL_13:
  v36 = objc_msgSend_sqliteRepresentation(dCopy, v22, v23);
  objc_msgSend_setIdentifier_(v13, v37, v36);

  v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v38, scope);
  objc_msgSend_setDatabaseScope_(v13, v40, v39);

  v42 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v41, type);
  objc_msgSend_setItemType_(v13, v43, v42);

  objc_msgSend_setCKDPCSData_(v13, v44, dataCopy);
  objc_msgSend_setAccountID_(v13, v45, self->_accountID);
  objc_msgSend_setServiceName_(v13, v46, self->_encryptionServiceName);
  v49 = objc_msgSend_sqliteRepresentation(v16, v47, v48);
  objc_msgSend_setZoneID_(v13, v50, v49);

  v53 = objc_msgSend_sqliteRepresentation(v19, v51, v52);
  objc_msgSend_setShareID_(v13, v54, v53);

  v57 = objc_msgSend_sqliteRepresentation(v24, v55, v56);
  objc_msgSend_setParentID_(v13, v58, v57);

  v60 = objc_msgSend_insertObject_orUpdateProperties_label_(self->_table, v59, v13, 0, off_27D71A840);
LABEL_14:
}

- (void)_setPCSData:(id)data forItemWithID:(id)d databaseScope:(int64_t)scope itemType:(unint64_t)type withCompletionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2252BAFFC;
  v19[3] = &unk_27854C620;
  v19[4] = self;
  v20 = dataCopy;
  scopeCopy = scope;
  typeCopy = type;
  v21 = dCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = dCopy;
  v18 = dataCopy;
  dispatch_barrier_async(asyncQueue, v19);
}

- (void)removePCSDataForItemsInZoneWithID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252BB144;
  block[3] = &unk_278546C30;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_barrier_async(asyncQueue, block);
}

- (void)removePCSDataForItemsInShareWithID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252BB2A0;
  block[3] = &unk_278546C30;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_barrier_async(asyncQueue, block);
}

- (void)clearCache
{
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252BB414;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_barrier_async(asyncQueue, block);
}

- (void)clearInvalidatedCacheEntriesWithSkipZonePCS:(BOOL)s completionHandler:(id)handler
{
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252BB4BC;
  block[3] = &unk_2785456A0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_barrier_async(asyncQueue, block);
}

- (id)CKStatusReportArray
{
  v4 = objc_opt_new();
  cacheRequestCount = self->_cacheRequestCount;
  if (cacheRequestCount)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"[Hit rate %0.2f%% (%lu/%lu)]", (self->_cacheHitCount / cacheRequestCount) * 100.0, self->_cacheHitCount, cacheRequestCount);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"[Hit rate %0.2f%% (%lu/%lu)]", 0, self->_cacheHitCount, cacheRequestCount);
  }
  v6 = ;
  objc_msgSend_addObject_(v4, v7, v6);

  return v4;
}

@end
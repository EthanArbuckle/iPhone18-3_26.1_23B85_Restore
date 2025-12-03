@interface CKDShareIDCache
+ (id)_caches;
+ (id)cacheForContainer:(id)container;
+ (id)cacheForTestingWithIdentifier:(id)identifier;
+ (void)dropCacheConnectionForContainer:(id)container;
- (CKDShareIDCache)init;
- (id)initInternalForTestingWithIdentifier:(id)identifier error:(id *)error;
- (id)initInternalWithContainer:(id)container error:(id *)error;
- (id)knownShareIDsForZoneID:(id)d;
- (id)shareIDForRecordID:(id)d;
- (id)zoneShareIDForZoneID:(id)d;
- (void)addRecord:(id)record;
- (void)addRecordID:(id)d withParentID:(id)iD;
- (void)addShare:(id)share;
- (void)addZoneShare:(id)share;
- (void)removeRecordID:(id)d;
- (void)removeShareID:(id)d;
- (void)removeZone:(id)zone;
- (void)removeZoneShare:(id)share;
- (void)setShareID:(id)d forRecordID:(id)iD;
@end

@implementation CKDShareIDCache

+ (id)_caches
{
  if (qword_280D58100 != -1)
  {
    dispatch_once(&qword_280D58100, &unk_28385C840);
  }

  v3 = qword_280D580F8;

  return v3;
}

+ (id)cacheForContainer:(id)container
{
  v32 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v5 = sub_225081F2C(containerCopy);
  v8 = objc_msgSend__caches(self, v6, v7);
  objc_sync_enter(v8);
  v11 = objc_msgSend__caches(self, v9, v10);
  inited = objc_msgSend_objectForKeyedSubscript_(v11, v12, v5);

  if (!inited)
  {
    v14 = [CKDShareIDCache alloc];
    v27 = 0;
    inited = objc_msgSend_initInternalWithContainer_error_(v14, v15, containerCopy, &v27);
    v16 = v27;
    v19 = v16;
    if (!inited || v16)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_msgSend_containerID(containerCopy, v22, v23);
        *buf = 138412546;
        v29 = v26;
        v30 = 2112;
        v31 = v19;
        _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Cannot initialize share ID SQL cache for container with ID %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = objc_msgSend__caches(self, v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v19, v20, inited, v5);
    }
  }

  objc_sync_exit(v8);

  v24 = *MEMORY[0x277D85DE8];

  return inited;
}

+ (id)cacheForTestingWithIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = objc_msgSend__caches(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend__caches(self, v8, v9);
  inited = objc_msgSend_objectForKeyedSubscript_(v10, v11, identifierCopy);

  if (!inited)
  {
    v13 = [CKDShareIDCache alloc];
    v23 = 0;
    inited = objc_msgSend_initInternalForTestingWithIdentifier_error_(v13, v14, identifierCopy, &v23);
    v15 = v23;
    v18 = v15;
    if (!inited || v15)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = identifierCopy;
        _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Cannot initialize testing share ID SQL cache with identifier: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = objc_msgSend__caches(self, v16, v17);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v19, inited, identifierCopy);
    }
  }

  objc_sync_exit(v7);

  v21 = *MEMORY[0x277D85DE8];

  return inited;
}

+ (void)dropCacheConnectionForContainer:(id)container
{
  v29 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v7 = containerCopy;
  if (containerCopy && objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v5, v6))
  {
    v8 = sub_225081F2C(v7);
    v11 = objc_msgSend_containerID(v7, v9, v10);
    v14 = objc_msgSend__caches(self, v12, v13);
    objc_sync_enter(v14);
    v15 = objc_autoreleasePoolPush();
    v18 = objc_msgSend__caches(self, v16, v17);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v8);

    if (v20)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v27 = 138412290;
        v28 = v11;
        _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Dropping shareID cache connection for container with ID: %@", &v27, 0xCu);
      }

      v24 = objc_msgSend__caches(self, v22, v23);
      objc_msgSend_removeObjectForKey_(v24, v25, v8);
    }

    objc_autoreleasePoolPop(v15);
    objc_sync_exit(v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (CKDShareIDCache)init
{
  v2 = objc_alloc(MEMORY[0x277CBC360]);
  v4 = objc_msgSend_initWithCode_format_(v2, v3, 12, @"Use +[CKDShareIDCache cacheForContainer] instead");
  objc_exception_throw(v4);
}

- (id)initInternalWithContainer:(id)container error:(id *)error
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = CKDShareIDCache;
  v8 = [(CKDShareIDCache *)&v13 init];
  if (v8 && (objc_msgSend_shareIDSQLCacheForContainer_error_(CKDShareIDSQLCache, v7, containerCopy, error), v9 = objc_claimAutoreleasedReturnValue(), cache = v8->_cache, v8->_cache = v9, cache, v8->_cache) && (!error || !*error))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initInternalForTestingWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CKDShareIDCache;
  v8 = [(CKDShareIDCache *)&v13 init];
  if (v8 && (objc_msgSend_shareIDSQLCacheForTestingWithIdentifier_error_(CKDShareIDSQLCache, v7, identifierCopy, error), v9 = objc_claimAutoreleasedReturnValue(), cache = v8->_cache, v8->_cache = v9, cache, v8->_cache) && (!error || !*error))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addShare:(id)share
{
  v19 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  if (objc_msgSend_isZoneWideShare(shareCopy, v5, v6))
  {
    v9 = objc_msgSend_recordID(shareCopy, v7, v8);
    objc_msgSend_addZoneShare_(self, v10, v9);
  }

  else
  {
    v9 = objc_msgSend_rootRecordID(shareCopy, v7, v8);
    if (v9)
    {
      v13 = objc_msgSend_recordID(shareCopy, v11, v12);
      objc_msgSend_setShareID_forRecordID_(self, v14, v13, v9);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = shareCopy;
        _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Warn: Unknown share type. Share is neither a zone share nor a record share: %@", &v17, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addRecord:(id)record
{
  recordCopy = record;
  v6 = objc_msgSend_recordID(recordCopy, v4, v5);
  v8 = objc_msgSend_shareIDForRecordID_(self, v7, v6);

  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_addShare_(self, v9, recordCopy);
    }

    else
    {
      v11 = objc_msgSend_share(recordCopy, v9, v10);

      if (v11)
      {
        v14 = objc_msgSend_share(recordCopy, v12, v13);
        v17 = objc_msgSend_recordID(v14, v15, v16);
        objc_msgSend_setShareID_forRecordID_(self, v18, v17, v6);
      }

      else
      {
        v19 = objc_msgSend_parent(recordCopy, v12, v13);
        v14 = objc_msgSend_recordID(v19, v20, v21);

        if (v14)
        {
          objc_msgSend_addRecordID_withParentID_(self, v22, v6, v14);
        }
      }
    }
  }
}

- (void)addRecordID:(id)d withParentID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_cache(selfCopy, v8, v9);
  objc_msgSend_addOrUpdateRecordID_withParentID_(v10, v11, dCopy, iDCopy);

  objc_sync_exit(selfCopy);
}

- (void)addZoneShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_cache(selfCopy, v5, v6);
  objc_msgSend_addZoneShareID_(v7, v8, shareCopy);

  objc_sync_exit(selfCopy);
}

- (void)removeZoneShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_cache(selfCopy, v5, v6);
  objc_msgSend_removeZoneShareForZoneID_(v7, v8, shareCopy);

  objc_sync_exit(selfCopy);
}

- (void)removeZone:(id)zone
{
  zoneCopy = zone;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_cache(selfCopy, v5, v6);
  objc_msgSend_removeZoneWithID_(v7, v8, zoneCopy);

  objc_sync_exit(selfCopy);
}

- (id)zoneShareIDForZoneID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_cache(selfCopy, v6, v7);
  v10 = objc_msgSend_zoneShareIDForZoneID_(v8, v9, dCopy);

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)knownShareIDsForZoneID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_cache(selfCopy, v6, v7);
  v10 = objc_msgSend_shareIDsForZoneID_(v8, v9, dCopy);

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)shareIDForRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_cache(selfCopy, v6, v7);
  v10 = objc_msgSend_shareIDForRecordID_(v8, v9, dCopy);

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)setShareID:(id)d forRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!dCopy || !iDCopy)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDShareIDCache.m", 203, @"shareID must not be nil");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = objc_msgSend_cache(selfCopy, v11, v12);
  objc_msgSend_addHierarchicalShareID_forRootRecordID_(v13, v14, dCopy, iDCopy);

  objc_sync_exit(selfCopy);
}

- (void)removeShareID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_cache(selfCopy, v5, v6);
  objc_msgSend_removeShareID_(v7, v8, dCopy);

  objc_sync_exit(selfCopy);
}

- (void)removeRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_cache(selfCopy, v5, v6);
  objc_msgSend_removeRecordID_(v7, v8, dCopy);

  objc_sync_exit(selfCopy);
}

@end
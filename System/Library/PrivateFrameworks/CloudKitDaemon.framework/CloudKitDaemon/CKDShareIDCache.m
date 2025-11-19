@interface CKDShareIDCache
+ (id)_caches;
+ (id)cacheForContainer:(id)a3;
+ (id)cacheForTestingWithIdentifier:(id)a3;
+ (void)dropCacheConnectionForContainer:(id)a3;
- (CKDShareIDCache)init;
- (id)initInternalForTestingWithIdentifier:(id)a3 error:(id *)a4;
- (id)initInternalWithContainer:(id)a3 error:(id *)a4;
- (id)knownShareIDsForZoneID:(id)a3;
- (id)shareIDForRecordID:(id)a3;
- (id)zoneShareIDForZoneID:(id)a3;
- (void)addRecord:(id)a3;
- (void)addRecordID:(id)a3 withParentID:(id)a4;
- (void)addShare:(id)a3;
- (void)addZoneShare:(id)a3;
- (void)removeRecordID:(id)a3;
- (void)removeShareID:(id)a3;
- (void)removeZone:(id)a3;
- (void)removeZoneShare:(id)a3;
- (void)setShareID:(id)a3 forRecordID:(id)a4;
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

+ (id)cacheForContainer:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_225081F2C(v4);
  v8 = objc_msgSend__caches(a1, v6, v7);
  objc_sync_enter(v8);
  v11 = objc_msgSend__caches(a1, v9, v10);
  inited = objc_msgSend_objectForKeyedSubscript_(v11, v12, v5);

  if (!inited)
  {
    v14 = [CKDShareIDCache alloc];
    v27 = 0;
    inited = objc_msgSend_initInternalWithContainer_error_(v14, v15, v4, &v27);
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
        v26 = objc_msgSend_containerID(v4, v22, v23);
        *buf = 138412546;
        v29 = v26;
        v30 = 2112;
        v31 = v19;
        _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Cannot initialize share ID SQL cache for container with ID %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v19 = objc_msgSend__caches(a1, v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v19, v20, inited, v5);
    }
  }

  objc_sync_exit(v8);

  v24 = *MEMORY[0x277D85DE8];

  return inited;
}

+ (id)cacheForTestingWithIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend__caches(a1, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend__caches(a1, v8, v9);
  inited = objc_msgSend_objectForKeyedSubscript_(v10, v11, v4);

  if (!inited)
  {
    v13 = [CKDShareIDCache alloc];
    v23 = 0;
    inited = objc_msgSend_initInternalForTestingWithIdentifier_error_(v13, v14, v4, &v23);
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
        v25 = v4;
        _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Cannot initialize testing share ID SQL cache with identifier: %@", buf, 0xCu);
      }
    }

    else
    {
      v18 = objc_msgSend__caches(a1, v16, v17);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v19, inited, v4);
    }
  }

  objc_sync_exit(v7);

  v21 = *MEMORY[0x277D85DE8];

  return inited;
}

+ (void)dropCacheConnectionForContainer:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (v4 && objc_msgSend_allowsDeviceCapabilitiesReporting(v4, v5, v6))
  {
    v8 = sub_225081F2C(v7);
    v11 = objc_msgSend_containerID(v7, v9, v10);
    v14 = objc_msgSend__caches(a1, v12, v13);
    objc_sync_enter(v14);
    v15 = objc_autoreleasePoolPush();
    v18 = objc_msgSend__caches(a1, v16, v17);
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

      v24 = objc_msgSend__caches(a1, v22, v23);
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

- (id)initInternalWithContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDShareIDCache;
  v8 = [(CKDShareIDCache *)&v13 init];
  if (v8 && (objc_msgSend_shareIDSQLCacheForContainer_error_(CKDShareIDSQLCache, v7, v6, a4), v9 = objc_claimAutoreleasedReturnValue(), cache = v8->_cache, v8->_cache = v9, cache, v8->_cache) && (!a4 || !*a4))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)initInternalForTestingWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDShareIDCache;
  v8 = [(CKDShareIDCache *)&v13 init];
  if (v8 && (objc_msgSend_shareIDSQLCacheForTestingWithIdentifier_error_(CKDShareIDSQLCache, v7, v6, a4), v9 = objc_claimAutoreleasedReturnValue(), cache = v8->_cache, v8->_cache = v9, cache, v8->_cache) && (!a4 || !*a4))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addShare:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_isZoneWideShare(v4, v5, v6))
  {
    v9 = objc_msgSend_recordID(v4, v7, v8);
    objc_msgSend_addZoneShare_(self, v10, v9);
  }

  else
  {
    v9 = objc_msgSend_rootRecordID(v4, v7, v8);
    if (v9)
    {
      v13 = objc_msgSend_recordID(v4, v11, v12);
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
        v18 = v4;
        _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Warn: Unknown share type. Share is neither a zone share nor a record share: %@", &v17, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addRecord:(id)a3
{
  v23 = a3;
  v6 = objc_msgSend_recordID(v23, v4, v5);
  v8 = objc_msgSend_shareIDForRecordID_(self, v7, v6);

  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_addShare_(self, v9, v23);
    }

    else
    {
      v11 = objc_msgSend_share(v23, v9, v10);

      if (v11)
      {
        v14 = objc_msgSend_share(v23, v12, v13);
        v17 = objc_msgSend_recordID(v14, v15, v16);
        objc_msgSend_setShareID_forRecordID_(self, v18, v17, v6);
      }

      else
      {
        v19 = objc_msgSend_parent(v23, v12, v13);
        v14 = objc_msgSend_recordID(v19, v20, v21);

        if (v14)
        {
          objc_msgSend_addRecordID_withParentID_(self, v22, v6, v14);
        }
      }
    }
  }
}

- (void)addRecordID:(id)a3 withParentID:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v10 = objc_msgSend_cache(v7, v8, v9);
  objc_msgSend_addOrUpdateRecordID_withParentID_(v10, v11, v12, v6);

  objc_sync_exit(v7);
}

- (void)addZoneShare:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_cache(v4, v5, v6);
  objc_msgSend_addZoneShareID_(v7, v8, v9);

  objc_sync_exit(v4);
}

- (void)removeZoneShare:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_cache(v4, v5, v6);
  objc_msgSend_removeZoneShareForZoneID_(v7, v8, v9);

  objc_sync_exit(v4);
}

- (void)removeZone:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_cache(v4, v5, v6);
  objc_msgSend_removeZoneWithID_(v7, v8, v9);

  objc_sync_exit(v4);
}

- (id)zoneShareIDForZoneID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_cache(v5, v6, v7);
  v10 = objc_msgSend_zoneShareIDForZoneID_(v8, v9, v4);

  objc_sync_exit(v5);

  return v10;
}

- (id)knownShareIDsForZoneID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_cache(v5, v6, v7);
  v10 = objc_msgSend_shareIDsForZoneID_(v8, v9, v4);

  objc_sync_exit(v5);

  return v10;
}

- (id)shareIDForRecordID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_cache(v5, v6, v7);
  v10 = objc_msgSend_shareIDForRecordID_(v8, v9, v4);

  objc_sync_exit(v5);

  return v10;
}

- (void)setShareID:(id)a3 forRecordID:(id)a4
{
  v17 = a3;
  v9 = a4;
  if (!v17 || !v9)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDShareIDCache.m", 203, @"shareID must not be nil");
  }

  v10 = self;
  objc_sync_enter(v10);
  v13 = objc_msgSend_cache(v10, v11, v12);
  objc_msgSend_addHierarchicalShareID_forRootRecordID_(v13, v14, v17, v9);

  objc_sync_exit(v10);
}

- (void)removeShareID:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_cache(v4, v5, v6);
  objc_msgSend_removeShareID_(v7, v8, v9);

  objc_sync_exit(v4);
}

- (void)removeRecordID:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_cache(v4, v5, v6);
  objc_msgSend_removeRecordID_(v7, v8, v9);

  objc_sync_exit(v4);
}

@end
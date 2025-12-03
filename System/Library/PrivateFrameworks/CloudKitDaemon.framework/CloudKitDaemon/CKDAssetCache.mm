@interface CKDAssetCache
+ (id)_sharedCachesByDirectory;
+ (id)_sharedCachesQueue;
+ (id)assetCacheWithApplicationBundleID:(id)d directoryContext:(id)context database:(id)database didInit:(BOOL *)init error:(id *)error;
- (BOOL)parseCachedPath:(id)path assetHandleUUID:(id *)d assetSignature:(id *)signature;
- (BOOL)parseCachedPath:(id)path assetHandleUUIDString:(id *)string assetSignatureString:(id *)signatureString;
- (BOOL)startTrackingGetAssetHandles:(id)handles operationType:(int64_t)type error:(id *)error;
- (BOOL)startTrackingRegisterOrPutAssetHandles:(id)handles operationType:(int64_t)type error:(id *)error;
- (BOOL)updateAssetHandlesForGetMMCSItems:(id)items cloneItems:(BOOL)cloneItems error:(id *)error;
- (BOOL)updateAssetHandlesForPutMMCSItems:(id)items cloneItems:(BOOL)cloneItems error:(id *)error;
- (CKDMMCS)MMCS;
- (NSString)fileDownloadPath;
- (id)_evictWithEvictionInfo:(id)info;
- (id)_getAssetHandlesForCachedButNotRegisteredMMCSItems:(id)items error:(id *)error;
- (id)_initWithApplicationBundleID:(id)d directoryContext:(id)context database:(id)database error:(id *)error;
- (id)_saveData:(id)data error:(id *)error;
- (id)assetHandleWithCachedPath:(id)path;
- (id)clonedFileCache;
- (id)deviceIDForVolumeIndex:(id)index;
- (id)existingEntriesForRegisterOrPutHandles:(id)handles volumeIndex:(id)index;
- (id)findAssetHandleForItemID:(unint64_t)d error:(id *)error;
- (id)mmcsEngineContext;
- (id)registeredMMCSItemForRereferencedAsset:(id)asset copyBlock:(id)block;
- (id)trackCachedButNotRegisteredMMCSItems:(id)items error:(id *)error;
- (id)trackDownloadedData:(id)data signature:(id)signature error:(id *)error;
- (id)updateAssetHandlesForChunkedMMCSItems:(id)items error:(id *)error;
- (id)updateAssetHandlesForRegisteredMMCSItems:(id)items error:(id *)error;
- (id)volumeIndexForDeviceID:(id)d;
- (void)_deleteAssetHandlesAndUnregisterItemsForUnmountedAssetVolumes;
- (void)_expireAssetHandlesWithExpiryDate:(id)date;
- (void)_resetAssetInflight;
- (void)_scheduleEvictionForDownloadedFiles;
- (void)checkAssetHandlesForRegisteredMMCSItems:(id)items;
- (void)clearAssetCache;
- (void)dealloc;
- (void)drop;
- (void)enumerateAssetHandlesSegregatedByVolume:(id)volume block:(id)block;
- (void)expireAssetHandlesIfNecessary;
- (void)setupPersistentStateAtStartup;
- (void)showAssetCacheInContainer:(id)container;
- (void)stopTrackingAssetHandlesByItemIDs:(id)ds;
- (void)unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo:(id)info;
- (void)unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs:(id)ds deleteUnregisteredAssetHandlesWithIDs:(id)iDs;
- (void)updateLastAccessTimeForUUID:(id)d;
@end

@implementation CKDAssetCache

+ (id)_sharedCachesByDirectory
{
  if (qword_280D54F70 != -1)
  {
    dispatch_once(&qword_280D54F70, &unk_28385C480);
  }

  v3 = qword_280D54F68;

  return v3;
}

- (id)mmcsEngineContext
{
  v5 = objc_msgSend_MMCS(self, a2, v2);
  v8 = objc_msgSend_MMCSEngineContext(v5, v6, v7);

  if (!v8)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDAssetCache.m", 455, @"Expected non nil CKDMMCSEngineContext");
  }

  return v8;
}

- (CKDMMCS)MMCS
{
  WeakRetained = objc_loadWeakRetained(&self->_MMCS);

  return WeakRetained;
}

- (void)_deleteAssetHandlesAndUnregisterItemsForUnmountedAssetVolumes
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_mmcsEngineContext(self, a2, v2);
  objc_msgSend_assertMMCSSerialized(v5, v6, v7);

  if (objc_msgSend_didDrop(self, v8, v9))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v20 = 2114;
      v21 = v16;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache _deleteAssetHandlesAndUnregisterItemsForUnmountedAssetVolumes]", "CKDAssetCache.m", 514, "0 && already dropped");
  }

  assetVolumeTable = self->_assetVolumeTable;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2250965D0;
  v17[3] = &unk_278545D80;
  v17[4] = self;
  v12 = objc_msgSend_performTransaction_(assetVolumeTable, v10, v17);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_resetAssetInflight
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_mmcsEngineContext(self, a2, v2);
  objc_msgSend_assertMMCSSerialized(v5, v6, v7);

  if (objc_msgSend_didDrop(self, v8, v9))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v25 = 2114;
      v26 = v20;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache _resetAssetInflight]", "CKDAssetCache.m", 2036, "0 && already dropped");
  }

  v12 = objc_msgSend_MMCS(self, v10, v11);
  if (!v12)
  {
    __assert_rtn("[CKDAssetCache _resetAssetInflight]", "CKDAssetCache.m", 2038, "MMCS && nil MMCS object");
  }

  assetHandleTable = self->_assetHandleTable;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225096BAC;
  v21[3] = &unk_278546180;
  v21[4] = self;
  v22 = v12;
  v14 = v12;
  v16 = objc_msgSend_performTransaction_(assetHandleTable, v15, v21);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setupPersistentStateAtStartup
{
  v5 = objc_msgSend_mmcsEngineContext(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225096228;
  v7[3] = &unk_278546110;
  v7[4] = self;
  v7[5] = a2;
  objc_msgSend_MMCSSerializeSyncRecursive_(v5, v6, v7);
}

- (void)drop
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Dropping: %@", buf, 0xCu);
  }

  v6 = objc_msgSend_mmcsEngineContext(self, v4, v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2250996C8;
  v9[3] = &unk_278545A00;
  v9[4] = self;
  objc_msgSend_MMCSSerializeSyncRecursive_(v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)fileDownloadPath
{
  v3 = objc_msgSend_directoryContext(self, a2, v2);
  v6 = objc_msgSend_fileDownloadDirectory(v3, v4, v5);
  v9 = objc_msgSend_path(v6, v7, v8);

  return v9;
}

- (void)expireAssetHandlesIfNecessary
{
  v4 = objc_msgSend_mmcsEngineContext(self, a2, v2);
  objc_msgSend_assertMMCSSerialized(v4, v5, v6);

  if ((objc_msgSend_didDrop(self, v7, v8) & 1) == 0)
  {
    if (!self->_oldestLastUsedTime)
    {
      v11 = objc_msgSend_oldestLastUsedTime(self->_assetHandleTable, v9, v10);
      oldestLastUsedTime = self->_oldestLastUsedTime;
      self->_oldestLastUsedTime = v11;
    }

    v18 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v9, v10, -28800.0);
    v14 = objc_msgSend_earlierDate_(self->_oldestLastUsedTime, v13, v18);
    v15 = self->_oldestLastUsedTime;

    if (v14 == v15)
    {
      v16 = self->_oldestLastUsedTime;
      self->_oldestLastUsedTime = 0;

      objc_msgSend__expireAssetHandlesWithExpiryDate_(self, v17, v18);
    }
  }
}

+ (id)_sharedCachesQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251174F4;
  block[3] = &unk_278545AD0;
  block[4] = self;
  if (qword_280D54F60 != -1)
  {
    dispatch_once(&qword_280D54F60, block);
  }

  v2 = qword_280D54F58;

  return v2;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC828];
  v5 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Deallocating: %@", buf, 0xCu);
  }

  if ((objc_msgSend_didDrop(self, v6, v7) & 1) == 0)
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_22506F000, v8, OS_LOG_TYPE_FAULT, "Failed to drop: %@", buf, 0xCu);
    }
  }

  v10.receiver = self;
  v10.super_class = CKDAssetCache;
  [(CKDAssetCache *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)assetCacheWithApplicationBundleID:(id)d directoryContext:(id)context database:(id)database didInit:(BOOL *)init error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  databaseCopy = database;
  if (!dCopy)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDAssetCache.m", 384, @"Expected non-nil application bundle ID");
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_225073E70;
  v48 = sub_2250734C4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_225073E70;
  v42 = sub_2250734C4;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v18 = objc_msgSend__sharedCachesQueue(CKDAssetCache, v15, v16);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_225117868;
  v27[3] = &unk_278545D58;
  v19 = contextCopy;
  v28 = v19;
  v31 = &v44;
  v20 = dCopy;
  v29 = v20;
  v21 = databaseCopy;
  v30 = v21;
  v32 = &v38;
  v33 = &v34;
  dispatch_sync(v18, v27);

  if (init)
  {
    *init = *(v35 + 24);
  }

  v22 = v45[5];
  if (error && !v22)
  {
    *error = v39[5];
    v22 = v45[5];
  }

  v23 = v22;

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);

  return v23;
}

- (id)_initWithApplicationBundleID:(id)d directoryContext:(id)context database:(id)database error:(id *)error
{
  v99[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  databaseCopy = database;
  v90.receiver = self;
  v90.super_class = CKDAssetCache;
  v14 = [(CKDAssetCache *)&v90 init];
  if (!v14)
  {
    v26 = 0;
    v29 = 0;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v15 = v14;
  v87 = dCopy;
  v88 = databaseCopy;
  objc_storeStrong(&v14->_directoryContext, context);
  v18 = objc_msgSend_fileDownloadDirectory(contextCopy, v16, v17);
  v21 = objc_msgSend_path(v18, v19, v20);
  v98 = *MEMORY[0x277CBBF30];
  v22 = CKBootDate();
  v99[0] = v22;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v99, &v98, 1);
  v89[1] = 0;
  v25 = CKCreateDirectoryAtPathWithAttributes();
  v26 = 0;

  if (v25)
  {
    objc_storeStrong((v15 + 56), d);
    if (v26)
    {
      objc_msgSend_setDidDrop_(v15, v27, 1);
      v29 = 0;
      dCopy = v87;
      databaseCopy = v88;
    }

    else
    {
      v31 = MEMORY[0x277CCACA8];
      v32 = objc_msgSend_containerIdentifier(contextCopy, v27, v28);
      v35 = objc_msgSend_dataSeparationHash(contextCopy, v33, v34);
      v37 = objc_msgSend_stringWithFormat_(v31, v36, @"%@.%@", v32, v35);

      v38 = MEMORY[0x277CBC660];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v42 = objc_msgSend_groupNameWithDomain_domainIdentifier_groupName_(v38, v41, 2, v37, v40);

      v45 = objc_msgSend_containerID(contextCopy, v43, v44);
      v48 = objc_msgSend_specialContainerType(v45, v46, v47);
      v50 = objc_msgSend_tableGroupOptionsForContainerType_(CKDAssetCacheTableGroup, v49, v48);

      v89[0] = 0;
      databaseCopy = v88;
      v52 = objc_msgSend_tableGroupInDatabase_withName_options_error_(CKDAssetCacheTableGroup, v51, v88, v42, v50, v89);
      v26 = v89[0];
      v53 = *(v15 + 32);
      *(v15 + 32) = v52;

      v56 = *(v15 + 32);
      if (v56)
      {
        isNew = objc_msgSend_isNew(v56, v54, v55);
        *(v15 + 16) = isNew;
        if (isNew)
        {
          v86 = *(v15 + 32);
          v92 = *MEMORY[0x277CBC080];
          v60 = objc_msgSend_mmcsWorkingDirectory(contextCopy, v58, v59);
          v63 = objc_msgSend_path(v60, v61, v62);
          v91 = v63;
          v65 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, &v91, 1);
          v93 = v65;
          v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v93, &v92, 1);
          v69 = objc_msgSend_updateGroupData_(v86, v68, v67);

          databaseCopy = v88;
        }

        v70 = objc_msgSend_assetHandleTable(*(v15 + 32), v58, v59);
        v71 = *(v15 + 40);
        *(v15 + 40) = v70;

        v74 = objc_msgSend_assetVolumeTable(*(v15 + 32), v72, v73);
        v75 = *(v15 + 48);
        *(v15 + 48) = v74;
      }

      else
      {
        v75 = v15;
        v15 = 0;
      }

      v29 = v15;

      v15 = v37;
      dCopy = v87;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    dCopy = v87;
    databaseCopy = v88;
    v30 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v79 = v30;
      v82 = objc_msgSend_fileDownloadDirectory(contextCopy, v80, v81);
      v85 = objc_msgSend_CKSanitizedPath(v82, v83, v84);
      *buf = 138543618;
      v95 = v85;
      v96 = 2112;
      v97 = v26;
      _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, "Failed to create dir at %{public}@: %@", buf, 0x16u);
    }

    v29 = 0;
  }

  if (error)
  {
LABEL_19:
    if (!v29)
    {
      v76 = v26;
      *error = v26;
    }
  }

LABEL_21:

  v77 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)deviceIDForVolumeIndex:(id)index
{
  if (index)
  {
    v3 = objc_msgSend_volumeUUIDWithVolumeIndex_(self->_assetVolumeTable, a2, index);
    v5 = v3;
    if (v3)
    {
      v3 = objc_msgSend_deviceIDForVolumeUUID_(CKDVolumeManager, v4, v3);
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)volumeIndexForDeviceID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_225073E70;
    v19 = sub_2250734C4;
    v20 = 0;
    v7 = objc_msgSend_mmcsEngineContext(self, v4, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_225118090;
    v11[3] = &unk_278545DA8;
    selfCopy = self;
    v14 = &v15;
    v12 = dCopy;
    objc_msgSend_MMCSSerializeSyncRecursive_(v7, v8, v11);

    v9 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)clearAssetCache
{
  v31 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_225073E70;
  v23 = sub_2250734C4;
  v24 = 0;
  v5 = objc_msgSend_mmcsEngineContext(self, a2, v2);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251185C8;
  v18[3] = &unk_278545DF8;
  v18[5] = &v19;
  v18[6] = a2;
  v18[4] = self;
  objc_msgSend_MMCSSerializeSyncRecursive_(v5, v6, v18);

  v9 = objc_msgSend_countAssetCacheItems(self, v7, v8);
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_msgSend_purgedBytesCount(v20[5], v11, v12);
      v17 = objc_msgSend_name(self->_assetCacheTableGroup, v15, v16);
      *buf = 134218498;
      v26 = v14;
      v27 = 2048;
      v28 = v9;
      v29 = 2114;
      v30 = v17;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "After clearing asset cache of %lld bytes, still had %ld items remaining in %{public}@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v19, 8);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkAssetHandlesForRegisteredMMCSItems:(id)items
{
  v33 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v8 = objc_msgSend_MMCS(self, v6, v7);
  v9 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC828];
  v11 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v15 = objc_msgSend_path(v8, v13, v14);
    *buf = 138543362;
    v32 = v15;
    _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "----\nChunk Registry Report for %{public}@", buf, 0xCu);

    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }
  }

  v16 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "itemID, file signature, status", buf, 2u);
  }

  v19 = objc_msgSend_MMCSEngineContext(v8, v17, v18);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_225118BB0;
  v28[3] = &unk_278545E20;
  v28[4] = self;
  v30 = a2;
  v20 = itemsCopy;
  v29 = v20;
  objc_msgSend_MMCSSerializeSyncRecursive_(v19, v21, v28);

  if (*v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    v23 = v22;
    v26 = objc_msgSend_path(v8, v24, v25);
    *buf = 138543362;
    v32 = v26;
    _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "End Chunk Registry Report for %{public}@\n----", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)showAssetCacheInContainer:(id)container
{
  containerCopy = container;
  v8 = objc_msgSend_mmcsEngineContext(self, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225119110;
  v11[3] = &unk_278545E20;
  v12 = containerCopy;
  v13 = a2;
  v11[4] = self;
  v9 = containerCopy;
  objc_msgSend_MMCSSerializeSyncRecursive_(v8, v10, v11);
}

- (void)unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs:(id)ds deleteUnregisteredAssetHandlesWithIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v10 = objc_msgSend_mmcsEngineContext(self, v8, v9);
  objc_msgSend_assertMMCSSerialized(v10, v11, v12);

  v15 = objc_msgSend_MMCS(self, v13, v14);
  if (!v15)
  {
    __assert_rtn("[CKDAssetCache unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs:deleteUnregisteredAssetHandlesWithIDs:]", "CKDAssetCache.m", 767, "MMCS && nil MMCS object");
  }

  v18 = v15;
  if (objc_msgSend_count(dsCopy, v16, v17))
  {
    v21 = objc_msgSend_array(dsCopy, v19, v20);
    objc_msgSend_unregisterItemIDs_(v18, v22, v21);

LABEL_5:
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetHandleTable = self->_assetHandleTable;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22511A1AC;
    v28[3] = &unk_278545EC0;
    v29 = &unk_2838C8D00;
    v30 = v23;
    selfCopy = self;
    v32 = dsCopy;
    v33 = iDsCopy;
    v25 = v23;
    v27 = objc_msgSend_performTransaction_(assetHandleTable, v26, v28);

    goto LABEL_6;
  }

  if (objc_msgSend_count(iDsCopy, v19, v20))
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo:(id)info
{
  infoCopy = info;
  v11 = objc_msgSend_itemIDsToUnregister(infoCopy, v5, v6);
  v9 = objc_msgSend_assetHandleItemIDsToDelete(infoCopy, v7, v8);

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(self, v10, v11, v9);
}

- (id)_saveData:(id)data error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CKDAssetCache.m", 819, @"Expected non-nil data");
  }

  v10 = objc_msgSend_MMCS(self, v7, v8);
  v13 = objc_msgSend_temporaryDirectory(v10, v11, v12);

  v16 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v14, v15);
  v19 = objc_msgSend_UUIDString(v16, v17, v18);
  v21 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v13, v20, v19, 0);

  if (v21)
  {
    v40 = 0;
    v23 = objc_msgSend_writeToURL_options_error_(dataCopy, v22, v21, 0, &v40);
    v24 = v40;
    v25 = v24;
    if (v23)
    {
      v26 = v21;

      goto LABEL_16;
    }

    if (error)
    {
      v27 = v24;
      *error = v25;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v31 = v28;
      v34 = objc_msgSend_length(dataCopy, v32, v33);
      v37 = objc_msgSend_CKSanitizedPath(v21, v35, v36);
      *buf = 134218498;
      v42 = v34;
      v43 = 2114;
      v44 = v37;
      v45 = 2112;
      v46 = v25;
      _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Can't create temp file for data(length:%lu) at %{public}@: %@", buf, 0x20u);
    }
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 1000, @"Invalid path");
    *error = v26 = 0;
    goto LABEL_16;
  }

  v26 = 0;
LABEL_16:

  v29 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_getAssetHandlesForCachedButNotRegisteredMMCSItems:(id)items error:(id *)error
{
  v172 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (!itemsCopy)
  {
    v151 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v151, v152, a2, self, @"CKDAssetCache.m", 837, @"Expected non-nil MMCS items array");
  }

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_count(itemsCopy, v9, v10);
  v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v14 = itemsCopy;
  v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v165, v171, 16);
  if (!v160)
  {
    v49 = 0;
    v144 = v14;
    goto LABEL_48;
  }

  errorCopy = error;
  v18 = 0;
  v159 = *v166;
  obj = v14;
  v158 = v13;
LABEL_5:
  v19 = 0;
  while (1)
  {
    if (*v166 != v159)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(*(&v165 + 1) + 8 * v19);
    v21 = objc_msgSend_error(v20, v16, v17);

    if (v21)
    {
      v49 = objc_msgSend_error(v20, v22, v23);

      goto LABEL_45;
    }

    v24 = objc_msgSend_signature(v20, v22, v23);

    if (!v24)
    {
      v139 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v139, v140, a2, self, @"CKDAssetCache.m", 850, @"Expected non-nil signature for %@", v20);
    }

    v27 = objc_msgSend_fileURL(v20, v25, v26);
    if (!objc_msgSend_fileSize(v20, v28, v29))
    {
      break;
    }

    v32 = objc_msgSend_fileURL(v20, v30, v31);

    v27 = v32;
LABEL_17:
    v49 = v18;
LABEL_18:
    v50 = objc_msgSend_fileURL(v20, v33, v34);

    if (!v50)
    {
      v141 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v51, v52);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v141, v142, a2, self, @"CKDAssetCache.m", 873, @"Expected non-nil fileURL for %@", v20);
    }

    if (objc_msgSend_itemID(v20, v51, v52))
    {
      v55 = MEMORY[0x277CCABB0];
      v56 = objc_msgSend_itemID(v20, v53, v54);
      v58 = objc_msgSend_numberWithUnsignedLongLong_(v55, v57, v56);
    }

    else
    {
      v58 = 0;
    }

    v59 = MEMORY[0x277CBC190];
    v60 = objc_msgSend_path(v27, v53, v54);
    v163 = v49;
    v62 = objc_msgSend_getFileMetadataAtPath_error_(v59, v61, v60, &v163);
    v63 = v163;

    if (!v62)
    {
      objc_msgSend_setError_(v20, v64, v63);

      v49 = v63;
      goto LABEL_45;
    }

    v162 = v63;
    v65 = [CKDAssetHandle alloc];
    v67 = objc_msgSend_initWithItemID_UUID_path_(v65, v66, v58, 0, 0);
    v70 = objc_msgSend_deviceID(v62, v68, v69);
    v72 = objc_msgSend_volumeIndexForDeviceID_(self, v71, v70);
    objc_msgSend_setVolumeIndex_(v67, v73, v72);

    v76 = objc_msgSend_fileID(v62, v74, v75);
    objc_msgSend_setFileID_(v67, v77, v76);

    v80 = objc_msgSend_generationID(v62, v78, v79);
    objc_msgSend_setGenerationID_(v67, v81, v80);

    v84 = objc_msgSend_signature(v20, v82, v83);
    objc_msgSend_setFileSignature_(v67, v85, v84);

    v88 = objc_msgSend_modTimeInSeconds(v62, v86, v87);
    v91 = v88;
    if (v88)
    {
      v92 = MEMORY[0x277CBEAA8];
      objc_msgSend_doubleValue(v88, v89, v90);
      v95 = objc_msgSend_dateWithTimeIntervalSince1970_(v92, v93, v94);
      objc_msgSend_setModTime_(v67, v96, v95);
    }

    v97 = objc_msgSend_fileSize(v62, v89, v90);
    objc_msgSend_setFileSize_(v67, v98, v97);

    v101 = objc_msgSend_boundaryKey(v20, v99, v100);
    objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v67, v102, v101);

    v105 = objc_msgSend_signature(v20, v103, v104);
    v108 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v106, v107);
    isEqualToData = objc_msgSend_isEqualToData_(v105, v109, v108);

    if ((isEqualToData & 1) != 0 || !objc_msgSend_chunkCount(v20, v111, v112) || (objc_msgSend_fileSize(v62, v111, v112), v113 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend_unsignedLongLongValue(v113, v114, v115), v113, !v116))
    {
      v117 = MEMORY[0x277CBC6A8];
      v118 = objc_msgSend_signature(v20, v111, v112);
      LODWORD(v117) = objc_msgSend_isValidV2Signature_(v117, v119, v118);

      if (((v117 | isEqualToData) & 1) == 0)
      {
        __assert_rtn("[CKDAssetCache _getAssetHandlesForCachedButNotRegisteredMMCSItems:error:]", "CKDAssetCache.m", 900, "isZeroFileSignature && Expected zeroSizeFileSignature");
      }

      if (objc_msgSend_chunkCount(v20, v120, v121))
      {
        __assert_rtn("[CKDAssetCache _getAssetHandlesForCachedButNotRegisteredMMCSItems:error:]", "CKDAssetCache.m", 902, "MMCSItem.chunkCount == 0 && Expected MMCSItem.chunkCount == 0");
      }

      v124 = objc_msgSend_fileSize(v62, v122, v123);
      if (objc_msgSend_unsignedLongLongValue(v124, v125, v126))
      {
        __assert_rtn("[CKDAssetCache _getAssetHandlesForCachedButNotRegisteredMMCSItems:error:]", "CKDAssetCache.m", 903, "fileMetadata.fileSize.unsignedLongLongValue == 0 && Expected fileMetadata.fileSize.unsignedLongLongValue == 0");
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v127 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v170 = v58;
        _os_log_debug_impl(&dword_22506F000, v127, OS_LOG_TYPE_DEBUG, "Zero-length asset with itemID %{public}@", buf, 0xCu);
      }
    }

    v128 = MEMORY[0x277CCABB0];
    v129 = objc_msgSend_chunkCount(v20, v111, v112);
    v131 = objc_msgSend_numberWithUnsignedInt_(v128, v130, v129);
    objc_msgSend_setChunkCount_(v67, v132, v131);

    objc_msgSend_setStatus_(v67, v133, &unk_2838C8130);
    v13 = v158;
    objc_msgSend_addObject_(v158, v134, v67);

    ++v19;
    v18 = v162;
    if (v160 == v19)
    {
      v14 = obj;
      v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v165, v171, 16);
      v160 = v143;
      if (!v143)
      {
        v144 = obj;
        v49 = v162;
        goto LABEL_48;
      }

      goto LABEL_5;
    }
  }

  v35 = MEMORY[0x277CBC6A8];
  v36 = objc_msgSend_signature(v20, v30, v31);
  if (objc_msgSend_isValidV2Signature_(v35, v37, v36))
  {
  }

  else
  {
    v42 = objc_msgSend_signature(v20, v38, v39);
    v45 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v43, v44);
    v47 = objc_msgSend_isEqualToData_(v42, v46, v45);

    if ((v47 & 1) == 0)
    {
      v49 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v40, *MEMORY[0x277CBC120], 1000, @"Invalid signature for zero size file");

      objc_msgSend_setError_(v20, v150, v49);
      goto LABEL_45;
    }
  }

  v48 = objc_msgSend_fileURL(v20, v40, v41);

  if (v48)
  {
    goto LABEL_17;
  }

  v135 = objc_msgSend_data(MEMORY[0x277CBEA90], v33, v34);
  v164 = v18;
  v137 = objc_msgSend__saveData_error_(self, v136, v135, &v164);
  v49 = v164;

  if (v137)
  {
    objc_msgSend_setFileURL_(v20, v138, v137);
    v27 = v137;
    goto LABEL_18;
  }

  objc_msgSend_setError_(v20, v138, v49);
LABEL_45:
  v14 = obj;

  if (errorCopy)
  {
    v145 = v49;
    *errorCopy = v49;
  }

  v144 = v13;
  v13 = 0;
LABEL_48:

  if (!(v13 | v49))
  {
    v153 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v146, v147);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v153, v154, a2, self, @"CKDAssetCache.m", 916, @"Expected non-nil error");
  }

  v148 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)updateAssetHandlesForRegisteredMMCSItems:(id)items error:(id *)error
{
  itemsCopy = items;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v11 = objc_msgSend_mmcsEngineContext(self, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22511B30C;
  v17[3] = &unk_278545EE8;
  v20 = v8;
  v21 = a2;
  v17[4] = self;
  v18 = itemsCopy;
  v19 = v7;
  v12 = v8;
  v13 = v7;
  v14 = itemsCopy;
  objc_msgSend_MMCSSerializeSyncRecursive_(v11, v15, v17);

  return 0;
}

- (id)updateAssetHandlesForChunkedMMCSItems:(id)items error:(id *)error
{
  itemsCopy = items;
  v9 = objc_msgSend_mmcsEngineContext(self, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22511BDC4;
  v13[3] = &unk_278545E20;
  v14 = itemsCopy;
  v15 = a2;
  v13[4] = self;
  v10 = itemsCopy;
  objc_msgSend_MMCSSerializeSyncRecursive_(v9, v11, v13);

  return 0;
}

- (id)clonedFileCache
{
  clonedFileCache = self->_clonedFileCache;
  if (!clonedFileCache)
  {
    v5 = objc_msgSend_mmcsWorkingDirectory(self->_directoryContext, a2, v2);
    v7 = objc_msgSend_URLByAppendingPathComponent_(v5, v6, @"ClonedFiles");

    v8 = [CKDClonedFileCache alloc];
    v10 = objc_msgSend_initWithCacheDirectory_limit_(v8, v9, v7, 10000);
    v11 = self->_clonedFileCache;
    self->_clonedFileCache = v10;

    clonedFileCache = self->_clonedFileCache;
  }

  return clonedFileCache;
}

- (BOOL)updateAssetHandlesForGetMMCSItems:(id)items cloneItems:(BOOL)cloneItems error:(id *)error
{
  itemsCopy = items;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v13 = objc_msgSend_mmcsEngineContext(self, v11, v12);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_22511C204;
  v24 = &unk_278545F10;
  v28 = v10;
  v29 = a2;
  selfCopy = self;
  v26 = itemsCopy;
  cloneItemsCopy = cloneItems;
  v27 = v9;
  v14 = v10;
  v15 = v9;
  v16 = itemsCopy;
  objc_msgSend_MMCSSerializeSyncRecursive_(v13, v17, &v21);

  objc_msgSend__scheduleEvictionForDownloadedFiles(self, v18, v19, v21, v22, v23, v24, selfCopy);
  return 1;
}

- (BOOL)updateAssetHandlesForPutMMCSItems:(id)items cloneItems:(BOOL)cloneItems error:(id *)error
{
  itemsCopy = items;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v13 = objc_msgSend_mmcsEngineContext(self, v11, v12);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_22511CEA8;
  v24 = &unk_278545F10;
  v28 = v10;
  v29 = a2;
  selfCopy = self;
  v26 = itemsCopy;
  cloneItemsCopy = cloneItems;
  v27 = v9;
  v14 = v10;
  v15 = v9;
  v16 = itemsCopy;
  objc_msgSend_MMCSSerializeSyncRecursive_(v13, v17, &v21);

  objc_msgSend__scheduleEvictionForDownloadedFiles(self, v18, v19, v21, v22, v23, v24, selfCopy);
  return 1;
}

- (id)trackCachedButNotRegisteredMMCSItems:(id)items error:(id *)error
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, a2, self, @"CKDAssetCache.m", 1194, @"Expected non-nil cached but not registered MMCS items");
  }

  v10 = objc_msgSend_fileDownloadPath(self, v7, v8);

  if (!v10)
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDAssetCache.m", 1195, @"Expected non-nil file download path");
  }

  if (objc_msgSend_count(itemsCopy, v11, v12))
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_225073E70;
    v52 = sub_2250734C4;
    v53 = 0;
    obj = 0;
    v14 = objc_msgSend__getAssetHandlesForCachedButNotRegisteredMMCSItems_error_(self, v13, itemsCopy, &obj);
    objc_storeStrong(&v53, obj);
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CBEB38]);
      v18 = objc_msgSend_count(itemsCopy, v16, v17);
      v20 = objc_msgSend_initWithCapacity_(v15, v19, v18);
      v23 = objc_msgSend_mmcsEngineContext(self, v21, v22);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_22511D810;
      v41[3] = &unk_278545F60;
      v41[4] = self;
      v45 = &v48;
      v46 = a2;
      v42 = v14;
      v24 = itemsCopy;
      v43 = v24;
      v25 = v20;
      v44 = v25;
      objc_msgSend_MMCSSerializeSyncRecursive_(v23, v26, v41);

      v28 = v49[5];
      if (v28)
      {
        if (error)
        {
          *error = v28;
        }

        v24 = 0;
      }

      else
      {
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v25, v27, &unk_28385C500);
      }

      objc_msgSend__scheduleEvictionForDownloadedFiles(self, v29, v30);
      if (!v24 && !v49[5])
      {
        v39 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v32, v33);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, a2, self, @"CKDAssetCache.m", 1288, @"Expected non-nil error");
      }

      itemsCopy = v24;

      v31 = itemsCopy;
    }

    else
    {
      v31 = 0;
      if (error)
      {
        *error = v49[5];
      }
    }

    _Block_object_dispose(&v48, 8);
  }

  else
  {
    itemsCopy = itemsCopy;
    v31 = itemsCopy;
  }

  return v31;
}

- (id)trackDownloadedData:(id)data signature:(id)signature error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  signatureCopy = signature;
  v11 = objc_msgSend__saveData_error_(self, v10, dataCopy, error);
  if (v11)
  {
    v12 = objc_alloc_init(CKDMMCSItem);
    objc_msgSend_setFileURL_(v12, v13, v11);
    objc_msgSend_setSignature_(v12, v14, signatureCopy);
    v17 = objc_msgSend_length(dataCopy, v15, v16);
    objc_msgSend_setFileSize_(v12, v18, v17);
    v36[0] = v12;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v36, 1);
    v22 = objc_msgSend_trackCachedButNotRegisteredMMCSItems_error_(self, v21, v20, error);

    if (v22 || (objc_msgSend_fileURL(v12, v23, v24), (v28 = objc_claimAutoreleasedReturnValue()) == 0) || (v29 = v28, objc_msgSend_trackingUUID(v12, v23, v24), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
    {
      v25 = objc_msgSend_firstObject(v22, v23, v24);
    }

    else
    {
      v31 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24);
      v34 = objc_msgSend_fileURL(v12, v32, v33);
      objc_msgSend_removeItemAtURL_error_(v31, v35, v34, 0);

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)enumerateAssetHandlesSegregatedByVolume:(id)volume block:(id)block
{
  volumeCopy = volume;
  blockCopy = block;
  v10 = objc_msgSend_objectAtIndex_(volumeCopy, v9, 0);
  v13 = objc_msgSend_volumeIndex(v10, v11, v12);
  v16 = objc_msgSend_count(volumeCopy, v14, v15);
  if (v16 == 1)
  {
    blockCopy[2](blockCopy, v13, volumeCopy);
  }

  else
  {
    v19 = v16;
    if (v16)
    {
      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = v20;
        v20 = objc_msgSend_objectAtIndex_(volumeCopy, v17, v21);

        v26 = objc_msgSend_volumeIndex(v20, v23, v24);
        if ((v13 != 0) == (v26 == 0) || v13 && !objc_msgSend_isEqualToNumber_(v13, v25, v26))
        {
          break;
        }

        if (v19 == ++v21)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDAssetCache.m", 1316, @"no asset handles");
      v20 = 0;
      v21 = 1;
    }

    if (v21 == v19)
    {
LABEL_12:
      blockCopy[2](blockCopy, v13, volumeCopy);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Asset handles span multiple volumnes", buf, 2u);
      }

      v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_replaceObjectsInRange_withObjectsFromArray_range_(v30, v31, 0, 0, volumeCopy, 0, v21);
      v62 = v30;
      v63 = v10;
      if (v13)
      {
        objc_msgSend_setObject_forKey_(v29, v32, v30, v13);
      }

      else
      {
        v35 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33);
        objc_msgSend_setObject_forKey_(v29, v36, v30, v35);
      }

      v37 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v34, v20);
      v42 = objc_msgSend_volumeIndex(v20, v38, v39);
      if (v42)
      {
        objc_msgSend_setObject_forKey_(v29, v40, v37, v42);
      }

      else
      {
        v43 = objc_msgSend_null(MEMORY[0x277CBEB68], v40, v41);
        objc_msgSend_setObject_forKey_(v29, v44, v37, v43);
      }

      v46 = v21 + 1;
      if (v46 < v19)
      {
        do
        {
          v47 = objc_msgSend_objectAtIndex_(volumeCopy, v45, v46);
          v50 = objc_msgSend_volumeIndex(v47, v48, v49);
          v53 = v50;
          if (v50)
          {
            v54 = v50;
          }

          else
          {
            v54 = objc_msgSend_null(MEMORY[0x277CBEB68], v51, v52);
          }

          v55 = v54;

          v57 = objc_msgSend_objectForKey_(v29, v56, v55);
          if (v57)
          {
            v59 = v57;
            objc_msgSend_addObject_(v57, v58, v47);
          }

          else
          {
            v59 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v58, v47);
            objc_msgSend_setObject_forKey_(v29, v60, v59, v55);
          }

          ++v46;
        }

        while (v19 != v46);
      }

      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_22511E6E4;
      v64[3] = &unk_278545FA8;
      v65 = blockCopy;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v29, v61, v64);

      v10 = v63;
    }
  }
}

- (id)existingEntriesForRegisterOrPutHandles:(id)handles volumeIndex:(id)index
{
  v72 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  indexCopy = index;
  if (!indexCopy)
  {
    v37 = 0;
    goto LABEL_26;
  }

  selfCopy = self;
  v8 = objc_alloc(MEMORY[0x277CBEB58]);
  v11 = objc_msgSend_count(handlesCopy, v9, v10);
  v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v57 = handlesCopy;
  v14 = handlesCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v64, v71, 16);
  if (!v16)
  {
    goto LABEL_14;
  }

  v19 = v16;
  v20 = *v65;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v65 != v20)
      {
        objc_enumerationMutation(v14);
      }

      v22 = *(*(&v64 + 1) + 8 * i);
      v23 = objc_msgSend_volumeIndex(v22, v17, v18);
      if (v23)
      {
        v24 = v23;
        v25 = objc_msgSend_fileID(v22, v17, v18);
        if (v25)
        {
          v28 = v25;
          v29 = objc_msgSend_generationID(v22, v26, v27);

          if (!v29)
          {
            continue;
          }

          v24 = objc_msgSend_fileID(v22, v17, v18);
          objc_msgSend_addObject_(v13, v30, v24);
        }
      }
    }

    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v64, v71, 16);
  }

  while (v19);
LABEL_14:

  v69[0] = @"VOL";
  v69[1] = @"STATUS";
  v70[0] = indexCopy;
  v70[1] = &unk_2838C8160;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v70, v69, 2);
  assetHandleTable = selfCopy->_assetHandleTable;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_22511EA90;
  v62[3] = &unk_278545C98;
  v34 = v13;
  v63 = v34;
  v56 = v32;
  v36 = objc_msgSend_entriesWithValues_label_setupBlock_(assetHandleTable, v35, v32, 0, v62);
  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v38 = v36;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v58, v68, 16);
  if (v40)
  {
    v43 = v40;
    v44 = *v59;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v38);
        }

        v46 = *(*(&v58 + 1) + 8 * j);
        v47 = objc_msgSend_fileID(v46, v41, v42);
        v49 = objc_msgSend_objectForKey_(v37, v48, v47);
        if (v49)
        {
          v51 = v49;
          objc_msgSend_addObject_(v49, v50, v46);
        }

        else
        {
          v51 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v50, v46);
          objc_msgSend_setObject_forKey_(v37, v52, v51, v47);
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v58, v68, 16);
    }

    while (v43);
  }

  handlesCopy = v57;
LABEL_26:

  v53 = *MEMORY[0x277D85DE8];

  return v37;
}

- (BOOL)startTrackingRegisterOrPutAssetHandles:(id)handles operationType:(int64_t)type error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_225073E70;
  v38 = sub_2250734C4;
  v39 = 0;
  v10 = type == 6;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v15 = objc_msgSend_mmcsEngineContext(self, v13, v14);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22511EE40;
  v27[3] = &unk_278546020;
  v27[4] = self;
  v32 = a2;
  v16 = handlesCopy;
  v28 = v16;
  v31 = &v34;
  v33 = v10;
  v17 = v11;
  v29 = v17;
  v18 = v12;
  v30 = v18;
  objc_msgSend_MMCSSerializeSyncRecursive_(v15, v19, v27);

  v20 = v35[5];
  if (v20)
  {
    if (error)
    {
      *error = v20;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v22 = v35[5];
      *buf = 138412546;
      v41 = v16;
      v42 = 2112;
      v43 = v22;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Failed to start tracking asset handles %@: %@", buf, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v16;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Started tracking register/put asset handles %@", buf, 0xCu);
    }
  }

  v24 = v35[5] == 0;

  _Block_object_dispose(&v34, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)startTrackingGetAssetHandles:(id)handles operationType:(int64_t)type error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_225073E70;
  v29 = sub_2250734C4;
  v30 = 0;
  v11 = objc_msgSend_mmcsEngineContext(self, v9, v10);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22511F8F0;
  v21[3] = &unk_278546070;
  v23 = &v25;
  v24 = a2;
  v21[4] = self;
  v12 = handlesCopy;
  v22 = v12;
  objc_msgSend_MMCSSerializeSyncRecursive_(v11, v13, v21);

  v14 = v26[5];
  if (v14)
  {
    if (error)
    {
      *error = v14;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v16 = v26[5];
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v16;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Failed to start tracking asset handles %@: %@", buf, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v12;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Started tracking get asset handles %@", buf, 0xCu);
    }
  }

  v18 = v26[5] == 0;

  _Block_object_dispose(&v25, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)updateLastAccessTimeForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v8 = objc_msgSend_mmcsEngineContext(self, v5, v6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22511FEDC;
    v10[3] = &unk_278545E20;
    v10[4] = self;
    v12 = a2;
    v11 = dCopy;
    objc_msgSend_MMCSSerializeSyncRecursive_(v8, v9, v10);
  }
}

- (void)stopTrackingAssetHandlesByItemIDs:(id)ds
{
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v6, v7))
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_225073E70;
    v32[4] = sub_2250734C4;
    v33 = 0;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = dsCopy;
      v17 = objc_msgSend_string(MEMORY[0x277CCAB68], v15, v16);
      objc_msgSend_appendString_(v17, v18, @"(");
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v14;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v40, 16);
      v27 = a2;
      if (v22)
      {
        v23 = *v35;
        v24 = @"%@";
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v19);
            }

            objc_msgSend_appendFormat_(v17, v21, v24, *(*(&v34 + 1) + 8 * i));
            v24 = @", %@";
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v34, v40, 16);
          v24 = @", %@";
        }

        while (v22);
      }

      a2 = v27;
      objc_msgSend_appendString_(v17, v26, @""));

      *buf = 138543362;
      v39 = v17;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Stopping tracking asset handles for itemIDs %{public}@", buf, 0xCu);
    }

    v11 = objc_msgSend_mmcsEngineContext(self, v9, v10);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2251203D0;
    v28[3] = &unk_278546070;
    v28[4] = self;
    v31 = a2;
    v29 = dsCopy;
    v30 = v32;
    objc_msgSend_MMCSSerializeSyncRecursive_(v11, v12, v28);

    _Block_object_dispose(v32, 8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)findAssetHandleForItemID:(unint64_t)d error:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_225073E70;
  v29 = sub_2250734C4;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_225073E70;
  v23 = sub_2250734C4;
  v24 = 0;
  v8 = objc_msgSend_mmcsEngineContext(self, a2, d);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225120950;
  v18[3] = &unk_278546098;
  v18[4] = self;
  v18[5] = &v25;
  v18[7] = a2;
  v18[8] = d;
  v18[6] = &v19;
  objc_msgSend_MMCSSerializeSyncRecursive_(v8, v9, v18);

  v12 = v26[5];
  if (v12)
  {
    v13 = objc_msgSend_UUID(v12, v10, v11);

    if (v13)
    {
      v14 = v26[5];
      goto LABEL_9;
    }
  }

  if (v20[5])
  {
    if (error)
    {
LABEL_6:
      v14 = 0;
      *error = v20[5];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 3002, @"couldn't find item ID %llu", d);
    v16 = v20[5];
    v20[5] = v15;

    if (error)
    {
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_9:
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (BOOL)parseCachedPath:(id)path assetHandleUUIDString:(id *)string assetSignatureString:(id *)signatureString
{
  v63 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v11 = objc_msgSend_lastPathComponent(pathCopy, v9, v10);
  v14 = objc_msgSend_stringByDeletingLastPathComponent(pathCopy, v12, v13);
  v17 = objc_msgSend_fileDownloadPath(self, v15, v16);
  isEqualToString = objc_msgSend_isEqualToString_(v17, v18, v14);

  if ((isEqualToString & 1) == 0)
  {
    v22 = objc_msgSend_fileDownloadPath(self, v20, v21);
    v25 = objc_msgSend_stringByStandardizingPath(v14, v23, v24);
    v27 = objc_msgSend_isEqualToString_(v22, v26, v25);

    if (!v27)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
      {
        v49 = v42;
        v52 = objc_msgSend_CKSanitizedPath(pathCopy, v50, v51);
        v55 = objc_msgSend_fileDownloadPath(self, v53, v54);
        v58 = objc_msgSend_CKSanitizedPath(v55, v56, v57);
        v59 = 138543618;
        v60 = v52;
        v61 = 2114;
        v62 = v58;
        _os_log_error_impl(&dword_22506F000, v49, OS_LOG_TYPE_ERROR, "Attempt to find asset by path that is not in the asset cache fileDownloadPath %{public}@ vs. %{public}@", &v59, 0x16u);
      }

      goto LABEL_20;
    }
  }

  v28 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v20, v21);
  v31 = 2 * objc_msgSend_length(v28, v29, v30) + 37;
  if (v31 != objc_msgSend_length(v11, v32, v33))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v45 = v41;
      v48 = objc_msgSend_CKSanitizedPath(pathCopy, v46, v47);
      v59 = 138543362;
      v60 = v48;
      _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Attempt to find asset by path that is not parsable %{public}@", &v59, 0xCu);
    }

LABEL_20:
    v38 = 0;
    v35 = 0;
    v37 = 0;
    goto LABEL_21;
  }

  v35 = objc_msgSend_substringToIndex_(v11, v34, 36);
  v37 = objc_msgSend_substringFromIndex_(v11, v36, 37);

  v38 = 0;
  if (v35 && v37)
  {
    if (string)
    {
      v39 = v35;
      *string = v35;
    }

    if (signatureString)
    {
      v40 = v37;
      *signatureString = v37;
    }

    v38 = 1;
  }

LABEL_21:

  v43 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)parseCachedPath:(id)path assetHandleUUID:(id *)d assetSignature:(id *)signature
{
  v22 = 0;
  v23 = 0;
  v7 = objc_msgSend_parseCachedPath_assetHandleUUIDString_assetSignatureString_(self, a2, path, &v23, &v22);
  v8 = v23;
  v9 = v22;
  v10 = v9;
  v11 = 0;
  if (v7)
  {
    if (v8 && v9 != 0)
    {
      v13 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = objc_msgSend_initWithUUIDString_(v13, v14, v8);
      v17 = objc_msgSend_CKDataWithHexString_stringIsUppercase_(MEMORY[0x277CBEA90], v16, v10, 0);
      v18 = v17;
      v11 = 0;
      if (signature && d && v15 && v17)
      {
        v19 = v15;
        *d = v15;
        v20 = v18;
        *signature = v18;
        v11 = 1;
      }
    }
  }

  return v11;
}

- (id)assetHandleWithCachedPath:(id)path
{
  pathCopy = path;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_225073E70;
  v21 = sub_2250734C4;
  v22 = 0;
  v8 = objc_msgSend_mmcsEngineContext(self, v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225121194;
  v13[3] = &unk_278546070;
  v13[4] = self;
  v16 = a2;
  v9 = pathCopy;
  v14 = v9;
  v15 = &v17;
  objc_msgSend_MMCSSerializeSyncRecursive_(v8, v10, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)registeredMMCSItemForRereferencedAsset:(id)asset copyBlock:(id)block
{
  assetCopy = asset;
  blockCopy = block;
  v8 = [CKDMMCSItem alloc];
  v10 = objc_msgSend_initWithAsset_temporary_(v8, v9, assetCopy, 1);
  if (objc_msgSend_isReference(assetCopy, v11, v12))
  {
    v15 = objc_msgSend_reReferenceItemID(assetCopy, v13, v14);
    assetHandleTable = self->_assetHandleTable;
    v102 = 0;
    v18 = objc_msgSend_assetHandleWithItemID_error_(assetHandleTable, v17, v15, &v102);
    v21 = v102;
    if (!(v18 | v21))
    {
      v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1017, @"no such itemID %ld", v15);
    }

    if (v21)
    {

LABEL_12:
      objc_msgSend_setError_(v10, v22, v21);

      goto LABEL_13;
    }

    v23 = objc_msgSend_status(v18, v19, v20);
    v26 = objc_msgSend_integerValue(v23, v24, v25);

    if (v26 == 3)
    {
      v29 = objc_msgSend_itemID(v18, v27, v28);
      objc_msgSend_setItemID_(v18, v30, 0);
      v33 = objc_msgSend_boundaryKey(assetCopy, v31, v32);
      objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v18, v34, v33);

      v96 = 0;
      v97 = &v96;
      v98 = 0x3032000000;
      v99 = sub_225073E70;
      v100 = sub_2250734C4;
      v101 = 0;
      v35 = self->_assetHandleTable;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = sub_225121858;
      v91[3] = &unk_2785460C0;
      v91[4] = self;
      v36 = v18;
      v92 = v36;
      v95 = &v96;
      v94 = blockCopy;
      v37 = v29;
      v93 = v37;
      v21 = objc_msgSend_performTransaction_(v35, v38, v91);
      if (!v21)
      {
        v41 = objc_msgSend_volumeIndex(v36, v39, v40);
        v43 = objc_msgSend_deviceIDForVolumeIndex_(self, v42, v41);
        objc_msgSend_setDeviceID_(v10, v44, v43);

        v47 = objc_msgSend_fileID(v36, v45, v46);
        objc_msgSend_setFileID_(v10, v48, v47);

        v51 = objc_msgSend_generationID(v36, v49, v50);
        objc_msgSend_setGenerationID_(v10, v52, v51);

        v53 = MEMORY[0x277CCABB0];
        v56 = objc_msgSend_modTime(v36, v54, v55);
        objc_msgSend_timeIntervalSince1970(v56, v57, v58);
        v61 = objc_msgSend_numberWithDouble_(v53, v59, v60);
        objc_msgSend_setModTimeInSeconds_(v10, v62, v61);

        v65 = objc_msgSend_fileSize(v36, v63, v64);
        v68 = objc_msgSend_unsignedLongLongValue(v65, v66, v67);
        objc_msgSend_setFileSize_(v10, v69, v68);

        v72 = objc_msgSend_unsignedLongLongValue(v97[5], v70, v71);
        objc_msgSend_setItemID_(v10, v73, v72);
        v76 = objc_msgSend_chunkCount(v36, v74, v75);
        v79 = objc_msgSend_unsignedLongValue(v76, v77, v78);
        objc_msgSend_setChunkCount_(v10, v80, v79);

        objc_msgSend_setIsAlreadyRegistered_(v10, v81, 1);
        v84 = objc_msgSend_UUID(assetCopy, v82, v83);
        objc_msgSend_setTrackingUUID_(v10, v85, v84);

        v88 = objc_msgSend_boundaryKey(assetCopy, v86, v87);
        objc_msgSend_setBoundaryKey_(v10, v89, v88);
      }

      _Block_object_dispose(&v96, 8);
    }

    else
    {
      v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 3015, @"Asset handle not registered for itemID %ld", v15);
    }

    if (v21)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return v10;
}

- (void)_scheduleEvictionForDownloadedFiles
{
  v5 = objc_msgSend_mmcsEngineContext(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225121990;
  v7[3] = &unk_278546110;
  v7[4] = self;
  v7[5] = a2;
  objc_msgSend_MMCSSerializeSyncRecursive_(v5, v6, v7);
}

- (id)_evictWithEvictionInfo:(id)info
{
  v227[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  selfCopy = self;
  v6 = objc_msgSend_mmcsEngineContext(self, v4, v5);
  objc_msgSend_assertMMCSSerialized(v6, v7, v8);

  v214 = 0;
  v215 = &v214;
  v216 = 0x2020000000;
  v217 = 0;
  if (objc_msgSend_didDrop(selfCopy, v9, v10))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v152 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
    {
      v153 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = selfCopy;
      *&buf[12] = 2114;
      *&buf[14] = v153;
      _os_log_error_impl(&dword_22506F000, v152, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache _evictWithEvictionInfo:]", "CKDAssetCache.m", 1753, "0 && already dropped");
  }

  v178 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12);
  v213 = 0;
  v17 = objc_msgSend_fileDownloadPath(selfCopy, v13, v14);
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = objc_msgSend_fileDownloadPath(selfCopy, v15, v16);
  v172 = v17;
  if (objc_msgSend_fileExistsAtPath_isDirectory_(v178, v19, v18, &v213))
  {
    v20 = v213;

    if (v20)
    {
      v23 = MEMORY[0x277CBEBC0];
      v24 = objc_msgSend_fileDownloadPath(selfCopy, v21, v22);
      v172 = objc_msgSend_fileURLWithPath_isDirectory_(v23, v25, v24, 1);

      context = objc_autoreleasePoolPush();
      v26 = *MEMORY[0x277CBE838];
      v27 = *MEMORY[0x277CBE818];
      v227[0] = *MEMORY[0x277CBE838];
      v227[1] = v27;
      v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v227, 2);
      v31 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v178, v30, v172, v29, 1, &unk_28385C540);

      v173 = 0;
      v171 = 0;
      v175 = *MEMORY[0x277CBE820];
      do
      {
        v32 = objc_autoreleasePoolPush();
        v35 = objc_msgSend_nextObject(v31, v33, v34);
        v37 = v35;
        if (v35)
        {
          v211 = 0;
          v212 = 0;
          ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v35, v36, &v212, v27, &v211);
          v39 = v212;
          v41 = v211;
          if (v39)
          {
            v42 = ResourceValue_forKey_error;
          }

          else
          {
            v42 = 0;
          }

          if (v42 == 1 && objc_msgSend_isEqualToString_(v175, v40, v39))
          {
            v209 = 0;
            v210 = 0;
            v44 = objc_msgSend_getResourceValue_forKey_error_(v37, v43, &v210, v26, &v209);
            v45 = v210;
            v46 = v209;

            if (v45)
            {
              v49 = v44;
            }

            else
            {
              v49 = 0;
            }

            if (v49 == 1)
            {
              v171 += objc_msgSend_unsignedLongLongValue(v45, v47, v48);
            }

            ++v173;
            v41 = v46;
          }
        }

        objc_autoreleasePoolPop(v32);
      }

      while (v37);

      objc_autoreleasePoolPop(context);
      if ((objc_msgSend_forced(infoCopy, v50, v51) & 1) != 0 || v173 > 0x64 || v171 > 0xA00000)
      {
        v167 = objc_autoreleasePoolPush();
        v226[0] = v26;
        v226[1] = v27;
        v60 = *MEMORY[0x277CBE7A8];
        v226[2] = *MEMORY[0x277CBE7A8];
        v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, v226, 3);
        contexta = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v178, v63, v172, v62, 1, &unk_28385C560);

        v66 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v64, v65);
        v69 = objc_msgSend_useModTimeInAssetCacheEviction(v66, v67, v68);

        v70 = *MEMORY[0x277CBE7B0];
        if (!v69)
        {
          v70 = v60;
        }

        v168 = v70;
        *&v71 = 138543362;
        v166 = v71;
        do
        {
          v72 = objc_autoreleasePoolPush();
          v75 = objc_msgSend_nextObject(contexta, v73, v74);
          v77 = v75;
          if (v75)
          {
            v207 = 0;
            v208 = 0;
            v78 = objc_msgSend_getResourceValue_forKey_error_(v75, v76, &v208, v27, &v207);
            v79 = v208;
            v81 = v207;
            if (v79)
            {
              v82 = v78;
            }

            else
            {
              v82 = 0;
            }

            if (v82 == 1 && objc_msgSend_isEqualToString_(v175, v80, v79))
            {
              v85 = objc_msgSend_path(v77, v83, v84);
              v205 = 0;
              v206 = 0;
              v87 = objc_msgSend_parseCachedPath_assetHandleUUID_assetSignature_(selfCopy, v86, v85, &v206, &v205);
              v88 = v206;
              v169 = v205;

              if (v87)
              {
                if (!v88 || !v169)
                {
                  v117 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v89, v90, v166);
                  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v117, v118, a2, selfCopy, @"CKDAssetCache.m", 1829, @"should have thrown by now");
                }

                v203 = 0;
                v204 = 0;
                v91 = objc_msgSend_getResourceValue_forKey_error_(v77, v89, &v204, v168, &v203, v166);
                v92 = v204;
                v93 = v203;

                if (v92)
                {
                  v95 = v91;
                }

                else
                {
                  v95 = 0;
                }

                if (v95 == 1)
                {
                  v96 = objc_msgSend_assetHandleWithUUID_(selfCopy->_assetHandleTable, v94, v88);
                  v99 = v96;
                  if (v96)
                  {
                    v100 = objc_msgSend_lastUsedTime(v96, v97, v98);
                    v102 = objc_msgSend_laterDate_(v92, v101, v100);
                    v103 = v102 == v92;

                    if (v103)
                    {
                      objc_msgSend_setLastUsedTime_(v99, v104, v92);
                      v106 = objc_msgSend_saveLastUsedTime_(selfCopy->_assetHandleTable, v105, v99);
                    }
                  }

                  else
                  {
                    v109 = [CKDAssetHandle alloc];
                    v99 = objc_msgSend_initWithItemID_UUID_path_(v109, v110, 0, v88, 0);
                    objc_msgSend_setFileSignature_(v99, v111, v169);
                    objc_msgSend_setStatus_(v99, v112, &unk_2838C8130);
                    objc_msgSend_setLastUsedTime_(v99, v113, v92);
                    v115 = objc_msgSend_insertObject_(selfCopy->_assetHandleTable, v114, v99);
                  }
                }
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v92 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                {
                  v116 = objc_msgSend_path(v77, v107, v108);
                  *buf = v166;
                  *&buf[4] = v116;
                  _os_log_debug_impl(&dword_22506F000, v92, OS_LOG_TYPE_DEBUG, "Ignoring file in cache %{public}@", buf, 0xCu);
                }

                v93 = v81;
              }
            }

            else
            {
              v93 = v81;
            }
          }

          objc_autoreleasePoolPop(v72);
        }

        while (v77);

        objc_autoreleasePoolPop(v167);
        v121 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v119, v120);
        v124 = objc_msgSend_evictRecentAssets(v121, v122, v123);

        v127 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v125, v126);
        v129 = objc_msgSend_assetEvictionGracePeriodWithDefaultValue_(v127, v128, 14400);

        v132 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v130, v131);
        v134 = objc_msgSend_assetEvictionGracePeriodOnHighWatermarkWithDefaultValue_(v132, v133, 7200);

        if (v134 >= v129)
        {
          v135 = v129;
        }

        else
        {
          v135 = v134;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v136 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
        {
          v158 = objc_msgSend_fileDownloadPath(selfCopy, v137, v138);
          v161 = objc_msgSend_CKSanitizedPath(v158, v159, v160);
          v164 = objc_msgSend_forced(infoCopy, v162, v163);
          v165 = @"NO";
          *buf = 134219266;
          *&buf[4] = v173;
          *&buf[12] = 2048;
          if (v164)
          {
            v165 = @"YES";
          }

          *&buf[14] = v171;
          *&buf[22] = 2114;
          v219 = v161;
          v220 = 2114;
          v221 = v165;
          v222 = 2048;
          v223 = v129;
          v224 = 2048;
          v225 = v135;
          _os_log_debug_impl(&dword_22506F000, v136, OS_LOG_TYPE_DEBUG, "Evicting %llu files (%llu bytes) at %{public}@ (forced:%{public}@, gracePeriod:%lu, gracePeriodOnHighWatermark:%lu)", buf, 0x3Eu);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v219 = 0;
        v199 = 0;
        v200 = &v199;
        v201 = 0x2020000000;
        v202 = v173;
        v195 = 0;
        v196 = &v195;
        v197 = 0x2020000000;
        v198 = v171;
        v139 = objc_alloc_init(MEMORY[0x277CBEAA8]);
        assetHandleTable = selfCopy->_assetHandleTable;
        v182[0] = MEMORY[0x277D85DD0];
        v182[1] = 3221225472;
        v182[2] = sub_225122E10;
        v182[3] = &unk_278546158;
        v182[4] = selfCopy;
        v141 = v139;
        v183 = v141;
        v142 = infoCopy;
        v194 = v124;
        v184 = v142;
        v186 = &v199;
        v187 = &v195;
        v190 = v129;
        v191 = v135;
        v185 = v178;
        v188 = buf;
        v189 = &v214;
        v192 = v173;
        v193 = v171;
        v144 = objc_msgSend_performTransaction_(assetHandleTable, v143, v182);
        if (objc_msgSend_clearRegisteredItems(v142, v145, v146))
        {
          v147 = selfCopy->_assetHandleTable;
          v180[0] = MEMORY[0x277D85DD0];
          v180[1] = 3221225472;
          v180[2] = sub_22512367C;
          v180[3] = &unk_278546180;
          v180[4] = selfCopy;
          v181 = v142;
          v149 = objc_msgSend_performTransaction_(v147, v148, v180);
        }

        v150 = [CKDAssetCacheEvictionResult alloc];
        v57 = objc_msgSend_initWithBytesCount_purgedBytesCount_purgeableByteCount_filesCount_purgedFilesCount_purgeableFilesCount_(v150, v151, v171, v215[3], v196[3], v173, *(*&buf[8] + 24), v200[3]);

        _Block_object_dispose(&v195, 8);
        _Block_object_dispose(&v199, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v52 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v154 = objc_msgSend_fileDownloadPath(selfCopy, v53, v54);
          v157 = objc_msgSend_CKSanitizedPath(v154, v155, v156);
          *buf = 134218498;
          *&buf[4] = v173;
          *&buf[12] = 2048;
          *&buf[14] = v171;
          *&buf[22] = 2114;
          v219 = v157;
          _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Skipped evicting %llu files (%llu bytes) at %{public}@", buf, 0x20u);
        }

        v55 = [CKDAssetCacheEvictionResult alloc];
        v57 = objc_msgSend_initWithBytesCount_purgedBytesCount_purgeableByteCount_filesCount_purgedFilesCount_purgeableFilesCount_(v55, v56, 0, 0, 0, 0, 0, 0);
      }

      goto LABEL_30;
    }

LABEL_28:
    v57 = 0;
    goto LABEL_31;
  }

  v57 = 0;
LABEL_30:

LABEL_31:
  _Block_object_dispose(&v214, 8);

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

- (void)_expireAssetHandlesWithExpiryDate:(id)date
{
  v51[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = objc_msgSend_mmcsEngineContext(self, v5, v6);
  objc_msgSend_assertMMCSSerialized(v7, v8, v9);

  v10 = [CKDAssetCacheEvictionInfo alloc];
  v12 = objc_msgSend_initWithForced_(v10, v11, 0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v50[0] = @"EXPIRYDATE";
  v50[1] = @"NOT_REGISTERED";
  v51[0] = dateCopy;
  v51[1] = &unk_2838C8130;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v51, v50, 2);
  v16 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self->_assetHandleTable, v15, v14, off_27D719A48, 0, &unk_28385C5A0);
  v41[3] = v16;
  assetHandleTable = self->_assetHandleTable;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_225123D88;
  v35 = &unk_2785461D0;
  v18 = dateCopy;
  v36 = v18;
  selfCopy = self;
  v39 = &v40;
  v19 = v12;
  v38 = v19;
  v21 = objc_msgSend_performTransaction_(assetHandleTable, v20, &v32);
  v22 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v22, v23, @"yyyy-MM-dd HH:mm:ss", v32, v33, v34, v35);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v24 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v27 = v41[3];
    v28 = objc_msgSend_applicationBundleID(self, v25, v26);
    v30 = objc_msgSend_stringFromDate_(v22, v29, v18);
    *buf = 134218498;
    v45 = v27;
    v46 = 2114;
    v47 = v28;
    v48 = 2112;
    v49 = v30;
    _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Expired %lu asset handles for %{public}@ with lastUsedTime before %@", buf, 0x20u);
  }

  _Block_object_dispose(&v40, 8);
  v31 = *MEMORY[0x277D85DE8];
}

@end
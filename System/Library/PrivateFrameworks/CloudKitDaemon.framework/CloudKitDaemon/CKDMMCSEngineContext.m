@interface CKDMMCSEngineContext
+ (BOOL)hasCachedCKDMMCSEngineContextForPath:(id)a3;
+ (BOOL)tearDownMMCSEngineWithContext:(id)a3;
+ (id)_appID;
+ (id)setupMMCSEngineWithApplicationBundleID:(id)a3 path:(id)a4 wasCached:(BOOL *)a5 error:(id *)a6;
+ (id)sharedContextsByPath;
+ (id)sharedContextsQueue;
- (BOOL)_setupMMCSEngineWithError:(id *)a3;
- (BOOL)_setupMMCSEngineWithRetryCount:(unint64_t)a3 error:(id *)a4;
- (CKDMMCS)MMCS;
- (CKDMMCSEngineContext)initWithApplicationBundleID:(id)a3 path:(id)a4;
- (id)CKPropertiesDescription;
- (int64_t)decRefCount;
- (int64_t)incRefCount;
- (unint64_t)nextAvailableItemID;
- (void)MMCSRunSerialized:(id)a3;
- (void)MMCSSerializeAsyncRecursive:(id)a3;
- (void)MMCSSerializeSyncRecursive:(id)a3;
- (void)_tearDownMMCSEngine;
- (void)assertMMCSSerialized;
- (void)cancelRequestWithContext:(void *)a3;
- (void)dealloc;
- (void)stopTrackingItemID:(unint64_t)a3;
@end

@implementation CKDMMCSEngineContext

+ (id)_appID
{
  v2 = CKBuildVersion();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"%@/%@", @"com.apple.CloudKit", v2);

  return v4;
}

+ (id)sharedContextsQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225132410;
  block[3] = &unk_278545AD0;
  block[4] = a1;
  if (qword_280D580E0 != -1)
  {
    dispatch_once(&qword_280D580E0, block);
  }

  v2 = qword_280D580D8;

  return v2;
}

+ (id)sharedContextsByPath
{
  if (qword_280D580F0 != -1)
  {
    dispatch_once(&qword_280D580F0, &unk_28385C6A0);
  }

  v3 = qword_280D580E8;

  return v3;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 3);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_state(self, v5, v6);
  v10 = objc_msgSend_refCount(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"state=%ld, refCount=%ld", v7, v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v16 = objc_msgSend_applicationBundleID(self, v14, v15);

  if (v16)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_applicationBundleID(self, v17, v18);
    v22 = objc_msgSend_stringWithFormat_(v19, v21, @"applicationBundleID=%@", v20);
    objc_msgSend_addObject_(v3, v23, v22);
  }

  v24 = objc_msgSend_path(self, v17, v18);

  if (v24)
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_msgSend_path(self, v25, v26);
    v31 = objc_msgSend_CKSanitizedPath(v28, v29, v30);
    v33 = objc_msgSend_stringWithFormat_(v27, v32, @"path=%@", v31);
    objc_msgSend_addObject_(v3, v34, v33);
  }

  v35 = objc_msgSend_componentsJoinedByString_(v3, v25, @", ");

  return v35;
}

- (int64_t)incRefCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_refCount + 1;
  v2->_refCount = v3;
  objc_sync_exit(v2);

  return v3;
}

- (void)assertMMCSSerialized
{
  serializedThread = self->_serializedThread;
  if (serializedThread != pthread_self())
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a2, self, @"CKDMMCSEngineContext.m", 496, @"Expected to be serialized");
  }
}

- (int64_t)decRefCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_refCount - 1;
  v2->_refCount = v3;
  objc_sync_exit(v2);

  return v3;
}

- (void)_tearDownMMCSEngine
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, a2, v2);
  dispatch_assert_queue_V2(v4);

  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Tearing down MMCS engine: %@", buf, 0xCu);
  }

  if (objc_msgSend_MMCSEngine(self, v8, v9))
  {
    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = self;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Destroying MMCS engine %@", buf, 0xCu);
    }

    objc_msgSend_setState_(self, v11, 2);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_225099D10;
    v15[3] = &unk_278545A00;
    v15[4] = self;
    objc_msgSend_MMCSSerializeSyncRecursive_(self, v12, v15);
    objc_msgSend_setState_(self, v13, 3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Deallocating MMCS engine context: %@", buf, 0xCu);
  }

  if (objc_msgSend_refCount(self, v5, v6))
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v13 = objc_msgSend_refCount(self, v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v14, a2, self, @"CKDMMCSEngineContext.m", 95, @"Expected refCount=0 (%ld)", v13);
  }

  v15.receiver = self;
  v15.super_class = CKDMMCSEngineContext;
  [(CKDMMCSEngineContext *)&v15 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (CKDMMCSEngineContext)initWithApplicationBundleID:(id)a3 path:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v11 = a4;
  if (v11)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDMMCSEngineContext.m", 76, @"Expected non-nil path");

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDMMCSEngineContext.m", 77, @"Expected non-nil applicationBundleID");

LABEL_3:
  v26.receiver = self;
  v26.super_class = CKDMMCSEngineContext;
  v12 = [(CKDMMCSEngineContext *)&v26 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_refCount = xmmword_225447C80;
    objc_storeStrong(&v12->_applicationBundleID, a3);
    objc_storeStrong(&v13->_path, a4);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("CKDMMCSEngineContext queue", v14);
    mmcsQueue = v13->_mmcsQueue;
    v13->_mmcsQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
    inMemoryItemsIDs = v13->_inMemoryItemsIDs;
    v13->_inMemoryItemsIDs = v17;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Initialized MMCS engine context: %@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_setupMMCSEngineWithError:(id *)a3
{
  v96[3] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, a2, a3);
  dispatch_assert_queue_V2(v6);

  if (objc_msgSend_state(self, v7, v8) != 3)
  {
    v87 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v87, v88, a2, self, @"CKDMMCSEngineContext.m", 266, @"Expected state %ld for MMCS engine context", 3, self);
  }

  if (objc_msgSend_MMCSEngine(self, v9, v10))
  {
    v89 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v89, v90, a2, self, @"CKDMMCSEngineContext.m", 267, @"Expected nil MMCS engine for MMCS engine context %@", self);
  }

  v13 = *MEMORY[0x277D25450];
  v95[0] = *MEMORY[0x277D25448];
  v95[1] = v13;
  v96[0] = MEMORY[0x277CBEC38];
  v96[1] = MEMORY[0x277CBEC38];
  v95[2] = *MEMORY[0x277D25440];
  v96[2] = MEMORY[0x277CBEC38];
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v96, v95, 3);
  v15 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = MEMORY[0x277CBC830];
  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v66 = v17;
    v69 = objc_msgSend_path(self, v67, v68);
    v72 = objc_msgSend_CKSanitizedPath(v69, v70, v71);
    *buf = 138543362;
    v92 = v72;
    _os_log_debug_impl(&dword_22506F000, v66, OS_LOG_TYPE_DEBUG, "Creating MMCS engine at %{public}@", buf, 0xCu);
  }

  v20 = objc_msgSend_path(self, v18, v19);
  v21 = CKCreateDirectoryAtPath();
  v22 = 0;

  if (v21)
  {
    mmcsQueue = self->_mmcsQueue;
    v26 = MEMORY[0x277CBEBC0];
    v27 = objc_msgSend_path(self, v23, v24);
    objc_msgSend_fileURLWithPath_isDirectory_(v26, v28, v27, 1);
    objc_msgSend__appID(CKDMMCSEngineContext, v29, v30);
    v31 = MMCSEngineCreateWithTargetDispatchQueue();
    objc_msgSend_setMMCSEngine_(self, v32, v31);

    if (objc_msgSend_MMCSEngine(self, v33, v34))
    {
      v37 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v35, v36);
      v38 = 1;
      objc_msgSend_enableMMCSMetricsWithDefaultValue_(v37, v39, 1);

      objc_msgSend_MMCSEngine(self, v40, v41);
      MMCSEngineSetMetricsEnabled();
      objc_msgSend_MMCSEngine(self, v42, v43);
      v44 = MMCSGetMaxChunkCountForSection();
      objc_msgSend_setMaxChunkCountForSection_(self, v45, v44);
      objc_msgSend_setState_(self, v46, 1);
      goto LABEL_26;
    }

    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v61 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v80 = v61;
      v83 = objc_msgSend_path(self, v81, v82);
      v86 = objc_msgSend_CKSanitizedPath(v83, v84, v85);
      *buf = 138543362;
      v92 = v86;
      _os_log_error_impl(&dword_22506F000, v80, OS_LOG_TYPE_ERROR, "Failed creating MMCS engine at %{public}@", buf, 0xCu);
    }

    v60 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v62, *MEMORY[0x277CBC120], 3001, @"MMCSEngineCreate failed");
  }

  else
  {
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v73 = v47;
      v76 = objc_msgSend_path(self, v74, v75);
      v79 = objc_msgSend_CKSanitizedPath(v76, v77, v78);
      *buf = 138543618;
      v92 = v79;
      v93 = 2112;
      v94 = v22;
      _os_log_error_impl(&dword_22506F000, v73, OS_LOG_TYPE_ERROR, "Error creating MMCS directory at %{public}@: %@", buf, 0x16u);
    }

    v50 = MEMORY[0x277CBC560];
    v51 = *MEMORY[0x277CBC120];
    v52 = objc_msgSend_path(self, v48, v49);
    v55 = objc_msgSend_path(self, v53, v54);
    v58 = objc_msgSend_CKSanitizedPath(v55, v56, v57);
    v60 = objc_msgSend_errorWithDomain_code_error_path_format_(v50, v59, v51, 1000, v22, v52, @"Error creating MMCS directory at %@", v58);

    v22 = v52;
  }

  if (a3)
  {
    v63 = v60;
    v38 = 0;
    *a3 = v60;
  }

  else
  {
    v38 = 0;
  }

  v22 = v60;
LABEL_26:

  v64 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)_setupMMCSEngineWithRetryCount:(unint64_t)a3 error:(id *)a4
{
  v7 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, a2, a3);
  dispatch_assert_queue_V2(v7);

  if (a3)
  {
    v24 = 0;
    v9 = objc_msgSend__setupMMCSEngineWithError_(self, v8, &v24);
    v12 = v24;
    if (v9)
    {
      v13 = 1;
      goto LABEL_14;
    }

    v15 = 0;
    while (1)
    {
      if (!v15)
      {
        v16 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v10, v11);
        v19 = objc_msgSend_path(self, v17, v18);
        objc_msgSend_removeItemAtPath_error_(v16, v20, v19, 0);
      }

      if (a3 - 1 == v15)
      {
        break;
      }

      v24 = 0;
      v22 = objc_msgSend__setupMMCSEngineWithError_(self, v21, &v24);
      v12 = v24;
      ++v15;
      if (v22)
      {
        v13 = v15 < a3;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    v14 = v12;
    v13 = 0;
    *a4 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

+ (BOOL)hasCachedCKDMMCSEngineContextForPath:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v4, v5);
  dispatch_assert_queue_V2(v6);

  v9 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v3);

  return v11 != 0;
}

+ (id)setupMMCSEngineWithApplicationBundleID:(id)a3 path:(id)a4 wasCached:(BOOL *)a5 error:(id *)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v15 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v13, v14);
  dispatch_assert_queue_V2(v15);

  if (a5)
  {
    *a5 = 0;
  }

  if (v12)
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, a1, @"CKDMMCSEngineContext.m", 391, @"Expected non-nil path");

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v43 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v44, a2, a1, @"CKDMMCSEngineContext.m", 392, @"Expected non-nil applicationBundleID");

LABEL_5:
  v18 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v16, v17);
  v20 = objc_msgSend_objectForKey_(v18, v19, v12);

  if (v20)
  {
    objc_msgSend_incRefCount(v20, v21, v22);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = v20;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Found a cached engine context %@", buf, 0xCu);
    }

    v24 = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v25 = [CKDMMCSEngineContext alloc];
    v20 = objc_msgSend_initWithApplicationBundleID_path_(v25, v26, v11, v12);
    v45 = 0;
    v28 = objc_msgSend__setupMMCSEngineWithRetryCount_error_(v20, v27, 2, &v45);
    v24 = v45;
    if (v28)
    {
      objc_msgSend_incRefCount(v20, v29, v30);
      v33 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v31, v32);
      v36 = objc_msgSend_path(v20, v34, v35);
      objc_msgSend_setObject_forKey_(v33, v37, v20, v36);
    }

    else
    {

      if (a6)
      {
        v38 = v24;
        v20 = 0;
        *a6 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (BOOL)tearDownMMCSEngineWithContext:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v4, v5);
  dispatch_assert_queue_V2(v6);

  if (v3 && !objc_msgSend_decRefCount(v3, v7, v8))
  {
    objc_msgSend__tearDownMMCSEngine(v3, v9, v10);
    v14 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v12, v13);
    v17 = objc_msgSend_path(v3, v15, v16);
    v19 = objc_msgSend_objectForKey_(v14, v18, v17);

    v20 = *MEMORY[0x277CBC878];
    v21 = *MEMORY[0x277CBC880];
    if (v19 == v3)
    {
      if (v21 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v20);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v38 = v30;
        v41 = objc_msgSend_path(v3, v39, v40);
        v42 = 138412546;
        v43 = v3;
        v44 = 2114;
        v45 = v41;
        _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Removing context %@ for path %{public}@ from sharedContextsByPath", &v42, 0x16u);
      }

      v23 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v31, v32);
      v26 = objc_msgSend_path(v3, v33, v34);
      objc_msgSend_removeObjectForKey_(v23, v35, v26);
    }

    else
    {
      if (v21 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v20);
      }

      v22 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v23 = v22;
      v26 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v24, v25);
      v29 = objc_msgSend_path(v3, v27, v28);
      v42 = 138412802;
      v43 = v3;
      v44 = 2112;
      v45 = v26;
      v46 = 2114;
      v47 = v29;
      _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "context %@ not in sharedContextsByPath %@ for key %{public}@", &v42, 0x20u);
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  v36 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)cancelRequestWithContext:(void *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_MMCSEngine(self, a2, a3);
  if (!v8)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDMMCSEngineContext.m", 448, @"Expected non-nil MMCS engine");
  }

  v9 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = a3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Cancelling requests for MMCS engine wrapper %@ and context %@", buf, 0x16u);
  }

  CFRetain(v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225133CF4;
  v17[3] = &unk_278546528;
  v17[5] = v8;
  v17[6] = a3;
  v17[4] = self;
  objc_msgSend_MMCSSerializeSyncRecursive_(self, v12, v17);
  if (*v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = a3;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Waiting for MMCS engine wrapper %@ to cancel the requests for %@", buf, 0x16u);
  }

  CFRelease(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)MMCSSerializeSyncRecursive:(id)a3
{
  v4 = a3;
  serializedThread = self->_serializedThread;
  if (serializedThread == pthread_self())
  {
    v4[2](v4);
  }

  else
  {
    mmcsQueue = self->_mmcsQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_225133EB4;
    v7[3] = &unk_278546550;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(mmcsQueue, v7);
  }
}

- (void)MMCSSerializeAsyncRecursive:(id)a3
{
  v5 = a3;
  if (!objc_msgSend_MMCSEngine(self, v6, v7))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDMMCSEngineContext.m", 481, @"Expected non-nil MMCS engine");
  }

  mmcsQueue = self->_mmcsQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225133FB0;
  v14[3] = &unk_278546550;
  v14[4] = self;
  v15 = v5;
  v11 = v5;
  dispatch_async(mmcsQueue, v14);
}

- (void)MMCSRunSerialized:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  dispatch_assert_queue_V2(self->_mmcsQueue);
  sub_2250961E0(&self->_serializedThread, v5);
  objc_autoreleasePoolPop(v4);
}

- (unint64_t)nextAvailableItemID
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = self->_inMemoryItemsIDs;
  objc_sync_enter(v3);
  inMemoryItemsIDs = self->_inMemoryItemsIDs;
  CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock();
  v6 = v10[3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __assert_rtn("[CKDMMCSEngineContext nextAvailableItemID]", "CKDMMCSEngineContext.m", 512, "0 && itemID overflow");
  }

  objc_msgSend_addIndex_(self->_inMemoryItemsIDs, v5, v6);
  objc_sync_exit(v3);

  v7 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v7 - 0x331272800;
}

- (void)stopTrackingItemID:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = self->_inMemoryItemsIDs;
  objc_sync_enter(v5);
  if (objc_msgSend_containsIndex_(self->_inMemoryItemsIDs, v6, a3 + 0x331272800))
  {
    objc_msgSend_removeIndex_(self->_inMemoryItemsIDs, v7, a3 + 0x331272800);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Attempted to stop tracking untracked itemID %llu", &v10, 0xCu);
    }
  }

  objc_sync_exit(v5);

  v9 = *MEMORY[0x277D85DE8];
}

- (CKDMMCS)MMCS
{
  WeakRetained = objc_loadWeakRetained(&self->_MMCS);

  return WeakRetained;
}

@end
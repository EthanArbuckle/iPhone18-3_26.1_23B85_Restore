@interface CKDSQLiteCache
+ (id)sharedCache;
- (CKDLogicalDeviceContext)deviceContext;
- (CKDSQLiteCache)initWithCacheDir:(id)a3;
- (CKDSQLiteCache)initWithDeviceContext:(id)a3;
- (id)initOrExitWithPath:(id)a3 isSharedCache:(BOOL)a4;
@end

@implementation CKDSQLiteCache

- (id)initOrExitWithPath:(id)a3 isSharedCache:(BOOL)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = objc_msgSend_initWithCacheDir_(self, v7, v6);
  v40 = 0;
  LOBYTE(self) = objc_msgSend_openWithError_(v8, v9, &v40);
  v10 = v40;
  v12 = v10;
  if (self)
  {
    v13 = v10;
  }

  else
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_CKSanitizedPath(v6, v16, v17);
    v19 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = MEMORY[0x277CBC830];
    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v42 = v15;
      v43 = 2112;
      v44 = v18;
      v45 = 2112;
      v46 = v12;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "%@ failed to open at path %@: %@", buf, 0x20u);
    }

    objc_msgSend_remove(v8, v22, v23);
    v24 = objc_alloc(objc_opt_class());
    v26 = objc_msgSend_initWithCacheDir_(v24, v25, v6);

    v39 = v12;
    v28 = objc_msgSend_openWithError_(v26, v27, &v39);
    v13 = v39;

    if ((v28 & 1) == 0)
    {
      pthread_mutex_unlock(&stru_280D54E50);
      v32 = objc_msgSend_CKIsDiskFullError_(MEMORY[0x277CCA9B8], v31, v13);
      v33 = *MEMORY[0x277CBC878];
      v34 = *v19;
      if (v32)
      {
        if (*v19 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v33);
        }

        v35 = *v20;
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v42 = v15;
          v43 = 2114;
          v44 = v18;
          v45 = 2114;
          v46 = v13;
          _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Exiting due to disk full error creating shared database for %{public}@ at path %{public}@: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        if (*v19 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v33);
        }

        v36 = *v20;
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543874;
          v42 = v15;
          v43 = 2114;
          v44 = v18;
          v45 = 2114;
          v46 = v13;
          _os_log_fault_impl(&dword_22506F000, v36, OS_LOG_TYPE_FAULT, "Exiting due to error creating shared database for %{public}@ at path %{public}@: %{public}@", buf, 0x20u);
        }
      }

      exit(1);
    }

    v8 = v26;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_225162EA4;
  v37[3] = &unk_278546E18;
  v38 = a4;
  objc_msgSend_setInvalidationHandler_(v8, v11, v37);

  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)sharedCache
{
  pthread_mutex_lock(&stru_280D54E50);
  isSharedCache = objc_msgSend_objectForKey_(qword_280D586D8, v3, a1);
  if (!isSharedCache)
  {
    if (!qword_280D586D8)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = qword_280D586D8;
      qword_280D586D8 = v7;
    }

    v9 = objc_msgSend_cacheDirectory(a1, v4, v5);
    v12 = objc_msgSend_dbFileName(a1, v10, v11);
    v14 = objc_msgSend_stringByAppendingPathComponent_(v9, v13, v12);

    v17 = objc_msgSend_currentProcess(CKDDaemonProcess, v15, v16);
    LOBYTE(v12) = objc_msgSend_isSystemInstalledBinary(v17, v18, v19);

    if ((v12 & 1) == 0)
    {
      v21 = objc_msgSend_stringByAppendingString_(v14, v20, @"_debug");

      v14 = v21;
    }

    v22 = [a1 alloc];
    isSharedCache = objc_msgSend_initOrExitWithPath_isSharedCache_(v22, v23, v14, 1);
    objc_msgSend_setObject_forKey_(qword_280D586D8, v24, isSharedCache, a1);
  }

  pthread_mutex_unlock(&stru_280D54E50);

  return isSharedCache;
}

- (CKDSQLiteCache)initWithDeviceContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_dbFileName(v5, v6, v7);
  v11 = objc_msgSend_currentProcess(CKDDaemonProcess, v9, v10);
  isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v11, v12, v13);

  if ((isSystemInstalledBinary & 1) == 0)
  {
    v17 = objc_msgSend_stringByAppendingString_(v8, v15, @"_debug");

    v8 = v17;
  }

  v18 = objc_msgSend_cacheDirectory(v4, v15, v16);
  v20 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v18, v19, v8, 0);

  v23 = objc_msgSend_path(v20, v21, v22);
  isSharedCache = objc_msgSend_initOrExitWithPath_isSharedCache_(self, v24, v23, 0);

  objc_msgSend_setDeviceContext_(isSharedCache, v26, v4);
  return isSharedCache;
}

- (CKDSQLiteCache)initWithCacheDir:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_cacheDatabaseSchema(v5, v6, v7);
  v11.receiver = self;
  v11.super_class = CKDSQLiteCache;
  v9 = [(CKSQLite *)&v11 initWithPath:v4 schema:v8];

  return v9;
}

- (CKDLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

@end
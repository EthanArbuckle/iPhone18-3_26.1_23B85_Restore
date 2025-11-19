@interface FlexCloudManager
+ (id)createCloudManager:(int64_t)a3 withLibrary:(id)a4 options:(id)a5;
- (FMSongLibrary)library;
- (FlexCloudManager)initWithLibrary:(id)a3;
- (id)_existingSongForUID:(id)a3;
- (void)_registerSongs:(id)a3;
- (void)requestDownloadOfAsset:(id)a3;
- (void)requestPurgeOfAsset:(id)a3;
- (void)retryFetchAllSongs;
@end

@implementation FlexCloudManager

+ (id)createCloudManager:(int64_t)a3 withLibrary:(id)a4 options:(id)a5
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v7 = a5;
    v8 = a4;
    v9 = [FlexMobileAssetManagerV2 alloc];
    v5 = objc_msgSend_initWithLibrary_options_(v9, v10, v8, v7, v11);
  }

  return v5;
}

- (FlexCloudManager)initWithLibrary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FlexCloudManager;
  v5 = [(FlexCloudManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_library, v4);
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
    cloudManagedSongs = v6->_cloudManagedSongs;
    v6->_cloudManagedSongs = v11;

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14, v15, v16);
    cloudManagedSongsByUID = v6->_cloudManagedSongsByUID;
    v6->_cloudManagedSongsByUID = v17;

    v6->_retryCount = 0;
  }

  return v6;
}

- (void)_registerSongs:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v6 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v54, v60, 16);
  if (v12)
  {
    v14 = *v55;
    *&v13 = 138412290;
    v53 = v13;
    do
    {
      v15 = 0;
      do
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v54 + 1) + 8 * v15);
        v17 = objc_msgSend_cloudManagedSongsByUID(v5, v8, v9, v10, v11, v53, v54);
        v22 = objc_msgSend_uid(v16, v18, v19, v20, v21);
        v26 = objc_msgSend_objectForKey_(v17, v23, v22, v24, v25);

        if (v26)
        {
          v31 = FlexLogForCategory(2uLL);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v36 = objc_msgSend_uid(v16, v32, v33, v34, v35);
            *buf = v53;
            v59 = v36;
            _os_log_impl(&dword_24B7E5000, v31, OS_LOG_TYPE_DEFAULT, "Song with uid: %@ is already registered", buf, 0xCu);
          }
        }

        else
        {
          v37 = objc_msgSend_cloudManagedSongs(v5, v27, v28, v29, v30);
          objc_msgSend_addObject_(v37, v38, v16, v39, v40);

          v31 = objc_msgSend_cloudManagedSongsByUID(v5, v41, v42, v43, v44);
          v49 = objc_msgSend_uid(v16, v45, v46, v47, v48);
          objc_msgSend_setObject_forKey_(v31, v50, v16, v49, v51);
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v54, v60, 16);
    }

    while (v12);
  }

  objc_sync_exit(v5);
  v52 = *MEMORY[0x277D85DE8];
}

- (void)retryFetchAllSongs
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v7 = objc_msgSend_retryCount(v2, v3, v4, v5, v6);
  v8 = pow(3.0, v7);
  v9 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_retryCount(v2, v10, v11, v12, v13);
    *buf = 134217984;
    v28 = pow(3.0, v14) * 60.0;
    _os_log_impl(&dword_24B7E5000, v9, OS_LOG_TYPE_DEFAULT, "refresh requested. will try again in %1.0f seconds", buf, 0xCu);
  }

  objc_initWeak(buf, v2);
  v15 = dispatch_time(0, 1000000000 * (v8 * 60.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24B7E8764;
  block[3] = &unk_27900E928;
  objc_copyWeak(&v26, buf);
  dispatch_after(v15, MEMORY[0x277D85CD0], block);
  v20 = objc_msgSend_retryCount(v2, v16, v17, v18, v19);
  objc_msgSend_setRetryCount_(v2, v21, v20 + 1, v22, v23);
  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
  objc_sync_exit(v2);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)requestDownloadOfAsset:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  objc_msgSend_requestDownloadOfAsset_withOptions_(self, v5, v4, v7, v6);
}

- (void)requestPurgeOfAsset:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_isCloudBacked(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_songUID(v4, v9, v10, v11, v12);
    v14 = self;
    objc_sync_enter(v14);
    v19 = objc_msgSend_cloudManagedSongsByUID(v14, v15, v16, v17, v18);
    v23 = objc_msgSend_objectForKey_(v19, v20, v13, v21, v22);

    if (v23)
    {
      v28 = objc_msgSend_assetID(v4, v24, v25, v26, v27);
      v32 = objc_msgSend_existingAssetWithID_(v23, v29, v28, v30, v31);

      if (v32 == v4)
      {
        v36 = objc_msgSend__purgeAndReturnReplacementFor_(v14, v33, v4, v34, v35);
        v44[0] = v36;
        v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v44, 1, v38);
        objc_msgSend_updateAssets_(v23, v40, v39, v41, v42);
      }
    }

    objc_sync_exit(v14);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)_existingSongForUID:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10 = objc_msgSend_cloudManagedSongsByUID(v5, v6, v7, v8, v9);
  v14 = objc_msgSend_objectForKey_(v10, v11, v4, v12, v13);

  if (!v14)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = objc_msgSend_library(v5, v15, v16, v17, v18, 0);
    v24 = objc_msgSend_bundledSongs(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_allValues(v24, v25, v26, v27, v28);

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v45, v49, 16);
    if (v14)
    {
      v35 = *v46;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v45 + 1) + 8 * i);
          v38 = objc_msgSend_uid(v37, v31, v32, v33, v34);
          isEqualToString = objc_msgSend_isEqualToString_(v38, v39, v4, v40, v41);

          if (isEqualToString)
          {
            v14 = v37;
            goto LABEL_12;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v45, v49, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  objc_sync_exit(v5);

  v43 = *MEMORY[0x277D85DE8];

  return v14;
}

- (FMSongLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

@end
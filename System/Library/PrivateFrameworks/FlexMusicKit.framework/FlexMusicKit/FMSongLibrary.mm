@interface FMSongLibrary
+ (id)sharedLibraryWithOptions:(id)options;
- (BOOL)supportForCloud;
- (FMSongLibrary)init;
- (FMSongLibrary)initWithOptions:(id)options;
- (id)fetchSongWithUID:(id)d;
- (id)fetchSongsWithOptions:(id)options;
- (void)_createCloudManagerOfType:(int64_t)type;
- (void)_loadBundledSongs;
- (void)_notifySongsChanged:(id)changed;
- (void)_setupReachability;
- (void)_updateFromCloud;
- (void)cancelDownloadOfAllAssets;
- (void)dealloc;
- (void)networkStatusChanged:(id)changed;
- (void)purgeAllLocalCachedAssetsWithIDs:(id)ds;
- (void)requestDownloadOfAllAssetsWithIDs:(id)ds;
- (void)requestDownloadOfAllAssetsWithIDs:(id)ds withOptions:(id)options;
@end

@implementation FMSongLibrary

+ (id)sharedLibraryWithOptions:(id)options
{
  optionsCopy = options;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24B7EAB20;
  block[3] = &unk_27900E970;
  v10 = optionsCopy;
  v4 = qword_27F060D30;
  v5 = optionsCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_27F060D30, block);
  }

  v6 = qword_27F060D28;
  v7 = qword_27F060D28;

  return v6;
}

- (FMSongLibrary)init
{
  v4 = objc_msgSend_initWithOptions_(self, a2, MEMORY[0x277CBEC10], v2, v3);
  v5 = FlexLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B7E5000, v5, OS_LOG_TYPE_DEFAULT, "Deprecated: use -initWithOptions: instead", v7, 2u);
  }

  return v4;
}

- (FMSongLibrary)initWithOptions:(id)options
{
  v53 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v50.receiver = self;
  v50.super_class = FMSongLibrary;
  v6 = [(FMSongLibrary *)&v50 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v11 = objc_msgSend_objectForKey_(optionsCopy, v8, @"CloudSupportDisabled", v9, v10);
    v16 = objc_msgSend_BOOLValue(v11, v12, v13, v14, v15);

    v20 = objc_msgSend_objectForKey_(optionsCopy, v17, @"NetworkingDisabled", v18, v19);
    v7->_networkingIsDisabled = objc_msgSend_BOOLValue(v20, v21, v22, v23, v24);

    if (v7->_networkingIsDisabled)
    {
      v7->_networkStatus = 0;
    }

    else
    {
      objc_msgSend__setupReachability(v7, v25, v26, v27, v28);
    }

    v33 = objc_msgSend_date(MEMORY[0x277CBEAA8], v25, v26, v27, v28);
    v7->_contactedCloud = 0;
    if ((v16 & 1) == 0)
    {
      objc_msgSend__createCloudManagerOfType_(v7, v29, 0, v31, v32);
    }

    objc_msgSend__loadBundledSongs(v7, v29, v30, v31, v32);
    if (!v7->_networkingIsDisabled)
    {
      objc_msgSend__updateFromCloud(v7, v34, v35, v36, v37);
    }

    v38 = FlexLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_msgSend_date(MEMORY[0x277CBEAA8], v39, v40, v41, v42);
      objc_msgSend_timeIntervalSinceDate_(v43, v44, v33, v45, v46);
      *buf = 134217984;
      v52 = v47;
      _os_log_impl(&dword_24B7E5000, v38, OS_LOG_TYPE_DEFAULT, "library initialized in %.2f seconds\n", buf, 0xCu);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v6, v7, self, v8, v9);

  v10.receiver = self;
  v10.super_class = FMSongLibrary;
  [(FMSongLibrary *)&v10 dealloc];
}

- (void)cancelDownloadOfAllAssets
{
  v9 = objc_msgSend_cloudManager(self, a2, v2, v3, v4);
  objc_msgSend_cancelDownloadOfAllAssets(v9, v5, v6, v7, v8);
}

- (id)fetchSongWithUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v9 = objc_msgSend_cloudManager(self, v4, v5, v6, v7);
    objc_sync_enter(v9);
    v14 = objc_msgSend_cloudManager(self, v10, v11, v12, v13);
    v18 = objc_msgSend_fetchSongWithUID_(v14, v15, dCopy, v16, v17);

    objc_sync_exit(v9);
    if (!v18)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v24 = objc_msgSend_bundledSongs(selfCopy, v20, v21, v22, v23);
      v18 = objc_msgSend_objectForKey_(v24, v25, dCopy, v26, v27);

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v18 = 0;
  }

  if (objc_msgSend_recalled(v18, v4, v5, v6, v7))
  {

    v18 = 0;
  }

  return v18;
}

- (id)fetchSongsWithOptions:(id)options
{
  v108[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7, v8);
  v14 = objc_msgSend_set(MEMORY[0x277CBEB58], v10, v11, v12, v13);
  v22 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v15, @"recalled == NO", v16, v17);
  v23 = v22;
  if (optionsCopy)
  {
    v24 = objc_msgSend_predicate(optionsCopy, v18, v19, v20, v21);

    v23 = v22;
    if (v24)
    {
      v25 = MEMORY[0x277CCA920];
      v108[0] = v22;
      v26 = objc_msgSend_predicate(optionsCopy, v18, v19, v20, v21);
      v108[1] = v26;
      v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v108, 2, v28);
      v23 = objc_msgSend_andPredicateWithSubpredicates_(v25, v30, v29, v31, v32);
    }
  }

  v33 = objc_msgSend_cloudManager(self, v18, v19, v20, v21);
  objc_sync_enter(v33);
  v38 = objc_msgSend_cloudManager(self, v34, v35, v36, v37);
  v42 = objc_msgSend_fetchSongsWithOptions_(v38, v39, optionsCopy, v40, v41);

  v46 = objc_msgSend_filteredArrayUsingPredicate_(v42, v43, v23, v44, v45);
  objc_msgSend_addObjectsFromArray_(v14, v47, v46, v48, v49);

  objc_sync_exit(v33);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v55 = objc_msgSend_bundledSongs(selfCopy, v51, v52, v53, v54);
  v60 = objc_msgSend_allValues(v55, v56, v57, v58, v59);
  v64 = objc_msgSend_filteredArrayUsingPredicate_(v60, v61, v23, v62, v63);
  objc_msgSend_addObjectsFromArray_(v14, v65, v64, v66, v67);

  objc_sync_exit(selfCopy);
  v72 = objc_msgSend_sortDescriptors(optionsCopy, v68, v69, v70, v71);

  if (v72)
  {
    v77 = objc_msgSend_sortDescriptors(optionsCopy, v73, v74, v75, v76);
    v81 = objc_msgSend_sortedArrayUsingDescriptors_(v14, v78, v77, v79, v80);

    objc_msgSend_removeAllObjects(v14, v82, v83, v84, v85);
    objc_msgSend_addObjectsFromArray_(v14, v86, v81, v87, v88);
  }

  v89 = FlexLogForCategory(0);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    v94 = objc_msgSend_date(MEMORY[0x277CBEAA8], v90, v91, v92, v93);
    objc_msgSend_timeIntervalSinceDate_(v94, v95, v9, v96, v97);
    v106 = 134217984;
    v107 = v98;
    _os_log_impl(&dword_24B7E5000, v89, OS_LOG_TYPE_DEFAULT, "fetchSongsWithOptions fetched in %.2f seconds\n", &v106, 0xCu);
  }

  v103 = objc_msgSend_allObjects(v14, v99, v100, v101, v102);

  v104 = *MEMORY[0x277D85DE8];

  return v103;
}

- (void)_loadBundledSongs
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_objectForKey_(self->_options, a2, @"FMSongLibraryInitOption_CustomBundledSongsPath", v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = objc_msgSend_pathToBundledResourceWithName_(FlexUtilities, v6, @"FlexAudio", v7, v8);
  }

  v14 = v10;
  v15 = objc_msgSend_loadSongsAndArtworkInFolderAtPath_(FMSong, v11, v10, v12, v13);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18, v19, v20);
  objc_msgSend_setBundledSongs_(selfCopy, v22, v21, v23, v24);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v25 = v15;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v55, v63, 16);
  if (v31)
  {
    v32 = *v56;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(v25);
        }

        v34 = *(*(&v55 + 1) + 8 * i);
        v35 = objc_msgSend_bundledSongs(selfCopy, v27, v28, v29, v30, v55);
        v40 = objc_msgSend_uid(v34, v36, v37, v38, v39);
        objc_msgSend_setObject_forKeyedSubscript_(v35, v41, v34, v40, v42);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v55, v63, 16);
    }

    while (v31);
  }

  objc_sync_exit(selfCopy);
  v43 = FlexLogForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v48 = objc_msgSend_bundledSongs(selfCopy, v44, v45, v46, v47);
    v53 = objc_msgSend_count(v48, v49, v50, v51, v52);
    *buf = 134218242;
    v60 = v53;
    v61 = 2112;
    v62 = v14;
    _os_log_impl(&dword_24B7E5000, v43, OS_LOG_TYPE_DEFAULT, "loading %lu songs from %@", buf, 0x16u);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)_setupReachability
{
  v6 = objc_msgSend_reachabilityForInternetConnection(FlexReachability, a2, v2, v3, v4);
  objc_msgSend_setFlexReachability_(self, v7, v6, v8, v9);

  v14 = objc_msgSend_flexReachability(self, v10, v11, v12, v13);
  v19 = objc_msgSend_currentReachabilityStatus(v14, v15, v16, v17, v18);
  objc_msgSend_setNetworkStatus_(self, v20, v19, v21, v22);

  v27 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v23, v24, v25, v26);
  objc_msgSend_addObserver_selector_name_object_(v27, v28, self, sel_networkStatusChanged_, @"kFlexNetworkReachabilityChangedNotification", 0);

  v37 = objc_msgSend_flexReachability(self, v29, v30, v31, v32);
  objc_msgSend_startNotifier(v37, v33, v34, v35, v36);
}

- (void)networkStatusChanged:(id)changed
{
  v6 = objc_msgSend_flexReachability(self, a2, changed, v3, v4);
  v11 = objc_msgSend_currentReachabilityStatus(v6, v7, v8, v9, v10);

  if (!objc_msgSend_networkStatus(self, v12, v13, v14, v15) && v11)
  {
    if ((objc_msgSend_contactedCloud(self, v16, v17, v18, v19) & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_24B7EB6D8;
      block[3] = &unk_27900E970;
      block[4] = self;
      if (qword_27F060D38 != -1)
      {
        dispatch_once(&qword_27F060D38, block);
      }
    }

    v24 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v20, v21, v22, v23);
    objc_msgSend_postNotificationName_object_(v24, v25, @"FMSongLibraryReconnectedToNetwork", self, v26);
  }

  objc_msgSend_setNetworkStatus_(self, v16, v11, v18, v19);
}

- (void)_createCloudManagerOfType:(int64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  v8 = objc_msgSend_cloudManager(obj, v4, v5, v6, v7);

  if (!type && !v8)
  {
    v10 = objc_msgSend_createCloudManager_withLibrary_options_(FlexCloudManager, v9, 0, obj, obj->_options);
    objc_msgSend_setCloudManager_(obj, v11, v10, v12, v13);
  }

  objc_sync_exit(obj);
}

- (void)_notifySongsChanged:(id)changed
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, changed, v3, v4);
  objc_msgSend_postNotificationName_object_userInfo_(v7, v6, @"FMSongLibraryAvailableSongsChanged", self, 0);
}

- (void)_updateFromCloud
{
  objc_initWeak(&location, self);
  v7 = objc_msgSend_cloudManager(self, v3, v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24B7EB984;
  v11[3] = &unk_27900EA18;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  objc_msgSend_fetchAllSongsWithCompletion_(v7, v8, v11, v9, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)requestDownloadOfAllAssetsWithIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_opt_new();
  objc_msgSend_requestDownloadOfAllAssetsWithIDs_withOptions_(self, v5, dsCopy, v7, v6);
}

- (void)requestDownloadOfAllAssetsWithIDs:(id)ds withOptions:(id)options
{
  v25 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  v11 = objc_msgSend_fetchSongsWithOptions_(self, v8, 0, v9, v10);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_requestDownloadOfAllAssetsWithIDs_withOptions_(*(*(&v20 + 1) + 8 * v18++), v14, dsCopy, optionsCopy, v15);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v24, 16);
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllLocalCachedAssetsWithIDs:(id)ds
{
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  objc_msgSend_fetchSongsWithOptions_(self, v5, 0, v6, v7);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v35, v40, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = dsCopy;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v39, 16);
        if (v16)
        {
          v20 = v16;
          v21 = *v32;
          do
          {
            v22 = 0;
            do
            {
              if (*v32 != v21)
              {
                objc_enumerationMutation(v14);
              }

              v23 = objc_msgSend_assetWithID_(v13, v17, *(*(&v31 + 1) + 8 * v22), v18, v19);
              objc_msgSend_purgeLocalCache(v23, v24, v25, v26, v27);

              ++v22;
            }

            while (v20 != v22);
            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v31, v39, 16);
          }

          while (v20);
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v35, v40, 16);
    }

    while (v10);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportForCloud
{
  v5 = objc_msgSend_cloudManager(self, a2, v2, v3, v4);
  v6 = v5 != 0;

  return v6;
}

@end
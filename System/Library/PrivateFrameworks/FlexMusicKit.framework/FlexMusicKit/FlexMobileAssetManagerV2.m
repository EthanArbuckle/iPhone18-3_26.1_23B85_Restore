@interface FlexMobileAssetManagerV2
+ (id)_assetURLForMobileAsset:(id)a3;
+ (id)assetWithNewestContentVersionInAssets:(id)a3 preferInstalled:(BOOL)a4;
+ (id)compatibilityFilterPredicate;
- (BOOL)_isDownloadingAsset:(id)a3;
- (BOOL)_isPurgingAsset:(id)a3;
- (FlexMobileAssetManagerV2)initWithLibrary:(id)a3 options:(id)a4;
- (id)_assetIDForMobileAsset:(id)a3;
- (id)_metadataMappingForUUIDSet:(id)a3;
- (id)_mobileAssetCancelDownloadResultStringValue:(int64_t)a3;
- (id)_mobileAssetDownloadOptionsForClientOptions:(id)a3;
- (id)_mobileAssetDownloadResultStringValue:(int64_t)a3;
- (id)_mobileAssetPurgeResultStringValue:(int64_t)a3;
- (id)_mobileAssetQueryResultStringValue:(int64_t)a3;
- (id)_mobileAssetsForAssetType:(id)a3 andUIDs:(id)a4;
- (id)_newestContentSetFromAssets:(id)a3 metadataMapping:(id)a4;
- (id)_processResults:(id)a3 metadataMapping:(id)a4;
- (id)_weightedKeywordsFromMetadataAsset:(id)a3;
- (id)fetchSongWithUID:(id)a3;
- (id)fetchSongsWithOptions:(id)a3;
- (id)filterByClientIDForAssets:(id)a3 forMetadataMapping:(id)a4;
- (int64_t)_responseForDownloadResult:(int64_t)a3;
- (unint64_t)assetStatus:(id)a3;
- (void)_dispatchNextAsyncAssetDownloadAndPurge;
- (void)_loadBundledArtworkForSongID:(id)a3;
- (void)_loadBundledSongForSongID:(id)a3;
- (void)_purgeAsset:(id)a3;
- (void)_registerAndHandleSystemMobileAssetNotifications;
- (void)_runAsyncAssetDownloadForMobileAsset:(id)a3;
- (void)_runNextAsyncAssetDownloadAndPurge;
- (void)_updateExistingSong:(id)a3 usingAsset:(id)a4 metadataAsset:(id)a5 forceUpdate:(BOOL)a6;
- (void)_updateMetadataOnExistingSong:(id)a3 usingMetadataAsset:(id)a4;
- (void)cancelDownloadOfAllAssets;
- (void)cancelDownloadOfAsset:(id)a3;
- (void)fetchAllSongsWithCompletion:(id)a3;
- (void)loadAssetWithID:(id)a3 forSongID:(id)a4;
- (void)requestDownloadOfAsset:(id)a3 withOptions:(id)a4;
- (void)requestPurgeOfAsset:(id)a3;
@end

@implementation FlexMobileAssetManagerV2

- (FlexMobileAssetManagerV2)initWithLibrary:(id)a3 options:(id)a4
{
  v6 = a4;
  v74.receiver = self;
  v74.super_class = FlexMobileAssetManagerV2;
  v7 = [(FlexCloudManager *)&v74 initWithLibrary:a3];
  if (v7)
  {
    if (objc_opt_class() && objc_opt_class())
    {
      v8 = objc_opt_new();
      downloadThrottleLock = v7->_downloadThrottleLock;
      v7->_downloadThrottleLock = v8;

      v10 = objc_opt_new();
      mobileAssetCacheLock = v7->_mobileAssetCacheLock;
      v7->_mobileAssetCacheLock = v10;

      v16 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v12, v13, v14, v15);
      pendingDownloadSet = v7->_pendingDownloadSet;
      v7->_pendingDownloadSet = v16;

      v22 = objc_msgSend_set(MEMORY[0x277CBEB58], v18, v19, v20, v21);
      processingDownloadSet = v7->_processingDownloadSet;
      v7->_processingDownloadSet = v22;

      v26 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v24, 0, 0, v25);
      dowloadOptionsMapping = v7->_dowloadOptionsMapping;
      v7->_dowloadOptionsMapping = v26;

      v32 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v28, v29, v30, v31);
      pendingPurgeSet = v7->_pendingPurgeSet;
      v7->_pendingPurgeSet = v32;

      v38 = objc_msgSend_set(MEMORY[0x277CBEB58], v34, v35, v36, v37);
      processingPurgeSet = v7->_processingPurgeSet;
      v7->_processingPurgeSet = v38;

      v40 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v41 = dispatch_queue_create("com.apple.FlexMusic.mobileAssetPurge", v40);
      purgeQueue = v7->_purgeQueue;
      v7->_purgeQueue = v41;

      v43 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v44 = dispatch_queue_create("com.apple.FlexMusic.triggerDownloadAndPurge", v43);
      triggerDownloadAndPurgeQueue = v7->_triggerDownloadAndPurgeQueue;
      v7->_triggerDownloadAndPurgeQueue = v44;

      v46 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v47 = dispatch_queue_create("com.apple.FlexMusic.downloadRequest", v46);
      downloadRequestQueue = v7->_downloadRequestQueue;
      v7->_downloadRequestQueue = v47;

      v52 = objc_msgSend_objectForKey_(v6, v49, @"MobileAssets_ClientID", v50, v51);
      clientID = v7->_clientID;
      v7->_clientID = v52;

      v57 = objc_msgSend_objectForKey_(v6, v54, @"MobileAssets_AssetTypeIdentifier", v55, v56);
      mobileAssetTypeIdentifier = v7->_mobileAssetTypeIdentifier;
      v7->_mobileAssetTypeIdentifier = v57;

      if (v7->_clientID && v7->_mobileAssetTypeIdentifier)
      {
        v62 = objc_msgSend_objectForKey_(v6, v59, @"MobileAssets_ListenToSystemNotifications", v60, v61);

        if (v62)
        {
          objc_msgSend__registerAndHandleSystemMobileAssetNotifications(v7, v63, v64, v65, v66);
        }

        v67 = objc_msgSend_objectForKey_(v6, v63, @"EnableFetchCache", v65, v66);
        v7->_enableFetchCache = objc_msgSend_BOOLValue(v67, v68, v69, v70, v71);

        goto LABEL_9;
      }
    }

    v72 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v72 = v7;
LABEL_12:

  return v72;
}

- (void)_registerAndHandleSystemMobileAssetNotifications
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v4 = dispatch_queue_create("com.apple.flexmusic.MANotificationQueue", v3);
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = v4;

  v9 = objc_msgSend_stringByAppendingString_(self->_mobileAssetTypeIdentifier, v6, @".ma.new-asset-installed", v7, v8);
  v10 = v9;
  v14 = objc_msgSend_cStringUsingEncoding_(v10, v11, 4, v12, v13);

  v18 = objc_msgSend_stringByAppendingString_(self->_mobileAssetTypeIdentifier, v15, @".ma.cached-metadata-updated", v16, v17);
  v19 = v18;
  v23 = objc_msgSend_cStringUsingEncoding_(v19, v20, 4, v21, v22);

  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_24B7F9CB8;
  v25[3] = &unk_27900EF18;
  objc_copyWeak(&v26, &location);
  v24 = MEMORY[0x24C24B550](v25);
  if (v14)
  {
    notify_register_dispatch(v14, &self->_assetInstalledNotificationToken, self->_notificationQueue, v24);
  }

  if (v23)
  {
    notify_register_dispatch(v23, &self->_catalogUpdatedNotificationToken, self->_notificationQueue, v24);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (id)_mobileAssetsForAssetType:(id)a3 andUIDs:(id)a4
{
  v121 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v13 = objc_alloc(MEMORY[0x277D289D8]);
  v17 = objc_msgSend_initWithType_(v13, v14, self->_mobileAssetTypeIdentifier, v15, v16);
  objc_msgSend_setDoNotBlockBeforeFirstUnlock_(v17, v18, 1, v19, v20);
  objc_msgSend_returnTypes_(v17, v21, 2, v22, v23);
  if (v6)
  {
    if (objc_msgSend_addKeyValuePair_with_(v17, v24, @"FMAssetType", v6, v25))
    {
      v30 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24B7E5000, v30, OS_LOG_TYPE_DEFAULT, "error setting up query with addKeyValuePair", buf, 2u);
      }
    }

    if (objc_msgSend_count(v7, v26, v27, v28, v29))
    {
      v35 = objc_msgSend_mutableCopy(v7, v31, v32, v33, v34);
      v38 = objc_msgSend_addKeyValueArray_with_(v17, v36, @"uuid", v35, v37);

      if (v38)
      {
        v39 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24B7E5000, v39, OS_LOG_TYPE_DEFAULT, "error setting up query with addKeyValueArray", buf, 2u);
        }
      }
    }
  }

  v109 = v7;
  v40 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v118 = v6;
    _os_log_impl(&dword_24B7E5000, v40, OS_LOG_TYPE_DEFAULT, "requesting MAAssetQuery for type %@", buf, 0xCu);
  }

  v110 = v6;

  v45 = objc_msgSend_date(MEMORY[0x277CBEAA8], v41, v42, v43, v44);
  MetaDataSync = objc_msgSend_queryMetaDataSync(v17, v46, v47, v48, v49);
  objc_msgSend_setXMLPresent_(self, v51, MetaDataSync != 2, v52, v53);
  v54 = FlexLogForCategory(2uLL);
  v111 = v17;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v59 = objc_msgSend_results(v17, v55, v56, v57, v58);
    v64 = objc_msgSend_count(v59, v60, v61, v62, v63);
    v69 = objc_msgSend_date(MEMORY[0x277CBEAA8], v65, v66, v67, v68);
    objc_msgSend_timeIntervalSinceDate_(v69, v70, v45, v71, v72);
    *buf = 134218240;
    v118 = v64;
    v119 = 2048;
    v120 = v73;
    _os_log_impl(&dword_24B7E5000, v54, OS_LOG_TYPE_DEFAULT, "%ld assets queried in %.2f seconds\n", buf, 0x16u);
  }

  v107 = v45;
  if (MetaDataSync == 2)
  {
    v78 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v78, OS_LOG_TYPE_DEFAULT, "XML not present", buf, 2u);
    }
  }

  else
  {
    if (!MetaDataSync)
    {
      goto LABEL_22;
    }

    v78 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v82 = objc_msgSend__mobileAssetQueryResultStringValue_(self, v79, MetaDataSync, v80, v81, v45, v109, v6);
      *buf = 138412290;
      v118 = v82;
      _os_log_impl(&dword_24B7E5000, v78, OS_LOG_TYPE_DEFAULT, "MetaDataSync query failed with error code %@", buf, 0xCu);
    }
  }

LABEL_22:
  v83 = objc_msgSend_results(v17, v74, v75, v76, v77, v107);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v112, v116, 16);
  if (v85)
  {
    v90 = v85;
    v91 = *v113;
    do
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v113 != v91)
        {
          objc_enumerationMutation(v83);
        }

        v93 = *(*(&v112 + 1) + 8 * i);
        v94 = objc_msgSend_attributes(v93, v86, v87, v88, v89);
        v98 = objc_msgSend_objectForKeyedSubscript_(v94, v95, @"_CompatibilityVersion", v96, v97);
        v103 = objc_msgSend_intValue(v98, v99, v100, v101, v102) - 1;

        if (v103 <= 3)
        {
          objc_msgSend_addObject_(v12, v86, v93, v88, v89);
        }
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v86, &v112, v116, 16);
    }

    while (v90);
  }

  v104 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v86, v12, v88, v89);

  v105 = *MEMORY[0x277D85DE8];

  return v104;
}

+ (id)assetWithNewestContentVersionInAssets:(id)a3 preferInstalled:(BOOL)a4
{
  v4 = a4;
  v88 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = v5;
  if (!v5 || !objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v19 = 0;
    goto LABEL_26;
  }

  if (objc_msgSend_count(v10, v11, v12, v13, v14) == 1)
  {
    v19 = objc_msgSend_anyObject(v10, v15, v16, v17, v18);
    goto LABEL_26;
  }

  v23 = objc_msgSend_allObjects(v10, v15, v16, v17, v18);
  if (v4)
  {
    v24 = MEMORY[0x277CCAC30];
    v25 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v20, &unk_285EA8790, v21, v22, &unk_285EA87A8, &unk_285EA87C0, 0);
    v29 = objc_msgSend_predicateWithFormat_(v24, v26, @"state IN %@", v27, v28, v25);
    v33 = objc_msgSend_filteredArrayUsingPredicate_(v23, v30, v29, v31, v32);

    if (objc_msgSend_count(v33, v34, v35, v36, v37))
    {
      if (objc_msgSend_count(v33, v38, v39, v40, v41) == 1)
      {
        v19 = objc_msgSend_firstObject(v33, v42, v43, v44, v45);
        goto LABEL_25;
      }

      v23 = v33;
    }

    else
    {
      v23 = objc_msgSend_allObjects(v10, v38, v39, v40, v41);
    }
  }

  v79 = v10;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v33 = v23;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v46, &v83, v87, 16);
  v19 = 0;
  v51 = 0;
  if (!v82)
  {
    goto LABEL_24;
  }

  v81 = *v84;
  obj = v33;
  do
  {
    for (i = 0; i != v82; ++i)
    {
      if (*v84 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v83 + 1) + 8 * i);
      v54 = objc_msgSend_attributes(v53, v47, v48, v49, v50);
      v58 = v54;
      if (v19)
      {
        v59 = objc_msgSend_objectForKeyedSubscript_(v54, v55, @"_ContentVersion", v56, v57);
        v64 = objc_msgSend_integerValue(v59, v60, v61, v62, v63);
        v68 = objc_msgSend_objectForKeyedSubscript_(v51, v65, @"_ContentVersion", v66, v67);
        v73 = objc_msgSend_integerValue(v68, v69, v70, v71, v72);

        if (v64 <= v73)
        {
          goto LABEL_22;
        }

        v74 = v53;
      }

      else
      {
        v75 = v53;
      }

      v76 = v58;

      v19 = v53;
      v51 = v76;
LABEL_22:
    }

    v33 = obj;
    v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v83, v87, 16);
  }

  while (v82);
LABEL_24:

  v10 = v79;
LABEL_25:

LABEL_26:
  v77 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)filterByClientIDForAssets:(id)a3 forMetadataMapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24B7FA618;
  v14[3] = &unk_27900EF40;
  objc_copyWeak(&v16, &location);
  v8 = v7;
  v15 = v8;
  v12 = objc_msgSend_objectsPassingTest_(v6, v9, v14, v10, v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

+ (id)compatibilityFilterPredicate
{
  if (qword_27F060D68 != -1)
  {
    sub_24B801FD4();
  }

  v3 = qword_27F060D60;

  return v3;
}

- (void)_loadBundledSongForSongID:(id)a3
{
  v141[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = objc_msgSend_pathToBundledResourceWithName_(FlexUtilities, v5, @"FlexAudio", v6, v7);
  if (v12)
  {
    v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9, v10, v11);
    v16 = objc_msgSend_contentsOfDirectoryAtPath_error_(v13, v14, v12, 0, v15);

    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = sub_24B7FAC9C;
    v138[3] = &unk_27900EF68;
    v17 = v4;
    v139 = v17;
    v21 = objc_msgSend_indexOfObjectPassingTest_(v16, v18, v138, v19, v20);
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v21, v23, v24);
      v137 = objc_msgSend_stringByAppendingPathComponent_(v12, v26, v25, v27, v28);
      v32 = objc_msgSend__existingSongForUID_(self, v29, v17, v30, v31);
      v36 = v32;
      if (v32)
      {
        objc_msgSend_existingAssetWithID_(v32, v33, @"FMSongBundleAssetID", v34, v35);
        v37 = v136 = v25;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v25 = v136;
        if (isKindOfClass)
        {
          v135 = self;
          v42 = objc_msgSend_stringByAppendingPathComponent_(v137, v39, @"metadata.smm", v40, v41);
          v47 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v43, v44, v45, v46);
          v134 = v42;
          LODWORD(v42) = objc_msgSend_fileExistsAtPath_(v47, v48, v42, v49, v50);

          if (v42)
          {
            objc_msgSend_loadSongInFolderWithPath_(FlexSong, v51, v137, v52, v53);
          }

          else
          {
            objc_msgSend_loadSongAtPath_(FlexMLSong, v51, v137, v52, v53);
          }
          v133 = ;
          v57 = objc_msgSend_existingAssetWithID_(v133, v54, @"FMSongBundleAssetID", v55, v56);
          v61 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v58, v137, v59, v60);
          v62 = [FlexMobileAssetV2SongAsset alloc];
          v67 = objc_msgSend_contentVersion(v57, v63, v64, v65, v66);
          v132 = v57;
          v72 = objc_msgSend_compatibilityVersion(v57, v68, v69, v70, v71);
          v74 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v62, v73, @"FMSongBundleAssetID", v61, v135, v67, v72);
          v78 = objc_msgSend_existingAssetWithID_(v36, v75, @"FMSongBundleAssetID", v76, v77);
          v79 = objc_opt_class();
          v130 = v78;
          v80 = FlexDynamicCast(v79, v78);
          v85 = v80;
          if (v80)
          {
            v86 = objc_msgSend_newestContentVersion(v80, v81, v82, v83, v84);
            objc_msgSend_setNewestContentVersion_(v74, v87, v86, v88, v89);
            v94 = objc_msgSend_newestCompatibilityVersion(v85, v90, v91, v92, v93);
            objc_msgSend_setNewestCompatibilityVersion_(v74, v95, v94, v96, v97);
          }

          v131 = v74;
          v141[0] = v74;
          v98 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, v141, 1, v84, v85);
          objc_msgSend_updateAssets_(v133, v99, v98, v100, v101);

          v105 = objc_msgSend_existingAssetWithID_(v36, v102, @"FMSongArtworkAssetID", v103, v104);
          v109 = v105;
          if (v105)
          {
            v140 = v105;
            v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v106, &v140, 1, v108);
            objc_msgSend_updateAssets_(v133, v111, v110, v112, v113);
          }

          objc_msgSend_updateBackend_(v36, v106, v133, v107, v108);
          v117 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v114, v17, v115, v116);
          v121 = objc_msgSend__metadataMappingForUUIDSet_(v135, v118, v117, v119, v120);

          v125 = objc_msgSend_objectForKey_(v121, v122, v17, v123, v124);
          objc_msgSend__updateMetadataOnExistingSong_usingMetadataAsset_(v135, v126, v36, v125, v127);

          v25 = v136;
        }
      }
    }
  }

  v128 = *MEMORY[0x277D85DE8];
}

- (void)_loadBundledArtworkForSongID:(id)a3
{
  v86[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = objc_msgSend_pathToBundledResourceWithName_(FlexUtilities, v5, @"FlexAudio", v6, v7);
  if (v12)
  {
    v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9, v10, v11);
    v16 = objc_msgSend_contentsOfDirectoryAtPath_error_(v13, v14, v12, 0, v15);

    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_24B7FAFEC;
    v84[3] = &unk_27900EF68;
    v17 = v4;
    v85 = v17;
    v21 = objc_msgSend_indexOfObjectPassingTest_(v16, v18, v84, v19, v20);
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v22, v21, v23, v24);
      v29 = objc_msgSend_versionFromArtworkFilename_(FMSong, v26, v25, v27, v28);
      v33 = objc_msgSend__existingSongForUID_(self, v30, v17, v31, v32);
      v37 = v33;
      if (v33)
      {
        v38 = objc_msgSend_existingAssetWithID_(v33, v34, @"FMSongArtworkAssetID", v35, v36);
        v43 = v38;
        if (!v38 || objc_msgSend_assetStatus(v38, v39, v40, v41, v42) || objc_msgSend_contentVersion(v43, v39, v44, v41, v42) < v29)
        {
          v83 = objc_msgSend_existingAssetWithID_(v37, v39, @"FMSongBundleAssetID", v41, v42);
          v49 = objc_msgSend_compatibilityVersion(v83, v45, v46, v47, v48);
          v81 = v25;
          v82 = objc_msgSend_stringByAppendingPathComponent_(v12, v50, v25, v51, v52);
          v56 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v53, v82, v54, v55);
          v57 = [FlexMobileAssetV2SongAsset alloc];
          v63 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v57, v58, @"FMSongArtworkAssetID", v56, self, v29, v49);
          if (v43)
          {
            v64 = objc_msgSend_contentVersion(v43, v59, v60, v61, v62);
            objc_msgSend_setNewestContentVersion_(v63, v65, v64, v66, v67);
            v72 = objc_msgSend_compatibilityVersion(v43, v68, v69, v70, v71);
            objc_msgSend_setNewestCompatibilityVersion_(v63, v73, v72, v74, v75);
          }

          v86[0] = v63;
          v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, v86, 1, v62);
          objc_msgSend_updateAssets_(v37, v77, v76, v78, v79);

          v25 = v81;
        }
      }
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (id)_newestContentSetFromAssets:(id)a3 metadataMapping:(id)a4
{
  v132 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v113 = a4;
  v110 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7, v8, v9);
  v115 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12, v13);
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v5;
  v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v126, v131, 16);
  if (v114)
  {
    v112 = *v127;
    do
    {
      for (i = 0; i != v114; ++i)
      {
        if (*v127 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v126 + 1) + 8 * i);
        v21 = objc_msgSend_attributes(v20, v15, v16, v17, v18);
        v25 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"uuid", v23, v24);
        v29 = objc_msgSend_objectForKey_(v113, v26, v25, v27, v28);
        v34 = objc_msgSend_attributes(v29, v30, v31, v32, v33);
        v38 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"recalled", v36, v37);
        v43 = objc_msgSend_BOOLValue(v38, v39, v40, v41, v42);

        if (v43)
        {
          if (v25)
          {
            objc_msgSend_addObject_(v110, v44, v25, v45, v46);
          }
        }

        else
        {
          v50 = objc_msgSend_objectForKey_(v115, v44, v25, v45, v46);
          if (!v50)
          {
            goto LABEL_12;
          }

          v51 = objc_msgSend_objectForKeyedSubscript_(v21, v47, @"_ContentVersion", v48, v49);
          v56 = objc_msgSend_integerValue(v51, v52, v53, v54, v55);
          v61 = objc_msgSend_attributes(v50, v57, v58, v59, v60);
          v65 = objc_msgSend_objectForKeyedSubscript_(v61, v62, @"_ContentVersion", v63, v64);
          LOBYTE(v56) = v56 < objc_msgSend_integerValue(v65, v66, v67, v68, v69);

          if ((v56 & 1) == 0 && objc_msgSend_state(v20, v70, v71, v72, v73) >= 2)
          {
LABEL_12:
            objc_msgSend_setObject_forKey_(v115, v47, v20, v25, v49);
          }
        }
      }

      v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v126, v131, 16);
    }

    while (v114);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v74 = v110;
  v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v122, v130, 16);
  if (v79)
  {
    v80 = *v123;
    do
    {
      for (j = 0; j != v79; ++j)
      {
        if (*v123 != v80)
        {
          objc_enumerationMutation(v74);
        }

        objc_msgSend_removeObjectForKey_(v115, v76, *(*(&v122 + 1) + 8 * j), v77, v78);
      }

      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v76, &v122, v130, 16);
    }

    while (v79);
  }

  v86 = objc_msgSend_set(MEMORY[0x277CBEB58], v82, v83, v84, v85);
  if (objc_msgSend_count(v115, v87, v88, v89, v90))
  {
    v95 = objc_msgSend_allValues(v115, v91, v92, v93, v94);
    objc_msgSend_addObjectsFromArray_(v86, v96, v95, v97, v98);
  }

  objc_initWeak(&location, self);
  purgeQueue = self->_purgeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24B7FB508;
  block[3] = &unk_27900EFB8;
  objc_copyWeak(&v120, &location);
  v100 = obj;
  v117 = v100;
  v101 = v86;
  v118 = v101;
  v102 = v74;
  v119 = v102;
  dispatch_async(purgeQueue, block);
  v106 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v103, v101, v104, v105);

  objc_destroyWeak(&v120);
  objc_destroyWeak(&location);

  v107 = *MEMORY[0x277D85DE8];

  return v106;
}

- (void)fetchAllSongsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  objc_msgSend_setDownloadPriority_(v5, v6, 1, v7, v8);
  v12 = objc_msgSend__mobileAssetDownloadOptionsForClientOptions_(self, v9, v5, v10, v11);
  if ((objc_msgSend_XMLPresent(self, v13, v14, v15, v16) & 1) == 0)
  {
    objc_msgSend_setDiscretionary_(v12, v17, 0, v18, v19);
  }

  v20 = MEMORY[0x277D289C0];
  mobileAssetTypeIdentifier = self->_mobileAssetTypeIdentifier;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_24B7FBB30;
  v24[3] = &unk_27900EFE0;
  v24[4] = self;
  v25 = v4;
  v22 = v4;
  objc_msgSend_startCatalogDownload_options_then_(v20, v23, mobileAssetTypeIdentifier, v12, v24);
}

- (id)_metadataMappingForUUIDSet:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v14 = objc_msgSend_allObjects(v4, v10, v11, v12, v13);
  v17 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(self, v15, @"Metadata", v14, v16);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v17;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v42, v46, 16);
  if (v20)
  {
    v25 = v20;
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v18);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        v29 = objc_msgSend_attributes(v28, v21, v22, v23, v24, v42);
        v33 = objc_msgSend_objectForKeyedSubscript_(v29, v30, @"uuid", v31, v32);

        objc_msgSend_setObject_forKey_(v9, v34, v28, v33, v35);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v42, v46, 16);
    }

    while (v25);
  }

  v39 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v36, v9, v37, v38);

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)_assetURLForMobileAsset:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_getLocalUrl(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_state(v3, v9, v10, v11, v12);

  v18 = 0;
  if (v8 && (v13 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v19 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v14, v15, v16, v17);
    v18 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v19, v20, v8, MEMORY[0x277CBEBF8], 4, 0);
  }

  if (objc_msgSend_count(v18, v14, v15, v16, v17))
  {
    v25 = objc_msgSend_firstObject(v18, v21, v22, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_assetIDForMobileAsset:(id)a3
{
  v5 = objc_msgSend_attributes(a3, a2, a3, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"FMAssetType", v7, v8);

  if (objc_msgSend_isEqualToString_(v9, v10, @"SongBundle", v11, v12))
  {
    v16 = FMSongBundleAssetID;
LABEL_5:
    v17 = *v16;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v9, v13, @"Artwork", v14, v15))
  {
    v16 = FMSongArtworkAssetID;
    goto LABEL_5;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (id)_weightedKeywordsFromMetadataAsset:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_attributes(a3, a2, a3, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"weightedKeywords", v7, v8);

  v45 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12, v13);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = objc_msgSend_allKeys(v9, v14, v15, v16, v17);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v46, v50, 16);
  if (v20)
  {
    v24 = v20;
    v25 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v18);
        }

        v27 = *(*(&v46 + 1) + 8 * i);
        v28 = objc_msgSend_valueForKey_(v9, v21, v27, v22, v23);
        v29 = objc_alloc_init(MEMORY[0x277CCABB8]);
        objc_msgSend_setNumberStyle_(v29, v30, 1, v31, v32);
        v38 = objc_msgSend_numberFromString_(v29, v33, v28, v34, v35);
        if (v38)
        {
          objc_msgSend_setObject_forKey_(v45, v36, v38, v27, v37);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v46, v50, 16);
    }

    while (v24);
  }

  v42 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v39, v45, v40, v41);

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)_updateMetadataOnExistingSong:(id)a3 usingMetadataAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = v7;
  if (!v6)
  {
    goto LABEL_49;
  }

  if (!v7)
  {
    goto LABEL_49;
  }

  v13 = objc_msgSend_attributes(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"_ContentVersion", v15, v16);
  v22 = objc_msgSend_integerValue(v17, v18, v19, v20, v21);

  if (v22 <= objc_msgSend_metadataVersion(v6, v23, v24, v25, v26))
  {
    goto LABEL_49;
  }

  v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28, v29, v30);
  v38 = objc_msgSend_existingAssetWithID_(v6, v32, @"FMSongArtworkAssetID", v33, v34);
  if (v38)
  {
    objc_msgSend_addObject_(v31, v35, v38, v36, v37);
  }

  v206 = v22;
  v43 = objc_msgSend_existingAssetWithID_(v6, v35, @"FMSongBundleAssetID", v36, v37);
  if (v43)
  {
    objc_msgSend_addObject_(v31, v39, v43, v41, v42);
  }

  v212 = v43;
  v210 = v31;
  v44 = objc_msgSend_attributes(v12, v39, v40, v41, v42);
  v213 = objc_msgSend_objectForKeyedSubscript_(v44, v45, @"songName", v46, v47);

  v52 = objc_msgSend_attributes(v12, v48, v49, v50, v51);
  v207 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"artistName", v54, v55);

  v60 = objc_msgSend_attributes(v12, v56, v57, v58, v59);
  v64 = objc_msgSend_objectForKeyedSubscript_(v60, v61, @"hiddenIDs", v62, v63);
  v205 = objc_msgSend_containsObject_(v64, v65, self->_clientID, v66, v67);

  v72 = objc_msgSend_attributes(v12, v68, v69, v70, v71);
  v76 = objc_msgSend_objectForKeyedSubscript_(v72, v73, @"recalled", v74, v75);
  v209 = objc_msgSend_BOOLValue(v76, v77, v78, v79, v80);

  v85 = objc_msgSend_attributes(v12, v81, v82, v83, v84);
  v211 = objc_msgSend_objectForKeyedSubscript_(v85, v86, @"sbFmt", v87, v88);

  v214 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v89, v90, v91, v92);
  v97 = objc_msgSend_attributes(v12, v93, v94, v95, v96);
  v101 = objc_msgSend_objectForKeyedSubscript_(v97, v98, @"tagIDs", v99, v100);
  v106 = objc_msgSend_firstObject(v101, v102, v103, v104, v105);

  v111 = MEMORY[0x277CBEB98];
  v208 = v38;
  if (v106)
  {
    v112 = objc_msgSend_attributes(v12, v107, v108, v109, v110);
    v116 = objc_msgSend_objectForKeyedSubscript_(v112, v113, @"tagIDs", v114, v115);
    v120 = objc_msgSend_setWithArray_(v111, v117, v116, v118, v119);
  }

  else
  {
    v120 = objc_msgSend_set(MEMORY[0x277CBEB98], v107, v108, v109, v110);
  }

  v125 = objc_msgSend_attributes(v12, v121, v122, v123, v124);
  v129 = objc_msgSend_objectForKeyedSubscript_(v125, v126, @"keywords", v127, v128);
  v134 = objc_msgSend_firstObject(v129, v130, v131, v132, v133);

  v139 = MEMORY[0x277CBEB98];
  if (v134)
  {
    v140 = objc_msgSend_attributes(v12, v135, v136, v137, v138);
    v144 = objc_msgSend_objectForKeyedSubscript_(v140, v141, @"keywords", v142, v143);
    v148 = objc_msgSend_setWithArray_(v139, v145, v144, v146, v147);
  }

  else
  {
    v148 = objc_msgSend_set(MEMORY[0x277CBEB98], v135, v136, v137, v138);
  }

  v153 = v207;
  v154 = objc_msgSend_attributes(v12, v149, v150, v151, v152);
  v158 = objc_msgSend_objectForKeyedSubscript_(v154, v155, @"weightedKeywords", v156, v157);

  if (v158)
  {
    v163 = objc_msgSend__weightedKeywordsFromMetadataAsset_(self, v159, v12, v161, v162);

    v214 = v163;
  }

  if (v209)
  {
    v164 = v213;
    if (v213)
    {
      if (v207)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v164 = objc_msgSend_songName(v6, v159, v160, v161, v162);
      if (v207)
      {
LABEL_19:
        if (!v120)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    v153 = objc_msgSend_artistName(v6, v159, v160, v161, v162);
    if (!v120)
    {
LABEL_24:
      v165 = objc_msgSend_tagIDs(v6, v159, v160, v161, v162);

      v120 = v165;
LABEL_25:
      if (!v148 || !objc_msgSend_count(v148, v159, v160, v161, v162))
      {
        v166 = objc_msgSend_keywords(v6, v159, v160, v161, v162);

        v148 = v166;
      }

      v167 = v211;
      if (!v211)
      {
        v167 = objc_msgSend_songFormat(v6, v159, v160, v161, v162);
      }

      v211 = v167;
      v213 = v164;
      if (!v214 || !objc_msgSend_count(v214, v159, v160, v161, v162))
      {
        v168 = objc_msgSend_weightedKeywords(v6, v159, v160, v161, v162);

        v214 = v168;
      }

      goto LABEL_33;
    }

LABEL_23:
    if (objc_msgSend_count(v120, v159, v160, v161, v162))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_33:
  if (objc_msgSend_isLoaded(v6, v159, v160, v161, v162))
  {
    if (v212)
    {
      v173 = objc_msgSend_localURL(v212, v169, v170, v171, v172);
      v177 = objc_msgSend_backendForSongBundleURL_(FlexUtilities, v174, v173, v175, v176);

      v179 = v213;
      if (v177)
      {
        objc_msgSend_updateSongArtist_title_tags_keywords_weightedKeywords_hidden_recalled_metadataVersion_(v177, v178, v153, v213, v120, v148, v214, v205, v209, v206);
        v183 = v208;
        if (v210)
        {
          objc_msgSend_updateAssets_(v177, v180, v210, v181, v182);
        }

        objc_msgSend_updateBackend_(v6, v180, v177, v181, v182);
      }

      else
      {
        v203 = FlexLogForCategory(2uLL);
        v183 = v208;
        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
        {
          *v216 = 0;
          _os_log_impl(&dword_24B7E5000, v203, OS_LOG_TYPE_DEFAULT, "could not create replacement backend", v216, 2u);
        }

        v179 = v213;
      }
    }

    else
    {
      v202 = FlexLogForCategory(2uLL);
      v179 = v213;
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24B7E5000, v202, OS_LOG_TYPE_DEFAULT, "could not create replacement backend", buf, 2u);
      }

      v183 = v208;
    }

    v196 = v211;
  }

  else
  {
    v184 = [FlexSongProxy alloc];
    v189 = objc_msgSend_uid(v6, v185, v186, v187, v188);
    objc_msgSend_audioEncoderPresetName(v6, v190, v191, v192, v193);
    v195 = v194 = v153;
    v196 = v211;
    HIBYTE(v204) = v209;
    LOBYTE(v204) = v205;
    v179 = v213;
    v198 = objc_msgSend_initWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_recalled_assets_audioEncoderPresetName_metadataVersion_songFormat_(v184, v197, v189, v213, v194, v120, v148, v214, v204, v210, v195, v206, v211);

    v153 = v194;
    objc_msgSend_updateBackend_(v6, v199, v198, v200, v201);

    v183 = v208;
  }

LABEL_49:
}

- (void)_updateExistingSong:(id)a3 usingAsset:(id)a4 metadataAsset:(id)a5 forceUpdate:(BOOL)a6
{
  v6 = a6;
  v278[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17 = v12;
  if (!v10 || !v11)
  {
    goto LABEL_44;
  }

  if (v12)
  {
    v18 = objc_msgSend_attributes(v11, v13, v14, v15, v16);
    v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"FMAssetType", v20, v21);

    if (objc_msgSend_isEqualToString_(v22, v23, @"SongBundle", v24, v25))
    {
      objc_msgSend__updateMetadataOnExistingSong_usingMetadataAsset_(self, v26, v10, v17, v27);
    }
  }

  v28 = objc_msgSend_attributes(v11, v13, v14, v15, v16);
  v32 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"_ContentVersion", v30, v31);
  v271 = objc_msgSend_objectForKeyedSubscript_(v28, v33, @"_CompatibilityVersion", v34, v35);
  v272 = objc_msgSend__assetIDForMobileAsset_(self, v36, v11, v37, v38);
  v45 = objc_msgSend_existingAssetWithID_(v10, v39, v272, v40, v41);
  if (v45)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v268 = v32;
      v46 = objc_msgSend__assetURLForMobileAsset_(FlexMobileAssetManagerV2, v42, v11, v43, v44);
      v51 = [FlexMobileAssetV2SongAsset alloc];
      if (v46)
      {
        v52 = objc_msgSend_integerValue(v268, v47, v48, v49, v50);
        v57 = objc_msgSend_integerValue(v271, v53, v54, v55, v56);
        v61 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v51, v58, v272, v46, self, v52, v57);
        if (!v61)
        {
LABEL_12:

          v32 = v268;
          goto LABEL_13;
        }
      }

      else
      {
        v129 = objc_msgSend_localURL(v45, v47, v48, v49, v50);
        v263 = v28;
        v134 = objc_msgSend_contentVersion(v45, v130, v131, v132, v133);
        v139 = objc_msgSend_compatibilityVersion(v45, v135, v136, v137, v138);
        v140 = v134;
        v28 = v263;
        v61 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v51, v141, v272, v129, self, v140, v139);

        if (!v61)
        {
          goto LABEL_12;
        }
      }

      v278[0] = v61;
      v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, v278, 1, v60);
      objc_msgSend_updateAssets_(v10, v63, v62, v64, v65);

      goto LABEL_12;
    }
  }

LABEL_13:
  v70 = objc_msgSend_existingAssetWithID_(v10, v42, v272, v43, v44);
  if (v70)
  {
    v71 = objc_msgSend_integerValue(v32, v66, v67, v68, v69);
    v76 = v71 > objc_msgSend_contentVersion(v70, v72, v73, v74, v75);
  }

  else
  {
    v76 = 0;
  }

  v81 = objc_msgSend_assetStatus(v70, v66, v67, v68, v69) == 1 && (objc_msgSend_state(v11, v77, v78, v79, v80) & 0xFFFFFFFFFFFFFFFELL) == 2;
  v82 = v76 || v81;
  if (!v70 || v6 || (v82 & 1) != 0)
  {
    if (v70)
    {
      if ((v82 | v6))
      {
        v83 = objc_msgSend_assetStatus(v70, v77, v78, v79, v80);
        v88 = objc_msgSend_state(v11, v84, v85, v86, v87);
        if (v83 || v88 > 1)
        {
          v266 = v45;
          v142 = objc_msgSend__assetURLForMobileAsset_(FlexMobileAssetManagerV2, v89, v11, v91, v92);
          v143 = [FlexMobileAssetV2SongAsset alloc];
          v148 = objc_msgSend_integerValue(v32, v144, v145, v146, v147);
          v153 = objc_msgSend_integerValue(v271, v149, v150, v151, v152);
          v155 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v143, v154, v272, v142, self, v148, v153);
          if (objc_msgSend_isEqualToString_(v272, v156, @"FMSongBundleAssetID", v157, v158))
          {
            objc_msgSend_existingAssetWithID_(v10, v159, @"FMSongArtworkAssetID", v160, v161);
          }

          else
          {
            objc_msgSend_existingAssetWithID_(v10, v159, @"FMSongBundleAssetID", v160, v161);
          }
          v162 = ;
          v269 = v32;
          if (objc_msgSend_isLoaded(v10, v163, v164, v165, v166))
          {
            if (v162)
            {
              v276[0] = v162;
              v276[1] = v155;
              objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v167, v276, 2, v168);
            }

            else
            {
              v275 = v155;
              objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v167, &v275, 1, v168);
            }
            v209 = ;
            objc_msgSend_updateAssets_(v10, v210, v209, v211, v212);
            v45 = v266;
          }

          else
          {
            v254 = [FlexSongProxy alloc];
            v262 = objc_msgSend_uid(v10, v169, v170, v171, v172);
            v256 = objc_msgSend_attributes(v17, v173, v174, v175, v176);
            v261 = objc_msgSend_objectForKeyedSubscript_(v256, v177, @"songName", v178, v179);
            v255 = objc_msgSend_attributes(v17, v180, v181, v182, v183);
            v260 = objc_msgSend_objectForKeyedSubscript_(v255, v184, @"artistName", v185, v186);
            v259 = objc_msgSend_tagIDs(v10, v187, v188, v189, v190);
            v253 = objc_msgSend_keywords(v10, v191, v192, v193, v194);
            v252 = objc_msgSend_weightedKeywords(v10, v195, v196, v197, v198);
            v250 = objc_msgSend_hidden(v10, v199, v200, v201, v202);
            v251 = objc_msgSend_recalled(v10, v203, v204, v205, v206);
            v264 = v28;
            v257 = v162;
            v258 = v155;
            if (v162)
            {
              v274[0] = v162;
              v274[1] = v155;
              objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v207, v274, 2, v208);
            }

            else
            {
              v273 = v155;
              objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v207, &v273, 1, v208);
            }

            v247 = v45 = v266;
            v267 = objc_msgSend_attributes(v17, v213, v214, v215, v216);
            v248 = objc_msgSend_objectForKeyedSubscript_(v267, v217, @"audioEncoderPresetName", v218, v219);
            v249 = objc_msgSend_attributes(v17, v220, v221, v222, v223);
            v270 = objc_msgSend_objectForKeyedSubscript_(v249, v224, @"_ContentVersion", v225, v226);
            v231 = objc_msgSend_integerValue(v270, v227, v228, v229, v230);
            v236 = objc_msgSend_attributes(v17, v232, v233, v234, v235);
            v240 = objc_msgSend_objectForKeyedSubscript_(v236, v237, @"sbFmt", v238, v239);
            HIBYTE(v246) = v251;
            LOBYTE(v246) = v250;
            v209 = objc_msgSend_initWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_recalled_assets_audioEncoderPresetName_metadataVersion_songFormat_(v254, v241, v262, v261, v260, v259, v253, v252, v246, v247, v248, v231, v240);

            objc_msgSend_updateBackend_(v10, v242, v209, v243, v244);
            v28 = v264;
            v162 = v257;
            v155 = v258;
          }

          v32 = v269;
        }

        else
        {
          v93 = objc_msgSend_integerValue(v32, v89, v90, v91, v92);
          objc_msgSend_setNewestContentVersion_(v70, v94, v93, v95, v96);
          v101 = objc_msgSend_integerValue(v271, v97, v98, v99, v100);
          objc_msgSend_setNewestCompatibilityVersion_(v70, v102, v101, v103, v104);
        }
      }
    }

    else
    {
      objc_msgSend__assetURLForMobileAsset_(FlexMobileAssetManagerV2, v77, v11, v79, v80);
      v105 = v265 = v45;
      v106 = [FlexMobileAssetV2SongAsset alloc];
      v111 = objc_msgSend_integerValue(v32, v107, v108, v109, v110);
      v112 = v32;
      v113 = v28;
      v114 = v111;
      v119 = objc_msgSend_integerValue(v271, v115, v116, v117, v118);
      v120 = v114;
      v28 = v113;
      v32 = v112;
      v122 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v106, v121, v272, v105, self, v120, v119);
      v277 = v122;
      v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v123, &v277, 1, v124);
      objc_msgSend_updateAssets_(v10, v126, v125, v127, v128);

      v45 = v265;
    }
  }

LABEL_44:
  v245 = *MEMORY[0x277D85DE8];
}

- (id)_processResults:(id)a3 metadataMapping:(id)a4
{
  v262 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v250 = a4;
  v231 = v5;
  v10 = objc_msgSend_allObjects(v5, v6, v7, v8, v9);
  v14 = objc_msgSend_sortedArrayUsingComparator_(v10, v11, &unk_285EA04F0, v12, v13);

  v248 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16, v17, v18);
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  obj = v14;
  v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v256, v261, 16);
  if (v252)
  {
    v251 = *v257;
    do
    {
      for (i = 0; i != v252; ++i)
      {
        if (*v257 != v251)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v256 + 1) + 8 * i);
        v29 = objc_msgSend__assetIDForMobileAsset_(self, v20, v24, v21, v22);
        if (v29)
        {
          v254 = objc_msgSend_attributes(v24, v25, v26, v27, v28);
          v255 = objc_msgSend_objectForKeyedSubscript_(v254, v30, @"uuid", v31, v32);
          v36 = objc_msgSend_objectForKey_(v250, v33, v255, v34, v35);
          v41 = objc_msgSend_attributes(v36, v37, v38, v39, v40);
          v45 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"hiddenIDs", v43, v44);
          v49 = objc_msgSend_containsObject_(v45, v46, self->_clientID, v47, v48);

          v54 = objc_msgSend_attributes(v36, v50, v51, v52, v53);
          v58 = objc_msgSend_objectForKeyedSubscript_(v54, v55, @"recalled", v56, v57);
          v63 = objc_msgSend_BOOLValue(v58, v59, v60, v61, v62);

          v64 = self;
          objc_sync_enter(v64);
          v71 = objc_msgSend__existingSongForUID_(v64, v65, v255, v66, v67);
          if (v71)
          {
            objc_msgSend__updateExistingSong_usingAsset_metadataAsset_forceUpdate_(v64, v68, v71, v24, v36, 0);
            objc_msgSend_addObject_(v248, v72, v71, v73, v74);
          }

          else if ((v63 & 1) == 0)
          {
            v78 = objc_msgSend_objectForKeyedSubscript_(v254, v68, @"_ContentVersion", v69, v70);
            if (v78)
            {
              v246 = objc_msgSend_objectForKeyedSubscript_(v254, v75, @"_ContentVersion", v76, v77);
            }

            else
            {
              v246 = &unk_285EA87D8;
            }

            v85 = objc_msgSend_objectForKeyedSubscript_(v254, v79, @"_CompatibilityVersion", v80, v81);
            if (v85)
            {
              v245 = objc_msgSend_objectForKeyedSubscript_(v254, v82, @"_CompatibilityVersion", v83, v84);
            }

            else
            {
              v245 = &unk_285EA87D8;
            }

            v244 = objc_msgSend__assetURLForMobileAsset_(FlexMobileAssetManagerV2, v86, v24, v87, v88);
            v89 = [FlexMobileAssetV2SongAsset alloc];
            v94 = objc_msgSend_integerValue(v246, v90, v91, v92, v93);
            v99 = objc_msgSend_integerValue(v245, v95, v96, v97, v98);
            v243 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v89, v100, v29, v244, v64, v94, v99);
            v247 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v101, v102, v103, v104);
            v109 = objc_msgSend_attributes(v36, v105, v106, v107, v108);
            v113 = objc_msgSend_objectForKeyedSubscript_(v109, v110, @"tagIDs", v111, v112);
            v118 = objc_msgSend_firstObject(v113, v114, v115, v116, v117);

            v123 = MEMORY[0x277CBEB98];
            if (v118)
            {
              v124 = objc_msgSend_attributes(v36, v119, v120, v121, v122);
              v128 = objc_msgSend_objectForKeyedSubscript_(v124, v125, @"tagIDs", v126, v127);
              v241 = objc_msgSend_setWithArray_(v123, v129, v128, v130, v131);
            }

            else
            {
              v241 = objc_msgSend_set(MEMORY[0x277CBEB98], v119, v120, v121, v122);
            }

            v136 = objc_msgSend_attributes(v36, v132, v133, v134, v135);
            v140 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"keywords", v138, v139);
            v145 = objc_msgSend_firstObject(v140, v141, v142, v143, v144);

            v150 = MEMORY[0x277CBEB98];
            if (v145)
            {
              v151 = objc_msgSend_attributes(v36, v146, v147, v148, v149);
              v155 = objc_msgSend_objectForKeyedSubscript_(v151, v152, @"keywords", v153, v154);
              v238 = objc_msgSend_setWithArray_(v150, v156, v155, v157, v158);
            }

            else
            {
              v238 = objc_msgSend_set(MEMORY[0x277CBEB98], v146, v147, v148, v149);
            }

            v163 = objc_msgSend_attributes(v36, v159, v160, v161, v162);
            v167 = objc_msgSend_objectForKeyedSubscript_(v163, v164, @"weightedKeywords", v165, v166);

            v233 = v49;
            if (v167)
            {
              v171 = objc_msgSend__weightedKeywordsFromMetadataAsset_(v64, v168, v36, v169, v170);

              v247 = v171;
            }

            v232 = [FlexSongProxy alloc];
            v242 = objc_msgSend_attributes(v36, v172, v173, v174, v175);
            v234 = objc_msgSend_objectForKeyedSubscript_(v242, v176, @"songName", v177, v178);
            v240 = objc_msgSend_attributes(v36, v179, v180, v181, v182);
            v237 = objc_msgSend_objectForKeyedSubscript_(v240, v183, @"artistName", v184, v185);
            v260 = v243;
            v235 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v186, &v260, 1, v187);
            v239 = objc_msgSend_attributes(v36, v188, v189, v190, v191);
            v236 = objc_msgSend_objectForKeyedSubscript_(v239, v192, @"audioEncoderPresetName", v193, v194);
            v199 = objc_msgSend_attributes(v36, v195, v196, v197, v198);
            v203 = objc_msgSend_objectForKeyedSubscript_(v199, v200, @"_ContentVersion", v201, v202);
            v208 = objc_msgSend_integerValue(v203, v204, v205, v206, v207);
            v213 = objc_msgSend_attributes(v36, v209, v210, v211, v212);
            v217 = objc_msgSend_objectForKeyedSubscript_(v213, v214, @"sbFmt", v215, v216);
            LOWORD(v230) = v233;
            v219 = objc_msgSend_initWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_recalled_assets_audioEncoderPresetName_metadataVersion_songFormat_(v232, v218, v255, v234, v237, v241, v238, v247, v230, v235, v236, v208, v217);

            v220 = [FMSong alloc];
            v224 = objc_msgSend_initWithBackend_(v220, v221, v219, v222, v223);
            objc_msgSend_addObject_(v248, v225, v224, v226, v227);
          }

          objc_sync_exit(v64);
        }
      }

      v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v256, v261, 16);
    }

    while (v252);
  }

  v228 = *MEMORY[0x277D85DE8];

  return v248;
}

- (void)loadAssetWithID:(id)a3 forSongID:(id)a4
{
  v210 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11 = v7;
  if (v6 && v7)
  {
    v15 = objc_msgSend__existingSongForUID_(self, v8, v7, v9, v10);
    if (!v15)
    {
      v20 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24B7E5000, v20, OS_LOG_TYPE_DEFAULT, "attempting to load a song that doesn't exist", buf, 2u);
      }

      goto LABEL_48;
    }

    if (objc_msgSend_isEqualToString_(v6, v12, @"FMSongArtworkAssetID", v13, v14))
    {
      v19 = self->_mobileAssetCacheLock;
      objc_sync_enter(v19);
      if (self->_includeArtworkInQueries)
      {
        objc_sync_exit(v19);
      }

      else
      {
        v200 = v11;
        v198 = v15;
        self->_includeArtworkInQueries = 1;
        objc_sync_exit(v19);

        v23 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(self, v21, @"Artwork", 0, v22);
        v28 = objc_msgSend_set(MEMORY[0x277CBEB58], v24, v25, v26, v27);
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v29 = v23;
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v202, v209, 16);
        if (v31)
        {
          v36 = v31;
          v37 = *v203;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v203 != v37)
              {
                objc_enumerationMutation(v29);
              }

              v39 = objc_msgSend_attributes(*(*(&v202 + 1) + 8 * i), v32, v33, v34, v35);
              v43 = objc_msgSend_objectForKeyedSubscript_(v39, v40, @"uuid", v41, v42);

              if (v43)
              {
                objc_msgSend_addObject_(v28, v44, v43, v45, v46);
              }
            }

            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v202, v209, 16);
          }

          while (v36);
        }

        v50 = objc_msgSend__metadataMappingForUUIDSet_(self, v47, v28, v48, v49);
        v53 = objc_msgSend__newestContentSetFromAssets_metadataMapping_(self, v51, v29, v50, v52);

        v15 = v198;
        v11 = v200;
      }
    }

    v54 = objc_msgSend_existingAssetWithID_(v15, v16, v6, v17, v18);
    v20 = v54;
    if (v54 && (objc_msgSend_isCloudBacked(v54, v55, v56, v57, v58) & 1) != 0)
    {
LABEL_29:
      if (objc_msgSend_isEqualToString_(v6, v55, @"FMSongBundleAssetID", v57, v58))
      {
        v101 = objc_msgSend_localURL(v20, v97, v98, v99, v100);
        if (v101)
        {
          v106 = v101;
          v107 = objc_msgSend_array(MEMORY[0x277CBEB18], v102, v103, v104, v105);
          objc_msgSend_addObject_(v107, v108, v20, v109, v110);
          v118 = objc_msgSend_existingAssetWithID_(v15, v111, @"FMSongArtworkAssetID", v112, v113);
          if (v118)
          {
            objc_msgSend_addObject_(v107, v114, v118, v116, v117);
          }

          v119 = objc_msgSend_pathExtension(v106, v114, v115, v116, v117);
          isEqualToString = objc_msgSend_isEqualToString_(v119, v120, @"smsbundle", v121, v122);

          if (isEqualToString)
          {
            v128 = objc_msgSend_path(v106, v124, v125, v126, v127);
            v132 = objc_msgSend_stringByAppendingPathComponent_(v128, v129, @"metadata.smm", v130, v131);

            v137 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v133, v134, v135, v136);
            v141 = objc_msgSend_fileExistsAtPath_(v137, v138, v132, v139, v140);

            v149 = objc_msgSend_path(v106, v142, v143, v144, v145);
            if (v141)
            {
              objc_msgSend_loadSongInFolderWithPath_(FlexSong, v146, v149, v147, v148);
            }

            else
            {
              objc_msgSend_loadSongAtPath_(FlexMLSong, v146, v149, v147, v148);
            }
            v150 = ;

            if (v150)
            {
              v195 = v106;
              v199 = v132;
              v201 = v118;
              v197 = objc_msgSend_artistName(v15, v151, v152, v153, v154);
              v159 = objc_msgSend_songName(v15, v155, v156, v157, v158);
              v196 = objc_msgSend_tagIDs(v15, v160, v161, v162, v163);
              v168 = objc_msgSend_keywords(v15, v164, v165, v166, v167);
              v173 = objc_msgSend_weightedKeywords(v15, v169, v170, v171, v172);
              v194 = objc_msgSend_hidden(v15, v174, v175, v176, v177);
              v182 = objc_msgSend_recalled(v15, v178, v179, v180, v181);
              v187 = objc_msgSend_metadataVersion(v15, v183, v184, v185, v186);
              objc_msgSend_updateSongArtist_title_tags_keywords_weightedKeywords_hidden_recalled_metadataVersion_(v150, v188, v197, v159, v196, v168, v173, v194, v182, v187);

              if (v107)
              {
                objc_msgSend_updateAssets_(v150, v189, v107, v190, v191);
              }

              objc_msgSend_updateBackend_(v15, v189, v150, v190, v191);
              v132 = v199;
              v118 = v201;
              v106 = v195;
            }

            else
            {
              v192 = FlexLogForCategory(2uLL);
              if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_24B7E5000, v192, OS_LOG_TYPE_DEFAULT, "could not create replacement backend", buf, 2u);
              }
            }
          }

          else
          {
            v150 = FlexLogForCategory(2uLL);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_24B7E5000, v150, OS_LOG_TYPE_DEFAULT, "could not locate smsBundle", buf, 2u);
            }
          }
        }
      }

LABEL_48:

      goto LABEL_49;
    }

    v59 = objc_msgSend_set(MEMORY[0x277CBEB58], v55, v56, v57, v58);
    v63 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v60, v11, v61, v62);
    v67 = objc_msgSend__metadataMappingForUUIDSet_(self, v64, v63, v65, v66);

    if (objc_msgSend_isEqualToString_(v6, v68, @"FMSongArtworkAssetID", v69, v70))
    {
      if (!v20)
      {
        objc_msgSend__loadBundledArtworkForSongID_(self, v71, v11, v72, v73);
      }

      v74 = @"Artwork";
      v208 = v11;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v71, &v208, 1, v73);
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v6, v71, @"FMSongBundleAssetID", v72, v73))
      {
LABEL_28:
        v89 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(self, v75, v59, v67, v76);
        v92 = objc_msgSend__processResults_metadataMapping_(self, v90, v89, v67, v91);
        v96 = objc_msgSend_existingAssetWithID_(v15, v93, v6, v94, v95);

        v20 = v96;
        goto LABEL_29;
      }

      v74 = @"SongBundle";
      v207 = v11;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, &v207, 1, v76);
    }
    v77 = ;
    v80 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(self, v78, v74, v77, v79);
    v85 = objc_msgSend_allObjects(v80, v81, v82, v83, v84);
    objc_msgSend_addObjectsFromArray_(v59, v86, v85, v87, v88);

    goto LABEL_28;
  }

LABEL_49:

  v193 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchNextAsyncAssetDownloadAndPurge
{
  objc_initWeak(&location, self);
  triggerDownloadAndPurgeQueue = self->_triggerDownloadAndPurgeQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_24B7FE338;
  v4[3] = &unk_27900E928;
  objc_copyWeak(&v5, &location);
  dispatch_async(triggerDownloadAndPurgeQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_runNextAsyncAssetDownloadAndPurge
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = self->_downloadThrottleLock;
  objc_sync_enter(v3);
  if (objc_msgSend_count(self->_processingDownloadSet, v4, v5, v6, v7) > 2)
  {
    v20 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_msgSend_count(self->_processingDownloadSet, v21, v22, v23, v24);
      v30 = objc_msgSend_count(self->_pendingDownloadSet, v26, v27, v28, v29);
      v42 = 134218240;
      v43 = v25;
      v44 = 2048;
      v45 = v30;
      _os_log_impl(&dword_24B7E5000, v20, OS_LOG_TYPE_DEFAULT, "There are currently %lu assets downloading and %lu assets in the _pendingDownloadsSet.", &v42, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_firstObject(self->_pendingDownloadSet, v8, v9, v10, v11);
    if (v16)
    {
      objc_msgSend_removeObject_(self->_pendingDownloadSet, v12, v16, v14, v15);
      objc_msgSend_addObject_(self->_processingDownloadSet, v17, v16, v18, v19);
    }
  }

  v34 = objc_msgSend_firstObject(self->_pendingPurgeSet, v12, v13, v14, v15);
  if (v34)
  {
    objc_msgSend_removeObject_(self->_pendingPurgeSet, v31, v34, v32, v33);
    objc_msgSend_addObject_(self->_processingPurgeSet, v35, v34, v36, v37);
  }

  objc_sync_exit(v3);

  if (v16)
  {
    objc_msgSend__runAsyncAssetDownloadForMobileAsset_(self, v38, v16, v39, v40);
  }

  if (v34)
  {
    objc_msgSend__purgeAsset_(self, v38, v34, v39, v40);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDownloadingAsset:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_downloadThrottleLock;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_pendingDownloadSet;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v27, v32, 16);
  if (v11)
  {
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v6);
      }

      if (objc_msgSend_isEqualToSongAsset_(*(*(&v27 + 1) + 8 * v13), v8, v4, v9, v10))
      {
        goto LABEL_18;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v27, v32, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_processingDownloadSet;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v23, v31, 16);
  if (v18)
  {
    v19 = *v24;
LABEL_11:
    v20 = 0;
    while (1)
    {
      if (*v24 != v19)
      {
        objc_enumerationMutation(v6);
      }

      if (objc_msgSend_isEqualToSongAsset_(*(*(&v23 + 1) + 8 * v20), v15, v4, v16, v17, v23))
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v23, v31, 16);
        if (v18)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v18) = 1;
  }

LABEL_19:

  objc_sync_exit(v5);
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_isPurgingAsset:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_downloadThrottleLock;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_pendingPurgeSet;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v27, v32, 16);
  if (v11)
  {
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v6);
      }

      if (objc_msgSend_isEqualToSongAsset_(*(*(&v27 + 1) + 8 * v13), v8, v4, v9, v10))
      {
        goto LABEL_18;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v27, v32, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_processingPurgeSet;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v23, v31, 16);
  if (v18)
  {
    v19 = *v24;
LABEL_11:
    v20 = 0;
    while (1)
    {
      if (*v24 != v19)
      {
        objc_enumerationMutation(v6);
      }

      if (objc_msgSend_isEqualToSongAsset_(*(*(&v23 + 1) + 8 * v20), v15, v4, v16, v17, v23))
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v23, v31, 16);
        if (v18)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v18) = 1;
  }

LABEL_19:

  objc_sync_exit(v5);
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)requestDownloadOfAsset:(id)a3 withOptions:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_songUID(v6, v8, v9, v10, v11);
  v13 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_msgSend_assetID(v6, v14, v15, v16, v17);
    v23 = objc_msgSend_description(v7, v19, v20, v21, v22);
    *buf = 138412802;
    v48 = v12;
    v49 = 2112;
    v50 = v18;
    v51 = 2112;
    v52 = v23;
    _os_log_impl(&dword_24B7E5000, v13, OS_LOG_TYPE_DEFAULT, "Beginning download of %@ %@ with options %@", buf, 0x20u);
  }

  v27 = objc_msgSend__existingSongForUID_(self, v24, v12, v25, v26);
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!objc_msgSend_assetStatus(v6, v28, v29, v30, v31) && objc_msgSend_localURLExists(v6, v32, v33, v34, v35) && (objc_msgSend_contentUpdateAvailable(v6, v32, v33, v34, v35) & 1) == 0)
      {
        v36 = FlexLogForCategory(2uLL);
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        v48 = v12;
        v37 = "Not downloading %@ because asset is already local and there is no cloud update available.";
        goto LABEL_15;
      }

      if (!objc_msgSend_recalled(v27, v32, v33, v34, v35))
      {
        objc_initWeak(buf, self);
        downloadRequestQueue = self->_downloadRequestQueue;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = sub_24B7FED34;
        v40[3] = &unk_27900F028;
        objc_copyWeak(&v46, buf);
        v41 = v6;
        v42 = self;
        v43 = v27;
        v44 = v12;
        v45 = v7;
        dispatch_async(downloadRequestQueue, v40);

        objc_destroyWeak(&v46);
        objc_destroyWeak(buf);
        goto LABEL_17;
      }

      v36 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v12;
        v37 = "Not downloading %@ due to recall";
LABEL_15:
        _os_log_impl(&dword_24B7E5000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
      }
    }

    else
    {
      v36 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v12;
        v37 = "Not downloading %@ due to asset not MobileAsset backed";
        goto LABEL_15;
      }
    }
  }

  else
  {
    v36 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v12;
      v37 = "Not downloading %@ due to no existing song";
      goto LABEL_15;
    }
  }

LABEL_16:

LABEL_17:
  v38 = *MEMORY[0x277D85DE8];
}

- (id)_mobileAssetDownloadOptionsForClientOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v9 = objc_msgSend_allowsCellular(v3, v5, v6, v7, v8);
  objc_msgSend_setAllowsCellularAccess_(v4, v10, v9, v11, v12);
  v17 = objc_msgSend_reachabilityForInternetConnection(FlexReachability, v13, v14, v15, v16);
  v22 = objc_msgSend_currentReachabilityStatus(v17, v18, v19, v20, v21);

  if (v22 == 1 || !objc_msgSend_downloadPriority(v3, v23, v24, v25, v26))
  {
    objc_msgSend_setTimeoutIntervalForResource_(v4, v23, 120, v25, v26);
    objc_msgSend_setDiscretionary_(v4, v27, 0, v28, v29);
  }

  else
  {
    objc_msgSend_setDiscretionary_(v4, v23, 1, v25, v26);
  }

  return v4;
}

- (void)_runAsyncAssetDownloadForMobileAsset:(id)a3
{
  v88[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_attributes(v4, v5, v6, v7, v8);
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"uuid", v12, v13);

    v70 = objc_msgSend__assetIDForMobileAsset_(self, v15, v9, v16, v17);
    v21 = objc_msgSend__existingSongForUID_(self, v18, v14, v19, v20);
    v69 = objc_msgSend_existingAssetWithID_(v21, v22, v70, v23, v24);
    v29 = objc_msgSend_reachabilityForInternetConnection(FlexReachability, v25, v26, v27, v28);
    v34 = objc_msgSend_currentReachabilityStatus(v29, v30, v31, v32, v33);

    if (v34)
    {
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = sub_24B7FF620;
      v80[3] = &unk_27900F050;
      v35 = v21;
      v81 = v35;
      v36 = v69;
      v82 = v36;
      objc_msgSend_attachProgressCallBack_(v9, v37, v80, v38, v39);
      v43 = objc_msgSend_objectForKey_(self->_dowloadOptionsMapping, v40, v9, v41, v42);
      v47 = objc_msgSend__mobileAssetDownloadOptionsForClientOptions_(self, v44, v43, v45, v46);
      objc_initWeak(&location, self);
      v48 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v84 = v14;
        v85 = 2112;
        v86 = v70;
        _os_log_impl(&dword_24B7E5000, v48, OS_LOG_TYPE_DEFAULT, "Starting download task for UID: %@ assetID: %@", buf, 0x16u);
      }

      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_24B7FF6AC;
      v71[3] = &unk_27900F078;
      objc_copyWeak(&v78, &location);
      v72 = v14;
      v73 = v70;
      v74 = self;
      v75 = v9;
      v76 = v35;
      v77 = v36;
      objc_msgSend_startDownload_then_(v75, v49, v47, v71, v50);

      objc_destroyWeak(&v78);
      objc_destroyWeak(&location);

      v51 = v81;
    }

    else
    {
      v52 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24B7E5000, v52, OS_LOG_TYPE_DEFAULT, "Not downloading since network is not reachable", buf, 2u);
      }

      v53 = *MEMORY[0x277CCA470];
      v87[0] = *MEMORY[0x277CCA450];
      v87[1] = v53;
      v88[0] = @"Download operation was unsuccessful.";
      v88[1] = @"No network connection";
      v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, v88, v87, 2);
      v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v55, @"com.apple.FlexMusicKit", 0, v51);
      objc_msgSend_updateAsset_downloadProgress_error_(v21, v57, v69, v56, v58, -1.0);
      objc_msgSend_updateAsset_downloadProgress_error_(v21, v59, v69, 0, v60, 0.0);
      v61 = self->_downloadThrottleLock;
      objc_sync_enter(v61);
      objc_msgSend_removeObject_(self->_processingDownloadSet, v62, v9, v63, v64);
      objc_msgSend_removeObjectForKey_(self->_dowloadOptionsMapping, v65, v9, v66, v67);
      objc_sync_exit(v61);
    }
  }

  else
  {
    v14 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v14, OS_LOG_TYPE_DEFAULT, "Not downloading due to nil mobile asset", buf, 2u);
    }
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownloadOfAsset:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v68 = objc_msgSend_songUID(v4, v5, v6, v7, v8);
  v67 = objc_msgSend_assetID(v4, v9, v10, v11, v12);
  v13 = self->_downloadThrottleLock;
  objc_sync_enter(v13);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v14 = self->_pendingDownloadSet;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v79, v90, 16);
  if (v19)
  {
    v20 = *v80;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v80 != v20)
      {
        objc_enumerationMutation(v14);
      }

      v22 = *(*(&v79 + 1) + 8 * v21);
      if (objc_msgSend_isEqualToSongAsset_(v22, v16, v4, v17, v18))
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v79, v90, 16);
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v23 = v22;

    if (v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_9:
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v27 = self->_processingDownloadSet;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v75, v89, 16);
  if (v32)
  {
    v33 = *v76;
LABEL_13:
    v34 = 0;
    while (1)
    {
      if (*v76 != v33)
      {
        objc_enumerationMutation(v27);
      }

      v35 = *(*(&v75 + 1) + 8 * v34);
      if (objc_msgSend_isEqualToSongAsset_(v35, v29, v4, v30, v31))
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v75, v89, 16);
        if (v32)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v23 = v35;

    if (!v23)
    {
      goto LABEL_27;
    }

LABEL_21:
    if (objc_msgSend_containsObject_(self->_pendingDownloadSet, v24, v23, v25, v26))
    {
      objc_msgSend_removeObject_(self->_pendingDownloadSet, v36, v23, v37, v38);
    }

    v42 = objc_msgSend_containsObject_(self->_processingDownloadSet, v36, v23, v37, v38);
    if (v42)
    {
      objc_msgSend_removeObject_(self->_processingDownloadSet, v39, v23, v40, v41);
    }

    v43 = objc_msgSend_objectForKey_(self->_dowloadOptionsMapping, v39, v23, v40, v41);
    v44 = v43 == 0;

    if (!v44)
    {
      objc_msgSend_removeObjectForKey_(self->_dowloadOptionsMapping, v45, v23, v46, v47);
      goto LABEL_33;
    }
  }

  else
  {
LABEL_19:

LABEL_27:
    v48 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v84 = v68;
      v85 = 2112;
      v86 = v67;
      _os_log_impl(&dword_24B7E5000, v48, OS_LOG_TYPE_DEFAULT, "Cancel download failed for mobile asset with songUID: %@ assetID: %@ - no mobile asset associated with song asset", buf, 0x16u);
    }

    LOBYTE(v42) = 0;
    v23 = 0;
  }

  v49 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v84 = v68;
    v85 = 2112;
    v86 = v67;
    v87 = 2112;
    v88 = v23;
    _os_log_impl(&dword_24B7E5000, v49, OS_LOG_TYPE_DEFAULT, "Cancel: Could not remove download options for songUID: %@ assetID: %@ - no associated options for mobile asset %@", buf, 0x20u);
  }

LABEL_33:
  objc_sync_exit(v13);

  v57 = objc_msgSend__existingSongForUID_(self, v50, v68, v51, v52);
  if (v57)
  {
    v58 = v42;
  }

  else
  {
    v58 = 0;
  }

  if (v58)
  {
    objc_msgSend_refreshState(v23, v53, v54, v55, v56);
    if (objc_msgSend_state(v23, v59, v60, v61, v62) == 4)
    {
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_24B8001F0;
      v69[3] = &unk_27900F0A0;
      v70 = v68;
      v71 = v67;
      v72 = self;
      v73 = v57;
      v74 = v4;
      objc_msgSend_cancelDownload_(v23, v63, v69, v64, v65);
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownloadOfAllAssets
{
  v49 = *MEMORY[0x277D85DE8];
  v42 = self->_downloadThrottleLock;
  objc_sync_enter(v42);
  objc_msgSend_removeAllObjects(self->_pendingDownloadSet, v3, v4, v5, v6);
  v11 = objc_msgSend_copy(self->_processingDownloadSet, v7, v8, v9, v10);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v44, v48, 16);
  if (v17)
  {
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = objc_msgSend_attributes(v20, v13, v14, v15, v16, v42);
        v25 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"uuid", v23, v24);

        v29 = objc_msgSend__assetIDForMobileAsset_(self, v26, v20, v27, v28);
        v33 = objc_msgSend__existingSongForUID_(self, v30, v25, v31, v32);
        v37 = objc_msgSend_existingAssetWithID_(v33, v34, v29, v35, v36);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_cancelDownloadOfAsset_(self, v38, v37, v39, v40);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v44, v48, 16);
    }

    while (v17);
  }

  objc_sync_exit(v42);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_purgeAsset:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_attributes(v4, v5, v6, v7, v8);
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"uuid", v12, v13);

    v18 = objc_msgSend__assetIDForMobileAsset_(self, v15, v9, v16, v17);
    v22 = objc_msgSend__existingSongForUID_(self, v19, v14, v20, v21);
    objc_initWeak(&location, self);
    purgeQueue = self->_purgeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_24B8007B8;
    block[3] = &unk_27900F028;
    objc_copyWeak(&v33, &location);
    v28 = v9;
    v29 = v22;
    v30 = v18;
    v31 = v14;
    v32 = self;
    v24 = v14;
    v25 = v18;
    v26 = v22;
    dispatch_async(purgeQueue, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

- (void)requestPurgeOfAsset:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_assetID(v4, v5, v6, v7, v8);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"FMSongArtworkAssetID", v11, v12);

    if (isEqualToString)
    {
      v18 = FlexMobileAssetPropertyArtwork;
    }

    else
    {
      v30 = objc_msgSend_assetID(v4, v14, v15, v16, v17);
      v34 = objc_msgSend_isEqualToString_(v30, v31, @"FMSongBundleAssetID", v32, v33);

      if (!v34)
      {
        v35 = 0;
        goto LABEL_11;
      }

      v18 = FlexMobileAssetPropertySongBundle;
    }

    v35 = *v18;
LABEL_11:
    objc_initWeak(buf, self);
    triggerDownloadAndPurgeQueue = self->_triggerDownloadAndPurgeQueue;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_24B801294;
    v39[3] = &unk_27900EFB8;
    objc_copyWeak(&v43, buf);
    v40 = v35;
    v41 = v4;
    v42 = self;
    v37 = v35;
    dispatch_async(triggerDownloadAndPurgeQueue, v39);

    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
    goto LABEL_12;
  }

  v19 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_msgSend_songUID(v4, v20, v21, v22, v23);
    v29 = objc_msgSend_assetID(v4, v25, v26, v27, v28);
    *buf = 138412546;
    v45 = v24;
    v46 = 2112;
    v47 = v29;
    _os_log_impl(&dword_24B7E5000, v19, OS_LOG_TYPE_DEFAULT, "attempting to purge on a non MobileAsset backed asset %@ %@", buf, 0x16u);
  }

LABEL_12:
  v38 = *MEMORY[0x277D85DE8];
}

- (unint64_t)assetStatus:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_assetStatus(v3, v4, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_localURL(v3, v4, v5, v6, v7);

    v8 = v9 == 0;
    v3 = v9;
  }

  return v8;
}

- (int64_t)_responseForDownloadResult:(int64_t)a3
{
  if (a3 > 0x23)
  {
    return 3;
  }

  else
  {
    return qword_24B818CC0[a3];
  }
}

- (id)_mobileAssetCancelDownloadResultStringValue:(int64_t)a3
{
  if (a3 >= 8)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"cancel error %li", v3, v4, a3);
  }

  else
  {
    v6 = off_27900F0C0[a3];
  }

  return v6;
}

- (id)_mobileAssetDownloadResultStringValue:(int64_t)a3
{
  if (a3 >= 0x24)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"download error %li", v3, v4, a3);
  }

  else
  {
    v6 = off_27900F100[a3];
  }

  return v6;
}

- (id)_mobileAssetPurgeResultStringValue:(int64_t)a3
{
  if (a3 >= 0xC)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"purge error %li", v3, v4, a3);
  }

  else
  {
    v6 = off_27900F220[a3];
  }

  return v6;
}

- (id)_mobileAssetQueryResultStringValue:(int64_t)a3
{
  if (a3 < 0xD && ((0x17FFu >> a3) & 1) != 0)
  {
    v6 = off_27900F280[a3];
  }

  else
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"query error %li", v3, v4, a3);
  }

  return v6;
}

- (id)fetchSongsWithOptions:(id)a3
{
  v154 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_enableFetchCache && (objc_msgSend_cloudManagedSongs(self, v4, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_count(v9, v10, v11, v12, v13), v9, v14))
  {
    v15 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v15, OS_LOG_TYPE_DEFAULT, "fetchAllSongsWithOptions returning cached songs", buf, 2u);
    }

    v20 = objc_msgSend_cloudManagedSongs(self, v16, v17, v18, v19);
  }

  else
  {
    v140 = v8;
    v21 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v21, OS_LOG_TYPE_DEFAULT, "fetchAllSongsWithOptions making a query into MobileAsset", buf, 2u);
    }

    v24 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(self, v22, @"SongBundle", 0, v23);
    v29 = objc_msgSend_set(MEMORY[0x277CBEB58], v25, v26, v27, v28);
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v30 = v24;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v145, v153, 16);
    if (v32)
    {
      v37 = v32;
      v38 = *v146;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v146 != v38)
          {
            objc_enumerationMutation(v30);
          }

          v40 = objc_msgSend_attributes(*(*(&v145 + 1) + 8 * i), v33, v34, v35, v36);
          v44 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"uuid", v42, v43);

          if (v44)
          {
            objc_msgSend_addObject_(v29, v45, v44, v46, v47);
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v145, v153, 16);
      }

      while (v37);
    }

    v51 = objc_msgSend__metadataMappingForUUIDSet_(self, v48, v29, v49, v50);
    v139 = v30;
    v138 = objc_msgSend__newestContentSetFromAssets_metadataMapping_(self, v52, v30, v51, v53);
    v56 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(self, v54, v138, v51, v55);
    v61 = objc_msgSend_date(MEMORY[0x277CBEAA8], v57, v58, v59, v60);
    v135 = v56;
    v136 = v51;
    v64 = objc_msgSend__processResults_metadataMapping_(self, v62, v56, v51, v63);
    v65 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v70 = objc_msgSend_date(MEMORY[0x277CBEAA8], v66, v67, v68, v69);
      objc_msgSend_timeIntervalSinceDate_(v70, v71, v61, v72, v73);
      *buf = 134217984;
      v152 = v74;
      _os_log_impl(&dword_24B7E5000, v65, OS_LOG_TYPE_DEFAULT, "fetched songs processed in %.2f seconds\n", buf, 0xCu);
    }

    v137 = v61;

    objc_msgSend_removeAllObjects(v29, v75, v76, v77, v78);
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v20 = v64;
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v79, &v141, v150, 16);
    if (v80)
    {
      v85 = v80;
      v86 = *v142;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v142 != v86)
          {
            objc_enumerationMutation(v20);
          }

          v88 = *(*(&v141 + 1) + 8 * j);
          v89 = objc_msgSend_uid(v88, v81, v82, v83, v84);
          v93 = objc_msgSend__existingSongForUID_(self, v90, v89, v91, v92);

          if (!v93)
          {
            v149 = v88;
            v96 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v94, &v149, 1, v95);
            objc_msgSend__registerSongs_(self, v97, v96, v98, v99);

            v104 = objc_msgSend_uid(v88, v100, v101, v102, v103);
            objc_msgSend_addObject_(v29, v105, v104, v106, v107);
          }
        }

        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v81, &v141, v150, 16);
      }

      while (v85);
    }

    if (objc_msgSend_count(v29, v108, v109, v110, v111))
    {
      v116 = objc_msgSend_allObjects(v29, v112, v113, v114, v115);
      v119 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(self, v117, @"Artwork", v116, v118);

      v123 = objc_msgSend__metadataMappingForUUIDSet_(self, v120, v29, v121, v122);

      v126 = objc_msgSend__newestContentSetFromAssets_metadataMapping_(self, v124, v119, v123, v125);
      v129 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(self, v127, v126, v123, v128);

      v132 = objc_msgSend__processResults_metadataMapping_(self, v130, v129, v123, v131);
      v8 = v140;
    }

    else
    {
      v8 = v140;
      v129 = v135;
      v123 = v136;
    }
  }

  v133 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)fetchSongWithUID:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend__existingSongForUID_(self, v5, v4, v6, v7);
  if (!v8)
  {
    v9 = objc_opt_new();
    v13 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v10, @"uid == %@", v11, v12, v4);
    objc_msgSend_setPredicate_(v9, v14, v13, v15, v16);

    v20 = objc_msgSend_fetchSongsWithOptions_(self, v17, v9, v18, v19);
    v8 = objc_msgSend_firstObject(v20, v21, v22, v23, v24);
  }

  return v8;
}

@end
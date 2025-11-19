@interface IMPhotoLibraryPersistenceManager
+ (id)_assetFetchQueue;
+ (id)_photoLibraryInternalQueue;
+ (id)photosSyndicationIdentifiersForMessage:(id)a3 transcriptChatItem:(id)a4;
+ (id)sharedInstance;
- (BOOL)_invalidateCacheDueToChanges:(id)a3;
- (BOOL)_isListenerRegistered:(id)a3;
- (IMPhotoLibraryPersistenceManager)init;
- (NSHashTable)listeners;
- (id)_cachedSaveStateForIdentifier:(id)a3;
- (unint64_t)cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)a3 shouldFetchAndNotifyAsNeeded:(BOOL)a4 didStartFetch:(BOOL *)a5;
- (void)__notifyListeners;
- (void)_coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary;
- (void)_invalidateCaches;
- (void)_notifyListeners;
- (void)_openPhotoLibraryIfNecessary;
- (void)cacheCompletedSaveForSyndicationIdentifiers:(id)a3;
- (void)fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)a3 completion:(id)a4;
- (void)photoLibraryDidChange:(id)a3;
- (void)registerPhotoLibraryPersistenceManagerListener:(id)a3;
- (void)registerPhotoLibraryPersistenceManagerSession:(id)a3;
- (void)unregisterAllPhotoLibraryPersistenceManagerListeners;
- (void)unregisterPhotoLibraryPersistenceManagerListener:(id)a3;
- (void)unregisterPhotoLibraryPersistenceManagerSession:(id)a3;
@end

@implementation IMPhotoLibraryPersistenceManager

+ (id)sharedInstance
{
  if (qword_1ED767898 != -1)
  {
    sub_1A84E0374();
  }

  v3 = qword_1ED767860;

  return v3;
}

- (IMPhotoLibraryPersistenceManager)init
{
  v17.receiver = self;
  v17.super_class = IMPhotoLibraryPersistenceManager;
  v2 = [(IMPhotoLibraryPersistenceManager *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syndicationIdentifierSaveStateCache = v2->_syndicationIdentifierSaveStateCache;
    v2->_syndicationIdentifierSaveStateCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syndicationIdentifierFetchResultCache = v2->_syndicationIdentifierFetchResultCache;
    v2->_syndicationIdentifierFetchResultCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syndicationIdentifierToAssetUUIDCache = v2->_syndicationIdentifierToAssetUUIDCache;
    v2->_syndicationIdentifierToAssetUUIDCache = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    syndicationIdentifiersPendingFetch = v2->_syndicationIdentifiersPendingFetch;
    v2->_syndicationIdentifiersPendingFetch = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    syndicationIdentifiersWithActiveFetch = v2->_syndicationIdentifiersWithActiveFetch;
    v2->_syndicationIdentifiersWithActiveFetch = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    sessions = v2->_sessions;
    v2->_sessions = v13;

    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = 0;
  }

  return v2;
}

+ (id)_assetFetchQueue
{
  if (qword_1EB2E9178 != -1)
  {
    sub_1A84E0388();
  }

  v3 = qword_1EB2E9170;

  return v3;
}

+ (id)_photoLibraryInternalQueue
{
  if (qword_1EB2E9128 != -1)
  {
    sub_1A84E039C();
  }

  v3 = qword_1EB2E9120;

  return v3;
}

+ (id)photosSyndicationIdentifiersForMessage:(id)a3 transcriptChatItem:(id)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = objc_msgSend_fileTransferGUIDs(v5, v6, v7);
    v12 = objc_msgSend_count(v9, v10, v11);

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v15 = objc_msgSend_message(v8, v13, v14);
        v18 = objc_msgSend_fileTransferGUIDs(v15, v16, v17);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = 0;
          goto LABEL_8;
        }

        v30 = objc_msgSend_transferGUID(v8, v28, v29);
        v15 = v30;
        if (!v30)
        {
          v19 = MEMORY[0x1E695E0F0];
          goto LABEL_7;
        }

        v38[0] = v30;
        v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v38, 1);
      }

      v19 = v18;
LABEL_7:

LABEL_8:
      v20 = objc_opt_new();
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = sub_1A83005FC;
      v35 = &unk_1E7811580;
      v36 = v5;
      v37 = v20;
      v21 = v20;
      objc_msgSend_enumerateObjectsUsingBlock_(v19, v22, &v32);
      v25 = objc_msgSend_copy(v21, v23, v24, v32, v33, v34, v35);

      goto LABEL_10;
    }
  }

  v25 = MEMORY[0x1E695E0F0];
LABEL_10:

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)_invalidateCacheDueToChanges:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v48 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Invalidating cache", buf, 2u);
    }
  }

  v49 = self;
  objc_sync_enter(v49);
  if (objc_msgSend_IMDeviceIsChinaRegion(MEMORY[0x1E69A8020], v5, v6) && (objc_msgSend_deletedObjectIDs(v48, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_count(v9, v10, v11) == 0, v9, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "Not flushing save state cache as there were no deletions", buf, 2u);
      }
    }

    v15 = 0;
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v13 = objc_msgSend_allKeys(v49->_syndicationIdentifierFetchResultCache, v7, v8);
    v15 = 0;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v50, v56, 16);
    if (v17)
    {
      v18 = *v51;
      obj = v13;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          v21 = objc_msgSend_objectForKey_(v49->_syndicationIdentifierFetchResultCache, v16, v20);
          v23 = objc_msgSend_changeDetailsForFetchResult_(v48, v22, v21);
          v26 = v23;
          if (v23)
          {
            v29 = objc_msgSend_fetchResultAfterChanges(v23, v24, v25);
            if (v29)
            {
              v30 = objc_msgSend_fetchResultAfterChanges(v26, v27, v28);
              v33 = objc_msgSend_count(v30, v31, v32);

              v36 = objc_msgSend_fetchResultBeforeChanges(v26, v34, v35);
              v39 = objc_msgSend_count(v36, v37, v38);

              objc_msgSend_setObject_forKey_(v49->_syndicationIdentifierFetchResultCache, v40, v29, v20);
              v15 = (v33 != 0) ^ (v39 != 0);
            }

            else
            {
              objc_msgSend_removeObjectForKey_(v49->_syndicationIdentifierFetchResultCache, v27, v20);
              v15 = 1;
            }
          }
        }

        v13 = obj;
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v50, v56, 16);
      }

      while (v17);
    }

    objc_msgSend_removeAllObjects(v49->_syndicationIdentifierToAssetUUIDCache, v41, v42);
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v55 = v15 & 1;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Photo library changed, will invalidate %d", buf, 8u);
      }
    }
  }

  objc_sync_exit(v49);

  v45 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (id)_cachedSaveStateForIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69A8020];
  v5 = a3;
  if (objc_msgSend_IMDeviceIsChinaRegion(v4, v6, v7))
  {
    v9 = objc_msgSend_objectForKey_(self->_syndicationIdentifierSaveStateCache, v8, v5);
  }

  else
  {
    v10 = objc_msgSend_objectForKey_(self->_syndicationIdentifierFetchResultCache, v8, v5);

    if (v10)
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = objc_msgSend_count(v10, v11, v12) != 0;
      v9 = objc_msgSend_numberWithBool_(v13, v15, v14);
    }

    else
    {
      v9 = 0;
    }

    v5 = v10;
  }

  return v9;
}

- (unint64_t)cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)a3 shouldFetchAndNotifyAsNeeded:(BOOL)a4 didStartFetch:(BOOL *)a5
{
  v6 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v11 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (objc_msgSend_count(v8, v9, v10))
  {
    v45 = v6;
    v43 = a5;
    v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = v11;
    v12 = v11;
    v14 = 0;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v47, v55, 16);
    if (v15)
    {
      v16 = *v48;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          v19 = self;
          objc_sync_enter(v19);
          v21 = objc_msgSend__cachedSaveStateForIdentifier_(v19, v20, v18);
          objc_sync_exit(v19);

          if (v21)
          {
            if (objc_msgSend_BOOLValue(v21, v22, v23))
            {
              ++v14;
            }
          }

          else if ((objc_msgSend_IMDeviceIsChinaRegion(MEMORY[0x1E69A8020], v22, v23) & 1) == 0)
          {
            v24 = v19;
            objc_sync_enter(v24);
            v26 = objc_msgSend_containsObject_(self->_syndicationIdentifiersWithActiveFetch, v25, v18);
            objc_sync_exit(v24);

            if ((v26 & 1) == 0)
            {
              objc_msgSend_addObject_(v46, v27, v18);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v28, &v47, v55, 16);
      }

      while (v15);
    }

    if (v45 && objc_msgSend_count(v46, v29, v30))
    {
      if (v43)
      {
        *v43 = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v36 = objc_msgSend_count(v46, v34, v35);
          *buf = 136315394;
          v52 = "[IMPhotoLibraryPersistenceManager cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:shouldFetchAndNotifyAsNeeded:didStartFetch:]";
          v53 = 2048;
          v54 = v36;
          _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "%s Adding %lu identifiers to coalesced fetch", buf, 0x16u);
        }
      }

      v37 = objc_msgSend_syndicationIdentifiersPendingFetch(self, v31, v32, v43);
      objc_msgSend_unionSet_(v37, v38, v46);

      objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v39, self, sel__coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary, 0);
      objc_msgSend_performSelector_withObject_afterDelay_(self, v40, sel__coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary, 0, 0.25);
    }

    v11 = v44;
  }

  else
  {
    v14 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)cacheCompletedSaveForSyndicationIdentifiers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_IMDeviceIsChinaRegion(MEMORY[0x1E69A8020], v5, v6))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
    if (v9)
    {
      v10 = *v19;
      v11 = MEMORY[0x1E695E118];
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = self;
          objc_sync_enter(v14);
          objc_msgSend_setObject_forKey_(self->_syndicationIdentifierSaveStateCache, v15, v11, v13, v18);
          objc_sync_exit(v14);

          ++v12;
        }

        while (v9 != v12);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v18, v22, 16);
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_syndicationIdentifiersPendingFetch(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_syndicationIdentifiersPendingFetch(self, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v32 = 134217984;
        v33 = objc_msgSend_count(v13, v15, v16);
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Fetching %lu identifiers that weren't cached", &v32, 0xCu);
      }
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_1A83013E4;
    v29 = &unk_1E7812040;
    v30 = v13;
    v31 = self;
    v17 = v13;
    objc_msgSend_fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary_completion_(self, v18, v17, &v26);
    v21 = objc_msgSend_syndicationIdentifiersPendingFetch(self, v19, v20, v26, v27, v28, v29);
    objc_msgSend_removeAllObjects(v21, v22, v23);
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "IMPhotoLibraryPersistenceManager -- syndicationIdentifiersPendingFetch cleared before fetch could begin, this is an invalid state", &v32, 2u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)a3 completion:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v53 = v6;
  if (objc_msgSend_count(v6, v8, v9))
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_1A8259BA0;
    v74 = sub_1A825AEFC;
    v75 = 0;
    v54 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v10 = v6;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v66, v82, 16);
    v52 = v7;
    if (v12)
    {
      v13 = *v67;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v67 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v66 + 1) + 8 * i);
          v16 = self;
          objc_sync_enter(v16);
          v19 = objc_msgSend__cachedSaveStateForIdentifier_(v16, v17, v15);
          if (!v71[5])
          {
            v20 = objc_msgSend_objectForKey_(self->_syndicationIdentifierToAssetUUIDCache, v18, v15);
            v21 = v71[5];
            v71[5] = v20;
          }

          objc_sync_exit(v16);

          if (v19)
          {
            if (objc_msgSend_BOOLValue(v19, v22, v23))
            {
              ++v77[3];
            }
          }

          else if ((objc_msgSend_IMDeviceIsChinaRegion(MEMORY[0x1E69A8020], v22, v23) & 1) == 0)
          {
            v24 = v16;
            objc_sync_enter(v24);
            v26 = objc_msgSend_containsObject_(self->_syndicationIdentifiersWithActiveFetch, v25, v15);
            objc_sync_exit(v24);

            if ((v26 & 1) == 0)
            {
              objc_msgSend_addObject_(v54, v27, v15);
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v28, &v66, v82, 16);
      }

      while (v12);
    }

    v31 = objc_msgSend_count(v54, v29, v30);
    if (v31 && (sub_1A8301A70(v31, v32, v33), (objc_opt_respondsToSelector() & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v37 = objc_msgSend_count(v54, v35, v36);
          *buf = 136315394;
          *&buf[4] = "[IMPhotoLibraryPersistenceManager fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:completion:]";
          *&buf[12] = 2048;
          *&buf[14] = v37;
          _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "%s: %ld identifiers need save state fetch", buf, 0x16u);
        }
      }

      v38 = self;
      objc_sync_enter(v38);
      syndicationIdentifiersWithActiveFetch = v38->_syndicationIdentifiersWithActiveFetch;
      v42 = objc_msgSend_allObjects(v54, v40, v41);
      objc_msgSend_addObjectsFromArray_(syndicationIdentifiersWithActiveFetch, v43, v42);

      objc_sync_exit(v38);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v81 = 0;
      v44 = v38->_photoLibrary == 0;
      v45 = dispatch_group_create();
      dispatch_group_enter(v45);
      v46 = objc_opt_class();
      v49 = objc_msgSend__assetFetchQueue(v46, v47, v48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8301B50;
      block[3] = &unk_1E7812068;
      v65 = v44;
      block[4] = v38;
      v63 = buf;
      v64 = &v70;
      v61 = v54;
      v62 = v45;
      v50 = v45;
      dispatch_async(v49, block);

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = sub_1A8301E9C;
      v55[3] = &unk_1E7812090;
      v57 = &v76;
      v58 = buf;
      v56 = v52;
      v59 = &v70;
      dispatch_group_notify(v50, MEMORY[0x1E69E96A0], v55);

      _Block_object_dispose(buf, 8);
    }

    else if (v7)
    {
      (*(v7 + 2))(v7, v77[3], v71[5]);
    }

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);
    v7 = v52;
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isListenerRegistered:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_listeners(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, v4);

  return v9;
}

- (void)registerPhotoLibraryPersistenceManagerListener:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E03B0(v9, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_10;
  }

  if ((objc_msgSend__isListenerRegistered_(self, v4, v5) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = v5;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Registering as photo library persistence change listener %p", &v19, 0xCu);
      }
    }

    v9 = objc_msgSend_listeners(self, v6, v7);
    objc_msgSend_addObject_(v9, v10, v5);
LABEL_10:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)unregisterAllPhotoLibraryPersistenceManagerListeners
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Unregistering all persistence manager listeners", buf, 2u);
    }
  }

  listeners = self->_listeners;
  if (listeners)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = objc_msgSend_copy(listeners, v3, v4, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v19, 16);
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_unregisterPhotoLibraryPersistenceManagerListener_(self, v9, *(*(&v14 + 1) + 8 * v12++));
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v14, v19, 16);
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPhotoLibraryPersistenceManagerListener:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v23 = 134217984;
      v24 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Unregistering listener %p", &v23, 0xCu);
    }
  }

  if (!v4)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E03E8(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_19;
  }

  isListenerRegistered = objc_msgSend__isListenerRegistered_(self, v5, v4);
  v8 = IMOSLoggingEnabled();
  if ((isListenerRegistered & 1) == 0)
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v23 = 134217984;
      v24 = v4;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Not unregistering listener because it's already not listening %p", &v23, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v8)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = 134217984;
      v24 = v4;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Unregistering as photo library persistence change listener %p", &v23, 0xCu);
    }
  }

  if (self->_listeners)
  {
    v12 = objc_msgSend_listeners(self, v9, v10);
    objc_msgSend_removeObject_(v12, v13, v4);
  }

LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)registerPhotoLibraryPersistenceManagerSession:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Registering active session with GUID %@", &v11, 0xCu);
      }
    }

    v8 = objc_msgSend_sessions(self, v5, v6);
    objc_msgSend_addObject_(v8, v9, v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPhotoLibraryPersistenceManagerSession:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_sessions(self, v4, v5);
    objc_msgSend_removeObject_(v7, v8, v6);

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = objc_msgSend_sessions(self, v12, v13);
        v27 = 138412546;
        v28 = v6;
        v29 = 2048;
        v30 = objc_msgSend_count(v14, v15, v16);
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Unregistering session with GUID %@ remaining sessions active %lu", &v27, 0x16u);
      }
    }

    v17 = objc_msgSend_sessions(self, v9, v10);
    v20 = objc_msgSend_count(v17, v18, v19) == 0;

    if (v20)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "No more active sessions, unregistering all listeners and clearing caches", &v27, 2u);
        }
      }

      objc_msgSend_unregisterAllPhotoLibraryPersistenceManagerListeners(self, v21, v22);
      objc_msgSend__invalidateCaches(self, v24, v25);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateCaches
{
  if ((objc_msgSend_IMDeviceIsChinaRegion(MEMORY[0x1E69A8020], a2, v2) & 1) == 0)
  {
    objc_msgSend_removeAllObjects(self->_syndicationIdentifierSaveStateCache, v4, v5);
    syndicationIdentifierFetchResultCache = self->_syndicationIdentifierFetchResultCache;

    objc_msgSend_removeAllObjects(syndicationIdentifierFetchResultCache, v6, v7);
  }
}

- (NSHashTable)listeners
{
  listeners = self->_listeners;
  if (!listeners)
  {
    v5 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], a2, v2);
    v6 = self->_listeners;
    self->_listeners = v5;

    v7 = objc_opt_class();
    v10 = objc_msgSend__photoLibraryInternalQueue(v7, v8, v9);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8302874;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    dispatch_async(v10, block);

    listeners = self->_listeners;
  }

  if (!self->_photoLibrary && listeners)
  {
    v11 = objc_opt_class();
    v14 = objc_msgSend__photoLibraryInternalQueue(v11, v12, v13);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A830291C;
    v16[3] = &unk_1E780FCB0;
    v16[4] = self;
    dispatch_async(v14, v16);

    listeners = self->_listeners;
  }

  return listeners;
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83029BC;
  v6[3] = &unk_1E7810140;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_notifyListeners
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel___notifyListeners, 0);

  objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel___notifyListeners, 0, 0.25);
}

- (void)__notifyListeners
{
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_listeners(self, v6, v7);
      *buf = 134217984;
      v25 = objc_msgSend_count(v8, v9, v10);
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Broadcasting changes to %lu listeners", buf, 0xCu);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = objc_msgSend_allObjects(self->_listeners, v3, v4, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
  if (v15)
  {
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_photoLibraryPersistedSyndicatedAssetSetDidChange(*(*(&v19 + 1) + 8 * v17++), v13, v14);
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v19, v23, 16);
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_openPhotoLibraryIfNecessary
{
  if (!self->_photoLibrary)
  {
    v35[5] = v3;
    v35[6] = v4;
    v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
    isRedesignedDetailsViewEnabled = objc_msgSend_isRedesignedDetailsViewEnabled(v6, v7, v8);

    v13 = sub_1A8302D8C(v10, v11, v12);
    if (isRedesignedDetailsViewEnabled)
    {
      v16 = objc_msgSend_systemPhotoLibraryURL(v13, v14, v15);
      if (!v16)
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E0498(v22, v28, v29, v30, v31, v32, v33, v34);
        }

        goto LABEL_11;
      }

      v19 = v16;
      v20 = objc_alloc(sub_1A8302D8C(v16, v17, v18));
      v22 = objc_msgSend_initWithPhotoLibraryURL_(v20, v21, v19);
    }

    else
    {
      v22 = objc_msgSend_sharedPhotoLibrary(v13, v14, v15);
    }

    v35[0] = 0;
    v24 = objc_msgSend_openAndWaitWithUpgrade_error_(v22, v23, 0, v35);
    v25 = v35[0];
    if (v24)
    {
      v26 = v22;
      p_super = &self->_photoLibrary->super;
      self->_photoLibrary = v26;
    }

    else
    {
      p_super = IMLogHandleForCategory();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0420(v25, p_super);
      }
    }

LABEL_11:
  }
}

@end
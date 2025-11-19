@interface IMBalloonPluginAttributionController
+ (id)sharedInstance;
- (BOOL)shouldShowAttributionForBundleID:(id)a3;
- (IMBalloonPluginAttributionController)init;
- (id)_currentTimestamp;
- (void)_handleInstalledPluginsChanged;
- (void)_purgeLeastRecentlySeenAppBundleIDsIfNecessary;
- (void)_saveToFile;
- (void)didShowAttributionForBundleIDs:(id)a3;
- (void)startExpiryTimer;
@end

@implementation IMBalloonPluginAttributionController

+ (id)sharedInstance
{
  if (qword_1ED767918 != -1)
  {
    sub_1A84DF1B8();
  }

  v3 = qword_1ED7678B8;

  return v3;
}

- (IMBalloonPluginAttributionController)init
{
  v38 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = IMBalloonPluginAttributionController;
  v2 = [(IMBalloonPluginAttributionController *)&v36 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = sub_1A8284DE8();
    v6 = objc_msgSend_dictionaryWithContentsOfFile_(v3, v5, v4);
    expiredBundleIDToTimestampMap = v2->_expiredBundleIDToTimestampMap;
    v2->_expiredBundleIDToTimestampMap = v6;

    if (!v2->_expiredBundleIDToTimestampMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v9 = v2->_expiredBundleIDToTimestampMap;
      v2->_expiredBundleIDToTimestampMap = Mutable;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIDsDisplayingAttribution = v2->_bundleIDsDisplayingAttribution;
    v2->_bundleIDsDisplayingAttribution = v10;

    v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v14, v15, v2, sel__handleInstalledPluginsChanged, @"__kIMBalloonPluginManagerInstalledAppsChangedNotification", 0);

    objc_msgSend_setHasPerformedFirstAppExtensionLoad_(v2, v16, 0);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v17, v18, 0);
    v22 = objc_msgSend_allPlugins(v19, v20, v21);

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v32, v37, 16);
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setHasPerformedFirstAppExtensionLoad_(v2, v29, 1);
            goto LABEL_14;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, &v32, v37, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v30 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)startExpiryTimer
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v7 = objc_msgSend_bundleIDsDisplayingAttribution(self, v5, v6);
  v10 = objc_msgSend_allKeys(v7, v8, v9);
  v12 = objc_msgSend___imArrayByFilteringWithBlock_(v10, v11, &unk_1F1B6DD60);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v12;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v37, v41, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = objc_msgSend_bundleIDsDisplayingAttribution(self, v16, v17);
        v24 = objc_msgSend_objectForKey_(v22, v23, v21);
        v27 = objc_msgSend_BOOLValue(v24, v25, v26);

        if ((v27 & 1) == 0)
        {
          v28 = objc_msgSend_bundleIDsDisplayingAttribution(self, v16, v17);
          objc_msgSend_setObject_forKey_(v28, v29, MEMORY[0x1E695E118], v21);

          objc_msgSend_addObject_(v4, v30, v21);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v37, v41, 16);
    }

    while (v18);
  }

  if (objc_msgSend_count(v4, v31, v32))
  {
    objc_msgSend__expiryTimeout(self, v33, v34);
    v36 = v4;
    im_dispatch_after();
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)didShowAttributionForBundleIDs:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v26, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    v10 = *MEMORY[0x1E69A69F0];
    v11 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_containsString_(v13, v7, v10))
        {
          v15 = objc_msgSend_bundleIDsDisplayingAttribution(self, v7, v14);
          v17 = objc_msgSend_objectForKey_(v15, v16, v13);

          if (!v17)
          {
            v19 = objc_msgSend_bundleIDsDisplayingAttribution(self, v7, v18);
            objc_msgSend_setObject_forKey_(v19, v20, v11, v13);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v22, v26, 16);
    }

    while (v8);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldShowAttributionForBundleID:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsString_(v4, v5, *MEMORY[0x1E69A6A20]) & 1) != 0 || (objc_msgSend_containsString_(v4, v6, *MEMORY[0x1E69A6A08]))
  {
    goto LABEL_3;
  }

  if ((objc_msgSend_containsString_(v4, v7, *MEMORY[0x1E69A69C8]) & 1) != 0 || (objc_msgSend_containsString_(v4, v9, *MEMORY[0x1E69A68F8]) & 1) != 0 || (objc_msgSend_containsString_(v4, v10, *MEMORY[0x1E69A6980]) & 1) != 0 || (IMIsRunningInUnitTesting() & 1) == 0 && !objc_msgSend_hasPerformedFirstAppExtensionLoad(self, v12, v13))
  {
    v8 = 0;
    goto LABEL_8;
  }

  v14 = objc_msgSend_bundleIDsDisplayingAttribution(self, v12, v13);
  v16 = objc_msgSend_objectForKey_(v14, v15, v4);

  if (v16)
  {
LABEL_3:
    v8 = 1;
  }

  else
  {
    v19 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v17, v18);
    v21 = objc_msgSend_balloonPluginForBundleID_(v19, v20, v4);

    v24 = objc_msgSend_identifier(v21, v22, v23);
    isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v4);

    if ((isEqualToString & 1) != 0 || !objc_msgSend_containsString_(v4, v27, *MEMORY[0x1E69A69F0]))
    {
      v8 = 0;
    }

    else
    {
      v30 = objc_msgSend_expiredBundleIDToTimestampMap(self, v28, v29);
      v32 = objc_msgSend_objectForKey_(v30, v31, v4);
      v8 = v32 == 0;
    }
  }

LABEL_8:

  return v8;
}

- (id)_currentTimestamp
{
  v3 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, v2);

  return objc_msgSend_numberWithDouble_(v3, v4, v5);
}

- (void)_saveToFile
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_expiredBundleIDToTimestampMap(self, a2, v2);
  v4 = sub_1A8284DE8();
  objc_msgSend_writeToFile_atomically_(v3, v5, v4, 1);

  v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7);
  v15 = *MEMORY[0x1E696A3A0];
  v16[0] = *MEMORY[0x1E696A388];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v16, &v15, 1);
  v11 = sub_1A8284DE8();
  v14 = 0;
  objc_msgSend_setAttributes_ofItemAtPath_error_(v8, v12, v10, v11, &v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_purgeLeastRecentlySeenAppBundleIDsIfNecessary
{
  v4 = objc_msgSend_expiredBundleIDToTimestampMap(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) - 100;

  if (v7 >= 1)
  {
    v10 = objc_msgSend_expiredBundleIDToTimestampMap(self, v8, v9);
    v13 = objc_msgSend_allKeys(v10, v11, v12);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A8285890;
    v27[3] = &unk_1E78104A0;
    v27[4] = self;
    v15 = objc_msgSend_sortedArrayUsingComparator_(v13, v14, v27);

    for (i = 0; i != v7; ++i)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, i);
      v21 = objc_msgSend_expiredBundleIDToTimestampMap(self, v19, v20);
      objc_msgSend_removeObjectForKey_(v21, v22, v18);

      v25 = objc_msgSend_bundleIDsDisplayingAttribution(self, v23, v24);
      objc_msgSend_removeObjectForKey_(v25, v26, v18);
    }
  }
}

- (void)_handleInstalledPluginsChanged
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_msgSend_sharedInstance(IMBalloonPluginManager, a2, v2);
  v8 = objc_msgSend_allPlugins(v5, v6, v7);
  v10 = objc_msgSend___imArrayByApplyingBlock_(v8, v9, &unk_1F1B6DD80);
  v12 = objc_msgSend_setWithArray_(v4, v11, v10);

  hasPerformedFirstAppExtensionLoad = objc_msgSend_hasPerformedFirstAppExtensionLoad(self, v13, v14);
  if ((hasPerformedFirstAppExtensionLoad & 1) == 0)
  {
    if (!objc_msgSend_count(v12, v15, v16))
    {
      goto LABEL_19;
    }

    objc_msgSend_setHasPerformedFirstAppExtensionLoad_(self, v18, 1);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = objc_msgSend_expiredBundleIDToTimestampMap(self, v15, v16);
  v22 = objc_msgSend_allKeys(v19, v20, v21);

  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v47, v51, 16);
  if (!v24)
  {

    if (hasPerformedFirstAppExtensionLoad)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v26 = v24;
  v46 = 0;
  v27 = hasPerformedFirstAppExtensionLoad ^ 1;
  v28 = *v48;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v48 != v28)
      {
        objc_enumerationMutation(v22);
      }

      v30 = *(*(&v47 + 1) + 8 * i);
      if (objc_msgSend_containsObject_(v12, v25, v30))
      {
        v33 = objc_msgSend_expiredBundleIDToTimestampMap(self, v31, v32);
        objc_msgSend_removeObjectForKey_(v33, v34, v30);

        v46 = 1;
      }

      v35 = objc_msgSend_bundleIDsDisplayingAttribution(self, v31, v32);
      v37 = objc_msgSend_objectForKey_(v35, v36, v30);

      if (v37)
      {
        v39 = objc_msgSend_bundleIDsDisplayingAttribution(self, v25, v38);
        objc_msgSend_removeObjectForKey_(v39, v40, v30);

        v27 = 1;
      }
    }

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v47, v51, 16);
  }

  while (v26);

  if (v46)
  {
    objc_msgSend__saveToFile(self, v41, v42);
  }

  if (v27)
  {
LABEL_18:
    v43 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v41, v42);
    objc_msgSend___mainThreadPostNotificationName_object_(v43, v44, @"__kIMBalloonPluginAttributionChangedNotification", 0);
  }

LABEL_19:

  v45 = *MEMORY[0x1E69E9840];
}

@end
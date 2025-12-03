@interface IMBalloonPluginManager
+ (BOOL)_allowExtensionWithIdentifier:(id)identifier;
+ (BOOL)_isExtensionBlocklisted:(id)blocklisted;
+ (BOOL)_shouldAddFindMyToBlockList;
+ (BOOL)_shouldAddGenPlaygroundToBlockList;
+ (BOOL)_shouldAddSafetyMonitorToBlockList;
+ (id)_extensionBlocklist;
+ (id)balloonProviderBundlePathURL;
+ (id)precacheBalloonAppExtensionsForExtensions:(id)extensions;
+ (id)sharedInstance;
+ (id)signpostLogHandle;
- (BOOL)_shouldSkipUpdatingPluginBundleIdentifier:(id)identifier;
- (Class)dataSourceClassForBundleID:(id)d;
- (IMBalloonPluginManager)init;
- (id)_appProxyBundleIdentifiersForAppPlugins;
- (id)_currentlyInstalledExtensionsExcludingExtensionPoint:(id)point;
- (id)_extensionWithIdentifier:(id)identifier;
- (id)_fallBackMessagesExtensionPluginForBundleID:(id)d;
- (id)_identifiersForAppPlugins;
- (id)_infoPlistPathForPluginCreatingFolderIfNeeded:(id)needed;
- (id)_insertPluginForAppBundle:(id)bundle balloonProviderBundle:(id)providerBundle;
- (id)_insertPluginForExtension:(id)extension balloonProviderBundle:(id)bundle precachedBalloonAppExtensions:(id)extensions timingCollection:(id)collection;
- (id)_loadAppExtensionDataSourcesForExtensionPoint:(id)point;
- (id)_metadataForPluginIdentifier:(id)identifier;
- (id)_pluginPlistPath:(id)path;
- (id)_pluginsForWhichWeHaveMetadata;
- (id)_proxyIdentifiersForPlugins;
- (id)allPlugins;
- (id)balloonPluginForBundleID:(id)d;
- (id)conversationID:(id)d appID:(id)iD;
- (id)dataSourceForPluginPayload:(id)payload;
- (id)existingDataSourceForMessageGUID:(id)d bundleID:(id)iD;
- (id)localParticipantIdentifierForAppID:(id)d conversationID:(id)iD;
- (id)recipientIDForRecipient:(id)recipient appID:(id)d;
- (id)signpostLogHandle;
- (id)systemBundleIdentifierForPluginIdentifier:(id)identifier;
- (void)_clearPluginMetadataForUninstalledApps;
- (void)_deleteMetaDataForPlugins:(id)plugins;
- (void)_findPluginsInPathInternal:(id)internal;
- (void)_findPluginsInPaths:(id)paths;
- (void)_loadAllDataSources;
- (void)_loadAppBundleDataSources;
- (void)_loadAppExtensionDataSources;
- (void)_moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions;
- (void)_postDeferredInstalledAppsChangedNotificationIfNecessary;
- (void)_postInstalledAppsChangedNotification;
- (void)_removePluginsForIdentifiers:(id)identifiers;
- (void)_removePluginsWithDelay;
- (void)_setPluginsToRemoveAndCallSelectorWithDelay:(id)delay;
- (void)_storeMetadata:(id)metadata _forPlugin:(id)plugin;
- (void)_transferUpdated:(id)updated;
- (void)_updatePluginsForBundles:(id)bundles;
- (void)_updatePluginsForExtensions:(id)extensions extensionPoint:(id)point precachedBalloonAppExtensions:(id)appExtensions;
- (void)dealloc;
- (void)insertDataSource:(id)source forGUID:(id)d;
- (void)insertPlugin:(id)plugin;
- (void)loadExtensionWithIdentifierIfNeeded:(id)needed;
- (void)pluginChatItem:(id)item didRelenquishNonResuableController:(id)controller contextIdentifier:(id)identifier;
- (void)pluginChatItem:(id)item didRelinquishReusableController:(id)controller contextIdentifier:(id)identifier;
- (void)pluginChatItemRequestedReleaseDataSource:(id)source;
- (void)removePluginWithBundleID:(id)d;
@end

@implementation IMBalloonPluginManager

- (IMBalloonPluginManager)init
{
  v111 = *MEMORY[0x1E69E9840];
  v107.receiver = self;
  v107.super_class = IMBalloonPluginManager;
  v96 = [(IMBalloonPluginManager *)&v107 init];
  if (v96)
  {
    v2 = objc_alloc_init(IMBalloonPluginManagerModel);
    model = v96->_model;
    v96->_model = v2;

    if (IMIsRunningInPluginCapableClient())
    {
      objc_msgSend__loadAllDataSources(v96, v4, v5);
      v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
      objc_msgSend_addObserver_selector_name_object_(v8, v9, v96, sel__transferUpdated_, @"__kIMFileTransferUpdatedNotification", 0);

      v10 = MEMORY[0x1E695DFF8];
      v11 = CPSharedResourcesDirectory();
      v13 = objc_msgSend_stringByAppendingString_(v11, v12, @"/Library");
      v15 = objc_msgSend_URLWithString_(v10, v14, v13);

      v17 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v15, v16, @"SMS", 1);

      v19 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v17, v18, @"PluginMetaDataCache", 1);

      v22 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v20, v21);
      v24 = objc_msgSend_valueForKey_(v22, v23, @"PluginMetaDataCachePath");
      LODWORD(v17) = v24 == 0;

      if (v17)
      {
        v98 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v25, v26);
        v41 = objc_msgSend_path(v19, v39, v40);
        v28 = objc_msgSend_stringByDeletingLastPathComponent(v41, v42, v43);

        v95 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v19, v44, v98, 1);

        v47 = objc_msgSend_model(v96, v45, v46);
        v50 = objc_msgSend_pluginMetaDataFolder(v47, v48, v49);
        IMSharedHelperEnsureDirectoryExistsAtPath();

        v97 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v51, v52);
        v106 = 0;
        v54 = objc_msgSend_contentsOfDirectoryAtPath_error_(v97, v53, v28, &v106);
        v19 = v106;
        if (v19 && IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v110 = v19;
            _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "Error = %@ while trying to get contents of folder", buf, 0xCu);
          }
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        obj = v54;
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v102, v108, 16);
        if (v58)
        {
          v59 = *v103;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v103 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v61 = *(*(&v102 + 1) + 8 * i);
              if (objc_msgSend_hasSuffix_(v61, v57, @"plist"))
              {
                v63 = objc_msgSend_lastPathComponent(v61, v57, v62);
                v65 = objc_msgSend_stringByAppendingPathComponent_(v98, v64, v63);
                v67 = objc_msgSend_stringByAppendingPathComponent_(v28, v66, v65);

                v69 = objc_msgSend_stringByAppendingPathComponent_(v28, v68, v61);
                v101 = v19;
                objc_msgSend_moveItemAtPath_toPath_error_(v97, v70, v69, v67, &v101);
                v71 = v101;

                v19 = v71;
              }
            }

            v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v102, v108, 16);
          }

          while (v58);
        }

        if (v19 && IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v110 = v19;
            _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_INFO, "Error = %@ while trying to copy file to new folder", buf, 0xCu);
          }
        }

        v75 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v72, v73);
        objc_msgSend_setObject_forKey_(v75, v76, v98, @"PluginMetaDataCachePath");
      }

      else
      {
        v98 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v25, v26);
        v28 = objc_msgSend_valueForKey_(v98, v27, @"PluginMetaDataCachePath");
        v95 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v19, v29, v28, 1);
      }

      v79 = objc_msgSend_path(v95, v77, v78);
      v82 = objc_msgSend_model(v96, v80, v81);
      objc_msgSend_setPluginMetaDataFolder_(v82, v83, v79);

      v100 = v96;
      dword_1ED7674A8 = IMDispatchForNotify();
      v86 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v84, v85);
      v89 = objc_msgSend_model(v100, v87, v88);
      objc_msgSend_setPluginIDToMetadataCache_(v89, v90, v86);
    }

    else if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v35 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v33, v34);
        v38 = objc_msgSend_bundleIdentifier(v35, v36, v37);
        *buf = 138412290;
        v110 = v38;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Un-allowlisted client tried to use IMBalloonPluginManager: %@", buf, 0xCu);
      }
    }

    v91 = objc_msgSend_model(v96, v30, v31);
    objc_msgSend_setHasCompletedInitialization_(v91, v92, 1);
  }

  v93 = *MEMORY[0x1E69E9840];
  return v96;
}

- (void)_loadAllDataSources
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v3, v4, @"loadAllDataSources");
  v7 = objc_msgSend_signpostLogHandle(self, v5, v6);
  v10 = objc_msgSend_signpostLogHandle(self, v8, v9);
  v11 = os_signpost_id_make_with_pointer(v10, "loadAllDataSources");

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v11, "loadAllDataSources", " enableTelemetry=YES ", &v31, 2u);
  }

  if (IMGetDomainBoolForKey())
  {
    v12 = IMBalloonProviderBundleRootDirectory();
    objc_msgSend__findPluginsInPathInternal_(self, v13, v12);

    objc_msgSend__findPluginsInPathInternal_(self, v14, @"/AppleInternal/Library/Bundles/Messages/iMessageBalloons/");
  }

  else
  {
    v17 = IMBalloonProviderBundlePaths();
    objc_msgSend__findPluginsInPaths_(self, v18, v17);
  }

  objc_msgSend__loadAppBundleDataSources(self, v15, v16);
  objc_msgSend__loadAppExtensionDataSources(self, v19, v20);
  v23 = objc_msgSend_signpostLogHandle(self, v21, v22);
  v26 = objc_msgSend_signpostLogHandle(self, v24, v25);
  v27 = os_signpost_id_make_with_pointer(v26, "loadAllDataSources");

  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v23, OS_SIGNPOST_INTERVAL_END, v27, "loadAllDataSources", " enableTelemetry=YES ", &v31, 2u);
  }

  objc_msgSend_stopTimingForKey_(v3, v28, @"loadAllDataSources");
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v3;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Finished loading all data sources: %@", &v31, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)signpostLogHandle
{
  v2 = objc_opt_class();

  return objc_msgSend_signpostLogHandle(v2, v3, v4);
}

+ (id)signpostLogHandle
{
  if (qword_1ED767650 != -1)
  {
    sub_1A8256FA4();
  }

  v3 = qword_1ED767648;

  return v3;
}

- (void)_loadAppBundleDataSources
{
  v22[2] = *MEMORY[0x1E69E9840];
  if ((byte_1EB2EA240 & 1) == 0)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = IMAppBundleRootDirectory();
    v6 = objc_msgSend_fileURLWithPath_(v3, v5, v4);

    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
    v10 = *MEMORY[0x1E695DB78];
    v22[0] = *MEMORY[0x1E695DC30];
    v22[1] = v10;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v22, 2);
    v14 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v9, v13, v6, v12, 4, 0);

    v17 = objc_msgSend_allObjects(v14, v15, v16);
    v19 = objc_msgSend___imArrayByApplyingBlock_(v17, v18, &unk_1F1B6E4A0);

    objc_msgSend__updatePluginsForBundles_(self, v20, v19);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_loadAppExtensionDataSources
{
  v3 = objc_msgSend__loadAppExtensionDataSourcesForExtensionPoint_(self, a2, *MEMORY[0x1E69A7118]);
  v6 = objc_msgSend_model(self, v4, v5);
  objc_msgSend_setExtensionMatchingContext_(v6, v7, v3);

  v13 = objc_msgSend__loadAppExtensionDataSourcesForExtensionPoint_(self, v8, *MEMORY[0x1E69A7120]);
  v11 = objc_msgSend_model(self, v9, v10);
  objc_msgSend_setHighMemoryExtensionMatchingContext_(v11, v12, v13);
}

- (void)_postDeferredInstalledAppsChangedNotificationIfNecessary
{
  v4 = objc_msgSend_model(self, a2, v2);
  hasDeferredInstalledAppsChangedNotification = objc_msgSend_hasDeferredInstalledAppsChangedNotification(v4, v5, v6);

  if (hasDeferredInstalledAppsChangedNotification)
  {
    v10 = objc_msgSend_model(self, v8, v9);
    objc_msgSend_setHasDeferredInstalledAppsChangedNotification_(v10, v11, 0);

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Performing deffered IMBalloonPluginManagerInstalledAppsChangedNotification.", v15, 2u);
      }
    }

    objc_msgSend__postInstalledAppsChangedNotification(self, v12, v13);
  }
}

+ (id)_extensionBlocklist
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8257D94;
  block[3] = &unk_1E78102B8;
  block[4] = self;
  if (qword_1ED767660 != -1)
  {
    dispatch_once(&qword_1ED767660, block);
  }

  v2 = qword_1ED767658;

  return v2;
}

+ (BOOL)_shouldAddSafetyMonitorToBlockList
{
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  if (objc_msgSend_isZelkovaEnabled(v3, v4, v5))
  {
    v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
    v11 = objc_msgSend_isSendMenuEnabled(v8, v9, v10) ^ 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (BOOL)_shouldAddFindMyToBlockList
{
  if (objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], a2, v2))
  {
    return 1;
  }

  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isWaldoEnabled = objc_msgSend_isWaldoEnabled(v6, v7, v8);

  return isWaldoEnabled ^ 1;
}

+ (BOOL)_shouldAddGenPlaygroundToBlockList
{
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isGenPlaygroundEnabled = objc_msgSend_isGenPlaygroundEnabled(v3, v4, v5);

  return isGenPlaygroundEnabled ^ 1;
}

- (id)_appProxyBundleIdentifiersForAppPlugins
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_model(self, a2, v2);
  v7 = objc_msgSend_pluginsMap(v4, v5, v6);
  v10 = objc_msgSend_allIdentifiers(v7, v8, v9);

  v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v10;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v46, v50, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        v20 = objc_msgSend_model(self, v14, v15);
        v23 = objc_msgSend_pluginsMap(v20, v21, v22);
        v25 = objc_msgSend_pluginForIdentifier_(v23, v24, v19);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = objc_msgSend_proxy(v25, v26, v27);
          if (v28)
          {
            v31 = v28;
            v32 = objc_msgSend_proxy(v25, v29, v30);
            v35 = objc_msgSend_bundleIdentifier(v32, v33, v34);

            if (v35)
            {
              v38 = objc_msgSend_proxy(v25, v36, v37);
              v41 = objc_msgSend_bundleIdentifier(v38, v39, v40);
              objc_msgSend_addObject_(v45, v42, v41);
            }
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v46, v50, 16);
    }

    while (v16);
  }

  v43 = *MEMORY[0x1E69E9840];

  return v45;
}

- (id)_proxyIdentifiersForPlugins
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_model(self, v4, v5);
  v9 = objc_msgSend_pluginsMap(v6, v7, v8);
  v12 = objc_msgSend_pluginCount(v9, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v3, v13, v12);

  v17 = objc_msgSend_model(self, v15, v16);
  v20 = objc_msgSend_pluginsMap(v17, v18, v19);
  v23 = objc_msgSend_dictionaryMapCopy(v20, v21, v22);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A825E8E0;
  v27[3] = &unk_1E7810D30;
  v24 = v14;
  v28 = v24;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v23, v25, v27);

  return v24;
}

+ (id)balloonProviderBundlePathURL
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = IMBalloonProviderBundleRootDirectory();
  v10[0] = v3;
  v10[1] = @"MSMessageExtensionBalloonPlugin.bundle";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v10, 2);
  v7 = objc_msgSend_fileURLWithPathComponents_(v2, v6, v5);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_model(self, a2, v2);
  v7 = objc_msgSend_pluginsMap(v4, v5, v6);
  v9 = objc_msgSend_pluginForIdentifier_(v7, v8, *MEMORY[0x1E69A69F0]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = objc_msgSend_messageToDatasourceMap(v9, v10, v11);
  v15 = objc_msgSend_allKeys(v12, v13, v14);

  obj = v15;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v41, v45, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v42;
    do
    {
      v22 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v41 + 1) + 8 * v22);
        v24 = objc_msgSend_messageToDatasourceMap(v9, v18, v19);
        v26 = objc_msgSend_objectForKey_(v24, v25, v23);

        v29 = objc_msgSend_bundleID(v26, v27, v28);
        v31 = objc_msgSend_balloonPluginForBundleID_(self, v30, v29);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = objc_msgSend_existingDataSourceForMessageGUID_(v31, v32, v23);

          if (!v33)
          {
            objc_msgSend_insertDataSource_forGUID_(v31, v34, v26, v23);
            v37 = objc_msgSend_messageToDatasourceMap(v9, v35, v36);
            objc_msgSend_removeObjectForKey_(v37, v38, v23);
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v41, v45, 16);
    }

    while (v20);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_postInstalledAppsChangedNotification
{
  v4 = objc_msgSend_model(self, a2, v2);
  hasCompletedInitialization = objc_msgSend_hasCompletedInitialization(v4, v5, v6);

  v8 = IMOSLoggingEnabled();
  if (hasCompletedInitialization)
  {
    if (v8)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Posting notification IMBalloonPluginManagerInstalledAppsChangedNotification", v16, 2u);
      }
    }

    v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend___mainThreadPostNotificationName_object_(v12, v13, @"__kIMBalloonPluginManagerInstalledAppsChangedNotification", 0);
  }

  else
  {
    if (v8)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Deffering IMBalloonPluginManagerInstalledAppsChangedNotification until after initialization is completed.", buf, 2u);
      }
    }

    v12 = objc_msgSend_model(self, v9, v10);
    objc_msgSend_setHasDeferredInstalledAppsChangedNotification_(v12, v15, 1);
  }
}

+ (id)sharedInstance
{
  if (qword_1ED767890 != -1)
  {
    sub_1A825F1E0();
  }

  objc_msgSend__postDeferredInstalledAppsChangedNotificationIfNecessary(qword_1ED767668, a2, v2);
  v3 = qword_1ED767668;

  return v3;
}

- (id)allPlugins
{
  v3 = objc_msgSend_model(self, a2, v2);
  v6 = objc_msgSend_pluginsMap(v3, v4, v5);
  v9 = objc_msgSend_allPlugins(v6, v7, v8);

  return v9;
}

- (void)insertPlugin:(id)plugin
{
  pluginCopy = plugin;
  v14 = objc_msgSend_model(self, v5, v6);
  v9 = objc_msgSend_pluginsMap(v14, v7, v8);
  v12 = objc_msgSend_identifier(pluginCopy, v10, v11);
  objc_msgSend_setPlugin_forIdentifier_(v9, v13, pluginCopy, v12);
}

- (void)pluginChatItem:(id)item didRelinquishReusableController:(id)controller contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  itemCopy = item;
  v13 = objc_msgSend_type(itemCopy, v11, v12);
  v16 = objc_msgSend_balloonPluginForBundleID_(self, v14, v13);

  objc_msgSend_moveController_toReusePoolFromChatItem_contextIdentifier_(v16, v15, controllerCopy, itemCopy, identifierCopy);
}

- (void)pluginChatItem:(id)item didRelenquishNonResuableController:(id)controller contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  itemCopy = item;
  v13 = objc_msgSend_type(itemCopy, v11, v12);
  v16 = objc_msgSend_balloonPluginForBundleID_(self, v14, v13);

  objc_msgSend_removeController_forChatItem_contextIdentifier_(v16, v15, controllerCopy, itemCopy, identifierCopy);
}

- (void)pluginChatItemRequestedReleaseDataSource:(id)source
{
  sourceCopy = source;
  v7 = objc_msgSend_type(sourceCopy, v5, v6);
  v10 = objc_msgSend_balloonPluginForBundleID_(self, v8, v7);

  objc_msgSend_removeDataSourceForChatItem_(v10, v9, sourceCopy);
}

- (void)dealloc
{
  notify_cancel(dword_1ED7674A8);
  v3 = MEMORY[0x1E696ABD0];
  v6 = objc_msgSend_model(self, v4, v5);
  v9 = objc_msgSend_extensionMatchingContext(v6, v7, v8);
  objc_msgSend_endMatchingExtensions_(v3, v10, v9);

  v11 = MEMORY[0x1E696ABD0];
  v14 = objc_msgSend_model(self, v12, v13);
  v17 = objc_msgSend_highMemoryExtensionMatchingContext(v14, v15, v16);
  objc_msgSend_endMatchingExtensions_(v11, v18, v17);

  v19.receiver = self;
  v19.super_class = IMBalloonPluginManager;
  [(IMBalloonPluginManager *)&v19 dealloc];
}

- (id)_pluginPlistPath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_model(self, v5, v6);
  v10 = objc_msgSend_pluginMetaDataFolder(v7, v8, v9);
  v13 = objc_msgSend_lastPathComponent(pathCopy, v11, v12);

  v15 = objc_msgSend_stringByAppendingPathExtension_(v13, v14, @"plist");
  v17 = objc_msgSend_stringByAppendingPathComponent_(v10, v16, v15);

  return v17;
}

- (id)_infoPlistPathForPluginCreatingFolderIfNeeded:(id)needed
{
  neededCopy = needed;
  v7 = objc_msgSend_model(self, v5, v6);
  v10 = objc_msgSend_pluginMetaDataFolder(v7, v8, v9);
  IMSharedHelperEnsureDirectoryExistsAtPath();

  v12 = objc_msgSend__pluginPlistPath_(self, v11, neededCopy);

  return v12;
}

- (id)_metadataForPluginIdentifier:(id)identifier
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = objc_msgSend_model(self, v4, v5);
    v10 = objc_msgSend_pluginIDToMetadataCache(v7, v8, v9);
    v12 = objc_msgSend_objectForKey_(v10, v11, identifierCopy);

    if (!v12)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v40 = 138412290;
          v41 = identifierCopy;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Reading plugin metadata from disk for ID %@", &v40, 0xCu);
        }
      }

      v17 = MEMORY[0x1E695DF20];
      v18 = objc_msgSend__infoPlistPathForPluginCreatingFolderIfNeeded_(self, v15, identifierCopy);
      v12 = objc_msgSend_dictionaryWithContentsOfFile_(v17, v19, v18);

      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF20]);
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v40 = 138412290;
            v41 = identifierCopy;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "No metadataForPluginIdentifer %@", &v40, 0xCu);
          }
        }
      }
    }

    if (objc_msgSend_count(v12, v13, v14))
    {
      v23 = objc_msgSend_model(self, v21, v22);
      v26 = objc_msgSend_pluginIDToMetadataCache(v23, v24, v25);
      v29 = objc_msgSend_mutableCopy(v26, v27, v28);

      objc_msgSend_setObject_forKey_(v29, v30, v12, identifierCopy);
      v33 = objc_msgSend_model(self, v31, v32);
      v36 = objc_msgSend_copy(v29, v34, v35);
      objc_msgSend_setPluginIDToMetadataCache_(v33, v37, v36);
    }
  }

  else
  {
    v12 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_storeMetadata:(id)metadata _forPlugin:(id)plugin
{
  v61 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  pluginCopy = plugin;
  v9 = pluginCopy;
  if (metadataCopy && pluginCopy)
  {
    v10 = objc_msgSend__infoPlistPathForPluginCreatingFolderIfNeeded_(self, v8, pluginCopy);
    v13 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
    v15 = objc_msgSend_fileExistsAtPath_(v13, v14, v10);

    if (v15)
    {
      v18 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v16, v17);
      v52 = 0;
      objc_msgSend_removeItemAtPath_error_(v18, v19, v10, &v52);
      v20 = v52;

      if (v20 && IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v56 = v10;
          v57 = 2112;
          v58 = v20;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "IMBalloonPluginManager could not delete file at path %@ error %@", buf, 0x16u);
        }
      }
    }

    if ((objc_msgSend_writeToFile_atomically_(metadataCopy, v16, v10, 1) & 1) == 0 && IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v56 = metadataCopy;
        v57 = 2112;
        v58 = v10;
        v59 = 2112;
        v60 = v9;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "IMBalloonPluginManager could not write metadata %@ to file %@ idenitifier %@", buf, 0x20u);
      }
    }

    v25 = objc_msgSend_model(self, v22, v23);
    v28 = objc_msgSend_pluginIDToMetadataCache(v25, v26, v27);
    v31 = objc_msgSend_mutableCopy(v28, v29, v30);

    objc_msgSend_setObject_forKey_(v31, v32, metadataCopy, v9);
    v35 = objc_msgSend_model(self, v33, v34);
    v38 = objc_msgSend_copy(v31, v36, v37);
    objc_msgSend_setPluginIDToMetadataCache_(v35, v39, v38);

    v42 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v40, v41);
    v53 = *MEMORY[0x1E696A3A0];
    v54 = *MEMORY[0x1E696A388];
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, &v54, &v53, 1);
    v51 = 0;
    v46 = objc_msgSend_setAttributes_ofItemAtPath_error_(v42, v45, v44, v10, &v51);
    v47 = v51;

    if ((v46 & 1) == 0 && IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v56 = v10;
        v57 = 2112;
        v58 = v47;
        _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v56 = metadataCopy;
      v57 = 2112;
      v58 = v9;
      _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "IMBalloonPluginManager invalid args to _storeMetadata %@ identifier %@", buf, 0x16u);
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (id)localParticipantIdentifierForAppID:(id)d conversationID:(id)iD
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (dCopy)
  {
    v9 = objc_msgSend__metadataForPluginIdentifier_(self, v7, dCopy);
    Mutable = objc_msgSend_mutableCopy(v9, v10, v11);

    v14 = objc_msgSend_objectForKey_(Mutable, v13, @"localID");
    if (objc_msgSend_length(v14, v15, v16))
    {
      v17 = v14;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v33 = 138412290;
          v34 = dCopy;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Generating local ID for app %@", &v33, 0xCu);
        }
      }

      v23 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v20, v21);
      v17 = objc_msgSend_UUIDString(v23, v24, v25);

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      objc_msgSend_setObject_forKey_(Mutable, v26, v17, @"localID");
      objc_msgSend__storeMetadata__forPlugin_(self, v27, Mutable, dCopy);
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v33 = 138412546;
        v34 = v17;
        v35 = 2112;
        v36 = dCopy;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "localID %@ for appID %@", &v33, 0x16u);
      }
    }

    v29 = objc_alloc(MEMORY[0x1E696AFB0]);
    v19 = objc_msgSend_initWithUUIDString_(v29, v30, v17);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v33 = 136315138;
        v34 = "[IMBalloonPluginManager localParticipantIdentifierForAppID:conversationID:]";
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "IMBalloonPluginManager %s appID = nil", &v33, 0xCu);
      }
    }

    v19 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)recipientIDForRecipient:(id)recipient appID:(id)d
{
  v40 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  dCopy = d;
  v9 = dCopy;
  if (recipientCopy && dCopy)
  {
    v10 = objc_msgSend__metadataForPluginIdentifier_(self, v8, dCopy);
    Mutable = objc_msgSend_mutableCopy(v10, v11, v12);

    v15 = objc_msgSend_objectForKey_(Mutable, v14, recipientCopy);
    if (objc_msgSend_length(v15, v16, v17))
    {
      v18 = v15;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v34 = 138412290;
          v35 = v9;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Generating recipientID ID for app %@", &v34, 0xCu);
        }
      }

      v24 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v21, v22);
      v18 = objc_msgSend_UUIDString(v24, v25, v26);

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      objc_msgSend_setObject_forKey_(Mutable, v27, v18, recipientCopy);
      objc_msgSend__storeMetadata__forPlugin_(self, v28, Mutable, v9);
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v34 = 138412546;
        v35 = v18;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "recipient %@ for appID %@", &v34, 0x16u);
      }
    }

    v30 = objc_alloc(MEMORY[0x1E696AFB0]);
    v20 = objc_msgSend_initWithUUIDString_(v30, v31, v18);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v34 = 136315650;
        v35 = "[IMBalloonPluginManager recipientIDForRecipient:appID:]";
        v36 = 2112;
        v37 = v9;
        v38 = 2112;
        v39 = recipientCopy;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "IMBalloonPluginManager %s appID: %@ recipient: %@ ", &v34, 0x20u);
      }
    }

    v20 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)conversationID:(id)d appID:(id)iD
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  if (dCopy && iDCopy)
  {
    v10 = objc_msgSend__metadataForPluginIdentifier_(self, v8, iDCopy);
    Mutable = objc_msgSend_mutableCopy(v10, v11, v12);

    v15 = objc_msgSend_objectForKey_(Mutable, v14, dCopy);
    if (objc_msgSend_length(v15, v16, v17))
    {
      v18 = v15;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v34 = 138412290;
          v35 = v9;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Generating randomConversationID ID for app %@", &v34, 0xCu);
        }
      }

      v24 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v21, v22);
      v18 = objc_msgSend_UUIDString(v24, v25, v26);

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      objc_msgSend_setObject_forKey_(Mutable, v27, v18, dCopy);
      objc_msgSend__storeMetadata__forPlugin_(self, v28, Mutable, v9);
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v34 = 138412546;
        v35 = v18;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "randomConversationID %@ for appID %@", &v34, 0x16u);
      }
    }

    v30 = objc_alloc(MEMORY[0x1E696AFB0]);
    v20 = objc_msgSend_initWithUUIDString_(v30, v31, v18);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v34 = 136315650;
        v35 = "[IMBalloonPluginManager conversationID:appID:]";
        v36 = 2112;
        v37 = v9;
        v38 = 2112;
        v39 = dCopy;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "IMBalloonPluginManager %s appID: %@ recipient: %@ ", &v34, 0x20u);
      }
    }

    v20 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_identifiersForAppPlugins
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = objc_msgSend_model(self, v4, v5);
  v9 = objc_msgSend_pluginsMap(v6, v7, v8);
  v12 = objc_msgSend_allIdentifiers(v9, v10, v11);

  obj = v12;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v34, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = objc_msgSend_model(self, v15, v16);
        v24 = objc_msgSend_pluginsMap(v21, v22, v23);
        v26 = objc_msgSend_pluginForIdentifier_(v24, v25, v20);

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v3 && v20)
        {
          CFArrayAppendValue(v3, v20);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v30, v34, 16);
    }

    while (v17);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_pluginsForWhichWeHaveMetadata
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2);
  v7 = objc_msgSend_model(self, v5, v6);
  v10 = objc_msgSend_pluginMetaDataFolder(v7, v8, v9);
  v49 = 0;
  v12 = objc_msgSend_contentsOfDirectoryAtPath_error_(v4, v11, v10, &v49);
  v13 = v49;

  v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
  v19 = objc_msgSend_model(self, v17, v18);
  v22 = objc_msgSend_pluginMetaDataFolder(v19, v20, v21);
  v24 = objc_msgSend_fileExistsAtPath_(v16, v23, v22);
  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v29 = objc_msgSend_model(self, v27, v28);
        v32 = objc_msgSend_pluginMetaDataFolder(v29, v30, v31);
        *buf = 138412546;
        v52 = v32;
        v53 = 2112;
        v54 = v13;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "IMBalloonPluginManager could not read contents of dir %@ error %@", buf, 0x16u);
      }
    }

    v33 = 0;
  }

  else
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = v12;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v45, v50, 16);
    if (v38)
    {
      v39 = *v46;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(v34);
          }

          v41 = objc_msgSend_stringByDeletingPathExtension(*(*(&v45 + 1) + 8 * i), v36, v37, v45);
          objc_msgSend_addObject_(v33, v42, v41);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v45, v50, 16);
      }

      while (v38);
    }
  }

  v43 = *MEMORY[0x1E69E9840];

  return v33;
}

- (void)_deleteMetaDataForPlugins:(id)plugins
{
  v50 = *MEMORY[0x1E69E9840];
  pluginsCopy = plugins;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = pluginsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "_deleteMetaDataForPlugins %@", buf, 0xCu);
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = pluginsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v41, v49, 16);
  if (v8)
  {
    v10 = *v42;
    *&v9 = 138412546;
    v38 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = objc_msgSend__pluginPlistPath_(self, v7, v12, v38);
        v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
        v40 = 0;
        objc_msgSend_removeItemAtPath_error_(v16, v17, v13, &v40);
        v18 = v40;

        if (v18 && IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = v38;
            v46 = v13;
            v47 = 2112;
            v48 = v18;
            _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Could not delete plugin meta data at path %@ %@", buf, 0x16u);
          }
        }

        v22 = objc_msgSend_model(self, v19, v20);
        v25 = objc_msgSend_pluginIDToMetadataCache(v22, v23, v24);
        v28 = objc_msgSend_mutableCopy(v25, v26, v27);

        objc_msgSend_removeObjectForKey_(v28, v29, v12);
        v32 = objc_msgSend_model(self, v30, v31);
        v35 = objc_msgSend_copy(v28, v33, v34);
        objc_msgSend_setPluginIDToMetadataCache_(v32, v36, v35);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v41, v49, 16);
    }

    while (v8);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_clearPluginMetadataForUninstalledApps
{
  v4 = objc_msgSend__identifiersForAppPlugins(self, a2, v2);
  v7 = objc_msgSend__pluginsForWhichWeHaveMetadata(self, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);

  objc_msgSend_removeObjectsInArray_(v10, v11, v4);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "clearing in memory salt cache", v14, 2u);
    }
  }

  objc_msgSend__deleteMetaDataForPlugins_(self, v12, v10);
}

- (id)_currentlyInstalledExtensionsExcludingExtensionPoint:(id)point
{
  pointCopy = point;
  v7 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6);
  v10 = objc_msgSend_model(self, v8, v9);
  v13 = objc_msgSend_pluginsMap(v10, v11, v12);
  v16 = objc_msgSend_dictionaryMapCopy(v13, v14, v15);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82E89E8;
  v23[3] = &unk_1E7811B90;
  v24 = pointCopy;
  v17 = v7;
  v25 = v17;
  v18 = pointCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v16, v19, v23);

  v20 = v25;
  v21 = v17;

  return v17;
}

- (void)loadExtensionWithIdentifierIfNeeded:(id)needed
{
  v39 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v7 = objc_msgSend_model(self, v5, v6);
  v10 = objc_msgSend_pluginsMap(v7, v8, v9);
  v12 = objc_msgSend_pluginForIdentifier_(v10, v11, neededCopy);

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = neededCopy;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Plugin already loaded: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = objc_msgSend_componentsSeparatedByString_(neededCopy, v13, @":");
    v18 = objc_msgSend_lastObject(v15, v16, v17);

    v20 = objc_msgSend__extensionWithIdentifier_(self, v19, v18);
    v23 = objc_msgSend_extensionPointIdentifier(v20, v21, v22);
    isEqualToString = objc_msgSend_isEqualToString_(v23, v24, *MEMORY[0x1E69A7118]);

    if (isEqualToString)
    {
      v34 = v20;
      v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, &v34, 1);
      objc_msgSend__updatePluginsForExtensions_extensionPoint_(self, v28, v27, 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = objc_msgSend_extensionPointIdentifier(v20, v30, v31);
        *buf = 138412546;
        v36 = neededCopy;
        v37 = 2112;
        v38 = v32;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "IMBalloonPluginManager asked to load an extension that is not an iMessage app. Identifier: %@ extensionPointIdentifier: %@", buf, 0x16u);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)_extensionWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v10 = 0;
  v5 = objc_msgSend_extensionWithIdentifier_error_(MEMORY[0x1E696ABD0], v4, identifierCopy, &v10);
  v6 = v10;
  if (!v5 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "IMBalloonPluginManager failed to find extension with extension identifier: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_loadAppExtensionDataSourcesForExtensionPoint:(id)point
{
  v26[1] = *MEMORY[0x1E69E9840];
  pointCopy = point;
  if (byte_1EB2EA240)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"beginMatchingExtensionsWithAttributes_%@", pointCopy);
    objc_msgSend_startTimingForKey_(v6, v9, v8);
    v25 = *MEMORY[0x1E696A2F8];
    v26[0] = pointCopy;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v26, &v25, 1);
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E696ABD0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A82E902C;
    v18[3] = &unk_1E7811BE0;
    v13 = v6;
    v19 = v13;
    v14 = v8;
    v20 = v14;
    v21 = pointCopy;
    objc_copyWeak(&v23, &location);
    selfCopy = self;
    v5 = objc_msgSend_beginMatchingExtensionsWithAttributes_completion_(v12, v15, v11, v18);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_setPluginsToRemoveAndCallSelectorWithDelay:(id)delay
{
  v17 = *MEMORY[0x1E69E9840];
  delayCopy = delay;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = delayCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Setting plugins to remove with delay: %@", &v15, 0xCu);
    }
  }

  v8 = objc_msgSend_model(self, v5, v6);
  v11 = objc_msgSend_copy(delayCopy, v9, v10);
  objc_msgSend_setPluginsToRemoveAfterExtensionsUpdate_(v8, v12, v11);

  objc_msgSend_performSelector_withObject_afterDelay_(self, v13, sel__removePluginsWithDelay, 0, 1.0);
  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldSkipUpdatingPluginBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  IsLockedDown = objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(identifierCopy, v7, *MEMORY[0x1E69A68F8]);
  v10 = objc_msgSend_isEqualToString_(identifierCopy, v9, *MEMORY[0x1E69A6928]);
  v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12);
  if (objc_msgSend_isStickersAppEnabled(v13, v14, v15))
  {
  }

  else
  {
    v20 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v16, v17);
    v23 = (objc_msgSend_isClingEnabled(v20, v21, v22) ^ 1) & isEqualToString;

    if (v23)
    {
      goto LABEL_12;
    }
  }

  v24 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19);
  if (IsLockedDown & 1 | ((objc_msgSend_isWaldoEnabled(v24, v25, v26) & 1) == 0))
  {
    v28 = objc_msgSend_isEqualToString_(identifierCopy, v27, *MEMORY[0x1E69A6938]);

    if (v28)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v31 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v29, v30);
  if (objc_msgSend_isZelkovaEnabled(v31, v32, v33))
  {
    v36 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v34, v35);
    if (objc_msgSend_isSendMenuEnabled(v36, v37, v38))
    {

LABEL_14:
      v45 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v40, v41);
      v43 = (objc_msgSend_isPollsEnabled(v45, v46, v47) ^ 1) & v10;

      goto LABEL_15;
    }

    v44 = objc_msgSend_isEqualToString_(identifierCopy, v39, *MEMORY[0x1E69A6930]);

    if ((v44 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v42 = objc_msgSend_isEqualToString_(identifierCopy, v34, *MEMORY[0x1E69A6930]);

    if ((v42 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  LOBYTE(v43) = 1;
LABEL_15:

  return v43;
}

- (void)_updatePluginsForBundles:(id)bundles
{
  bundlesCopy = bundles;
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E695DFD0], v5, self, sel__removePluginsWithDelay, 0);
  v8 = objc_msgSend__appProxyBundleIdentifiersForAppPlugins(self, v6, v7);
  v11 = objc_msgSend__proxyIdentifiersForPlugins(self, v9, v10);
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1A8259B50;
  v75 = sub_1A825AED4;
  v12 = objc_alloc(MEMORY[0x1E695DFA8]);
  v15 = objc_msgSend_count(bundlesCopy, v13, v14);
  v76 = objc_msgSend_initWithCapacity_(v12, v16, v15);
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = sub_1A8259B50;
  v69[4] = sub_1A825AED4;
  v70 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = sub_1A8259B50;
  v67[4] = sub_1A825AED4;
  v68 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v66[3] = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v65[3] = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1A8259B50;
  v63 = sub_1A825AED4;
  v19 = objc_msgSend_model(self, v17, v18);
  v22 = objc_msgSend_pluginsToRemoveAfterExtensionsUpdate(v19, v20, v21);
  v64 = objc_msgSend_mutableCopy(v22, v23, v24);

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1A82E9B70;
  v50[3] = &unk_1E7811C28;
  v50[4] = self;
  v53 = &v71;
  v54 = &v59;
  v25 = v8;
  v51 = v25;
  v55 = v69;
  v56 = v67;
  v26 = v11;
  v52 = v26;
  v57 = v66;
  v58 = v65;
  objc_msgSend_enumerateObjectsUsingBlock_(bundlesCopy, v27, v50);
  v30 = objc_msgSend_model(self, v28, v29);
  v33 = objc_msgSend_copy(v60[5], v31, v32);
  objc_msgSend_setPluginsToRemoveAfterExtensionsUpdate_(v30, v34, v33);

  objc_msgSend_minusSet_(v25, v35, v72[5]);
  if (objc_msgSend_count(v25, v36, v37))
  {
    objc_msgSend__setPluginsToRemoveAndCallSelectorWithDelay_(self, v38, v25);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *v49 = 0;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Clearing extensions to remove after delay", v49, 2u);
      }
    }

    v44 = objc_msgSend_model(self, v41, v42);
    v47 = objc_msgSend_set(MEMORY[0x1E695DFD8], v45, v46);
    objc_msgSend_setPluginsToRemoveAfterExtensionsUpdate_(v44, v48, v47);
  }

  objc_msgSend__moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions(self, v39, v40);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v67, 8);

  _Block_object_dispose(v69, 8);
  _Block_object_dispose(&v71, 8);
}

- (void)_updatePluginsForExtensions:(id)extensions extensionPoint:(id)point precachedBalloonAppExtensions:(id)appExtensions
{
  v134 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  pointCopy = point;
  appExtensionsCopy = appExtensions;
  v89 = extensionsCopy;
  v12 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v11, extensionsCopy);
  v14 = objc_msgSend__currentlyInstalledExtensionsExcludingExtensionPoint_(self, v13, pointCopy);
  objc_msgSend_unionSet_(v12, v15, v14);
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E695DFD0], v16, self, sel__removePluginsWithDelay, 0);
  v19 = objc_msgSend__appProxyBundleIdentifiersForAppPlugins(self, v17, v18);
  v22 = objc_msgSend__proxyIdentifiersForPlugins(self, v20, v21);
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = sub_1A8259B50;
  v130 = sub_1A825AED4;
  v23 = objc_alloc(MEMORY[0x1E695DFA8]);
  v26 = objc_msgSend_count(v12, v24, v25);
  v131 = objc_msgSend_initWithCapacity_(v23, v27, v26);
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = sub_1A8259B50;
  v124 = sub_1A825AED4;
  v125 = 0;
  v118[0] = 0;
  v118[1] = v118;
  v118[2] = 0x3032000000;
  v118[3] = sub_1A8259B50;
  v118[4] = sub_1A825AED4;
  v119 = 0;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x3032000000;
  v116[3] = sub_1A8259B50;
  v116[4] = sub_1A825AED4;
  v117 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = sub_1A8259B50;
  v106 = sub_1A825AED4;
  v30 = objc_msgSend_model(self, v28, v29);
  v33 = objc_msgSend_pluginsToRemoveAfterExtensionsUpdate(v30, v31, v32);
  v107 = objc_msgSend_mutableCopy(v33, v34, v35);

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = sub_1A82EA5D4;
  v90[3] = &unk_1E7811C50;
  v95 = &v126;
  v96 = &v102;
  v36 = v19;
  v97 = &v120;
  v98 = v118;
  v91 = v36;
  selfCopy = self;
  v99 = v116;
  v37 = appExtensionsCopy;
  v93 = v37;
  v38 = v22;
  v94 = v38;
  v100 = &v112;
  v101 = &v108;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v39, v90);
  v42 = objc_msgSend_model(self, v40, v41);
  v45 = objc_msgSend_copy(v103[5], v43, v44);
  objc_msgSend_setPluginsToRemoveAfterExtensionsUpdate_(v42, v46, v45);

  objc_msgSend_minusSet_(v36, v47, v127[5]);
  if (objc_msgSend_count(v36, v48, v49))
  {
    objc_msgSend__setPluginsToRemoveAndCallSelectorWithDelay_(self, v50, v36);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "Clearing extensions to remove after delay", buf, 2u);
      }
    }

    v56 = objc_msgSend_model(self, v53, v54);
    v59 = objc_msgSend_set(MEMORY[0x1E695DFD8], v57, v58);
    objc_msgSend_setPluginsToRemoveAfterExtensionsUpdate_(v56, v60, v59);
  }

  if (v121[5] && IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = v121[5];
      *buf = 138412290;
      v133 = v62;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "app extension loading time: %@", buf, 0xCu);
    }
  }

  objc_msgSend__moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions(self, v51, v52);
  objc_msgSend__postInstalledAppsChangedNotification(self, v63, v64);
  if ((byte_1EB2EA240 & 1) == 0 && objc_msgSend_isEqualToString_(pointCopy, v65, *MEMORY[0x1E69A7118]))
  {
    v68 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v66, v67);
    v69 = MEMORY[0x1E696AD98];
    v72 = objc_msgSend_count(v12, v70, v71);
    v74 = objc_msgSend_numberWithUnsignedInteger_(v69, v73, v72);
    objc_msgSend_trackEvent_withCount_(v68, v75, *MEMORY[0x1E69A76F0], v74);

    v78 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v76, v77);
    v80 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v79, v113[3]);
    objc_msgSend_trackEvent_withCount_(v78, v81, *MEMORY[0x1E69A76E8], v80);

    v84 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v82, v83);
    v86 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v85, v109[3]);
    objc_msgSend_trackEvent_withCount_(v84, v87, *MEMORY[0x1E69A7738], v86);
  }

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(v116, 8);

  _Block_object_dispose(v118, 8);
  _Block_object_dispose(&v120, 8);

  _Block_object_dispose(&v126, 8);
  v88 = *MEMORY[0x1E69E9840];
}

- (id)_insertPluginForAppBundle:(id)bundle balloonProviderBundle:(id)providerBundle
{
  bundleCopy = bundle;
  providerBundleCopy = providerBundle;
  if (bundleCopy)
  {
    v8 = [IMBalloonAppExtension alloc];
    v10 = objc_msgSend_initWithPluginBundle_appBundle_(v8, v9, providerBundleCopy, bundleCopy);
    v13 = objc_msgSend_identifier(v10, v11, v12);

    if (v13)
    {
      v16 = objc_msgSend_model(self, v14, v15);
      v19 = objc_msgSend_pluginsMap(v16, v17, v18);
      v22 = objc_msgSend_identifier(v10, v20, v21);
      objc_msgSend_setPlugin_forIdentifier_(v19, v23, v10, v22);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_allowExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x1E69A53F0], v5, 1);
  isServerBlocklistedBundleIdentifier_serverBag = objc_msgSend__isServerBlocklistedBundleIdentifier_serverBag_(self, v7, identifierCopy, v6);

  if (isServerBlocklistedBundleIdentifier_serverBag)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = objc_msgSend__isExtensionBlocklisted_(self, v9, identifierCopy) ^ 1;
  }

  return v10;
}

+ (id)precacheBalloonAppExtensionsForExtensions:(id)extensions
{
  v37 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = objc_msgSend_balloonProviderBundlePathURL(self, v5, v6);
  v7 = objc_alloc(MEMORY[0x1E696AAE8]);
  v9 = objc_msgSend_initWithURL_(v7, v8, v28);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = extensionsCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v36, 16);
  if (v14)
  {
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v19 = objc_msgSend_identifier(v17, v12, v13);
        if (v19 && objc_msgSend__allowExtensionWithIdentifier_(self, v18, v19))
        {
          v20 = [IMBalloonAppExtension alloc];
          v22 = objc_msgSend_initWithPluginBundle_extension_(v20, v21, v9, v17);
          objc_msgSend_setObject_forKeyedSubscript_(v29, v23, v22, v19);
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v35 = v19;
              _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Precached balloon app extension for %@", buf, 0xCu);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v35 = v19;
            _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Not precached balloon app extension for %@, identifier was blocked", buf, 0xCu);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v30, v36, 16);
    }

    while (v14);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)_insertPluginForExtension:(id)extension balloonProviderBundle:(id)bundle precachedBalloonAppExtensions:(id)extensions timingCollection:(id)collection
{
  v51 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  bundleCopy = bundle;
  extensionsCopy = extensions;
  collectionCopy = collection;
  v16 = objc_msgSend_identifier(extensionCopy, v14, v15);
  if (!extensionCopy || (v17 = objc_opt_class(), !objc_msgSend__allowExtensionWithIdentifier_(v17, v18, v16)))
  {
    v21 = 0;
    goto LABEL_20;
  }

  objc_msgSend_startTimingForKey_(collectionCopy, v19, @"createPlugin");
  v21 = objc_msgSend_objectForKeyedSubscript_(extensionsCopy, v20, v16);
  v22 = IMOSLoggingEnabled();
  if (v21)
  {
    if (v22)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v49 = 138412290;
        v50 = v16;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Using precached plugin for %@", &v49, 0xCu);
      }
    }
  }

  else
  {
    if (v22)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v49 = 138412290;
        v50 = v16;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "No precached plugin for %@, creating a new instance", &v49, 0xCu);
      }
    }

    v27 = [IMBalloonAppExtension alloc];
    v21 = objc_msgSend_initWithPluginBundle_extension_(v27, v28, bundleCopy, extensionCopy);
  }

  v29 = objc_msgSend_identifier(v21, v23, v24);
  v30 = *MEMORY[0x1E69A68F8];
  v31 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(v29, v32, v31);

  v34 = _os_feature_enabled_impl();
  if (isEqualToString)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v37 = objc_msgSend_identifier(v21, v35, v36);
  v38 = v37 == 0;

  if (!v38)
  {
LABEL_18:
    v39 = objc_msgSend_model(self, v35, v36);
    v42 = objc_msgSend_pluginsMap(v39, v40, v41);
    v45 = objc_msgSend_identifier(v21, v43, v44);
    objc_msgSend_setPlugin_forIdentifier_(v42, v46, v21, v45);
  }

LABEL_19:
  objc_msgSend_stopTimingForKey_(collectionCopy, v35, @"createPlugin");
LABEL_20:

  v47 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)removePluginWithBundleID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend_length(dCopy, v5, v6);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v31 = 138412290;
        v32 = dCopy;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Explicitly removing plugin with bundleID: %@", &v31, 0xCu);
      }
    }

    v12 = objc_msgSend_model(self, v9, v10);
    v15 = objc_msgSend_pluginsMap(v12, v13, v14);
    v17 = objc_msgSend_pluginForIdentifier_(v15, v16, dCopy);

    if (v17)
    {
      v20 = objc_msgSend_model(self, v18, v19);
      v23 = objc_msgSend_pluginsMap(v20, v21, v22);
      objc_msgSend_removePluginWithIdentifier_(v23, v24, dCopy);

      objc_msgSend__clearPluginMetadataForUninstalledApps(self, v25, v26);
      objc_msgSend__postInstalledAppsChangedNotification(self, v27, v28);
    }
  }

  else if (v8)
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Attempting to explicitly remove a plugin with a nil bundleID", &v31, 2u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_removePluginsWithDelay
{
  v40 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_model(self, v6, v7);
      v11 = objc_msgSend_pluginsToRemoveAfterExtensionsUpdate(v8, v9, v10);
      v38 = 138412290;
      v39 = v11;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Removing plugins with identifiers after delay: %@", &v38, 0xCu);
    }
  }

  v12 = objc_msgSend_model(self, v3, v4);
  v15 = objc_msgSend_pluginsToRemoveAfterExtensionsUpdate(v12, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17) == 0;

  if (!v18)
  {
    v21 = objc_msgSend_model(self, v19, v20);
    v24 = objc_msgSend_pluginsToRemoveAfterExtensionsUpdate(v21, v22, v23);
    objc_msgSend__removePluginsForIdentifiers_(self, v25, v24);

    v28 = objc_msgSend_model(self, v26, v27);
    v31 = objc_msgSend_set(MEMORY[0x1E695DFD8], v29, v30);
    objc_msgSend_setPluginsToRemoveAfterExtensionsUpdate_(v28, v32, v31);

    objc_msgSend__clearPluginMetadataForUninstalledApps(self, v33, v34);
    objc_msgSend__postInstalledAppsChangedNotification(self, v35, v36);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_removePluginsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = objc_msgSend__proxyIdentifiersForPlugins(self, v5, v6);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8259B50;
  v30 = sub_1A825AED4;
  v31 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A82EB418;
  v22[3] = &unk_1E7811C78;
  v10 = v7;
  v23 = v10;
  selfCopy = self;
  v25 = &v26;
  objc_msgSend_enumerateObjectsUsingBlock_(identifiersCopy, v11, v22);
  v14 = objc_msgSend_model(self, v12, v13);
  v17 = objc_msgSend_pluginsMap(v14, v15, v16);
  v20 = objc_msgSend_copy(v27[5], v18, v19);
  objc_msgSend_removePluginsWithIdentifiers_(v17, v21, v20);

  _Block_object_dispose(&v26, 8);
}

+ (BOOL)_isExtensionBlocklisted:(id)blocklisted
{
  blocklistedCopy = blocklisted;
  if (objc_msgSend_isRunningPPT(self, v5, v6) & 1) != 0 || (IMGetDomainBoolForKey())
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend__extensionBlocklist(self, v7, v8);
    v9 = objc_msgSend_containsObject_(v10, v11, blocklistedCopy);
  }

  return v9;
}

- (void)_findPluginsInPaths:(id)paths
{
  v74 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v63 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v63, v5, @"loadPlugins");
  selfCopy = self;
  v8 = objc_msgSend_signpostLogHandle(self, v6, v7);
  v11 = objc_msgSend_signpostLogHandle(selfCopy, v9, v10);
  v12 = os_signpost_id_make_with_pointer(v11, "findPluginsInPaths");

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "findPluginsInPaths", " enableTelemetry=YES ", buf, 2u);
  }

  v64 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = pathsCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v67, v73, 16);
  if (v17)
  {
    v18 = *v68;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v67 + 1) + 8 * i);
        if (byte_1EB2EA240 != 1 || objc_msgSend_hasSuffix_(*(*(&v67 + 1) + 8 * i), v16, @"MSMessageExtensionBalloonPlugin.bundle"))
        {
          v21 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v16, v20);
          v22 = objc_alloc(MEMORY[0x1E696AAE8]);
          v24 = objc_msgSend_initWithURL_(v22, v23, v21);
          v29 = objc_msgSend_bundleIdentifier(v24, v25, v26);
          if (!v29)
          {
            goto LABEL_39;
          }

          v30 = objc_msgSend_model(selfCopy, v27, v28);
          v33 = objc_msgSend_pluginsMap(v30, v31, v32);
          v35 = objc_msgSend_pluginForIdentifier_(v33, v34, v29);
          v36 = v35 == 0;

          if (v36)
          {
            if (IMOSLoggingEnabled())
            {
              v38 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v72 = v29;
                _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Found plugin: %@", buf, 0xCu);
              }
            }

            v39 = [IMBalloonPlugin alloc];
            v42 = objc_msgSend_initWithBundle_(v39, v40, v24);
            if (v42)
            {
              objc_msgSend_setObject_forKey_(v64, v41, v42, v29);
            }
          }

          else
          {
LABEL_39:
            if (IMOSLoggingEnabled())
            {
              v37 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v72 = v24;
                _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Failed to get bundle identifier for %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v67, v73, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v64, v43, v44))
  {
    v47 = objc_msgSend_model(selfCopy, v45, v46);
    v50 = objc_msgSend_pluginsMap(v47, v48, v49);
    v53 = objc_msgSend_copy(v64, v51, v52);
    objc_msgSend_updateWithMap_(v50, v54, v53);
  }

  v55 = objc_msgSend_signpostLogHandle(selfCopy, v45, v46);
  v58 = objc_msgSend_signpostLogHandle(selfCopy, v56, v57);
  v59 = os_signpost_id_make_with_pointer(v58, "findPluginsInPaths");

  if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v55, OS_SIGNPOST_INTERVAL_END, v59, "findPluginsInPaths", " enableTelemetry=YES ", buf, 2u);
  }

  objc_msgSend_stopTimingForKey_(v63, v60, @"loadPlugins");
  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v72 = v63;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "Find Plugin time: %@", buf, 0xCu);
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

- (void)_findPluginsInPathInternal:(id)internal
{
  v64 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Loading all internal plugins", buf, 2u);
    }
  }

  v54 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v54, v5, @"loadPlugins");
  v52 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v7 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v6, internalCopy);
  v9 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v52, v8, v7, 0, 7, &unk_1F1B6E4C0);

  v55 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v57, v63, 16);
  if (v13)
  {
    v14 = *v58;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        v17 = objc_alloc(MEMORY[0x1E696AAE8]);
        v19 = objc_msgSend_initWithURL_(v17, v18, v16);
        v24 = objc_msgSend_bundleIdentifier(v19, v20, v21);
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = objc_msgSend_model(self, v22, v23);
        v28 = objc_msgSend_pluginsMap(v25, v26, v27);
        v30 = objc_msgSend_pluginForIdentifier_(v28, v29, v24);
        v31 = v30 == 0;

        if (v31)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v62 = v24;
              _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Found plugin: %@", buf, 0xCu);
            }
          }

          v34 = [IMBalloonPlugin alloc];
          v32 = objc_msgSend_initWithBundle_(v34, v35, v19);
          if (v32)
          {
            objc_msgSend_setObject_forKey_(v55, v36, v32, v24);
          }
        }

        else
        {
LABEL_12:
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_23;
          }

          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v62 = v19;
            _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Failed to get bundle identifier for %@", buf, 0xCu);
          }
        }

LABEL_23:
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v57, v63, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v55, v38, v39))
  {
    v42 = objc_msgSend_model(self, v40, v41);
    v45 = objc_msgSend_pluginsMap(v42, v43, v44);
    v48 = objc_msgSend_copy(v55, v46, v47);
    objc_msgSend_updateWithMap_(v45, v49, v48);
  }

  objc_msgSend_stopTimingForKey_(v54, v40, @"loadPlugins");
  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v54;
      _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Find Plugin time: %@", buf, 0xCu);
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (Class)dataSourceClassForBundleID:(id)d
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = dCopy;
  if (!dCopy)
  {
    v17 = 0;
    goto LABEL_20;
  }

  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v5, *MEMORY[0x1E69A6A18]);
  if (isEqualToString)
  {
    v10 = objc_msgSend_model(self, v7, v8);
    v13 = objc_msgSend_richLinksDataSourceClass(v10, v11, v12);

    if (v13)
    {
      v14 = objc_msgSend_model(self, v7, v8);
      v17 = objc_msgSend_richLinksDataSourceClass(v14, v15, v16);

      goto LABEL_20;
    }
  }

  v18 = objc_msgSend_model(self, v7, v8);
  v21 = objc_msgSend_pluginsMap(v18, v19, v20);
  v23 = objc_msgSend_pluginForIdentifier_(v21, v22, v6);

  if (!v23)
  {
    v23 = objc_msgSend__fallBackMessagesExtensionPluginForBundleID_(self, v24, v6);
    if (!v23)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v46 = 138412290;
          v47 = v6;
          _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", &v46, 0xCu);
        }
      }

      v34 = 0;
      v23 = 0;
      if (!isEqualToString)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

  v26 = objc_msgSend_dataSourceClass(v23, v24, v25);
  v27 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(v26, v28, v27))
  {
    v31 = objc_msgSend_dataSourceClass(v23, v29, v30);
  }

  else
  {
    v31 = objc_opt_class();
  }

  v34 = v31;
  if (isEqualToString)
  {
LABEL_12:
    v35 = objc_msgSend_model(self, v32, v33);
    v38 = objc_msgSend_richLinksDataSourceClass(v35, v36, v37) == 0;

    if (v38)
    {
      v41 = objc_msgSend_model(self, v39, v40);
      objc_msgSend_setRichLinksDataSourceClass_(v41, v42, v34);
    }
  }

LABEL_19:
  v17 = v34;

LABEL_20:
  v44 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_fallBackMessagesExtensionPluginForBundleID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (dCopy && (v7 = *MEMORY[0x1E69A69F0], !objc_msgSend_rangeOfString_(dCopy, v5, *MEMORY[0x1E69A69F0])))
  {
    v11 = objc_msgSend_model(self, v8, v9);
    v14 = objc_msgSend_pluginsMap(v11, v12, v13);
    v10 = objc_msgSend_pluginForIdentifier_(v14, v15, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dataSourceForPluginPayload:(id)payload
{
  v47 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v7 = objc_msgSend_pluginBundleID(payloadCopy, v5, v6);

  if (!v7)
  {
    *buf = xmmword_1E7811CB8;
    v45 = *off_1E7811CC8;
    v46 = 1845;
    v10 = MEMORY[0x1E696AEC0];
    v11 = IMFileLocationTrimFileName();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, &stru_1F1B76F98);
    v15 = objc_msgSend_stringWithFormat_(v10, v14, @"Unexpected false '%@' in %s at %s:%d. %@", @"pluginPayload.pluginBundleID != nil", "[IMBalloonPluginManager dataSourceForPluginPayload:]", v11, 1845, v13);

    v18 = IMGetAssertionFailureHandler();
    if (v18)
    {
      v18(v15);
    }

    else
    {
      v19 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DF284(v15, v19);
      }
    }
  }

  v20 = objc_msgSend_model(self, v8, v9);
  v23 = objc_msgSend_pluginsMap(v20, v21, v22);
  v26 = objc_msgSend_pluginBundleID(payloadCopy, v24, v25);
  v28 = objc_msgSend_pluginForIdentifier_(v23, v27, v26);

  if (!v28)
  {
    v31 = objc_msgSend_pluginBundleID(payloadCopy, v29, v30);
    v28 = objc_msgSend__fallBackMessagesExtensionPluginForBundleID_(self, v32, v31);
  }

  v33 = objc_msgSend_pluginBundleID(payloadCopy, v29, v30);
  if (v33)
  {
    v34 = v28 == 0;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  if (v35 && IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v40 = objc_msgSend_pluginBundleID(payloadCopy, v38, v39);
      *buf = 138412290;
      *&buf[4] = v40;
      _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", buf, 0xCu);
    }
  }

  v41 = objc_msgSend_dataSourceForPluginPayload_(v28, v36, payloadCopy);

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)existingDataSourceForMessageGUID:(id)d bundleID:(id)iD
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    v10 = objc_msgSend_model(self, v7, v8);
    v13 = objc_msgSend_pluginsMap(v10, v11, v12);
    v15 = objc_msgSend_pluginForIdentifier_(v13, v14, iDCopy);

    if (!v15)
    {
      v15 = objc_msgSend__fallBackMessagesExtensionPluginForBundleID_(self, v16, iDCopy);
      if (!v15)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v21 = 138412290;
            v22 = iDCopy;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", &v21, 0xCu);
          }
        }

        v15 = 0;
      }
    }

    v18 = objc_msgSend_existingDataSourceForMessageGUID_(v15, v16, dCopy);
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)insertDataSource:(id)source forGUID:(id)d
{
  dCopy = d;
  sourceCopy = source;
  v19 = objc_msgSend_bundleID(sourceCopy, v8, v9);
  v12 = objc_msgSend_model(self, v10, v11);
  v15 = objc_msgSend_pluginsMap(v12, v13, v14);
  v17 = objc_msgSend_pluginForIdentifier_(v15, v16, v19);

  objc_msgSend_insertDataSource_forGUID_(v17, v18, sourceCopy, dCopy);
}

- (id)balloonPluginForBundleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v7 = objc_msgSend_model(self, v4, v5);
  v10 = objc_msgSend_pluginsMap(v7, v8, v9);
  v12 = objc_msgSend_pluginForIdentifier_(v10, v11, dCopy);

  if (!v12)
  {
    v12 = objc_msgSend__fallBackMessagesExtensionPluginForBundleID_(self, v13, dCopy);
    if (!v12)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = dCopy;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", &v17, 0xCu);
        }
      }

      goto LABEL_8;
    }
  }

LABEL_9:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)systemBundleIdentifierForPluginIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v7 = objc_msgSend_model(self, v5, v6);
    v10 = objc_msgSend_pluginsMap(v7, v8, v9);
    v12 = objc_msgSend_pluginForIdentifier_(v10, v11, identifierCopy);

    v15 = objc_msgSend_appBundle(v12, v13, v14);
    v18 = objc_msgSend_bundleIdentifier(v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_transferUpdated:(id)updated
{
  v12 = objc_msgSend_object(updated, a2, updated);
  if (objc_msgSend_transferState(v12, v4, v5) == 5)
  {
    v8 = objc_msgSend_messageGUID(v12, v6, v7);
    v10 = objc_msgSend_existingDataSourceForMessageGUID_bundleID_(self, v9, v8, *MEMORY[0x1E69A6A18]);

    objc_msgSend_pluginPayloadDidChange_(v10, v11, 2);
  }
}

@end
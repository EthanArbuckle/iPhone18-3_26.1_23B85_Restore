@interface CKDServerConfigurationManager
+ (id)sharedManager;
- (BOOL)_validateContainerServerInfo:(id)a3 requireUserIDs:(BOOL)a4 requireEnvironment:(BOOL)a5 error:(id *)a6;
- (BOOL)systemAvailabilityChanged:(unint64_t)a3;
- (CKDServerConfigurationManager)init;
- (id)CKStatusReportArray;
- (id)configurationForContainer:(id)a3;
- (id)lastKnownServerConfiguration;
- (void)_fetchContainerSpecificInfoForOperation:(id)a3 requireUserIDs:(BOOL)a4 completionHandler:(id)a5;
- (void)_fetchGlobalConfigForOperation:(id)a3 completionHandler:(id)a4;
- (void)_reallyDropAllConfigurations;
- (void)_writeOutiCloudAppSiteAssociationData:(id)a3;
- (void)configurationForOperation:(id)a3 completionHandler:(id)a4;
- (void)containerServerInfoForOperation:(id)a3 requireUserIDs:(BOOL)a4 requireEnvironment:(BOOL)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)expireConfigurationForContainer:(id)a3;
- (void)expireGlobalConfiguration;
- (void)setGlobalConfiguration:(id)a3;
- (void)wipeAllConfigurations;
@end

@implementation CKDServerConfigurationManager

+ (id)sharedManager
{
  if (qword_280D585D0 != -1)
  {
    dispatch_once(&qword_280D585D0, &unk_28385E8A0);
  }

  v3 = qword_280D585C8;

  return v3;
}

- (BOOL)systemAvailabilityChanged:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 2) != 0 && objc_msgSend_shouldDropAllConfigurations(self, a2, a3))
  {
    objc_msgSend__reallyDropAllConfigurations(self, v5, v6);
  }

  return (v3 & 2) == 0;
}

- (CKDServerConfigurationManager)init
{
  v45.receiver = self;
  v45.super_class = CKDServerConfigurationManager;
  v2 = [(CKDServerConfigurationManager *)&v45 init];
  if (v2)
  {
    v3 = objc_opt_new();
    configurationQueue = v2->_configurationQueue;
    v2->_configurationQueue = v3;

    v5 = objc_opt_new();
    globalConfigurationOps = v2->_globalConfigurationOps;
    v2->_globalConfigurationOps = v5;

    v7 = objc_opt_new();
    containerSpecificInfoQueue = v2->_containerSpecificInfoQueue;
    v2->_containerSpecificInfoQueue = v7;

    v9 = objc_opt_new();
    containerSpecificInfos = v2->_containerSpecificInfos;
    v2->_containerSpecificInfos = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    objc_msgSend_setName_(v2->_containerSpecificInfos, v13, v12);

    v14 = objc_opt_new();
    containerSpecificInfoOperations = v2->_containerSpecificInfoOperations;
    v2->_containerSpecificInfoOperations = v14;

    v18 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v16, v17);
    fetchContainerSpecificInfoCompletionHandlers = v2->_fetchContainerSpecificInfoCompletionHandlers;
    v2->_fetchContainerSpecificInfoCompletionHandlers = v18;

    v22 = objc_msgSend_UTF8String(@"com.apple.cloudkit.CKDServerConfigurationManager.notificationQueue", v20, v21);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v30 = objc_msgSend_UTF8String(v27, v28, v29);
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create(v30, v31);
    propertyQueue = v2->_propertyQueue;
    v2->_propertyQueue = v32;

    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2253FCC28;
    aBlock[3] = &unk_27854DB70;
    objc_copyWeak(&v43, &location);
    v34 = _Block_copy(aBlock);
    out_token = -1;
    v37 = objc_msgSend_notificationQueue(v2, v35, v36);
    v38 = notify_register_dispatch("com.apple.setmme.dnschanged", &out_token, v37, v34);

    v39 = out_token;
    if (v38)
    {
      v39 = -1;
    }

    v2->_iCloudEnvNotifToken = v39;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  iCloudEnvNotifToken = self->_iCloudEnvNotifToken;
  if (iCloudEnvNotifToken != -1)
  {
    notify_cancel(iCloudEnvNotifToken);
  }

  v4.receiver = self;
  v4.super_class = CKDServerConfigurationManager;
  [(CKDServerConfigurationManager *)&v4 dealloc];
}

- (void)_fetchGlobalConfigForOperation:(id)a3 completionHandler:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Fetching Global Configuration for operation %p", &buf, 0xCu);
  }

  objc_msgSend_qualityOfService(v6, v10, v11);
  v12 = CKGetGlobalQueue();
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = objc_msgSend_globalConfigurationOps(self, v13, v14);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v50, v63, 16);
  if (v18)
  {
    v19 = *v51;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v50 + 1) + 8 * i);
        if (objc_msgSend_isNetworkingBehaviorEquivalentForOperation_(v21, v17, v6))
        {
          v18 = v21;
          goto LABEL_15;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v50, v63, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  *&buf = 0;
  *(&buf + 1) = &buf;
  v59 = 0x3032000000;
  v60 = sub_2250741FC;
  v61 = sub_22507367C;
  v22 = v18;
  v62 = v22;
  if (!v22)
  {
    v23 = objc_opt_new();
    v24 = objc_opt_class();
    v27 = objc_msgSend_configurationQueue(self, v25, v26);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2253FD158;
    v47[3] = &unk_27854DB98;
    p_buf = &buf;
    v47[4] = self;
    v48 = v12;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_operationConfigurationBlock_(v6, v28, v24, v23, v27, v47);
  }

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v29 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v40 = *(*(&buf + 1) + 40);
    *v54 = 134218240;
    v55 = v40;
    v56 = 2048;
    v57 = v6;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Waiting on global configuration operation %p for operation %p", v54, 0x16u);
  }

  v32 = objc_msgSend_configurationFetchedGroup(*(*(&buf + 1) + 40), v30, v31);
  v35 = objc_msgSend_propertyQueue(self, v33, v34);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2253FD7F0;
  v41[3] = &unk_27854DBC0;
  v45 = v7;
  v46 = &buf;
  v42 = v6;
  v43 = self;
  v44 = v12;
  v36 = v12;
  v37 = v7;
  v38 = v6;
  dispatch_group_notify(v32, v35, v41);

  _Block_object_dispose(&buf, 8);
  v39 = *MEMORY[0x277D85DE8];
}

- (void)_fetchContainerSpecificInfoForOperation:(id)a3 requireUserIDs:(BOOL)a4 completionHandler:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  objc_msgSend_qualityOfService(v7, v9, v10);
  queue = CKGetGlobalQueue();
  v13 = objc_msgSend_container(v7, v11, v12);
  v14 = v13;
  if (v13)
  {
    v15 = sub_225081F2C(v13);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = objc_msgSend_containerSpecificInfoOperations(self, v16, v17);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v15);

    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v63, v70, 16);
    if (v23)
    {
      v24 = *v64;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v63 + 1) + 8 * i);
          if (objc_msgSend_isNetworkingBehaviorEquivalentForOperation_(v26, v22, v7))
          {
            v23 = v26;
            goto LABEL_12;
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v63, v70, 16);
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_2250741FC;
    v61 = sub_22507367C;
    v29 = v23;
    v62 = v29;
    if (!v29)
    {
      v30 = objc_opt_new();
      v31 = objc_opt_class();
      v34 = objc_msgSend_containerSpecificInfoQueue(self, v32, v33);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_2253FDE74;
      v50[3] = &unk_27854DC60;
      v56 = a4;
      v54 = &v57;
      v50[4] = self;
      v51 = v14;
      v55 = a2;
      v52 = v15;
      v53 = queue;
      objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_operationConfigurationBlock_(v7, v35, v31, v30, v34, v50);
    }

    if (v8)
    {
      v36 = objc_msgSend_fetchContainerSpecificInfoCompletionHandlers(self, v27, v28);
      v38 = objc_msgSend_objectForKey_(v36, v37, v58[5]);

      if (!v38)
      {
        v38 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v39, 1);
        v42 = objc_msgSend_fetchContainerSpecificInfoCompletionHandlers(self, v40, v41);
        objc_msgSend_setObject_forKey_(v42, v43, v38, v58[5]);
      }

      v44 = _Block_copy(v8);
      objc_msgSend_addObject_(v38, v45, v44);
    }

    _Block_object_dispose(&v57, 8);

    goto LABEL_21;
  }

  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253FDDEC;
    block[3] = &unk_2785456C8;
    v69 = v8;
    v68 = v7;
    dispatch_async(queue, block);

    v15 = v69;
LABEL_21:
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)configurationForOperation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_qualityOfService(v6, v8, v9);
  v10 = CKGetGlobalQueue();
  v13 = objc_msgSend_propertyQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2253FECF4;
  v17[3] = &unk_27854DCB0;
  v18 = v6;
  v19 = self;
  v20 = v10;
  v21 = v7;
  v14 = v10;
  v15 = v7;
  v16 = v6;
  dispatch_async(v13, v17);
}

- (void)containerServerInfoForOperation:(id)a3 requireUserIDs:(BOOL)a4 requireEnvironment:(BOOL)a5 completionHandler:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  objc_msgSend_qualityOfService(v10, v12, v13);
  v14 = CKGetGlobalQueue();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2253FF4C0;
  aBlock[3] = &unk_27854DCD8;
  v15 = v11;
  v41 = v15;
  v16 = v14;
  v40 = v16;
  v17 = _Block_copy(aBlock);
  v22 = objc_msgSend_container(v10, v18, v19);
  if (v22)
  {
    v23 = objc_msgSend_propertyQueue(self, v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253FF5B0;
    block[3] = &unk_27854DD28;
    block[4] = self;
    v34 = v22;
    v37 = a4;
    v38 = a5;
    v36 = v17;
    v35 = v10;
    dispatch_async(v23, block);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v43 = v10;
      _os_log_fault_impl(&dword_22506F000, v24, OS_LOG_TYPE_FAULT, "Failed to get server info for container, operation unexpectedly missing container: %@ ", buf, 0xCu);
    }

    v27 = MEMORY[0x277CBC560];
    v28 = *MEMORY[0x277CBC120];
    v29 = objc_msgSend_operationID(v10, v25, v26);
    v31 = objc_msgSend_errorWithDomain_code_format_(v27, v30, v28, 1000, @"Failed to get server info for container, operation unexpectedly missing container: %@ ", v29);

    (*(v17 + 2))(v17, 0, v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateContainerServerInfo:(id)a3 requireUserIDs:(BOOL)a4 requireEnvironment:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_publicCloudDBURL(v9, v10, v11);
  if (!v12)
  {
    goto LABEL_14;
  }

  v15 = v12;
  v16 = objc_msgSend_publicShareServiceURL(v9, v13, v14);
  if (!v16)
  {
    goto LABEL_13;
  }

  v19 = v16;
  v20 = objc_msgSend_publicCodeServiceURL(v9, v17, v18);
  if (!v20)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v23 = v20;
  v24 = objc_msgSend_publicMetricsServiceURL(v9, v21, v22);
  if (!v24)
  {

    goto LABEL_12;
  }

  v27 = v24;
  v28 = objc_msgSend_publicDeviceServiceURL(v9, v25, v26);

  if (!v28)
  {
LABEL_14:
    if (!a6)
    {
      goto LABEL_21;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1000, @"Failed to validate container server info, missing one or more URLs");
LABEL_16:
    *a6 = v32 = 0;
    goto LABEL_22;
  }

  if (v8)
  {
    v30 = objc_msgSend_containerScopedUserID(v9, v13, v29);

    if (!v30)
    {
      if (!a6)
      {
        goto LABEL_21;
      }

      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1000, @"Failed to validate container server info, missing CSUID");
      goto LABEL_16;
    }
  }

  if (v7 && objc_msgSend_environment(v9, v13, v29) == -1)
  {
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 1000, @"Failed to validate container server info, missing environment");
      goto LABEL_16;
    }

LABEL_21:
    v32 = 0;
    goto LABEL_22;
  }

  v32 = 1;
LABEL_22:

  return v32;
}

- (void)_reallyDropAllConfigurations
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Warn: Dropping all config bags and forcing a re-fetch of our config.", buf, 2u);
  }

  v6 = objc_msgSend_propertyQueue(self, v4, v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253FFBD4;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v6, block);
}

- (void)wipeAllConfigurations
{
  objc_msgSend_setShouldDropAllConfigurations_(self, a2, 1);
  v6 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v3, v4);
  objc_msgSend_registerWatcher_(v6, v5, self);
}

- (void)_writeOutiCloudAppSiteAssociationData:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v3;
    v7 = v3;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v39, v45, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v40;
      do
      {
        v13 = 0;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          v15 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v14);
          v18 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v16, v17);
          v20 = objc_msgSend_stringByTrimmingCharactersInSet_(v15, v19, v18);

          v21 = objc_alloc(MEMORY[0x277CBEA90]);
          v24 = objc_msgSend_initWithBase64EncodedString_options_(v21, v22, v20, 1);
          if (v24)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v24, v14);
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v25 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v44 = v14;
              _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Could not get app site association data for hostname %@", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v39, v45, 16);
      }

      while (v11);
    }

    if (objc_msgSend_count(v6, v26, v27) && (sub_2254058B8(), v28 = objc_claimAutoreleasedReturnValue(), isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v6, v29, v28), v28, (isEqualToDictionary & 1) == 0))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Registering valid app site association data with LS: %@", buf, 0xCu);
      }

      v34 = MEMORY[0x277D547A8];
      v35 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v33, @"com.apple.CloudKit.ShareBear");
      objc_msgSend_setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler_(v34, v36, v35, v6, &unk_28385E8C0);

      v3 = v38;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v3 = v38;
      v31 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Found ineligible or unchanged app site association data, not registering with LS: %@", buf, 0xCu);
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)setGlobalConfiguration:(id)a3
{
  v15 = a3;
  objc_storeStrong(&self->_globalConfiguration, a3);
  v7 = objc_msgSend_iCloudAppSiteAssociationData(v15, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_iCloudAppSiteAssociationData(v15, v11, v12);
    objc_msgSend__writeOutiCloudAppSiteAssociationData_(self, v14, v13);
  }
}

- (void)expireGlobalConfiguration
{
  v4 = objc_msgSend_propertyQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2254002CC;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (id)configurationForContainer:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_propertyQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v8 = sub_225081F2C(v4);
  v11 = objc_msgSend_containerSpecificInfos(self, v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, v8);

  if (!v13)
  {
    v16 = objc_msgSend_deviceContext(v4, v14, v15);
    v19 = objc_msgSend_supportsCaching(v16, v17, v18);

    if (v19)
    {
      v22 = objc_msgSend_account(v4, v20, v21);
      v25 = objc_msgSend_accountType(v22, v23, v24);

      v13 = 0;
      if (v25 <= 3 && v25 != 2)
      {
        v28 = objc_msgSend_deviceContext(v4, v26, v27);
        v31 = objc_msgSend_metadataCache(v28, v29, v30);
        v34 = objc_msgSend_containerID(v4, v32, v33);
        v37 = objc_msgSend_account(v4, v35, v36);
        v40 = objc_msgSend_accountID(v37, v38, v39);
        v13 = objc_msgSend_containerServerInfoForContainerID_accountID_(v31, v41, v34, v40);

        if (v13)
        {
          v44 = objc_msgSend_containerSpecificInfos(self, v42, v43);
          objc_msgSend_setObject_forKey_(v44, v45, v13, v8);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v46 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v49 = 138412290;
            v50 = v13;
            _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Set container info from cached metadata: %@", &v49, 0xCu);
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v47 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)expireConfigurationForContainer:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_containerID(v4, v5, v6);
  if (v7)
  {
    v8 = sub_225081F2C(v4);
    v11 = objc_msgSend_propertyQueue(self, v9, v10);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2254006E8;
    v15[3] = &unk_2785463D0;
    v15[4] = self;
    v16 = v8;
    v17 = v4;
    v18 = v7;
    v12 = v8;
    dispatch_async(v11, v15);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_fault_impl(&dword_22506F000, v13, OS_LOG_TYPE_FAULT, "Failed to expire configuration for container, unable to determine containerID: %@ ", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)lastKnownServerConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_2250741FC;
  v12 = sub_22507367C;
  v13 = 0;
  v4 = objc_msgSend_propertyQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2254009A4;
  v7[3] = &unk_278546448;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)CKStatusReportArray
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_propertyQueue(self, v4, v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225400ABC;
  v11[3] = &unk_278545898;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  dispatch_sync(v6, v11);

  v8 = v12;
  v9 = v7;

  return v7;
}

@end
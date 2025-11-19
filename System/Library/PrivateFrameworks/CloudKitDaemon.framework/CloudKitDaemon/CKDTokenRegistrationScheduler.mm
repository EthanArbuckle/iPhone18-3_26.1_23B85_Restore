@interface CKDTokenRegistrationScheduler
- (CKDLogicalDeviceContext)deviceContext;
- (CKDTokenRegistrationScheduler)initWithDeviceContext:(id)a3;
- (void)_handlePushToken:(id)a3 forContainer:(id)a4 completionBlock:(id)a5;
- (void)_refreshApsToken:(id)a3 container:(id)a4 completionBlock:(id)a5;
- (void)_removeApsToken:(id)a3 appContainerAccountTuple:(id)a4 completionBlock:(id)a5;
- (void)dealloc;
- (void)forceTokenRefreshForAllClients;
- (void)handlePublicPushTokenDidUpdate:(id)a3;
- (void)refreshAllClientsNow:(BOOL)a3 completionHandler:(id)a4;
- (void)registerTokenForAdopterContainer:(id)a3 completionBlock:(id)a4;
- (void)registerTokenRefresh;
- (void)unregisterAllTokensForAccountID:(id)a3 completionHandler:(id)a4;
- (void)unregisterTokenForAppContainerAccountTuple:(id)a3;
@end

@implementation CKDTokenRegistrationScheduler

- (CKDLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

- (CKDTokenRegistrationScheduler)initWithDeviceContext:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CKDTokenRegistrationScheduler;
  v5 = [(CKDTokenRegistrationScheduler *)&v29 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceContext, v4);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = objc_opt_new();
    callbackBlocks = v6->_callbackBlocks;
    v6->_callbackBlocks = v15;

    v17 = objc_opt_new();
    callbackTimers = v6->_callbackTimers;
    v6->_callbackTimers = v17;

    v21 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v19, v20);
    objc_msgSend_addObserver_selector_name_object_(v21, v22, v6, sel_handlePublicPushTokenDidUpdate_, @"CKDPushConnectionDidReceivePublicTokenNotification", 0);

    v25 = objc_msgSend_testDeviceReference(v4, v23, v24);

    if (v25)
    {
      v26 = objc_opt_new();
      unitTestingPushTokens = v6->_unitTestingPushTokens;
      v6->_unitTestingPushTokens = v26;
    }
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = CKDTokenRegistrationScheduler;
  [(CKDTokenRegistrationScheduler *)&v6 dealloc];
}

- (void)registerTokenRefresh
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_unitTestingPushTokens(self, a2, v2);

  if (v4)
  {
    goto LABEL_2;
  }

  v61 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
  if (objc_msgSend_isSystemInstalledBinary(v61, v8, v9))
  {
    v12 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
    v15 = objc_msgSend_processType(v12, v13, v14);

    if (v15 == 2)
    {
LABEL_2:
      v7 = *MEMORY[0x277D85DE8];
      return;
    }

    if (CKIsRunningInSyncBubble())
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring registerTokenRefresh", buf, 2u);
      }

      goto LABEL_2;
    }

    objc_initWeak(&location, self);
    v20 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v18, v19);
    v23 = objc_msgSend_queue(self, v21, v22);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2253B193C;
    v63[3] = &unk_27854D108;
    objc_copyWeak(&v64, &location);
    objc_msgSend_registerForTaskWithIdentifier_usingQueue_launchHandler_(v20, v24, @"com.apple.cloudkit.tokenregistration", v23, v63);

    v27 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v25, v26);
    v29 = objc_msgSend_taskRequestForIdentifier_(v27, v28, @"com.apple.cloudkit.tokenregistration");
    LODWORD(v23) = v29 == 0;

    if (!v23)
    {
LABEL_26:
      objc_destroyWeak(&v64);
      objc_destroyWeak(&location);
      goto LABEL_2;
    }

    v32 = objc_msgSend_deviceContext(self, v30, v31);
    v35 = objc_msgSend_metadataCache(v32, v33, v34);
    v38 = objc_msgSend_globalConfiguration(v35, v36, v37);
    v40 = objc_msgSend_tokenRegisterDays_(v38, v39, 0);

    if (v40 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = objc_alloc(MEMORY[0x277CF07D8]);
    v44 = objc_msgSend_initWithIdentifier_(v42, v43, @"com.apple.cloudkit.tokenregistration");
    objc_msgSend_setInterval_(v44, v45, v46, (86400 * v41));
    objc_msgSend_setRequiresNetworkConnectivity_(v44, v47, 1);
    v50 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v48, v49);
    v62 = 0;
    v52 = objc_msgSend_submitTaskRequest_error_(v50, v51, v44, &v62);
    v53 = v62;

    v54 = *MEMORY[0x277CBC878];
    v55 = *MEMORY[0x277CBC880];
    if (v52)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v54);
      }

      v56 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v67 = v53;
      v57 = "Failed to register operation info cache eviction task with error: %@";
      v58 = v56;
      v59 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v54);
      }

      v60 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v57 = "Registered operation info cache eviction task";
      v58 = v60;
      v59 = 2;
    }

    _os_log_error_impl(&dword_22506F000, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);
LABEL_25:

    goto LABEL_26;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_refreshApsToken:(id)a3 container:(id)a4 completionBlock:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v13 = a5;
  if (!v9)
  {
    v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, self, @"CKDTokenRegistrationScheduler.m", 189, @"token must not be nil");
  }

  v14 = objc_msgSend_unitTestingPushTokens(self, v11, v12);

  v15 = *MEMORY[0x277CBC878];
  v16 = *MEMORY[0x277CBC880];
  v17 = MEMORY[0x277CBC830];
  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v18 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = v18;
      v24 = objc_msgSend_account(v10, v22, v23);
      v27 = objc_msgSend_accountID(v24, v25, v26);
      *buf = 138543874;
      v49 = v9;
      v50 = 2112;
      v51 = v10;
      v52 = 2112;
      v53 = v27;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Refreshing token %{public}@ for container %@ using unit test account ID %@", buf, 0x20u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v28 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = v9;
      v50 = 2112;
      v51 = v10;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Refreshing token %@ for container %@", buf, 0x16u);
    }
  }

  v29 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v19, v20);
  objc_msgSend_setQualityOfService_(v29, v30, 17);
  v31 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v31, v32, v29);
  v33 = [CKDTokenRegistrationSchedulerRegisterOperation alloc];
  v35 = objc_msgSend_initWithOperationInfo_container_apsToken_(v33, v34, v31, v10, v9);
  objc_initWeak(buf, v35);
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = sub_2253B1D50;
  v45 = &unk_278547F28;
  v36 = v13;
  v46 = v36;
  objc_copyWeak(&v47, buf);
  objc_msgSend_setCompletionBlock_(v35, v37, &v42);
  objc_msgSend_addOperation_(v10, v38, v35, v42, v43, v44, v45);
  objc_destroyWeak(&v47);

  objc_destroyWeak(buf);
  v39 = *MEMORY[0x277D85DE8];
}

- (void)_removeApsToken:(id)a3 appContainerAccountTuple:(id)a4 completionBlock:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v13 = a5;
  if (!v9)
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDTokenRegistrationScheduler.m", 212, @"token must not be nil");
  }

  v14 = objc_msgSend_deviceContext(self, v11, v12);
  v17 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v15, v16);
  v19 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v18, v10, v14, v17);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v33 = v20;
    v36 = objc_msgSend_applicationBundleIdentifierForPush(v19, v34, v35);
    *location = 138412802;
    *&location[4] = v9;
    v46 = 2112;
    v47 = v10;
    v48 = 2114;
    v49 = v36;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Removing token %@ for container %@ push bundle identifier %{public}@", location, 0x20u);
  }

  v23 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v21, v22);
  v24 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v24, v25, v23);
  v26 = [CKDTokenRegistrationSchedulerUnregisterOperation alloc];
  v28 = objc_msgSend_initWithOperationInfo_container_apsToken_(v26, v27, v24, v19, v9);
  objc_initWeak(location, v28);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_2253B20BC;
  v42 = &unk_278547F28;
  v29 = v13;
  v43 = v29;
  objc_copyWeak(&v44, location);
  objc_msgSend_setCompletionBlock_(v28, v30, &v39);
  objc_msgSend_addOperation_(v19, v31, v28, v39, v40, v41, v42);
  objc_destroyWeak(&v44);

  objc_destroyWeak(location);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)refreshAllClientsNow:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_unitTestingPushTokens(self, v7, v8);

  if (!v9)
  {
    v10 = CKIsRunningInSyncBubble();
    v11 = *MEMORY[0x277CBC878];
    v12 = *MEMORY[0x277CBC880];
    if (!v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Refreshing all client push tokens", buf, 2u);
      }

      v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16);
      v18 = dispatch_group_create();
      v21 = objc_msgSend_deviceContext(self, v19, v20);
      v24 = objc_msgSend_metadataCache(v21, v22, v23);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2253B23EC;
      v37[3] = &unk_27854D158;
      v38 = v18;
      v39 = self;
      v25 = v21;
      v40 = v25;
      v41 = a3;
      v26 = v18;
      objc_msgSend_enumerateKnownAppContainerAccountTuplesUsingBlock_(v24, v27, v37);

      v30 = objc_msgSend_queue(self, v28, v29);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2253B2B58;
      block[3] = &unk_278546C30;
      v34 = v25;
      v35 = v17;
      v36 = v6;
      v31 = v17;
      v32 = v25;
      dispatch_group_notify(v26, v30, block);

      goto LABEL_13;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Ignoring refresh of all clients", buf, 2u);
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  if (v6)
  {
LABEL_7:
    (*(v6 + 2))(v6, 0);
  }

LABEL_13:
}

- (void)_handlePushToken:(id)a3 forContainer:(id)a4 completionBlock:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_22506F000, "tokenRegistrationScheduler/handlePushTokenDidUpdate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v14 = objc_msgSend_appContainerTuple(v9, v12, v13);
  v17 = objc_msgSend_appContainerAccountTuple(v9, v15, v16);
  v45 = v11;
  v18 = [CKDPushToken alloc];
  v21 = objc_msgSend_apsEnvironmentString(v9, v19, v20);
  v23 = objc_msgSend_initWithAPSEnvironmentString_apsToken_(v18, v22, v21, v8);
  v47 = v8;

  v48 = objc_msgSend_applicationBundleIdentifierForPush(v9, v24, v25);
  v28 = objc_msgSend_deviceContext(self, v26, v27);
  v31 = objc_msgSend_metadataCache(v28, v29, v30);
  v33 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v31, v32, v17);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v58 = v8;
    v59 = 2112;
    v60 = v14;
    v61 = 2114;
    v62 = v48;
    _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Handling token %@ for container tuple %@, push bundle identifier %{public}@", buf, 0x20u);
  }

  v37 = objc_msgSend_queue(self, v35, v36, v45);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B2F4C;
  block[3] = &unk_27854D1A8;
  block[4] = self;
  v50 = v17;
  v51 = v14;
  v52 = v23;
  v54 = v9;
  v55 = v10;
  v53 = v33;
  v38 = v9;
  v39 = v10;
  v40 = v33;
  v41 = v23;
  v42 = v14;
  v43 = v17;
  dispatch_async(v37, block);

  os_activity_scope_leave(&state);
  v44 = *MEMORY[0x277D85DE8];
}

- (void)unregisterTokenForAppContainerAccountTuple:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_unitTestingPushTokens(self, v5, v6);

  if (!v7)
  {
    if (CKIsRunningInSyncBubble())
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v4;
        _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring unregister for container %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = objc_msgSend_deviceContext(self, v8, v9);
      v14 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v12, v13);
      v16 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v15, v4, v11, v14);

      v19 = objc_msgSend_sharedClient(CKDPDSClient, v17, v18);
      v30 = 0;
      v21 = objc_msgSend_unregisterTokenForContainer_outError_(v19, v20, v16, &v30);
      v22 = v30;

      if ((v21 & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v25 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v32 = v4;
          v33 = 2112;
          v34 = v22;
          _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Failed to unregister with PDS, but continuing with CKDeviceService unregistration for %@: %@", buf, 0x16u);
        }
      }

      v26 = objc_msgSend_queue(self, v23, v24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2253B3A34;
      block[3] = &unk_278545898;
      block[4] = self;
      v29 = v4;
      dispatch_async(v26, block);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAllTokensForAccountID:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_unitTestingPushTokens(self, v8, v9);

  if (v10)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (CKIsRunningInSyncBubble())
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring unregister", buf, 2u);
    }

LABEL_9:
    v7[2](v7, 0);
    goto LABEL_16;
  }

  v14 = objc_msgSend_sharedClient(CKDPDSClient, v11, v12);
  v26 = 0;
  v16 = objc_msgSend_unregisterAllTokensForAccountID_outError_(v14, v15, v6, &v26);
  v17 = v26;

  if ((v16 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to unregister with PDS, but continuing with CKDeviceService unregistration for %@", buf, 0xCu);
    }
  }

  v21 = objc_msgSend_queue(self, v18, v19);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2253B3F5C;
  v23[3] = &unk_278546C30;
  v23[4] = self;
  v24 = v6;
  v25 = v7;
  dispatch_async(v21, v23);

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)forceTokenRefreshForAllClients
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Refreshing all push tokens", v5, 2u);
  }

  objc_msgSend_refreshAllClientsNow_completionHandler_(self, v4, 1, 0);
}

- (void)handlePublicPushTokenDidUpdate:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
  if ((objc_msgSend_isSystemInstalledBinary(v7, v8, v9) & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
  v15 = objc_msgSend_processType(v12, v13, v14);

  if (v15 != 2)
  {
    v7 = _os_activity_create(&dword_22506F000, "tokenRegistrationScheduler/handlePublicPushTokenDidUpdate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v7, &v17);
    objc_msgSend_refreshAllClientsNow_completionHandler_(self, v16, 0, 0);
    os_activity_scope_leave(&v17);
LABEL_4:
  }
}

- (void)registerTokenForAdopterContainer:(id)a3 completionBlock:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_deviceContext(self, v8, v9);
  v13 = objc_msgSend_account(v6, v11, v12);
  v16 = objc_msgSend_dsid(v13, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_metadataCache(v10, v17, v18);
    v22 = objc_msgSend_account(v6, v20, v21);
    v25 = objc_msgSend_accountID(v22, v23, v24);
    objc_msgSend_setCachedDSID_forAccountID_(v19, v26, v16, v25);
  }

  if (CKIsRunningInSyncBubble())
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v47 = v29;
      v50 = objc_msgSend_appContainerTuple(v6, v48, v49);
      *buf = 138412290;
      v59 = v50;
      _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring token refresh for tuple %@", buf, 0xCu);
    }

    v7[2](v7, 0);
  }

  else
  {
    v30 = objc_msgSend_appContainerAccountTuple(v6, v27, v28);
    v33 = objc_msgSend_appContainerTuple(v6, v31, v32);
    v36 = objc_msgSend_sharedClient(CKDPDSClient, v34, v35);
    v57 = 0;
    v38 = objc_msgSend_ensureRegistrationForContainer_outError_(v36, v37, v6, &v57);
    v39 = v57;

    if ((v38 & 1) == 0 && v39)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v33;
        _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to ensure PDS registration, but continuing with CKDeviceService registration for %@", buf, 0xCu);
      }
    }

    v43 = objc_msgSend_queue(self, v40, v41);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253B49F0;
    block[3] = &unk_27854D270;
    block[4] = self;
    v52 = v30;
    v56 = v7;
    v53 = v33;
    v54 = v6;
    v55 = v10;
    v44 = v33;
    v45 = v30;
    dispatch_async(v43, block);
  }

  v46 = *MEMORY[0x277D85DE8];
}

@end
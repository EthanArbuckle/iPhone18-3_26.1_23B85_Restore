@interface CKDMapShareURLsToInstalledBundleIDsOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDMapShareURLsToInstalledBundleIDsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_fetchRegisteredBundleIDs;
- (void)_fetchShareMetadata;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_performCallbackForURL:(id)a3 withAppBundleIDs:(id)a4 daemonBundleIDs:(id)a5 error:(id)a6;
- (void)main;
@end

@implementation CKDMapShareURLsToInstalledBundleIDsOperation

- (CKDMapShareURLsToInstalledBundleIDsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CKDMapShareURLsToInstalledBundleIDsOperation;
  v9 = [(CKDOperation *)&v18 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_shareURLs(v6, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    shareURLs = v9->_shareURLs;
    v9->_shareURLs = v13;

    v15 = objc_opt_new();
    shareMetadatasByURL = v9->_shareMetadatasByURL;
    v9->_shareMetadatasByURL = v15;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/map-share-urls-to-bundle-IDs", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v12 = objc_msgSend_error(self, v10, v11);
      objc_msgSend_finishWithError_(self, v13, v12);

      break;
    case 2:
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend__fetchRegisteredBundleIDs(self, v8, v9);
      break;
    case 1:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__fetchShareMetadata(self, v6, v7);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Fetch Share Metadata";
  }

  else if (a3 == 3)
  {
    v5 = @"Fetch Registered bundleIDs";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDMapShareURLsToInstalledBundleIDsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_performCallbackForURL:(id)a3 withAppBundleIDs:(id)a4 daemonBundleIDs:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_shareURLs(self, v14, v15);
  objc_sync_enter(v16);
  v19 = objc_msgSend_shareURLs(self, v17, v18);
  objc_msgSend_removeObject_(v19, v20, v10);

  objc_sync_exit(v16);
  v23 = objc_msgSend_bundleIDsFetchedBlock(self, v21, v22);

  if (v23)
  {
    v26 = objc_msgSend_callbackQueue(self, v24, v25);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252370B4;
    block[3] = &unk_278548978;
    block[4] = self;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v13;
    dispatch_async(v26, block);
  }
}

- (void)_fetchShareMetadata
{
  v4 = objc_msgSend_container(self, a2, v2);
  v55 = objc_msgSend_processScopedClientProxy(v4, v5, v6);

  v9 = objc_msgSend_container(self, v7, v8);
  v57 = objc_msgSend_logicalDeviceScopedClientProxy(v9, v10, v11);

  v12 = objc_alloc(MEMORY[0x277CBC220]);
  v56 = objc_msgSend_initWithContainerIdentifier_environment_(v12, v13, @"com.apple.cloudkit", 1);
  v14 = [CKDAppContainerTuple alloc];
  v15 = [CKDApplicationID alloc];
  v17 = objc_msgSend_initWithApplicationBundleIdentifier_(v15, v16, @"com.apple.cloudd");
  v20 = objc_msgSend_container(self, v18, v19);
  v23 = objc_msgSend_personaID(v20, v21, v22);
  v25 = objc_msgSend_initWithApplicationID_containerID_personaID_(v14, v24, v17, v56, v23);

  v28 = objc_msgSend_container(self, v26, v27);
  v31 = objc_msgSend_entitlements(v28, v29, v30);
  v34 = objc_msgSend_container(self, v32, v33);
  v37 = objc_msgSend_options(v34, v35, v36);
  v40 = objc_msgSend_clientConnection(v55, v38, v39);
  v43 = objc_msgSend_sharedContainers(v40, v41, v42);
  v45 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v44, v25, v55, v57, v31, v37, v43);

  v46 = objc_opt_new();
  objc_msgSend_setOverwriteContainerPCSServiceIfManatee_(v46, v47, 1);
  objc_msgSend_setSkipShareDecryption_(v46, v48, 1);
  v51 = objc_msgSend_shareURLs(self, v49, v50);
  objc_msgSend_setShareURLsToFetch_(v46, v52, v51);

  v53 = objc_opt_class();
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_22523739C;
  v58[3] = &unk_278548B60;
  v58[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(self, v54, v53, v46, 0, v45, v58);
}

- (void)_fetchRegisteredBundleIDs
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v67 = objc_msgSend_processScopedClientProxy(v4, v5, v6);

  v9 = objc_msgSend_container(self, v7, v8);
  v66 = objc_msgSend_logicalDeviceScopedClientProxy(v9, v10, v11);

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = self;
  obj = objc_msgSend_shareURLs(self, v12, v13);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v73, v77, 16);
  if (v68)
  {
    v64 = *v74;
    do
    {
      v17 = 0;
      do
      {
        if (*v74 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v73 + 1) + 8 * v17);
        v70 = v18;
        v19 = objc_msgSend_shareMetadatasByURL(v65, v15, v16);
        v71 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v18);

        v21 = [CKDAppContainerTuple alloc];
        v22 = [CKDApplicationID alloc];
        v24 = objc_msgSend_initWithApplicationBundleIdentifier_(v22, v23, @"com.apple.cloudd");
        v27 = objc_msgSend_containerID(v71, v25, v26);
        v30 = objc_msgSend_container(v65, v28, v29);
        v33 = objc_msgSend_personaID(v30, v31, v32);
        v69 = v17;
        v35 = objc_msgSend_initWithApplicationID_containerID_personaID_(v21, v34, v24, v27, v33);

        v38 = objc_msgSend_container(v65, v36, v37);
        v41 = objc_msgSend_entitlements(v38, v39, v40);
        v44 = objc_msgSend_container(v65, v42, v43);
        v47 = objc_msgSend_options(v44, v45, v46);
        v50 = objc_msgSend_clientConnection(v67, v48, v49);
        v53 = objc_msgSend_sharedContainers(v50, v51, v52);
        v55 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v54, v35, v67, v66, v41, v47, v53);

        v56 = objc_opt_class();
        v57 = objc_opt_new();
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = sub_225237B54;
        v72[3] = &unk_278548C48;
        v72[4] = v70;
        v72[5] = v65;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(v65, v58, v56, v57, 0, v55, v72);

        v61 = objc_msgSend_stateTransitionGroup(v65, v59, v60);
        dispatch_group_enter(v61);

        v17 = v69 + 1;
      }

      while (v68 != v69 + 1);
      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v73, v77, 16);
    }

    while (v68);
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setBundleIDsFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDMapShareURLsToInstalledBundleIDsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

- (void)main
{
  v33 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v3;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v16 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v15, 1, 0, 0);
    v19 = objc_msgSend_CKPropertiesStyleString(v16, v17, v18);
    v21 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v20, 0, 1, 0);
    v24 = objc_msgSend_CKPropertiesStyleString(v21, v22, v23);
    v25 = 138544130;
    v26 = v14;
    v27 = 2048;
    v28 = self;
    v29 = 2114;
    v30 = v19;
    v31 = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Starting mapping share urls to bundleIDs operation <%{public}@: %p; %{public}@, %@>", &v25, 0x2Au);
  }

  v6 = objc_msgSend_shareURLs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) == 0;

  objc_msgSend_makeStateTransition_(self, v10, v9);
  v11 = *MEMORY[0x277D85DE8];
}

@end
@interface CKDPublishAssetsOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDPublishAssetsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_checkEntitlements;
- (id)activityCreate;
- (void)_dispatchAssetURLsForRecord:(id)a3 pcs:(_OpaquePCSShareProtection *)a4;
- (void)_fetchPCSForRecords;
- (void)_fetchRecords;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_finishPublishAssetsForRecord:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation CKDPublishAssetsOperation

- (CKDPublishAssetsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CKDPublishAssetsOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(v6, v7, v8);
    recordIDs = v9->_recordIDs;
    v9->_recordIDs = v10;

    v14 = objc_msgSend_fileNamesByAssetFieldNames(v6, v12, v13);
    fileNamesByAssetFieldNames = v9->_fileNamesByAssetFieldNames;
    v9->_fileNamesByAssetFieldNames = v14;

    v18 = objc_msgSend_requestedTTL(v6, v16, v17);
    v21 = 3600;
    if (v18)
    {
      v21 = v18;
    }

    v9->_requestedTTL = v21;
    v9->_URLOptions = objc_msgSend_URLOptions(v6, v19, v20);
    v22 = objc_opt_new();
    fetchedRecordsByID = v9->_fetchedRecordsByID;
    v9->_fetchedRecordsByID = v22;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/publish-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__fetchRecords(self, v6, v7);
      }

      return 1;
    }

    objc_msgSend_setState_(self, v5, 2);
    v10 = objc_msgSend__checkEntitlements(self, v12, v13);
    if (v10)
    {
      objc_msgSend_finishWithError_(self, v14, v10);
      objc_msgSend_setState_(self, v15, 0xFFFFFFFFLL);
    }

LABEL_10:

    return 1;
  }

  if (v4 == 3)
  {
    objc_msgSend_setState_(self, v5, 4);
    objc_msgSend__fetchPCSForRecords(self, v16, v17);
    return 1;
  }

  if (v4 == 4)
  {
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v10 = objc_msgSend_error(self, v8, v9);
    objc_msgSend_finishWithError_(self, v11, v10);
    goto LABEL_10;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDPublishAssetsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548CE0[a3 - 2];
  }

  return v5;
}

- (id)_checkEntitlements
{
  if ((objc_msgSend_URLOptions(self, a2, v2) & 2) != 0 && (objc_msgSend_container(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_entitlements(v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), hasAllowOnDeviceAssetStreamingEntitlement = objc_msgSend_hasAllowOnDeviceAssetStreamingEntitlement(v9, v10, v11), v9, v6, (hasAllowOnDeviceAssetStreamingEntitlement & 1) == 0))
  {
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, *MEMORY[0x277CBBF50], 8, &unk_2838C91D8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_dispatchAssetURLsForRecord:(id)a3 pcs:(_OpaquePCSShareProtection *)a4
{
  v111 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v93 = objc_msgSend_recordID(v6, v7, v8);
  if (!v93)
  {
    v87 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v87, v88, a2, self, @"CKDPublishAssetsOperation.m", 120, @"Expected non nil recordID");
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v108 = v93;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Getting asset urls for record %@", buf, 0xCu);
  }

  v14 = objc_msgSend_container(self, v12, v13);
  v17 = objc_msgSend_entitlements(v14, v15, v16);
  hasAlwaysAllowPublishAssetsEntitlement = objc_msgSend_hasAlwaysAllowPublishAssetsEntitlement(v17, v18, v19);

  if ((hasAlwaysAllowPublishAssetsEntitlement & 1) == 0)
  {
    if ((*MEMORY[0x277CBC810] & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        v71 = v33;
        v74 = objc_msgSend_container(self, v72, v73);
        v77 = objc_msgSend_containerID(v74, v75, v76);
        v80 = objc_msgSend_containerIdentifier(v77, v78, v79);
        v83 = objc_msgSend_container(self, v81, v82);
        v86 = objc_msgSend_processName(v83, v84, v85);
        *buf = 138412546;
        v108 = v80;
        v109 = 2112;
        v110 = v86;
        _os_log_fault_impl(&dword_22506F000, v71, OS_LOG_TYPE_FAULT, "Unidentified use of CKPublishAssetsOperation which will break under Walrus in container %@ by client %@. Please file a radar and reach out to cloudkit-client@group.apple.com for next steps.", buf, 0x16u);
      }
    }

    goto LABEL_19;
  }

  v23 = objc_msgSend_container(self, v21, v22);
  v26 = objc_msgSend_containerID(v23, v24, v25);
  if (objc_msgSend_specialContainerType(v26, v27, v28) == 4)
  {
    v31 = objc_msgSend_URLOptions(self, v29, v30);

    if (v31)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v108 = v93;
        _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Asset URL for iCloud Drive record %@ requested for private streaming. This request will fail if walrus is enabled.", buf, 0xCu);
      }

LABEL_19:
      v91 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v91 = 1;
LABEL_22:
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = objc_msgSend_allKeys(v6, v21, v22);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v102, v106, 16);
  if (v35)
  {
    v37 = v35;
    v38 = *v103;
    v39 = 0x277CBC000uLL;
    v90 = *v103;
    do
    {
      v40 = 0;
      v94 = v37;
      do
      {
        if (*v103 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v102 + 1) + 8 * v40);
        v42 = objc_msgSend_objectForKey_(v6, v36, v41);
        v43 = *(v39 + 400);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v42;
          v47 = objc_msgSend_fileNamesByAssetFieldNames(self, v45, v46);
          v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, v41);

          if (v49)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v50 = v6;
            v51 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v108 = v44;
              _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Creating asset url for asset %@", buf, 0xCu);
            }

            v54 = objc_msgSend_container(self, v52, v53);
            v57 = objc_msgSend_pcsManager(v54, v55, v56);
            v60 = objc_msgSend_useEncryption(self, v58, v59);
            v63 = objc_msgSend_useClearAssetEncryption(self, v61, v62);
            v101 = 0;
            LOBYTE(v89) = v91;
            objc_msgSend_fillInDownloadURLsForAssetWithFieldName_fileName_recordPCS_pcsManager_useEncryption_useClearAssetEncryption_alwaysAllowKeyExport_outError_(v44, v64, v41, v49, a4, v57, v60, v63, v89, &v101);
            v65 = v101;

            v68 = objc_msgSend_callbackQueue(self, v66, v67);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_2251B498C;
            block[3] = &unk_278548978;
            block[4] = self;
            v97 = v93;
            v98 = v41;
            v99 = v44;
            v100 = v65;
            v69 = v65;
            dispatch_async(v68, block);

            v6 = v50;
            v38 = v90;
            v37 = v94;
          }

          v39 = 0x277CBC000;
        }

        ++v40;
      }

      while (v37 != v40);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v102, v106, 16);
    }

    while (v37);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_finishPublishAssetsForRecord:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = a3;
  obj = objc_msgSend_allKeys(v27, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v32, v36, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = objc_msgSend_fileNamesByAssetFieldNames(self, v8, v9);
        v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v13);

        if (v16)
        {
          v18 = objc_msgSend_objectForKey_(v27, v17, v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            objc_msgSend_setExposeAssetKey_(v19, v20, 1);
            v23 = objc_msgSend_callbackQueue(self, v21, v22);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_2251B4C3C;
            block[3] = &unk_2785463D0;
            block[4] = self;
            v29 = v27;
            v30 = v13;
            v31 = v19;
            v24 = v19;
            dispatch_async(v23, block);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v36, 16);
    }

    while (v10);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_fetchPCSForRecords
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = objc_msgSend_fetchedRecordsByID(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v33, v37, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = objc_msgSend_fetchedRecordsByID(self, v10, v11);
        v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v15);

        v21 = objc_msgSend_stateTransitionGroup(self, v19, v20);
        dispatch_group_enter(v21);

        v24 = objc_msgSend_container(self, v22, v23);
        v27 = objc_msgSend_pcsCache(v24, v25, v26);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_2251B4EDC;
        v31[3] = &unk_278548C98;
        v31[4] = v15;
        v31[5] = self;
        v32 = v18;
        v28 = v18;
        objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v27, v29, v15, self, 0, v31);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v33, v37, 16);
    }

    while (v12);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecords
{
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_msgSend_fileNamesByAssetFieldNames(self, a2, v2);
  v8 = objc_msgSend_allKeys(v5, v6, v7);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);

  v11 = objc_opt_new();
  v14 = objc_msgSend_operationInfo(self, v12, v13);
  v17 = objc_msgSend_resolvedConfiguration(v14, v15, v16);
  objc_msgSend_setResolvedConfiguration_(v11, v18, v17);

  v21 = objc_msgSend_operationInfo(self, v19, v20);
  v24 = objc_msgSend_group(v21, v22, v23);
  objc_msgSend_setGroup_(v11, v25, v24);

  v28 = objc_msgSend_recordIDs(self, v26, v27);
  objc_msgSend_setRecordIDs_(v11, v29, v28);

  objc_msgSend_setShouldFetchAssetContent_(v11, v30, 0);
  objc_msgSend_setShouldRequestEncryptedAssetOwnerIdentifier_(v11, v31, 1);
  v34 = objc_msgSend_fileNamesByAssetFieldNames(self, v32, v33);
  v37 = objc_msgSend_allKeys(v34, v35, v36);
  objc_msgSend_setDesiredKeys_(v11, v38, v37);

  objc_msgSend_setAssetFieldNamesToPublishURLs_(v11, v39, v10);
  v42 = objc_msgSend_requestedTTL(self, v40, v41);
  objc_msgSend_setRequestedTTL_(v11, v43, v42);
  v46 = objc_msgSend_URLOptions(self, v44, v45);
  objc_msgSend_setURLOptions_(v11, v47, v46);
  v48 = objc_opt_class();
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2251B5358;
  v50[3] = &unk_278548B60;
  v50[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v49, v48, v11, v50);
}

- (void)main
{
  v4 = objc_msgSend_recordIDs(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = objc_msgSend_fileNamesByAssetFieldNames(self, v7, v8);
    v12 = objc_msgSend_count(v9, v10, v11) == 0;
  }

  else
  {
    v12 = 1;
  }

  objc_msgSend_makeStateTransition_(self, v13, v12);
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setAssetPublishedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDPublishAssetsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CKDPublishAssetsOperation;
  [(CKDOperation *)&v8 cancel];
  v5 = objc_msgSend_fetchRecordsOperation(self, v3, v4);
  objc_msgSend_cancel(v5, v6, v7);
}

@end
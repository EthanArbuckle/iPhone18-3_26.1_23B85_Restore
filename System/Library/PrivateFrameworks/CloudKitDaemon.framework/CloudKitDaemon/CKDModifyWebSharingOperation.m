@interface CKDModifyWebSharingOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDModifyWebSharingOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (_PCSIdentityData)_copyShareProtectionFromRecord:(id)a3 error:(id *)a4;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_fetchRecords;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleRecordFetched:(id)a3 recordID:(id)a4 error:(id)a5;
- (void)_handleRecordSaved:(id)a3 error:(id)a4;
- (void)_saveRecords;
- (void)main;
@end

@implementation CKDModifyWebSharingOperation

- (CKDModifyWebSharingOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = CKDModifyWebSharingOperation;
  v9 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_recordIDsToShare(v6, v7, v8);
    recordIDsToShare = v9->_recordIDsToShare;
    v9->_recordIDsToShare = v10;

    v14 = objc_msgSend_recordIDsToUnshare(v6, v12, v13);
    recordIDsToUnshare = v9->_recordIDsToUnshare;
    v9->_recordIDsToUnshare = v14;

    v18 = objc_msgSend_recordIDsToShareReadWrite(v6, v16, v17);
    recordIDsToShareReadWrite = v9->_recordIDsToShareReadWrite;
    v9->_recordIDsToShareReadWrite = v18;

    v20 = objc_opt_new();
    recordsToSaveByID = v9->_recordsToSaveByID;
    v9->_recordsToSaveByID = v20;

    v22 = objc_opt_new();
    fetchedRecordIDs = v9->_fetchedRecordIDs;
    v9->_fetchedRecordIDs = v22;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-web-sharing", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)relevantZoneIDs
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordIDsToShare(self, a2, v2);
  v7 = objc_msgSend_recordIDsToUnshare(self, v5, v6);
  v10 = objc_msgSend_recordIDsToShareReadWrite(self, v8, v9);
  if (objc_msgSend_count(v4, v11, v12))
  {
    v15 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v16 = v4;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v62, v68, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v63;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v63 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v25 = objc_msgSend_zoneID(*(*(&v62 + 1) + 8 * i), v19, v20);
          if (v25)
          {
            objc_msgSend_addObject_(v15, v24, v25);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v62, v68, 16);
      }

      while (v21);
    }

    if (!objc_msgSend_count(v7, v26, v27))
    {
LABEL_26:
      if (!objc_msgSend_count(v10, v28, v29))
      {
        goto LABEL_41;
      }

      if (v15)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v15)
    {
LABEL_16:
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v32 = v7;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v58, v67, 16);
      if (v34)
      {
        v37 = v34;
        v38 = *v59;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v59 != v38)
            {
              objc_enumerationMutation(v32);
            }

            v41 = objc_msgSend_zoneID(*(*(&v58 + 1) + 8 * j), v35, v36);
            if (v41)
            {
              objc_msgSend_addObject_(v15, v40, v41);
            }
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v58, v67, 16);
        }

        while (v37);
      }

      goto LABEL_26;
    }

LABEL_15:
    v15 = objc_opt_new();
    goto LABEL_16;
  }

  if (objc_msgSend_count(v7, v13, v14))
  {
    goto LABEL_15;
  }

  if (!objc_msgSend_count(v10, v30, v31))
  {
    v15 = 0;
    goto LABEL_41;
  }

LABEL_30:
  v15 = objc_opt_new();
LABEL_31:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v10;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v54, v66, 16);
  if (v44)
  {
    v47 = v44;
    v48 = *v55;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(v42);
        }

        v51 = objc_msgSend_zoneID(*(*(&v54 + 1) + 8 * k), v45, v46, v54);
        if (v51)
        {
          objc_msgSend_addObject_(v15, v50, v51);
        }
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v54, v66, 16);
    }

    while (v47);
  }

LABEL_41:
  v52 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 3)
  {
    v9 = objc_msgSend_recordsToSaveByID(self, v5, v6);
    if (objc_msgSend_count(v9, v10, v11))
    {
      v14 = objc_msgSend_numSaveAttempts(self, v12, v13);
      v17 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16);
      v20 = objc_msgSend_PCSRetryCount(v17, v18, v19);

      if (v14 < v20)
      {
LABEL_8:
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend__fetchRecords(self, v21, v22);
        return 1;
      }
    }

    else
    {
    }

    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v25 = objc_msgSend_error(self, v23, v24);
    objc_msgSend_finishWithError_(self, v26, v25);

    return 1;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      return 1;
    }

    goto LABEL_8;
  }

  objc_msgSend_setState_(self, v5, 3);
  objc_msgSend__saveRecords(self, v7, v8);
  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Fetching Records";
  }

  else if (a3 == 3)
  {
    v5 = @"Saving Records";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDModifyWebSharingOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_handleRecordSaved:(id)a3 error:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_recordIDsToShare(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, v6);

  v13 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = MEMORY[0x277CBC830];
  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v51 = @"un";
    v52 = &stru_28385ED00;
    if (v12)
    {
      v51 = &stru_28385ED00;
    }

    *buf = 138544130;
    v53 = @" with error ";
    v68 = v51;
    v69 = 2112;
    v70 = v6;
    if (!v7)
    {
      v53 = &stru_28385ED00;
    }

    v71 = 2114;
    v72 = v53;
    if (v7)
    {
      v52 = v7;
    }

    v73 = 2112;
    v74 = v52;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Record for %{public}@share (%@) was saved%{public}@%@", buf, 0x2Au);
  }

  if (objc_msgSend_code(v7, v16, v17) == 2037 && (v20 = objc_msgSend_numSaveAttempts(self, v18, v19), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_PCSRetryCount(v23, v24, v25), v23, v20 <= v26))
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v54 = @"un";
      if (v12)
      {
        v54 = &stru_28385ED00;
      }

      *buf = 138543618;
      v68 = v54;
      v69 = 2112;
      v70 = v6;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Oplock failure while trying to %{public}@share record %@. Retrying.", buf, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v27 = objc_msgSend_recordsToSaveByID(self, v18, v19);
      v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, v6);

      v32 = objc_msgSend_encryptedValues(v29, v30, v31);
      v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277CBC150]);

      v36 = objc_msgSend_objectForKeyedSubscript_(v29, v35, *MEMORY[0x277CBC138]);
      v39 = objc_msgSend_recordWebSharedBlock(self, v37, v38);

      if (v39)
      {
        v42 = objc_msgSend_callbackQueue(self, v40, v41);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22521D520;
        block[3] = &unk_278548978;
        block[4] = self;
        v63 = v6;
        v64 = v34;
        v65 = v36;
        v66 = v7;
        dispatch_async(v42, block);
      }
    }

    else
    {
      v45 = objc_msgSend_recordWebUnsharedBlock(self, v18, v19);

      if (v45)
      {
        v46 = objc_msgSend_callbackQueue(self, v43, v44);
        v55 = MEMORY[0x277D85DD0];
        v56 = 3221225472;
        v57 = sub_22521D5A8;
        v58 = &unk_278546990;
        v59 = self;
        v60 = v6;
        v61 = v7;
        dispatch_async(v46, &v55);
      }
    }

    v47 = objc_msgSend_recordsToSaveByID(self, v43, v44, v55, v56, v57, v58, v59);
    objc_msgSend_removeObjectForKey_(v47, v48, v6);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_saveRecords
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numSaveAttempts(self, a2, v2);
  objc_msgSend_setNumSaveAttempts_(self, v5, (v4 + 1));
  v8 = objc_msgSend_recordsToSaveByID(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  v12 = *MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC880];
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = v14;
      v31 = objc_msgSend_recordsToSaveByID(self, v29, v30);
      v34 = objc_msgSend_count(v31, v32, v33);
      v37 = objc_msgSend_recordsToSaveByID(self, v35, v36);
      v40 = objc_msgSend_allKeys(v37, v38, v39);
      *buf = 134218242;
      v43 = v34;
      v44 = 2112;
      v45 = v40;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Saving %ld records: %@", buf, 0x16u);
    }

    v15 = objc_opt_new();
    v18 = objc_msgSend_recordsToSaveByID(self, v16, v17);
    v21 = objc_msgSend_allValues(v18, v19, v20);
    objc_msgSend_setRecordsToSave_(v15, v22, v21);

    objc_msgSend_setSavePolicy_(v15, v23, 1);
    v24 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22521D8B4;
    v41[3] = &unk_278548B60;
    v41[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v25, v24, v15, v41);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "We don't have any records to save, so bailing now.", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (_PCSIdentityData)_copyShareProtectionFromRecord:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = v6;
  if (!a4)
  {
    if (!v6)
    {
      v10 = 0;
      goto LABEL_25;
    }

LABEL_5:
    v11 = objc_msgSend_encryptedValues(v6, v7, v8);
    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x277CBC150]);

    if (v13)
    {
      v16 = objc_msgSend_container(self, v14, v15);
      v19 = objc_msgSend_pcsManager(v16, v17, v18);
      v45 = 0;
      v10 = objc_msgSend_createSharingIdentityFromData_error_(v19, v20, v13, &v45);
      v21 = v45;

      if (v21 || !v10)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v35 = v32;
          v38 = objc_msgSend_recordID(v9, v36, v37);
          *buf = 138412802;
          v47 = v38;
          v48 = 2112;
          v49 = v21;
          v50 = 2112;
          v51 = v13;
          _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize share protection data on record %@: %@.\nData was %@", buf, 0x20u);
        }

        if (a4)
        {
          v39 = MEMORY[0x277CBC560];
          v40 = *MEMORY[0x277CBC120];
          v41 = objc_msgSend_recordID(v9, v33, v34);
          *a4 = objc_msgSend_errorWithDomain_code_error_format_(v39, v42, v40, 5001, v21, @"Couldn't deserialize share protection data on record %@", v41);
        }

        if (v10)
        {
          CFRelease(v10);
          v10 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v25 = v22;
        v28 = objc_msgSend_recordID(v9, v26, v27);
        *buf = 138412290;
        v47 = v28;
        _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Warn: Record %@ didn't have any share protection data on it", buf, 0xCu);
      }

      if (!a4)
      {
        v10 = 0;
        goto LABEL_24;
      }

      v29 = MEMORY[0x277CBC560];
      v30 = *MEMORY[0x277CBC120];
      v21 = objc_msgSend_recordID(v9, v23, v24);
      objc_msgSend_errorWithDomain_code_format_(v29, v31, v30, 5001, @"Record %@ didn't contain any share protection data", v21);
      *a4 = v10 = 0;
    }

LABEL_24:
    goto LABEL_25;
  }

  *a4 = 0;
  if (v6)
  {
    goto LABEL_5;
  }

  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch record from the server");
  *a4 = v10 = 0;
LABEL_25:

  v43 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_handleRecordFetched:(id)a3 recordID:(id)a4 error:(id)a5
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_recordIDsToShare(self, v11, v12);
  v15 = objc_msgSend_containsObject_(v13, v14, v9);

  if (v15)
  {
    v18 = v112;
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v19 = sub_22521ED70;
LABEL_5:
    v18[2] = v19;
    v18[3] = &unk_278549C18;
    v18[4] = self;
    v23 = _Block_copy(v18);
    v24 = *MEMORY[0x277CBC878];
    v25 = *MEMORY[0x277CBC880];
    if (v8 && !v10)
    {
      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v24);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v76 = @"un";
        if (v15)
        {
          v76 = &stru_28385ED00;
        }

        *buf = 138412546;
        v114 = v9;
        v115 = 2114;
        v116 = v76;
        _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetched record with ID %@ from the server. Unwrapping sharing identity and %{public}@sharing the record", buf, 0x16u);
      }

      v110 = 0;
      v28 = objc_msgSend__copyShareProtectionFromRecord_error_(self, v27, v8, &v110);
      v31 = v110;
      if (!v31 && v28)
      {
        v34 = objc_msgSend_recordPCS(v8, v29, v30);
        if (v34)
        {
          v107 = objc_msgSend_container(self, v32, v33);
          v37 = objc_msgSend_pcsManager(v107, v35, v36);
          v39 = v37;
          if (v15)
          {
            objc_msgSend_addSharingIdentity_toSharePCS_permission_(v37, v38, v28, v34, 0);
          }

          else
          {
            objc_msgSend_removeSharingIdentity_fromSharePCS_(v37, v38, v28, v34);
          }
          v31 = ;

          CFRelease(v28);
          if (v31)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v49 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v50 = @"un";
              *buf = 138543874;
              if (v15)
              {
                v50 = &stru_28385ED00;
              }

              v114 = v50;
              v115 = 2112;
              v116 = v9;
              v117 = 2112;
              v118 = v31;
              _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Warn: Error %{public}@sharing record %@: %@", buf, 0x20u);
            }

            v23[2](v23, v9, v31);
          }

          else
          {
            v51 = objc_msgSend_pcsManager(v107, v47, v48);
            v54 = objc_msgSend_pcsKeysToRemove(v8, v52, v53);
            v57 = objc_msgSend_protectionEtag(v8, v55, v56);
            v59 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v51, v58, v54, v34, v57, self);

            if (v59)
            {
              v109[0] = MEMORY[0x277D85DD0];
              v109[1] = 3221225472;
              v109[2] = sub_22521F060;
              v109[3] = &unk_2785498A0;
              v109[4] = v59;
              objc_msgSend_updateCloudKitMetrics_(self, v60, v109);
            }

            v62 = objc_msgSend_protectionData(v8, v60, v61);
            v64 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v63, v62);
            objc_msgSend_setPreviousProtectionEtag_(v8, v65, v64);

            v68 = objc_msgSend_pcsManager(v107, v66, v67);
            v108 = 0;
            v70 = objc_msgSend_dataFromRecordPCS_error_(v68, v69, v34, &v108);
            v31 = v108;
            objc_msgSend_setProtectionData_(v8, v71, v70);

            if (v31 || (objc_msgSend_protectionData(v8, v72, v73), v77 = objc_claimAutoreleasedReturnValue(), v78 = v77 == 0, v77, v78))
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v74 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                v75 = @"un";
                *buf = 138543874;
                if (v15)
                {
                  v75 = &stru_28385ED00;
                }

                v114 = v75;
                v115 = 2112;
                v116 = v9;
                v117 = 2112;
                v118 = v31;
                _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "Warn: Error serializing record PCS data for %{public}@share of record %@: %@", buf, 0x20u);
              }

              v23[2](v23, v9, v31);
            }

            else
            {
              v80 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v79, v15);
              objc_msgSend_setObject_forKeyedSubscript_(v8, v81, v80, *MEMORY[0x277CBC148]);

              v84 = objc_msgSend_recordIDsToShareReadWrite(self, v82, v83);
              v86 = objc_msgSend_containsObject_(v84, v85, v9);

              v88 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v87, v86 ^ 1u);
              objc_msgSend_setObject_forKeyedSubscript_(v8, v89, v88, *MEMORY[0x277CBC140]);

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v90 = MEMORY[0x277CBC830];
              v91 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v101 = v15 ? &stru_28385ED00 : @"un";
                v102 = v91;
                v105 = objc_msgSend_protectionData(v8, v103, v104);
                *buf = 138412802;
                v114 = v9;
                v115 = 2114;
                v116 = v101;
                v117 = 2112;
                v118 = v105;
                _os_log_debug_impl(&dword_22506F000, v102, OS_LOG_TYPE_DEBUG, "New protection data for record %@ after %{public}@sharing is %@", buf, 0x20u);

                v90 = MEMORY[0x277CBC830];
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }
              }

              v92 = *v90;
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
              {
                v106 = @"removed";
                if (v15)
                {
                  v106 = @"added";
                }

                *buf = 138543618;
                v114 = v106;
                v115 = 2112;
                v116 = v9;
                _os_log_debug_impl(&dword_22506F000, v92, OS_LOG_TYPE_DEBUG, "Successfully %{public}@ sharing info to record %@. Preparing to save the record back to the server", buf, 0x16u);
              }

              v95 = objc_msgSend_recordsToSaveByID(self, v93, v94);
              objc_sync_enter(v95);
              v98 = objc_msgSend_recordsToSaveByID(self, v96, v97);
              objc_msgSend_setObject_forKeyedSubscript_(v98, v99, v8, v9);

              objc_sync_exit(v95);
              v31 = 0;
            }
          }
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v45 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v114 = v9;
            _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Fetched record %@ had no PCS data", buf, 0xCu);
          }

          v31 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v46, *MEMORY[0x277CBC120], 5001, @"Fetched record %@ had no PCS data", v9);
          v23[2](v23, v9, v31);
          CFRelease(v28);
        }

LABEL_68:

        v10 = v23;
        goto LABEL_69;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v114 = v9;
        v115 = 2112;
        v116 = v31;
        _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Error getting share identity from record %@: %@", buf, 0x16u);
        if (v31)
        {
LABEL_30:
          v23[2](v23, v9, v31);
          if (v28)
          {
            CFRelease(v28);
          }

          goto LABEL_68;
        }
      }

      else if (v31)
      {
        goto LABEL_30;
      }

      v31 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 2003, @"Couldn't get a web sharing identity from record %@", v9);
      goto LABEL_30;
    }

    if (v25 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v114 = v9;
      v115 = 2112;
      v116 = v10;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Couldn't fetch record %@ from the server: %@", buf, 0x16u);
      if (v10)
      {
        goto LABEL_20;
      }
    }

    else if (v10)
    {
LABEL_20:
      v23[2](v23, v9, v10);

      goto LABEL_69;
    }

    v10 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 2003, @"Couldn't find record %@ on the server", v9);
    goto LABEL_20;
  }

  v20 = objc_msgSend_recordIDsToUnshare(self, v16, v17);
  v22 = objc_msgSend_containsObject_(v20, v21, v9);

  if (v22)
  {
    v18 = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    v19 = sub_22521EEEC;
    goto LABEL_5;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v42 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v114 = v9;
    _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Received a record ID that we don't know anything about: %@", buf, 0xCu);
  }

LABEL_69:

  v100 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecords
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_recordIDsToShare(self, v5, v6);
  objc_msgSend_addObjectsFromArray_(v4, v8, v7);

  v11 = objc_msgSend_recordIDsToUnshare(self, v9, v10);
  objc_msgSend_addObjectsFromArray_(v4, v12, v11);

  objc_msgSend_setRecordIDs_(v3, v13, v4);
  v14 = *MEMORY[0x277CBC138];
  v24[0] = *MEMORY[0x277CBC150];
  v24[1] = v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v24, 2);
  objc_msgSend_setDesiredKeys_(v3, v17, v16);

  v18 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22521F24C;
  v22[3] = &unk_278548C48;
  v22[4] = self;
  v23 = v4;
  v19 = v4;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v20, v18, v3, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v38 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v17 = v3;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v21 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v20, 1, 0, 0);
    v24 = objc_msgSend_CKPropertiesStyleString(v21, v22, v23);
    v26 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v25, 0, 1, 0);
    v29 = objc_msgSend_CKPropertiesStyleString(v26, v27, v28);
    v30 = 138544130;
    v31 = v19;
    v32 = 2048;
    v33 = self;
    v34 = 2114;
    v35 = v24;
    v36 = 2112;
    v37 = v29;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Starting web share operation <%{public}@: %p; %{public}@, %@>", &v30, 0x2Au);
  }

  v6 = objc_msgSend_recordIDsToShare(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_recordIDsToUnshare(self, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) == 0;
  }

  objc_msgSend_makeStateTransition_(self, v15, v11);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = objc_msgSend_recordIDsToShare(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v59, v65, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v60;
    do
    {
      v15 = 0;
      do
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_zoneID(*(*(&v59 + 1) + 8 * v15), v11, v12);
        objc_msgSend_addObject_(v5, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v59, v65, 16);
    }

    while (v13);
  }

  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v20 = objc_msgSend_recordIDsToUnshare(self, v18, v19);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v55, v64, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v56;
    do
    {
      v27 = 0;
      do
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = objc_msgSend_zoneID(*(*(&v55 + 1) + 8 * v27), v23, v24);
        objc_msgSend_addObject_(v5, v29, v28);

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v55, v64, 16);
    }

    while (v25);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = objc_msgSend_recordIDsToShareReadWrite(self, v30, v31);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v51, v63, 16);
  if (v34)
  {
    v37 = v34;
    v38 = *v52;
    do
    {
      v39 = 0;
      do
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(v32);
        }

        v40 = objc_msgSend_zoneID(*(*(&v51 + 1) + 8 * v39), v35, v36);
        objc_msgSend_addObject_(v5, v41, v40);

        ++v39;
      }

      while (v37 != v39);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v51, v63, 16);
    }

    while (v37);
  }

  if (objc_msgSend_count(v5, v42, v43))
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22521FC84;
    v49[3] = &unk_2785487F8;
    v50 = v5;
    objc_msgSend_updateCloudKitMetrics_(self, v45, v49);
  }

  objc_msgSend_setRecordWebSharedBlock_(self, v44, 0);
  objc_msgSend_setRecordWebUnsharedBlock_(self, v46, 0);
  v48.receiver = self;
  v48.super_class = CKDModifyWebSharingOperation;
  [(CKDOperation *)&v48 _finishOnCallbackQueueWithError:v4];

  v47 = *MEMORY[0x277D85DE8];
}

@end
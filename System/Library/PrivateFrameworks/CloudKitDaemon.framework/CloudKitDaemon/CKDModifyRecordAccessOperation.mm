@interface CKDModifyRecordAccessOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDModifyRecordAccessOperation)initWithOperationInfo:(id)info container:(id)container;
- (_PCSIdentityData)_copyShareProtectionFromRecord:(id)record error:(id *)error;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_fetchRecords;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleRecordFetched:(id)fetched recordID:(id)d error:(id)error;
- (void)_handleRecordSaved:(id)saved error:(id)error;
- (void)_saveRecords;
- (void)main;
@end

@implementation CKDModifyRecordAccessOperation

- (CKDModifyRecordAccessOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = CKDModifyRecordAccessOperation;
  v9 = [(CKDDatabaseOperation *)&v21 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordIDsToGrant(infoCopy, v7, v8);
    recordIDsToGrant = v9->_recordIDsToGrant;
    v9->_recordIDsToGrant = v10;

    v14 = objc_msgSend_recordIDsToRevoke(infoCopy, v12, v13);
    recordIDsToRevoke = v9->_recordIDsToRevoke;
    v9->_recordIDsToRevoke = v14;

    v16 = objc_opt_new();
    recordsToSaveByID = v9->_recordsToSaveByID;
    v9->_recordsToSaveByID = v16;

    v18 = objc_opt_new();
    fetchedRecordIDs = v9->_fetchedRecordIDs;
    v9->_fetchedRecordIDs = v18;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-record-access", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)relevantZoneIDs
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordIDsToGrant(self, a2, v2);
  v7 = objc_msgSend_recordIDsToRevoke(self, v5, v6);
  if (!objc_msgSend_count(v4, v8, v9))
  {
    if (!objc_msgSend_count(v7, v10, v11))
    {
      v12 = 0;
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v12 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v4;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v46, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v22 = objc_msgSend_zoneID(*(*(&v41 + 1) + 8 * i), v16, v17);
        if (v22)
        {
          objc_msgSend_addObject_(v12, v21, v22);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v41, v46, 16);
    }

    while (v18);
  }

  if (objc_msgSend_count(v7, v23, v24))
  {
    if (v12)
    {
LABEL_16:
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = v7;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v37, v45, 16);
      if (v27)
      {
        v30 = v27;
        v31 = *v38;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v25);
            }

            v34 = objc_msgSend_zoneID(*(*(&v37 + 1) + 8 * j), v28, v29, v37);
            if (v34)
            {
              objc_msgSend_addObject_(v12, v33, v34);
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v37, v45, 16);
        }

        while (v30);
      }

      goto LABEL_26;
    }

LABEL_15:
    v12 = objc_opt_new();
    goto LABEL_16;
  }

LABEL_26:

  v35 = *MEMORY[0x277D85DE8];

  return v12;
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

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetching Records";
  }

  else if (state == 3)
  {
    v5 = @"Saving Records";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDModifyRecordAccessOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_handleRecordSaved:(id)saved error:(id)error
{
  v75 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  errorCopy = error;
  v10 = objc_msgSend_recordIDsToGrant(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, savedCopy);

  v13 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = MEMORY[0x277CBC830];
  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v51 = @"revocation";
    if (v12)
    {
      v51 = @"grant";
    }

    v52 = @" with error ";
    *buf = 138544130;
    v68 = v51;
    v69 = 2112;
    v70 = savedCopy;
    if (!errorCopy)
    {
      v52 = &stru_28385ED00;
    }

    v71 = 2114;
    v72 = v52;
    if (errorCopy)
    {
      v53 = errorCopy;
    }

    else
    {
      v53 = &stru_28385ED00;
    }

    v73 = 2112;
    v74 = v53;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Record for access %{public}@ (%@) was saved%{public}@%@", buf, 0x2Au);
  }

  if (objc_msgSend_code(errorCopy, v16, v17) == 2037 && (v20 = objc_msgSend_numSaveAttempts(self, v18, v19), objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_PCSRetryCount(v23, v24, v25), v23, v20 <= v26))
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v54 = @"revoke";
      if (v12)
      {
        v54 = @"grant";
      }

      *buf = 138543618;
      v68 = v54;
      v69 = 2112;
      v70 = savedCopy;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Oplock failure while trying to %{public}@ access on record %@. Retrying.", buf, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v27 = objc_msgSend_recordsToSaveByID(self, v18, v19);
      v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, savedCopy);

      v32 = objc_msgSend_encryptedValues(v29, v30, v31);
      v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277CBBFD0]);

      v36 = objc_msgSend_objectForKeyedSubscript_(v29, v35, *MEMORY[0x277CBC138]);
      v39 = objc_msgSend_accessWasGrantedBlock(self, v37, v38);

      if (v39)
      {
        v42 = objc_msgSend_callbackQueue(self, v40, v41);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251E9AB4;
        block[3] = &unk_278548978;
        block[4] = self;
        v63 = savedCopy;
        v64 = v34;
        v65 = v36;
        v66 = errorCopy;
        dispatch_async(v42, block);
      }
    }

    else
    {
      v45 = objc_msgSend_accessWasRevokedBlock(self, v18, v19);

      if (v45)
      {
        v46 = objc_msgSend_callbackQueue(self, v43, v44);
        v55 = MEMORY[0x277D85DD0];
        v56 = 3221225472;
        v57 = sub_2251E9B3C;
        v58 = &unk_278546990;
        selfCopy = self;
        v60 = savedCopy;
        v61 = errorCopy;
        dispatch_async(v46, &v55);
      }
    }

    v47 = objc_msgSend_recordsToSaveByID(self, v43, v44, v55, v56, v57, v58, selfCopy);
    objc_msgSend_removeObjectForKey_(v47, v48, savedCopy);
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
    v41[2] = sub_2251E9E48;
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

- (_PCSIdentityData)_copyShareProtectionFromRecord:(id)record error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v9 = recordCopy;
  if (!error)
  {
    if (!recordCopy)
    {
      v10 = 0;
      goto LABEL_24;
    }

LABEL_5:
    v11 = objc_msgSend_encryptedValues(recordCopy, v7, v8);
    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x277CBBFD0]);

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

        v28 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v31 = v28;
          v34 = objc_msgSend_recordID(v9, v32, v33);
          *buf = 138412802;
          v47 = v34;
          v48 = 2112;
          v49 = v21;
          v50 = 2112;
          v51 = v13;
          _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize access token protection data on record %@: %@.\nData was %@", buf, 0x20u);
        }

        if (error)
        {
          v35 = MEMORY[0x277CBC560];
          v36 = *MEMORY[0x277CBC120];
          v37 = objc_msgSend_recordID(v9, v29, v30);
          *error = objc_msgSend_errorWithDomain_code_error_format_(v35, v38, v36, 5001, v21, @"Couldn't deserialize access token protection data on record %@", v37);
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

      goto LABEL_22;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v41 = v22;
      v44 = objc_msgSend_recordID(v9, v42, v43);
      *buf = 138412290;
      v47 = v44;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Record %@ didn't have any access token protection data on it", buf, 0xCu);

      if (error)
      {
        goto LABEL_13;
      }
    }

    else if (error)
    {
LABEL_13:
      v25 = MEMORY[0x277CBC560];
      v26 = *MEMORY[0x277CBC120];
      v21 = objc_msgSend_recordID(v9, v23, v24);
      objc_msgSend_errorWithDomain_code_format_(v25, v27, v26, 5001, @"Record %@ didn't contain any access token protection data", v21);
      *error = v10 = 0;
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    v10 = 0;
    goto LABEL_23;
  }

  *error = 0;
  if (recordCopy)
  {
    goto LABEL_5;
  }

  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch record from the server");
  *error = v10 = 0;
LABEL_24:

  v39 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_handleRecordFetched:(id)fetched recordID:(id)d error:(id)error
{
  v134 = *MEMORY[0x277D85DE8];
  fetchedCopy = fetched;
  dCopy = d;
  errorCopy = error;
  v120 = objc_msgSend_container(self, v11, v12);
  if (fetchedCopy)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(fetchedCopy, v13, *MEMORY[0x277CBC138]);
    objc_msgSend_setBaseToken_(fetchedCopy, v16, v15);
  }

  v17 = objc_msgSend_recordIDsToGrant(self, v13, v14);
  v19 = objc_msgSend_containsObject_(v17, v18, dCopy);

  if (v19)
  {
    v22 = v127;
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v23 = sub_2251EB4A8;
    goto LABEL_7;
  }

  v24 = objc_msgSend_recordIDsToRevoke(self, v20, v21);
  v26 = objc_msgSend_containsObject_(v24, v25, dCopy);

  if (v26)
  {
    v22 = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    v23 = sub_2251EB624;
LABEL_7:
    v22[2] = v23;
    v22[3] = &unk_278549C18;
    v22[4] = self;
    v27 = _Block_copy(v22);
    v28 = *MEMORY[0x277CBC878];
    v29 = *MEMORY[0x277CBC880];
    if (((errorCopy == 0) & ~(fetchedCopy == 0)) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v129 = dCopy;
        v130 = 2112;
        v131 = errorCopy;
        _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Couldn't fetch record %@ from the server: %@", buf, 0x16u);
        if (errorCopy)
        {
          goto LABEL_13;
        }
      }

      else if (errorCopy)
      {
LABEL_13:
        v27[2](v27, dCopy, errorCopy);

        goto LABEL_85;
      }

      errorCopy = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 2003, @"Couldn't find record %@ on the server", dCopy);
      goto LABEL_13;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v28);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v98 = @"revoking";
      if (v19)
      {
        v98 = @"granting";
      }

      *buf = 138412546;
      v129 = dCopy;
      v130 = 2114;
      v131 = v98;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Fetched record with ID %@ from the server. Unwrapping access token and %{public}@ access to the record", buf, 0x16u);
    }

    v125 = 0;
    RandomSharingIdentityWithError = objc_msgSend__copyShareProtectionFromRecord_error_(self, v33, fetchedCopy, &v125);
    v35 = v125;
    v38 = v35;
    if (v35 || !RandomSharingIdentityWithError)
    {
      if (!v19)
      {
        if (!v35)
        {
          v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 2003, @"Record %@ didn't have an access token so it can't be revoked", dCopy);
        }

        v27[2](v27, dCopy, v38);
        if (RandomSharingIdentityWithError)
        {
          CFRelease(RandomSharingIdentityWithError);
        }

        goto LABEL_84;
      }

      if (RandomSharingIdentityWithError)
      {
        CFRelease(RandomSharingIdentityWithError);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v50 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v129 = dCopy;
        v130 = 2112;
        v131 = v38;
        _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Record %@ had no access token on it. Creating a new one. (%@)", buf, 0x16u);
      }

      v53 = objc_msgSend_pcsManager(v120, v51, v52);
      v124 = 0;
      RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v53, v54, &v124);
      v38 = v124;

      if (v38 || !RandomSharingIdentityWithError)
      {
        if (!v38)
        {
          v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 2003, @"Couldn't create an access token identity for record %@", dCopy);
        }

        v27[2](v27, dCopy, v38);
        if (RandomSharingIdentityWithError)
        {
          CFRelease(RandomSharingIdentityWithError);
        }

        goto LABEL_84;
      }
    }

    else if (!v19)
    {
      v39 = objc_msgSend_encryptedValues(fetchedCopy, v36, v37);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v40, 0, *MEMORY[0x277CBBFD0]);

      v45 = objc_msgSend_recordPCS(fetchedCopy, v41, v42);
      if (v45)
      {
        v46 = objc_msgSend_pcsManager(v120, v43, v44);
        v48 = objc_msgSend_removeSharingIdentity_fromSharePCS_(v46, v47, RandomSharingIdentityWithError, v45);
        goto LABEL_39;
      }

      goto LABEL_54;
    }

    v55 = objc_msgSend_pcsManager(v120, v36, v37);
    v123 = 0;
    v57 = objc_msgSend_dataFromSharingIdentity_error_(v55, v56, RandomSharingIdentityWithError, &v123);
    v38 = v123;

    if (v38 || !v57)
    {
      if (!v38)
      {
        v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v58, *MEMORY[0x277CBC120], 2003, @"Couldn't create access token data for record %@", dCopy);
      }

      v27[2](v27, dCopy, v38);
      CFRelease(RandomSharingIdentityWithError);

      goto LABEL_84;
    }

    v60 = objc_msgSend_encryptedValues(fetchedCopy, v58, v59);
    objc_msgSend_setObject_forKeyedSubscript_(v60, v61, v57, *MEMORY[0x277CBBFD0]);

    v45 = objc_msgSend_recordPCS(fetchedCopy, v62, v63);
    if (v45)
    {
      v46 = objc_msgSend_pcsManager(v120, v64, v65);
      v48 = objc_msgSend_addSharingIdentity_toSharePCS_permission_(v46, v66, RandomSharingIdentityWithError, v45, 0);
LABEL_39:
      v38 = v48;

      CFRelease(RandomSharingIdentityWithError);
      if (v38)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v69 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v70 = @"revoking";
          *buf = 138543874;
          if (v19)
          {
            v70 = @"granting";
          }

          v129 = v70;
          v130 = 2112;
          v131 = dCopy;
          v132 = 2112;
          v133 = v38;
          _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Warn: Error %{public}@ access to record %@: %@", buf, 0x20u);
        }

        v27[2](v27, dCopy, v38);
      }

      else
      {
        v73 = objc_msgSend_pcsManager(v120, v67, v68);
        v76 = objc_msgSend_pcsKeysToRemove(fetchedCopy, v74, v75);
        v79 = objc_msgSend_protectionEtag(fetchedCopy, v77, v78);
        v81 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v73, v80, v76, v45, v79, self);

        if (v81)
        {
          v122[0] = MEMORY[0x277D85DD0];
          v122[1] = 3221225472;
          v122[2] = sub_2251EB798;
          v122[3] = &unk_2785498A0;
          v122[4] = v81;
          objc_msgSend_updateCloudKitMetrics_(self, v82, v122);
        }

        v84 = objc_msgSend_protectionData(fetchedCopy, v82, v83);
        v86 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v85, v84);
        objc_msgSend_setPreviousProtectionEtag_(fetchedCopy, v87, v86);

        v90 = objc_msgSend_pcsManager(v120, v88, v89);
        v121 = 0;
        v92 = objc_msgSend_dataFromRecordPCS_error_(v90, v91, v45, &v121);
        v38 = v121;
        objc_msgSend_setProtectionData_(fetchedCopy, v93, v92);

        if (v38 || (objc_msgSend_protectionData(fetchedCopy, v94, v95), v99 = objc_claimAutoreleasedReturnValue(), v100 = v99 == 0, v99, v100))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v96 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v97 = @"revocation";
            *buf = 138543874;
            if (v19)
            {
              v97 = @"grant";
            }

            v129 = v97;
            v130 = 2112;
            v131 = dCopy;
            v132 = 2112;
            v133 = v38;
            _os_log_impl(&dword_22506F000, v96, OS_LOG_TYPE_INFO, "Warn: Error serializing record PCS data for access %{public}@ of record %@: %@", buf, 0x20u);
          }

          v27[2](v27, dCopy, v38);
        }

        else
        {
          v102 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v101, v19);
          objc_msgSend_setObject_forKeyedSubscript_(fetchedCopy, v103, v102, *MEMORY[0x277CBBFC8]);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v104 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v114 = v19 ? @"granting" : @"revoking";
            v115 = v104;
            v118 = objc_msgSend_protectionData(fetchedCopy, v116, v117);
            *buf = 138412802;
            v129 = dCopy;
            v130 = 2114;
            v131 = v114;
            v132 = 2112;
            v133 = v118;
            _os_log_debug_impl(&dword_22506F000, v115, OS_LOG_TYPE_DEBUG, "New protection data for record %@ after %{public}@ access is %@", buf, 0x20u);

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }
          }

          v105 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v119 = @"removed";
            if (v19)
            {
              v119 = @"added";
            }

            *buf = 138543618;
            v129 = v119;
            v130 = 2112;
            v131 = dCopy;
            _os_log_debug_impl(&dword_22506F000, v105, OS_LOG_TYPE_DEBUG, "Successfully %{public}@ sharing info to record %@. Preparing to save the record back to the server", buf, 0x16u);
          }

          v108 = objc_msgSend_recordsToSaveByID(self, v106, v107);
          objc_sync_enter(v108);
          v111 = objc_msgSend_recordsToSaveByID(self, v109, v110);
          objc_msgSend_setObject_forKeyedSubscript_(v111, v112, fetchedCopy, dCopy);

          objc_sync_exit(v108);
          v38 = 0;
        }
      }

LABEL_84:

      errorCopy = v27;
      goto LABEL_85;
    }

LABEL_54:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v71 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v129 = dCopy;
      _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "Fetched record %@ had no PCS data", buf, 0xCu);
    }

    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v72, *MEMORY[0x277CBC120], 5001, @"Fetched record %@ had no PCS data", dCopy);
    v27[2](v27, dCopy, v38);
    CFRelease(RandomSharingIdentityWithError);
    goto LABEL_84;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v49 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v129 = dCopy;
    _os_log_error_impl(&dword_22506F000, v49, OS_LOG_TYPE_ERROR, "Received a record ID that we don't know anything about: %@", buf, 0xCu);
  }

LABEL_85:

  v113 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRecords
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_recordIDsToGrant(self, v5, v6);
  objc_msgSend_addObjectsFromArray_(v4, v8, v7);

  v11 = objc_msgSend_recordIDsToRevoke(self, v9, v10);
  objc_msgSend_addObjectsFromArray_(v4, v12, v11);

  objc_msgSend_setRecordIDs_(v3, v13, v4);
  v14 = *MEMORY[0x277CBC138];
  v24[0] = *MEMORY[0x277CBBFD0];
  v24[1] = v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v24, 2);
  objc_msgSend_setDesiredKeys_(v3, v17, v16);

  v18 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2251EB984;
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
    selfCopy = self;
    v34 = 2114;
    v35 = v24;
    v36 = 2112;
    v37 = v29;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Starting web access modification operation <%{public}@: %p; %{public}@, %@>", &v30, 0x2Au);
  }

  v6 = objc_msgSend_recordIDsToGrant(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_recordIDsToRevoke(self, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) == 0;
  }

  objc_msgSend_makeStateTransition_(self, v15, v11);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = objc_msgSend_recordIDsToGrant(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v43, v48, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v44;
    do
    {
      v15 = 0;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_zoneID(*(*(&v43 + 1) + 8 * v15), v11, v12);
        objc_msgSend_addObject_(v5, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v43, v48, 16);
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = objc_msgSend_recordIDsToRevoke(self, v18, v19);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v39, v47, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = objc_msgSend_zoneID(*(*(&v39 + 1) + 8 * v27), v23, v24);
        objc_msgSend_addObject_(v5, v29, v28);

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v39, v47, 16);
    }

    while (v25);
  }

  if (objc_msgSend_count(v5, v30, v31))
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2251EC314;
    v37[3] = &unk_2785487F8;
    v38 = v5;
    objc_msgSend_updateCloudKitMetrics_(self, v33, v37);
  }

  objc_msgSend_setAccessWasGrantedBlock_(self, v32, 0);
  objc_msgSend_setAccessWasRevokedBlock_(self, v34, 0);
  v36.receiver = self;
  v36.super_class = CKDModifyRecordAccessOperation;
  [(CKDOperation *)&v36 _finishOnCallbackQueueWithError:errorCopy];

  v35 = *MEMORY[0x277D85DE8];
}

@end
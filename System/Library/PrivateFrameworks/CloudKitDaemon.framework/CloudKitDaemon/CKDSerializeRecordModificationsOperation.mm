@interface CKDSerializeRecordModificationsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDSerializeRecordModificationsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_preflightRecords;
- (void)_serialize;
- (void)_setupTranslator;
@end

@implementation CKDSerializeRecordModificationsOperation

- (CKDSerializeRecordModificationsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = CKDSerializeRecordModificationsOperation;
  v9 = [(CKDDatabaseOperation *)&v17 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordsToSave(infoCopy, v7, v8);
    recordsToSave = v9->_recordsToSave;
    v9->_recordsToSave = v10;

    v14 = objc_msgSend_recordIDsToDelete(infoCopy, v12, v13);
    recordIDsToDelete = v9->_recordIDsToDelete;
    v9->_recordIDsToDelete = v14;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/serialize-record-modifications", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend__serialize(self, v14, v15);
    }

    else if (v4 == 4)
    {
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v10 = objc_msgSend_error(self, v8, v9);
      objc_msgSend_finishWithError_(self, v11, v10);
    }
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend__preflightRecords(self, v12, v13);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend__setupTranslator(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDSerializeRecordModificationsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_2785495E8[state - 2];
  }

  return v5;
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v24.receiver = self;
  v24.super_class = CKDSerializeRecordModificationsOperation;
  if (![(CKDOperation *)&v24 validateAgainstLiveContainer:containerCopy error:error])
  {
    goto LABEL_9;
  }

  v9 = objc_msgSend_entitlements(containerCopy, v7, v8);
  hasAllowRealTimeOperationsEntitlement = objc_msgSend_hasAllowRealTimeOperationsEntitlement(v9, v10, v11);

  if ((hasAllowRealTimeOperationsEntitlement & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = v13;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543362;
      v26 = v23;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Operation %{public}@ is not allowed to run without an entitlement", buf, 0xCu);

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBBF50];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *error = objc_msgSend_errorWithDomain_code_format_(v14, v18, v15, 8, @"Operation %@ is not allowed to run without an entitlement", v17);

LABEL_9:
    LOBYTE(error) = 0;
    goto LABEL_10;
  }

  LOBYTE(error) = 1;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_serializeCompletionBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_serializeCompletionBlock(self, v8, v9);
    v13 = v10;
    if (errorCopy)
    {
      (*(v10 + 16))(v10, 0, errorCopy);
    }

    else
    {
      v14 = objc_msgSend_serializedModifications(self, v11, v12);
      (v13)[2](v13, v14, 0);
    }

    objc_msgSend_setSerializeCompletionBlock_(self, v15, 0);
  }

  v16.receiver = self;
  v16.super_class = CKDSerializeRecordModificationsOperation;
  [(CKDOperation *)&v16 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)_preflightRecords
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    v10 = objc_msgSend_recordsToSave(self, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v39, v44, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v40;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = objc_msgSend_valueStore(*(*(&v39 + 1) + 8 * v17), v13, v14);
          v43[0] = objc_opt_class();
          v43[1] = objc_opt_class();
          v43[2] = objc_opt_class();
          v43[3] = objc_opt_class();
          v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v43, 4);
          v22 = objc_msgSend_containsValueOfClasses_passingTest_(v18, v21, v20, &unk_28385D580);

          if (v22)
          {
            v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 12, @"CKDSerializeRecordModificationsOperation does not support records with asset values");
            objc_msgSend_setError_(selfCopy, v35, v34);

            v26 = v10;
            goto LABEL_12;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v39, v44, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v25 = objc_msgSend_stateTransitionGroup(selfCopy, v23, v24);
    dispatch_group_enter(v25);

    v26 = objc_opt_new();
    v29 = objc_msgSend_recordsToSave(selfCopy, v27, v28);
    objc_msgSend_setRecordsToSave_(v26, v30, v29);

    objc_msgSend_setShouldModifyRecordsInDatabase_(v26, v31, 0);
    v32 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2251D4A18;
    v38[3] = &unk_278548B60;
    v38[4] = selfCopy;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(selfCopy, v33, v32, v26, v38);
LABEL_12:
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_setupTranslator
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
  dispatch_group_enter(v10);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251D4D74;
  v13[3] = &unk_278549588;
  v13[4] = self;
  v14 = v4;
  v15 = v7;
  v11 = v4;
  objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(v11, v12, self, v13);
}

- (void)_serialize
{
  v121 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v83 = v3;
    v86 = objc_msgSend_recordsToSave(self, v84, v85);
    *buf = 134217984;
    v120 = objc_msgSend_count(v86, v87, v88);
    _os_log_debug_impl(&dword_22506F000, v83, OS_LOG_TYPE_DEBUG, "Packaging SaveRecord (%lu records)", buf, 0xCu);
  }

  v105 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v104 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v10 = objc_msgSend_recordsToSave(self, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v112, v118, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v113;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v113 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v112 + 1) + 8 * v15);
        v17 = objc_alloc_init(CKDPRealTimeMessageSaveRecord);
        v20 = objc_msgSend_translator(self, v18, v19);
        v22 = objc_msgSend_pRecordFromRecord_forCache_(v20, v21, v16, 1);

        if (!v22)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v74 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v100 = v74;
            v103 = objc_msgSend_recordID(v16, v101, v102);
            *buf = 138412290;
            v120 = v103;
            _os_log_error_impl(&dword_22506F000, v100, OS_LOG_TYPE_ERROR, "Internal error transforming record %@", buf, 0xCu);
          }

          v77 = MEMORY[0x277CBC560];
          v78 = *MEMORY[0x277CBBF50];
          v22 = objc_msgSend_recordID(v16, v75, v76);
          v80 = objc_msgSend_errorWithDomain_code_format_(v77, v79, v78, 1000, @"Internal error transforming record %@", v22);
          objc_msgSend_setError_(self, v81, v80);

          goto LABEL_50;
        }

        objc_msgSend_setRecord_(v17, v23, v22);
        objc_msgSend_addObject_(v105, v24, v17);
        v117 = objc_opt_class();
        v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, &v117, 1);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = sub_2251D5774;
        v110[3] = &unk_2785495C8;
        v110[4] = self;
        v110[5] = v16;
        v27 = v104;
        v111 = v27;
        objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v16, v28, v26, v110);

        v31 = objc_msgSend_error(self, v29, v30);

        if (v31)
        {

          goto LABEL_50;
        }

        if (objc_msgSend_count(v27, v32, v33))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v34 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v36 = v34;
            v39 = objc_msgSend_count(v27, v37, v38);
            *buf = 134217984;
            v120 = v39;
            _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Found and packaged AssociatedMergeableDeltas (%lu deltas)", buf, 0xCu);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v35, &v112, v118, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v89 = v40;
    v92 = objc_msgSend_recordIDsToDelete(self, v90, v91);
    v95 = objc_msgSend_count(v92, v93, v94);
    *buf = 134217984;
    v120 = v95;
    _os_log_debug_impl(&dword_22506F000, v89, OS_LOG_TYPE_DEBUG, "Packaging DeleteRecordID (%lu recordIDs)", buf, 0xCu);
  }

  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v41, v42);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v45 = objc_msgSend_recordIDsToDelete(self, v43, v44);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v106, v116, 16);
  if (v47)
  {
    v48 = v47;
    v49 = *v107;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v107 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v106 + 1) + 8 * i);
        v52 = objc_alloc_init(CKDPRealTimeMessageDeleteRecordID);
        v55 = objc_msgSend_translator(self, v53, v54);
        v57 = objc_msgSend_pRecordIdentifierFromRecordID_(v55, v56, v51);

        objc_msgSend_setRecordIdentifier_(v52, v58, v57);
        objc_msgSend_addObject_(v10, v59, v52);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v60, &v106, v116, 16);
    }

    while (v48);
  }

  v17 = objc_alloc_init(CKDPRealTimeMessage);
  if (objc_msgSend_count(v105, v61, v62))
  {
    objc_msgSend_setSaveRecords_(v17, v63, v105);
  }

  else
  {
    objc_msgSend_setSaveRecords_(v17, v63, 0);
  }

  if (objc_msgSend_count(v10, v64, v65))
  {
    objc_msgSend_setDeleteRecordids_(v17, v66, v10);
  }

  else
  {
    objc_msgSend_setDeleteRecordids_(v17, v66, 0);
  }

  if (objc_msgSend_count(v104, v67, v68))
  {
    objc_msgSend_setAssociatedMergeableDeltas_(v17, v69, v104);
  }

  else
  {
    objc_msgSend_setAssociatedMergeableDeltas_(v17, v69, 0);
  }

  v22 = objc_msgSend_data(v17, v70, v71);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v72 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v96 = v72;
    v99 = objc_msgSend_length(v22, v97, v98);
    *buf = 134217984;
    v120 = v99;
    _os_log_debug_impl(&dword_22506F000, v96, OS_LOG_TYPE_DEBUG, "Total serialization of %lu bytes", buf, 0xCu);
  }

  objc_msgSend_setSerializedModifications_(self, v73, v22);
LABEL_50:

  v82 = *MEMORY[0x277D85DE8];
}

@end
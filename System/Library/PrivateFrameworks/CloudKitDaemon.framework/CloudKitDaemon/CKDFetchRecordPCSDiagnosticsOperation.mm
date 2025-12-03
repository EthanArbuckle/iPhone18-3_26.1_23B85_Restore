@interface CKDFetchRecordPCSDiagnosticsOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDFetchRecordPCSDiagnosticsOperation)initWithOperationInfo:(id)info container:(id)container;
- (NSArray)corruptRecords;
- (id)activityCreate;
- (void)_checkRecordPCSForAllZones;
- (void)_fetchZones;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)main;
@end

@implementation CKDFetchRecordPCSDiagnosticsOperation

- (CKDFetchRecordPCSDiagnosticsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = CKDFetchRecordPCSDiagnosticsOperation;
  v9 = [(CKDDatabaseOperation *)&v17 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordZoneIDs(infoCopy, v7, v8);
    zoneIDs = v9->_zoneIDs;
    v9->_zoneIDs = v10;

    v12 = objc_opt_new();
    fetchedZones = v9->_fetchedZones;
    v9->_fetchedZones = v12;

    v14 = objc_opt_new();
    mutableCorruptRecords = v9->_mutableCorruptRecords;
    v9->_mutableCorruptRecords = v14;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-record-pcs-diagnostics", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

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
      objc_msgSend__checkRecordPCSForAllZones(self, v8, v9);
      break;
    case 1:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__fetchZones(self, v6, v7);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetching Zones";
  }

  else if (state == 3)
  {
    v5 = @"Checking Record PCS";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchRecordPCSDiagnosticsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_checkRecordPCSForAllZones
{
  v51 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v7 = objc_msgSend_fetchedZones(self, v5, v6);
    v10 = objc_msgSend_count(v7, v8, v9);
    v13 = objc_msgSend_fetchedZones(self, v11, v12);
    *buf = 134218242;
    v48 = v10;
    v49 = 2112;
    v50 = v13;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "Checking Record PCS for %ld zones: %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  objc_msgSend_setFetchAllChanges_(v14, v15, 1);
  selfCopy = self;
  v18 = objc_msgSend_fetchedZones(self, v16, v17);
  v20 = objc_msgSend_valueForKeyPath_(v18, v19, @"zoneID");

  v21 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = v20;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v42, v46, 16);
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    v27 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v42 + 1) + 8 * i);
        v30 = objc_opt_new();
        objc_msgSend_setDesiredKeys_(v30, v31, v27);
        objc_msgSend_setObject_forKeyedSubscript_(v21, v32, v30, v29);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v33, &v42, v46, 16);
    }

    while (v25);
  }

  objc_msgSend_setRecordZoneIDs_(v14, v34, v22);
  objc_msgSend_setConfigurationsByRecordZoneID_(v14, v35, v21);
  objc_msgSend_setForcePCSDecryptionAttempt_(v14, v36, 1);
  v37 = objc_opt_class();
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_225245FA4;
  v41[3] = &unk_278548B60;
  v41[4] = selfCopy;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(selfCopy, v38, v37, v14, v41);

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_fetchZones
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_zoneIDs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) == 0;
  objc_msgSend_setIsFetchAllRecordZonesOperation_(v3, v10, v9);

  v13 = objc_msgSend_zoneIDs(self, v11, v12);
  objc_msgSend_setRecordZoneIDs_(v3, v14, v13);

  objc_msgSend_setIgnorePCSFailures_(v3, v15, 1);
  v16 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225246370;
  v18[3] = &unk_278548B60;
  v18[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v17, v16, v3, v18);
}

- (NSArray)corruptRecords
{
  v3 = objc_msgSend_mutableCorruptRecords(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v6 = v3;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v9, 1, 0, 0);
    v13 = objc_msgSend_CKPropertiesStyleString(v10, v11, v12);
    v15 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v14, 0, 1, 0);
    v18 = objc_msgSend_CKPropertiesStyleString(v15, v16, v17);
    v19 = 138544130;
    v20 = v8;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = v13;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Starting fetch record PCS diagnostics operation <%{public}@: %p; %{public}@, %@>", &v19, 0x2Au);
  }

  objc_msgSend_makeStateTransition_(self, v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_zoneIDs(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v5, v9, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2252469BC;
    v15[3] = &unk_2785487F8;
    v16 = v10;
    objc_msgSend_updateCloudKitMetrics_(self, v13, v15);
  }

  v14.receiver = self;
  v14.super_class = CKDFetchRecordPCSDiagnosticsOperation;
  [(CKDOperation *)&v14 _finishOnCallbackQueueWithError:errorCopy];
}

@end
@interface CKDApplyZoneAttributeChangesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDApplyZoneAttributeChangesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)relevantZoneIDs;
- (void)decryptPCSs;
- (void)removePCSKeys;
- (void)savePCSChanges;
- (void)updatePCSCache;
@end

@implementation CKDApplyZoneAttributeChangesOperation

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 4)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDApplyZoneAttributeChangesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854ACD8[state - 2];
  }

  return v5;
}

- (CKDApplyZoneAttributeChangesOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKDApplyZoneAttributeChangesOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_zone(infoCopy, v7, v8);
    zone = v9->_zone;
    v9->_zone = v10;

    v9->_pcsKeysRemoved = 0;
  }

  return v9;
}

- (id)relevantZoneIDs
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_zone(self, a2, v2);
  v6 = objc_msgSend_zoneID(v3, v4, v5);

  if (v6)
  {
    v11[0] = v6;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v11, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)makeStateTransition
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend_removePCSKeys(self, v7, v8);
      }

      goto LABEL_23;
    }

    v13 = objc_msgSend_zone(self, v5, v6);
    v16 = objc_msgSend_protectionData(v13, v14, v15);
    if (objc_msgSend_length(v16, v17, v18))
    {
      v21 = objc_msgSend_databaseScope(self, v19, v20);

      if (v21 == 2)
      {
        objc_msgSend_setState_(self, v22, 2);
        objc_msgSend_decryptPCSs(self, v24, v25);
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (objc_msgSend_databaseScope(self, v22, v23) == 3)
    {
      v27 = objc_msgSend_zone(self, v5, v26);
      v30 = objc_msgSend_protectionData(v27, v28, v29);
      v33 = objc_msgSend_length(v30, v31, v32);

      if (v33)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v34 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v41 = v34;
          v44 = objc_msgSend_zone(self, v42, v43);
          v47 = objc_msgSend_zoneID(v44, v45, v46);
          v48 = 138412290;
          v49 = v47;
          _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Skipping decryption for zone with ID %@ due to database being shared", &v48, 0xCu);
        }
      }
    }

LABEL_22:
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v37 = objc_msgSend_error(self, v35, v36);
    objc_msgSend_finishWithError_(self, v38, v37);

    goto LABEL_23;
  }

  if (v4 == 3)
  {
    if (objc_msgSend_pcsKeysRemoved(self, v5, v6))
    {
      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend_savePCSChanges(self, v9, v10);
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  objc_msgSend_setState_(self, v5, 5);
  objc_msgSend_updatePCSCache(self, v11, v12);
LABEL_23:
  v39 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)decryptPCSs
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  v10 = objc_msgSend_bypassPCSEncryption(v7, v8, v9);

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v68 = v13;
      v71 = objc_msgSend_container(self, v69, v70);
      v74 = objc_msgSend_containerID(v71, v72, v73);
      v77 = objc_msgSend_zone(self, v75, v76);
      *location = 138412546;
      *&location[4] = v74;
      v81 = 2112;
      v82 = v77;
      _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "Unexpected zone PCS data! Encryption should not be used in container %@. zone: %@", location, 0x16u);
    }

    v15 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5004, 0, @"Encryption should not be used in this container.");
    objc_msgSend_setError_(self, v16, v15);
  }

  else
  {
    v17 = objc_msgSend_stateTransitionGroup(self, v11, v12);
    dispatch_group_enter(v17);

    v20 = objc_msgSend_container(self, v18, v19);
    v23 = objc_msgSend_entitlements(v20, v21, v22);
    hasZoneProtectionDataEntitlement = objc_msgSend_hasZoneProtectionDataEntitlement(v23, v24, v25);
    v29 = objc_msgSend_zone(self, v27, v28);
    objc_msgSend_setSerializeProtectionData_(v29, v30, hasZoneProtectionDataEntitlement);

    objc_msgSend_noteOperationWillWaitOnPCS(self, v31, v32);
    v35 = objc_msgSend_zone(self, v33, v34);
    v15 = objc_msgSend_zonePCSModificationDate(v35, v36, v37);

    if (*MEMORY[0x277CBC810] == 1)
    {
      v40 = objc_msgSend_unitTestOverrides(self, v38, v39);
      v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"OverrideZonePCSModificationDate");

      if (v42)
      {
        v45 = objc_msgSend_unitTestOverrides(self, v43, v44);
        v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"OverrideZonePCSModificationDate");

        v15 = v47;
      }
    }

    objc_initWeak(location, self);
    v50 = objc_msgSend_container(self, v48, v49);
    v53 = objc_msgSend_pcsManager(v50, v51, v52);
    v56 = objc_msgSend_zone(self, v54, v55);
    v59 = objc_msgSend_protectionData(v56, v57, v58);
    v62 = objc_msgSend_topmostParentOperation(self, v60, v61);
    v65 = objc_msgSend_operationID(v62, v63, v64);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_22523F104;
    v78[3] = &unk_278549DF8;
    objc_copyWeak(&v79, location);
    v78[4] = self;
    objc_msgSend_createZonePCSFromData_usingServiceIdentityWithType_zonePCSModificationDate_requestorOperationID_completionHandler_(v53, v66, v59, 0, v15, v65, v78);

    objc_destroyWeak(&v79);
    objc_destroyWeak(location);
  }

  v67 = *MEMORY[0x277D85DE8];
}

- (void)removePCSKeys
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_zone(self, v5, v6);
  v12 = objc_msgSend_zonePCSKeysToRemove(v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_zone(self, v10, v11);
    v16 = objc_msgSend_zonePCSKeysToRemove(v13, v14, v15);
    isEmpty = objc_msgSend_isEmpty(v16, v17, v18);

    if (isEmpty)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v22 = objc_msgSend_zone(self, v20, v21);
    v25 = objc_msgSend_zonePCS(v22, v23, v24);

    v7 = objc_msgSend_container(self, v26, v27);
    v30 = objc_msgSend_pcsManager(v7, v28, v29);
    v33 = objc_msgSend_zone(self, v31, v32);
    v36 = objc_msgSend_zonePCSKeysToRemove(v33, v34, v35);
    v39 = objc_msgSend_zone(self, v37, v38);
    v42 = objc_msgSend_protectionEtag(v39, v40, v41);
    v12 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v30, v43, v36, v25, v42, self);
  }

LABEL_6:
  v44 = objc_msgSend_zone(self, v20, v21);
  v49 = objc_msgSend_zoneishPCSKeysToRemove(v44, v45, v46);
  if (v49)
  {
    v50 = objc_msgSend_zone(self, v47, v48);
    v53 = objc_msgSend_zoneishPCSKeysToRemove(v50, v51, v52);
    v56 = objc_msgSend_isEmpty(v53, v54, v55);

    if (v56)
    {
      v49 = 0;
      goto LABEL_11;
    }

    v59 = objc_msgSend_zone(self, v57, v58);
    v62 = objc_msgSend_zoneishPCS(v59, v60, v61);

    v44 = objc_msgSend_container(self, v63, v64);
    v67 = objc_msgSend_pcsManager(v44, v65, v66);
    v70 = objc_msgSend_zone(self, v68, v69);
    v73 = objc_msgSend_zoneishPCSKeysToRemove(v70, v71, v72);
    v76 = objc_msgSend_zone(self, v74, v75);
    v79 = objc_msgSend_zoneishProtectionData(v76, v77, v78);
    v81 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v80, v79);
    v49 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v67, v82, v73, v62, v81, self);
  }

LABEL_11:
  objc_msgSend_setPcsKeysRemoved_(self, v57, v12 + v49);
  if (objc_msgSend_pcsKeysRemoved(self, v83, v84))
  {
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = sub_22523F77C;
    v90[3] = &unk_27854AC90;
    v90[4] = v12;
    v90[5] = v49;
    objc_msgSend_updateCloudKitMetrics_(self, v85, v90);
    objc_msgSend_updatePCSCache(self, v87, v88);
  }

  v89 = objc_msgSend_stateTransitionGroup(self, v85, v86);
  dispatch_group_leave(v89);
}

- (void)savePCSChanges
{
  v30 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = v3;
    v22 = objc_msgSend_zone(self, v20, v21);
    v25 = objc_msgSend_zoneID(v22, v23, v24);
    *buf = 138412290;
    v29 = v25;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Saving PCS changes to the server for zone %@", buf, 0xCu);
  }

  v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
  dispatch_group_enter(v6);

  v7 = objc_opt_new();
  v10 = objc_msgSend_zone(self, v8, v9);
  v27 = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &v27, 1);
  objc_msgSend_setRecordZonesToSave_(v7, v13, v12);

  objc_msgSend_setAllowDefaultZoneSave_(v7, v14, 1);
  objc_msgSend_setMaxZoneSaveAttempts_(v7, v15, 1);
  v16 = objc_opt_class();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22523F9EC;
  v26[3] = &unk_278548B60;
  v26[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v17, v16, v7, v26);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updatePCSCache
{
  v46 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = v3;
    v40 = objc_msgSend_zone(self, v38, v39);
    v43 = objc_msgSend_zoneID(v40, v41, v42);
    v44 = 138412290;
    v45 = v43;
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Updating PCS cache for zone %@", &v44, 0xCu);
  }

  v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
  dispatch_group_enter(v6);

  v9 = objc_msgSend_zone(self, v7, v8);
  v11 = objc_msgSend_dataWithZone_(CKDZonePCSData, v10, v9);

  v14 = objc_msgSend_zone(self, v12, v13);
  v17 = objc_msgSend_zonePCS(v14, v15, v16);
  objc_msgSend_setPcs_(v11, v18, v17);

  v21 = objc_msgSend_zone(self, v19, v20);
  v24 = objc_msgSend_zoneishPCS(v21, v22, v23);
  objc_msgSend_setZoneishPCS_(v11, v25, v24);

  v28 = objc_msgSend_zone(self, v26, v27);
  v31 = objc_msgSend_zoneID(v28, v29, v30);
  objc_msgSend_setPCSData_forFetchedZoneID_(self, v32, v11, v31);

  v35 = objc_msgSend_stateTransitionGroup(self, v33, v34);
  dispatch_group_leave(v35);

  v36 = *MEMORY[0x277D85DE8];
}

@end
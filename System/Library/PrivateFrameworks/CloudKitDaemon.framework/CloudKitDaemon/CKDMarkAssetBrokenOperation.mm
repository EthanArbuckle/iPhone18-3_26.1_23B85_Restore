@interface CKDMarkAssetBrokenOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDMarkAssetBrokenOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)assetOrPackageForFetchedRecord;
- (id)checkPreconditions;
- (id)repairContainer;
- (void)_breakAsset;
- (void)_fetchRecord;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_markAssetBroken;
- (void)_touchCreateRepairZone;
- (void)_touchFetchRepairZone;
@end

@implementation CKDMarkAssetBrokenOperation

- (CKDMarkAssetBrokenOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = CKDMarkAssetBrokenOperation;
  v9 = [(CKDDatabaseOperation *)&v31 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordID(infoCopy, v7, v8);
    recordID = v9->_recordID;
    v9->_recordID = v10;

    v14 = objc_msgSend_field(infoCopy, v12, v13);
    field = v9->_field;
    v9->_field = v14;

    v9->_listIndex = objc_msgSend_listIndex(infoCopy, v16, v17);
    v9->_touchRepairZone = objc_msgSend_touchRepairZone(infoCopy, v18, v19);
    v9->_bypassPCSEncryptionForTouchRepairZone = objc_msgSend_bypassPCSEncryptionForTouchRepairZone(infoCopy, v20, v21);
    v9->_simulateCorruptAsset = objc_msgSend_simulateCorruptAsset(infoCopy, v22, v23);
    v9->_writeRepairRecord = objc_msgSend_writeRepairRecord(infoCopy, v24, v25);
    v28 = objc_msgSend_uploadRequestConfiguration(infoCopy, v26, v27);
    uploadRequestConfiguration = v9->_uploadRequestConfiguration;
    v9->_uploadRequestConfiguration = v28;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/break-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v39 = objc_msgSend_recordID(self, v5, v6);

        if (v39)
        {
          goto LABEL_22;
        }

        break;
      case 5:
LABEL_24:
        objc_msgSend_setState_(self, v5, 6);
LABEL_25:
        objc_msgSend__markAssetBroken(self, v32, v33);
        goto LABEL_31;
      case 6:
        v12 = objc_msgSend_markAssetBrokenError(self, v5, v6);

        if (v12)
        {
          if (objc_msgSend_numMarkAssetBrokenFailures(self, v13, v14) <= 2)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v17 = *MEMORY[0x277CBC838];
            if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_INFO))
            {
              v20 = v17;
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              v25 = objc_msgSend_ckShortDescription(self, v23, v24);
              v28 = objc_msgSend_markAssetBrokenError(self, v26, v27);
              v53 = 138544130;
              v54 = v22;
              v55 = 2048;
              selfCopy = self;
              v57 = 2114;
              v58 = v25;
              v59 = 2112;
              v60 = v28;
              _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Retrying markAssetsBroken on <%{public}@: %p; %{public}@> after error %@", &v53, 0x2Au);
            }

            v29 = objc_msgSend_numMarkAssetBrokenFailures(self, v18, v19);
            objc_msgSend_setNumMarkAssetBrokenFailures_(self, v30, v29 + 1);
            objc_msgSend_setMarkAssetBrokenError_(self, v31, 0);
            sleep(0xAu);
            goto LABEL_25;
          }

          v45 = objc_msgSend_markAssetBrokenError(self, v15, v16);
          objc_msgSend_setError_(self, v46, v45);
        }

        break;
      default:
        goto LABEL_31;
    }

    goto LABEL_30;
  }

  switch(v4)
  {
    case 1:
      v34 = objc_msgSend_recordID(self, v5, v6);

      if (v34)
      {
        objc_msgSend_setState_(self, v35, 2);
        objc_msgSend__fetchRecord(self, v37, v38);
        break;
      }

      if (objc_msgSend_touchRepairZone(self, v35, v36))
      {
        goto LABEL_27;
      }

LABEL_30:
      objc_msgSend_setState_(self, v13, 0xFFFFFFFFLL);
      v49 = objc_msgSend_error(self, v47, v48);
      objc_msgSend_finishWithError_(self, v50, v49);

      break;
    case 2:
      if (!objc_msgSend_touchRepairZone(self, v5, v6))
      {
LABEL_22:
        if (objc_msgSend_simulateCorruptAsset(self, v13, v40))
        {
          objc_msgSend_setState_(self, v5, 5);
          objc_msgSend__breakAsset(self, v41, v42);
          break;
        }

        goto LABEL_24;
      }

LABEL_27:
      objc_msgSend_setState_(self, v13, 3);
      objc_msgSend__touchFetchRepairZone(self, v43, v44);
      break;
    case 3:
      objc_msgSend_setState_(self, v5, 4);
      v9 = objc_msgSend_repairZone(self, v7, v8);

      if (v9)
      {
        objc_msgSend_makeStateTransition(self, v10, v11);
      }

      else
      {
        objc_msgSend__touchCreateRepairZone(self, v10, v11);
      }

      break;
  }

LABEL_31:
  v51 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDMarkAssetBrokenOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548C68[state - 2];
  }

  return v5;
}

- (void)_fetchRecord
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_recordID(self, v4, v5);
  v21[0] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v21, 1);
  objc_msgSend_setRecordIDs_(v3, v9, v8);

  v12 = objc_msgSend_simulateCorruptAsset(self, v10, v11);
  objc_msgSend_setShouldFetchAssetContent_(v3, v13, v12);
  v16 = objc_msgSend_stateTransitionGroup(self, v14, v15);
  dispatch_group_enter(v16);

  v17 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251B0074;
  v20[3] = &unk_278548B60;
  v20[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v18, v17, v3, v20);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_touchFetchRepairZone
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_uploadRequestConfiguration(self, a2, v2);
  v8 = objc_msgSend_repairZoneID(v5, v6, v7);

  if (!v8)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKDMarkAssetBrokenOperation.m", 261, @"Upload request configuration passed to cloudd should have resolved fields");
  }

  v11 = objc_opt_new();
  v14 = objc_msgSend_uploadRequestConfiguration(self, v12, v13);
  v17 = objc_msgSend_repairZoneID(v14, v15, v16);
  v33[0] = v17;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v33, 1);
  objc_msgSend_setRecordZoneIDs_(v11, v20, v19);

  v23 = objc_msgSend_stateTransitionGroup(self, v21, v22);
  dispatch_group_enter(v23);

  v24 = objc_opt_class();
  v27 = objc_msgSend_repairContainer(self, v25, v26);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2251B0824;
  v32[3] = &unk_278548B60;
  v32[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(self, v28, v24, v11, 0, v27, v32);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_touchCreateRepairZone
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_uploadRequestConfiguration(self, a2, v2);
  v8 = objc_msgSend_repairZoneID(v5, v6, v7);

  if (!v8)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKDMarkAssetBrokenOperation.m", 314, @"Upload request configuration passed to cloudd should have resolved fields");
  }

  v11 = objc_alloc(MEMORY[0x277CBC5E8]);
  v14 = objc_msgSend_uploadRequestConfiguration(self, v12, v13);
  v17 = objc_msgSend_repairZoneID(v14, v15, v16);
  v19 = objc_msgSend_initWithZoneID_(v11, v18, v17);

  v20 = objc_opt_new();
  v36[0] = v19;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v36, 1);
  objc_msgSend_setRecordZonesToSave_(v20, v23, v22);

  v26 = objc_msgSend_stateTransitionGroup(self, v24, v25);
  dispatch_group_enter(v26);

  v27 = objc_opt_class();
  v30 = objc_msgSend_repairContainer(self, v28, v29);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2251B101C;
  v35[3] = &unk_278548B60;
  v35[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(self, v31, v27, v20, 0, v30, v35);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_breakAsset
{
  v87[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_checkPreconditions(self, a2, v2);
  if (v6)
  {
    objc_msgSend_setError_(self, v4, v6);
  }

  else
  {
    v7 = objc_msgSend_assetOrPackageForFetchedRecord(self, v4, v5);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = objc_alloc(MEMORY[0x277CBC5A0]);
    v10 = objc_alloc(MEMORY[0x277CBC5D0]);
    v12 = objc_msgSend_initWithRecordName_(v10, v11, @"FakeName");
    v14 = objc_msgSend_initWithRecordType_recordID_(v9, v13, @"FakeRecordType", v12);

    v15 = objc_opt_new();
    objc_msgSend_setShouldOnlySaveAssetContent_(v15, v16, 1);
    v87[0] = v14;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v87, 1);
    objc_msgSend_setRecordsToSave_(v15, v19, v18);

    objc_msgSend_setOriginatingFromDaemon_(v15, v20, 1);
    v79 = v7;
    if (isKindOfClass)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = MEMORY[0x277CCAD78];
      v23 = v7;
      v26 = objc_msgSend_UUID(v22, v24, v25);
      v29 = objc_msgSend_UUIDString(v26, v27, v28);
      v31 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v29, v30, @"-", &stru_28385ED00);
      v33 = objc_msgSend_stringWithFormat_(v21, v32, @"A%@", v31, v7);

      objc_msgSend_setUUID_(v23, v34, v33);
      objc_msgSend_setRecordID_(v23, v35, 0);
      v36 = objc_alloc(MEMORY[0x277CBC1C0]);
      v39 = objc_msgSend_signature(v23, v37, v38);
      v42 = objc_msgSend_referenceSignature(v23, v40, v41);
      v44 = objc_msgSend_initWithFileSignature_referenceSignature_assetKey_(v36, v43, v39, v42, 0);

      v85 = v33;
      v86 = v44;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, &v86, &v85, 1);
      objc_msgSend_setAssetUUIDToExpectedProperties_(v15, v47, v46);

      objc_msgSend_setObject_forKeyedSubscript_(v14, v48, v23, v33);
    }

    else
    {
      v49 = v7;
      v52 = objc_msgSend_container(self, v50, v51);
      v55 = objc_msgSend_applicationBundleID(v52, v53, v54);
      v82 = 0;
      v33 = objc_msgSend_clonedPackageWithBundle_filesDuplicatedIntoDirectory_error_(v49, v56, v55, 0, &v82);
      v44 = v82;

      v57 = MEMORY[0x277CCACA8];
      v60 = objc_msgSend_UUID(v33, v58, v59);
      v62 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v60, v61, @"-", &stru_28385ED00);
      v23 = objc_msgSend_stringWithFormat_(v57, v63, @"A%@", v62, v79);

      v66 = objc_msgSend_assets(v49, v64, v65);

      v68 = objc_msgSend_CKMap_(v66, v67, &unk_28385D440);

      v83 = v23;
      v84 = v68;
      v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, &v84, &v83, 1);
      objc_msgSend_setPackageUUIDToExpectedProperties_(v15, v71, v70);

      objc_msgSend_setObject_forKeyedSubscript_(v14, v72, v33, v23);
    }

    v75 = objc_msgSend_stateTransitionGroup(self, v73, v74);
    dispatch_group_enter(v75);

    v76 = objc_opt_class();
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_2251B1ADC;
    v81[3] = &unk_278548B60;
    v81[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v77, v76, v15, v81);
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)_markAssetBroken
{
  v177 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_checkPreconditions(self, a2, v2);
  if (v6)
  {
    objc_msgSend_setError_(self, v4, v6);
    goto LABEL_28;
  }

  v7 = objc_msgSend_record(self, v4, v5);
  v10 = objc_msgSend_field(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (objc_msgSend_listIndex(self, v13, v14) < 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = MEMORY[0x277CBC1D0];
      v56 = v12;
      v161 = [v55 alloc];
      v154 = objc_msgSend_record(self, v57, v58);
      v61 = objc_msgSend_recordID(v154, v59, v60);
      v151 = objc_msgSend_record(self, v62, v63);
      v66 = objc_msgSend_recordID(v151, v64, v65);
      v69 = objc_msgSend_record(self, v67, v68);
      v72 = objc_msgSend_recordType(v69, v70, v71);
      v75 = objc_msgSend_field(self, v73, v74);
      objc_msgSend_signature(v56, v76, v77);
      v78 = v157 = v12;
      v81 = objc_msgSend_referenceSignature(v56, v79, v80);

      v84 = objc_msgSend_listIndex(self, v82, v83);
      v160 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignature_referenceSignature_listIndex_(v161, v85, v61, 2, v66, v72, v75, v78, v81, v84);

      v12 = v157;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v158 = v12;
      v86 = v12;
      v87 = objc_opt_new();
      v88 = objc_opt_new();
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v155 = v86;
      v91 = objc_msgSend_assets(v86, v89, v90);
      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v166, v176, 16);
      if (v93)
      {
        v96 = v93;
        v97 = *v167;
        do
        {
          for (i = 0; i != v96; ++i)
          {
            if (*v167 != v97)
            {
              objc_enumerationMutation(v91);
            }

            v99 = *(*(&v166 + 1) + 8 * i);
            v100 = objc_msgSend_signature(v99, v94, v95);
            objc_msgSend_addObject_(v87, v101, v100);

            v104 = objc_msgSend_referenceSignature(v99, v102, v103);
            objc_msgSend_addObject_(v88, v105, v104);
          }

          v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v94, &v166, v176, 16);
        }

        while (v96);
      }

      v162 = objc_alloc(MEMORY[0x277CBC550]);
      v152 = objc_msgSend_record(self, v106, v107);
      v110 = objc_msgSend_recordID(v152, v108, v109);
      v113 = objc_msgSend_record(self, v111, v112);
      v116 = objc_msgSend_recordID(v113, v114, v115);
      v119 = objc_msgSend_record(self, v117, v118);
      v122 = objc_msgSend_recordType(v119, v120, v121);
      v125 = objc_msgSend_field(self, v123, v124);
      v160 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignatures_referenceSignatures_(v162, v126, v110, 2, v116, v122, v125, v87, v88);

      v12 = v158;
LABEL_22:

      if (v160)
      {
        v129 = objc_msgSend_stateTransitionGroup(self, v127, v128);
        dispatch_group_enter(v129);

        v130 = objc_opt_class();
        v131 = objc_opt_new();
        v134 = objc_msgSend_repairContainer(self, v132, v133);
        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = sub_2251B27D4;
        v163[3] = &unk_278548C48;
        v164 = v160;
        selfCopy = self;
        v135 = v160;
        objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(self, v136, v130, v131, 0, v134, v163);

        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v17 = objc_msgSend_count(v12, v15, v16);
    if (objc_msgSend_listIndex(self, v18, v19) < v17)
    {
      v22 = objc_msgSend_listIndex(self, v20, v21);
      v24 = objc_msgSend_objectAtIndex_(v12, v23, v22);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v156 = v12;
        v25 = MEMORY[0x277CBC1D0];
        v26 = v24;
        v159 = [v25 alloc];
        v153 = objc_msgSend_record(self, v27, v28);
        v149 = objc_msgSend_recordID(v153, v29, v30);
        v150 = objc_msgSend_record(self, v31, v32);
        v35 = objc_msgSend_recordID(v150, v33, v34);
        v38 = objc_msgSend_record(self, v36, v37);
        v41 = objc_msgSend_recordType(v38, v39, v40);
        v44 = objc_msgSend_field(self, v42, v43);
        v47 = objc_msgSend_signature(v26, v45, v46);
        v50 = objc_msgSend_referenceSignature(v26, v48, v49);

        v53 = objc_msgSend_listIndex(self, v51, v52);
        v160 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignature_referenceSignature_listIndex_(v159, v54, v149, 2, v35, v41, v44, v47, v50, v53);

        v12 = v156;
      }

      else
      {
        v160 = 0;
      }

      goto LABEL_22;
    }
  }

LABEL_24:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v137 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
  {
    v139 = v137;
    v142 = objc_msgSend_field(self, v140, v141);
    v145 = objc_msgSend_listIndex(self, v143, v144);
    v148 = objc_msgSend_record(self, v146, v147);
    *buf = 138543874;
    v171 = v142;
    v172 = 2048;
    v173 = v145;
    v174 = 2112;
    v175 = v148;
    _os_log_error_impl(&dword_22506F000, v139, OS_LOG_TYPE_ERROR, "Could not find asset or package in field %{public}@ and index %ld of record %@", buf, 0x20u);
  }

LABEL_28:

  v138 = *MEMORY[0x277D85DE8];
}

- (id)repairContainer
{
  v5 = objc_msgSend_uploadRequestConfiguration(self, a2, v2);
  v8 = objc_msgSend_containerIdentifier(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_uploadRequestConfiguration(self, v9, v10);
    v15 = objc_msgSend_applicationBundleIdentifierOverride(v12, v13, v14);

    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDMarkAssetBrokenOperation.m", 602, @"Upload request configuration passed to cloudd should have resolved fields");

LABEL_4:
  v20 = objc_msgSend_uploadRequestConfiguration(self, v16, v17);
  v81 = objc_msgSend_containerIdentifier(v20, v21, v22);

  v25 = objc_msgSend_container(self, v23, v24);
  v26 = objc_alloc(MEMORY[0x277CBC220]);
  v29 = objc_msgSend_containerID(v25, v27, v28);
  v32 = objc_msgSend_environment(v29, v30, v31);
  v80 = objc_msgSend_initWithContainerIdentifier_environment_(v26, v33, v81, v32);

  v36 = objc_msgSend_uploadRequestConfiguration(self, v34, v35);
  v39 = objc_msgSend_applicationBundleIdentifierOverride(v36, v37, v38);

  v40 = [CKDApplicationID alloc];
  v43 = objc_msgSend_applicationBundleID(v25, v41, v42);
  v79 = objc_msgSend_initWithApplicationBundleIdentifier_applicationBundleIdentifierOverrideForContainerAccess_applicationBundleIdentifierOverrideForNetworkAttribution_applicationBundleIdentifierOverrideForPushTopicGeneration_applicationBundleIdentifierOverrideForTCC_(v40, v44, v43, v39, v39, v39, v39);

  v45 = [CKDAppContainerTuple alloc];
  v78 = v25;
  v48 = objc_msgSend_personaID(v25, v46, v47);
  v76 = objc_msgSend_initWithApplicationID_containerID_personaID_(v45, v49, v79, v80, v48);

  v52 = objc_msgSend_processScopedClientProxy(v25, v50, v51);
  v55 = objc_msgSend_container(self, v53, v54);
  v58 = objc_msgSend_logicalDeviceScopedClientProxy(v55, v56, v57);
  v61 = objc_msgSend_container(self, v59, v60);
  v64 = objc_msgSend_entitlements(v61, v62, v63);
  v67 = objc_msgSend_container(self, v65, v66);
  v70 = objc_msgSend_options(v67, v68, v69);
  v73 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v71, v72);
  v77 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v74, v76, v52, v58, v64, v70, v73);

  return v77;
}

- (id)assetOrPackageForFetchedRecord
{
  v4 = objc_msgSend_record(self, a2, v2);
  v7 = objc_msgSend_field(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, v7);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    if (objc_msgSend_listIndex(self, v11, v12) != -1)
    {
      v15 = objc_msgSend_listIndex(self, v13, v14);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v10, v16, v15);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v21 = objc_msgSend_listIndex(self, v19, v20);
        v23 = objc_msgSend_objectAtIndexedSubscript_(v10, v22, v21);

        goto LABEL_10;
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v23 = v9;
      goto LABEL_10;
    }
  }

  v23 = 0;
LABEL_10:

  return v23;
}

- (id)checkPreconditions
{
  v4 = objc_msgSend_record(self, a2, v2);

  if (v4)
  {
    v8 = objc_msgSend_assetOrPackageForFetchedRecord(self, v5, v6);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 3011, @"Could not find referenced asset");
    }
  }

  else
  {
    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBC120], 1000, @"Attempting to break asset with missing base record");
  }

  return v9;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setAssetOrPackageMarkedBrokenBlock_(self, v5, 0);
  objc_msgSend_setRecord_(self, v6, 0);
  v7.receiver = self;
  v7.super_class = CKDMarkAssetBrokenOperation;
  [(CKDOperation *)&v7 _finishOnCallbackQueueWithError:errorCopy];
}

@end
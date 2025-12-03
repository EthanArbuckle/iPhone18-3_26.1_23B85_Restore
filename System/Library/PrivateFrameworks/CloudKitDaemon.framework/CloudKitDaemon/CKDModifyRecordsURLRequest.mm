@interface CKDModifyRecordsURLRequest
- (CKDModifyRecordsURLRequest)initWithOperation:(id)operation recordsToSave:(id)save recordIDsToDelete:(id)delete recordIDsToDeleteToSigningPCSIdentity:(id)identity oplock:(BOOL)oplock sendAllFields:(BOOL)fields clientChangeTokenData:(id)data requestedFieldsByRecordId:(id)self0;
- (id)generateMergeableDeltaSaveOperationsForRecord:(id)record error:(id *)error;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)zones;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)returnVerificationKeyAndSignatureForRequestOperation:(id)operation dataToBeSigned:(id)signed error:(id *)error;
- (id)zoneIDsToLock;
- (int)isolationLevel;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidComplete;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDModifyRecordsURLRequest

- (CKDModifyRecordsURLRequest)initWithOperation:(id)operation recordsToSave:(id)save recordIDsToDelete:(id)delete recordIDsToDeleteToSigningPCSIdentity:(id)identity oplock:(BOOL)oplock sendAllFields:(BOOL)fields clientChangeTokenData:(id)data requestedFieldsByRecordId:(id)self0
{
  saveCopy = save;
  deleteCopy = delete;
  identityCopy = identity;
  dataCopy = data;
  idCopy = id;
  v36.receiver = self;
  v36.super_class = CKDModifyRecordsURLRequest;
  v18 = [(CKDURLRequest *)&v36 initWithOperation:operation];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_records, save);
    objc_storeStrong(&v19->_recordIDsToDelete, delete);
    objc_storeStrong(&v19->_recordIDsToDeleteToSigningPCSIdentity, identity);
    v19->_oplock = oplock;
    v19->_sendAllFields = fields;
    objc_storeStrong(&v19->_clientChangeTokenData, data);
    objc_storeStrong(&v19->_requestedFieldsByRecordID, id);
    v20 = objc_opt_new();
    recordIDByRequestID = v19->_recordIDByRequestID;
    v19->_recordIDByRequestID = v20;

    v22 = objc_opt_new();
    recordByRequestID = v19->_recordByRequestID;
    v19->_recordByRequestID = v22;

    v24 = objc_opt_new();
    mergeableFieldKeyByRequestID = v19->_mergeableFieldKeyByRequestID;
    v19->_mergeableFieldKeyByRequestID = v24;

    v26 = objc_opt_new();
    replacementRequestsByRequestID = v19->_replacementRequestsByRequestID;
    v19->_replacementRequestsByRequestID = v26;

    v19->_containsMergeableValues = objc_msgSend_CKContains_(v19->_records, v28, &unk_28385E520);
    v29 = objc_opt_new();
    skippedRecordsWithPurelyMergeableChanges = v19->_skippedRecordsWithPurelyMergeableChanges;
    v19->_skippedRecordsWithPurelyMergeableChanges = v29;
  }

  return v19;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v25.receiver = self;
  v25.super_class = CKDModifyRecordsURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v25 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_records(self, v6, v7, v25.receiver, v25.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"modifyIDs");
  v15 = MEMORY[0x277CBEB98];
  v18 = objc_msgSend_recordIDsToDelete(self, v16, v17);
  v21 = objc_msgSend_ckEquivalencyProperties(v18, v19, v20);
  v23 = objc_msgSend_setWithArray_(v15, v22, v21);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v24, v23, @"deleteIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_records(self, v5, v6);
  v9 = objc_msgSend_CKCompactMap_(v7, v8, &unk_28385E540);

  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v10, v9);
  v13 = objc_msgSend_recordIDsToDelete(self, v11, v12);
  objc_msgSend_setDeleteRecordIDs_(propertiesCopy, v14, v13);

  v15.receiver = self;
  v15.super_class = CKDModifyRecordsURLRequest;
  [(CKDURLRequest *)&v15 fillOutRequestProperties:propertiesCopy];
}

- (id)recordIDsUsedInZones:(id)zones
{
  v36 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v7 = objc_msgSend_recordIDsToDelete(self, v5, v6);
  v9 = objc_msgSend_recordIDs_filteredByZones_(self, v8, v7, zonesCopy);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = objc_msgSend_records(self, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v35, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = objc_msgSend_recordID(v20, v15, v16);
        v24 = objc_msgSend_zoneID(v21, v22, v23);
        v26 = objc_msgSend_containsObject_(zonesCopy, v25, v24);

        if (v26)
        {
          v27 = objc_msgSend_recordID(v20, v15, v16);
          objc_msgSend_addObject_(v9, v28, v27);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v31, v35, 16);
    }

    while (v17);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)zoneIDsToLock
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = objc_msgSend_records(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v40, v45, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_recordID(*(*(&v40 + 1) + 8 * i), v9, v10);
        v17 = objc_msgSend_zoneID(v14, v15, v16);

        if (v17)
        {
          objc_msgSend_addObject_(v3, v18, v17);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v40, v45, 16);
    }

    while (v11);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = objc_msgSend_recordIDsToDelete(self, v19, v20, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v36, v44, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v37;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v30 = objc_msgSend_zoneID(*(*(&v36 + 1) + 8 * j), v24, v25);
        if (v30)
        {
          objc_msgSend_addObject_(v3, v29, v30);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v36, v44, 16);
    }

    while (v26);
  }

  v33 = objc_msgSend_allObjects(v3, v31, v32);

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)requestOperationClasses
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_records(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v12 = objc_opt_class();
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_recordIDsToDelete(self, v10, v11);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17)
  {
    v20 = objc_opt_class();
    objc_msgSend_addObject_(v3, v21, v20);
  }

  if (objc_msgSend_containsMergeableValues(self, v18, v19))
  {
    v22 = objc_opt_class();
    objc_msgSend_addObject_(v3, v23, v22);
  }

  return v3;
}

- (int)isolationLevel
{
  if (objc_msgSend_atomic(self, a2, v2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)generateRequestOperations
{
  v569 = *MEMORY[0x277D85DE8];
  v513 = objc_opt_new();
  v553 = 0u;
  v554 = 0u;
  v555 = 0u;
  v556 = 0u;
  obj = objc_msgSend_records(self, v3, v4);
  v523 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v553, v568, 16);
  v8 = 0;
  if (v523)
  {
    v521 = *v554;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v554 != v521)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v553 + 1) + 8 * v9);
      if (objc_msgSend_canSkipRecordSaveForMergeables(v10, v6, v7))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v12 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
        {
          v319 = v12;
          objc_msgSend_requestUUID(self, v320, v321);
          v323 = v322 = v9;
          v326 = objc_msgSend_recordID(v10, v324, v325);
          *buf = 138543618;
          v563 = v323;
          v564 = 2112;
          v565 = v326;
          _os_log_debug_impl(&dword_22506F000, v319, OS_LOG_TYPE_DEBUG, "req: %{public}@, Skipping record save due to purely mergeable changes in %@", buf, 0x16u);

          v9 = v322;
        }

        v15 = objc_msgSend_skippedRecordsWithPurelyMergeableChanges(self, v13, v14);
        objc_msgSend_addObject_(v15, v16, v10);
        goto LABEL_82;
      }

      v527 = v8;
      v15 = objc_msgSend_operationRequestWithType_(self, v11, 210);
      if (objc_msgSend_requiresCKAnonymousUserIDs(self, v17, v18))
      {
        v21 = v9;
        v22 = objc_msgSend_recordID(v10, v19, v20);
        v25 = objc_msgSend_zoneID(v22, v23, v24);
        v28 = objc_msgSend_anonymousCKUserID(v25, v26, v27);

        if (!v28)
        {
          v468 = objc_opt_new();
          v469 = MEMORY[0x277CCACA8];
          v472 = objc_msgSend_recordID(v10, v470, v471);
          v474 = objc_msgSend_stringWithFormat_(v469, v473, @"An anonymousCKUserID is required to modify record %@ in the shared database when using anonymous to server share participants", v472);

          objc_msgSend_setObject_forKeyedSubscript_(v468, v475, v474, *MEMORY[0x277CCA450]);
          v478 = objc_msgSend_operation(self, v476, v477);
          v481 = objc_msgSend_topmostParentOperation(v478, v479, v480);
          v484 = objc_msgSend_operationID(v481, v482, v483);

          if (v484)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v468, v485, v484, *MEMORY[0x277CBBF60]);
          }

          v486 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v485, *MEMORY[0x277CBC120], 5015, v468);
          objc_msgSend_finishWithError_(self, v487, v486);

          v488 = obj;
LABEL_132:

          v508 = 0;
          goto LABEL_133;
        }

        v31 = objc_msgSend_recordID(v10, v29, v30);
        v34 = objc_msgSend_zoneID(v31, v32, v33);
        v37 = objc_msgSend_anonymousCKUserID(v34, v35, v36);
        v40 = objc_msgSend_CKDPIdentifier_User(v37, v38, v39);
        v43 = objc_msgSend_request(v15, v41, v42);
        objc_msgSend_setAnonymousCKUserID_(v43, v44, v40);

        v9 = v21;
      }

      v45 = objc_opt_new();
      objc_msgSend_setRecordSaveRequest_(v15, v46, v45);

      v49 = objc_msgSend_recordSaveRequest(v15, v47, v48);
      objc_msgSend_setMerge_(v49, v50, 1);

      v53 = objc_msgSend_oplock(self, v51, v52);
      v56 = objc_msgSend_sendAllFields(self, v54, v55);
      objc_opt_class();
      v519 = v9;
      if (objc_opt_isKindOfClass() & 1) != 0 && ((v53 ^ 1 | v56))
      {
        v59 = objc_msgSend_container(self, v57, v58);
        objc_msgSend_clientSDKVersion(v59, v60, v61);
        v62 = CKLinkCheckc809671068f5f334951d6b3e996f193c();

        v63 = *MEMORY[0x277CBC878];
        v64 = *MEMORY[0x277CBC880];
        if (v62)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v63);
          }

          v65 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v327 = v65;
            v330 = objc_msgSend_recordID(v10, v328, v329);
            *buf = 138412290;
            v563 = v330;
            _os_log_debug_impl(&dword_22506F000, v327, OS_LOG_TYPE_DEBUG, "Enforcing savePolicy isServerRecordUnchanged for CKShare record %@", buf, 0xCu);
          }

          LOBYTE(v56) = 0;
          LODWORD(v53) = 1;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v63);
          }

          v66 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v331 = v66;
            v334 = objc_msgSend_recordID(v10, v332, v333);
            v336 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v335, v53);
            v338 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v337, v56 & 1);
            *buf = 138412802;
            v563 = v334;
            v564 = 2112;
            v565 = v336;
            v566 = 2112;
            v567 = v338;
            _os_log_debug_impl(&dword_22506F000, v331, OS_LOG_TYPE_DEBUG, "Warning: Unsupported savePolicy used when saving CKShare record %@, opLock: %@, sendAllFields: %@", buf, 0x20u);
          }
        }
      }

      v67 = objc_msgSend_translator(self, v57, v58);
      v552 = 0;
      v69 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v67, v68, v10, v56 & 1, &v552, 0);
      v525 = v552;
      v72 = objc_msgSend_recordSaveRequest(v15, v70, v71);
      objc_msgSend_setRecord_(v72, v73, v69);

      if (v53)
      {
        v76 = objc_msgSend_etag(v10, v74, v75);
        v79 = objc_msgSend_recordSaveRequest(v15, v77, v78);
        objc_msgSend_setEtag_(v79, v80, v76);

        LODWORD(v79) = objc_msgSend_isKnownToServer(v10, v81, v82);
        v85 = objc_msgSend_recordSaveRequest(v15, v83, v84);
        v87 = v85;
        if (v79)
        {
          objc_msgSend_setSaveSemantics_(v85, v86, 1);
        }

        else
        {
          objc_msgSend_setSaveSemantics_(v85, v86, 2);
        }
      }

      else
      {
        v87 = objc_msgSend_recordSaveRequest(v15, v74, v75);
        objc_msgSend_setSaveSemantics_(v87, v88, 3);
      }

      v91 = objc_msgSend_recordSaveRequest(v15, v89, v90);
      v94 = objc_msgSend_saveSemantics(v91, v92, v93);

      if (v94 != 2)
      {
        v97 = v10;
        v550 = 0u;
        v551 = 0u;
        v548 = 0u;
        v549 = 0u;
        v98 = v525;
        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v548, v561, 16);
        if (v100)
        {
          v103 = v100;
          v104 = *v549;
          do
          {
            for (i = 0; i != v103; ++i)
            {
              if (*v549 != v104)
              {
                objc_enumerationMutation(v98);
              }

              v106 = *(*(&v548 + 1) + 8 * i);
              v107 = objc_msgSend_recordSaveRequest(v15, v101, v102);
              objc_msgSend_addFieldsToDeleteIfExistOnMerge_(v107, v108, v106);
            }

            v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v101, &v548, v561, 16);
          }

          while (v103);
        }

        v10 = v97;
      }

      v109 = objc_msgSend_conflictLoserEtags(v10, v95, v96);

      if (v109)
      {
        v112 = objc_opt_new();
        v115 = objc_msgSend_recordSaveRequest(v15, v113, v114);
        objc_msgSend_setConflictLoserUpdate_(v115, v116, v112);

        v119 = objc_msgSend_conflictLoserEtags(v10, v117, v118);
        v122 = objc_msgSend_mutableCopy(v119, v120, v121);
        v125 = objc_msgSend_recordSaveRequest(v15, v123, v124);
        v128 = objc_msgSend_conflictLoserUpdate(v125, v126, v127);
        objc_msgSend_setConflictLoserEtags_(v128, v129, v122);
      }

      v130 = objc_msgSend_conflictLosersToResolveByRecordID(self, v110, v111);
      v133 = objc_msgSend_recordID(v10, v131, v132);
      v135 = objc_msgSend_objectForKeyedSubscript_(v130, v134, v133);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v135, v136, v137))
      {
        v138 = objc_msgSend_mutableCopy(v135, v136, v137);
        v141 = objc_msgSend_recordSaveRequest(v15, v139, v140);
        objc_msgSend_setConflictLosersToResolves_(v141, v142, v138);
      }

      if ((v527 & 1) == 0)
      {
        v143 = objc_msgSend_header(v15, v136, v137);

        if (!v143)
        {
          v146 = objc_opt_new();
          objc_msgSend_setHeader_(v15, v147, v146);
        }

        v148 = objc_msgSend_clientChangeTokenData(self, v144, v145);
        v151 = objc_msgSend_header(v15, v149, v150);
        objc_msgSend_setClientChangeToken_(v151, v152, v148);
      }

      v153 = objc_msgSend_requestedFieldsByRecordID(self, v136, v137);
      v156 = objc_msgSend_recordID(v10, v154, v155);
      v158 = objc_msgSend_objectForKeyedSubscript_(v153, v157, v156);

      if (v158)
      {
        v517 = v135;
        v528 = v10;
        v161 = objc_opt_new();
        v544 = 0u;
        v545 = 0u;
        v546 = 0u;
        v547 = 0u;
        v515 = v158;
        v162 = v158;
        v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v163, &v544, v560, 16);
        if (v164)
        {
          v165 = v164;
          v166 = *v545;
          do
          {
            for (j = 0; j != v165; ++j)
            {
              if (*v545 != v166)
              {
                objc_enumerationMutation(v162);
              }

              v168 = *(*(&v544 + 1) + 8 * j);
              v169 = objc_opt_new();
              objc_msgSend_setName_(v169, v170, v168);
              objc_msgSend_addFields_(v161, v171, v169);
            }

            v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v172, &v544, v560, 16);
          }

          while (v165);
        }

        v175 = objc_msgSend_recordSaveRequest(v15, v173, v174);
        objc_msgSend_setRequestedFields_(v175, v176, v161);

        v10 = v528;
        v158 = v515;
        v135 = v517;
      }

      v177 = objc_msgSend_recordSaveRequest(v15, v159, v160);
      v180 = objc_msgSend_record(v177, v178, v179);

      if (v180)
      {
        break;
      }

      v221 = objc_opt_new();
      objc_msgSend_setCode_(v221, v222, 3);
      v223 = objc_opt_new();
      objc_msgSend_setError_(v221, v224, v223);

      v225 = objc_opt_new();
      v228 = objc_msgSend_error(v221, v226, v227);
      objc_msgSend_setClientError_(v228, v229, v225);

      v232 = objc_msgSend_error(v221, v230, v231);
      v235 = objc_msgSend_clientError(v232, v233, v234);
      objc_msgSend_setType_(v235, v236, 7);

      v239 = objc_msgSend_error(v221, v237, v238);
      objc_msgSend_setErrorKey_(v239, v240, @"Invalid values in record");

      v243 = objc_msgSend_error(v221, v241, v242);
      objc_msgSend_setErrorDescription_(v243, v244, @"The record could not be encoded because it has invalid values");

      v247 = objc_msgSend_recordPostedBlock(self, v245, v246);

      if (v247)
      {
        v250 = objc_msgSend_recordPostedBlock(self, v248, v249);
        v253 = objc_msgSend_recordID(v10, v251, v252);
        (v250)[2](v250, v253, 0, 0, 0, v221, 0, 0, 0);
LABEL_80:
      }

      v9 = v519;

      v8 = 1;
LABEL_82:

      if (++v9 == v523)
      {
        v523 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v553, v568, 16);
        if (v523)
        {
          goto LABEL_3;
        }

        goto LABEL_84;
      }
    }

    v183 = objc_msgSend_previousProtectionEtag(v10, v181, v182);
    v186 = objc_msgSend_recordSaveRequest(v15, v184, v185);
    objc_msgSend_setRecordProtectionInfoTag_(v186, v187, v183);

    if (objc_msgSend_databaseScope(self, v188, v189) == 2 || objc_msgSend_databaseScope(self, v190, v191) == 3)
    {
      v192 = objc_msgSend_zoneProtectionEtag(v10, v190, v191);
      v195 = objc_msgSend_recordSaveRequest(v15, v193, v194);
      objc_msgSend_setZoneProtectionInfoTag_(v195, v196, v192);

      if (objc_msgSend_hasUpdatedShare(v10, v197, v198))
      {
        v199 = objc_msgSend_shareEtag(v10, v190, v191);
        v202 = objc_msgSend_recordSaveRequest(v15, v200, v201);
        objc_msgSend_setShareEtag_(v202, v203, v199);

        v204 = objc_opt_new();
        v207 = objc_msgSend_recordSaveRequest(v15, v205, v206);
        objc_msgSend_setShareIDUpdate_(v207, v208, v204);

        v213 = objc_msgSend_share(v10, v209, v210);
        if (v213)
        {
          v214 = objc_msgSend_translator(self, v211, v212);
          v511 = objc_msgSend_share(v10, v215, v216);
          objc_msgSend_recordID(v511, v217, v218);
          v510 = v512 = v214;
          v220 = objc_msgSend_pShareIdentifierFromRecordID_(v214, v219, v510);
          v509 = v220;
        }

        else
        {
          v220 = 0;
        }

        v254 = objc_msgSend_recordSaveRequest(v15, v211, v212);
        v257 = objc_msgSend_shareIDUpdate(v254, v255, v256);
        objc_msgSend_setShareId_(v257, v258, v220);

        if (v213)
        {
        }
      }
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      v259 = objc_msgSend_unitTestOverrides(self, v190, v191);
      v261 = objc_msgSend_objectForKeyedSubscript_(v259, v260, @"NoRecordProtectionInfoOnSaves");

      if (v261)
      {
        v264 = objc_msgSend_recordSaveRequest(v15, v262, v263);
        v267 = objc_msgSend_record(v264, v265, v266);
        objc_msgSend_setProtectionInfo_(v267, v268, 0);
      }

      v269 = objc_msgSend_pcsKeysToRemove(v10, v262, v263);
      if (v269)
      {
        v271 = v269;
        if (objc_msgSend_applyPCSKeysToRemoveForTesting(v10, v190, v270))
        {

LABEL_78:
          v278 = objc_msgSend_protectionEtag(v10, v190, v274);
          v281 = objc_msgSend_pcsKeysToRemove(v10, v279, v280);
          objc_msgSend_setEtag_(v281, v282, v278);

          v529 = objc_msgSend_translator(self, v283, v284);
          v287 = objc_msgSend_pcsKeysToRemove(v10, v285, v286);
          v289 = objc_msgSend_pProtectionInfoKeysToRemoveFromPCSKeysToRemove_(v529, v288, v287);
          v292 = objc_msgSend_recordSaveRequest(v15, v290, v291);
          objc_msgSend_record(v292, v293, v294);
          v295 = v135;
          v297 = v296 = v158;
          objc_msgSend_setProtectionInfoKeysToRemove_(v297, v298, v289);

          v158 = v296;
          v135 = v295;

          goto LABEL_79;
        }

        v275 = objc_msgSend_unitTestOverrides(self, v272, v273);
        v277 = objc_msgSend_objectForKeyedSubscript_(v275, v276, @"ApplyPCSKeysToRemoveForTesting");

        if (v277)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_79:
    objc_msgSend_addObject_(v513, v190, v15);
    v301 = objc_msgSend_recordByRequestID(self, v299, v300);
    v304 = objc_msgSend_request(v15, v302, v303);
    v307 = objc_msgSend_operationUUID(v304, v305, v306);
    objc_msgSend_setObject_forKeyedSubscript_(v301, v308, v10, v307);

    v221 = objc_msgSend_recordID(v10, v309, v310);
    v250 = objc_msgSend_recordIDByRequestID(self, v311, v312);
    v253 = objc_msgSend_request(v15, v313, v314);
    v317 = objc_msgSend_operationUUID(v253, v315, v316);
    objc_msgSend_setObject_forKeyedSubscript_(v250, v318, v221, v317);

    goto LABEL_80;
  }

LABEL_84:

  if (objc_msgSend_sendMergeableDeltas(self, v339, v340))
  {
    v542 = 0u;
    v543 = 0u;
    v540 = 0u;
    v541 = 0u;
    v343 = objc_msgSend_records(self, v341, v342);
    v345 = objc_msgSend_countByEnumeratingWithState_objects_count_(v343, v344, &v540, v559, 16);
    if (v345)
    {
      v347 = v345;
      v348 = *v541;
      do
      {
        v349 = v8;
        for (k = 0; k != v347; ++k)
        {
          if (*v541 != v348)
          {
            objc_enumerationMutation(v343);
          }

          v351 = *(*(&v540 + 1) + 8 * k);
          v539 = 0;
          v352 = objc_msgSend_generateMergeableDeltaSaveOperationsForRecord_error_(self, v346, v351, &v539);
          v353 = v539;
          if (v352)
          {
            v355 = v353 == 0;
          }

          else
          {
            v355 = 0;
          }

          if (!v355)
          {
            v507 = v353;
            objc_msgSend_finishWithError_(self, v354, v353);

            v508 = MEMORY[0x277CBEBF8];
            goto LABEL_133;
          }

          objc_msgSend_addObjectsFromArray_(v513, v354, v352);
        }

        v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v343, v346, &v540, v559, 16);
        v8 = v349;
      }

      while (v347);
    }
  }

  v537 = 0u;
  v538 = 0u;
  v535 = 0u;
  v536 = 0u;
  v518 = objc_msgSend_recordIDsToDelete(self, v341, v342);
  v522 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v356, &v535, v558, 16);
  if (v522)
  {
    v520 = *v536;
    v516 = *MEMORY[0x277CBC020];
    while (2)
    {
      v358 = 0;
      do
      {
        if (*v536 != v520)
        {
          objc_enumerationMutation(v518);
        }

        v359 = *(*(&v535 + 1) + 8 * v358);
        v360 = objc_msgSend_operationRequestWithType_(self, v357, 214);
        if (objc_msgSend_requiresCKAnonymousUserIDs(self, v361, v362))
        {
          v365 = objc_msgSend_zoneID(v359, v363, v364);
          v368 = objc_msgSend_anonymousCKUserID(v365, v366, v367);

          if (!v368)
          {
            v489 = objc_opt_new();
            v491 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v490, @"An anonymousCKUserID is required to delete record %@ in the shared database when using anonymous to server share participants", v359);
            objc_msgSend_setObject_forKeyedSubscript_(v489, v492, v491, *MEMORY[0x277CCA450]);
            v495 = objc_msgSend_operation(self, v493, v494);
            v498 = objc_msgSend_topmostParentOperation(v495, v496, v497);
            v501 = objc_msgSend_operationID(v498, v499, v500);

            if (v501)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v489, v502, v501, *MEMORY[0x277CBBF60]);
            }

            v503 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v502, *MEMORY[0x277CBC120], 5015, v489);
            objc_msgSend_finishWithError_(self, v504, v503);

            v488 = v518;
            goto LABEL_132;
          }

          v371 = objc_msgSend_zoneID(v359, v369, v370);
          v374 = objc_msgSend_anonymousCKUserID(v371, v372, v373);
          v377 = objc_msgSend_CKDPIdentifier_User(v374, v375, v376);
          v380 = objc_msgSend_request(v360, v378, v379);
          objc_msgSend_setAnonymousCKUserID_(v380, v381, v377);
        }

        v526 = v358;
        v530 = v8;
        v382 = objc_opt_new();
        objc_msgSend_setRecordDeleteRequest_(v360, v383, v382);

        v386 = objc_msgSend_translator(self, v384, v385);
        v388 = objc_msgSend_pRecordIdentifierFromRecordID_(v386, v387, v359);
        v391 = objc_msgSend_recordDeleteRequest(v360, v389, v390);
        objc_msgSend_setRecordIdentifier_(v391, v392, v388);

        v395 = objc_msgSend_pluginFieldsForRecordDeletesByID(self, v393, v394);
        v524 = v359;
        v397 = objc_msgSend_objectForKeyedSubscript_(v395, v396, v359);

        v533 = 0u;
        v534 = 0u;
        v531 = 0u;
        v532 = 0u;
        v398 = v397;
        v400 = objc_msgSend_countByEnumeratingWithState_objects_count_(v398, v399, &v531, v557, 16);
        if (v400)
        {
          v403 = v400;
          v404 = *v532;
          do
          {
            for (m = 0; m != v403; ++m)
            {
              if (*v532 != v404)
              {
                objc_enumerationMutation(v398);
              }

              v406 = *(*(&v531 + 1) + 8 * m);
              v407 = objc_msgSend_recordDeleteRequest(v360, v401, v402);
              v410 = objc_msgSend_translator(self, v408, v409);
              v412 = objc_msgSend_objectForKeyedSubscript_(v398, v411, v406);
              v414 = objc_msgSend_pFieldWithKey_value_(v410, v413, v406, v412);
              objc_msgSend_addPluginFields_(v407, v415, v414);
            }

            v403 = objc_msgSend_countByEnumeratingWithState_objects_count_(v398, v401, &v531, v557, 16);
          }

          while (v403);
        }

        if (objc_msgSend_oplock(self, v416, v417))
        {
          v420 = objc_msgSend_recordIDsToDeleteToEtags(self, v418, v419);
          v422 = objc_msgSend_objectForKeyedSubscript_(v420, v421, v524);

          if (v422)
          {
            v423 = objc_msgSend_recordIDsToDeleteToEtags(self, v418, v419);
            v425 = objc_msgSend_objectForKeyedSubscript_(v423, v424, v524);
            v428 = objc_msgSend_recordDeleteRequest(v360, v426, v427);
            objc_msgSend_setEtag_(v428, v429, v425);
          }
        }

        if ((v530 & 1) == 0)
        {
          v430 = objc_msgSend_header(v360, v418, v419);

          if (!v430)
          {
            v433 = objc_opt_new();
            objc_msgSend_setHeader_(v360, v434, v433);
          }

          v435 = objc_msgSend_clientChangeTokenData(self, v431, v432);
          v438 = objc_msgSend_header(v360, v436, v437);
          objc_msgSend_setClientChangeToken_(v438, v439, v435);
        }

        if (objc_msgSend_markAsParticipantNeedsNewInvitationToken(self, v418, v419))
        {
          v442 = objc_msgSend_recordName(v524, v440, v441);
          isEqualToString = objc_msgSend_isEqualToString_(v442, v443, v516);

          if (isEqualToString)
          {
            v446 = objc_msgSend_recordDeleteRequest(v360, v440, v445);
            objc_msgSend_setParticipantKeyLost_(v446, v447, 1);

            v450 = objc_msgSend_userPublicKeys(self, v448, v449);
            v453 = objc_msgSend_mutableCopy(v450, v451, v452);
            v456 = objc_msgSend_recordDeleteRequest(v360, v454, v455);
            objc_msgSend_setPublicKeys_(v456, v457, v453);
          }
        }

        objc_msgSend_addObject_(v513, v440, v360);
        v460 = objc_msgSend_recordIDByRequestID(self, v458, v459);
        v463 = objc_msgSend_request(v360, v461, v462);
        v466 = objc_msgSend_operationUUID(v463, v464, v465);
        objc_msgSend_setObject_forKeyedSubscript_(v460, v467, v524, v466);

        v358 = v526 + 1;
        LOBYTE(v8) = 1;
      }

      while (v526 + 1 != v522);
      v522 = objc_msgSend_countByEnumeratingWithState_objects_count_(v518, v357, &v535, v558, 16);
      if (v522)
      {
        continue;
      }

      break;
    }
  }

  v508 = v513;
LABEL_133:

  v505 = *MEMORY[0x277D85DE8];

  return v508;
}

- (id)generateMergeableDeltaSaveOperationsForRecord:(id)record error:(id *)error
{
  v216 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v188 = objc_opt_new();
  v6 = objc_opt_new();
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v192 = recordCopy;
  v9 = objc_msgSend_allKeys(recordCopy, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v207, v215, 16);
  selfCopy = self;
  if (v11)
  {
    v14 = v11;
    v15 = *v208;
    v176 = *MEMORY[0x277CBC120];
    v16 = 0x277CBC000uLL;
    *&v13 = 138412290;
    v174 = v13;
    v177 = *v208;
    v178 = v9;
    do
    {
      v17 = 0;
      v179 = v14;
      do
      {
        if (*v208 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v207 + 1) + 8 * v17);
        v19 = objc_msgSend_objectForKeyedSubscript_(v192, v12, v18, v174);
        v22 = v19;
        if (v19)
        {
          v23 = v19;
        }

        else
        {
          v24 = objc_msgSend_encryptedValues(v192, v20, v21);
          objc_msgSend_objectForKeyedSubscript_(v24, v25, v18);
          v26 = v16;
          v27 = v15;
          v28 = v9;
          v30 = v29 = v18;

          v23 = v30;
          v18 = v29;
          v9 = v28;
          v15 = v27;
          v16 = v26;
          v14 = v179;
        }

        v31 = *(v16 + 1136);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_39;
        }

        v180 = v23;
        v181 = v17;
        v32 = v23;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        obj = objc_msgSend_deltasToSave(v32, v33, v34);
        v194 = v32;
        v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v203, v214, 16);
        if (!v191)
        {
          v37 = 0;
          goto LABEL_31;
        }

        v189 = v18;
        v37 = 0;
        v190 = *v204;
        while (2)
        {
          v38 = 0;
          v39 = v37;
          do
          {
            if (*v204 != v190)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v203 + 1) + 8 * v38);
            v41 = objc_msgSend_operationRequestWithType_(self, v36, 311);
            v42 = objc_opt_new();
            v45 = objc_msgSend_translator(self, v43, v44);
            v48 = objc_msgSend_valueID(v32, v46, v47);
            v50 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v45, v49, v48);
            objc_msgSend_setIdentifier_(v42, v51, v50);

            self = selfCopy;
            v196 = v42;
            objc_msgSend_setMergeableDeltaSaveRequest_(v41, v52, v42);
            v55 = objc_msgSend_translator(selfCopy, v53, v54);
            v202 = v39;
            v57 = objc_msgSend_pMergeableDeltaFromDelta_error_(v55, v56, v40, &v202);
            v195 = v202;

            if (*MEMORY[0x277CBC810] == 1)
            {
              v60 = objc_msgSend_unitTestOverrides(selfCopy, v58, v59);
              v62 = objc_msgSend_objectForKeyedSubscript_(v60, v61, @"FakeErrorDuringMergeableProtoGenerationDeltasToSave");

              if (v62)
              {

                v37 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v129, v176, 1000, @"This is a fake error");

                goto LABEL_26;
              }

              v65 = objc_msgSend_unitTestOverrides(selfCopy, v63, v64);
              v67 = objc_msgSend_objectForKeyedSubscript_(v65, v66, @"FakeInvalidMergeableValueID");

              if (v67)
              {
                v184 = objc_msgSend_translator(selfCopy, v58, v68);
                v182 = objc_alloc(MEMORY[0x277CBC478]);
                v186 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v69, v70);
                v183 = objc_msgSend_UUIDString(v186, v71, v72);
                v185 = objc_msgSend_valueID(v194, v73, v74);
                v77 = objc_msgSend_recordID(v185, v75, v76);
                v80 = objc_msgSend_valueID(v194, v78, v79);
                v83 = objc_msgSend_key(v80, v81, v82);
                v86 = objc_msgSend_valueID(v194, v84, v85);
                isEncrypted = objc_msgSend_isEncrypted(v86, v87, v88);
                v91 = objc_msgSend_initWithName_recordID_key_encrypted_(v182, v90, v183, v77, v83, isEncrypted);
                v93 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v184, v92, v91);
                objc_msgSend_setIdentifier_(v196, v94, v93);

                self = selfCopy;
              }
            }

            if (!v57)
            {
              v37 = v195;
LABEL_26:
              v32 = v194;
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v130 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
              {
                *buf = v174;
                v213 = v37;
                _os_log_fault_impl(&dword_22506F000, v130, OS_LOG_TYPE_FAULT, "Failed to get data from delta for delta save request with error: %@", buf, 0xCu);
              }

              goto LABEL_31;
            }

            objc_msgSend_setDelta_(v196, v58, v57);
            objc_msgSend_addObject_(v188, v95, v41);
            v98 = objc_msgSend_recordByRequestID(self, v96, v97);
            v101 = objc_msgSend_request(v41, v99, v100);
            v104 = objc_msgSend_operationUUID(v101, v102, v103);
            objc_msgSend_setObject_forKeyedSubscript_(v98, v105, v192, v104);

            v108 = objc_msgSend_recordID(v192, v106, v107);
            v111 = objc_msgSend_recordIDByRequestID(self, v109, v110);
            v114 = objc_msgSend_request(v41, v112, v113);
            v117 = objc_msgSend_operationUUID(v114, v115, v116);
            objc_msgSend_setObject_forKeyedSubscript_(v111, v118, v108, v117);

            v121 = objc_msgSend_mergeableFieldKeyByRequestID(self, v119, v120);
            v124 = objc_msgSend_request(v41, v122, v123);
            v127 = objc_msgSend_operationUUID(v124, v125, v126);
            objc_msgSend_setObject_forKeyedSubscript_(v121, v128, v189, v127);

            ++v38;
            v32 = v194;
            v37 = v195;
            v39 = v195;
          }

          while (v191 != v38);
          v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v203, v214, 16);
          if (v191)
          {
            continue;
          }

          break;
        }

LABEL_31:

        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v133 = objc_msgSend_pendingReplacementRequests(v32, v131, v132);
        v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v134, &v198, v211, 16);
        v16 = 0x277CBC000;
        v17 = v181;
        if (v135)
        {
          v137 = v135;
          v138 = *v199;
          do
          {
            for (i = 0; i != v137; ++i)
            {
              if (*v199 != v138)
              {
                objc_enumerationMutation(v133);
              }

              objc_msgSend_addObject_(v6, v136, *(*(&v198 + 1) + 8 * i));
            }

            v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v136, &v198, v211, 16);
          }

          while (v137);
        }

        v140 = v194;
        v15 = v177;
        v9 = v178;
        v14 = v179;
        v23 = v180;
        if (v37)
        {

          goto LABEL_56;
        }

LABEL_39:

        ++v17;
      }

      while (v17 != v14);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v207, v215, 16);
    }

    while (v14);
  }

  v197 = 0;
  v9 = objc_msgSend_requestOperationsForRequest_replaceDeltasRequests_ignoreMissingDeltas_error_(CKDReplaceMergeableDeltasURLRequest, v141, self, v6, 1, &v197);
  v37 = v197;
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v142, v143), v144 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v144, v145, @"FakeErrorDuringMergeableProtoGenerationReplacementDeltas"), v146 = objc_claimAutoreleasedReturnValue(), v146, v144, v146))
  {

    v148 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v147, *MEMORY[0x277CBC120], 1000, @"This is a fake error");

    v9 = 0;
    v37 = v148;
  }

  else if (v9)
  {
    errorCopy3 = error;
    if (!v37)
    {
      objc_msgSend_addObjectsFromArray_(v188, v142, v9);
      if (objc_msgSend_count(v9, v150, v151))
      {
        v153 = 0;
        do
        {
          v154 = objc_msgSend_objectAtIndexedSubscript_(v9, v152, v153);
          v156 = objc_msgSend_objectAtIndexedSubscript_(v6, v155, v153);
          v159 = objc_msgSend_replacementRequestsByRequestID(self, v157, v158);
          objc_msgSend_request(v154, v160, v161);
          v163 = v162 = v9;
          v166 = objc_msgSend_operationUUID(v163, v164, v165);
          objc_msgSend_setObject_forKeyedSubscript_(v159, v167, v156, v166);

          self = selfCopy;
          v9 = v162;

          ++v153;
        }

        while (v153 < objc_msgSend_count(v162, v168, v169));
        v37 = 0;
        errorCopy3 = error;
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_57;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v170 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v213 = v37;
    _os_log_fault_impl(&dword_22506F000, v170, OS_LOG_TYPE_FAULT, "Error generating replacement requests when modifying records: %@", buf, 0xCu);
  }

  v140 = v188;
LABEL_56:
  errorCopy3 = error;

  v188 = 0;
LABEL_57:

  if (errorCopy3)
  {
    v171 = v37;
    *errorCopy3 = v37;
  }

  v172 = *MEMORY[0x277D85DE8];

  return v188;
}

- (id)returnVerificationKeyAndSignatureForRequestOperation:(id)operation dataToBeSigned:(id)signed error:(id *)error
{
  v103 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  signedCopy = signed;
  if ((objc_msgSend_requiresCKAnonymousUserIDs(self, v10, v11) & 1) == 0)
  {
    v89 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v89, v90, a2, self, @"CKDModifyRecordsURLRequest.m", 444, @"Signature is only required for anonymous to server requests");
  }

  v14 = objc_msgSend_recordIDByRequestID(self, v12, v13);
  v17 = objc_msgSend_request(operationCopy, v15, v16);
  v20 = objc_msgSend_operationUUID(v17, v18, v19);
  v22 = objc_msgSend_objectForKeyedSubscript_(v14, v21, v20);

  v25 = objc_msgSend_recordByRequestID(self, v23, v24);
  v28 = objc_msgSend_request(operationCopy, v26, v27);
  v31 = objc_msgSend_operationUUID(v28, v29, v30);
  v33 = objc_msgSend_objectForKeyedSubscript_(v25, v32, v31);

  v36 = objc_msgSend_hasRecordDeleteRequest(operationCopy, v34, v35);
  v39 = MEMORY[0x277CBC880];
  v40 = MEMORY[0x277CBC830];
  if (!v36)
  {
    if (!objc_msgSend_hasRecordSaveRequest(operationCopy, v37, v38))
    {
      v65 = 0;
LABEL_12:
      if (*v39 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v74 = *v40;
      if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v98 = v22;
        _os_log_error_impl(&dword_22506F000, v74, OS_LOG_TYPE_ERROR, "Missing required identity when creating a signature for record %@", buf, 0xCu);
        if (v65)
        {
LABEL_17:
          v71 = 0;
          v64 = 0;
          if (!error)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else if (v65)
      {
        goto LABEL_17;
      }

      v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v75, *MEMORY[0x277CBC120], 2006, @"Missing required identity for generating anonymous to server signature");
      goto LABEL_17;
    }

    v92 = v22;
    errorCopy2 = error;
    v54 = objc_msgSend_signingPCSIdentity(v33, v72, v73);
    CFRetain(v54);
    v55 = 0;
    if (v54)
    {
      goto LABEL_5;
    }

LABEL_10:
    v65 = v55;
    v22 = v92;
    error = errorCopy2;
    v39 = MEMORY[0x277CBC880];
    goto LABEL_12;
  }

  errorCopy2 = error;
  v41 = objc_msgSend_container(self, v37, v38);
  objc_msgSend_pcsManager(v41, v42, v43);
  v44 = v40;
  v46 = v45 = v22;
  objc_msgSend_recordIDsToDeleteToSigningPCSIdentity(self, v47, v48);
  v50 = v49 = v33;
  v92 = v45;
  v52 = objc_msgSend_objectForKeyedSubscript_(v50, v51, v45);
  v96 = 0;
  v54 = objc_msgSend_createSharingIdentityFromData_error_(v46, v53, v52, &v96);
  v55 = v96;

  v40 = v44;
  v33 = v49;

  if (!v54)
  {
    goto LABEL_10;
  }

LABEL_5:
  v58 = v40;
  v59 = objc_msgSend_container(self, v56, v57, v33);
  v62 = objc_msgSend_pcsManager(v59, v60, v61);
  v95 = v55;
  v64 = objc_msgSend_createSignatureWithIdentity_dataToBeSigned_forScope_error_(v62, v63, v54, signedCopy, 6, &v95);
  v65 = v95;

  if (!objc_msgSend_length(v64, v66, v67) || v65)
  {
    v40 = v58;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = v91;
    v22 = v92;
    v80 = *v58;
    error = errorCopy2;
    if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v98 = v54;
      v99 = 2112;
      v100 = v65;
      _os_log_error_impl(&dword_22506F000, v80, OS_LOG_TYPE_ERROR, "Couldn't generate a request signature with signing identity %{public}@ because we got an error from PCS: %@", buf, 0x16u);
    }

    v71 = 0;
  }

  else
  {
    v68 = objc_alloc(MEMORY[0x277CBC7A0]);
    v69 = PCSIdentityCopyExportedPublicKey();
    v71 = objc_msgSend_initWithObject1_object2_(v68, v70, v69, v64);

    v22 = v92;
    error = errorCopy2;
    v33 = v91;
    v40 = v58;
  }

  CFRelease(v54);
  v39 = MEMORY[0x277CBC880];
  if (error)
  {
LABEL_18:
    v76 = v65;
    *error = v65;
  }

LABEL_19:
  if (*v39 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v77 = *v40;
  if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
  {
    v81 = v33;
    v82 = v77;
    v85 = objc_msgSend_v1(v71, v83, v84);
    v88 = objc_msgSend_v2(v71, v86, v87);
    *buf = 138412802;
    v98 = v85;
    v99 = 2112;
    v100 = v88;
    v101 = 2112;
    v102 = signedCopy;
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Signature generated. key: %@, signature: %@, data: %@", buf, 0x20u);

    v33 = v81;
  }

  v78 = *MEMORY[0x277D85DE8];

  return v71;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v217 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_msgSend_recordIDByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(objectCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!objc_msgSend_hasRecordSaveResponse(objectCopy, v17, v18))
  {
    if (objc_msgSend_hasRecordDeleteResponse(objectCopy, v19, v20))
    {
      objc_msgSend_updateShareIDCacheWithDeletedRecordID_(self, v57, v16);
    }

    else
    {
      if (objc_msgSend_hasMergeableDeltaSaveResponse(objectCopy, v57, v58))
      {
        v70 = objc_msgSend_mergeableFieldKeyByRequestID(self, v68, v69);
        v73 = objc_msgSend_response(objectCopy, v71, v72);
        v76 = objc_msgSend_operationUUID(v73, v74, v75);
        v78 = objc_msgSend_objectForKeyedSubscript_(v70, v77, v76);

        v81 = objc_msgSend_mergeableDeltaSavedBlock(self, v79, v80);

        if (v81)
        {
          v84 = objc_msgSend_mergeableDeltaSavedBlock(self, v82, v83);
          v87 = objc_msgSend_result(objectCopy, v85, v86);
          (v84)[2](v84, v16, v78, v87);
        }

        goto LABEL_46;
      }

      if (objc_msgSend_hasMergeableDeltaReplaceResponse(objectCopy, v68, v69))
      {
        v177 = objc_msgSend_replacementRequestsByRequestID(self, v59, v60);
        v180 = objc_msgSend_response(objectCopy, v178, v179);
        v183 = objc_msgSend_operationUUID(v180, v181, v182);
        v185 = objc_msgSend_objectForKeyedSubscript_(v177, v184, v183);

        if (!v185)
        {
          v201 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v186, v187);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v201, v202, a2, self, @"CKDModifyRecordsURLRequest.m", 547, @"Expected non-nil replacement request for response %@", objectCopy);
        }

        v188 = objc_msgSend_replacedDeltasBlock(self, v186, v187);

        if (v188)
        {
          v191 = objc_msgSend_replacedDeltasBlock(self, v189, v190);
          v194 = objc_msgSend_result(objectCopy, v192, v193);
          (v191)[2](v191, v185, v194);
        }

        goto LABEL_46;
      }
    }

    v61 = objc_msgSend_recordPostedBlock(self, v59, v60);

    if (v61)
    {
      v64 = objc_msgSend_recordPostedBlock(self, v62, v63);
      v67 = objc_msgSend_result(objectCopy, v65, v66);
      (v64)[2](v64, v16, 0, 0, 0, v67, 0, 0, 0);
    }

LABEL_46:
    v176 = 0;
    goto LABEL_47;
  }

  v21 = objc_msgSend_recordByRequestID(self, v19, v20);
  v24 = objc_msgSend_response(objectCopy, v22, v23);
  v27 = objc_msgSend_operationUUID(v24, v25, v26);
  v209 = objc_msgSend_objectForKeyedSubscript_(v21, v28, v27);

  v31 = objc_msgSend_result(objectCopy, v29, v30);
  v34 = objc_msgSend_error(v31, v32, v33);
  v37 = objc_msgSend_clientError(v34, v35, v36);
  v40 = objc_msgSend_oplockFailure(v37, v38, v39);
  v43 = objc_msgSend_recordForOplockFailure(v40, v41, v42);

  v208 = v43;
  if (v43)
  {
    v46 = objc_msgSend_translator(self, v44, v45);
    v49 = objc_msgSend_zoneID(v16, v47, v48);
    v52 = objc_msgSend_anonymousCKUserID(v49, v50, v51);
    v212 = 0;
    v54 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v46, v53, v208, v52, &v212);
    v55 = v212;

    v207 = v55;
    if (v54 || !v55)
    {
      v206 = v54;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v214 = v55;
        _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "Invalid data from server in response to modifyRecords request: %@", buf, 0xCu);
      }

      v206 = 0;
    }
  }

  else
  {
    v206 = 0;
    v207 = 0;
  }

  v88 = objc_msgSend_translator(self, v44, v45);
  v91 = objc_msgSend_sendAllFields(self, v89, v90);
  v211 = 0;
  v93 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v88, v92, v209, v91, 0, &v211);
  v205 = v211;

  v96 = objc_msgSend_translator(self, v94, v95);
  v99 = objc_msgSend_recordSaveResponse(objectCopy, v97, v98);
  v102 = objc_msgSend_serverFields(v99, v100, v101);
  v105 = objc_msgSend_zoneID(v16, v103, v104);
  v108 = objc_msgSend_anonymousCKUserID(v105, v106, v107);
  v210 = 0;
  v110 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v96, v109, v102, v108, &v210);
  v111 = v210;

  v113 = MEMORY[0x277CBC860];
  if (v111)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v114 = v110;
    v115 = *v113;
    if (os_log_type_enabled(*v113, OS_LOG_TYPE_DEBUG))
    {
      v118 = v115;
      v121 = objc_msgSend_requestUUID(self, v119, v120);
      *buf = 138543618;
      v214 = v121;
      v215 = 2112;
      v216 = v111;
      _os_log_debug_impl(&dword_22506F000, v118, OS_LOG_TYPE_DEBUG, "req: %{public}@, Error parsing server record returned for save: %@", buf, 0x16u);
    }
  }

  else
  {
    objc_msgSend_updateShareIDCacheWithRecord_(self, v112, v110);
    v114 = v110;
  }

  v122 = objc_msgSend_fakeResponseOperationResultByItemID(self, v116, v117);

  if (v122)
  {
    v125 = objc_msgSend_fakeResponseOperationResultByItemID(self, v123, v124);
    v127 = objc_msgSend_objectForKeyedSubscript_(v125, v126, v16);

    if (v127)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v128 = *v113;
      if (os_log_type_enabled(*v113, OS_LOG_TYPE_ERROR))
      {
        v197 = v128;
        v200 = objc_msgSend_requestUUID(self, v198, v199);
        *buf = 138543618;
        v214 = v200;
        v215 = 2114;
        v216 = v16;
        _os_log_error_impl(&dword_22506F000, v197, OS_LOG_TYPE_ERROR, "req: %{public}@, Inlining fake response operation result for item id %{public}@", buf, 0x16u);
      }

      objc_msgSend_setResult_(objectCopy, v129, v127);
    }
  }

  v130 = objc_msgSend_container(self, v123, v124);
  v133 = objc_msgSend_entitlements(v130, v131, v132);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v133, v134, v135);
  objc_msgSend_setSerializeProtectionData_(v114, v137, hasProtectionDataEntitlement);

  v140 = objc_msgSend_recordSaveResponse(objectCopy, v138, v139);
  LODWORD(v133) = objc_msgSend_hasExpirationTime(v140, v141, v142);

  if (v133)
  {
    v145 = objc_msgSend_recordSaveResponse(objectCopy, v143, v144);
    v148 = objc_msgSend_expirationTime(v145, v146, v147);
    objc_msgSend_time(v148, v149, v150);
    v152 = v151;

    v155 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v153, v154, v152);
  }

  else
  {
    v155 = 0;
  }

  v156 = objc_msgSend_recordPostedBlock(self, v143, v144);

  v159 = v205;
  if (v156)
  {
    v160 = objc_msgSend_recordPostedBlock(self, v157, v158);
    v203 = objc_msgSend_recordSaveResponse(objectCopy, v161, v162);
    v165 = objc_msgSend_etag(v203, v163, v164);
    objc_msgSend_recordSaveResponse(objectCopy, v166, v167);
    v204 = v111;
    v169 = v168 = v114;
    v172 = objc_msgSend_timeStatistics(v169, v170, v171);
    v175 = objc_msgSend_result(objectCopy, v173, v174);
    (v160)[2](v160, v16, v165, v172, v155, v175, v205, v206, v168);

    v114 = v168;
    v111 = v204;

    v159 = v205;
  }

  v176 = v207;
LABEL_47:

  v195 = *MEMORY[0x277D85DE8];

  return v176;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v91 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_recordIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_mergeableFieldKeyByRequestID(self, v16, v17);
  v21 = objc_msgSend_response(failureCopy, v19, v20);
  v24 = objc_msgSend_operationUUID(v21, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v18, v25, v24);

  v29 = objc_msgSend_replacementRequestsByRequestID(self, v27, v28);
  v32 = objc_msgSend_response(failureCopy, v30, v31);
  v35 = objc_msgSend_operationUUID(v32, v33, v34);
  v37 = objc_msgSend_objectForKeyedSubscript_(v29, v36, v35);

  if (v26)
  {
    v40 = objc_msgSend_mergeableDeltaSavedBlock(self, v38, v39);

    if (v40)
    {
      v43 = objc_msgSend_mergeableDeltaSavedBlock(self, v41, v42);
      v46 = objc_msgSend_result(failureCopy, v44, v45);
      (v43)[2](v43, v15, v26, v46);
LABEL_7:
    }
  }

  else if (v37)
  {
    v47 = objc_msgSend_replacedDeltasBlock(self, v38, v39);

    if (v47)
    {
      v43 = objc_msgSend_replacedDeltasBlock(self, v48, v49);
      v46 = objc_msgSend_result(failureCopy, v50, v51);
      (v43[2])(v43, v37, v46);
      goto LABEL_7;
    }
  }

  else
  {
    v52 = objc_msgSend_result(failureCopy, v38, v39);
    v55 = objc_msgSend_error(v52, v53, v54);
    v58 = objc_msgSend_clientError(v55, v56, v57);
    v61 = objc_msgSend_oplockFailure(v58, v59, v60);
    v64 = objc_msgSend_recordForOplockFailure(v61, v62, v63);

    v65 = v64;
    if (v64)
    {
      v68 = objc_msgSend_translator(self, v66, v67);
      v71 = objc_msgSend_zoneID(v15, v69, v70);
      v74 = objc_msgSend_anonymousCKUserID(v71, v72, v73);
      v87 = v65;
      v88 = 0;
      v76 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v68, v75, v65, v74, &v88);
      v77 = v88;

      if (!v76 && v77)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v78 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v90 = v77;
          _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "Invalid data from server in response to modifyRecords request: %@", buf, 0xCu);
        }
      }

      v65 = v87;
    }

    else
    {
      v76 = 0;
    }

    v79 = objc_msgSend_recordPostedBlock(self, v66, v67);

    if (v79)
    {
      v82 = objc_msgSend_recordPostedBlock(self, v80, v81);
      v85 = objc_msgSend_result(failureCopy, v83, v84);
      (v82)[2](v82, v15, 0, 0, 0, v85, 0, v76, 0);
    }
  }

  v86 = *MEMORY[0x277D85DE8];
}

- (void)requestDidComplete
{
  v56 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_skippedRecordsWithPurelyMergeableChanges(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v47, v55, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v48;
    do
    {
      v10 = 0;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = objc_msgSend_translator(self, v6, v7);
        v15 = objc_msgSend_sendAllFields(self, v13, v14);
        v46 = 0;
        v17 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v12, v16, v11, v15, 0, &v46);
        v18 = v46;

        v21 = objc_msgSend_recordPostedBlock(self, v19, v20);

        if (v21)
        {
          v22 = objc_opt_new();
          objc_msgSend_setCode_(v22, v23, 1);
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v24 = *MEMORY[0x277CBC860];
          if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
          {
            v37 = v24;
            v40 = objc_msgSend_requestUUID(self, v38, v39);
            v43 = objc_msgSend_recordID(v11, v41, v42);
            *buf = 138543618;
            v52 = v40;
            v53 = 2112;
            v54 = v43;
            _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "req: %{public}@, Will call record save block for skipped record %@", buf, 0x16u);
          }

          v27 = objc_msgSend_recordPostedBlock(self, v25, v26);
          v30 = objc_msgSend_recordID(v11, v28, v29);
          v33 = objc_msgSend_etag(v11, v31, v32);
          v36 = objc_msgSend_expirationDate(v11, v34, v35);
          (v27)[2](v27, v30, v33, 0, v36, v22, v18, 0, 0);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v47, v55, 16);
    }

    while (v8);
  }

  v44 = *MEMORY[0x277D85DE8];
}

@end
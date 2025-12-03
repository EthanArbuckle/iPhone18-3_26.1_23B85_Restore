@interface CKDMovePhotosURLRequest
- (CKDMovePhotosURLRequest)initWithOperation:(id)operation moveChanges:(id)changes sourceDatabaseScope:(int64_t)scope atomic:(BOOL)atomic;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)zones;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (int)isolationLevel;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDMovePhotosURLRequest

- (CKDMovePhotosURLRequest)initWithOperation:(id)operation moveChanges:(id)changes sourceDatabaseScope:(int64_t)scope atomic:(BOOL)atomic
{
  changesCopy = changes;
  v19.receiver = self;
  v19.super_class = CKDMovePhotosURLRequest;
  v12 = [(CKDURLRequest *)&v19 initWithOperation:operation];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_moveChanges, changes);
    v13->_sourceDatabaseScope = scope;
    v13->_atomic = atomic;
    v14 = objc_opt_new();
    recordIDByRequestID = v13->_recordIDByRequestID;
    v13->_recordIDByRequestID = v14;

    v16 = objc_opt_new();
    recordByRequestID = v13->_recordByRequestID;
    v13->_recordByRequestID = v16;
  }

  return v13;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v22.receiver = self;
  v22.super_class = CKDMovePhotosURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v22 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_moveChanges(self, v6, v7, v22.receiver, v22.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"moveChanges");
  v15 = MEMORY[0x277CCABB0];
  v18 = objc_msgSend_sourceDatabaseScope(self, v16, v17);
  v20 = objc_msgSend_numberWithInteger_(v15, v19, v18);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v21, v20, @"sourceDatabaseScope");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_moveChanges(self, v5, v6);
  v9 = objc_msgSend_CKCompactMap_(v7, v8, &unk_28385E560);

  v12 = objc_msgSend_moveChanges(self, v10, v11);
  v14 = objc_msgSend_CKCompactMap_(v12, v13, &unk_28385E580);
  v16 = objc_msgSend_CKCompactMap_(v14, v15, &unk_28385E5A0);

  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v17, v16);
  objc_msgSend_setDeleteRecordIDs_(propertiesCopy, v18, v9);
  v19.receiver = self;
  v19.super_class = CKDMovePhotosURLRequest;
  [(CKDURLRequest *)&v19 fillOutRequestProperties:propertiesCopy];
}

- (id)recordIDsUsedInZones:(id)zones
{
  v48 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v5 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = objc_msgSend_moveChanges(self, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v43, v47, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = objc_msgSend_sourceRecordID(v15, v10, v11);
        v19 = objc_msgSend_zoneID(v16, v17, v18);
        v21 = objc_msgSend_containsObject_(zonesCopy, v20, v19);

        if (v21)
        {
          v24 = objc_msgSend_sourceRecordID(v15, v22, v23);
          objc_msgSend_addObject_(v5, v25, v24);
        }

        v26 = objc_msgSend_destinationRecord(v15, v22, v23);
        v29 = objc_msgSend_recordID(v26, v27, v28);
        v32 = objc_msgSend_zoneID(v29, v30, v31);
        v34 = objc_msgSend_containsObject_(zonesCopy, v33, v32);

        if (v34)
        {
          v35 = objc_msgSend_destinationRecord(v15, v10, v11);
          v38 = objc_msgSend_recordID(v35, v36, v37);
          objc_msgSend_addObject_(v5, v39, v38);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v43, v47, 16);
    }

    while (v12);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)zoneIDsToLock
{
  v3 = objc_msgSend_moveChanges(self, a2, v2);
  v5 = objc_msgSend_CKFlatMap_(v3, v4, &unk_28385E5C0);

  v7 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v6, v5);
  v10 = objc_msgSend_allObjects(v7, v8, v9);

  return v10;
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

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
  v171 = *MEMORY[0x277D85DE8];
  v163 = objc_opt_new();
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = objc_msgSend_moveChanges(self, v3, v4);
  v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v166, v170, 16);
  if (v165)
  {
    v164 = *v167;
    do
    {
      for (i = 0; i != v165; ++i)
      {
        if (*v167 != v164)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v166 + 1) + 8 * i);
        v10 = objc_msgSend_destinationRecord(v9, v6, v7);
        v13 = objc_msgSend_operationType(self, v11, v12);
        v15 = objc_msgSend_operationRequestWithType_(self, v14, v13);
        v16 = objc_opt_new();
        objc_msgSend_setRecordMoveRequest_(v15, v17, v16);

        v20 = objc_msgSend_recordMoveRequest(v15, v18, v19);
        v21 = 1;
        objc_msgSend_setMerge_(v20, v22, 1);

        v25 = objc_msgSend_translator(self, v23, v24);
        v28 = objc_msgSend_sourceRecordID(v9, v26, v27);
        v30 = objc_msgSend_pRecordIdentifierFromRecordID_(v25, v29, v28);
        v33 = objc_msgSend_recordMoveRequest(v15, v31, v32);
        objc_msgSend_setOriginId_(v33, v34, v30);

        v37 = objc_msgSend_sourceDatabaseScope(self, v35, v36);
        if (v37 <= 4)
        {
          v21 = dword_225448010[v37];
        }

        v40 = objc_msgSend_recordMoveRequest(v15, v38, v39);
        v43 = objc_msgSend_originId(v40, v41, v42);
        v46 = objc_msgSend_zoneIdentifier(v43, v44, v45);
        objc_msgSend_setDatabaseType_(v46, v47, v21);

        v50 = objc_msgSend_sourceRecordChangeTag(v9, v48, v49);
        v53 = objc_msgSend_recordMoveRequest(v15, v51, v52);
        objc_msgSend_setOriginEtag_(v53, v54, v50);

        v57 = objc_msgSend_translator(self, v55, v56);
        v59 = objc_msgSend_deltaPRecordFromRecord_withAllFields_outDeletedMergeFields_outKeysToSend_(v57, v58, v10, 1, 0, 0);
        v62 = objc_msgSend_recordMoveRequest(v15, v60, v61);
        objc_msgSend_setDestinationRecord_(v62, v63, v59);

        v66 = objc_msgSend_etag(v10, v64, v65);
        v69 = objc_msgSend_recordMoveRequest(v15, v67, v68);
        objc_msgSend_setDestinationEtag_(v69, v70, v66);

        LODWORD(v66) = objc_msgSend_isKnownToServer(v10, v71, v72);
        v75 = objc_msgSend_recordMoveRequest(v15, v73, v74);
        v77 = v75;
        if (v66)
        {
          objc_msgSend_setSemantics_(v75, v76, 2);
        }

        else
        {
          objc_msgSend_setSemantics_(v75, v76, 1);
        }

        v80 = objc_msgSend_previousProtectionEtag(v10, v78, v79);
        v83 = objc_msgSend_recordMoveRequest(v15, v81, v82);
        objc_msgSend_setDestinationRecordProtectionInfoTag_(v83, v84, v80);

        if (objc_msgSend_databaseScope(self, v85, v86) == 2 || objc_msgSend_databaseScope(self, v87, v88) == 3)
        {
          v89 = objc_msgSend_zoneProtectionEtag(v10, v87, v88);
          v92 = objc_msgSend_recordMoveRequest(v15, v90, v91);
          objc_msgSend_setDestinationZoneProtectionInfoTag_(v92, v93, v89);
        }

        if (*MEMORY[0x277CBC810] == 1)
        {
          v94 = objc_msgSend_unitTestOverrides(self, v87, v88);
          v96 = objc_msgSend_objectForKeyedSubscript_(v94, v95, @"NoRecordProtectionInfoOnSaves");

          if (v96)
          {
            v97 = objc_msgSend_recordMoveRequest(v15, v87, v88);
            v100 = objc_msgSend_destinationRecord(v97, v98, v99);
            objc_msgSend_setProtectionInfo_(v100, v101, 0);
          }
        }

        v102 = objc_msgSend_recordMoveRequest(v15, v87, v88);
        v105 = objc_msgSend_destinationRecord(v102, v103, v104);

        if (v105)
        {
          objc_msgSend_addObject_(v163, v106, v15);
          v109 = objc_msgSend_recordByRequestID(self, v107, v108);
          v112 = objc_msgSend_request(v15, v110, v111);
          v115 = objc_msgSend_operationUUID(v112, v113, v114);
          objc_msgSend_setObject_forKeyedSubscript_(v109, v116, v10, v115);

          v119 = objc_msgSend_recordID(v10, v117, v118);
          v122 = objc_msgSend_recordIDByRequestID(self, v120, v121);
          v125 = objc_msgSend_request(v15, v123, v124);
          v128 = objc_msgSend_operationUUID(v125, v126, v127);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v129, v119, v128);
        }

        else
        {
          v119 = objc_opt_new();
          objc_msgSend_setCode_(v119, v130, 3);
          v131 = objc_opt_new();
          objc_msgSend_setError_(v119, v132, v131);

          v133 = objc_opt_new();
          v136 = objc_msgSend_error(v119, v134, v135);
          objc_msgSend_setClientError_(v136, v137, v133);

          v140 = objc_msgSend_error(v119, v138, v139);
          v143 = objc_msgSend_clientError(v140, v141, v142);
          objc_msgSend_setType_(v143, v144, 7);

          v147 = objc_msgSend_error(v119, v145, v146);
          objc_msgSend_setErrorKey_(v147, v148, @"Invalid values in record");

          v151 = objc_msgSend_error(v119, v149, v150);
          objc_msgSend_setErrorDescription_(v151, v152, @"The record could not be encoded because it has invalid values");

          v155 = objc_msgSend_recordPostedBlock(self, v153, v154);

          if (!v155)
          {
            goto LABEL_22;
          }

          v122 = objc_msgSend_recordPostedBlock(self, v156, v157);
          v125 = objc_msgSend_recordID(v10, v158, v159);
          (v122)[2](v122, v119, v125, 0, 0, 0);
        }

LABEL_22:
      }

      v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v166, v170, 16);
    }

    while (v165);
  }

  v160 = *MEMORY[0x277D85DE8];

  return v163;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v159 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_recordIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  if (objc_msgSend_hasRecordMoveResponse(objectCopy, v16, v17))
  {
    v20 = objc_msgSend_result(objectCopy, v18, v19);
    v23 = objc_msgSend_error(v20, v21, v22);
    v26 = objc_msgSend_clientError(v23, v24, v25);
    v29 = objc_msgSend_oplockFailure(v26, v27, v28);
    v32 = objc_msgSend_recordForOplockFailure(v29, v30, v31);

    v151 = v32;
    if (v32)
    {
      v35 = objc_msgSend_translator(self, v33, v34);
      v38 = objc_msgSend_zoneID(v15, v36, v37);
      v41 = objc_msgSend_anonymousCKUserID(v38, v39, v40);
      v154 = 0;
      v43 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v35, v42, v32, v41, &v154);
      v44 = v154;

      v150 = v44;
      if (v43 || !v44)
      {
        v149 = v43;
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v45 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v156 = v44;
          _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Invalid data from server in response to moveRecords request: %@", buf, 0xCu);
        }

        v149 = 0;
      }
    }

    else
    {
      v149 = 0;
      v150 = 0;
    }

    v54 = objc_msgSend_translator(self, v33, v34);
    v57 = objc_msgSend_recordMoveResponse(objectCopy, v55, v56);
    v60 = objc_msgSend_movedRecord(v57, v58, v59);
    v63 = objc_msgSend_zoneID(v15, v61, v62);
    v66 = objc_msgSend_anonymousCKUserID(v63, v64, v65);
    v153 = 0;
    v68 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v54, v67, v60, v66, &v153);
    v69 = v153;

    v71 = MEMORY[0x277CBC860];
    v148 = v68;
    if (v69)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v72 = *v71;
      if (os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
      {
        v73 = v72;
        v76 = objc_msgSend_requestUUID(self, v74, v75);
        *buf = 138543618;
        v156 = v76;
        v157 = 2112;
        v158 = v69;
        _os_log_error_impl(&dword_22506F000, v73, OS_LOG_TYPE_ERROR, "req: %{public}@, Error parsing destination server record returned for save: %@", buf, 0x16u);
      }
    }

    else
    {
      objc_msgSend_updateShareIDCacheWithRecord_(self, v70, v68);
    }

    v79 = objc_msgSend_translator(self, v77, v78);
    v82 = objc_msgSend_recordMoveResponse(objectCopy, v80, v81);
    v85 = objc_msgSend_moveMarker(v82, v83, v84);
    v88 = objc_msgSend_zoneID(v15, v86, v87);
    v91 = objc_msgSend_anonymousCKUserID(v88, v89, v90);
    v152 = 0;
    v93 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v79, v92, v85, v91, &v152);
    v94 = v152;

    if (v94)
    {
      v96 = v149;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v97 = v148;
      v98 = MEMORY[0x277CBC860];
      v99 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v102 = v99;
        objc_msgSend_requestUUID(self, v103, v104);
        v106 = v105 = v98;
        *buf = 138543618;
        v156 = v106;
        v157 = 2112;
        v158 = v94;
        _os_log_error_impl(&dword_22506F000, v102, OS_LOG_TYPE_ERROR, "req: %{public}@, Error parsing move marker server record returned for save: %@", buf, 0x16u);

        v98 = v105;
      }
    }

    else
    {
      objc_msgSend_updateShareIDCacheWithRecord_(self, v95, v93);
      v97 = v148;
      v96 = v149;
      v98 = MEMORY[0x277CBC860];
    }

    v107 = objc_msgSend_fakeResponseOperationResultByItemID(self, v100, v101);

    if (v107)
    {
      v110 = objc_msgSend_fakeResponseOperationResultByItemID(self, v108, v109);
      v112 = objc_msgSend_objectForKeyedSubscript_(v110, v111, v15);

      if (v112)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v113 = *v98;
        if (os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
        {
          v144 = v113;
          v147 = objc_msgSend_requestUUID(self, v145, v146);
          *buf = 138543618;
          v156 = v147;
          v157 = 2114;
          v158 = v15;
          _os_log_error_impl(&dword_22506F000, v144, OS_LOG_TYPE_ERROR, "req: %{public}@, Inlining fake response operation result for item id %{public}@", buf, 0x16u);
        }

        objc_msgSend_setResult_(objectCopy, v114, v112);
      }
    }

    v115 = objc_msgSend_container(self, v108, v109);
    v118 = objc_msgSend_entitlements(v115, v116, v117);
    hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v118, v119, v120);
    objc_msgSend_setSerializeProtectionData_(v97, v122, hasProtectionDataEntitlement);

    v125 = objc_msgSend_container(self, v123, v124);
    v128 = objc_msgSend_entitlements(v125, v126, v127);
    v131 = objc_msgSend_hasProtectionDataEntitlement(v128, v129, v130);
    objc_msgSend_setSerializeProtectionData_(v93, v132, v131);

    v135 = objc_msgSend_recordPostedBlock(self, v133, v134);

    if (v135)
    {
      v138 = objc_msgSend_recordPostedBlock(self, v136, v137);
      v141 = objc_msgSend_result(objectCopy, v139, v140);
      (v138)[2](v138, v141, v15, v97, v96, v93);
    }

    v53 = v150;
  }

  else
  {
    v46 = objc_msgSend_recordPostedBlock(self, v18, v19);

    if (v46)
    {
      v49 = objc_msgSend_recordPostedBlock(self, v47, v48);
      v52 = objc_msgSend_result(objectCopy, v50, v51);
      (v49)[2](v49, v52, v15, 0, 0, 0);
    }

    v53 = 0;
  }

  v142 = *MEMORY[0x277D85DE8];

  return v53;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v55 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_recordIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_result(failureCopy, v16, v17);
  v21 = objc_msgSend_error(v18, v19, v20);
  v24 = objc_msgSend_clientError(v21, v22, v23);
  v27 = objc_msgSend_oplockFailure(v24, v25, v26);
  v30 = objc_msgSend_recordForOplockFailure(v27, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_translator(self, v31, v32);
    v36 = objc_msgSend_zoneID(v15, v34, v35);
    v39 = objc_msgSend_anonymousCKUserID(v36, v37, v38);
    v52 = 0;
    v41 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v33, v40, v30, v39, &v52);
    v42 = v52;

    if (!v41 && v42)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v42;
        _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Invalid data from server in response to moveRecords request: %@", buf, 0xCu);
      }
    }
  }

  v44 = objc_msgSend_recordPostedBlock(self, v31, v32);

  if (v44)
  {
    v47 = objc_msgSend_recordPostedBlock(self, v45, v46);
    v50 = objc_msgSend_result(failureCopy, v48, v49);
    (v47)[2](v47, v50, v15, 0, 0, 0);
  }

  v51 = *MEMORY[0x277D85DE8];
}

@end
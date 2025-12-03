@interface CKDFetchDatabaseChangesURLRequest
- (CKDFetchDatabaseChangesURLRequest)initWithOperation:(id)operation previousServerChangeTokenData:(id)data;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
@end

@implementation CKDFetchDatabaseChangesURLRequest

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setZoneRetrieveChangesRequest_(v6, v8, v7);

  v11 = objc_msgSend_previousServerChangeTokenData(self, v9, v10);
  v14 = objc_msgSend_zoneRetrieveChangesRequest(v6, v12, v13);
  objc_msgSend_setSyncContinuationToken_(v14, v15, v11);

  if (objc_msgSend_resultsLimit(self, v16, v17))
  {
    v22 = objc_msgSend_resultsLimit(self, v18, v19);
    if (HIDWORD(v22))
    {
      v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "uint32_t CKDownsizeOrDie(NSUInteger)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v28, v31, v30, @"CloudKit-Prefix.pch", 34, @"That number was ridiculous");
    }

    v23 = objc_msgSend_zoneRetrieveChangesRequest(v6, v20, v21);
    objc_msgSend_setMaxChangedZones_(v23, v24, v22);
  }

  v32[0] = v6;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v32, 1);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (CKDFetchDatabaseChangesURLRequest)initWithOperation:(id)operation previousServerChangeTokenData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = CKDFetchDatabaseChangesURLRequest;
  v8 = [(CKDURLRequest *)&v18 initWithOperation:operation];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    changedZoneIDs = v8->_changedZoneIDs;
    v8->_changedZoneIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deletedZoneIDs = v8->_deletedZoneIDs;
    v8->_deletedZoneIDs = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    purgedZoneIDs = v8->_purgedZoneIDs;
    v8->_purgedZoneIDs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    encryptedDataResetDeletedZoneIDs = v8->_encryptedDataResetDeletedZoneIDs;
    v8->_encryptedDataResetDeletedZoneIDs = v15;

    objc_storeStrong(&v8->_previousServerChangeTokenData, data);
    v8->_status = 0;
  }

  return v8;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v9.receiver = self;
  v9.super_class = CKDFetchDatabaseChangesURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v9 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_previousServerChangeTokenData(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"changeToken");
}

- (id)requestDidParseProtobufObject:(id)object
{
  v149 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (!objc_msgSend_hasZoneRetrieveChangesResponse(objectCopy, v5, v6))
  {
    v108 = 0;
    goto LABEL_62;
  }

  v135 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v139 = objc_msgSend_container(self, v7, v8);
  v11 = objc_msgSend_zoneRetrieveChangesResponse(objectCopy, v9, v10);
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = objc_msgSend_changedZones(v11, v12, v13);
  v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v142, v148, 16);
  v134 = v11;
  v18 = 0;
  if (!v137)
  {
    goto LABEL_49;
  }

  v138 = *v143;
  *&v17 = 138412290;
  v132 = v17;
  v133 = objectCopy;
  while (2)
  {
    v19 = 0;
    do
    {
      if (*v143 != v138)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v142 + 1) + 8 * v19);
      if (!objc_msgSend_hasChangeType(v20, v15, v16, v132) || (objc_msgSend_hasZoneIdentifier(v20, v21, v22) & 1) == 0 && (objc_msgSend_isAnonymous(v20, v21, v23) & 1) == 0)
      {
        v109 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBBF50], 2006, @"Invalid data received from server");

        v18 = v109;
LABEL_48:
        objectCopy = v133;
        goto LABEL_49;
      }

      v24 = objc_msgSend_options(v139, v21, v23);
      if (objc_msgSend_useAnonymousToServerShareParticipants(v24, v25, v26) && objc_msgSend_hasIsAnonymous(v20, v27, v28) && objc_msgSend_isAnonymous(v20, v29, v30))
      {
        hasAnonymousZoneInfo = objc_msgSend_hasAnonymousZoneInfo(v20, v31, v32);

        if (hasAnonymousZoneInfo)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v36 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v101 = v36;
            v104 = objc_msgSend_anonymousZoneInfo(v20, v102, v103);
            v107 = objc_msgSend_anonymousZoneInfoID(v104, v105, v106);
            *buf = v132;
            v147 = v107;
            _os_log_debug_impl(&dword_22506F000, v101, OS_LOG_TYPE_DEBUG, "Identified anonymous zone through CKDPZoneRetrieveChangesResponseChangedZone with anonymousZoneInfoID: %@.", buf, 0xCu);
          }

          v37 = [CKDAnonymousZoneDataObject alloc];
          v40 = objc_msgSend_anonymousZoneInfo(v20, v38, v39);
          v43 = objc_msgSend_anonymousZoneInfoData(v40, v41, v42);
          v46 = objc_msgSend_changeType(v20, v44, v45);
          v49 = objc_msgSend_deleteType(v20, v47, v48);
          v51 = objc_msgSend_initWithEncryptedData_changeType_deleteType_(v37, v50, v43, v46, v49);

          objc_msgSend_addObject_(v135, v52, v51);
          v53 = 0;
          v54 = 0;
          goto LABEL_40;
        }
      }

      else
      {
      }

      v55 = objc_msgSend_translator(self, v34, v35);
      v58 = objc_msgSend_zoneIdentifier(v20, v56, v57);
      v141 = v18;
      v54 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(v55, v59, v58, &v141);
      v60 = v141;

      if (!v54)
      {
        v18 = v60;
        goto LABEL_48;
      }

      if (objc_msgSend_hasZoneParentIdentifier(v20, v61, v62))
      {
        v65 = objc_msgSend_translator(self, v63, v64);
        v68 = objc_msgSend_zoneParentIdentifier(v20, v66, v67);
        v140 = v60;
        v53 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(v65, v69, v68, &v140);
        v70 = v140;

        v60 = v70;
      }

      else
      {
        v53 = 0;
      }

      if (objc_msgSend_changeType(v20, v63, v64) == 1)
      {
        objc_msgSend_addObject_(self->_changedZoneIDs, v71, v54);
        v75 = objc_msgSend_zoneChangedBlock(self, v73, v74);

        if (v75)
        {
          v51 = objc_msgSend_zoneChangedBlock(self, v76, v77);
          (v51)[2](v51, v54, v53);
LABEL_39:
          v18 = v60;
LABEL_40:

          goto LABEL_42;
        }
      }

      else if (objc_msgSend_changeType(v20, v71, v72) == 2)
      {
        if (*MEMORY[0x277CBC810] == 1)
        {
          v80 = objc_msgSend_unitTestOverrides(self, v78, v79);
          v82 = objc_msgSend_objectForKeyedSubscript_(v80, v81, @"FakeUserResetEncryptedDataForZoneDelete");

          if (v82)
          {
            goto LABEL_34;
          }
        }

        if (objc_msgSend_deleteType(v20, v78, v79) != 2)
        {
          if (objc_msgSend_deleteType(v20, v83, v84) == 3)
          {
LABEL_34:
            objc_msgSend_addObject_(self->_encryptedDataResetDeletedZoneIDs, v78, v54);
            v93 = objc_msgSend_zoneDeletedDueToEncryptedDataResetBlock(self, v91, v92);

            if (!v93)
            {
              goto LABEL_41;
            }

            v90 = objc_msgSend_zoneDeletedDueToEncryptedDataResetBlock(self, v94, v95);
          }

          else
          {
            objc_msgSend_addObject_(self->_deletedZoneIDs, v78, v54);
            v98 = objc_msgSend_zoneDeletedBlock(self, v96, v97);

            if (!v98)
            {
              goto LABEL_41;
            }

            v90 = objc_msgSend_zoneDeletedBlock(self, v99, v100);
          }

LABEL_38:
          v51 = v90;
          (*(v90 + 16))(v90, v54);
          goto LABEL_39;
        }

        objc_msgSend_addObject_(self->_purgedZoneIDs, v83, v54);
        v87 = objc_msgSend_zonePurgedBlock(self, v85, v86);

        if (v87)
        {
          v90 = objc_msgSend_zonePurgedBlock(self, v88, v89);
          goto LABEL_38;
        }
      }

LABEL_41:
      v18 = v60;
LABEL_42:

      ++v19;
    }

    while (v137 != v19);
    objectCopy = v133;
    v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v142, v148, 16);
    if (v137)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v112 = objc_msgSend_anonymousShareProcessingBlock(self, v110, v111);
  if (v112)
  {
    v115 = v112;
    v116 = objc_msgSend_count(v135, v113, v114);

    if (v116)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v117 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v128 = v117;
        v131 = objc_msgSend_count(v135, v129, v130);
        *buf = 134217984;
        v147 = v131;
        _os_log_debug_impl(&dword_22506F000, v128, OS_LOG_TYPE_DEBUG, "Calling back to the anonymousShareProcessingBlock with %lu anonymous zone data objects.", buf, 0xCu);
      }

      v120 = objc_msgSend_anonymousShareProcessingBlock(self, v118, v119);
      (v120)[2](v120, v135);
    }
  }

  if (objc_msgSend_hasStatus(v134, v113, v114))
  {
    v123 = objc_msgSend_status(v134, v121, v122);
    if (v123 == 1)
    {
      objc_msgSend_setStatus_(self, v121, 1);
    }

    else if (v123 == 2)
    {
      objc_msgSend_setStatus_(self, v121, 2);
    }
  }

  v124 = objc_msgSend_syncContinuationToken(v134, v121, v122);
  objc_msgSend_setServerChangeTokenData_(self, v125, v124);

  v108 = v18;
LABEL_62:

  v126 = *MEMORY[0x277D85DE8];

  return v108;
}

@end
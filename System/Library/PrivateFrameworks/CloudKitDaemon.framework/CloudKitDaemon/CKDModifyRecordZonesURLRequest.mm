@interface CKDModifyRecordZonesURLRequest
- (CKDModifyRecordZonesURLRequest)initWithOperation:(id)operation recordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete;
- (id)generateRequestOperations;
- (id)makeRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDModifyRecordZonesURLRequest

- (CKDModifyRecordZonesURLRequest)initWithOperation:(id)operation recordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete
{
  saveCopy = save;
  deleteCopy = delete;
  v16.receiver = self;
  v16.super_class = CKDModifyRecordZonesURLRequest;
  v11 = [(CKDURLRequest *)&v16 initWithOperation:operation];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordZonesToSave, save);
    objc_storeStrong(&v12->_recordZoneIDsToDelete, delete);
    v13 = objc_opt_new();
    recordZoneIDByRequestID = v12->_recordZoneIDByRequestID;
    v12->_recordZoneIDByRequestID = v13;
  }

  return v12;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v25.receiver = self;
  v25.super_class = CKDModifyRecordZonesURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v25 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_recordZonesToSave(self, v6, v7, v25.receiver, v25.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"modifyIDs");
  v15 = MEMORY[0x277CBEB98];
  v18 = objc_msgSend_recordZoneIDsToDelete(self, v16, v17);
  v21 = objc_msgSend_ckEquivalencyProperties(v18, v19, v20);
  v23 = objc_msgSend_setWithArray_(v15, v22, v21);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v24, v23, @"deleteIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_recordZonesToSave(self, v5, v6);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_28385E660);

  objc_msgSend_setModifyRecordZoneIDs_(propertiesCopy, v10, v9);
  v13 = objc_msgSend_recordZoneIDsToDelete(self, v11, v12);
  objc_msgSend_setDeleteRecordZoneIDs_(propertiesCopy, v14, v13);

  v15.receiver = self;
  v15.super_class = CKDModifyRecordZonesURLRequest;
  [(CKDURLRequest *)&v15 fillOutRequestProperties:propertiesCopy];
}

- (id)zoneIDsToLock
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = objc_msgSend_recordZonesToSave(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v34, v39, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_zoneID(*(*(&v34 + 1) + 8 * i), v9, v10);
        objc_msgSend_addObject_(v3, v15, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v34, v39, 16);
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = objc_msgSend_recordZoneIDsToDelete(self, v16, v17, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v30, v38, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_addObject_(v3, v21, *(*(&v30 + 1) + 8 * j));
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v30, v38, 16);
    }

    while (v22);
  }

  v27 = objc_msgSend_allObjects(v3, v25, v26);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)requestOperationClasses
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_recordZonesToSave(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (v9)
  {
    v12 = objc_opt_class();
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_recordZoneIDsToDelete(self, v10, v11);
  v17 = objc_msgSend_count(v14, v15, v16);

  if (v17)
  {
    v18 = objc_opt_class();
    objc_msgSend_addObject_(v3, v19, v18);
  }

  return v3;
}

- (id)makeRequestOperations
{
  v227 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  obj = objc_msgSend_recordZonesToSave(self, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v215, v226, 16);
  if (!v7)
  {
    goto LABEL_41;
  }

  v10 = v7;
  v208 = *v216;
  v202 = *MEMORY[0x277CBC120];
  *&v9 = 138543618;
  v199 = v9;
  v203 = v3;
  do
  {
    v11 = 0;
    v204 = v10;
    do
    {
      if (*v216 != v208)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v215 + 1) + 8 * v11);
      v13 = objc_msgSend_operationRequestWithType_(self, v8, 200, v199);
      v14 = objc_opt_new();
      objc_msgSend_setZoneSaveRequest_(v13, v15, v14);

      v18 = objc_msgSend_previousProtectionEtag(v12, v16, v17);
      v21 = objc_msgSend_zoneSaveRequest(v13, v19, v20);
      objc_msgSend_setZoneProtectionInfoTag_(v21, v22, v18);

      v25 = objc_msgSend_translator(self, v23, v24);
      v27 = objc_msgSend_pRecordZoneFromRecordZone_(v25, v26, v12);

      v30 = objc_msgSend_originalRequiredFeatures(v12, v28, v29);
      v33 = objc_msgSend_requiredFeatures(v12, v31, v32);
      isEqual = objc_msgSend_isEqual_(v30, v34, v33);

      if (isEqual)
      {
        goto LABEL_37;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v38 = *MEMORY[0x277CBC830];
      v207 = v27;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v117 = v38;
        v120 = objc_msgSend_zoneID(v12, v118, v119);
        v123 = objc_msgSend_requiredFeatures(v12, v121, v122);
        v126 = objc_msgSend_originalRequiredFeatures(v12, v124, v125);
        *buf = 138412802;
        v221 = v120;
        v222 = 2112;
        v223 = v123;
        v224 = 2112;
        v225 = v126;
        _os_log_debug_impl(&dword_22506F000, v117, OS_LOG_TYPE_DEBUG, "Saving updated required features for zone %@.\nUpdated: %@\nPrevious: %@", buf, 0x20u);
      }

      if (*MEMORY[0x277CBC810] == 1)
      {
        v41 = objc_msgSend_unitTestOverrides(self, v39, v40);
        v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"DoNotExpectUpdatingRequiredFeatures");

        if (v43)
        {
          v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CKDModifyRecordZonesURLRequest.m", 102, @"Expected not to update required feature set but actually did");
        }
      }

      v48 = objc_alloc_init(CKDPZoneSignedCryptoRequirements);
      v51 = objc_msgSend_translator(self, v49, v50);
      v53 = objc_msgSend_pZoneCryptoFeatureRequirmentsFromZone_(v51, v52, v12);

      if (*MEMORY[0x277CBC810] == 1)
      {
        v56 = objc_msgSend_unitTestOverrides(self, v54, v55);
        v58 = objc_msgSend_objectForKeyedSubscript_(v56, v57, @"HigherCryptoFeatureRequirementsMinimumSchemaVersion");

        if (v58)
        {
          v59 = objc_msgSend_minimumSchemaVersion(v53, v54, v55);
          objc_msgSend_setMinimumSchemaVersion_(v53, v60, (v59 + 1));
        }
      }

      v206 = v53;
      v61 = objc_msgSend_data(v53, v54, v55);
      v64 = objc_msgSend_container(self, v62, v63);
      v67 = objc_msgSend_pcsManager(v64, v65, v66);
      v214 = 0;
      v69 = objc_msgSend_createCloudKitFeaturesSignatureForData_forScope_error_(v67, v68, v61, 4, &v214);
      v70 = v214;

      if (v69)
      {
        objc_msgSend_setSignature_(v48, v71, v69);
        objc_msgSend_setSerializedRequirements_(v48, v73, v61);
        objc_msgSend_setVersion_(v48, v74, *MEMORY[0x277CBC980]);
        if (*MEMORY[0x277CBC810] == 1)
        {
          v77 = objc_msgSend_unitTestOverrides(self, v75, v76);
          v79 = objc_msgSend_objectForKeyedSubscript_(v77, v78, @"HigherSignedCryptoRequirementsVersion");

          if (v79)
          {
            v81 = objc_msgSend_version(v48, v75, v80);
            objc_msgSend_setVersion_(v48, v82, (v81 + 1));
          }
        }

        v27 = v207;
        objc_msgSend_setSignedCryptoRequirements_(v207, v75, v48);
        goto LABEL_36;
      }

      v83 = objc_msgSend_domain(v70, v71, v72);
      v86 = v83;
      v87 = v70;
      if (v83 != v202)
      {

LABEL_31:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v96 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v127 = v87;
          v128 = v96;
          v131 = objc_msgSend_zoneID(v12, v129, v130);
          *buf = v199;
          v221 = v131;
          v222 = 2114;
          v223 = v127;
          _os_log_error_impl(&dword_22506F000, v128, OS_LOG_TYPE_ERROR, "Failed to generate signature for required features when saving record zone %{public}@. Error: %{public}@", buf, 0x16u);

          v87 = v127;
          objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v132, v202, 5002, v127, @"Failed to create cryptographic signature when saving modified record zones.");
        }

        else
        {
          objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v97, v202, 5002, v87, @"Failed to create cryptographic signature when saving modified record zones.");
        }

        v98 = v70 = v87;
        objc_msgSend_finishWithError_(self, v99, v98);

        v27 = v207;
        goto LABEL_36;
      }

      v88 = objc_msgSend_code(v70, v84, v85);

      v91 = v88 == 5000;
      v87 = v70;
      if (!v91)
      {
        goto LABEL_31;
      }

      v200 = objc_msgSend_zoneID(v12, v89, v90);
      v27 = v207;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v92 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v221 = v200;
        _os_log_impl(&dword_22506F000, v92, OS_LOG_TYPE_INFO, "Missing identity for signing required features when saving record zone %{public}@.", buf, 0xCu);
      }

      objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v93, v202, 5000, v87, @"Failed to create cryptographic signature when saving modified record zones.");
      v94 = v70 = v87;
      objc_msgSend_finishWithError_(self, v95, v94);

LABEL_36:
      v3 = v203;
      v10 = v204;
      if (!v69)
      {

        v196 = 0;
        goto LABEL_52;
      }

LABEL_37:
      v100 = objc_msgSend_zoneSaveRequest(v13, v36, v37);
      objc_msgSend_setRecordZone_(v100, v101, v27);

      objc_msgSend_addObject_(v3, v102, v13);
      v105 = objc_msgSend_zoneID(v12, v103, v104);
      v108 = objc_msgSend_recordZoneIDByRequestID(self, v106, v107);
      v111 = objc_msgSend_request(v13, v109, v110);
      objc_msgSend_operationUUID(v111, v112, v113);
      v115 = v114 = v27;
      objc_msgSend_setObject_forKeyedSubscript_(v108, v116, v105, v115);

      ++v11;
    }

    while (v10 != v11);
    v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v215, v226, 16);
    v10 = v133;
  }

  while (v133);
LABEL_41:

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v209 = objc_msgSend_recordZoneIDsToDelete(self, v134, v135);
  v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v136, &v210, v219, 16);
  if (v137)
  {
    v139 = v137;
    v140 = *v211;
    do
    {
      for (i = 0; i != v139; ++i)
      {
        if (*v211 != v140)
        {
          objc_enumerationMutation(v209);
        }

        v142 = *(*(&v210 + 1) + 8 * i);
        v143 = objc_msgSend_operationRequestWithType_(self, v138, 202);
        v144 = objc_opt_new();
        objc_msgSend_setZoneDeleteRequest_(v143, v145, v144);

        v148 = objc_msgSend_translator(self, v146, v147);
        v150 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v148, v149, v142);
        v153 = objc_msgSend_zoneDeleteRequest(v143, v151, v152);
        objc_msgSend_setZoneIdentifier_(v153, v154, v150);

        v157 = objc_msgSend_markZonesAsUserPurged(self, v155, v156);
        v160 = objc_msgSend_zoneDeleteRequest(v143, v158, v159);
        objc_msgSend_setUserPurge_(v160, v161, v157);

        v164 = objc_msgSend_lastMissingManateeIdentityErrorDate(self, v162, v163);

        if (v164)
        {
          v166 = objc_opt_new();
          v169 = objc_msgSend_zoneDeleteRequest(v143, v167, v168);
          objc_msgSend_setLastMissingManateeIdentityErrorDate_(v169, v170, v166);

          v173 = objc_msgSend_lastMissingManateeIdentityErrorDate(self, v171, v172);
          objc_msgSend_timeIntervalSinceReferenceDate(v173, v174, v175);
          v177 = v176;
          v180 = objc_msgSend_zoneDeleteRequest(v143, v178, v179);
          v183 = objc_msgSend_lastMissingManateeIdentityErrorDate(v180, v181, v182);
          objc_msgSend_setTime_(v183, v184, v185, v177);
        }

        objc_msgSend_addObject_(v3, v165, v143);
        v188 = objc_msgSend_recordZoneIDByRequestID(self, v186, v187);
        v191 = objc_msgSend_request(v143, v189, v190);
        v194 = objc_msgSend_operationUUID(v191, v192, v193);
        objc_msgSend_setObject_forKeyedSubscript_(v188, v195, v142, v194);
      }

      v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v138, &v210, v219, 16);
    }

    while (v139);
  }

  v196 = v3;
LABEL_52:

  v197 = *MEMORY[0x277D85DE8];

  return v196;
}

- (id)generateRequestOperations
{
  v4 = objc_msgSend_generatedRequestOperations(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_makeRequestOperations(self, v5, v6);
    objc_msgSend_setGeneratedRequestOperations_(self, v8, v7);
  }

  return objc_msgSend_generatedRequestOperations(self, v5, v6);
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_recordZoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_zoneSaveResponse(objectCopy, v16, v17);
  v21 = objc_msgSend_capabilities(v18, v19, v20);

  v24 = objc_msgSend_translator(self, v22, v23);
  v26 = objc_msgSend_capabilitiesFromPZoneCapabilities_(v24, v25, v21);

  v29 = objc_msgSend_zoneSaveResponse(objectCopy, v27, v28);
  v32 = objc_msgSend_etag(v29, v30, v31);

  v35 = objc_msgSend_zoneSaveResponse(objectCopy, v33, v34);
  hasExpirationTime = objc_msgSend_hasExpirationTime(v35, v36, v37);

  if (hasExpirationTime)
  {
    v41 = objc_msgSend_zoneSaveResponse(objectCopy, v39, v40);
    v44 = objc_msgSend_expirationTime(v41, v42, v43);
    objc_msgSend_time(v44, v45, v46);
    v48 = v47;

    v51 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v49, v50, v48);
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_msgSend_zoneSaveResponse(objectCopy, v39, v40);
  v55 = objc_msgSend_expired(v52, v53, v54);

  if (objc_msgSend_hasZoneDeleteResponse(objectCopy, v56, v57))
  {
    objc_msgSend_updateShareIDCacheWithDeletedZoneID_(self, v58, v15);
  }

  v60 = objc_msgSend_recordZoneModifiedBlock(self, v58, v59);

  if (v60)
  {
    v63 = objc_msgSend_recordZoneModifiedBlock(self, v61, v62);
    v66 = objc_msgSend_result(objectCopy, v64, v65);
    (v63)[2](v63, v15, v66, v26, v51, v55, v32);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_recordZoneIDByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_recordZoneModifiedBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_recordZoneModifiedBlock(self, v18, v19);
    v23 = objc_msgSend_result(failureCopy, v21, v22);
    (v20)[2](v20, v14, v23, 0, 0, 0, 0);
  }
}

@end
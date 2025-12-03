@interface CKDFetchRecordZoneChangesURLRequest
- (BOOL)requestGETPreAuth;
- (CKDFetchRecordZoneChangesURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d;
- (NSDictionary)resultsByRecordZoneID;
- (NSDictionary)zoneErrorsByZoneID;
- (id)_handleRecordChanges:(id)changes deltaChanges:(id)deltaChanges zoneAttributesChange:(id)change forZoneID:(id)d;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)noteUsageForDeletedRecordID:(id)d at:(id)at;
- (void)noteUsageForRecordID:(id)d at:(id)at;
- (void)requestDidComplete;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchRecordZoneChangesURLRequest

- (CKDFetchRecordZoneChangesURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = CKDFetchRecordZoneChangesURLRequest;
  v12 = [(CKDURLRequest *)&v26 initWithOperation:operation];
  if (v12)
  {
    v13 = objc_msgSend_copy(dsCopy, v10, v11);
    recordZoneIDs = v12->_recordZoneIDs;
    v12->_recordZoneIDs = v13;

    objc_storeStrong(&v12->_configurationsByRecordZoneID, d);
    v15 = objc_opt_new();
    zoneIDsByRequestOperationUUID = v12->_zoneIDsByRequestOperationUUID;
    v12->_zoneIDsByRequestOperationUUID = v15;

    v12->_shouldFetchAssetContent = 1;
    v17 = objc_opt_new();
    requestResultsByRecordZoneID = v12->_requestResultsByRecordZoneID;
    v12->_requestResultsByRecordZoneID = v17;

    v19 = objc_opt_new();
    nodeErrorsByZoneID = v12->_nodeErrorsByZoneID;
    v12->_nodeErrorsByZoneID = v19;

    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
    recordResponses = v12->_recordResponses;
    v12->_recordResponses = v23;
  }

  return v12;
}

- (NSDictionary)zoneErrorsByZoneID
{
  v3 = objc_msgSend_nodeErrorsByZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (NSDictionary)resultsByRecordZoneID
{
  v3 = objc_msgSend_requestResultsByRecordZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v38 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = objc_msgSend_recordZoneIDs(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v33, v37, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = objc_msgSend_configurationsByRecordZoneID(self, v9, v10, builderCopy);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14);
        v20 = objc_msgSend_previousServerChangeToken(v17, v18, v19);
        v23 = objc_msgSend_data(v20, v21, v22);

        if (!v23)
        {
          v23 = objc_msgSend_data(MEMORY[0x277CBEA90], v24, v25);
        }

        v26 = objc_msgSend_sqliteRepresentation(v14, v24, v25);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v23, v26);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v33, v37, 16);
    }

    while (v11);
  }

  v32.receiver = self;
  v32.super_class = CKDFetchRecordZoneChangesURLRequest;
  [(CKDURLRequest *)&v32 fillOutEquivalencyPropertiesBuilder:builderCopy];
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v28, v4, @"zid->token");

  v29 = *MEMORY[0x277D85DE8];
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  objc_msgSend_setFetchRecordZoneIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchRecordZoneChangesURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)requestGETPreAuth
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  if (objc_msgSend_usePreauth(v4, v5, v6))
  {
    shouldFetchAssetContent = self->_shouldFetchAssetContent;
  }

  else
  {
    shouldFetchAssetContent = 0;
  }

  return shouldFetchAssetContent;
}

- (id)generateRequestOperations
{
  v251 = *MEMORY[0x277D85DE8];
  v224 = objc_opt_new();
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  obj = objc_msgSend_recordZoneIDs(self, v3, v4);
  v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v243, v250, 16);
  if (v225)
  {
    v8 = 0;
    v223 = *v244;
    do
    {
      v9 = 0;
      do
      {
        v228 = v8;
        if (*v244 != v223)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v243 + 1) + 8 * v9);
        v11 = objc_msgSend_configurationsByRecordZoneID(self, v6, v7);
        v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v10);

        v16 = objc_msgSend_operationType(self, v14, v15);
        v18 = objc_msgSend_operationRequestWithType_(self, v17, v16);
        if (objc_msgSend_requiresCKAnonymousUserIDs(self, v19, v20))
        {
          v23 = objc_msgSend_anonymousCKUserID(v10, v21, v22);

          if (!v23)
          {
            v216 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v216, v217, a2, self, @"CKDFetchRecordZoneChangesURLRequest.m", 122, @"An anonymousCKUserID is required to fetch record zone changes in %@ in the shared database when using anonymous to server share participants", v10);
          }

          v26 = objc_msgSend_anonymousCKUserID(v10, v24, v25);
          v29 = objc_msgSend_CKDPIdentifier_User(v26, v27, v28);
          v32 = objc_msgSend_request(v18, v30, v31);
          objc_msgSend_setAnonymousCKUserID_(v32, v33, v29);
        }

        v34 = objc_opt_new();
        objc_msgSend_setRecordRetrieveChangesRequest_(v18, v35, v34);

        v38 = objc_msgSend_previousServerChangeToken(v13, v36, v37);
        v41 = objc_msgSend_data(v38, v39, v40);
        v44 = objc_msgSend_recordRetrieveChangesRequest(v18, v42, v43);
        objc_msgSend_setSyncContinuationToken_(v44, v45, v41);

        v48 = objc_msgSend_translator(self, v46, v47);
        v50 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v48, v49, v10);
        v53 = objc_msgSend_recordRetrieveChangesRequest(v18, v51, v52);
        objc_msgSend_setZoneIdentifier_(v53, v54, v50);

        v57 = objc_msgSend_changeTypes(self, v55, v56);
        if (v57 == 1)
        {
          v60 = 2;
        }

        else
        {
          v60 = 1;
        }

        if (v57 == 2)
        {
          v61 = 3;
        }

        else
        {
          v61 = v60;
        }

        v62 = objc_msgSend_recordRetrieveChangesRequest(v18, v58, v59);
        objc_msgSend_setRequestedChangeTypes_(v62, v63, v61);

        if (objc_msgSend_resultsLimit(v13, v64, v65))
        {
          v70 = objc_msgSend_resultsLimit(v13, v66, v67);
          if (HIDWORD(v70))
          {
            v212 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v68, v69);
            v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v213, "uint32_t CKDownsizeOrDie(NSUInteger)");
            objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v212, v215, v214, @"CloudKit-Prefix.pch", 34, @"That number was ridiculous");
          }

          v71 = objc_msgSend_recordRetrieveChangesRequest(v18, v68, v69);
          objc_msgSend_setMaxChanges_(v71, v72, v70);
        }

        NewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(v13, v66, v67);
        v76 = objc_msgSend_recordRetrieveChangesRequest(v18, v74, v75);
        objc_msgSend_setNewestFirst_(v76, v77, NewestChangesFirst);

        if (v13 && (objc_msgSend_fetchChangesMadeByThisDevice(v13, v78, v79) & 1) == 0)
        {
          v80 = objc_msgSend_recordRetrieveChangesRequest(v18, v78, v79);
          objc_msgSend_setIgnoreCallingDeviceChanges_(v80, v81, 1);
        }

        v229 = v10;
        if (objc_msgSend_fetchChangesForMergeableValues(self, v78, v79))
        {
          v84 = objc_msgSend_recordRetrieveChangesRequest(v18, v82, v83);
          objc_msgSend_setIncludeMergeableDeltas_(v84, v85, 1);
        }

        v86 = objc_msgSend_desiredKeys(v13, v82, v83);

        v230 = v13;
        if (v86)
        {
          v89 = objc_opt_new();
          v92 = objc_msgSend_recordRetrieveChangesRequest(v18, v90, v91);
          objc_msgSend_setRequestedFields_(v92, v93, v89);

          v241 = 0u;
          v242 = 0u;
          v239 = 0u;
          v240 = 0u;
          v96 = objc_msgSend_desiredKeys(v13, v94, v95);
          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v239, v249, 16);
          if (v98)
          {
            v99 = v98;
            v100 = *v240;
            do
            {
              for (i = 0; i != v99; ++i)
              {
                if (*v240 != v100)
                {
                  objc_enumerationMutation(v96);
                }

                v102 = *(*(&v239 + 1) + 8 * i);
                v103 = objc_opt_new();
                objc_msgSend_setName_(v103, v104, v102);
                v107 = objc_msgSend_recordRetrieveChangesRequest(v18, v105, v106);
                v110 = objc_msgSend_requestedFields(v107, v108, v109);
                objc_msgSend_addFields_(v110, v111, v103);
              }

              v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v112, &v239, v249, 16);
            }

            while (v99);
          }

          v13 = v230;
        }

        v113 = objc_msgSend_desiredAssetKeys(self, v87, v88);
        v116 = objc_msgSend_count(v113, v114, v115);

        if (v116)
        {
          v119 = objc_opt_new();
          v122 = objc_msgSend_recordRetrieveChangesRequest(v18, v120, v121);
          objc_msgSend_setAssetsToDownload_(v122, v123, v119);

          v124 = objc_opt_new();
          v127 = objc_msgSend_recordRetrieveChangesRequest(v18, v125, v126);
          v130 = objc_msgSend_assetsToDownload(v127, v128, v129);
          objc_msgSend_setAssetFields_(v130, v131, v124);

          v237 = 0u;
          v238 = 0u;
          v235 = 0u;
          v236 = 0u;
          v134 = objc_msgSend_desiredAssetKeys(self, v132, v133);
          v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, &v235, v248, 16);
          if (v136)
          {
            v137 = v136;
            v226 = v9;
            v138 = *v236;
            do
            {
              for (j = 0; j != v137; ++j)
              {
                if (*v236 != v138)
                {
                  objc_enumerationMutation(v134);
                }

                v140 = *(*(&v235 + 1) + 8 * j);
                v141 = objc_opt_new();
                objc_msgSend_setName_(v141, v142, v140);
                v145 = objc_msgSend_recordRetrieveChangesRequest(v18, v143, v144);
                v148 = objc_msgSend_assetsToDownload(v145, v146, v147);
                v151 = objc_msgSend_assetFields(v148, v149, v150);
                objc_msgSend_addFields_(v151, v152, v141);
              }

              v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v153, &v235, v248, 16);
            }

            while (v137);
            v9 = v226;
            v13 = v230;
          }
        }

        else
        {
          if (!objc_msgSend_shouldFetchAssetContent(self, v117, v118))
          {
            goto LABEL_46;
          }

          v156 = objc_opt_new();
          v159 = objc_msgSend_recordRetrieveChangesRequest(v18, v157, v158);
          objc_msgSend_setAssetsToDownload_(v159, v160, v156);

          AssetContent = objc_msgSend_shouldFetchAssetContent(self, v161, v162);
          v134 = objc_msgSend_recordRetrieveChangesRequest(v18, v164, v165);
          v168 = objc_msgSend_assetsToDownload(v134, v166, v167);
          objc_msgSend_setAllAssets_(v168, v169, AssetContent);
        }

LABEL_46:
        if ((v228 & 1) == 0)
        {
          v227 = v9;
          v170 = objc_msgSend_header(v18, v154, v155);

          if (!v170)
          {
            v173 = objc_opt_new();
            objc_msgSend_setHeader_(v18, v174, v173);
          }

          v233 = 0u;
          v234 = 0u;
          v231 = 0u;
          v232 = 0u;
          v175 = objc_msgSend_supplementalChangeTokenByZoneID(self, v171, v172);
          v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v176, &v231, v247, 16);
          if (v177)
          {
            v180 = v177;
            v181 = *v232;
            do
            {
              for (k = 0; k != v180; ++k)
              {
                if (*v232 != v181)
                {
                  objc_enumerationMutation(v175);
                }

                v183 = *(*(&v231 + 1) + 8 * k);
                v184 = objc_msgSend_supplementalChangeTokenByZoneID(self, v178, v179);
                v186 = objc_msgSend_objectForKeyedSubscript_(v184, v185, v183);

                v187 = objc_opt_new();
                v190 = objc_msgSend_translator(self, v188, v189);
                v192 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v190, v191, v183);
                objc_msgSend_setZoneIdentifier_(v187, v193, v192);

                v196 = objc_msgSend_data(v186, v194, v195);
                objc_msgSend_setSyncContinuationToken_(v187, v197, v196);

                v200 = objc_msgSend_header(v18, v198, v199);
                objc_msgSend_addSupplementalZoneInfos_(v200, v201, v187);
              }

              v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v178, &v231, v247, 16);
            }

            while (v180);
          }

          v9 = v227;
          v13 = v230;
        }

        objc_msgSend_addObject_(v224, v154, v18);
        v204 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v202, v203);
        v207 = objc_msgSend_request(v18, v205, v206);
        v210 = objc_msgSend_operationUUID(v207, v208, v209);
        objc_msgSend_setObject_forKeyedSubscript_(v204, v211, v229, v210);

        ++v9;
        v8 = 1;
      }

      while (v9 != v225);
      v218 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v243, v250, 16);
      v8 = 1;
      v225 = v218;
    }

    while (v218);
  }

  v219 = *MEMORY[0x277D85DE8];

  return v224;
}

- (void)noteUsageForDeletedRecordID:(id)d at:(id)at
{
  dCopy = d;
  atCopy = at;
  if (objc_msgSend_databaseScope(self, v7, v8) == 3)
  {
    v11 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v9, v10);
    v14 = objc_msgSend_container(self, v12, v13);
    v17 = objc_msgSend_operation(self, v15, v16);
    objc_msgSend_noteShareUsageForDeletedRecordID_at_container_operation_(v11, v18, dCopy, atCopy, v14, v17);
  }
}

- (void)noteUsageForRecordID:(id)d at:(id)at
{
  dCopy = d;
  atCopy = at;
  if (objc_msgSend_databaseScope(self, v7, v8) == 3)
  {
    v11 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v9, v10);
    v14 = objc_msgSend_container(self, v12, v13);
    v17 = objc_msgSend_operation(self, v15, v16);
    objc_msgSend_noteShareUsageForRecordID_at_container_operation_(v11, v18, dCopy, atCopy, v14, v17);
  }
}

- (id)_handleRecordChanges:(id)changes deltaChanges:(id)deltaChanges zoneAttributesChange:(id)change forZoneID:(id)d
{
  v351 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  deltaChangesCopy = deltaChanges;
  changeCopy = change;
  dCopy = d;
  v298 = changeCopy;
  if (!changeCopy)
  {
    goto LABEL_20;
  }

  if (objc_msgSend_hasRecordZone(changeCopy, v12, v13))
  {
    v14 = objc_autoreleasePoolPush();
    v17 = objc_msgSend_translator(self, v15, v16);
    v20 = objc_msgSend_recordZone(changeCopy, v18, v19);
    v342 = 0;
    v343 = 0;
    v22 = objc_msgSend_recordZoneFromPRecordZone_error_requiredFeaturesValidationFailureType_(v17, v21, v20, &v343, &v342);
    changeCopy = v343;
    v23 = v342;

    if (v23)
    {
      v26 = objc_msgSend_operation(self, v24, v25);
      v340[0] = MEMORY[0x277D85DD0];
      v340[1] = 3221225472;
      v340[2] = sub_2253CD50C;
      v340[3] = &unk_2785487F8;
      v341 = v23;
      objc_msgSend_updateCloudKitMetrics_(v26, v27, v340);
    }

    v28 = *MEMORY[0x277CBC878];
    v29 = *MEMORY[0x277CBC880];
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v287 = v30;
        v290 = objc_msgSend_zoneID(v22, v288, v289);
        *buf = 138543362;
        v348 = v290;
        _os_log_debug_impl(&dword_22506F000, v287, OS_LOG_TYPE_DEBUG, "Received zone attributes change for zone %{public}@", buf, 0xCu);
      }

      v33 = objc_msgSend_zoneAttributesChangedBlock(self, v31, v32);

      if (!v33)
      {
        goto LABEL_19;
      }

      v36 = objc_msgSend_zoneAttributesChangedBlock(self, v34, v35);
      (v36)[2](v36, v22);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v37 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v291 = v37;
        v294 = objc_msgSend_requestUUID(self, v292, v293);
        v297 = objc_msgSend_recordZone(v298, v295, v296);
        *buf = 138543618;
        v348 = v294;
        v349 = 2112;
        v350 = v297;
        _os_log_error_impl(&dword_22506F000, v291, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to parse record zone for record zone attributes change: %@", buf, 0x16u);
      }

      objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v38, *MEMORY[0x277CBBF50], 1005, changeCopy, @"Failed to parse record zone attributes change");
      changeCopy = v36 = changeCopy;
    }

LABEL_19:
    objc_autoreleasePoolPop(v14);
    goto LABEL_20;
  }

  changeCopy = 0;
LABEL_20:
  v301 = objc_opt_new();
  v306 = objc_msgSend_now(MEMORY[0x277CBEAA8], v39, v40);
  v336 = 0u;
  v337 = 0u;
  v338 = 0u;
  v339 = 0u;
  v41 = changesCopy;
  selfCopy = self;
  v307 = v41;
  v319 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v336, v346, 16);
  if (!v319)
  {
    goto LABEL_56;
  }

  v317 = *v337;
  v311 = *MEMORY[0x277CBBF50];
  do
  {
    v43 = 0;
    do
    {
      if (*v337 != v317)
      {
        objc_enumerationMutation(v41);
      }

      v44 = *(*(&v336 + 1) + 8 * v43);
      v45 = objc_autoreleasePoolPush();
      if (objc_msgSend_type(v44, v46, v47) != 3)
      {
        v315 = v45;
        if (objc_msgSend_hasRecord(v44, v48, v49))
        {
          v80 = objc_msgSend_translator(self, v78, v79);
          v83 = objc_msgSend_record(v44, v81, v82);
          v86 = objc_msgSend_anonymousCKUserID(dCopy, v84, v85);
          v334 = changeCopy;
          v71 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v80, v87, v83, v86, &v334);
          v88 = v334;

          if (v71)
          {
            objc_msgSend_updateShareIDCacheWithRecord_(self, v89, v71);
            v92 = objc_msgSend_recordID(v71, v90, v91);
            objc_msgSend_noteUsageForRecordID_at_(self, v93, v92, v306);

            changeCopy = v88;
            v45 = v315;
            goto LABEL_34;
          }

          changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v89, v311, 2006, v88, @"Invalid data received from server");

          if (!objc_msgSend_hasRecordIdentifier(v44, v115, v116))
          {
            v62 = 0;
            v63 = changeCopy;
            v45 = v315;
            goto LABEL_49;
          }

          v313 = 0;
LABEL_36:
          v96 = objc_msgSend_translator(self, v94, v95);
          v99 = objc_msgSend_recordIdentifier(v44, v97, v98);
          objc_msgSend_anonymousCKUserID(dCopy, v100, v101);
          v103 = v102 = self;
          v333 = changeCopy;
          v62 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v96, v104, v99, v103, &v333);
          v63 = v333;

          if (v62)
          {
            objc_msgSend_noteUsageForRecordID_at_(v102, v105, v62, v306);
            self = v102;
            v41 = v307;
            v45 = v315;
            if ((v313 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_40;
          }

          objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v105, v311, 2006, v63, @"Invalid data received from server");
          v63 = v112 = v63;
          self = v102;
          v41 = v307;
          v45 = v315;
        }

        else
        {
          v71 = 0;
LABEL_34:
          if (objc_msgSend_hasRecordIdentifier(v44, v78, v79))
          {
            v313 = 1;
            goto LABEL_36;
          }

          v62 = 0;
          v63 = changeCopy;
LABEL_40:
          v106 = objc_msgSend_recordsChangedBlock(self, v94, v95);

          if (!v106)
          {
            goto LABEL_49;
          }

          v107 = [CKDRecordResponse alloc];
          v110 = objc_msgSend_etag(v44, v108, v109);
          v112 = objc_msgSend_initWithRecordID_record_etag_(v107, v111, v62, v71, v110);

          self = selfCopy;
          objc_msgSend_addObject_(selfCopy->_recordResponses, v113, v112);
          if (v62)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v301, v114, v112, v62);
          }
        }

        goto LABEL_49;
      }

      v50 = objc_msgSend_recordIdentifier(v44, v48, v49);

      if (!v50)
      {
        goto LABEL_51;
      }

      v53 = v45;
      v54 = objc_msgSend_translator(self, v51, v52);
      v57 = objc_msgSend_recordIdentifier(v44, v55, v56);
      v60 = objc_msgSend_anonymousCKUserID(dCopy, v58, v59);
      v335 = changeCopy;
      v62 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v54, v61, v57, v60, &v335);
      v63 = v335;

      if (v62)
      {
        objc_msgSend_noteUsageForDeletedRecordID_at_(self, v64, v62, v306);
        objc_msgSend_updateShareIDCacheWithDeletedRecordID_(self, v65, v62);
        v68 = objc_msgSend_recordDeletedBlock(self, v66, v67);

        if (!v68)
        {
          v45 = v53;
          v41 = v307;
          goto LABEL_50;
        }

        v71 = objc_msgSend_recordDeletedBlock(self, v69, v70);
        v74 = objc_msgSend_recordType(v44, v72, v73);
        v77 = objc_msgSend_name(v74, v75, v76);
        (v71)[2](v71, v62, v77);
      }

      else
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v64, v311, 2006, @"Invalid data received from server");
        v63 = v71 = v63;
      }

      v45 = v53;
      v41 = v307;
LABEL_49:

LABEL_50:
      changeCopy = v63;
LABEL_51:
      objc_autoreleasePoolPop(v45);
      ++v43;
    }

    while (v319 != v43);
    v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v117, &v336, v346, 16);
    v319 = v118;
  }

  while (v118);
LABEL_56:

  v121 = objc_msgSend_recordsChangedBlock(self, v119, v120);

  if (v121)
  {
    v332 = 0u;
    v330 = 0u;
    v331 = 0u;
    v329 = 0u;
    obj = deltaChangesCopy;
    v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v122, &v329, v345, 16);
    if (!v312)
    {
      goto LABEL_144;
    }

    v310 = *v330;
    v308 = *MEMORY[0x277CBBF50];
    while (1)
    {
      v125 = 0;
      do
      {
        if (*v330 != v310)
        {
          objc_enumerationMutation(obj);
        }

        v126 = *(*(&v329 + 1) + 8 * v125);
        v127 = objc_msgSend_deltas(v126, v123, v124);
        v130 = objc_msgSend_firstObject(v127, v128, v129);

        if (objc_msgSend_hasEncryptedData(v130, v131, v132))
        {
          hasEncryptedAsset = 1;
        }

        else
        {
          hasEncryptedAsset = objc_msgSend_hasEncryptedAsset(v130, v133, v134);
        }

        v318 = objc_autoreleasePoolPush();
        v138 = objc_msgSend_translator(self, v136, v137);
        v141 = objc_msgSend_recordIdentifier(v126, v139, v140);
        v144 = objc_msgSend_anonymousCKUserID(dCopy, v142, v143);
        v328 = changeCopy;
        v146 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v138, v145, v141, v144, &v328);
        v147 = v328;

        v320 = v146;
        if (v146)
        {
          v150 = objc_msgSend_recordType(v126, v148, v149);
          v153 = objc_msgSend_name(v150, v151, v152);

          if (v153)
          {
            v156 = objc_msgSend_fieldIdentifier(v126, v154, v155);
            v159 = objc_msgSend_name(v156, v157, v158);

            self = selfCopy;
            v309 = v159;
            if (v159)
            {
              v162 = objc_msgSend_identifier(v126, v160, v161);
              v165 = objc_msgSend_value(v162, v163, v164);
              v168 = objc_msgSend_name(v165, v166, v167);

              v303 = v168;
              if (v168)
              {
                v169 = objc_alloc(MEMORY[0x277CBC478]);
                v316 = objc_msgSend_initWithName_recordID_key_encrypted_(v169, v170, v168, v320, v309, hasEncryptedAsset);
                v302 = v130;
                if (v316)
                {
                  v300 = v153;
                  v171 = objc_alloc(MEMORY[0x277CBEB18]);
                  v174 = objc_msgSend_deltas(v126, v172, v173);
                  v177 = objc_msgSend_count(v174, v175, v176);
                  v179 = objc_msgSend_initWithCapacity_(v171, v178, v177);

                  v180 = objc_alloc(MEMORY[0x277CBEB18]);
                  v183 = objc_msgSend_deltas(v126, v181, v182);
                  v186 = objc_msgSend_count(v183, v184, v185);
                  v314 = objc_msgSend_initWithCapacity_(v180, v187, v186);

                  v326 = 0u;
                  v327 = 0u;
                  v324 = 0u;
                  v325 = 0u;
                  v305 = objc_msgSend_deltas(v126, v188, v189);
                  v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v305, v190, &v324, v344, 16);
                  if (v191)
                  {
                    v194 = v191;
                    v195 = *v325;
                    self = selfCopy;
LABEL_72:
                    v196 = 0;
                    while (1)
                    {
                      if (*v325 != v195)
                      {
                        objc_enumerationMutation(v305);
                      }

                      v197 = *(*(&v324 + 1) + 8 * v196);
                      v200 = (objc_msgSend_hasEncryptedData(v197, v192, v193) & 1) != 0 ? 1 : objc_msgSend_hasEncryptedAsset(v197, v198, v199);
                      if (v200 != hasEncryptedAsset)
                      {
                        break;
                      }

                      v201 = objc_msgSend_translator(self, v198, v199);
                      v323 = v147;
                      v203 = objc_msgSend_mergeableDeltaFromPDelta_valueID_error_(v201, v202, v197, v316, &v323);
                      v204 = v323;

                      v205 = *MEMORY[0x277CBC880];
                      if (v203)
                      {
                        v206 = v204 == 0;
                      }

                      else
                      {
                        v206 = 0;
                      }

                      if (!v206)
                      {
                        if (v205 != -1)
                        {
                          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                        }

                        self = selfCopy;
                        v219 = v318;
                        v153 = v300;
                        v230 = *MEMORY[0x277CBC860];
                        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                        {
                          v280 = v230;
                          v283 = objc_msgSend_requestUUID(selfCopy, v281, v282);
                          *buf = 138543618;
                          v348 = v283;
                          v349 = 2112;
                          v350 = v204;
                          _os_log_error_impl(&dword_22506F000, v280, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to load delta when fetching changes: %@", buf, 0x16u);

                          self = selfCopy;
                        }

                        v147 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v231, v308, 2006, v204, @"Failed to parse mergeable delta");

                        goto LABEL_123;
                      }

                      if (v205 != -1)
                      {
                        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                      }

                      self = selfCopy;
                      v207 = *MEMORY[0x277CBC860];
                      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
                      {
                        v213 = v207;
                        v216 = objc_msgSend_requestUUID(selfCopy, v214, v215);
                        *buf = 138543618;
                        v348 = v216;
                        v349 = 2112;
                        v350 = v203;
                        _os_log_debug_impl(&dword_22506F000, v213, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received mergeable delta: %@", buf, 0x16u);

                        self = selfCopy;
                      }

                      objc_msgSend_addObject_(v179, v208, v203);
                      v211 = objc_msgSend_metadata(v203, v209, v210);
                      objc_msgSend_addObject_(v314, v212, v211);

                      v147 = 0;
                      if (v194 == ++v196)
                      {
                        v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v305, v192, &v324, v344, 16);
                        v147 = 0;
                        if (v194)
                        {
                          goto LABEL_72;
                        }

                        v219 = v318;
                        v153 = v300;
                        goto LABEL_125;
                      }
                    }

                    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v198, v308, 2006, @"Expected encrypted=%d on all mergeable deltas for %@", hasEncryptedAsset, v316);
                    v147 = v203 = v147;
                    v219 = v318;
                    v153 = v300;
LABEL_123:

                    goto LABEL_124;
                  }

                  self = selfCopy;
                  v219 = v318;
LABEL_124:

                  if (!v147)
                  {
LABEL_125:
                    if (objc_msgSend_count(v179, v217, v218))
                    {
                      v235 = objc_msgSend_objectForKeyedSubscript_(v301, v232, v320);
                      if (!v235)
                      {
                        v236 = objc_alloc(MEMORY[0x277CBC5A0]);
                        v238 = objc_msgSend_initWithRecordType_recordID_(v236, v237, v153, v320);
                        objc_msgSend_setIsMergeableValueDeltaRecord_(v238, v239, 1);
                        v240 = [CKDRecordResponse alloc];
                        v235 = objc_msgSend_initWithRecordID_record_etag_(v240, v241, v320, v238, 0);
                        objc_msgSend_addObject_(self->_recordResponses, v242, v235);
                        objc_msgSend_setObject_forKeyedSubscript_(v301, v243, v235, v320);
                      }

                      v244 = objc_msgSend_record(v235, v233, v234);
                      v247 = v244;
                      if (hasEncryptedAsset)
                      {
                        v248 = objc_msgSend_encryptedValues(v244, v245, v246);
                        v250 = objc_msgSend_objectForKeyedSubscript_(v248, v249, v309);

                        self = selfCopy;
                        if (!v250)
                        {
                          goto LABEL_132;
                        }
                      }

                      else
                      {
                        v250 = objc_msgSend_objectForKeyedSubscript_(v244, v245, v309);
                        if (!v250)
                        {
LABEL_132:
                          v250 = objc_alloc_init(MEMORY[0x277CBC470]);
                          objc_msgSend_setValueID_(v250, v260, v316);
                          objc_msgSend_setIsValueIDKnownToServer_(v250, v261, 1);
                          if (hasEncryptedAsset)
                          {
                            v264 = objc_msgSend_encryptedValues(v247, v262, v263);
                            objc_msgSend_setObject_forKeyedSubscript_(v264, v265, v250, v309);
                          }

                          else
                          {
                            objc_msgSend_setObject_forKeyedSubscript_(v247, v262, v250, v309);
                          }
                        }
                      }

                      objc_msgSend_addUnmergedDeltas_(v250, v251, v179);
                      objc_msgSend_addServerDeltaMetadatas_(v250, v274, v314);
                      objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(v250, v275, v179);
                    }

                    v147 = 0;
                  }
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v228 = *MEMORY[0x277CBC860];
                  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                  {
                    v276 = v228;
                    v279 = objc_msgSend_requestUUID(selfCopy, v277, v278);
                    *buf = 138543618;
                    v348 = v279;
                    v349 = 2112;
                    v350 = v147;
                    _os_log_error_impl(&dword_22506F000, v276, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get value ID for mergeable delta change: %@", buf, 0x16u);
                  }

                  objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v229, v308, 2006, v147, @"Failed to parse mergeable value ID");
                  v147 = v179 = v147;
                  v219 = v318;
                }

                changeCopy = v147;

                v147 = v316;
                v130 = v302;
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v226 = *MEMORY[0x277CBC860];
                if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
                {
                  v270 = v226;
                  v273 = objc_msgSend_requestUUID(selfCopy, v271, v272);
                  *buf = 138543618;
                  v348 = v273;
                  v349 = 2112;
                  v350 = v126;
                  _os_log_error_impl(&dword_22506F000, v270, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get location name from mergeable delta change %@", buf, 0x16u);
                }

                changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v227, v308, 2006, v147, @"Failed to get mergeable ID from mergeable delta");
                v219 = v318;
              }

              v147 = v303;
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v224 = *MEMORY[0x277CBC860];
              if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
              {
                v266 = v224;
                v269 = objc_msgSend_requestUUID(selfCopy, v267, v268);
                *buf = 138543618;
                v348 = v269;
                v349 = 2112;
                v350 = v126;
                _os_log_error_impl(&dword_22506F000, v266, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get record field key for %@", buf, 0x16u);
              }

              changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v225, v308, 2006, v147, @"Failed to get record field key");
              v219 = v318;
            }

            v147 = v309;
          }

          else
          {
            self = selfCopy;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v222 = *MEMORY[0x277CBC860];
            if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
            {
              v256 = v222;
              v259 = objc_msgSend_requestUUID(selfCopy, v257, v258);
              *buf = 138543618;
              v348 = v259;
              v349 = 2112;
              v350 = v126;
              _os_log_error_impl(&dword_22506F000, v256, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get record type for mergeable delta change %@", buf, 0x16u);
            }

            changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v223, v308, 2006, v147, @"Failed to parse record type");
            v219 = v318;
          }

          v147 = v153;
          goto LABEL_142;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        self = selfCopy;
        v220 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v252 = v220;
          v255 = objc_msgSend_requestUUID(selfCopy, v253, v254);
          *buf = 138543618;
          v348 = v255;
          v349 = 2112;
          v350 = v126;
          _os_log_error_impl(&dword_22506F000, v252, OS_LOG_TYPE_ERROR, "req: %{public}@, Failed to get record ID for mergeable delta change %@", buf, 0x16u);
        }

        changeCopy = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v221, v308, 2006, v147, @"Failed to parse record ID");
        v219 = v318;
LABEL_142:

        objc_autoreleasePoolPop(v219);
        ++v125;
      }

      while (v125 != v312);
      v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v123, &v329, v345, 16);
      if (!v312)
      {
LABEL_144:

        v41 = v307;
        break;
      }
    }
  }

  v284 = changeCopy;

  v285 = *MEMORY[0x277D85DE8];
  return changeCopy;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v144 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (!objc_msgSend_hasRecordRetrieveChangesResponse(objectCopy, v6, v7))
  {
    v46 = 0;
    goto LABEL_26;
  }

  v10 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v8, v9);
  v13 = objc_msgSend_response(objectCopy, v11, v12);
  v16 = objc_msgSend_operationUUID(v13, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, v16);

  if (!v18)
  {
    v120 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    v123 = objc_msgSend_response(objectCopy, v121, v122);
    v126 = objc_msgSend_operationUUID(v123, v124, v125);
    v129 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v127, v128);
    v132 = objc_msgSend_allKeys(v129, v130, v131);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v120, v133, a2, self, @"CKDFetchRecordZoneChangesURLRequest.m", 388, @"Got a response for an unknown zone with request operation %@ %@", v126, v132);
  }

  v21 = objc_msgSend_recordsChangedBlock(self, v19, v20);
  selfCopy = self;
  if (v21 || (objc_msgSend_recordDeletedBlock(self, v22, v23), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_7:
    v28 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v26, v27);
    v31 = objc_msgSend_changedRecords(v28, v29, v30);
    v34 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v32, v33);
    v37 = objc_msgSend_changedDeltas(v34, v35, v36);
    v38 = objectCopy;
    v41 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v39, v40);
    v44 = objc_msgSend_zoneAttributesChange(v41, v42, v43);
    v46 = objc_msgSend__handleRecordChanges_deltaChanges_zoneAttributesChange_forZoneID_(self, v45, v31, v37, v44, v18);

    if (v46)
    {
      v47 = v46;
    }

    objectCopy = v38;
    goto LABEL_10;
  }

  v119 = objc_msgSend_zoneAttributesChangedBlock(self, v24, v25);

  if (v119)
  {
    goto LABEL_7;
  }

  v46 = 0;
LABEL_10:
  v48 = objc_opt_new();
  v51 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v49, v50);
  v54 = objc_msgSend_syncContinuationToken(v51, v52, v53);
  objc_msgSend_setResultServerChangeTokenData_(v48, v55, v54);

  v58 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v56, v57);
  v61 = objc_msgSend_clientChangeToken(v58, v59, v60);
  objc_msgSend_setResultClientChangeTokenData_(v48, v62, v61);

  v65 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v63, v64);
  v68 = objc_msgSend_pendingArchivedRecords(v65, v66, v67);
  objc_msgSend_setHasPendingArchivedRecords_(v48, v69, v68);

  v72 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v70, v71);
  v75 = objc_msgSend_syncObligationsCount(v72, v73, v74);

  v136 = v18;
  if (v75)
  {
    v134 = v48;
    v78 = objc_opt_new();
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v135 = objectCopy;
    v81 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v79, v80);
    v84 = objc_msgSend_syncObligations(v81, v82, v83);

    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v139, v143, 16);
    if (v86)
    {
      v89 = v86;
      v90 = *v140;
      do
      {
        v91 = 0;
        v92 = v46;
        do
        {
          if (*v140 != v90)
          {
            objc_enumerationMutation(v84);
          }

          v93 = *(*(&v139 + 1) + 8 * v91);
          v94 = objc_msgSend_translator(selfCopy, v87, v88);
          v97 = objc_msgSend_zoneIdentifier(v93, v95, v96);
          v138 = v92;
          v99 = objc_msgSend_recordZoneIDFromPRecordZoneIdentifier_error_(v94, v98, v97, &v138);
          v46 = v138;

          objc_msgSend_addObject_(v78, v100, v99);
          ++v91;
          v92 = v46;
        }

        while (v89 != v91);
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v87, &v139, v143, 16);
      }

      while (v89);
    }

    v48 = v134;
    objc_msgSend_setSyncObligationZoneIDs_(v134, v101, v78);

    objectCopy = v135;
  }

  v102 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v76, v77);
  hasStatus = objc_msgSend_hasStatus(v102, v103, v104);

  if (hasStatus)
  {
    v108 = objc_msgSend_recordRetrieveChangesResponse(objectCopy, v106, v107);
    v111 = objc_msgSend_status(v108, v109, v110);

    if (v111 - 1 >= 3)
    {
      v112 = -1;
    }

    else
    {
      v112 = v111;
    }
  }

  else
  {
    v112 = -1;
  }

  objc_msgSend_setStatus_(v48, v106, v112);
  v115 = objc_msgSend_requestResultsByRecordZoneID(selfCopy, v113, v114);
  objc_msgSend_setObject_forKeyedSubscript_(v115, v116, v48, v136);

LABEL_26:
  v117 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v68 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_result(failureCopy, v16, v17);
  if (objc_msgSend_code(v18, v19, v20) != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v52 = v21;
      v55 = objc_msgSend_error(v18, v53, v54);
      v58 = objc_msgSend_errorDescription(v55, v56, v57);
      *buf = 138543618;
      v65 = v15;
      v66 = 2114;
      v67 = v58;
      _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Error fetching changes in zone %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CBC560];
    v23 = *MEMORY[0x277CBC120];
    v24 = sub_2253962A4(v18);
    v25 = sub_225395734(self, v18);
    v28 = objc_msgSend_error(v18, v26, v27);
    v31 = objc_msgSend_errorDescription(v28, v29, v30);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_format_(v22, v32, v23, v24, v25, @"Error fetching changes in zone %@: %@", v15, v31);

    if (v15)
    {
      v36 = objc_msgSend_nodeErrorsByZoneID(self, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v33, v15);
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v38 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v34, v35);
      v36 = objc_msgSend_allValues(v38, v39, v40);

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, &v59, v63, 16);
      if (v42)
      {
        v45 = v42;
        v46 = *v60;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v60 != v46)
            {
              objc_enumerationMutation(v36);
            }

            v48 = *(*(&v59 + 1) + 8 * i);
            v49 = objc_msgSend_nodeErrorsByZoneID(self, v43, v44);
            objc_msgSend_setObject_forKeyedSubscript_(v49, v50, v33, v48);
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v43, &v59, v63, 16);
        }

        while (v45);
        v15 = 0;
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)requestDidComplete
{
  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_recordsChangedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_recordsChangedBlock(self, v7, v8);
    (v9)[2](v9, self->_recordResponses);
  }

  objc_autoreleasePoolPop(v3);
}

@end
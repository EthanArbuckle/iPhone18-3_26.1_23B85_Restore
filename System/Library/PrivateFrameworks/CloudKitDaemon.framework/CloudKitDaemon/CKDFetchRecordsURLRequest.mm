@interface CKDFetchRecordsURLRequest
- (BOOL)requestGETPreAuth;
- (CKDFetchRecordsURLRequest)initWithOperation:(id)operation recordIDs:(id)ds recordIDsToEtags:(id)etags recordIDsToVersionETags:(id)tags desiredKeys:(id)keys;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)zones;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)requestedListFieldsForDesiredIndexedListKeys;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchRecordsURLRequest

- (CKDFetchRecordsURLRequest)initWithOperation:(id)operation recordIDs:(id)ds recordIDsToEtags:(id)etags recordIDsToVersionETags:(id)tags desiredKeys:(id)keys
{
  operationCopy = operation;
  dsCopy = ds;
  etagsCopy = etags;
  tagsCopy = tags;
  keysCopy = keys;
  v24.receiver = self;
  v24.super_class = CKDFetchRecordsURLRequest;
  v17 = [(CKDURLRequest *)&v24 initWithOperation:operationCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_recordIDs, ds);
    v18->_recordCount = 0;
    objc_storeStrong(&v18->_recordIDsToETags, etags);
    objc_storeStrong(&v18->_recordIDsToVersionETags, tags);
    objc_storeStrong(&v18->_desiredKeys, keys);
    v19 = objc_opt_new();
    recordIDByRequestID = v18->_recordIDByRequestID;
    v18->_recordIDByRequestID = v19;

    v18->_shouldFetchAssetContent = 1;
    v18->_shouldRequestEncryptedAssetOwnerIdentifier = objc_msgSend_shouldRequestEncryptedAssetOwnerIdentifier(operationCopy, v21, v22);
  }

  return v18;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDFetchRecordsURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_recordIDs(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"recordIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setFetchRecordIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchRecordsURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
}

- (id)recordIDsUsedInZones:(id)zones
{
  zonesCopy = zones;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  v9 = objc_msgSend_recordIDs_filteredByZones_(self, v8, v7, zonesCopy);

  return v9;
}

- (id)zoneIDsToLock
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_recordIDs(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_zoneID(*(*(&v21 + 1) + 8 * i), v9, v10);
        if (v15)
        {
          objc_msgSend_addObject_(v3, v14, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }

  v18 = objc_msgSend_allObjects(v3, v16, v17);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
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
  v272 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  obj = objc_msgSend_recordIDs(self, v4, v5);
  v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v264, v271, 16);
  if (v246)
  {
    v245 = *v265;
    selfCopy = self;
    v243 = v3;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v265 != v245)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v264 + 1) + 8 * v9);
      v11 = objc_msgSend_operationType(self, v7, v8);
      v13 = objc_msgSend_operationRequestWithType_(self, v12, v11);
      if (objc_msgSend_requiresCKAnonymousUserIDs(self, v14, v15))
      {
        v18 = objc_msgSend_zoneID(v10, v16, v17);
        v21 = objc_msgSend_anonymousCKUserID(v18, v19, v20);

        if (!v21)
        {
          v224 = v3;
          v225 = objc_opt_new();
          v227 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v226, @"An anonymousCKUserID is required to fetch %@ in the shared database when using anonymous to server share participants", v10);
          objc_msgSend_setObject_forKeyedSubscript_(v225, v228, v227, *MEMORY[0x277CCA450]);
          v231 = objc_msgSend_operation(self, v229, v230);
          v234 = objc_msgSend_topmostParentOperation(v231, v232, v233);

          v238 = objc_msgSend_operationID(v234, v235, v236);
          if (v238)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v225, v237, v238, *MEMORY[0x277CBBF60]);
          }

          v239 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v237, *MEMORY[0x277CBC120], 5015, v225);
          objc_msgSend_finishWithError_(self, v240, v239);

          v223 = 0;
          v3 = v224;
          goto LABEL_55;
        }

        v24 = objc_msgSend_zoneID(v10, v22, v23);
        v27 = objc_msgSend_anonymousCKUserID(v24, v25, v26);
        v30 = objc_msgSend_CKDPIdentifier_User(v27, v28, v29);
        v33 = objc_msgSend_request(v13, v31, v32);
        objc_msgSend_setAnonymousCKUserID_(v33, v34, v30);
      }

      v249 = v9;
      v35 = objc_opt_new();
      objc_msgSend_setRecordRetrieveRequest_(v13, v36, v35);

      v39 = objc_msgSend_translator(self, v37, v38);
      v41 = objc_msgSend_pRecordIdentifierFromRecordID_(v39, v40, v10);
      v44 = objc_msgSend_recordRetrieveRequest(v13, v42, v43);
      objc_msgSend_setRecordIdentifier_(v44, v45, v41);

      v48 = objc_msgSend_recordIDsToVersionETags(self, v46, v47);
      v50 = objc_msgSend_objectForKeyedSubscript_(v48, v49, v10);
      v53 = objc_msgSend_recordRetrieveRequest(v13, v51, v52);
      objc_msgSend_setVersionETag_(v53, v54, v50);

      v57 = objc_msgSend_recordIDsToETags(self, v55, v56);
      v248 = v10;
      v59 = objc_msgSend_objectForKeyedSubscript_(v57, v58, v10);
      v62 = objc_msgSend_recordRetrieveRequest(v13, v60, v61);
      objc_msgSend_setClientVersionETag_(v62, v63, v59);

      v66 = objc_msgSend_desiredKeys(self, v64, v65);

      if (v66)
      {
        v69 = objc_opt_new();
        v72 = objc_msgSend_recordRetrieveRequest(v13, v70, v71);
        objc_msgSend_setRequestedFields_(v72, v73, v69);

        v262 = 0u;
        v263 = 0u;
        v260 = 0u;
        v261 = 0u;
        v76 = objc_msgSend_desiredKeys(self, v74, v75);
        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v260, v270, 16);
        if (v78)
        {
          v79 = v78;
          v80 = *v261;
          do
          {
            for (i = 0; i != v79; ++i)
            {
              if (*v261 != v80)
              {
                objc_enumerationMutation(v76);
              }

              v82 = *(*(&v260 + 1) + 8 * i);
              v83 = objc_opt_new();
              objc_msgSend_setName_(v83, v84, v82);
              v87 = objc_msgSend_recordRetrieveRequest(v13, v85, v86);
              v90 = objc_msgSend_requestedFields(v87, v88, v89);
              objc_msgSend_addFields_(v90, v91, v83);
            }

            v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v92, &v260, v270, 16);
          }

          while (v79);
        }

        self = selfCopy;
      }

      v93 = objc_msgSend_desiredIndexedListKeys(self, v67, v68);
      v96 = objc_msgSend_count(v93, v94, v95);

      if (v96)
      {
        v99 = objc_msgSend_requestedListFieldsForDesiredIndexedListKeys(self, v97, v98);
        v258[0] = MEMORY[0x277D85DD0];
        v258[1] = 3221225472;
        v258[2] = sub_2253C8FA4;
        v258[3] = &unk_27854D4A0;
        v259 = v13;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v99, v100, v258);
      }

      v101 = objc_msgSend_assetFieldNamesToPublishURLs(self, v97, v98);

      if (v101)
      {
        v104 = objc_opt_new();
        v107 = objc_msgSend_recordRetrieveRequest(v13, v105, v106);
        objc_msgSend_setGetAssetURL_(v107, v108, v104);

        v109 = objc_opt_new();
        v254 = 0u;
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v112 = objc_msgSend_assetFieldNamesToPublishURLs(self, v110, v111);
        v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, &v254, v269, 16);
        if (v114)
        {
          v115 = v114;
          v116 = *v255;
          do
          {
            for (j = 0; j != v115; ++j)
            {
              if (*v255 != v116)
              {
                objc_enumerationMutation(v112);
              }

              v118 = *(*(&v254 + 1) + 8 * j);
              v119 = objc_opt_new();
              objc_msgSend_setName_(v119, v120, v118);
              objc_msgSend_addFields_(v109, v121, v119);
            }

            v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v122, &v254, v269, 16);
          }

          while (v115);
        }

        v125 = objc_msgSend_recordRetrieveRequest(v13, v123, v124);
        v128 = objc_msgSend_getAssetURL(v125, v126, v127);
        objc_msgSend_setAssetFields_(v128, v129, v109);

        self = selfCopy;
        v132 = objc_msgSend_requestedTTL(selfCopy, v130, v131);
        v135 = objc_msgSend_recordRetrieveRequest(v13, v133, v134);
        v138 = objc_msgSend_getAssetURL(v135, v136, v137);
        objc_msgSend_setRequestedTTL_(v138, v139, v132);

        if (objc_msgSend_shouldRequestEncryptedAssetOwnerIdentifier(selfCopy, v140, v141))
        {
          v144 = objc_msgSend_recordRetrieveRequest(v13, v142, v143);
          objc_msgSend_setRequestEncryptedAssetUserIdentifiers_(v144, v145, 1);
        }

        if (objc_msgSend_URLOptions(selfCopy, v142, v143))
        {
          v148 = 2;
        }

        else
        {
          v148 = 1;
        }

        if ((objc_msgSend_URLOptions(selfCopy, v146, v147) & 2) != 0)
        {
          v151 = 4;
        }

        else
        {
          v151 = v148;
        }

        v152 = objc_msgSend_recordRetrieveRequest(v13, v149, v150);
        v155 = objc_msgSend_getAssetURL(v152, v153, v154);
        objc_msgSend_setType_(v155, v156, v151);
      }

      v157 = objc_msgSend_desiredAssetKeys(self, v102, v103);
      v160 = objc_msgSend_count(v157, v158, v159);

      if (v160)
      {
        break;
      }

      if (objc_msgSend_shouldFetchAssetContent(self, v161, v162))
      {
        v199 = objc_opt_new();
        v202 = objc_msgSend_recordRetrieveRequest(v13, v200, v201);
        objc_msgSend_setAssetsToDownload_(v202, v203, v199);

        AssetContent = objc_msgSend_shouldFetchAssetContent(self, v204, v205);
        v178 = objc_msgSend_recordRetrieveRequest(v13, v207, v208);
        v211 = objc_msgSend_assetsToDownload(v178, v209, v210);
        objc_msgSend_setAllAssets_(v211, v212, AssetContent);

LABEL_48:
      }

      objc_msgSend_addObject_(v3, v198, v13);
      v215 = objc_msgSend_recordIDByRequestID(self, v213, v214);
      v218 = objc_msgSend_request(v13, v216, v217);
      v221 = objc_msgSend_operationUUID(v218, v219, v220);
      objc_msgSend_setObject_forKeyedSubscript_(v215, v222, v248, v221);

      v9 = v249 + 1;
      if (v249 + 1 == v246)
      {
        v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v264, v271, 16);
        if (v246)
        {
          goto LABEL_3;
        }

        goto LABEL_51;
      }
    }

    v163 = objc_opt_new();
    v166 = objc_msgSend_recordRetrieveRequest(v13, v164, v165);
    objc_msgSend_setAssetsToDownload_(v166, v167, v163);

    v168 = objc_opt_new();
    v171 = objc_msgSend_recordRetrieveRequest(v13, v169, v170);
    v174 = objc_msgSend_assetsToDownload(v171, v172, v173);
    objc_msgSend_setAssetFields_(v174, v175, v168);

    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v178 = objc_msgSend_desiredAssetKeys(self, v176, v177);
    v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v179, &v250, v268, 16);
    if (v180)
    {
      v181 = v180;
      v182 = *v251;
      do
      {
        for (k = 0; k != v181; ++k)
        {
          if (*v251 != v182)
          {
            objc_enumerationMutation(v178);
          }

          v184 = *(*(&v250 + 1) + 8 * k);
          v185 = objc_opt_new();
          objc_msgSend_setName_(v185, v186, v184);
          v189 = objc_msgSend_recordRetrieveRequest(v13, v187, v188);
          v192 = objc_msgSend_assetsToDownload(v189, v190, v191);
          v195 = objc_msgSend_assetFields(v192, v193, v194);
          objc_msgSend_addFields_(v195, v196, v185);
        }

        v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v197, &v250, v268, 16);
      }

      while (v181);
      v3 = v243;
      self = selfCopy;
    }

    goto LABEL_48;
  }

LABEL_51:

  v223 = v3;
LABEL_55:

  v241 = *MEMORY[0x277D85DE8];

  return v223;
}

- (id)requestedListFieldsForDesiredIndexedListKeys
{
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = objc_msgSend_desiredIndexedListKeys(self, a2, v2);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v39, v45, 16);
  if (v7)
  {
    v8 = v7;
    v38 = 0;
    v9 = *v40;
    v36 = v5;
    v37 = selfCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = CKProcessIndexedArrayKey();
        v13 = 0;
        v15 = v13;
        if (v12)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v16 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v44 = v11;
            _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Invalid desired key %{public}@, which should have been caught earlier", buf, 0xCu);
          }

          v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, selfCopy, @"CKDFetchRecordsURLRequest.m", 197, @"Invalid desired key %@, which should have been caught earlier", v11);
        }

        else if (v13)
        {
          v21 = v38;
          v22 = objc_msgSend_objectForKeyedSubscript_(v38, v14, v13);
          if (v22)
          {
            v19 = v22;
          }

          else
          {
            v27 = objc_opt_new();
            objc_msgSend_setName_(v27, v28, v15);
            v29 = objc_opt_new();
            objc_msgSend_setFieldId_(v29, v30, v27);
            v19 = v29;
            if (!v38)
            {
              v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32);
            }

            objc_msgSend_setObject_forKeyedSubscript_(v21, v31, v19, v15);
          }

          v38 = v21;
          v5 = v36;
          selfCopy = v37;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v23 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v44 = v11;
            _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "Non-indexed desired key %{public}@, which should have been caught earlier", buf, 0xCu);
          }

          v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v26, a2, selfCopy, @"CKDFetchRecordsURLRequest.m", 200, @"Non-indexed desired key %@, which should have been caught earlier", v11);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v33, &v39, v45, 16);
    }

    while (v8);
  }

  else
  {
    v38 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v191 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_msgSend_recordIDByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(objectCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!v16)
  {
    v177 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v177, v178, a2, self, @"CKDFetchRecordsURLRequest.m", 257, @"Expected non-nil recordID for %@", objectCopy);
  }

  if (!objc_msgSend_hasRecordRetrieveResponse(objectCopy, v17, v18))
  {
LABEL_23:
    v149 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_26;
  }

  v21 = objc_msgSend_recordRetrieveResponse(objectCopy, v19, v20);
  v24 = objc_msgSend_clientVersionETagMatch(v21, v22, v23);

  v27 = objc_msgSend_recordRetrieveResponse(objectCopy, v25, v26);
  v30 = objc_msgSend_record(v27, v28, v29);

  if (!v30)
  {
    if (v24)
    {
      v45 = 0;
      v46 = 0;
      v149 = 1;
      goto LABEL_26;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v150 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
    {
      v173 = v150;
      v176 = objc_msgSend_requestUUID(self, v174, v175);
      *buf = 138543618;
      v188 = v176;
      v189 = 2114;
      v190 = v16;
      _os_log_error_impl(&dword_22506F000, v173, OS_LOG_TYPE_ERROR, "req: %{public}@, The response for recordID %{public}@ doesn't contain the record", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v185 = v24;
  v31 = objc_msgSend_translator(self, v19, v20);
  v34 = objc_msgSend_recordRetrieveResponse(objectCopy, v32, v33);
  v37 = objc_msgSend_record(v34, v35, v36);
  v40 = objc_msgSend_zoneID(v16, v38, v39);
  v43 = objc_msgSend_anonymousCKUserID(v40, v41, v42);
  v186 = 0;
  v45 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v31, v44, v37, v43, &v186);
  v46 = v186;

  if (!v45 && v46)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v163 = v49;
      v166 = objc_msgSend_result(objectCopy, v164, v165);
      v169 = objc_msgSend_result(objectCopy, v167, v168);
      v172 = objc_msgSend_error(v169, v170, v171);
      *buf = 138412546;
      v188 = v166;
      v189 = 2114;
      v190 = v172;
      _os_log_error_impl(&dword_22506F000, v163, OS_LOG_TYPE_ERROR, "Invalid data in server protobuf, ignoring response. Server response was: %@, error: %{public}@", buf, 0x16u);
    }

    v52 = objc_msgSend_result(objectCopy, v50, v51);
    objc_msgSend_setCode_(v52, v53, 3);

    v54 = objc_opt_new();
    v57 = objc_msgSend_result(objectCopy, v55, v56);
    objc_msgSend_setError_(v57, v58, v54);

    v59 = objc_opt_new();
    v62 = objc_msgSend_result(objectCopy, v60, v61);
    v65 = objc_msgSend_error(v62, v63, v64);
    objc_msgSend_setClientError_(v65, v66, v59);

    v69 = objc_msgSend_result(objectCopy, v67, v68);
    v72 = objc_msgSend_error(v69, v70, v71);
    v75 = objc_msgSend_clientError(v72, v73, v74);
    objc_msgSend_setType_(v75, v76, 7);

    v79 = objc_msgSend_result(objectCopy, v77, v78);
    v82 = objc_msgSend_error(v79, v80, v81);
    objc_msgSend_setErrorKey_(v82, v83, @"Invalid record");

    v84 = MEMORY[0x277CCACA8];
    v87 = objc_msgSend_localizedDescription(v46, v85, v86);
    v89 = objc_msgSend_stringWithFormat_(v84, v88, @"Failed to read server response: %@", v87);
    v92 = objc_msgSend_result(objectCopy, v90, v91);
    v95 = objc_msgSend_error(v92, v93, v94);
    objc_msgSend_setErrorDescription_(v95, v96, v89);
  }

  v97 = objc_msgSend_recordID(v45, v47, v48);
  v100 = objc_msgSend_zoneID(v97, v98, v99);
  v103 = objc_msgSend_zoneID(v16, v101, v102);
  isEqual = objc_msgSend_isEqual_(v100, v104, v103);

  if ((isEqual & 1) == 0)
  {
    v108 = objc_msgSend_zoneID(v16, v106, v107);
    v111 = objc_msgSend_ownerName(v108, v109, v110);
    v112 = *MEMORY[0x277CBBF28];
    isEqualToString = objc_msgSend_isEqualToString_(v111, v113, *MEMORY[0x277CBBF28]);

    v116 = objc_msgSend_recordID(v45, v114, v115);
    v119 = objc_msgSend_zoneID(v116, v117, v118);
    v122 = objc_msgSend_ownerName(v119, v120, v121);
    v124 = objc_msgSend_isEqualToString_(v122, v123, v112);

    v127 = objc_msgSend_recordID(v45, v125, v126);
    v130 = objc_msgSend_recordName(v127, v128, v129);
    v133 = objc_msgSend_recordName(v16, v131, v132);
    if (objc_msgSend_isEqualToString_(v130, v134, v133))
    {
      v179 = v124;
      v182 = objc_msgSend_recordID(v45, v135, v136);
      v181 = objc_msgSend_zoneID(v182, v137, v138);
      objc_msgSend_zoneName(v181, v139, v140);
      v141 = v183 = v127;
      v144 = objc_msgSend_zoneID(v16, v142, v143);
      v147 = objc_msgSend_zoneName(v144, v145, v146);
      v180 = objc_msgSend_isEqualToString_(v141, v148, v147);

      if (v180 && isEqualToString != v179)
      {
        objc_msgSend_setRecordID_(v45, v106, v16);
      }
    }

    else
    {
    }
  }

  objc_msgSend_updateShareIDCacheWithRecord_(self, v106, v45);
  v149 = v185;
LABEL_26:
  v151 = objc_msgSend_recordFetchedBlock(self, v19, v20);

  if (v151)
  {
    v154 = objc_msgSend_recordFetchedBlock(self, v152, v153);
    v157 = objc_msgSend_result(objectCopy, v155, v156);
    (v154)[2](v154, v45, v16, v149, v157);
  }

  v158 = objc_msgSend_recordCount(self, v152, v153);
  objc_msgSend_setRecordCount_(self, v159, v158 + 1);
  v160 = v46;

  v161 = *MEMORY[0x277D85DE8];
  return v46;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_response(failureCopy, v4, v5);
  v9 = objc_msgSend_operationUUID(v6, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_recordIDByRequestID(self, v10, v11);
    v16 = objc_msgSend_response(failureCopy, v14, v15);
    v19 = objc_msgSend_operationUUID(v16, v17, v18);
    v21 = objc_msgSend_objectForKeyedSubscript_(v13, v20, v19);

    if (v21)
    {
      v24 = objc_msgSend_recordFetchedBlock(self, v22, v23);

      if (!v24)
      {
        goto LABEL_15;
      }

      v27 = objc_msgSend_recordFetchedBlock(self, v25, v26);
      v30 = objc_msgSend_result(failureCopy, v28, v29);
      (v27)[2](v27, 0, v21, 0, v30);
      goto LABEL_13;
    }
  }

  else
  {
  }

  v31 = objc_msgSend_result(failureCopy, v22, v23);
  v34 = objc_msgSend_error(v31, v32, v33);
  if (objc_msgSend_hasClientError(v34, v35, v36))
  {
    v39 = objc_msgSend_result(failureCopy, v37, v38);
    v42 = objc_msgSend_error(v39, v40, v41);
    v45 = objc_msgSend_clientError(v42, v43, v44);
    v48 = objc_msgSend_type(v45, v46, v47);

    if (v48 == 4)
    {
      v51 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CBC120];
      v27 = objc_msgSend_result(failureCopy, v49, v50);
      v30 = sub_225395734(self, v27);
      v54 = objc_msgSend_errorWithDomain_code_userInfo_(v51, v53, v52, 2006, v30);
      objc_msgSend_finishWithError_(self, v55, v54);

LABEL_12:
      v21 = 0;
LABEL_13:

      goto LABEL_15;
    }
  }

  else
  {
  }

  v56 = objc_msgSend_recordFetchedBlock(self, v49, v50);

  if (v56)
  {
    v27 = objc_msgSend_recordFetchedBlock(self, v57, v58);
    v30 = objc_msgSend_result(failureCopy, v59, v60);
    (v27)[2](v27, 0, 0, 0, v30);
    goto LABEL_12;
  }

  v21 = 0;
LABEL_15:
}

@end
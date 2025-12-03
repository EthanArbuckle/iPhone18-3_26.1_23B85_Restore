@interface CKDFetchContentAuthTokensForPutURLRequest
- (CKDFetchContentAuthTokensForPutURLRequest)initWithOperation:(id)operation assetTokenRequest:(id)request headers:(id)headers;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchContentAuthTokensForPutURLRequest

- (CKDFetchContentAuthTokensForPutURLRequest)initWithOperation:(id)operation assetTokenRequest:(id)request headers:(id)headers
{
  requestCopy = request;
  headersCopy = headers;
  v14.receiver = self;
  v14.super_class = CKDFetchContentAuthTokensForPutURLRequest;
  v11 = [(CKDURLRequest *)&v14 initWithOperation:operation];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetTokenRequest, request);
    objc_storeStrong(&v12->_headers, headers);
  }

  return v12;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v3.receiver = self;
  v3.super_class = CKDFetchContentAuthTokensForPutURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:builder];
}

- (void)fillOutRequestProperties:(id)properties
{
  v3.receiver = self;
  v3.super_class = CKDFetchContentAuthTokensForPutURLRequest;
  [(CKDURLRequest *)&v3 fillOutRequestProperties:properties];
}

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
  v257 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_translator(self, a2, v2);
  v7 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v5, v6);
  objc_msgSend_setTransactionStateByRequestIDs_(self, v8, v7);

  v212 = objc_opt_new();
  selfCopy = self;
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v11 = objc_msgSend_successfulBatches(self->_assetTokenRequest, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v249, v256, 16);
  if (v13)
  {
    v14 = *v250;
    v207 = v235;
    v227 = v4;
    v208 = v11;
    v210 = *v250;
    do
    {
      v15 = 0;
      v209 = v13;
      do
      {
        if (*v250 != v14)
        {
          v16 = v15;
          objc_enumerationMutation(v11);
          v15 = v16;
        }

        v211 = v15;
        v17 = *(*(&v249 + 1) + 8 * v15);
        v233 = objc_opt_new();
        objc_msgSend_setAssetBatch_(v233, v18, v17, v207);
        v217 = objc_opt_new();
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        obj = objc_msgSend_assetRecords(v17, v19, v20);
        v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v245, v255, 16);
        if (v215)
        {
          v216 = *v246;
          v221 = v17;
          do
          {
            v22 = 0;
            do
            {
              if (*v246 != v216)
              {
                objc_enumerationMutation(obj);
              }

              v219 = v22;
              v23 = *(*(&v245 + 1) + 8 * v22);
              v24 = objc_opt_new();
              v27 = objc_msgSend_recordID(v23, v25, v26);
              v29 = objc_msgSend_pRecordIdentifierFromRecordID_(v4, v28, v27);
              objc_msgSend_setRecordId_(v24, v30, v29);

              v31 = objc_opt_new();
              v34 = objc_msgSend_recordType(v23, v32, v33);
              objc_msgSend_setName_(v31, v35, v34);

              v218 = v31;
              objc_msgSend_setType_(v24, v36, v31);
              v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v223 = v24;
              objc_msgSend_setAssetFields_(v24, v38, v37);

              v230 = v23;
              v41 = objc_msgSend_allRecordKeys(v23, v39, v40);
              v241 = 0u;
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v220 = v41;
              v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v42, &v241, v254, 16);
              if (v224)
              {
                v222 = *v242;
                do
                {
                  v44 = 0;
                  do
                  {
                    if (*v242 != v222)
                    {
                      objc_enumerationMutation(v220);
                    }

                    v45 = *(*(&v241 + 1) + 8 * v44);
                    v46 = objc_msgSend_allRegularAndSectionAndRereferenceItemsWithRecordKey_(v230, v43, v45);
                    if (!objc_msgSend_count(v46, v47, v48))
                    {
                      __assert_rtn("[CKDFetchContentAuthTokensForPutURLRequest generateRequestOperations]", "CKDFetchContentAuthTokensForPutURLRequest.m", 96, "items.count");
                    }

                    v226 = v44;
                    v49 = objc_opt_new();
                    v50 = objc_opt_new();
                    objc_msgSend_setName_(v50, v51, v45);
                    v225 = v50;
                    objc_msgSend_setField_(v49, v52, v50);
                    v53 = objc_alloc(MEMORY[0x277CBEB18]);
                    v56 = objc_msgSend_count(v46, v54, v55);
                    v58 = objc_msgSend_initWithCapacity_(v53, v57, v56);
                    v231 = v49;
                    objc_msgSend_setAssets_(v49, v59, v58);

                    v239 = 0u;
                    v240 = 0u;
                    v237 = 0u;
                    v238 = 0u;
                    v228 = v46;
                    v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v60, &v237, v253, 16);
                    if (v232)
                    {
                      v229 = *v238;
                      do
                      {
                        for (i = 0; i != v232; ++i)
                        {
                          if (*v238 != v229)
                          {
                            objc_enumerationMutation(v228);
                          }

                          v62 = *(*(&v237 + 1) + 8 * i);
                          v63 = objc_opt_new();
                          v66 = objc_msgSend_recordID(v230, v64, v65);
                          v68 = objc_msgSend_pRecordIdentifierFromRecordID_(v4, v67, v66);
                          objc_msgSend_setRecordId_(v63, v69, v68);

                          v72 = objc_msgSend_signature(v62, v70, v71);
                          objc_msgSend_setSignature_(v63, v73, v72);

                          v77 = objc_msgSend_paddedFileSize(v62, v74, v75);
                          if (!v77)
                          {
                            v77 = objc_msgSend_fileSize(v62, v76, 0);
                          }

                          objc_msgSend_setSize_(v63, v76, v77);
                          v80 = objc_msgSend_referenceSignature(v62, v78, v79);
                          objc_msgSend_setReferenceSignature_(v63, v81, v80);

                          v84 = objc_msgSend_wrappedAssetKey(v62, v82, v83);

                          if (v84)
                          {
                            v87 = objc_opt_new();
                            objc_msgSend_setProtectionInfo_(v63, v88, v87);

                            v91 = objc_msgSend_wrappedAssetKey(v62, v89, v90);
                            v94 = objc_msgSend_protectionInfo(v63, v92, v93);
                            objc_msgSend_setProtectionInfo_(v94, v95, v91);
                          }

                          v96 = objc_msgSend_clearAssetKey(v62, v85, v86);

                          if (v96)
                          {
                            v99 = objc_msgSend_clearAssetKey(v62, v97, v98);
                            objc_msgSend_setClearAssetKey_(v63, v100, v99);
                          }

                          v101 = objc_msgSend_assets(v231, v97, v98);
                          objc_msgSend_addObject_(v101, v102, v63);

                          v103 = [CKDAssetID alloc];
                          v106 = objc_msgSend_recordId(v63, v104, v105);
                          v109 = objc_msgSend_signature(v63, v107, v108);
                          v112 = objc_msgSend_referenceSignature(v63, v110, v111);
                          v113 = MEMORY[0x277CCABB0];
                          v116 = objc_msgSend_size(v63, v114, v115);
                          v118 = objc_msgSend_numberWithLongLong_(v113, v117, v116);
                          v120 = objc_msgSend_initWithRecordID_fileSignature_referenceSignature_size_(v103, v119, v106, v109, v112, v118);

                          v123 = objc_msgSend_itemsByAssetId(v233, v121, v122);
                          v125 = objc_msgSend_objectForKeyedSubscript_(v123, v124, v120);

                          if (!v125)
                          {
                            v125 = objc_msgSend_set(MEMORY[0x277CBEB58], v126, v127);
                            v130 = objc_msgSend_itemsByAssetId(v233, v128, v129);
                            objc_msgSend_setObject_forKeyedSubscript_(v130, v131, v125, v120);
                          }

                          objc_msgSend_addObject_(v125, v126, v62);
                          if (_os_feature_enabled_impl())
                          {
                            v132 = [CKDAssetID alloc];
                            v135 = objc_msgSend_recordId(v63, v133, v134);
                            v138 = objc_msgSend_signature(v63, v136, v137);
                            v139 = MEMORY[0x277CCABB0];
                            v142 = objc_msgSend_size(v63, v140, v141);
                            v144 = objc_msgSend_numberWithLongLong_(v139, v143, v142);
                            v146 = objc_msgSend_initWithRecordID_fileSignature_referenceSignature_size_(v132, v145, v135, v138, 0, v144);

                            v149 = objc_msgSend_itemsByAssetIdIgnoreRefSignature(v233, v147, v148);
                            v151 = objc_msgSend_objectForKeyedSubscript_(v149, v150, v146);

                            if (!v151)
                            {
                              v151 = objc_msgSend_set(MEMORY[0x277CBEB58], v152, v153);
                              v156 = objc_msgSend_itemsByAssetIdIgnoreRefSignature(v233, v154, v155);
                              objc_msgSend_setObject_forKeyedSubscript_(v156, v157, v151, v146);
                            }

                            objc_msgSend_addObject_(v151, v152, v62);

                            v4 = v227;
                          }
                        }

                        v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v228, v158, &v237, v253, 16);
                      }

                      while (v232);
                    }

                    v161 = objc_msgSend_assetFields(v223, v159, v160);
                    objc_msgSend_addObject_(v161, v162, v231);

                    v44 = v226 + 1;
                    v17 = v221;
                  }

                  while (v226 + 1 != v224);
                  v224 = objc_msgSend_countByEnumeratingWithState_objects_count_(v220, v43, &v241, v254, 16);
                }

                while (v224);
              }

              objc_msgSend_addObject_(v217, v163, v223);
              v22 = v219 + 1;
            }

            while (v219 + 1 != v215);
            v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v164, &v245, v255, 16);
          }

          while (v215);
        }

        v167 = objc_msgSend_operationType(selfCopy, v165, v166);
        v169 = objc_msgSend_operationRequestWithType_(selfCopy, v168, v167);
        v170 = objc_opt_new();
        objc_msgSend_setAssetUploadTokenRetrieveRequest_(v169, v171, v170);
        objc_msgSend_setUploads_(v170, v172, v217);
        v175 = objc_msgSend_authPutRequest(v17, v173, v174);
        objc_msgSend_setAuthPutRequest_(v170, v176, v175);

        if (_os_feature_enabled_impl())
        {
          objc_msgSend_setOptions_(v170, v177, 1);
        }

        v179 = objc_msgSend_assetZone(v17, v177, v178);
        v182 = objc_msgSend_assetZoneKey(v179, v180, v181);
        v185 = objc_msgSend_authPutType(v182, v183, v184);

        if (v185 != 3 || (objc_msgSend_useMMCSEncryptionV2(v17, v186, v187) & 1) == 0)
        {
          v188 = objc_msgSend_authPutRequest(v17, v186, v187);
          objc_msgSend_setAuthPutRequest_(v170, v189, v188);
        }

        objc_msgSend_setAuthPutType_(v170, v186, v185);
        headers = selfCopy->_headers;
        v234[0] = MEMORY[0x277D85DD0];
        v234[1] = 3221225472;
        v235[0] = sub_2253BE7FC;
        v235[1] = &unk_27854D380;
        v236 = v170;
        v191 = v170;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(headers, v192, v234);
        v195 = objc_msgSend_transactionStateByRequestIDs(selfCopy, v193, v194);
        v198 = objc_msgSend_request(v169, v196, v197);
        v201 = objc_msgSend_operationUUID(v198, v199, v200);
        objc_msgSend_setObject_forKey_(v195, v202, v233, v201);

        objc_msgSend_addObject_(v212, v203, v169);
        v14 = v210;
        v15 = v211 + 1;
        v11 = v208;
      }

      while (v211 + 1 != v209);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v204, &v249, v256, 16);
      v14 = v210;
    }

    while (v13);
  }

  v205 = *MEMORY[0x277D85DE8];

  return v212;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v449 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_response(objectCopy, v5, v6);
  v10 = objc_msgSend_operationUUID(v7, v8, v9);

  if (!v10)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1000, @"Missing operationUUID on %@", objectCopy);
    v73 = LABEL_33:;
    goto LABEL_129;
  }

  if ((objc_msgSend_hasAssetUploadTokenRetrieveResponse(objectCopy, v11, v12) & 1) == 0)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1000, @"Missing AssetUploadTokenRetrieveResponse on %@", objectCopy);
    goto LABEL_33;
  }

  v15 = objc_msgSend_assetUploadTokenRetrieveResponse(objectCopy, v13, v14);
  v18 = objc_msgSend_transactionStateByRequestIDs(self, v16, v17);
  v20 = objc_msgSend_objectForKey_(v18, v19, v10);

  if (!v20)
  {
    v73 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 1000, @"Can't find transactionState for %@", v10);
    goto LABEL_128;
  }

  selfCopy = self;
  v25 = objc_msgSend_assetBatch(v20, v21, v22);
  if (!v25)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 1000, @"Can't find assetBatch for %@", v10);
    v73 = LABEL_126:;
    goto LABEL_127;
  }

  v26 = objc_msgSend_authPutResponse(v15, v23, v24);
  objc_msgSend_setAuthPutResponse_(v25, v27, v26);

  v407 = v10;
  v404 = v25;
  v405 = v15;
  v411 = v20;
  v402 = objectCopy;
  if (objc_msgSend_contentResponseHeadersCount(v15, v28, v29))
  {
    v32 = objc_opt_new();
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v35 = objc_msgSend_contentResponseHeaders(v15, v33, v34);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v435, v448, 16);
    if (v37)
    {
      v40 = v37;
      v41 = MEMORY[0x277CBC880];
      v42 = *v436;
      do
      {
        v43 = 0;
        do
        {
          if (*v436 != v42)
          {
            objc_enumerationMutation(v35);
          }

          v44 = *(*(&v435 + 1) + 8 * v43);
          v45 = objc_msgSend_headerKey(v44, v38, v39);
          v48 = objc_msgSend_headerValue(v44, v46, v47);
          v50 = v48;
          if (v45)
          {
            v51 = v48 == 0;
          }

          else
          {
            v51 = 1;
          }

          if (v51)
          {
            if (*v41 != -1)
            {
              dispatch_once(v41, *MEMORY[0x277CBC878]);
            }

            v52 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v53 = v52;
              v56 = objc_msgSend_headerKey(v44, v54, v55);
              v59 = objc_msgSend_headerValue(v44, v57, v58);
              *buf = 138543619;
              v440 = v56;
              v441 = 2113;
              v442 = v59;
              _os_log_error_impl(&dword_22506F000, v53, OS_LOG_TYPE_ERROR, "Unable to set header %{public}@ with value %{private}@", buf, 0x16u);

              v41 = MEMORY[0x277CBC880];
            }
          }

          else
          {
            objc_msgSend_setObject_forKey_(v32, v49, v48, v45);
          }

          ++v43;
        }

        while (v40 != v43);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v435, v448, 16);
      }

      while (v40);
    }

    v25 = v404;
    if (objc_msgSend_count(v32, v60, v61))
    {
      objc_msgSend_setAuthPutResponseHeaders_(v404, v62, v32);
    }

    objectCopy = v402;
    v10 = v407;
    v15 = v405;
    v20 = v411;
  }

  if ((objc_msgSend_useMMCSEncryptionV2(v25, v30, v31) & 1) == 0)
  {
    if (objc_msgSend_isRereferenceAssetBatch(v25, v63, v64))
    {
      v65 = objc_msgSend_authPutResponse(v25, v63, v64);

      if (!v65)
      {
        v389 = objc_msgSend_authPutRequest(v25, v63, v64);

        v390 = *MEMORY[0x277CBC878];
        v391 = *MEMORY[0x277CBC880];
        if (v389)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v390);
          }

          v392 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v392, OS_LOG_TYPE_ERROR, "Server did not return the required authPutResponse even though an authPutRequest was sent.", buf, 2u);
          }

          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v393, *MEMORY[0x277CBC120], 1000, @"Server did not return the required authPutResponse even though an authPutRequest was sent. AssetUploadTokenRetrieveResponse on %@", objectCopy);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v390);
          }

          v395 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v395, OS_LOG_TYPE_ERROR, "Missing authPutRequest.", buf, 2u);
          }

          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v396, *MEMORY[0x277CBC120], 1000, @"Missing authPutRequest. AssetUploadTokenRetrieveResponse on %@", objectCopy);
        }

        goto LABEL_126;
      }
    }
  }

  v66 = objc_msgSend_authPutRequest(v25, v63, v64);
  if (v66)
  {
    v69 = v66;
    v70 = objc_msgSend_authPutResponse(v25, v67, v68);
    if (v70)
    {
    }

    else
    {
      isRereferenceAssetBatch = objc_msgSend_isRereferenceAssetBatch(v25, v71, v72);

      if ((isRereferenceAssetBatch & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v75 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v75, OS_LOG_TYPE_ERROR, "Server did not return an authPutResponse even though an authPutRequest was sent. While unexpected, this just means the MMCS operation requires a trip to the Content server", buf, 2u);
        }
      }
    }
  }

  v76 = objc_msgSend_authPutResponse(v25, v67, v68);
  if (v76)
  {
    v79 = v76;
    v80 = objc_msgSend_authPutResponseHeaders(v25, v77, v78);

    if (!v80)
    {
      objectCopy = v402;
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v77, *MEMORY[0x277CBC120], 1000, @"Failed to get headers for authPutResponse AssetUploadTokenRetrieveResponse on %@", v402);
      goto LABEL_126;
    }
  }

  v433 = 0u;
  v434 = 0u;
  v431 = 0u;
  v432 = 0u;
  obj = objc_msgSend_uploadTokens(v15, v77, v78);
  v399 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v431, v447, 16);
  if (!v399)
  {
    goto LABEL_102;
  }

  v400 = *v432;
  while (2)
  {
    v84 = 0;
    do
    {
      if (*v432 != v400)
      {
        objc_enumerationMutation(obj);
      }

      v406 = v84;
      v85 = *(*(&v431 + 1) + 8 * v84);
      v86 = objc_msgSend_translator(selfCopy, v82, v83);
      v89 = objc_msgSend_asset(v85, v87, v88);
      v92 = objc_msgSend_recordId(v89, v90, v91);
      v430 = 0;
      v94 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v86, v93, v92, &v430);
      v408 = v430;

      v421 = v94;
      if (!v94)
      {
        v394 = v408;
        objectCopy = v402;
        v73 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v95, *MEMORY[0x277CBC120], 1000, @"Failed to parse recordID from AssetUploadTokenRetrieveResponseUploadToken on %@ : %@", v402, v408);
        goto LABEL_119;
      }

      v97 = objc_msgSend_asset(v85, v95, v96);
      v100 = objc_msgSend_signature(v97, v98, v99);

      if (!v100)
      {
        objectCopy = v402;
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v101, *MEMORY[0x277CBC120], 1000, @"Missing Asset signature from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        v73 = LABEL_117:;
        goto LABEL_118;
      }

      v103 = objc_msgSend_asset(v85, v101, v102);
      v106 = objc_msgSend_size(v103, v104, v105);

      if (!v106)
      {
        objectCopy = v402;
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v107, *MEMORY[0x277CBC120], 1000, @"Missing Asset size from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        goto LABEL_117;
      }

      v109 = objc_msgSend_asset(v85, v107, v108);
      v112 = objc_msgSend_owner(v109, v110, v111);

      if (!v112)
      {
        objectCopy = v402;
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v113, *MEMORY[0x277CBC120], 1000, @"Missing Asset owner from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        goto LABEL_117;
      }

      v115 = objc_msgSend_asset(v85, v113, v114);
      v118 = objc_msgSend_requestor(v115, v116, v117);

      if (!v118)
      {
        objectCopy = v402;
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v119, *MEMORY[0x277CBC120], 1000, @"Missing Asset requestor from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        goto LABEL_117;
      }

      v121 = objc_msgSend_token(v85, v119, v120);

      if (!v121)
      {
        objectCopy = v402;
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v122, *MEMORY[0x277CBC120], 1000, @"Missing Asset token from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        goto LABEL_117;
      }

      v124 = objc_msgSend_asset(v85, v122, v123);
      v127 = objc_msgSend_contentBaseURL(v124, v125, v126);

      if (!v127)
      {
        objectCopy = v402;
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v128, *MEMORY[0x277CBC120], 1000, @"Missing Asset contentBaseURL from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        goto LABEL_117;
      }

      v130 = MEMORY[0x277CBEBC0];
      v131 = objc_msgSend_asset(v85, v128, v129);
      v134 = objc_msgSend_contentBaseURL(v131, v132, v133);
      v136 = objc_msgSend_URLWithString_(v130, v135, v134);

      if (!v136)
      {
        objectCopy = v402;
        v73 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v137, *MEMORY[0x277CBC120], 1000, @"Malformed Asset contentBaseURL from AssetUploadTokenRetrieveResponseUploadToken on %@", v402);
        goto LABEL_134;
      }

      if (_os_feature_enabled_impl() && objc_msgSend_duplicateAsset(v85, v138, v139) && (objc_msgSend_asset(v85, v140, v141), v142 = objc_claimAutoreleasedReturnValue(), objc_msgSend_uploadReceipt(v142, v143, v144), v145 = objc_claimAutoreleasedReturnValue(), v145, v142, v145))
      {
        v148 = objc_msgSend_asset(v85, v146, v147);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v413 = v148;
        v149 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v385 = v149;
          v388 = objc_msgSend_asset(v85, v386, v387);
          *buf = 138412290;
          v440 = v388;
          _os_log_debug_impl(&dword_22506F000, v385, OS_LOG_TYPE_DEBUG, "Asset %@ exists on server. Reuse existing reference signature and asset key and skip uploading.", buf, 0xCu);
        }

        v150 = [CKDAssetID alloc];
        v153 = objc_msgSend_asset(v85, v151, v152);
        v156 = objc_msgSend_recordId(v153, v154, v155);
        v159 = objc_msgSend_asset(v85, v157, v158);
        v162 = objc_msgSend_signature(v159, v160, v161);
        v163 = MEMORY[0x277CCABB0];
        v166 = objc_msgSend_asset(v85, v164, v165);
        v169 = objc_msgSend_size(v166, v167, v168);
        v171 = objc_msgSend_numberWithLongLong_(v163, v170, v169);
        v173 = objc_msgSend_initWithRecordID_fileSignature_referenceSignature_size_(v150, v172, v156, v162, 0, v171);

        v176 = objc_msgSend_itemsByAssetIdIgnoreRefSignature(v411, v174, v175);
        v178 = objc_msgSend_objectForKeyedSubscript_(v176, v177, v173);

        v179 = v413;
        if (!v178)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v180 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v440 = v413;
            _os_log_error_impl(&dword_22506F000, v180, OS_LOG_TYPE_ERROR, "unable to find items for duplicate asset %@", buf, 0xCu);
          }
        }

        v428 = 0u;
        v429 = 0u;
        v426 = 0u;
        v427 = 0u;
        v403 = v178;
        v410 = objc_msgSend_countByEnumeratingWithState_objects_count_(v403, v181, &v426, v446, 16);
        if (v410)
        {
          v409 = *v427;
LABEL_70:
          v184 = 0;
          while (1)
          {
            if (*v427 != v409)
            {
              objc_enumerationMutation(v403);
            }

            v416 = v184;
            v185 = *(*(&v426 + 1) + 8 * v184);
            v186 = objc_msgSend_asset(v185, v182, v183);
            v189 = objc_msgSend_record(v186, v187, v188);

            v412 = v185;
            v192 = objc_msgSend_asset(v185, v190, v191);
            v193 = [CKDWrappingContext alloc];
            v196 = objc_msgSend_recordID(v189, v194, v195);
            v418 = v192;
            v199 = objc_msgSend_recordKey(v192, v197, v198);
            v202 = objc_msgSend_signature(v179, v200, v201);
            objc_msgSend_referenceSignature(v179, v203, v204);
            v206 = v205 = v179;
            v417 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v193, v207, v196, v199, 0, v202, v206);

            v210 = objc_msgSend_operation(selfCopy, v208, v209);
            v213 = objc_msgSend_container(v210, v211, v212);
            v216 = objc_msgSend_pcsManager(v213, v214, v215);
            v219 = objc_msgSend_protectionInfo(v205, v217, v218);
            v222 = objc_msgSend_protectionInfo(v219, v220, v221);
            v225 = objc_msgSend_recordPCS(v189, v223, v224);
            v227 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v216, v226, v222, v225, v417, 0);

            v228 = v227;
            if (v227)
            {
              v179 = v413;
              v231 = objc_msgSend_referenceSignature(v413, v229, v230);
              objc_msgSend_setReferenceSignature_(v412, v232, v231);

              objc_msgSend_setAssetKey_(v412, v233, v227);
              v236 = objc_msgSend_uploadReceipt(v413, v234, v235);
              objc_msgSend_setUploadReceipt_(v412, v237, v236);

              objc_msgSend_setContentBaseURL_(v412, v238, v136);
              v241 = objc_msgSend_asset(v85, v239, v240);
              v244 = objc_msgSend_owner(v241, v242, v243);
              objc_msgSend_setOwner_(v412, v245, v244);

              v248 = objc_msgSend_asset(v85, v246, v247);
              v251 = objc_msgSend_requestor(v248, v249, v250);
              objc_msgSend_setRequestor_(v412, v252, v251);

              v255 = objc_msgSend_token(v85, v253, v254);
              objc_msgSend_setAuthToken_(v412, v256, v255);

              v259 = objc_msgSend_tokenExpiration(v85, v257, v258);
              objc_msgSend_setUploadTokenExpiration_(v412, v260, v259);
              v263 = objc_msgSend_referenceSignature(v413, v261, v262);
              v264 = v418;
              objc_msgSend_setReferenceSignature_(v418, v265, v263);

              objc_msgSend_setAssetKey_(v418, v266, v228);
              v267 = v189;
            }

            else
            {
              v264 = v418;
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v179 = v413;
              v267 = v189;
              v268 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v440 = v413;
                _os_log_error_impl(&dword_22506F000, v268, OS_LOG_TYPE_ERROR, "failed to unwrapp asset key for duplicate asset %@", buf, 0xCu);
              }
            }

            if (!v228)
            {
              break;
            }

            v184 = v416 + 1;
            if (v410 == v416 + 1)
            {
              v410 = objc_msgSend_countByEnumeratingWithState_objects_count_(v403, v182, &v426, v446, 16);
              if (v410)
              {
                goto LABEL_70;
              }

              break;
            }
          }
        }

        objc_msgSend_removeAllObjects(v403, v269, v270);
        v10 = v407;
      }

      else
      {
        v271 = [CKDAssetID alloc];
        v419 = objc_msgSend_asset(v85, v272, v273);
        v276 = objc_msgSend_recordId(v419, v274, v275);
        v279 = objc_msgSend_asset(v85, v277, v278);
        v282 = objc_msgSend_signature(v279, v280, v281);
        v285 = objc_msgSend_asset(v85, v283, v284);
        v288 = objc_msgSend_referenceSignature(v285, v286, v287);
        v289 = MEMORY[0x277CCABB0];
        v292 = objc_msgSend_asset(v85, v290, v291);
        v295 = objc_msgSend_size(v292, v293, v294);
        v297 = objc_msgSend_numberWithLongLong_(v289, v296, v295);
        v299 = objc_msgSend_initWithRecordID_fileSignature_referenceSignature_size_(v271, v298, v276, v282, v288, v297);

        v302 = objc_msgSend_itemsByAssetId(v411, v300, v301);
        v304 = objc_msgSend_objectForKeyedSubscript_(v302, v303, v299);

        if (v304)
        {
          v414 = v299;
        }

        else
        {
          v307 = objc_msgSend_translator(selfCopy, v305, v306);
          v310 = objc_msgSend_asset(v85, v308, v309);
          v313 = objc_msgSend_recordId(v310, v311, v312);
          v315 = objc_msgSend_pContainerScopedRecordIdentifierWithPRecordIdentifier_(v307, v314, v313);

          if (!v315)
          {
            goto LABEL_133;
          }

          v317 = [CKDAssetID alloc];
          v420 = objc_msgSend_asset(v85, v318, v319);
          v322 = objc_msgSend_signature(v420, v320, v321);
          v325 = objc_msgSend_asset(v85, v323, v324);
          v328 = objc_msgSend_referenceSignature(v325, v326, v327);
          v329 = MEMORY[0x277CCABB0];
          v332 = objc_msgSend_asset(v85, v330, v331);
          v335 = objc_msgSend_size(v332, v333, v334);
          v337 = objc_msgSend_numberWithLongLong_(v329, v336, v335);
          v339 = objc_msgSend_initWithRecordID_fileSignature_referenceSignature_size_(v317, v338, v315, v322, v328, v337);

          v342 = objc_msgSend_itemsByAssetId(v411, v340, v341);
          v304 = objc_msgSend_objectForKeyedSubscript_(v342, v343, v339);

          if (!v304)
          {
            v299 = v339;
LABEL_133:
            v25 = v404;
            v15 = v405;
            objectCopy = v402;
            v73 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v316, *MEMORY[0x277CBC120], 1000, @"Failed to find asset for assetID %@ on %@", v299, v402);

LABEL_134:
            v20 = v411;
LABEL_118:
            v394 = v408;
LABEL_119:
            v10 = v407;

            goto LABEL_127;
          }

          v414 = v339;
        }

        v424 = 0u;
        v425 = 0u;
        v422 = 0u;
        v423 = 0u;
        v173 = v304;
        v345 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v344, &v422, v445, 16);
        v346 = MEMORY[0x277CBC880];
        if (v345)
        {
          v347 = v345;
          v348 = *v423;
          do
          {
            v349 = 0;
            do
            {
              if (*v423 != v348)
              {
                objc_enumerationMutation(v173);
              }

              v350 = *(*(&v422 + 1) + 8 * v349);
              if (*v346 != -1)
              {
                dispatch_once(v346, *MEMORY[0x277CBC878]);
              }

              v351 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v376 = v351;
                v379 = objc_msgSend_token(v85, v377, v378);
                v382 = objc_msgSend_trackingUUID(v350, v380, v381);
                *buf = 138412802;
                v440 = v379;
                v441 = 2114;
                v442 = v421;
                v443 = 2112;
                v444 = v382;
                _os_log_debug_impl(&dword_22506F000, v376, OS_LOG_TYPE_DEBUG, "Setting the upload token %@ for recordID:%{public}@, MMCSItem:%@", buf, 0x20u);

                v346 = MEMORY[0x277CBC880];
              }

              objc_msgSend_setContentBaseURL_(v350, v352, v136);
              v355 = objc_msgSend_asset(v85, v353, v354);
              v358 = objc_msgSend_owner(v355, v356, v357);
              objc_msgSend_setOwner_(v350, v359, v358);

              v362 = objc_msgSend_asset(v85, v360, v361);
              v365 = objc_msgSend_requestor(v362, v363, v364);
              objc_msgSend_setRequestor_(v350, v366, v365);

              v369 = objc_msgSend_token(v85, v367, v368);
              objc_msgSend_setAuthToken_(v350, v370, v369);

              v373 = objc_msgSend_tokenExpiration(v85, v371, v372);
              objc_msgSend_setUploadTokenExpiration_(v350, v374, v373);
              ++v349;
            }

            while (v347 != v349);
            v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v375, &v422, v445, 16);
          }

          while (v347);
        }

        objc_msgSend_removeAllObjects(v173, v383, v384);
        v10 = v407;
        v179 = v414;
      }

      v15 = v405;
      v84 = v406 + 1;
      v20 = v411;
      v25 = v404;
    }

    while (v406 + 1 != v399);
    v399 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v431, v447, 16);
    if (v399)
    {
      continue;
    }

    break;
  }

LABEL_102:

  v73 = 0;
  objectCopy = v402;
LABEL_127:

LABEL_128:
LABEL_129:

  v397 = *MEMORY[0x277D85DE8];

  return v73;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v103 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v8 = objc_msgSend_result(failureCopy, v6, v7);
  v11 = objc_msgSend_error(v8, v9, v10);
  if (objc_msgSend_hasClientError(v11, v12, v13))
  {
    v16 = objc_msgSend_result(failureCopy, v14, v15);
    v19 = objc_msgSend_error(v16, v17, v18);
    v22 = objc_msgSend_clientError(v19, v20, v21);
    v25 = objc_msgSend_type(v22, v23, v24);

    if (v25 == 4)
    {
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CBC120];
      v30 = objc_msgSend_result(failureCopy, v26, v27);
      v31 = sub_225395734(self, v30);
      v33 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v32, v29, 2006, v31);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v34 = objc_msgSend_result(failureCopy, v26, v27);
  v37 = objc_msgSend_error(v34, v35, v36);
  if ((objc_msgSend_hasExtensionError(v37, v38, v39) & 1) == 0)
  {

LABEL_11:
    v58 = objc_msgSend_response(failureCopy, v52, v53);
    v61 = objc_msgSend_operationUUID(v58, v59, v60);

    if (v61)
    {
      v64 = objc_msgSend_transactionStateByRequestIDs(self, v62, v63);
      v66 = objc_msgSend_objectForKey_(v64, v65, v61);

      if (v66)
      {
        v95 = MEMORY[0x277CBC560];
        v29 = *MEMORY[0x277CBC120];
        v97 = objc_msgSend_result(failureCopy, v67, v68);
        v69 = sub_2253962A4(v97);
        v96 = objc_msgSend_result(failureCopy, v70, v71);
        sub_225395734(self, v96);
        v72 = v98 = v61;
        v75 = objc_msgSend_result(failureCopy, v73, v74);
        objc_msgSend_error(v75, v76, v77);
        v79 = v78 = a2;
        v82 = objc_msgSend_errorDescription(v79, v80, v81);
        v56 = objc_msgSend_errorWithDomain_code_userInfo_format_(v95, v83, v29, v69, v72, @"Error uploading asset: %@", v82);

        a2 = v78;
        v61 = v98;
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v86 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v100 = v61;
          v101 = 2112;
          v102 = failureCopy;
          _os_log_error_impl(&dword_22506F000, v86, OS_LOG_TYPE_ERROR, "Can't find assetBatch for %{public}@ on %@", buf, 0x16u);
        }

        v29 = *MEMORY[0x277CBC120];
        v56 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v87, *MEMORY[0x277CBC120], 1000, @"Can't find transactionState");
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v84 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = failureCopy;
        _os_log_error_impl(&dword_22506F000, v84, OS_LOG_TYPE_ERROR, "Missing requestID on %@", buf, 0xCu);
      }

      v29 = *MEMORY[0x277CBC120];
      v56 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v85, *MEMORY[0x277CBC120], 1000, @"Missing requestID on %@", failureCopy);
    }

    if (!v56)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v42 = objc_msgSend_result(failureCopy, v40, v41);
  v45 = objc_msgSend_error(v42, v43, v44);
  v48 = objc_msgSend_extensionError(v45, v46, v47);
  hasTypeCode = objc_msgSend_hasTypeCode(v48, v49, v50);

  if (!hasTypeCode)
  {
    goto LABEL_11;
  }

  v54 = MEMORY[0x277CBC560];
  v29 = *MEMORY[0x277CBC120];
  v30 = objc_msgSend_result(failureCopy, v52, v53);
  v31 = sub_225395734(self, v30);
  v33 = objc_msgSend_errorWithDomain_code_userInfo_format_(v54, v55, v29, 6000, v31, @"Plugin-Specific Error");
LABEL_8:
  v56 = v33;

  if (!v56)
  {
LABEL_26:
    v88 = a2;
    v89 = MEMORY[0x277CBC560];
    v90 = objc_opt_class();
    v91 = NSStringFromClass(v90);
    v92 = NSStringFromSelector(v88);
    v56 = objc_msgSend_errorWithDomain_code_format_(v89, v93, v29, 1000, @"Generic %@ %@ error", v91, v92);
  }

LABEL_27:
  objc_msgSend_finishWithError_(self, v57, v56);

  v94 = *MEMORY[0x277D85DE8];
}

@end
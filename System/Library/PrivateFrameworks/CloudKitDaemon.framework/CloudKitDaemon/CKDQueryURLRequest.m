@interface CKDQueryURLRequest
- (BOOL)requestGETPreAuth;
- (BOOL)requiresCKAnonymousUserIDs;
- (CKDQueryURLRequest)initWithOperation:(id)a3 query:(id)a4 cursor:(id)a5 limit:(unint64_t)a6 requestedFields:(id)a7 zoneID:(id)a8;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
- (void)requestDidComplete;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDQueryURLRequest

- (BOOL)requiresCKAnonymousUserIDs
{
  v8.receiver = self;
  v8.super_class = CKDQueryURLRequest;
  if (![(CKDURLRequest *)&v8 requiresCKAnonymousUserIDs])
  {
    return 0;
  }

  v5 = objc_msgSend_zoneID(self, v3, v4);
  v6 = v5 != 0;

  return v6;
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)zoneIDsToLock
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zoneID(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_zoneID(self, v5, v6);
    v12[0] = v7;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v12, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)generateRequestOperations
{
  v193 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  if (!objc_msgSend_requiresCKAnonymousUserIDs(self, v7, v8))
  {
LABEL_4:
    v28 = objc_opt_new();
    objc_msgSend_setQueryRetrieveRequest_(v6, v29, v28);

    v32 = objc_msgSend_query(self, v30, v31);

    if (v32)
    {
      v35 = objc_msgSend_translator(self, v33, v34);
      v38 = objc_msgSend_query(self, v36, v37);
      v189 = 0;
      v40 = objc_msgSend_pQueryFromQuery_error_(v35, v39, v38, &v189);
      v41 = v189;
      v44 = objc_msgSend_queryRetrieveRequest(v6, v42, v43);
      objc_msgSend_setQuery_(v44, v45, v40);

      if (v41)
      {
        objc_msgSend_finishWithError_(self, v46, v41);

        v48 = MEMORY[0x277CBEBF8];
        goto LABEL_41;
      }
    }

    else
    {
      v49 = objc_msgSend_cursor(self, v33, v34);

      if (v49)
      {
        v50 = objc_msgSend_cursor(self, v46, v47);
        v53 = objc_msgSend_queryRetrieveRequest(v6, v51, v52);
        objc_msgSend_setContinuationMarker_(v53, v54, v50);
      }
    }

    v55 = objc_msgSend_zoneID(self, v46, v47);

    if (v55)
    {
      v58 = objc_msgSend_translator(self, v56, v57);
      v61 = objc_msgSend_zoneID(self, v59, v60);
      v63 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v58, v62, v61);
      v66 = objc_msgSend_queryRetrieveRequest(v6, v64, v65);
      objc_msgSend_setZoneIdentifier_(v66, v67, v63);
    }

    v68 = objc_msgSend_requestedFields(self, v56, v57);

    if (v68)
    {
      v71 = objc_opt_new();
      v74 = objc_msgSend_queryRetrieveRequest(v6, v72, v73);
      objc_msgSend_setRequestedFields_(v74, v75, v71);

      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v78 = objc_msgSend_requestedFields(self, v76, v77);
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, &v185, v192, 16);
      if (v80)
      {
        v81 = v80;
        v82 = *v186;
        do
        {
          for (i = 0; i != v81; ++i)
          {
            if (*v186 != v82)
            {
              objc_enumerationMutation(v78);
            }

            v84 = *(*(&v185 + 1) + 8 * i);
            v85 = objc_opt_new();
            objc_msgSend_setName_(v85, v86, v84);
            v89 = objc_msgSend_queryRetrieveRequest(v6, v87, v88);
            v92 = objc_msgSend_requestedFields(v89, v90, v91);
            objc_msgSend_addFields_(v92, v93, v85);
          }

          v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v94, &v185, v192, 16);
        }

        while (v81);
      }
    }

    if (objc_msgSend_limit(self, v69, v70))
    {
      v97 = objc_msgSend_limit(self, v95, v96);
      if (v97 >= 0xFFFFFFFF)
      {
        v100 = 0xFFFFFFFFLL;
      }

      else
      {
        v100 = v97;
      }

      v101 = objc_msgSend_queryRetrieveRequest(v6, v98, v99);
      objc_msgSend_setLimit_(v101, v102, v100);
    }

    v103 = objc_msgSend_desiredAssetKeys(self, v95, v96);
    v106 = objc_msgSend_count(v103, v104, v105);

    if (v106)
    {
      v109 = objc_opt_new();
      v112 = objc_msgSend_queryRetrieveRequest(v6, v110, v111);
      objc_msgSend_setAssetsToDownload_(v112, v113, v109);

      v114 = objc_opt_new();
      v117 = objc_msgSend_queryRetrieveRequest(v6, v115, v116);
      v120 = objc_msgSend_assetsToDownload(v117, v118, v119);
      objc_msgSend_setAssetFields_(v120, v121, v114);

      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v124 = objc_msgSend_desiredAssetKeys(self, v122, v123);
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v181, v191, 16);
      if (v126)
      {
        v127 = v126;
        v128 = *v182;
        do
        {
          for (j = 0; j != v127; ++j)
          {
            if (*v182 != v128)
            {
              objc_enumerationMutation(v124);
            }

            v130 = *(*(&v181 + 1) + 8 * j);
            v131 = objc_opt_new();
            objc_msgSend_setName_(v131, v132, v130);
            v135 = objc_msgSend_queryRetrieveRequest(v6, v133, v134);
            v138 = objc_msgSend_assetsToDownload(v135, v136, v137);
            v141 = objc_msgSend_assetFields(v138, v139, v140);
            objc_msgSend_addFields_(v141, v142, v131);
          }

          v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v143, &v181, v191, 16);
        }

        while (v127);
      }
    }

    else
    {
      if (!objc_msgSend_shouldFetchAssetContent(self, v107, v108))
      {
LABEL_40:
        v190 = v6;
        v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v164, &v190, 1);
        goto LABEL_41;
      }

      v165 = objc_opt_new();
      v168 = objc_msgSend_queryRetrieveRequest(v6, v166, v167);
      objc_msgSend_setAssetsToDownload_(v168, v169, v165);

      AssetContent = objc_msgSend_shouldFetchAssetContent(self, v170, v171);
      v124 = objc_msgSend_queryRetrieveRequest(v6, v173, v174);
      v177 = objc_msgSend_assetsToDownload(v124, v175, v176);
      objc_msgSend_setAllAssets_(v177, v178, AssetContent);
    }

    goto LABEL_40;
  }

  v11 = objc_msgSend_zoneID(self, v9, v10);
  v14 = objc_msgSend_anonymousCKUserID(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_zoneID(self, v15, v16);
    v20 = objc_msgSend_anonymousCKUserID(v17, v18, v19);
    v23 = objc_msgSend_CKDPIdentifier_User(v20, v21, v22);
    v26 = objc_msgSend_request(v6, v24, v25);
    objc_msgSend_setAnonymousCKUserID_(v26, v27, v23);

    goto LABEL_4;
  }

  v144 = objc_opt_new();
  v145 = MEMORY[0x277CCACA8];
  v148 = objc_msgSend_zoneID(self, v146, v147);
  v150 = objc_msgSend_stringWithFormat_(v145, v149, @"An anonymousCKUserID is required to query in zone %@ in the shared database when using anonymous to server share participants", v148);

  objc_msgSend_setObject_forKeyedSubscript_(v144, v151, v150, *MEMORY[0x277CCA450]);
  v154 = objc_msgSend_operation(self, v152, v153);
  v157 = objc_msgSend_topmostParentOperation(v154, v155, v156);

  v161 = objc_msgSend_operationID(v157, v158, v159);
  if (v161)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v144, v160, v161, *MEMORY[0x277CBBF60]);
  }

  v162 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v160, *MEMORY[0x277CBC120], 5015, v144);
  objc_msgSend_finishWithError_(self, v163, v162);

  v48 = 0;
LABEL_41:

  v179 = *MEMORY[0x277D85DE8];

  return v48;
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

- (void)requestDidComplete
{
  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_recordsParsedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_recordsParsedBlock(self, v7, v8);
    (v9)[2](v9, self->_recordResponses);
  }

  objc_autoreleasePoolPop(v3);
}

- (CKDQueryURLRequest)initWithOperation:(id)a3 query:(id)a4 cursor:(id)a5 limit:(unint64_t)a6 requestedFields:(id)a7 zoneID:(id)a8
{
  v28 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = CKDQueryURLRequest;
  v20 = [(CKDURLRequest *)&v29 initWithOperation:a3];
  if (v20)
  {
    v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
    queryResponses = v20->_queryResponses;
    v20->_queryResponses = v21;

    objc_storeStrong(&v20->_query, a4);
    objc_storeStrong(&v20->_cursor, a5);
    v20->_limit = a6;
    objc_storeStrong(&v20->_requestedFields, a7);
    objc_storeStrong(&v20->_zoneID, a8);
    v20->_shouldFetchAssetContent = 1;
    v25 = objc_msgSend_array(MEMORY[0x277CBEB18], v23, v24);
    recordResponses = v20->_recordResponses;
    v20->_recordResponses = v25;
  }

  return v20;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v17.receiver = self;
  v17.super_class = CKDQueryURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v17 fillOutEquivalencyPropertiesBuilder:v4];
  v7 = objc_msgSend_query(self, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v8, v7, @"query");

  v11 = objc_msgSend_cursor(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v12, v11, @"cursor");

  v15 = objc_msgSend_zoneID(self, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v16, v15, @"zoneID");
}

- (void)fillOutRequestProperties:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    v14[0] = v7;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v14, 1);
    objc_msgSend_setFetchRecordZoneIDs_(v4, v11, v10);
  }

  v13.receiver = self;
  v13.super_class = CKDQueryURLRequest;
  [(CKDURLRequest *)&v13 fillOutRequestProperties:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_hasQueryRetrieveResponse(v4, v5, v6))
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v87 = v4;
    v9 = objc_msgSend_queryRetrieveResponse(v4, v7, v8);
    v12 = objc_msgSend_queryResults(v9, v10, v11);

    obj = v12;
    v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v95, v101, 16);
    v14 = 0;
    if (v91)
    {
      v90 = *v96;
      v89 = self;
      do
      {
        v15 = 0;
        do
        {
          if (*v96 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v95 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          v92 = v17;
          if (objc_msgSend_hasRecord(v16, v18, v19))
          {
            v22 = objc_msgSend_translator(self, v20, v21);
            v25 = objc_msgSend_record(v16, v23, v24);
            v28 = objc_msgSend_zoneID(self, v26, v27);
            objc_msgSend_anonymousCKUserID(v28, v29, v30);
            v32 = v31 = self;
            v94 = v14;
            v34 = objc_msgSend_recordFromPRecord_asAnonymousCKUserID_error_(v22, v33, v25, v32, &v94);
            v35 = v94;

            if (!v34)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              self = v89;
              v17 = v92;
              v58 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                v61 = v58;
                v64 = objc_msgSend_record(v16, v62, v63);
                v67 = objc_msgSend_recordIdentifier(v64, v65, v66);
                *buf = 138543362;
                v100 = v67;
                _os_log_error_impl(&dword_22506F000, v61, OS_LOG_TYPE_ERROR, "Invalid data in server protobuf, ignoring record. Offending record: %{public}@", buf, 0xCu);

                v17 = v92;
              }

              v14 = v35;
              goto LABEL_26;
            }

            objc_msgSend_updateShareIDCacheWithRecord_(v31, v36, v34);
            self = v31;
            v17 = v92;
          }

          else
          {
            v34 = 0;
            v35 = v14;
          }

          if (!objc_msgSend_hasIdentifier(v16, v20, v21))
          {
            v50 = 0;
            v14 = v35;
            goto LABEL_15;
          }

          v39 = objc_msgSend_translator(self, v37, v38);
          v42 = objc_msgSend_identifier(v16, v40, v41);
          v45 = objc_msgSend_zoneID(self, v43, v44);
          v48 = objc_msgSend_anonymousCKUserID(v45, v46, v47);
          v93 = v35;
          v50 = objc_msgSend_recordIDFromPRecordIdentifier_asAnonymousCKUserID_error_(v39, v49, v42, v48, &v93);
          v14 = v93;

          if (v50)
          {
            self = v89;
            v17 = v92;
LABEL_15:
            v51 = [CKDRecordResponse alloc];
            v54 = objc_msgSend_etag(v16, v52, v53);
            v56 = objc_msgSend_initWithRecordID_record_etag_(v51, v55, v50, v34, v54);

            objc_msgSend_addObject_(self->_recordResponses, v57, v56);
            goto LABEL_26;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          self = v89;
          v59 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v68 = v59;
            v71 = objc_msgSend_identifier(v16, v69, v70);
            *buf = 138543362;
            v100 = v71;
            _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "Invalid data in server protobuf, ignoring record. Offending identifier: %{public}@", buf, 0xCu);
          }

          v17 = v92;
LABEL_26:
          objc_autoreleasePoolPop(v17);
          ++v15;
        }

        while (v91 != v15);
        v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v95, v101, 16);
      }

      while (v91);
    }

    v4 = v87;
    v74 = objc_msgSend_queryRetrieveResponse(v87, v72, v73);
    hasContinuationMarker = objc_msgSend_hasContinuationMarker(v74, v75, v76);

    if (hasContinuationMarker)
    {
      v80 = objc_msgSend_queryRetrieveResponse(v87, v78, v79);
      v83 = objc_msgSend_continuationMarker(v80, v81, v82);
      objc_msgSend_setResultsCursor_(self, v84, v83);
    }
  }

  else
  {
    v14 = 0;
  }

  v85 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_result(v4, v5, v6);
  v10 = objc_msgSend_error(v7, v8, v9);
  if ((objc_msgSend_hasClientError(v10, v11, v12) & 1) == 0)
  {

    goto LABEL_6;
  }

  v15 = objc_msgSend_result(v4, v13, v14);
  v18 = objc_msgSend_error(v15, v16, v17);
  v21 = objc_msgSend_clientError(v18, v19, v20);
  v24 = objc_msgSend_type(v21, v22, v23);

  if (v24 != 4)
  {
LABEL_6:
    v48.receiver = self;
    v48.super_class = CKDQueryURLRequest;
    [(CKDURLRequest *)&v48 requestDidParseNodeFailure:v4];
    goto LABEL_9;
  }

  v27 = objc_msgSend_result(v4, v25, v26);
  v30 = objc_msgSend_error(v27, v28, v29);
  hasErrorDescription = objc_msgSend_hasErrorDescription(v30, v31, v32);

  if (hasErrorDescription)
  {
    v49 = *MEMORY[0x277CCA450];
    v36 = objc_msgSend_result(v4, v34, v35);
    v39 = objc_msgSend_error(v36, v37, v38);
    v42 = objc_msgSend_errorDescription(v39, v40, v41);
    v50[0] = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v50, &v49, 1);
  }

  else
  {
    v44 = 0;
  }

  v45 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, *MEMORY[0x277CBC120], 1009, v44);
  objc_msgSend_finishWithError_(self, v46, v45);

LABEL_9:
  v47 = *MEMORY[0x277D85DE8];
}

@end
@interface CKDUploadMergeableDeltasOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDUploadMergeableDeltasOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_encryptMergeableDeltas;
- (void)_uploadAndReplaceDeltas;
- (void)_uploadAndReplaceDeltas:(id)a3;
- (void)handleDeltaUploaded:(id)a3 result:(id)a4;
- (void)handleReplaceDeltasRequest:(id)a3 result:(id)a4;
- (void)main;
@end

@implementation CKDUploadMergeableDeltasOperation

- (CKDUploadMergeableDeltasOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = CKDUploadMergeableDeltasOperation;
  v9 = [(CKDDatabaseOperation *)&v23 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_deltas(v6, v7, v8);
    v11 = *(v9 + 62);
    *(v9 + 62) = v10;

    v14 = objc_msgSend_replacementRequests(v6, v12, v13);
    v15 = *(v9 + 63);
    *(v9 + 63) = v14;

    v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v16, *(v9 + 62));
    v18 = *(v9 + 65);
    *(v9 + 65) = v17;

    v20 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v19, *(v9 + 63));
    v21 = *(v9 + 64);
    *(v9 + 64) = v20;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/upload-mergeable-deltas", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v12 = objc_msgSend_error(self, v10, v11);
      objc_msgSend_finishWithError_(self, v13, v12);

      break;
    case 2:
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend__uploadAndReplaceDeltas(self, v8, v9);
      break;
    case 1:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__encryptMergeableDeltas(self, v6, v7);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Encrypt Deltas";
  }

  else if (a3 == 3)
  {
    v5 = @"Upload Deltas";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDUploadMergeableDeltasOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)main
{
  v4 = objc_msgSend_deltas(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_replacementRequests(self, v7, v8);
    v9 = objc_msgSend_count(v10, v11, v12) == 0;
  }

  objc_msgSend_makeStateTransition_(self, v13, v9);
}

- (void)_encryptMergeableDeltas
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pendingDeltaUploads(self, a2, v2);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_replacementRequests(self, v8, v9);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v36, 16);
  if (v14)
  {
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = objc_msgSend_replacementDeltas(v17, v12, v13);
        v21 = objc_msgSend_count(v18, v19, v20) == 0;

        if (!v21)
        {
          v22 = objc_msgSend_replacementDeltas(v17, v12, v13);
          objc_msgSend_addObjectsFromArray_(v7, v23, v22);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v32, v36, 16);
    }

    while (v14);
  }

  objc_initWeak(&location, self);
  v26 = objc_msgSend_stateTransitionGroup(self, v24, v25);
  dispatch_group_enter(v26);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2251CED48;
  v29[3] = &unk_278549318;
  objc_copyWeak(&v30, &location);
  objc_msgSend__encryptMergeableDeltas_completionHandler_(self, v27, v7, v29);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_uploadAndReplaceDeltas
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2251CEE9C;
  v6[3] = &unk_278547098;
  objc_copyWeak(&v7, &location);
  objc_msgSend__uploadAndReplaceDeltas_(self, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_uploadAndReplaceDeltas:(id)a3
{
  v151 = *MEMORY[0x277D85DE8];
  v113 = a3;
  val = self;
  v6 = objc_msgSend_error(self, v4, v5);
  if (v6)
  {

LABEL_3:
    v9 = v113;
    v113[2](v113);
    goto LABEL_57;
  }

  v10 = objc_msgSend_pendingDeltaUploads(self, v7, v8);
  if (objc_msgSend_count(v10, v11, v12))
  {
  }

  else
  {
    v17 = objc_msgSend_pendingReplacementRequests(val, v13, v14);
    v20 = objc_msgSend_count(v17, v18, v19);

    if (!v20)
    {
      goto LABEL_3;
    }
  }

  v21 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16);
  v116 = objc_msgSend_maximumMergeableDeltaRequestSize(v21, v22, v23);

  v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v29 = objc_msgSend_pendingDeltaUploads(val, v27, v28);
  v31 = 0;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v135, v150, 16);
  if (v33)
  {
    v34 = *v136;
    v35 = *MEMORY[0x277CBBFA0];
    while (2)
    {
      v36 = 0;
      do
      {
        if (*v136 != v34)
        {
          objc_enumerationMutation(v29);
        }

        v37 = *(*(&v135 + 1) + 8 * v36);
        v133 = 0;
        location = 0;
        v38 = objc_msgSend_protobufSize_error_(v37, v32, &location, &v133);
        v41 = v133;
        if ((v38 & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v42 = *MEMORY[0x277CBC840];
          if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v41;
            _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to get protobuf size for delta, but moving on: %@", buf, 0xCu);
          }
        }

        if ((location + v31 > v116 || objc_msgSend_count(v26, v39, v40) >= v35) && objc_msgSend_count(v26, v39, v40))
        {

          goto LABEL_24;
        }

        objc_msgSend_addObject_(v26, v39, v37);
        v43 = location;

        v31 += v43;
        ++v36;
      }

      while (v33 != v36);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v135, v150, 16);
      if (v33)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  v46 = objc_msgSend_pendingDeltaUploads(val, v44, v45);
  objc_msgSend_removeObjectsInArray_(v46, v47, v26);

  v114 = objc_msgSend_array(MEMORY[0x277CBEB18], v48, v49);
  obj = objc_msgSend_pendingReplacementRequests(val, v50, v51);
  if (!objc_msgSend_count(obj, v52, v53) || v31 >= v116)
  {
    goto LABEL_51;
  }

  v56 = objc_msgSend_pendingDeltaUploads(val, v54, v55);
  v59 = objc_msgSend_count(v56, v57, v58) == 0;

  if (v59)
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    obj = objc_msgSend_pendingReplacementRequests(val, v60, v61);
    v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v129, v149, 16);
    if (v111)
    {
      v110 = *v130;
      v109 = *MEMORY[0x277CBBFA0];
      *&v65 = 138412290;
      v108 = v65;
LABEL_29:
      v66 = 0;
      while (1)
      {
        if (*v130 != v110)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v129 + 1) + 8 * v66);
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v68 = objc_msgSend_replacementDeltas(v67, v63, v64, v108);
        v70 = 0;
        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v125, v148, 16);
        if (v72)
        {
          v73 = *v126;
          do
          {
            for (i = 0; i != v72; ++i)
            {
              if (*v126 != v73)
              {
                objc_enumerationMutation(v68);
              }

              v75 = *(*(&v125 + 1) + 8 * i);
              *buf = 0;
              v76 = objc_msgSend_protobufSize_error_(v75, v71, buf, 0);
              v77 = *buf;
              if (!v76)
              {
                v77 = 0;
              }

              v70 += v77;
            }

            v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v125, v148, 16);
          }

          while (v72);
        }

        if ((v70 + v31 > v116 || objc_msgSend_count(v26, v78, v79) >= v109) && (objc_msgSend_count(v26, v78, v79) || objc_msgSend_count(v114, v80, v81)))
        {
          break;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v82 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
        {
          *buf = v108;
          *&buf[4] = v67;
          _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Will add replacement request %@", buf, 0xCu);
        }

        objc_msgSend_addObject_(v114, v83, v67);
        if (++v66 == v111)
        {
          v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v129, v149, 16);
          if (v111)
          {
            goto LABEL_29;
          }

          break;
        }
      }
    }

LABEL_51:
  }

  v84 = objc_msgSend_pendingReplacementRequests(val, v60, v61);
  objc_msgSend_removeObjectsInArray_(v84, v85, v114);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v86 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
  {
    v87 = v86;
    v90 = objc_msgSend_count(v26, v88, v89);
    v91 = objc_opt_class();
    v92 = NSStringFromClass(v91);
    v95 = objc_msgSend_ckShortDescription(val, v93, v94);
    *buf = 134219010;
    *&buf[4] = v90;
    v140 = 2048;
    v141 = v31;
    v142 = 2114;
    v143 = v92;
    v144 = 2048;
    v145 = val;
    v146 = 2114;
    v147 = v95;
    _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "Starting delta upload request with %tu deltas (%tu bytes) for operation <%{public}@: %p; %{public}@>", buf, 0x34u);
  }

  v96 = [CKDUploadMergeableDeltasURLRequest alloc];
  v98 = objc_msgSend_initWithOperation_deltas_replacementRequests_(v96, v97, val, v26, v114);
  objc_initWeak(buf, val);
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = sub_2251CF808;
  v123[3] = &unk_278549420;
  objc_copyWeak(&v124, buf);
  objc_msgSend_setPerDeltaCompletionBlock_(v98, v99, v123);
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = sub_2251CF880;
  v121[3] = &unk_2785493F8;
  objc_copyWeak(&v122, buf);
  objc_msgSend_setPerReplaceDeltasRequestCompletionBlock_(v98, v100, v121);
  objc_initWeak(&location, v98);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = sub_2251CF8F8;
  v117[3] = &unk_278549448;
  objc_copyWeak(&v119, buf);
  objc_copyWeak(&v120, &location);
  v118 = v113;
  objc_msgSend_setCompletionBlock_(v98, v101, v117);
  objc_msgSend_setRequest_(val, v102, v98);
  v105 = objc_msgSend_container(val, v103, v104);
  objc_msgSend_performRequest_(v105, v106, v98);

  objc_destroyWeak(&v120);
  objc_destroyWeak(&v119);
  objc_destroyWeak(&location);
  objc_destroyWeak(&v122);
  objc_destroyWeak(&v124);
  objc_destroyWeak(buf);

  v9 = v113;
LABEL_57:

  v107 = *MEMORY[0x277D85DE8];
}

- (void)handleDeltaUploaded:(id)a3 result:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_code(v7, v8, v9) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v31 = v10;
      v34 = objc_msgSend_metadata(v6, v32, v33);
      v37 = objc_msgSend_identifier(v34, v35, v36);
      *buf = 138412290;
      v46 = v37;
      _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Successfully uploaded delta: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = sub_2253962A4(v7);
    v17 = objc_msgSend_request(self, v15, v16);
    v18 = sub_225395734(v17, v7);

    v19 = MEMORY[0x277CBC560];
    v20 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_error(v7, v21, v22);
    v26 = objc_msgSend_errorDescription(v23, v24, v25);
    v13 = objc_msgSend_errorWithDomain_code_userInfo_format_(v19, v27, v20, v14, v18, @"Error uploading mergeable delta, %@, from server: %@", v6, v26);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      v38 = v28;
      v41 = objc_msgSend_metadata(v6, v39, v40);
      v44 = objc_msgSend_identifier(v41, v42, v43);
      *buf = 138412546;
      v46 = v44;
      v47 = 2112;
      v48 = v13;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Failed to upload delta, %@, with error: %@", buf, 0x16u);
    }
  }

  v29 = objc_msgSend_uploadDeltaCompletionBlock(self, v11, v12);
  (v29)[2](v29, v6, v13);

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleReplaceDeltasRequest:(id)a3 result:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_code(v7, v8, v9) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Successfully replaced deltas for request: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = sub_2253962A4(v7);
    v17 = objc_msgSend_request(self, v15, v16);
    v18 = sub_225395734(v17, v7);

    v19 = MEMORY[0x277CBC560];
    v20 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_error(v7, v21, v22);
    v26 = objc_msgSend_errorDescription(v23, v24, v25);
    v13 = objc_msgSend_errorWithDomain_code_userInfo_format_(v19, v27, v20, v14, v18, @"Error replacing mergeable deltas %@: %@", v6, v26);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v13;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Failed to replace deltas with error: %@", buf, 0xCu);
    }
  }

  v29 = objc_msgSend_replaceDeltasRequestCompletionBlock(self, v11, v12);

  if (v29)
  {
    v32 = objc_msgSend_replaceDeltasRequestCompletionBlock(self, v30, v31);
    (v32)[2](v32, v6, v13);
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end
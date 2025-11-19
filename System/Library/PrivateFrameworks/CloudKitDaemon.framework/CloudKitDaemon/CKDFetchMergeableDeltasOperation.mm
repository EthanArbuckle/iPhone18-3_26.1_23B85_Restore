@interface CKDFetchMergeableDeltasOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDFetchMergeableDeltasOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)fetchMergeableDeltas;
- (void)fetchMergeableDeltasRecursivelyForValueIDs:(id)a3 continuationTokens:(id)a4 completionHandler:(id)a5;
- (void)handleMergeableDeltasFetchedForValueID:(id)a3 fetchedDeltas:(id)a4 result:(id)a5;
- (void)main;
@end

@implementation CKDFetchMergeableDeltasOperation

- (CKDFetchMergeableDeltasOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDFetchMergeableDeltasOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_mergeableValueIDs(v6, v7, v8);
    mergeableValueIDs = v9->_mergeableValueIDs;
    v9->_mergeableValueIDs = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-mergeable-deltas", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v10 = objc_msgSend_error(self, v8, v9);
    objc_msgSend_finishWithError_(self, v11, v10);
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend_fetchMergeableDeltas(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Fetch Deltas";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDFetchMergeableDeltasOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)main
{
  v4 = objc_msgSend_mergeableValueIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)fetchMergeableDeltas
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  objc_initWeak(&location, self);
  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251CC604;
  v9[3] = &unk_278549318;
  objc_copyWeak(&v10, &location);
  objc_msgSend_fetchMergeableDeltasRecursivelyForValueIDs_continuationTokens_completionHandler_(self, v8, v7, 0, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fetchMergeableDeltasRecursivelyForValueIDs:(id)a3 continuationTokens:(id)a4 completionHandler:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    *location = 138412546;
    *&location[4] = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Will fetch deltas recursively for values %@ with continuation tokens %@", location, 0x16u);
  }

  v12 = [CKDFetchMergeableDeltasURLRequest alloc];
  v14 = objc_msgSend_initWithOperation_mergeableValueIDs_previousContinuationTokens_(v12, v13, self, v8, v9);
  v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
  objc_initWeak(location, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2251CCB78;
  v35[3] = &unk_278549278;
  objc_copyWeak(&v37, location);
  v18 = v17;
  v36 = v18;
  objc_msgSend_setDeltasFetchedBlock_(v14, v19, v35);
  objc_initWeak(&from, v14);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2251CCCDC;
  v29[3] = &unk_278549340;
  objc_copyWeak(&v32, location);
  objc_copyWeak(&v33, &from);
  v20 = v10;
  v31 = v20;
  v21 = v18;
  v30 = v21;
  objc_msgSend_setCompletionBlock_(v14, v22, v29);
  objc_msgSend_setRequest_(self, v23, v14);
  v26 = objc_msgSend_container(self, v24, v25);
  objc_msgSend_performRequest_(v26, v27, v14);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v37);
  objc_destroyWeak(location);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleMergeableDeltasFetchedForValueID:(id)a3 fetchedDeltas:(id)a4 result:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_stateTransitionGroup(self, v11, v12);
  dispatch_group_enter(v13);

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_225074020;
  v72 = sub_22507359C;
  v73 = 0;
  if (objc_msgSend_code(v10, v14, v15) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v75 = v8;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Successfully fetched delta for %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = sub_2253962A4(v10);
    v20 = objc_msgSend_request(self, v18, v19);
    v21 = sub_225395734(v20, v10);

    v22 = MEMORY[0x277CBC560];
    v25 = objc_msgSend_error(v10, v23, v24);
    v28 = objc_msgSend_errorDescription(v25, v26, v27);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_format_(v22, v29, *MEMORY[0x277CBC120], v17, v21, @"Error fetching deltas for %@ from server: %@", v8, v28);
    v31 = v69[5];
    v69[5] = v30;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v56 = v69[5];
      *buf = 138412546;
      v75 = v8;
      v76 = 2112;
      v77 = v56;
      _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Failed to fetch deltas for %@: %@", buf, 0x16u);
    }
  }

  v33 = dispatch_group_create();
  if (objc_msgSend_useEncryption(self, v34, v35) && objc_msgSend_CKContains_(v9, v36, &unk_28385D540))
  {
    v57 = objc_msgSend_recordID(v8, v36, v37);
    if (v57)
    {
      dispatch_group_enter(v33);
      objc_initWeak(buf, self);
      v40 = objc_msgSend_container(self, v38, v39);
      v43 = objc_msgSend_pcsCache(v40, v41, v42);
      v46 = objc_msgSend_recordID(v8, v44, v45);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_2251CD5C0;
      v62[3] = &unk_278549388;
      objc_copyWeak(&v67, buf);
      v63 = v8;
      v66 = &v68;
      v64 = v9;
      v65 = v33;
      objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v43, v47, v46, self, 0, v62);

      objc_destroyWeak(&v67);
      objc_destroyWeak(buf);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v48 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v75 = v8;
        _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "Unable to determine record ID for value %@", buf, 0xCu);
      }

      v50 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v49, *MEMORY[0x277CBC120], 1017, 0, @"Unable to determine record ID for mergeable delta for value ID: %@", v8);
      v51 = v69[5];
      v69[5] = v50;
    }
  }

  v52 = objc_msgSend_callbackQueue(self, v36, v37);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251CD940;
  block[3] = &unk_2785493B0;
  block[4] = self;
  v59 = v8;
  v60 = v9;
  v61 = &v68;
  v53 = v9;
  v54 = v8;
  dispatch_group_notify(v33, v52, block);

  _Block_object_dispose(&v68, 8);
  v55 = *MEMORY[0x277D85DE8];
}

@end
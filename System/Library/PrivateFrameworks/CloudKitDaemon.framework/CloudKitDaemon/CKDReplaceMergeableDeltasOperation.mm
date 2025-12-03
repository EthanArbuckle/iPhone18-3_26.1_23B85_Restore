@interface CKDReplaceMergeableDeltasOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (CKDReplaceMergeableDeltasOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_encryptMergeableDeltas;
- (void)_replaceMergeableDeltas;
- (void)handleReplaceDeltasRequest:(id)request result:(id)result;
- (void)main;
@end

@implementation CKDReplaceMergeableDeltasOperation

- (CKDReplaceMergeableDeltasOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKDReplaceMergeableDeltasOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_replaceDeltasRequests(infoCopy, v7, v8);
    replaceDeltasRequests = v9->_replaceDeltasRequests;
    v9->_replaceDeltasRequests = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/replace-mergeable-deltas", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

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
      objc_msgSend__replaceMergeableDeltas(self, v8, v9);
      break;
    case 1:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__encryptMergeableDeltas(self, v6, v7);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 3)
  {
    v5 = @"Replace Deltas";
  }

  else if (state == 2)
  {
    v5 = @"Encrypt Deltas";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDReplaceMergeableDeltasOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)main
{
  v4 = objc_msgSend_replaceDeltasRequests(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)_encryptMergeableDeltas
{
  v4 = objc_msgSend_replaceDeltasRequests(self, a2, v2);
  v6 = objc_msgSend_CKFlatMap_(v4, v5, &unk_28385D560);

  objc_initWeak(&location, self);
  v9 = objc_msgSend_stateTransitionGroup(self, v7, v8);
  dispatch_group_enter(v9);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251CDE0C;
  v11[3] = &unk_278549318;
  objc_copyWeak(&v12, &location);
  objc_msgSend__encryptMergeableDeltas_completionHandler_(self, v10, v6, v11);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_replaceMergeableDeltas
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    v20 = v5;
    v23 = objc_msgSend_replaceDeltasRequests(self, v21, v22);
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v23;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Will replace deltas with requests: %@", location, 0xCu);
  }

  v6 = [CKDReplaceMergeableDeltasURLRequest alloc];
  v9 = objc_msgSend_replaceDeltasRequests(self, v7, v8);
  v11 = objc_msgSend_initWithOperation_replaceDeltasRequests_ignoreMissingDeltas_(v6, v10, self, v9, 0);

  objc_initWeak(location, self);
  objc_initWeak(&from, v11);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2251CE158;
  v30[3] = &unk_2785493F8;
  objc_copyWeak(&v31, location);
  objc_msgSend_setPerReplacementCompletionBlock_(v11, v12, v30);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_2251CE240;
  v27 = &unk_278548748;
  objc_copyWeak(&v28, location);
  objc_copyWeak(&v29, &from);
  objc_msgSend_setCompletionBlock_(v11, v13, &v24);
  objc_msgSend_setRequest_(self, v14, v11, v24, v25, v26, v27);
  v17 = objc_msgSend_container(self, v15, v16);
  objc_msgSend_performRequest_(v17, v18, v11);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleReplaceDeltasRequest:(id)request result:(id)result
{
  v45 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  v10 = objc_msgSend_perReplacementCompletionBlock(self, v8, v9);

  if (v10)
  {
    if (objc_msgSend_code(resultCopy, v11, v12) == 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = requestCopy;
        _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Successfully replaced deltas with request %@", buf, 0xCu);
      }

      v16 = objc_msgSend_perReplacementCompletionBlock(self, v14, v15);
      (v16)[2](v16, requestCopy, 0);

      goto LABEL_18;
    }

    v22 = sub_2253962A4(resultCopy);
    v25 = objc_msgSend_request(self, v23, v24);
    v18 = sub_225395734(v25, resultCopy);

    v26 = MEMORY[0x277CBC560];
    v27 = *MEMORY[0x277CBC120];
    v30 = objc_msgSend_error(resultCopy, v28, v29);
    v33 = objc_msgSend_errorDescription(v30, v31, v32);
    v35 = objc_msgSend_errorWithDomain_code_userInfo_format_(v26, v34, v27, v22, v18, @"Error performing replace deltas request: %@", v33);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = requestCopy;
      v43 = 2112;
      v44 = v35;
      _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed to replace deltas for request %@: %@", buf, 0x16u);
    }

    v39 = objc_msgSend_perReplacementCompletionBlock(self, v37, v38);
    (v39)[2](v39, requestCopy, v35);

LABEL_17:
    goto LABEL_18;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v21 = objc_msgSend_operationID(self, v19, v20);
    *buf = 138412290;
    v42 = v21;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "No per-request completion block for operation %@", buf, 0xCu);

    goto LABEL_17;
  }

LABEL_18:

  v40 = *MEMORY[0x277D85DE8];
}

@end
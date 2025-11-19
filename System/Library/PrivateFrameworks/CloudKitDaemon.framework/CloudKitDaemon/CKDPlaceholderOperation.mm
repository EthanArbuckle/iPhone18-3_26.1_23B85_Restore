@interface CKDPlaceholderOperation
- (BOOL)isAnonymous;
- (CKDContainer)container;
- (CKDPlaceholderOperation)initWithOperation:(id)a3 targetOperationQueue:(id)a4;
- (NSString)operationID;
- (id)_startDateString;
- (id)ckShortDescription;
- (id)statusReportWithIndent:(unint64_t)a3;
- (void)cancel;
- (void)main;
- (void)start;
@end

@implementation CKDPlaceholderOperation

- (void)start
{
  v22 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v3;
    v19 = objc_msgSend_ckShortDescription(self, v17, v18);
    *buf = 138543362;
    v21 = v19;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Placeholder op %{public}@ starting", buf, 0xCu);
  }

  if ((objc_msgSend_isExecuting(self, v4, v5) & 1) != 0 || objc_msgSend_isFinished(self, v6, v7))
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = objc_msgSend_operationID(self, v6, v7);
    objc_msgSend_raise_format_(v8, v11, v9, @"You can't restart an executing or finished CKDPlaceholderOperation: %@", v10);
  }

  objc_msgSend_transitionToExecuting(self, v6, v7);
  v12 = objc_autoreleasePoolPush();
  objc_msgSend_main(self, v13, v14);
  objc_autoreleasePoolPop(v12);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v77 = *MEMORY[0x277D85DE8];
  isCancelled = objc_msgSend_isCancelled(self, a2, v2);
  v7 = isCancelled;
  v8 = MEMORY[0x277CBC880];
  v9 = MEMORY[0x277CBC830];
  if (isCancelled)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v66 = v10;
      v69 = objc_msgSend_ckShortDescription(self, v67, v68);
      *buf = 138543362;
      v72 = v69;
      _os_log_debug_impl(&dword_22506F000, v66, OS_LOG_TYPE_DEBUG, "Placeholder op %{public}@ was cancelled - finishing the real operation", buf, 0xCu);
    }

    v13 = MEMORY[0x277CBC560];
    v14 = *MEMORY[0x277CBC120];
    v15 = objc_msgSend_realOperation(self, v11, v12);
    v18 = objc_msgSend_operationID(v15, v16, v17);
    v20 = objc_msgSend_errorWithDomain_code_format_(v13, v19, v14, 1, @"Operation %@ was cancelled", v18);

    v23 = objc_msgSend_realOperation(self, v21, v22);
    objc_msgSend_finishWithError_(v23, v24, v20);
  }

  group = self->_group;
  objc_msgSend_qualityOfService(self, v5, v6);
  v26 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225089FD0;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_group_notify(group, v26, block);

  if ((v7 & 1) == 0)
  {
    v29 = objc_msgSend_targetOperationQueue(self, v27, v28);
    isSuspended = objc_msgSend_isSuspended(v29, v30, v31);

    if (isSuspended)
    {
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *v9;
      if (!os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      v34 = v33;
      v37 = objc_msgSend_ckShortDescription(self, v35, v36);
      v40 = objc_msgSend_targetOperationQueue(self, v38, v39);
      *buf = 138543618;
      v72 = v37;
      v73 = 2112;
      v74 = v40;
      _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "System is unavailable. Scheduling operation %{public}@ on suspended operation queue %@", buf, 0x16u);
    }

    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

LABEL_15:
    v41 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v44 = v41;
      v47 = objc_msgSend_operationID(self, v45, v46);
      v50 = objc_msgSend_targetOperationQueue(self, v48, v49);
      v53 = objc_msgSend_operationCount(v50, v51, v52);
      v56 = objc_msgSend_targetOperationQueue(self, v54, v55);
      v59 = objc_msgSend_maxConcurrentOperationCount(v56, v57, v58);
      *buf = 138543874;
      v72 = v47;
      v73 = 2048;
      v74 = v53;
      v75 = 2048;
      v76 = v59;
      _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "Adding operation %{public}@ to target queue (%lu/%ld in queue)", buf, 0x20u);
    }

    v60 = objc_msgSend_targetOperationQueue(self, v42, v43);
    v63 = objc_msgSend_realOperation(self, v61, v62);
    objc_msgSend_addOperation_(v60, v64, v63);
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (NSString)operationID
{
  v3 = objc_msgSend_realOperation(self, a2, v2);
  v6 = objc_msgSend_operationID(v3, v4, v5);

  return v6;
}

- (id)ckShortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_operationID(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p:%@>", v4, self, v7);

  return v9;
}

- (CKDPlaceholderOperation)initWithOperation:(id)a3 targetOperationQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = CKDPlaceholderOperation;
  v9 = [(CKDPlaceholderOperation *)&v23 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    startDate = v9->_startDate;
    v9->_startDate = v10;

    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    objc_storeStrong(&v9->_group, v12);
    v15 = objc_msgSend_completionBlock(v7, v13, v14);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_225271518;
    v20[3] = &unk_2785456C8;
    v21 = v12;
    v22 = v15;
    v16 = v12;
    v17 = v15;
    objc_msgSend_setCompletionBlock_(v7, v18, v20);
    objc_storeStrong(&v9->_realOperation, a3);
    objc_storeStrong(&v9->_targetOperationQueue, a4);
  }

  return v9;
}

- (CKDContainer)container
{
  v3 = objc_msgSend_realOperation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);

  return v6;
}

- (void)cancel
{
  v17 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = v3;
    v13 = objc_msgSend_ckShortDescription(self, v11, v12);
    *buf = 138543362;
    v16 = v13;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Placeholder op %{public}@ canceling", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = CKDPlaceholderOperation;
  [(CKDPlaceholderOperation *)&v14 cancel];
  v6 = objc_msgSend_realOperation(self, v4, v5);
  objc_msgSend_cancel(v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAnonymous
{
  v3 = objc_msgSend_realOperation(self, a2, v2);
  isAnonymous = objc_msgSend_isAnonymous(v3, v4, v5);

  return isAnonymous;
}

- (id)_startDateString
{
  if (qword_280D54FB0 != -1)
  {
    dispatch_once(&qword_280D54FB0, &unk_28385D980);
  }

  v3 = *MEMORY[0x277CBC998];
  v6 = objc_msgSend_objectForKey_(qword_280D54FA8, a2, *MEMORY[0x277CBC998]);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setTimeStyle_(v6, v7, 3);
    objc_msgSend_setDateStyle_(v6, v8, 1);
    objc_msgSend_setObject_forKey_(qword_280D54FA8, v9, v6, v3);
  }

  v10 = objc_msgSend_startDate(self, v4, v5);

  if (v10)
  {
    v13 = objc_msgSend_startDate(self, v11, v12);
    v15 = objc_msgSend_stringFromDate_(v6, v14, v13);
  }

  else
  {
    v15 = @"(unknown)";
  }

  return v15;
}

- (id)statusReportWithIndent:(unint64_t)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = CKTabIndentAtDepth();
  v8 = objc_msgSend_realOperation(self, v6, v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v13 = objc_msgSend_operationID(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v4, v14, @"%s<%@(Placeholder) %@ ", v5, v10, v13);

  if (objc_msgSend_isExecuting(self, v16, v17))
  {
    v20 = @"R";
  }

  else
  {
    v20 = &stru_28385ED00;
  }

  isCancelled = objc_msgSend_isCancelled(self, v18, v19);
  v23 = @"X";
  if (!isCancelled)
  {
    v23 = &stru_28385ED00;
  }

  objc_msgSend_appendFormat_(v15, v22, @"(%@%@) ", v20, v23);
  v26 = objc_msgSend_startDate(self, v24, v25);
  objc_msgSend_timeIntervalSinceNow(v26, v27, v28);

  v29 = CKDescriptionForTimeInterval();
  v32 = objc_msgSend__startDateString(self, v30, v31);
  objc_msgSend_appendFormat_(v15, v33, @" running for %@ (started %@) ", v29, v32);

  objc_msgSend_appendString_(v15, v34, @">\n");

  return v15;
}

@end
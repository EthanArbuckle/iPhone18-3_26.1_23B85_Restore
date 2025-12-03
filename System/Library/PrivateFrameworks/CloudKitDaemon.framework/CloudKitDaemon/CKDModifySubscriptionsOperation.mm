@interface CKDModifySubscriptionsOperation
- (BOOL)isOperationType:(int)type;
- (CKDModifySubscriptionsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (int)operationType;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleSubscriptionDeleted:(id)deleted responseCode:(id)code;
- (void)_handleSubscriptionSaved:(id)saved error:(id)error;
- (void)_handleSubscriptionSaved:(id)saved responseCode:(id)code;
- (void)main;
@end

@implementation CKDModifySubscriptionsOperation

- (CKDModifySubscriptionsOperation)initWithOperationInfo:(id)info container:(id)container
{
  v42 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v40.receiver = self;
  v40.super_class = CKDModifySubscriptionsOperation;
  v9 = [(CKDDatabaseOperation *)&v40 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_subscriptionsToSave(infoCopy, v7, v8);
    subscriptionsToSave = v9->_subscriptionsToSave;
    v9->_subscriptionsToSave = v10;

    v9->_hasSubscriptionsToSave = objc_msgSend_count(v9->_subscriptionsToSave, v12, v13) != 0;
    v16 = objc_msgSend_subscriptionIDsToDelete(infoCopy, v14, v15);
    subscriptionIDsToDelete = v9->_subscriptionIDsToDelete;
    v9->_subscriptionIDsToDelete = v16;

    v9->_hasSubscriptionsToDelete = objc_msgSend_count(v9->_subscriptionIDsToDelete, v18, v19) != 0;
    v20 = objc_opt_new();
    subscriptionsByServerID = v9->_subscriptionsByServerID;
    v9->_subscriptionsByServerID = v20;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v9->_subscriptionsToSave;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v41, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v37;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v36 + 1) + 8 * i);
          v31 = v9->_subscriptionsByServerID;
          v32 = objc_msgSend_subscriptionID(v30, v25, v26, v36);
          objc_msgSend_setObject_forKeyedSubscript_(v31, v33, v30, v32);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v36, v41, 16);
      }

      while (v27);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-subscriptions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleSubscriptionSaved:(id)saved responseCode:(id)code
{
  savedCopy = saved;
  codeCopy = code;
  if (objc_msgSend_code(codeCopy, v7, v8) == 1)
  {
    v10 = 0;
    objc_msgSend__handleSubscriptionSaved_error_(self, v9, savedCopy, 0);
  }

  else
  {
    v11 = MEMORY[0x277CBC560];
    v12 = *MEMORY[0x277CBC120];
    v13 = sub_2253962A4(codeCopy);
    v16 = objc_msgSend_request(self, v14, v15);
    v17 = sub_225395734(v16, codeCopy);
    v20 = objc_msgSend_error(codeCopy, v18, v19);
    v23 = objc_msgSend_errorDescription(v20, v21, v22);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_format_(v11, v24, v12, v13, v17, @"Error saving record subscription with id %@ to server: %@", savedCopy, v23);

    objc_msgSend__handleSubscriptionSaved_error_(self, v25, savedCopy, v10);
  }
}

- (void)_handleSubscriptionSaved:(id)saved error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  savedCopy = saved;
  errorCopy = error;
  v10 = objc_msgSend_subscriptionsByServerID(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, savedCopy);

  if (v12)
  {
    v15 = objc_msgSend_callbackQueue(self, v13, v14);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22523A69C;
    block[3] = &unk_278546990;
    block[4] = self;
    v19 = savedCopy;
    v20 = errorCopy;
    dispatch_async(v15, block);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = savedCopy;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Got a response for subscription with ID %@, but we didn't try to put that subscription.", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleSubscriptionDeleted:(id)deleted responseCode:(id)code
{
  v43 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  codeCopy = code;
  v10 = objc_msgSend_code(codeCopy, v8, v9);
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (v10 == 1)
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = deletedCopy;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Subscription %@ was successfully deleted from the server", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = codeCopy;
      v41 = 2112;
      v42 = deletedCopy;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Error %@ when deleting subscription %@ from the server", buf, 0x16u);
    }

    v18 = MEMORY[0x277CBC560];
    v19 = *MEMORY[0x277CBC120];
    v20 = sub_2253962A4(codeCopy);
    v23 = objc_msgSend_request(self, v21, v22);
    v24 = sub_225395734(v23, codeCopy);
    v27 = objc_msgSend_error(codeCopy, v25, v26);
    v30 = objc_msgSend_errorDescription(v27, v28, v29);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_format_(v18, v31, v19, v20, v24, @"Error deleting subscription %@: %@", deletedCopy, v30);
  }

  v32 = objc_msgSend_callbackQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22523A9DC;
  block[3] = &unk_278546990;
  block[4] = self;
  v37 = deletedCopy;
  v38 = v16;
  v33 = v16;
  v34 = deletedCopy;
  dispatch_async(v32, block);

  v35 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v141 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [CKDProtocolTranslator alloc];
  val = self;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_databaseScope(self, v8, v9);
  v12 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v4, v11, v7, v10, 0);

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v15 = objc_msgSend_subscriptionsToSave(self, v13, v14);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v131, v140, 16);
  if (v18)
  {
    v19 = *v132;
    v20 = *MEMORY[0x277CBC120];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v132 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v131 + 1) + 8 * i);
        v130 = 0;
        v23 = objc_msgSend_pSubscriptionFromSubscription_error_(v12, v17, v22, &v130);
        v24 = v130;

        if (v23)
        {
          objc_msgSend_addObject_(v3, v25, v22);
        }

        else
        {
          if (!v24)
          {
            v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, v20, 1017, @"Subscription fails conversion: %@", v22);
          }

          v27 = objc_msgSend_subscriptionID(v22, v25, v26);
          objc_msgSend__handleSubscriptionSaved_error_(val, v28, v27, v24);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v131, v140, 16);
    }

    while (v18);
  }

  objc_msgSend_setSubscriptionsToSave_(val, v29, v3);
  v32 = objc_msgSend_container(val, v30, v31);
  if (objc_msgSend_adopterProcessType(v32, v33, v34) == 2)
  {
  }

  else
  {
    v37 = objc_msgSend_container(val, v35, v36);
    v40 = objc_msgSend_adopterProcessType(v37, v38, v39) == 3;

    if (!v40)
    {
      v43 = v3;
      goto LABEL_28;
    }
  }

  v43 = objc_opt_new();

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v46 = objc_msgSend_subscriptionsToSave(val, v44, v45);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v126, v139, 16);
  if (v50)
  {
    v51 = *v127;
    v52 = *MEMORY[0x277CBC120];
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v127 != v51)
        {
          objc_enumerationMutation(v46);
        }

        v54 = *(*(&v126 + 1) + 8 * j);
        v55 = objc_msgSend_notificationInfo(v54, v48, v49);
        v56 = v55 == 0;

        if (v56)
        {
          v58 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v57, v52, 1017, @"Subscription with a nil notificationInfo: %@", v54);
          v61 = objc_msgSend_subscriptionID(v54, v59, v60);
          objc_msgSend__handleSubscriptionSaved_error_(val, v62, v61, v58);
        }

        else
        {
          objc_msgSend_addObject_(v43, v57, v54);
        }
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v126, v139, 16);
    }

    while (v50);
  }

  objc_msgSend_setSubscriptionsToSave_(val, v63, v43);
LABEL_28:
  if (!objc_msgSend_count(v43, v41, v42) && (objc_msgSend_subscriptionIDsToDelete(val, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_count(v66, v67, v68) == 0, v66, v69))
  {
    objc_msgSend_finishWithError_(val, v70, 0);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v71 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v74 = v71;
      v77 = objc_msgSend_subscriptionsToSave(val, v75, v76);
      v80 = objc_msgSend_count(v77, v78, v79);
      v83 = objc_msgSend_subscriptionIDsToDelete(val, v81, v82);
      v86 = objc_msgSend_count(v83, v84, v85);
      *buf = 134218240;
      v136 = v80;
      v137 = 2048;
      v138 = v86;
      _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "Saving %ld, deleting %ld subscriptions on the server.", buf, 0x16u);
    }

    if (objc_msgSend_count(v43, v72, v73))
    {
      v89 = objc_msgSend_subscriptionsToSave(val, v87, v88);
      v92 = objc_msgSend_firstObject(v89, v90, v91);

      if (objc_msgSend_subscriptionType(v92, v93, v94) == 2 || objc_msgSend_subscriptionType(v92, v95, v96) == 1)
      {
        v97 = objc_msgSend_subscriptionsToSave(val, v95, v96);
        v100 = objc_msgSend_firstObject(v97, v98, v99);
        v103 = objc_msgSend_zoneID(v100, v101, v102);
      }

      else
      {
        v103 = 0;
      }
    }

    else
    {
      v103 = 0;
    }

    v104 = [CKDModifySubscriptionsURLRequest alloc];
    v107 = objc_msgSend_subscriptionIDsToDelete(val, v105, v106);
    v109 = objc_msgSend_initWithOperation_subscriptionsToSave_subscriptionIDsToDelete_(v104, v108, val, v43, v107);

    objc_msgSend_setZoneID_(v109, v110, v103);
    objc_initWeak(buf, val);
    objc_initWeak(&location, v109);
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = sub_225098D8C;
    v123[3] = &unk_2785487B0;
    objc_copyWeak(&v124, buf);
    objc_msgSend_setSubscriptionModifiedBlock_(v109, v111, v123);
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = sub_22509F0B0;
    v120[3] = &unk_278548748;
    objc_copyWeak(&v121, buf);
    objc_copyWeak(&v122, &location);
    objc_msgSend_setCompletionBlock_(v109, v112, v120);
    objc_msgSend_setRequest_(val, v113, v109);
    v116 = objc_msgSend_container(val, v114, v115);
    objc_msgSend_performRequest_(v116, v117, v109);

    objc_destroyWeak(&v122);
    objc_destroyWeak(&v121);
    objc_destroyWeak(&v124);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v118 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_subscriptionsToSave(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_subscriptionType(v16, v11, v12) != 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (objc_msgSend_subscriptionType(v16, v11, v12) != 1)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v17 = objc_msgSend_zoneID(v16, v11, v12);
        if (v17)
        {
          v18 = v17;
          objc_msgSend_addObject_(v5, v11, v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v32, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v5, v19, v20))
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22523B3AC;
    v26[3] = &unk_2785487F8;
    v27 = v5;
    objc_msgSend_updateCloudKitMetrics_(self, v22, v26);
  }

  objc_msgSend_setSaveCompletionBlock_(self, v21, 0);
  objc_msgSend_setDeleteCompletionBlock_(self, v23, 0);
  v25.receiver = self;
  v25.super_class = CKDModifySubscriptionsOperation;
  [(CKDOperation *)&v25 _finishOnCallbackQueueWithError:errorCopy];

  v24 = *MEMORY[0x277D85DE8];
}

- (int)operationType
{
  if (self->_hasSubscriptionsToSave && !self->_hasSubscriptionsToDelete)
  {
    return 300;
  }

  else
  {
    return 302;
  }
}

- (BOOL)isOperationType:(int)type
{
  if (type == 300)
  {
    v3 = &OBJC_IVAR___CKDModifySubscriptionsOperation__hasSubscriptionsToSave;
  }

  else
  {
    if (type != 302)
    {
      v4 = 0;
      return v4 & 1;
    }

    v3 = &OBJC_IVAR___CKDModifySubscriptionsOperation__hasSubscriptionsToDelete;
  }

  v4 = *(&self->super.super.super.super.isa + *v3);
  return v4 & 1;
}

@end
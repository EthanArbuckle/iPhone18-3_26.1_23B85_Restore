@interface CKDQueuedFetch
- (BOOL)canBeUsedForOperation:(id)operation;
- (BOOL)canBeUsedForPendingFetch:(id)fetch;
- (BOOL)dependentOperationListContainsOperationID:(id)d;
- (BOOL)dependentOperationListContainsRunningFetch:(id)fetch;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (CKDContainer)container;
- (CKDQueuedFetch)equivalentRunningFetch;
- (CKDQueuedFetch)init;
- (CKDQueuedFetch)initWithOperation:(id)operation container:(id)container operationQueue:(id)queue;
- (NSOperationQueue)operationQueue;
- (OS_dispatch_queue)callbackQueue;
- (id)CKPropertiesDescription;
- (id)allItemIDs;
- (id)callbacksForItemWithID:(id)d;
- (int)numberOfCallbacks;
- (void)addCallbackForItemWithID:(id)d operation:(id)operation callback:(id)callback;
- (void)cancelFetchOperation;
- (void)createFetchOperationForItemIDs:(id)ds operationQueue:(id)queue operationConfigurationBlock:(id)block;
- (void)finishFetchOperationWithError:(id)error;
- (void)performCallbacksForItemWithID:(id)d withItem:(id)item error:(id)error;
- (void)removeCallbacksForItemWithID:(id)d;
- (void)start;
@end

@implementation CKDQueuedFetch

- (CKDQueuedFetch)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_alloc(MEMORY[0x277CBC360]);
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x277CBE660], @"You must call [%@ initWithOperation:container:operationQueue:]", v3);
  objc_exception_throw(v6);
}

- (CKDQueuedFetch)initWithOperation:(id)operation container:(id)container operationQueue:(id)queue
{
  operationCopy = operation;
  containerCopy = container;
  queueCopy = queue;
  v41.receiver = self;
  v41.super_class = CKDQueuedFetch;
  v12 = [(CKDQueuedFetch *)&v41 init];
  if (v12)
  {
    v13 = _os_activity_create(&dword_22506F000, "daemon/queued-fetch", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v12->_osActivity;
    v12->_osActivity = v13;

    v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16);
    queuedDate = v12->_queuedDate;
    v12->_queuedDate = v17;

    v21 = objc_msgSend_date(MEMORY[0x277CBEAA8], v19, v20);
    lastRequestDate = v12->_lastRequestDate;
    v12->_lastRequestDate = v21;

    v23 = objc_opt_new();
    completionHandlersByItemID = v12->_completionHandlersByItemID;
    v12->_completionHandlersByItemID = v23;

    v25 = objc_opt_new();
    dependentOperationIDs = v12->_dependentOperationIDs;
    v12->_dependentOperationIDs = v25;

    v27 = objc_opt_new();
    dependentOperationIDsByItemID = v12->_dependentOperationIDsByItemID;
    v12->_dependentOperationIDsByItemID = v27;

    objc_storeWeak(&v12->_container, containerCopy);
    objc_storeWeak(&v12->_operationQueue, queueCopy);
    objc_storeStrong(&v12->_initialOperation, operation);
    v12->_scope = 2;
    if (objc_opt_respondsToSelector())
    {
      v12->_scope = objc_msgSend_databaseScope(operationCopy, v29, v30);
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      v33 = objc_msgSend_unitTestOverrides(operationCopy, v29, v30);
      if (v33)
      {
        v34 = objc_msgSend_unitTestOverrides(operationCopy, v31, v32);
        v37 = objc_msgSend_mutableCopy(v34, v35, v36);
        unitTestOverrides = v12->_unitTestOverrides;
        v12->_unitTestOverrides = v37;
      }

      else
      {
        v39 = objc_opt_new();
        v34 = v12->_unitTestOverrides;
        v12->_unitTestOverrides = v39;
      }
    }

    v12->_highestQOS = objc_msgSend_qualityOfService(operationCopy, v29, v30);
  }

  return v12;
}

- (OS_dispatch_queue)callbackQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_callbackQueue = &selfCopy->_callbackQueue;
  if (!selfCopy->_callbackQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_msgSend_highestQOS(selfCopy, v5, v6);
    v7 = CKQoSClassFromNSQualityOfService();
    v8 = dispatch_queue_attr_make_with_qos_class(v4, v7, 0);
    v9 = dispatch_queue_create("com.apple.cloudkit.pcs.queuedFetch.callbackQueue", v8);
    v10 = *p_callbackQueue;
    *p_callbackQueue = v9;

    dispatch_queue_set_specific(*p_callbackQueue, &selfCopy->_callbackQueue, 1, 0);
  }

  objc_sync_exit(selfCopy);

  callbackQueue = selfCopy->_callbackQueue;

  return callbackQueue;
}

- (BOOL)isFinished
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = objc_msgSend_callbackQueue(self, a2, v2);
  ck_call_or_dispatch_sync_if_not_key();

  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v4;
}

- (BOOL)isCancelled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = objc_msgSend_callbackQueue(self, a2, v2);
  ck_call_or_dispatch_sync_if_not_key();

  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v4;
}

- (int)numberOfCallbacks
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_completionHandlersByItemID(self, a2, v2);
  objc_sync_enter(v4);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_completionHandlersByItemID(self, v5, v6, 0);
  v10 = objc_msgSend_allValues(v7, v8, v9);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v14)
  {
    LODWORD(v15) = 0;
    v16 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v15 = objc_msgSend_count(*(*(&v20 + 1) + 8 * i), v12, v13) + v15;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v20, v24, 16);
    }

    while (v14);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  objc_sync_exit(v4);
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)addCallbackForItemWithID:(id)d operation:(id)operation callback:(id)callback
{
  dCopy = d;
  operationCopy = operation;
  callbackCopy = callback;
  v12 = objc_msgSend_completionHandlersByItemID(self, v10, v11);
  objc_sync_enter(v12);
  v15 = objc_msgSend_completionHandlersByItemID(self, v13, v14);
  v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, dCopy);

  if (!v17)
  {
    v17 = objc_opt_new();
    v22 = objc_msgSend_completionHandlersByItemID(self, v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v17, dCopy);
  }

  v24 = objc_msgSend_copy(callbackCopy, v18, v19);
  objc_msgSend_addObject_(v17, v25, v24);

  objc_sync_exit(v12);
  v28 = objc_msgSend_dependentOperationIDsByItemID(self, v26, v27);
  objc_sync_enter(v28);
  v31 = objc_opt_new();
  do
  {
    v32 = objc_msgSend_operationID(operationCopy, v29, v30);
    objc_msgSend_addObject_(v31, v33, v32);

    v36 = objc_msgSend_parentOperation(operationCopy, v34, v35);

    operationCopy = v36;
  }

  while (v36);
  v37 = objc_msgSend_dependentOperationIDsByItemID(self, v29, v30);
  v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, dCopy);

  if (!v39)
  {
    v39 = objc_opt_new();
    v43 = objc_msgSend_dependentOperationIDsByItemID(self, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v43, v44, v39, dCopy);
  }

  objc_msgSend_addObjectsFromArray_(v39, v40, v31);
  v47 = objc_msgSend_dependentOperationIDs(self, v45, v46);
  objc_msgSend_addObjectsFromArray_(v47, v48, v31);

  objc_sync_exit(v28);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v51 = objc_msgSend_unitTestOverrides(self, v49, v50);
    objc_sync_enter(v51);
    v54 = objc_msgSend_unitTestOverrides(self, v52, v53);
    v57 = objc_msgSend_unitTestOverrides(0, v55, v56);
    v59 = v57;
    if (v57)
    {
      objc_msgSend_addEntriesFromDictionary_(v54, v58, v57);
    }

    else
    {
      objc_msgSend_addEntriesFromDictionary_(v54, v58, MEMORY[0x277CBEC10]);
    }

    objc_sync_exit(v51);
  }
}

- (void)removeCallbacksForItemWithID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v7 = objc_msgSend_completionHandlersByItemID(self, v4, v5);
    objc_sync_enter(v7);
    v10 = objc_msgSend_completionHandlersByItemID(self, v8, v9);
    objc_msgSend_removeObjectForKey_(v10, v11, dCopy);

    objc_sync_exit(v7);
    v14 = objc_msgSend_dependentOperationIDsByItemID(self, v12, v13);
    objc_sync_enter(v14);
    v17 = objc_msgSend_dependentOperationIDsByItemID(self, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, dCopy);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v19;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v39, 16);
    if (v24)
    {
      v25 = *v36;
      do
      {
        v26 = 0;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v35 + 1) + 8 * v26);
          v28 = objc_msgSend_dependentOperationIDs(self, v22, v23, v35);
          objc_msgSend_removeObject_(v28, v29, v27);

          ++v26;
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v35, v39, 16);
      }

      while (v24);
    }

    v32 = objc_msgSend_dependentOperationIDsByItemID(self, v30, v31);
    objc_msgSend_removeObjectForKey_(v32, v33, dCopy);

    objc_sync_exit(v14);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)callbacksForItemWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = objc_msgSend_completionHandlersByItemID(self, v4, v5);
    objc_sync_enter(v7);
    v10 = objc_msgSend_completionHandlersByItemID(self, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, dCopy);
    v15 = objc_msgSend_copy(v12, v13, v14);

    objc_sync_exit(v7);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)allItemIDs
{
  v4 = objc_msgSend_completionHandlersByItemID(self, a2, v2);
  objc_sync_enter(v4);
  v7 = objc_msgSend_completionHandlersByItemID(self, v5, v6);
  v10 = objc_msgSend_allKeys(v7, v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);

  objc_sync_exit(v4);

  return v13;
}

- (void)performCallbacksForItemWithID:(id)d withItem:(id)item error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  itemCopy = item;
  errorCopy = error;
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = dCopy;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Error fetching item with ID %@: %@", buf, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v27 = dCopy;
      v28 = 2112;
      v29 = itemCopy;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Bulk fetched item with ID %@: %@.", buf, 0x16u);
    }
  }

  v17 = objc_msgSend_callbackQueue(self, v14, v15);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2252BC750;
  v22[3] = &unk_2785463D0;
  v22[4] = self;
  v23 = dCopy;
  v24 = itemCopy;
  v25 = errorCopy;
  v18 = errorCopy;
  v19 = itemCopy;
  v20 = dCopy;
  dispatch_async(v17, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)finishFetchOperationWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252BC970;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(v7, v9);
}

- (void)cancelFetchOperation
{
  v3 = MEMORY[0x277CBC560];
  v4 = *MEMORY[0x277CBBF50];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_format_(v3, v7, v4, 20, 0, @"%@ %p was cancelled", v6, self);

  objc_msgSend_finishFetchOperationWithError_(self, v8, v9);
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_queuedDate(self, a2, v2);
  v8 = objc_msgSend_lastRequestDate(self, v6, v7);
  v11 = objc_msgSend_numberOfCallbacks(self, v9, v10);
  v14 = objc_msgSend_initialOperation(self, v12, v13);
  v17 = objc_msgSend_operationInfo(v14, v15, v16);
  v20 = objc_msgSend_initialOperation(self, v18, v19);
  v23 = objc_msgSend_usesBackgroundSession(v20, v21, v22);
  v25 = objc_msgSend_stringWithFormat_(v4, v24, @"queuedDate=%@, lastRequestDate=%@, numCallbacks=%d, initialOperationInfo=%@, usesBackground=%d", v5, v8, v11, v17, v23);

  return v25;
}

- (BOOL)canBeUsedForOperation:(id)operation
{
  operationCopy = operation;
  v7 = objc_msgSend_initialOperation(self, v5, v6);
  isNetworkingBehaviorEquivalentForOperation = objc_msgSend_isNetworkingBehaviorEquivalentForOperation_(v7, v8, operationCopy);

  v15 = 0;
  if (isNetworkingBehaviorEquivalentForOperation)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v12 = objc_msgSend_databaseScope(operationCopy, v10, v11), v12 == objc_msgSend_scope(self, v13, v14)))
    {
      v15 = 1;
    }
  }

  return v15;
}

- (BOOL)canBeUsedForPendingFetch:(id)fetch
{
  fetchCopy = fetch;
  v7 = objc_msgSend_initialOperation(self, v5, v6);
  v10 = objc_msgSend_initialOperation(fetchCopy, v8, v9);
  isNetworkingBehaviorEquivalentForOperation = objc_msgSend_isNetworkingBehaviorEquivalentForOperation_(v7, v11, v10);

  if (isNetworkingBehaviorEquivalentForOperation)
  {
    v15 = objc_msgSend_scope(self, v13, v14);
    v18 = v15 == objc_msgSend_scope(fetchCopy, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)dependentOperationListContainsRunningFetch:(id)fetch
{
  fetchCopy = fetch;
  v8 = objc_msgSend_runningOperationID(fetchCopy, v6, v7);

  if (!v8)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDQueuedFetch.m", 265, @"Expected non-nil runningOperationID on fetch %@", fetchCopy);
  }

  v11 = objc_msgSend_dependentOperationIDsByItemID(self, v9, v10);
  objc_sync_enter(v11);
  v14 = objc_msgSend_dependentOperationIDs(self, v12, v13);
  v17 = objc_msgSend_runningOperationID(fetchCopy, v15, v16);
  v19 = objc_msgSend_containsObject_(v14, v18, v17);

  objc_sync_exit(v11);
  return v19;
}

- (BOOL)dependentOperationListContainsOperationID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_dependentOperationIDsByItemID(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_dependentOperationIDs(self, v8, v9);
  LOBYTE(self) = objc_msgSend_containsObject_(v10, v11, dCopy);

  objc_sync_exit(v7);
  return self;
}

- (void)createFetchOperationForItemIDs:(id)ds operationQueue:(id)queue operationConfigurationBlock:(id)block
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, ds, queue, block);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a2, self, @"CKDQueuedFetch.m", 281, @"To be overridden by subclass");
}

- (void)start
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = objc_msgSend_osActivity(self, a2, v2);
  os_activity_scope_enter(v5, &state);

  v8 = objc_msgSend_callbackQueue(self, v6, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252BD1D8;
  v9[3] = &unk_278546110;
  v9[4] = self;
  v9[5] = a2;
  dispatch_sync(v8, v9);

  os_activity_scope_leave(&state);
}

- (CKDQueuedFetch)equivalentRunningFetch
{
  WeakRetained = objc_loadWeakRetained(&self->_equivalentRunningFetch);

  return WeakRetained;
}

- (CKDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (NSOperationQueue)operationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_operationQueue);

  return WeakRetained;
}

@end
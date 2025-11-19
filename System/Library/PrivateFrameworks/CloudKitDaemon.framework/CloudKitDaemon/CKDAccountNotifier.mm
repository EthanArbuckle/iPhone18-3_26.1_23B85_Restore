@interface CKDAccountNotifier
+ (id)sharedNotifier;
- (CKDAccountNotifier)init;
- (id)_accountChangeNotificationOperation:(BOOL)a3;
- (void)dealloc;
- (void)notifyAuthTokenRenewalInProgress:(BOOL)a3 forAccountID:(id)a4;
- (void)postAccountChangedNotificationToClients;
- (void)postAccountChangedNotificationWithAccountID:(id)a3 changeType:(int64_t)a4;
- (void)registerObserver:(id)a3 forAccountChangeNotification:(id)a4;
- (void)registerObserver:(id)a3 forAccountID:(id)a4 authTokenRenewalInProgressNotifications:(id)a5;
- (void)unregisterObserver:(id)a3 forAuthTokenRenewalInProgressNotificationsForAccountID:(id)a4;
- (void)unregisterObserverForAccountChangeNotification:(id)a3;
@end

@implementation CKDAccountNotifier

+ (id)sharedNotifier
{
  if (qword_280D54F78 != -1)
  {
    dispatch_once(&qword_280D54F78, &unk_28385C3E0);
  }

  v3 = qword_280D54F80;

  return v3;
}

- (CKDAccountNotifier)init
{
  v13.receiver = self;
  v13.super_class = CKDAccountNotifier;
  v4 = [(CKDAccountNotifier *)&v13 init];
  if (v4)
  {
    v5 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v2, v3);
    notificationHandlers = v4->_notificationHandlers;
    v4->_notificationHandlers = v5;

    v7 = objc_opt_new();
    accountChangeHandlerQueue = v4->_accountChangeHandlerQueue;
    v4->_accountChangeHandlerQueue = v7;

    objc_msgSend_setMaxConcurrentOperationCount_(v4->_accountChangeHandlerQueue, v9, 4);
    v10 = objc_opt_new();
    authTokenRenewalHandlersByAccountID = v4->_authTokenRenewalHandlersByAccountID;
    v4->_authTokenRenewalHandlersByAccountID = v10;
  }

  return v4;
}

- (void)dealloc
{
  v4 = objc_msgSend_notificationHandlers(self, a2, v2);
  objc_msgSend_removeAllObjects(v4, v5, v6);

  v7.receiver = self;
  v7.super_class = CKDAccountNotifier;
  [(CKDAccountNotifier *)&v7 dealloc];
}

- (void)postAccountChangedNotificationWithAccountID:(id)a3 changeType:(int64_t)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v70 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = v6;
    v10 = CKStringFromAccountChangeType();
    *buf = 138412546;
    v82 = v70;
    v83 = 2114;
    v84 = v10;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Account with ID %@ changed with type: %{public}@", buf, 0x16u);
  }

  if (a4)
  {
    isWarmingUp = a4 == 5;
    objc_msgSend_setWarmingUp_(self, v7, isWarmingUp);
  }

  else
  {
    isWarmingUp = objc_msgSend_isWarmingUp(self, v7, v8);
  }

  v71 = objc_msgSend__accountChangeNotificationOperation_(self, v12, isWarmingUp);
  v13 = a4 == 3;
  obj = objc_msgSend_notificationHandlers(self, v14, v15);
  objc_sync_enter(obj);
  v16 = MEMORY[0x277CBEB18];
  v19 = objc_msgSend_notificationHandlers(self, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);
  v24 = objc_msgSend_arrayWithCapacity_(v16, v23, v22);

  v27 = objc_msgSend_notificationHandlers(self, v25, v26);
  v30 = objc_msgSend_keyEnumerator(v27, v28, v29);

  v33 = 0;
  v34 = MEMORY[0x277D85DD0];
  while (1)
  {
    v35 = objc_msgSend_nextObject(v30, v31, v32);

    if (!v35)
    {
      break;
    }

    v38 = objc_msgSend_notificationHandlers(self, v36, v37);
    v40 = objc_msgSend_objectForKey_(v38, v39, v35);

    v41 = MEMORY[0x277CCA8C8];
    v76[0] = v34;
    v76[1] = 3221225472;
    v76[2] = sub_225111930;
    v76[3] = &unk_2785456F0;
    v42 = v40;
    v78 = v42;
    v77 = v70;
    v79 = v13;
    v44 = objc_msgSend_blockOperationWithBlock_(v41, v43, v76);
    objc_msgSend_addDependency_(v71, v45, v44);
    objc_msgSend_addObject_(v24, v46, v44);

    v33 = v35;
  }

  objc_sync_exit(obj);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v47 = v24;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v72, v80, 16);
  if (v51)
  {
    v52 = *v73;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(v47);
        }

        v54 = *(*(&v72 + 1) + 8 * i);
        v55 = objc_msgSend_accountChangeHandlerQueue(self, v49, v50);
        objc_msgSend_addOperation_(v55, v56, v54);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v72, v80, 16);
    }

    while (v51);
  }

  v59 = objc_msgSend_accountChangeHandlerQueue(self, v57, v58);
  objc_msgSend_addOperation_(v59, v60, v71);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v61 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Waiting for all account notification handlers to run", buf, 2u);
  }

  v64 = objc_msgSend_accountChangeHandlerQueue(self, v62, v63);
  objc_msgSend_waitUntilAllOperationsAreFinished(v64, v65, v66);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v67 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v67, OS_LOG_TYPE_INFO, "Account notification handlers are complete", buf, 2u);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (void)postAccountChangedNotificationToClients
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Notifying clients of updated account info", v13, 2u);
  }

  isWarmingUp = objc_msgSend_isWarmingUp(self, v4, v5);
  v8 = objc_msgSend__accountChangeNotificationOperation_(self, v7, isWarmingUp);
  v11 = objc_msgSend_accountChangeHandlerQueue(self, v9, v10);
  objc_msgSend_addOperation_(v11, v12, v8);
}

- (id)_accountChangeNotificationOperation:(BOOL)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225111AE0;
  v5[3] = &unk_278545A38;
  v6 = a3;
  v3 = objc_msgSend_blockOperationWithBlock_(MEMORY[0x277CCA8C8], a2, v5);

  return v3;
}

- (void)registerObserver:(id)a3 forAccountChangeNotification:(id)a4
{
  v7 = a3;
  v10 = a4;
  if (!v7)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDAccountNotifier.m", 144, @"Observer cannot be nil");
  }

  objc_msgSend_unregisterObserverForAccountChangeNotification_(self, v8, v7);
  v13 = objc_msgSend_notificationHandlers(self, v11, v12);
  objc_sync_enter(v13);
  v16 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v14, v15);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_225111E98;
  v32 = &unk_278545A88;
  v17 = v16;
  v33 = v17;
  v18 = v10;
  v34 = v18;
  v19 = _Block_copy(&v29);
  v22 = objc_msgSend_notificationHandlers(self, v20, v21, v29, v30, v31, v32);
  v25 = objc_msgSend_copy(v19, v23, v24);
  objc_msgSend_setObject_forKey_(v22, v26, v25, v7);

  objc_sync_exit(v13);
}

- (void)unregisterObserverForAccountChangeNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v7 = objc_msgSend_notificationHandlers(self, v5, v6);
    objc_sync_enter(v7);
    v10 = objc_msgSend_notificationHandlers(self, v8, v9);
    objc_msgSend_removeObjectForKey_(v10, v11, v12);

    objc_sync_exit(v7);
    v4 = v12;
  }
}

- (void)registerObserver:(id)a3 forAccountID:(id)a4 authTokenRenewalInProgressNotifications:(id)a5
{
  v29 = a3;
  v9 = a4;
  v12 = a5;
  if (!v29)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDAccountNotifier.m", 170, @"Observer must not be nil");
  }

  v13 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v10, v11);
  objc_sync_enter(v13);
  v16 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v14, v15);
  v18 = objc_msgSend_objectForKey_(v16, v17, v9);

  if (!v18)
  {
    v18 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v19, v20);
    v23 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v21, v22);
    objc_msgSend_setObject_forKey_(v23, v24, v18, v9);
  }

  v25 = _Block_copy(v12);
  objc_msgSend_setObject_forKey_(v18, v26, v25, v29);

  objc_sync_exit(v13);
}

- (void)unregisterObserver:(id)a3 forAuthTokenRenewalInProgressNotificationsForAccountID:(id)a4
{
  v22 = a3;
  v8 = a4;
  if (v22)
  {
    v9 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v6, v7);
    objc_sync_enter(v9);
    v12 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v10, v11);
    v14 = objc_msgSend_objectForKey_(v12, v13, v8);

    if (v14)
    {
      objc_msgSend_removeObjectForKey_(v14, v15, v22);
      if (!objc_msgSend_count(v14, v16, v17))
      {
        v20 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v18, v19);
        objc_msgSend_removeObjectForKey_(v20, v21, v8);
      }
    }

    objc_sync_exit(v9);
  }
}

- (void)notifyAuthTokenRenewalInProgress:(BOOL)a3 forAccountID:(id)a4
{
  v7 = a4;
  if (!objc_msgSend_length(v7, v8, v9))
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKDAccountNotifier.m", 200, @"Account ID cannot be empty");
  }

  v12 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v10, v11);
  objc_sync_enter(v12);
  v15 = objc_msgSend_authTokenRenewalHandlersByAccountID(self, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, v7);
  v20 = objc_msgSend_dictionaryRepresentation(v17, v18, v19);
  v23 = objc_msgSend_allValues(v20, v21, v22);

  objc_sync_exit(v12);
  v24 = MEMORY[0x277CCA8C8];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_225112434;
  v35[3] = &unk_278545AB0;
  v38 = a3;
  v36 = v23;
  v37 = v7;
  v25 = v7;
  v26 = v23;
  v28 = objc_msgSend_blockOperationWithBlock_(v24, v27, v35);
  v31 = objc_msgSend_accountChangeHandlerQueue(self, v29, v30);
  objc_msgSend_addOperation_(v31, v32, v28);
}

@end
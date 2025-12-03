@interface CKDProcessScopedStateManager
+ (id)sharedManager;
- (id)initInternal;
- (void)_wipePersonaBasedClientCacheForAppRecord:(id)record;
- (void)accountWithID:(id)d changedWithChangeType:(int64_t)type;
- (void)accountsDidGrantAccessToBundleID:(id)d containerIdentifiers:(id)identifiers;
- (void)accountsDidRevokeAccessToBundleID:(id)d containerIdentifiers:(id)identifiers;
- (void)accountsWillDeleteAccount:(id)account completionHandler:(id)handler;
- (void)clearPCSCachesForKnownContainersWithCompletionHandler:(id)handler;
- (void)dumpAllClientsStatusReportToFileHandle:(id)handle completionHandler:(id)handler;
- (void)fetchUsabilityForTestAccountCredentials:(id)credentials completionHandler:(id)handler;
- (void)kickOffPendingLongLivedOperations;
- (void)maxInlineMergeableDeltaSizeWithCompletionHandler:(id)handler;
- (void)updatePushTokens;
- (void)wipeAllCachesAndDie;
- (void)wipeServerConfigurationsAndDie;
@end

@implementation CKDProcessScopedStateManager

+ (id)sharedManager
{
  if (qword_280D58180 != -1)
  {
    dispatch_once(&qword_280D58180, &unk_28385CE40);
  }

  v3 = qword_280D58178;

  return v3;
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKDProcessScopedStateManager;
  return [(CKDProcessScopedStateManager *)&v3 init];
}

- (void)dumpAllClientsStatusReportToFileHandle:(id)handle completionHandler:(id)handler
{
  handlerCopy = handler;
  handleCopy = handle;
  v8 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v6, v7);
  objc_msgSend_dumpStatusReportToFileHandle_(v8, v9, handleCopy);

  v10 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v10 = handlerCopy;
  }
}

- (void)clearPCSCachesForKnownContainersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_msgSend_evictPCSSQLCachesForKnownContainers(CKDPCSSQLCache, v3, v4);
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (void)accountsDidGrantAccessToBundleID:(id)d containerIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = dCopy;
    v11 = 2112;
    v12 = identifiersCopy;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "accountsDidGrantAccessToBundleID:%@ containerIdentifiers:%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountsDidRevokeAccessToBundleID:(id)d containerIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = dCopy;
    v25 = 2112;
    v26 = identifiersCopy;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "accountsDidRevokeAccessToBundleID:%@ containerIdentifiers:%@", buf, 0x16u);
  }

  v9 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v8, identifiersCopy);
  v12 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v10, v11);
  v15 = objc_msgSend_metadataCache(v12, v13, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22518FD94;
  v20[3] = &unk_278548210;
  v21 = dCopy;
  v22 = v9;
  v16 = v9;
  v17 = dCopy;
  objc_msgSend_enumerateKnownAppContainerAccountTuplesUsingBlock_(v15, v18, v20);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)accountsWillDeleteAccount:(id)account completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  handlerCopy = handler;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = accountCopy;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "accountsWillDeleteAccount:%@", buf, 0xCu);
  }

  if (BYSetupAssistantNeedsToRun())
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Will not unregister any push token as we're in Buddy", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v13 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v10, v11);
    v16 = objc_msgSend_tokenRegistrationScheduler(v13, v14, v15);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_225190100;
    v19[3] = &unk_278548238;
    v20 = handlerCopy;
    objc_msgSend_unregisterAllTokensForAccountID_completionHandler_(v16, v17, accountCopy, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)accountWithID:(id)d changedWithChangeType:(int64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = v6;
    v10 = CKStringFromAccountChangeType();
    v19 = 138412546;
    v20 = dCopy;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Account %@ changed with type %@", &v19, 0x16u);
  }

  v11 = objc_msgSend_sharedAccountStore(CKDAccountStore, v7, v8);
  objc_msgSend_invalidateCache(v11, v12, v13);

  v16 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v14, v15);
  objc_msgSend_postAccountChangedNotificationWithAccountID_changeType_(v16, v17, dCopy, type);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchUsabilityForTestAccountCredentials:(id)credentials completionHandler:(id)handler
{
  handlerCopy = handler;
  credentialsCopy = credentials;
  v7 = [CKDAccount alloc];
  inited = objc_msgSend_initExplicitCredentialsAccountWithAccountOverrideInfo_(v7, v8, credentialsCopy);

  isValidTestAccount = objc_msgSend_isValidTestAccount(inited, v9, v10);
  handlerCopy[2](handlerCopy, isValidTestAccount, 0);
}

- (void)_wipePersonaBasedClientCacheForAppRecord:(id)record
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  recordCopy = record;
  obj = objc_msgSend_identities(recordCopy, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v29, v33, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_2251905FC;
        aBlock[3] = &unk_278545A00;
        v28 = recordCopy;
        v11 = _Block_copy(aBlock);
        v14 = objc_msgSend_personaUniqueString(v10, v12, v13);
        if (v14)
        {
          v15 = objc_alloc(MEMORY[0x277CBC558]);
          v18 = objc_msgSend_personaUniqueString(v10, v16, v17);
          v20 = objc_msgSend_initWithIdentifier_type_(v15, v19, v18, 0);
        }

        else
        {
          v20 = 0;
        }

        v26 = v11;
        v21 = v11;
        CKPersonaPerformBlock();
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v29, v33, 16);
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)wipeAllCachesAndDie
{
  v22 = *MEMORY[0x277D85DE8];
  objc_msgSend_enumeratorWithOptions_(MEMORY[0x277CC1E70], a2, 0);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend__wipePersonaBasedClientCacheForAppRecord_(self, v6, *(*(&v17 + 1) + 8 * i));
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v17, v21, 16);
    }

    while (v7);
  }

  v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v10, v11);
  v13 = CKGetHomeCacheDir();
  objc_msgSend_removeItemAtPath_error_(v12, v14, v13, 0);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "It's time for cloudd to die...", v16, 2u);
  }

  exit(1);
}

- (void)wipeServerConfigurationsAndDie
{
  v3 = objc_msgSend_sharedManager(CKDServerConfigurationManager, a2, v2);
  objc_msgSend_wipeAllConfigurations(v3, v4, v5);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "It's time for cloudd to die...", v7, 2u);
  }

  exit(1);
}

- (void)updatePushTokens
{
  v8 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, a2, v2);
  v5 = objc_msgSend_tokenRegistrationScheduler(v8, v3, v4);
  objc_msgSend_forceTokenRefreshForAllClients(v5, v6, v7);
}

- (void)kickOffPendingLongLivedOperations
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v5 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v3, v4);
  v8 = objc_msgSend_operationInfoCache(v5, v6, v7);

  v10 = objc_msgSend_resumableOperationInfosByAppContainerAccountTuplesWithProgressPurged_(v8, v9, 1);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_225190CAC;
  v32[3] = &unk_278548288;
  v11 = v2;
  v33 = v11;
  v12 = v8;
  v34 = v12;
  v27 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v10, v13, v32);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v11;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v37, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    v19 = MEMORY[0x277CBC880];
    v20 = MEMORY[0x277CBC830];
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v28 + 1) + 8 * v21);
        if (*v19 != -1)
        {
          dispatch_once(v19, *MEMORY[0x277CBC878]);
        }

        v23 = *v20;
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v36 = v22;
          _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Forgetting all about operation %{public}@", buf, 0xCu);
        }

        objc_msgSend_deleteAllInfoForOperationWithID_(v12, v24, v22);
        ++v21;
      }

      while (v17 != v21);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v25, &v28, v37, 16);
    }

    while (v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)maxInlineMergeableDeltaSizeWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v4, v5);
  v9 = objc_msgSend_lastKnownServerConfiguration(v6, v7, v8);

  if (v9)
  {
    v11 = objc_msgSend_maxInlineMergeableDeltaSize_(v9, v10, 0);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v15 = 134217984;
      v16 = v11;
      v13 = "Returning max inline mergeable delta size from configuration: %ld";
LABEL_11:
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, v13, &v15, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = 92160;
    v12 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v15 = 134217984;
      v16 = 92160;
      v13 = "Returning default max inline mergeable delta size: %ld";
      goto LABEL_11;
    }
  }

  handlerCopy[2](handlerCopy, v11);

  v14 = *MEMORY[0x277D85DE8];
}

@end
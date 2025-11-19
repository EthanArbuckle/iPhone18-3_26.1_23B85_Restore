@interface EDCategorizationSyncManager
+ (OS_os_log)log;
- (EDCategorizationSyncManager)initWithBusinessPersistence:(id)a3 messagePersistence:(id)a4 accountsProvider:(id)a5 hookRegistry:(id)a6;
- (id)_findMessagesForAddressIDs:(id)a3;
- (id)_messageForSenderInICloud:(id)a3;
- (id)_nativeOverrideRulesMap;
- (id)_overrideRuleFromRecord:(id)a3;
- (id)_overrideRuleRecordForMessage:(id)a3 forAddressID:(id)a4;
- (void)_syncNativeRulesToServer:(id)a3;
- (void)_syncRuleToWebForMessages:(id)a3 withCategory:(id)a4 atTimestamp:(id)a5;
- (void)_updateServerRuleToDevice:(id)a3 addressID:(int64_t)a4 withTimestamp:(id)a5 withCategory:(unint64_t)a6 withAddress:(id)a7 shouldRestoreCategory:(BOOL)a8;
- (void)categoryRulesController:(id)a3 didReceiveOverrideRules:(id)a4;
- (void)categoryRulesController:(id)a3 didReceiveSyncAllOverrideRules:(id)a4;
- (void)loadiCloudMCCKit;
- (void)persistenceDidChangeCategoryOverrideForAddressIDs:(id)a3 category:(id)a4 timestamp:(id)a5 originator:(unint64_t)a6;
- (void)persistenceDidClearAllCategoryOverridesWithTimestamp:(id)a3;
@end

@implementation EDCategorizationSyncManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EDCategorizationSyncManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_18 != -1)
  {
    dispatch_once(&log_onceToken_18, block);
  }

  v2 = log_log_18;

  return v2;
}

void __34__EDCategorizationSyncManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_18;
  log_log_18 = v1;
}

- (EDCategorizationSyncManager)initWithBusinessPersistence:(id)a3 messagePersistence:(id)a4 accountsProvider:(id)a5 hookRegistry:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = EDCategorizationSyncManager;
  v15 = [(EDCategorizationSyncManager *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_businessPersistence, a3);
    objc_storeStrong(&v16->_messagePersistence, a4);
    objc_storeStrong(&v16->_accountsProvider, a5);
    [(EDCategorizationSyncManager *)v16 loadiCloudMCCKit];
    [v14 registerCategoryChangeHookResponder:v16];
    v17 = MEMORY[0x1E699B978];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.icloudSyncScheduler", objc_opt_class()];
    v19 = [v17 serialDispatchQueueSchedulerWithName:v18];
    icloudSyncScheduler = v16->_icloudSyncScheduler;
    v16->_icloudSyncScheduler = v19;
  }

  return v16;
}

- (void)loadiCloudMCCKit
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getMCCCategoryRulesControllerClass_softClass;
  v13 = getMCCCategoryRulesControllerClass_softClass;
  if (!getMCCCategoryRulesControllerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getMCCCategoryRulesControllerClass_block_invoke;
    v9[3] = &unk_1E8250000;
    v9[4] = &v10;
    __getMCCCategoryRulesControllerClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = objc_alloc_init(v3);
  rulesController = self->_rulesController;
  self->_rulesController = v5;

  v7 = self->_rulesController;
  if (v7)
  {
    [(MCCCategoryRulesController *)v7 setDelegate:self];
    [(MCCCategoryRulesController *)self->_rulesController registerForWebRuleNotifications];
    v8 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_INFO, "Initiated MCCCategoryRulesController and registered for rule notifications", v9, 2u);
    }
  }

  else
  {
    v8 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EDCategorizationSyncManager *)v8 loadiCloudMCCKit];
    }
  }
}

- (void)_syncRuleToWebForMessages:(id)a3 withCategory:(id)a4 atTimestamp:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v38 = a4;
  v36 = a5;
  v37 = objc_opt_new();
  v30 = objc_alloc_init(getMCCSecretAgentControllerClass());
  RCOverrideRuleClass = getRCOverrideRuleClass();
  Property = class_getProperty(RCOverrideRuleClass, "xAppleRequestHeader");
  Name = property_getName(Property);
  v9 = getRCOverrideRuleClass();
  v10 = class_getProperty(v9, "messageIdHeader");
  v35 = property_getName(v10);
  v11 = getRCOverrideRuleClass();
  v12 = class_getProperty(v11, "category");
  v33 = property_getName(v12);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v29;
  v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v32 = *v40;
    v14 = *MEMORY[0x1E699B190];
    do
    {
      v15 = 0;
      do
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        v17 = objc_alloc_init(getRCOverrideRuleClass());
        v18 = [v16 messageIDHeader];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v35];
        [v17 setValue:v18 forKey:v19];

        v20 = [v16 headers];
        v21 = [v20 firstHeaderForKey:v14];

        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = &stru_1F45B4608;
        }

        [v17 setValue:v23 forKey:{v22, v29}];

        if (v38)
        {
          [v38 unsignedIntegerValue];
          v24 = EMStringFromCategoryType();
        }

        else
        {
          v24 = &stru_1F45B4608;
        }

        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v33];
        [v17 setValue:v24 forKey:v25];

        v26 = MEMORY[0x1E696AD98];
        [v36 timeIntervalSince1970];
        v27 = [v26 numberWithDouble:?];
        [v17 setCategoryUpdateTime:v27];

        [v37 addObject:v17];
        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  [v30 syncRecategorizationRules:v37 completion:&__block_literal_global_14];
  v28 = *MEMORY[0x1E69E9840];
}

void __82__EDCategorizationSyncManager__syncRuleToWebForMessages_withCategory_atTimestamp___block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __82__EDCategorizationSyncManager__syncRuleToWebForMessages_withCategory_atTimestamp___block_invoke_cold_1();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_findMessagesForAddressIDs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v9 = *v18;
    *&v8 = 138543362;
    v16 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(EDCategorizationSyncManager *)self _messageForSenderInICloud:v11, v16, v17];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = +[EDCategorizationSyncManager log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_INFO, "Failed to find any messages for address %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_messageForSenderInICloud:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDCategorizationSyncManager *)self accountsProvider];
  v6 = [v5 mailAccounts];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 primaryiCloudAccount])
        {
          v13 = [(EDCategorizationSyncManager *)self messagePersistence];
          v23 = v4;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
          v15 = [v13 persistedMessagesFromSendersWithAddressIDs:v14 temporarilyUnavailableMessageObjectIDs:0];

          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __57__EDCategorizationSyncManager__messageForSenderInICloud___block_invoke;
          v18[3] = &unk_1E8251360;
          v18[4] = v11;
          v12 = [v15 ef_firstObjectPassingTest:v18];

          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

BOOL __57__EDCategorizationSyncManager__messageForSenderInICloud___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = v4 == v5;

  return v6;
}

- (void)categoryRulesController:(id)a3 didReceiveOverrideRules:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v42 = a4;
  v4 = +[EDCategorizationSyncManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v56) = [v42 count];
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Syncing %d rules from web", buf, 8u);
  }

  if (_os_feature_enabled_impl())
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v42;
    v5 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v5)
    {
      v44 = *MEMORY[0x1E699A728];
      v45 = *v51;
      do
      {
        v46 = v5;
        for (i = 0; i != v46; ++i)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v50 + 1) + 8 * i);
          v8 = [v7 category];
          v9 = [v8 isEqualToString:&stru_1F45B4608];

          v10 = [v7 category];
          v11 = EMCategoryTypeFromString();

          v12 = [v7 address];
          v48 = [v12 emailAddress];

          v13 = [v7 address];
          v14 = [v13 displayName];

          v15 = v48;
          v16 = v14;
          v17 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v15];
          [v17 setDisplayName:v16];
          v18 = [v17 emailAddressValue];
          v19 = v18;
          if (v18)
          {
            v49 = v18;
          }

          else
          {
            v20 = [v17 stringValue];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = v15;
            }

            v49 = v22;
          }

          v23 = [(EDCategorizationSyncManager *)self messagePersistence];
          v24 = [v23 findAddressIDForAddress:v49];

          if (v24 == v44)
          {
            v25 = +[EDCategorizationSyncManager log];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v49];
              objc_claimAutoreleasedReturnValue();
              [EDCategorizationSyncManager categoryRulesController:didReceiveOverrideRules:];
            }
          }

          else
          {
            v26 = [(EDCategorizationSyncManager *)self businessPersistence];
            v25 = [v26 lastModifiedDateForAddressID:v24];

            v27 = MEMORY[0x1E695DF00];
            v28 = [v7 categoryUpdateTime];
            [v28 doubleValue];
            v29 = [v27 dateWithTimeIntervalSince1970:?];

            if (v25 && ([v29 ef_isLaterThanDate:v25] & 1) == 0)
            {
              v32 = +[EDCategorizationSyncManager log];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_DEFAULT, "Skipping the override, lastModifiedDate is older than existing timestamp", buf, 2u);
              }
            }

            else
            {
              v30 = +[EDCategorizationSyncManager log];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v56 = v24;
                _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "AddressID: %lld", buf, 0xCu);
              }

              if (v9)
              {
                v31 = +[EDCategorizationSyncManager log];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_DEFAULT, "Removing User override/Setting to Automatic", buf, 2u);
                }

                v32 = [(EDCategorizationSyncManager *)self businessPersistence];
                v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v24];
                v59 = v33;
                v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
                [v32 removeUserOverrideForAddressIDs:v34 timestamp:v29 originator:1 userInitiated:0];
              }

              else
              {
                v35 = +[EDCategorizationSyncManager log];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = [v7 category];
                  v37 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v49];
                  *buf = 138412546;
                  v56 = v36;
                  v57 = 2112;
                  v58 = v37;
                  _os_log_impl(&dword_1C61EF000, v35, OS_LOG_TYPE_DEFAULT, "Setting to %@ for address: %@", buf, 0x16u);
                }

                v32 = [(EDCategorizationSyncManager *)self businessPersistence];
                v38 = [MEMORY[0x1E696AD98] numberWithLongLong:v24];
                v54 = v38;
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                [v32 insertOrUpdateUserOverrideForAddressIDs:v39 category:v11 timestamp:v29 originator:1];
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v5);
    }
  }

  v40 = +[EDCategorizationSyncManager log];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "Syncing completed.", buf, 2u);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)categoryRulesController:(id)a3 didReceiveSyncAllOverrideRules:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[EDCategorizationSyncManager log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = [v5 count];
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Sync all overrides - syncing %d rules from webmail with native", buf, 8u);
  }

  icloudSyncScheduler = self->_icloudSyncScheduler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__EDCategorizationSyncManager_categoryRulesController_didReceiveSyncAllOverrideRules___block_invoke;
  v10[3] = &unk_1E8250128;
  v10[4] = self;
  v8 = v5;
  v11 = v8;
  [(EFScheduler *)icloudSyncScheduler performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __86__EDCategorizationSyncManager_categoryRulesController_didReceiveSyncAllOverrideRules___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v47 = objc_opt_new();
  v48 = [*(a1 + 32) _nativeOverrideRulesMap];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  v54 = a1;
  if (v2)
  {
    v49 = *MEMORY[0x1E699A728];
    v50 = *v63;
    do
    {
      v51 = v2;
      for (i = 0; i != v51; ++i)
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v62 + 1) + 8 * i);
        v5 = [v4 category];
        v53 = [v5 isEqualToString:&stru_1F45B4608];

        v6 = [v4 category];
        v52 = EMCategoryTypeFromString();

        v7 = [v4 address];
        v55 = [v7 emailAddress];

        v8 = [v4 address];
        v9 = [v8 displayName];

        v10 = v55;
        v11 = v9;
        v12 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v10];
        [v12 setDisplayName:v11];
        v13 = [v12 emailAddressValue];
        v14 = v13;
        if (v13)
        {
          v57 = v13;
        }

        else
        {
          v15 = [v12 stringValue];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v10;
          }

          v57 = v17;
        }

        v18 = [*(v54 + 32) messagePersistence];
        v19 = [v18 findAddressIDForAddress:v57];

        v20 = +[EDCategorizationSyncManager log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v68 = v19;
          _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "AddressID: %lld", buf, 0xCu);
        }

        if (v19 == v49)
        {
          v21 = +[EDCategorizationSyncManager log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v57];
            objc_claimAutoreleasedReturnValue();
            __86__EDCategorizationSyncManager_categoryRulesController_didReceiveSyncAllOverrideRules___block_invoke_cold_1();
          }
        }

        else
        {
          v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
          v21 = [v22 stringValue];

          v56 = [v48 objectForKeyedSubscript:v21];
          v23 = MEMORY[0x1E695DF00];
          v24 = [v4 categoryUpdateTime];
          [v24 doubleValue];
          v25 = [v23 dateWithTimeIntervalSince1970:?];

          if (!v56)
          {
            goto LABEL_25;
          }

          v26 = [v56 date];
          v27 = [v25 ef_isLaterThanDate:v26];
          if ((v27 & 1) == 0 && [v26 ef_isLaterThanDate:v25])
          {
            v28 = [v56 category];

            if (v28)
            {
              v44 = [v56 category];
              [v44 unsignedIntegerValue];
              v29 = EMStringFromCategoryType();

              v30 = v29;
            }

            else
            {
              v30 = &stru_1F45B4608;
            }

            v45 = v30;
            [v4 setCategory:?];
            v31 = MEMORY[0x1E696AD98];
            v43 = [v56 date];
            [v43 timeIntervalSince1970];
            v32 = [v31 numberWithDouble:?];
            [v4 setCategoryUpdateTime:v32];

            [v47 addObject:v4];
          }

          [v48 removeObjectForKey:v21];

          if ((v27 & 1) == 0)
          {
            v33 = +[EDCategorizationSyncManager log];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "Skipping the override", buf, 2u);
            }
          }

          else
          {
LABEL_25:
            [*(v54 + 32) _updateServerRuleToDevice:v4 addressID:v19 withTimestamp:v25 withCategory:v52 withAddress:v57 shouldRestoreCategory:v53];
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v2);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = v48;
  v35 = [v34 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v35)
  {
    v36 = *v59;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = [v34 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * j)];
        if (v38)
        {
          v39 = [*(v54 + 32) _overrideRuleFromRecord:v38];
          [v47 addObject:v39];
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v35);
  }

  v40 = *(v54 + 32);
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v47];
  [v40 _syncNativeRulesToServer:v41];

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_syncNativeRulesToServer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getMCCSecretAgentControllerClass());
  [v4 syncRecategorizationRules:v3 completion:&__block_literal_global_37];
  v5 = +[EDCategorizationSyncManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Syncing all overrides completed.", v6, 2u);
  }
}

void __56__EDCategorizationSyncManager__syncNativeRulesToServer___block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __56__EDCategorizationSyncManager__syncNativeRulesToServer___block_invoke_cold_1();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateServerRuleToDevice:(id)a3 addressID:(int64_t)a4 withTimestamp:(id)a5 withCategory:(unint64_t)a6 withAddress:(id)a7 shouldRestoreCategory:(BOOL)a8
{
  v8 = a8;
  v30[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  if (v8)
  {
    v17 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Removing User override/Setting to Automatic", buf, 2u);
    }

    v18 = [(EDCategorizationSyncManager *)self businessPersistence];
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
    v30[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v18 removeUserOverrideForAddressIDs:v20 timestamp:v15 originator:1 userInitiated:0];
  }

  else
  {
    v21 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v14 category];
      v23 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v16];
      *buf = 138412546;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Setting to %@ for address: %@", buf, 0x16u);
    }

    v18 = [(EDCategorizationSyncManager *)self businessPersistence];
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
    v25 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v18 insertOrUpdateUserOverrideForAddressIDs:v20 category:a6 timestamp:v15 originator:1];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_nativeOverrideRulesMap
{
  v3 = objc_opt_new();
  v4 = [(EDCategorizationSyncManager *)self businessPersistence];
  v5 = [v4 businessAddressMapWithCategoryOverride];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__EDCategorizationSyncManager__nativeOverrideRulesMap__block_invoke;
  v10[3] = &unk_1E8250660;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __54__EDCategorizationSyncManager__nativeOverrideRulesMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v9 = *v18;
    *&v8 = 138543362;
    v16 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [*(a1 + 32) _messageForSenderInICloud:{v11, v16, v17}];
        if (v12)
        {
          v13 = [*(a1 + 32) _overrideRuleRecordForMessage:v12 forAddressID:v11];
          v14 = [v11 stringValue];
          [*(a1 + 40) setObject:v13 forKeyedSubscript:v14];
        }

        else
        {
          v13 = +[EDCategorizationSyncManager log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v5;
            _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_INFO, "Failed to find any messages for address %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_overrideRuleRecordForMessage:(id)a3 forAddressID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDCategorizationSyncManager *)self businessPersistence];
  v9 = [v8 lastModifiedDateForAddressID:{objc_msgSend(v7, "longLongValue")}];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v6 category];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "type")}];

  v13 = [EDOverrideRuleRecord recordWithCategory:v12 date:v9 message:v6];

  return v13;
}

- (id)_overrideRuleFromRecord:(id)a3
{
  v3 = a3;
  RCOverrideRuleClass = getRCOverrideRuleClass();
  Property = class_getProperty(RCOverrideRuleClass, "xAppleRequestHeader");
  Name = property_getName(Property);
  v7 = getRCOverrideRuleClass();
  v8 = class_getProperty(v7, "messageIdHeader");
  v9 = property_getName(v8);
  v10 = getRCOverrideRuleClass();
  v11 = class_getProperty(v10, "category");
  v12 = property_getName(v11);
  v13 = objc_alloc_init(getRCOverrideRuleClass());
  v14 = [v3 message];
  v15 = [v14 messageIDHeader];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  [v13 setValue:v15 forKey:v16];

  v17 = [v3 message];
  v18 = [v17 headers];
  v19 = [v18 firstHeaderForKey:*MEMORY[0x1E699B190]];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_1F45B4608;
  }

  [v13 setValue:v21 forKey:v20];

  v22 = &stru_1F45B4608;
  v23 = [v3 category];

  if (v23)
  {
    v24 = [v3 category];
    [v24 unsignedIntegerValue];
    v22 = EMStringFromCategoryType();
  }

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  [v13 setValue:v22 forKey:v25];

  v26 = MEMORY[0x1E696AD98];
  v27 = [v3 date];
  [v27 timeIntervalSince1970];
  v28 = [v26 numberWithDouble:?];
  [v13 setCategoryUpdateTime:v28];

  return v13;
}

- (void)persistenceDidChangeCategoryOverrideForAddressIDs:(id)a3 category:(id)a4 timestamp:(id)a5 originator:(unint64_t)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 - 1 >= 2)
  {
    v13 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_INFO, "persistenceDidChangeCategoryOverrideForAddressIDs for %{public}@", buf, 0xCu);
    }

    icloudSyncScheduler = self->_icloudSyncScheduler;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111__EDCategorizationSyncManager_persistenceDidChangeCategoryOverrideForAddressIDs_category_timestamp_originator___block_invoke;
    v16[3] = &unk_1E8250AB8;
    v16[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    [(EFScheduler *)icloudSyncScheduler performBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __111__EDCategorizationSyncManager_persistenceDidChangeCategoryOverrideForAddressIDs_category_timestamp_originator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _findMessagesForAddressIDs:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = v2;
  [*(a1 + 32) _syncRuleToWebForMessages:? withCategory:? atTimestamp:?];
}

- (void)persistenceDidClearAllCategoryOverridesWithTimestamp:(id)a3
{
  v4 = a3;
  v5 = +[EDCategorizationSyncManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "persistenceDidClearAllCategoryOverridesWithTimestamp called", buf, 2u);
  }

  icloudSyncScheduler = self->_icloudSyncScheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__EDCategorizationSyncManager_persistenceDidClearAllCategoryOverridesWithTimestamp___block_invoke;
  v8[3] = &unk_1E8250260;
  v7 = v4;
  v9 = v7;
  [(EFScheduler *)icloudSyncScheduler performBlock:v8];
}

void __84__EDCategorizationSyncManager_persistenceDidClearAllCategoryOverridesWithTimestamp___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getMCCSecretAgentControllerClass());
  [*(a1 + 32) timeIntervalSince1970];
  [v2 clearAllUserOverridesWithTimestamp:&__block_literal_global_42 completion:?];
}

void __84__EDCategorizationSyncManager_persistenceDidClearAllCategoryOverridesWithTimestamp___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a2)
  {
    v5 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Successfully cleared all overrides", v7, 2u);
    }
  }

  else
  {
    v5 = +[EDCategorizationSyncManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __84__EDCategorizationSyncManager_persistenceDidClearAllCategoryOverridesWithTimestamp___block_invoke_2_cold_1();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __82__EDCategorizationSyncManager__syncRuleToWebForMessages_withCategory_atTimestamp___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v1, v3, "Failed to sync rules, error:%@", v4);
}

- (void)categoryRulesController:didReceiveOverrideRules:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138412290;
  *v3 = v2;
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "Unable to find addressID with %@", v4, 0xCu);
}

void __86__EDCategorizationSyncManager_categoryRulesController_didReceiveSyncAllOverrideRules___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "Unable to find addressID with %{public}@", v4, 0xCu);
}

void __56__EDCategorizationSyncManager__syncNativeRulesToServer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v1, v3, "Failed to sync rules, error:%{public}@", v4);
}

void __84__EDCategorizationSyncManager_persistenceDidClearAllCategoryOverridesWithTimestamp___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v1, v3, "Failed to clear all user overrides thru MCCKit, error:%@", v4);
}

@end
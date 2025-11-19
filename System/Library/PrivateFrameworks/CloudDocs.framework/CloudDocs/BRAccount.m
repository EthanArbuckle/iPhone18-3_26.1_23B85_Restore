@interface BRAccount
+ (BOOL)_refreshCurrentLoggedInAccountForcingRefresh:(BOOL)a3 personaID:(id)a4 error:(id *)a5;
+ (BOOL)refreshCurrentLoggedInAccount;
+ (BOOL)refreshCurrentLoggedInAccountWithError:(id *)a3;
+ (id)currentCachedLoggedInAccountWithError:(id *)a3;
+ (id)currentLoggedInAccountWithError:(id *)a3;
+ (void)startAccountTokenChangeObserverIfNeeded;
- (BOOL)getEvictableSpace:(id *)a3 error:(id *)a4;
- (BOOL)hasOptimizeStorageWithError:(id *)a3;
- (BOOL)iCloudDesktopSettingsChangedWithAttributes:(id)a3 error:(id *)a4;
- (BRAccount)init;
- (BRAccount)initWithAccountID:(id)a3;
- (id)containerWithPendingChanges;
- (void)containerWithPendingChanges;
- (void)evictOldDocumentsWithHandler:(id)a3;
@end

@implementation BRAccount

void __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke()
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("account-token-change-observer", v1);

  v3 = startAccountTokenChangeObserverIfNeeded_tokenChangeObserverQueue;
  startAccountTokenChangeObserverIfNeeded_tokenChangeObserverQueue = v2;

  v4 = BRAccountTokenChangedNotification();
  v5 = [v4 UTF8String];
  v6 = v21;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2;
  v18 = &unk_1E7A14858;
  v19 = &v20;
  v7 = startAccountTokenChangeObserverIfNeeded_tokenChangeObserverQueue;
  v8 = &v15;
  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 br_currentPersonaID];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __br_notify_register_dispatch_block_invoke;
  handler[3] = &unk_1E7A14940;
  v11 = v10;
  v25 = v11;
  v27 = v5;
  v12 = v8;
  v26 = v12;
  LODWORD(v5) = notify_register_dispatch(v5, v6 + 6, v7, handler);

  if (v5)
  {
    v13 = brc_bread_crumbs("+[BRAccount(BRPrivate) startAccountTokenChangeObserverIfNeeded]_block_invoke", 302);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, 0x90u))
    {
      __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_cold_1();
    }
  }

  _Block_object_dispose(&v20, 8);
}

+ (void)startAccountTokenChangeObserverIfNeeded
{
  if (startAccountTokenChangeObserverIfNeeded_onceToken != -1)
  {
    +[BRAccount(BRPrivate) startAccountTokenChangeObserverIfNeeded];
  }
}

- (BRAccount)init
{
  v7.receiver = self;
  v7.super_class = BRAccount;
  v2 = [(BRAccount *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DF068] sharedManager];
    v4 = [v3 br_currentPersonaID];
    personaID = v2->_personaID;
    v2->_personaID = v4;
  }

  return v2;
}

+ (BOOL)_refreshCurrentLoggedInAccountForcingRefresh:(BOOL)a3 personaID:(id)a4 error:(id *)a5
{
  v6 = a3;
  v61 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v9 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 70);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
    }

    v11 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't refresh current logged in account from the daemon"];
    if (v11)
    {
      v12 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 70);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        v46 = "(passed to caller)";
        *buf = 136315906;
        v54 = "+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]";
        v55 = 2080;
        if (!a5)
        {
          v46 = "(ignored by caller)";
        }

        v56 = v46;
        v57 = 2112;
        v58 = v11;
        v59 = 2112;
        v60 = v12;
        _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a5)
    {
      v14 = v11;
      v15 = 0;
      *a5 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!currentLoggedInAccountOrNullByPersonaID)
    {
      v16 = objc_opt_new();
      v17 = currentLoggedInAccountOrNullByPersonaID;
      currentLoggedInAccountOrNullByPersonaID = v16;
    }

    if (a5)
    {
      *a5 = 0;
    }

    [a1 startAccountTokenChangeObserverIfNeeded];
    v11 = [currentLoggedInAccountOrNullByPersonaID objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    if (!v11 || v6)
    {
      v47 = brc_monotonic_time_now();
      v20 = [MEMORY[0x1E696AAE8] mainBundle];
      v21 = [v20 bundleIdentifier];
      v50 = v20;
      v22 = [v20 infoDictionary];
      v23 = [v22 objectForKeyedSubscript:@"CFBundleShortVersionString"];

      v24 = [[BRDaemonConnection alloc] initUsingUserLocalDaemonTokenService];
      v25 = [v24 newSyncTokenProxy];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __74__BRAccount__refreshCurrentLoggedInAccountForcingRefresh_personaID_error___block_invoke;
      v51[3] = &unk_1E7A147E0;
      v26 = v25;
      v52 = v26;
      v48 = v23;
      v49 = v21;
      [v26 currentAccountCopyTokenWithBundleID:v21 version:v23 reply:v51];
      v27 = [v26 result];
      if (a5)
      {
        *a5 = [v26 error];
      }

      v28 = [v26 error];

      if (v28)
      {
        v29 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 116);
        v30 = brc_default_log(0, 0);
        if (os_log_type_enabled(v30, 0x90u))
        {
          [BRAccount _refreshCurrentLoggedInAccountForcingRefresh:v26 personaID:v29 error:v30];
        }
      }

      [v24 invalidate];
      v31 = [(BRAccount *)v19 perAppAccountIdentifier];
      if (v27 == v31 || ([v27 isEqual:v31] & 1) != 0)
      {
        if (!v11)
        {
          v32 = [MEMORY[0x1E695DFB0] null];
          [currentLoggedInAccountOrNullByPersonaID setObject:v32 forKeyedSubscript:v8];
        }

        v15 = 0;
      }

      else
      {
        v33 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 129);
        v34 = brc_default_log(1, 0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v54 = v31;
          v55 = 2112;
          v56 = v27;
          v57 = 2112;
          v58 = v33;
          _os_log_debug_impl(&dword_1AE2A9000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] got an account change (previous token %@, new token %@)%@", buf, 0x20u);
        }

        v35 = +[BRDaemonConnection defaultConnectionIfExists];
        v36 = [v35 remoteObjectProxy];
        [v36 updatePrivilegesDescriptor];

        v37 = +[BRDaemonConnection secondaryConnectionIfExists];
        v38 = [v37 remoteObjectProxy];
        [v38 updatePrivilegesDescriptor];

        if (v27)
        {
          v39 = objc_alloc_init(BRAccount);

          [(BRAccount *)v39 setPerAppAccountIdentifier:v27];
          [currentLoggedInAccountOrNullByPersonaID setObject:v39 forKeyedSubscript:v8];
          v15 = 1;
          v19 = v39;
        }

        else
        {
          v40 = [MEMORY[0x1E695DFB0] null];
          [currentLoggedInAccountOrNullByPersonaID setObject:v40 forKeyedSubscript:v8];

          v15 = 1;
        }
      }

      v41 = brc_monotonic_time_now();
      if (brc_monotonic_time_diff_to_interval(v41 - v47) <= 0.5 || qos_class_self() < QOS_CLASS_USER_INITIATED)
      {
        v42 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 150);
        v43 = brc_default_log(1, 0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
        }
      }

      else
      {
        v42 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 148);
        v43 = brc_default_log(0, 0);
        if (os_log_type_enabled(v43, 0x90u))
        {
          +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v44 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)currentCachedLoggedInAccountWithError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v5 = brc_bread_crumbs("+[BRAccount currentCachedLoggedInAccountWithError:]", 160);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount currentCachedLoggedInAccountWithError:];
    }

    v7 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't get current cached logged in account from the daemon"];
    if (v7)
    {
      v8 = brc_bread_crumbs("+[BRAccount currentCachedLoggedInAccountWithError:]", 160);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v18 = "(passed to caller)";
        v19 = 136315906;
        v20 = "+[BRAccount currentCachedLoggedInAccountWithError:]";
        v21 = 2080;
        if (!a3)
        {
          v18 = "(ignored by caller)";
        }

        v22 = v18;
        v23 = 2112;
        v24 = v7;
        v25 = 2112;
        v26 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v19, 0x2Au);
      }
    }

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }

    v11 = 0;
  }

  else
  {
    v12 = a1;
    objc_sync_enter(v12);
    v13 = [MEMORY[0x1E69DF068] sharedManager];
    v14 = [v13 br_currentPersonaID];

    [v12 _refreshCurrentLoggedInAccountForcingRefresh:0 personaID:v14 error:a3];
    v15 = [currentLoggedInAccountOrNullByPersonaID objectForKeyedSubscript:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

    objc_sync_exit(v12);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)currentLoggedInAccountWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v5 = brc_bread_crumbs("+[BRAccount currentLoggedInAccountWithError:]", 178);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount currentLoggedInAccountWithError:];
    }

    v7 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't get current logged in account from the daemon"];
    if (v7)
    {
      v8 = brc_bread_crumbs("+[BRAccount currentLoggedInAccountWithError:]", 178);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v14 = "(passed to caller)";
        v15 = 136315906;
        v16 = "+[BRAccount currentLoggedInAccountWithError:]";
        v17 = 2080;
        if (!a3)
        {
          v14 = "(ignored by caller)";
        }

        v18 = v14;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v15, 0x2Au);
      }
    }

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }

    v11 = 0;
  }

  else
  {
    [a1 refreshCurrentLoggedInAccount];
    v11 = [a1 currentCachedLoggedInAccountWithError:a3];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (BOOL)refreshCurrentLoggedInAccountWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v5 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccountWithError:]", 189);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
    }

    v7 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't refresh current logged in account from the daemon"];
    if (v7)
    {
      v8 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccountWithError:]", 189);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v18 = "(passed to caller)";
        LODWORD(v19[0]) = 136315906;
        *(v19 + 4) = "+[BRAccount refreshCurrentLoggedInAccountWithError:]";
        WORD2(v19[1]) = 2080;
        if (!a3)
        {
          v18 = "(ignored by caller)";
        }

        *(&v19[1] + 6) = v18;
        HIWORD(v19[2]) = 2112;
        v19[3] = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", v19, 0x2Au);
      }
    }

    if (a3)
    {
      v10 = v7;
      v11 = 0;
      *a3 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v7 = a1;
    objc_sync_enter(v7);
    memset(v19, 0, 24);
    __brc_create_section(0, "+[BRAccount refreshCurrentLoggedInAccountWithError:]", 194, 0, v19);
    v12 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccountWithError:]", 194);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount refreshCurrentLoggedInAccountWithError:v19];
    }

    v14 = [MEMORY[0x1E69DF068] sharedManager];
    v15 = [v14 br_currentPersonaID];

    v11 = [v7 _refreshCurrentLoggedInAccountForcingRefresh:1 personaID:v15 error:a3];
    __brc_leave_section(v19);
    objc_sync_exit(v7);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)refreshCurrentLoggedInAccount
{
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v3 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccount]", 204);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
    }

    return 0;
  }

  else
  {

    return [a1 refreshCurrentLoggedInAccountWithError:0];
  }
}

- (BRAccount)initWithAccountID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = BRAccount;
  v6 = [(BRAccount *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountID, a3);
    v8 = [MEMORY[0x1E69DF068] sharedManager];
    v9 = [v8 br_currentPersonaID];
    personaID = v7->_personaID;
    v7->_personaID = v9;
  }

  return v7;
}

- (id)containerWithPendingChanges
{
  v40 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (containerWithPendingChanges___personaOnceToken != -1)
    {
      [BRAccount containerWithPendingChanges];
    }

    v4 = containerWithPendingChanges___personalPersona;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];

  v36 = 0;
  v8 = [v7 userPersonaUniqueString];
  v9 = v8;
  if (v8 == v4 || [(NSString *)v8 isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v35 = 0;
    v23 = [v7 copyCurrentPersonaContextWithError:&v35];
    v24 = v35;
    v25 = v36;
    v36 = v23;

    if (v24)
    {
      v26 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
      v27 = brc_default_log(0, 0);
      if (os_log_type_enabled(v27, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v10 = [v7 br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v28 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
      v29 = brc_default_log(0, 0);
      if (os_log_type_enabled(v29, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        *&buf[4] = personaID;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v39 = v28;
        _os_log_error_impl(&dword_1AE2A9000, v29, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_35:
    }
  }

  else
  {
    if (v5 && ([v7 isDataSeparatedPersona] & 1) == 0)
    {
      v28 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
      v29 = brc_default_log(1, 0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v10 = 0;
      goto LABEL_35;
    }

    v31 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
    v32 = brc_default_log(1, 0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  memset(buf, 0, sizeof(buf));
  __brc_create_section(0, "[BRAccount containerWithPendingChanges]", 237, 0, buf);
  v11 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 237);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(BRAccount *)buf containerWithPendingChanges];
  }

  v13 = +[BRDaemonConnection defaultConnection];
  v14 = [v13 newSyncProxy];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __40__BRAccount_containerWithPendingChanges__block_invoke_46;
  v33[3] = &unk_1E7A14808;
  v15 = v14;
  v34 = v15;
  [v15 getContainersNeedingUpload:v33];
  v16 = [v15 result];
  v17 = [v15 error];

  if (v17)
  {
    v18 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 244);
    v19 = brc_default_log(0, 0);
    if (os_log_type_enabled(v19, 0x90u))
    {
      v20 = [v15 error];
      [(BRAccount *)v20 containerWithPendingChanges];
    }
  }

  __brc_leave_section(buf);
  _BRRestorePersona(&v36);

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

void __40__BRAccount_containerWithPendingChanges__block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = containerWithPendingChanges___personalPersona;
  containerWithPendingChanges___personalPersona = v0;
}

- (BOOL)iCloudDesktopSettingsChangedWithAttributes:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v7 = self->_personaID) == 0)
  {
    if (iCloudDesktopSettingsChangedWithAttributes_error____personaOnceToken != -1)
    {
      [BRAccount iCloudDesktopSettingsChangedWithAttributes:error:];
    }

    v8 = iCloudDesktopSettingsChangedWithAttributes_error____personalPersona;
    v9 = 1;
  }

  else
  {
    v8 = v7;
    v9 = 0;
  }

  v10 = [MEMORY[0x1E69DF068] sharedManager];
  v11 = [v10 currentPersona];

  v35 = 0;
  v12 = [v11 userPersonaUniqueString];
  v13 = v12;
  if (v12 == v8 || [(NSString *)v12 isEqualToString:v8])
  {
    v14 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v34 = 0;
    v22 = [v11 copyCurrentPersonaContextWithError:&v34];
    v23 = v34;
    v24 = v35;
    v35 = v22;

    if (v23)
    {
      v25 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
      v26 = brc_default_log(0, 0);
      if (os_log_type_enabled(v26, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v14 = [v11 br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v14)
    {
      v27 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
      v28 = brc_default_log(0, 0);
      if (os_log_type_enabled(v28, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v37 = personaID;
        v38 = 2112;
        v39 = v14;
        v40 = 2112;
        v41 = v27;
        _os_log_error_impl(&dword_1AE2A9000, v28, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v9 && ([v11 isDataSeparatedPersona] & 1) == 0)
    {
      v27 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
      v28 = brc_default_log(1, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v14 = 0;
      goto LABEL_29;
    }

    v30 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
    v31 = brc_default_log(1, 0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v15 = +[BRDaemonConnection defaultConnection];
  v16 = [v15 newSyncProxy];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __62__BRAccount_iCloudDesktopSettingsChangedWithAttributes_error___block_invoke_50;
  v32[3] = &unk_1E7A14830;
  v17 = v16;
  v33 = v17;
  [v17 iCloudDesktopSettingsChangedWithAttributes:v6 reply:v32];
  if (a4)
  {
    *a4 = [v17 error];
  }

  v18 = [v17 error];
  v19 = v18 == 0;

  _BRRestorePersona(&v35);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __62__BRAccount_iCloudDesktopSettingsChangedWithAttributes_error___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = iCloudDesktopSettingsChangedWithAttributes_error____personalPersona;
  iCloudDesktopSettingsChangedWithAttributes_error____personalPersona = v0;
}

void __62__BRAccount_iCloudDesktopSettingsChangedWithAttributes_error___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2 == 0;
  v5 = a2;
  v6 = [v3 numberWithInt:v4];
  [v2 setObjResult:v6 error:v5];
}

void __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2()
{
  v0 = brc_bread_crumbs("+[BRAccount(BRPrivate) startAccountTokenChangeObserverIfNeeded]_block_invoke_2", 284);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"BRAccountTokenWillChangeNotification" object:0];

  objc_autoreleasePoolPop(v2);
  v4 = objc_autoreleasePoolPush();
  if (!+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    +[BRAccount refreshCurrentLoggedInAccount];
  }

  v5 = [MEMORY[0x1E6959A48] defaultStore];
  [v5 invalidateAccountForPersonaCache];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"BRAccountTokenDidChangeNotification" object:0];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)hasOptimizeStorageWithError:(id *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v4 = self->_personaID) == 0)
  {
    if (hasOptimizeStorageWithError____personaOnceToken != -1)
    {
      [BRAccount(BRPrivate) hasOptimizeStorageWithError:];
    }

    v5 = hasOptimizeStorageWithError____personalPersona;
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];

  v38 = 0;
  v9 = [v8 userPersonaUniqueString];
  v10 = v9;
  if (v9 == v5 || [(NSString *)v9 isEqualToString:v5])
  {
    v11 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v37 = 0;
    v23 = [v8 copyCurrentPersonaContextWithError:&v37];
    v24 = v37;
    v25 = v38;
    v38 = v23;

    if (v24)
    {
      v26 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
      v27 = brc_default_log(0, 0);
      if (os_log_type_enabled(v27, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v11 = [v8 br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v11)
    {
      v28 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
      v29 = brc_default_log(0, 0);
      if (os_log_type_enabled(v29, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v40 = personaID;
        v41 = 2112;
        v42 = v11;
        v43 = 2112;
        v44 = v28;
        _os_log_error_impl(&dword_1AE2A9000, v29, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_32:
    }
  }

  else
  {
    if (v6 && ([v8 isDataSeparatedPersona] & 1) == 0)
    {
      v28 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
      v29 = brc_default_log(1, 0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v11 = 0;
      goto LABEL_32;
    }

    v31 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
    v32 = brc_default_log(1, 0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v12 = +[BRDaemonConnection defaultConnection];
  v13 = [v12 newSyncProxy];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __52__BRAccount_BRPrivate__hasOptimizeStorageWithError___block_invoke_88;
  v35[3] = &unk_1E7A14880;
  v14 = v13;
  v36 = v14;
  [v14 hasOptimizeStorageWithReply:v35];
  v15 = [v14 result];
  v16 = [v15 BOOLValue];

  v17 = [v14 error];
  if (v17)
  {
    v18 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 319);
    v19 = brc_default_log(0, 0);
    if (os_log_type_enabled(v19, 0x90u))
    {
      v33 = "(passed to caller)";
      *buf = 136315906;
      v40 = "[BRAccount(BRPrivate) hasOptimizeStorageWithError:]";
      v41 = 2080;
      if (!a3)
      {
        v33 = "(ignored by caller)";
      }

      v42 = v33;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = v18;
      _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a3)
  {
    v20 = v17;
    *a3 = v17;
  }

  _BRRestorePersona(&v38);
  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

void __52__BRAccount_BRPrivate__hasOptimizeStorageWithError___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = hasOptimizeStorageWithError____personalPersona;
  hasOptimizeStorageWithError____personalPersona = v0;
}

void __56__BRAccount_BRPrivate__setOptimizeStorageEnabled_error___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = setOptimizeStorageEnabled_error____personalPersona;
  setOptimizeStorageEnabled_error____personalPersona = v0;
}

void __56__BRAccount_BRPrivate__setOptimizeStorageEnabled_error___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBoolResult:v3 == 0 error:v3];
}

- (BOOL)getEvictableSpace:(id *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_getEvictableSpace_error_];
  if (v5)
  {
    v6 = brc_bread_crumbs("[BRAccount(BRPrivate) getEvictableSpace:error:]", 339);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v11 = "(passed to caller)";
      v12 = 136315906;
      v13 = "[BRAccount(BRPrivate) getEvictableSpace:error:]";
      v14 = 2080;
      if (!a4)
      {
        v11 = "(ignored by caller)";
      }

      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] %s: %s error: %@%@", &v12, 0x2Au);
    }
  }

  if (a4)
  {
    v8 = v5;
    *a4 = v5;
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)evictOldDocumentsWithHandler:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v5 = self->_personaID) == 0)
  {
    if (evictOldDocumentsWithHandler____personaOnceToken != -1)
    {
      [BRAccount(BRPrivate) evictOldDocumentsWithHandler:];
    }

    v6 = evictOldDocumentsWithHandler____personalPersona;
    v7 = 1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
  }

  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v9 = [v8 currentPersona];

  v33 = 0;
  v10 = [v9 userPersonaUniqueString];
  v11 = v10;
  if (v10 == v6 || [(NSString *)v10 isEqualToString:v6])
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v32 = 0;
    v18 = [v9 copyCurrentPersonaContextWithError:&v32];
    v19 = v32;
    v20 = v33;
    v33 = v18;

    if (v19)
    {
      v21 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v12 = [v9 br_generateAndRestorePersonaContextWithPersonaUniqueString:v6];

    if (v12)
    {
      v23 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
      v24 = brc_default_log(0, 0);
      if (os_log_type_enabled(v24, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v35 = personaID;
        v36 = 2112;
        v37 = v12;
        v38 = 2112;
        v39 = v23;
        _os_log_error_impl(&dword_1AE2A9000, v24, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_27:
    }
  }

  else
  {
    if (v7 && ([v9 isDataSeparatedPersona] & 1) == 0)
    {
      v23 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
      v24 = brc_default_log(1, 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v12 = 0;
      goto LABEL_27;
    }

    v26 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
    v27 = brc_default_log(1, 0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v13 = +[BRDaemonConnection defaultConnection];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_97;
  v30[3] = &unk_1E7A148D0;
  v14 = v4;
  v31 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v30];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_2;
  v28[3] = &unk_1E7A148D0;
  v16 = v14;
  v29 = v16;
  [v15 evictOldDocumentsWithReply:v28];

  _BRRestorePersona(&v33);
  v17 = *MEMORY[0x1E69E9840];
}

void __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = evictOldDocumentsWithHandler____personalPersona;
  evictOldDocumentsWithHandler____personalPersona = v0;
}

uint64_t __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_97(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)_refreshCurrentLoggedInAccountForcingRefresh:(void *)a1 personaID:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 error];
  OUTLINED_FUNCTION_2();
  v9 = 2112;
  v10 = a2;
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, a3, v6, "[ERROR] error while getting ubiquityIdentityToken: %@%@", v8);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_refreshCurrentLoggedInAccountForcingRefresh:personaID:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0(&dword_1AE2A9000, v0, v1, "[DEBUG] token fetch returned in %0.2fs%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_refreshCurrentLoggedInAccountForcingRefresh:personaID:error:.cold.3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, v0, v1, "[ERROR] Took %0.2fs to get the token%@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_refreshCurrentLoggedInAccountForcingRefresh:personaID:error:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: Can't refresh current logged in account from the daemon%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)currentCachedLoggedInAccountWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: Can't get current cached logged in account from the daemon%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)currentLoggedInAccountWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: Can't get current logged in account from the daemon%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)refreshCurrentLoggedInAccountWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v2, v3, "[DEBUG] ┏%llx refreshing current logged in account%@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)containerWithPendingChanges
{
  OUTLINED_FUNCTION_8(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, v6, v4, "[ERROR] %@%@", v5);
}

void __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] account state changed, notifying clients%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
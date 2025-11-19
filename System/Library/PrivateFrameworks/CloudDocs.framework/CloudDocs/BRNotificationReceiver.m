@interface BRNotificationReceiver
- (BRNotificationReceiver)init;
- (id)_obtainNotificationSenderFromDaemon;
- (unint64_t)pendingCount;
- (void)_invalidateAndNotify:(BOOL)a3;
- (void)_obtainNotificationSenderFromDaemon;
- (void)_receiveUpdates:(id)a3;
- (void)_signalSourceIfNeeded;
- (void)_watchUbiquitousScopes:(id)a3 bundleID:(id)a4 predicate:(id)a5;
- (void)dealloc;
- (void)dequeue:(unint64_t)a3 block:(id)a4;
- (void)disableUpdatesFromIPCBeforeStitching;
- (void)flush;
- (void)init;
- (void)invalidateAndNotify:(BOOL)a3;
- (void)networkDidChangeReachabilityStatusTo:(BOOL)a3;
- (void)receiveProgressUpdates:(id)a3 reply:(id)a4;
- (void)receiveStitchingUpdates:(id)a3;
- (void)receiveUpdates:(id)a3 reply:(id)a4;
- (void)resume;
- (void)suspend;
- (void)watchUbiquitousScopes:(id)a3 bundleID:(id)a4 predicate:(id)a5;
@end

@implementation BRNotificationReceiver

- (BRNotificationReceiver)init
{
  v38.receiver = self;
  v38.super_class = BRNotificationReceiver;
  v2 = [(BRNotificationReceiver *)&v38 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.br.notifs-receiver", v4);

    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v8 = *(v2 + 1);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create_with_target_V2("com.apple.br.notifs-receiver.ipc", v9, v8);

    v11 = *(v2 + 2);
    *(v2 + 2) = v10;

    v12 = objc_alloc_init(BRNotificationQueue);
    v13 = *(v2 + 3);
    *(v2 + 3) = v12;

    v14 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v2 + 1));
    v15 = *(v2 + 7);
    *(v2 + 7) = v14;

    if (!*(v2 + 7))
    {
      [BRNotificationReceiver init];
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = *(v2 + 13);
    *(v2 + 13) = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = *(v2 + 14);
    *(v2 + 14) = v18;

    objc_initWeak(&location, v2);
    v20 = *(v2 + 7);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __30__BRNotificationReceiver_init__block_invoke;
    v35 = &unk_1E7A15630;
    objc_copyWeak(&v36, &location);
    v21 = v20;
    v22 = &v32;
    v23 = v21;
    v24 = v22;
    v25 = v24;
    v26 = v24;
    if (brc_block_remember_persona)
    {
      v26 = brc_block_remember_persona(v24);
    }

    v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v26);
    dispatch_source_set_event_handler(v23, v27);

    *(v2 + 31) = -1;
    atomic_store(1u, v2 + 30);
    v28 = [MEMORY[0x1E69DF068] sharedManager];
    v29 = [v28 br_currentPersonaID];
    v30 = *(v2 + 18);
    *(v2 + 18) = v29;

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__BRNotificationReceiver_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[3] count];
    v2 = v8;
    if (v3)
    {
      dispatch_assert_queue_V2(v8[1]);
      v8[12] = brc_monotonic_time_now();
      [v8[6] notificationsReceiverDidReceiveNotificationsBatch:v8];
      v2 = v8;
      v4 = v8[9];
      v5 = v8[10];
      v6 = v4 >= v5;
      v7 = (v4 - v5);
      if (v6)
      {
        v8[9] = v7;
      }
    }
  }

  [v2 _signalSourceIfNeeded];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] Assertion failed: _progressObserverByID.count == 0%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (unint64_t)pendingCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__BRNotificationReceiver_pendingCount__block_invoke;
  v5[3] = &unk_1E7A15518;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__BRNotificationReceiver_pendingCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dequeue:(unint64_t)a3 block:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  dispatch_assert_queue_V2(queue);
  [(BRNotificationQueue *)self->_notifs dequeue:a3 block:v7];
}

- (id)_obtainNotificationSenderFromDaemon
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = +[BRDaemonConnection defaultConnection];
  v4 = [v3 newSyncProxy];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke;
  v24[3] = &unk_1E7A15678;
  v5 = v4;
  v25 = v5;
  v26 = self;
  [v5 getItemUpdateSenderWithReceiver:self reply:v24];
  v6 = [v5 result];
  if (v6)
  {
    objc_storeStrong(&self->_sender, v6);
    [v6 boostPriority:&__block_literal_global_19];
  }

  else
  {
    v7 = [v5 error];

    if (v7)
    {
      v8 = [v5 error];
      v9 = [v8 br_isCloudDocsErrorCode:2];

      if (v9)
      {
        v10 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]", 151);
        v11 = brc_default_log(1, 0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v10;
          _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] cannot query iCloud Drive items because we are logged out%@", buf, 0xCu);
        }
      }

      else
      {
        v10 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]", 153);
        v11 = brc_default_log(0, 0);
        if (os_log_type_enabled(v11, 0x90u))
        {
          [(BRNotificationReceiver *)v5 _obtainNotificationSenderFromDaemon];
        }
      }

      v14 = [v5 error];
      v15 = [v14 domain];
      v16 = [v15 isEqualToString:@"BRCloudDocsErrorDomain"];

      if (v16)
      {
        [(BRNotificationReceiverDelegate *)self->_delegate notificationsReceiverDidFinishGathering:self];
      }

      +[BRAccount startAccountTokenChangeObserverIfNeeded];
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22;
      v23[3] = &unk_1E7A156A0;
      v23[4] = self;
      v18 = [v17 addObserverForName:@"BRAccountTokenDidChangeNotification" object:0 queue:0 usingBlock:v23];
      accountTokenDidChangeNotificationObserver = self->_accountTokenDidChangeNotificationObserver;
      self->_accountTokenDidChangeNotificationObserver = v18;
    }

    else
    {
      v12 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]", 177);
      v13 = brc_default_log(1, 0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [BRNotificationReceiver _obtainNotificationSenderFromDaemon];
      }
    }
  }

  v20 = v6;

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 113);
  v11 = brc_default_log(1, 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_cold_1();
  }

  [v7 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_14;
  v14[3] = &unk_1E7A14830;
  v12 = *(a1 + 32);
  v14[4] = *(a1 + 40);
  v13 = [v9 remoteObjectProxyWithErrorHandler:v14];

  [v12 setObjResult:v13 error:v8];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v5 objectForKey:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  if (BRCurrentProcessIsOwningContainerWithID(v4))
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [BRContainer versionOfBundle:v7 changedFromVersion:v6];

    if (v8)
    {
      v9 = +[BRDaemonConnection defaultConnection];
      v10 = [v9 newSyncProxy];

      [v10 updateContainerMetadataForID:v4];
    }
  }

  v11 = [v5 objectForKey:@"extension"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 bytes];
    if (sandbox_extension_consume() < 0)
    {
      v12 = *__error();
      v13 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 133);
      v14 = brc_default_log(0, 0);
      if (os_log_type_enabled(v14, 0x90u))
      {
        v16 = 138412802;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", &v16, 0x1Cu);
      }

      *__error() = v12;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_14(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  memset(v8, 0, sizeof(v8));
  __brc_create_section(0, "[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 139, 0, v8);
  v4 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 139);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v8[0];
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ got error %@%@", buf, 0x2Au);
  }

  [*(a1 + 32) invalidate];
  __brc_leave_section(v8);

  v6 = *MEMORY[0x1E69E9840];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(*(a1 + 32) + 144) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v4 = *(*(a1 + 32) + 144)) == 0)
  {
    if (_block_invoke___personaOnceToken_1 != -1)
    {
      __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22_cold_1();
    }

    v5 = _block_invoke___personalPersona_1;
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];

  v26 = 0;
  v9 = [v8 userPersonaUniqueString];
  v10 = v9;
  if (v9 == v5 || ([v9 isEqualToString:v5] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v25 = 0;
    v15 = [v8 copyCurrentPersonaContextWithError:&v25];
    v16 = v25;
    v17 = v26;
    v26 = v15;

    if (v16)
    {
      v18 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 172);
      v19 = brc_default_log(0, 0);
      if (os_log_type_enabled(v19, 0x90u))
      {
        __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22_cold_4();
      }
    }

    v11 = [v8 br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v11)
    {
      v20 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 172);
      v21 = brc_default_log(0, 0);
      if (os_log_type_enabled(v21, 0x90u))
      {
        v22 = *(*(a1 + 32) + 144);
        *buf = 138412802;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v28 = v20;
        _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v6 && ([v8 isDataSeparatedPersona] & 1) == 0)
    {
      v20 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 172);
      v21 = brc_default_log(1, 0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v11 = 0;
      goto LABEL_29;
    }

    v23 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 172);
    v24 = brc_default_log(1, 0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  memset(buf, 0, sizeof(buf));
  __brc_create_section(0, "[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 173, 0, buf);
  v12 = brc_bread_crumbs("[BRNotificationReceiver _obtainNotificationSenderFromDaemon]_block_invoke", 173);
  v13 = brc_default_log(1, 0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22_cold_5(buf, v12, v13);
  }

  [*(a1 + 32) invalidate];
  __brc_leave_section(buf);

  _BRRestorePersona(&v26);
  v14 = *MEMORY[0x1E69E9840];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_2()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_1;
  _block_invoke___personalPersona_1 = v0;
}

- (void)_watchUbiquitousScopes:(id)a3 bundleID:(id)a4 predicate:(id)a5
{
  v118 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v72 = a4;
  v73 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v71 = v8;
  if (!self->_sender)
  {
    v70 = self;
    [(BRNotificationReceiver *)self resume];
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v108 objects:v112 count:16];
    if (v10)
    {
      v74 = 0;
      v75 = 0;
      oslog = 0;
      v79 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *v109;
      v14 = *MEMORY[0x1E696A638];
      v15 = *MEMORY[0x1E696A640];
      v16 = *MEMORY[0x1E696A610];
      v77 = *MEMORY[0x1E696A628];
      do
      {
        v17 = 0;
        do
        {
          if (*v109 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v108 + 1) + 8 * v17);
          if ([v18 isEqual:v14])
          {
            v12 = 1;
          }

          else if ([v18 isEqual:v15])
          {
            v11 = 1;
          }

          else if ([v18 isEqual:v16] & 1) != 0 || (objc_msgSend(v18, "isEqual:", v77))
          {
            v79 = 1;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (oslog)
              {
                v25 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]", 234);
                v26 = brc_default_log(0, 0);
                if (os_log_type_enabled(v26, 0x90u))
                {
                  [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
                }

LABEL_41:

                goto LABEL_111;
              }

              oslog = v18;
              v74 = 10;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v25 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]", 248);
                v26 = brc_default_log(0, 0);
                if (os_log_type_enabled(v26, 0x90u))
                {
                  [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
                }

                goto LABEL_41;
              }

              v19 = v75;
              if (!v75)
              {
                v19 = [MEMORY[0x1E695DF70] array];
              }

              v75 = v19;
              [v19 addObject:v18];
            }
          }

          ++v17;
        }

        while (v10 != v17);
        v20 = [v9 countByEnumeratingWithState:&v108 objects:v112 count:16];
        v10 = v20;
      }

      while (v20);
    }

    else
    {
      v74 = 0;
      v75 = 0;
      oslog = 0;
      v79 = 0;
      v11 = 0;
      v12 = 0;
    }

    if ((dyld_get_active_platform() & 0xFFFFFFFB) == 2 && (dyld_program_sdk_at_least() & 1) == 0 && !(v79 & 1 | (((v12 | v11) & 1) == 0)))
    {
      v21 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]", 259);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
      }

      v79 = 1;
    }

    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__6;
    v106 = __Block_byref_object_dispose__6;
    v107 = 0;
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke;
    v101[3] = &unk_1E7A14830;
    v101[4] = v70;
    v78 = MEMORY[0x1B26FEA90](v101);
    if (v11 & v12)
    {
      v23 = [v73 br_watchedURL];
      if (v23)
      {
        v24 = 9;
      }

      else
      {
        v23 = [v73 br_urlWithWatchedChildren];
        if (!v23)
        {
          goto LABEL_49;
        }

        v24 = 10;
      }

      v74 = v24;
      if (oslog)
      {
        v27 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]", 295);
        v28 = brc_default_log(0, 0);
        if (os_log_type_enabled(v28, 0x90u))
        {
          [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
        }

        goto LABEL_110;
      }

      oslog = v23;
    }

LABEL_49:
    if (v11)
    {
      v23 = [v73 extractSearchTermFromPredicate];
    }

    else
    {
      v23 = 0;
    }

    if (oslog)
    {
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_32;
      v96[3] = &unk_1E7A156C8;
      v99 = &v102;
      v97[0] = oslog;
      v97[1] = v70;
      v100 = v74;
      v98 = v78;
      BRPerformWithPersonaAndErrorForURLIfAble(v97[0], v96);

      v29 = v97;
LABEL_104:

LABEL_105:
      if (v70->_sender)
      {
        v88 = 0;
        v89 = &v88;
        v90 = 0x2020000000;
        v91 = 0;
        v53 = BRNotificationNameForServerAvailabilityChanges();
        v54 = v53;
        v55 = [v53 UTF8String];
        v56 = v89;
        queue = v70->_queue;
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_37;
        v84[3] = &unk_1E7A156F0;
        v87 = &v88;
        v58 = v53;
        v85 = v58;
        v86 = v70;
        v59 = queue;
        v60 = v84;
        v61 = [MEMORY[0x1E69DF068] sharedManager];
        v62 = [v61 br_currentPersonaID];

        *handler = MEMORY[0x1E69E9820];
        *&handler[8] = 3221225472;
        *&handler[16] = __br_notify_register_dispatch_block_invoke_4;
        v114 = &unk_1E7A14940;
        v63 = v62;
        v115 = v63;
        v117 = v55;
        v64 = v60;
        v116 = v64;
        notify_register_dispatch(v55, v56 + 6, v59, handler);

        v70->_networkReachabilityToken = v89[6];
        v65 = v70->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_2;
        block[3] = &unk_1E7A15718;
        v82 = v70;
        v83 = &v88;
        v81 = v58;
        v66 = v58;
        dispatch_async(v65, block);

        _Block_object_dispose(&v88, 8);
      }

      else
      {
        v67 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]", 380);
        v68 = brc_default_log(1, 0);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *handler = 138412546;
          *&handler[4] = v9;
          *&handler[12] = 2112;
          *&handler[14] = v67;
          _os_log_impl(&dword_1AE2A9000, v68, OS_LOG_TYPE_DEFAULT, "[WARNING] This NSMetadataQuery did not watch anything (scopes: %@)%@", handler, 0x16u);
        }
      }

      goto LABEL_110;
    }

    if ([v23 length])
    {
      v30 = [(BRNotificationReceiver *)v70 _obtainNotificationSenderFromDaemon];
      v31 = v103[5];
      v103[5] = v30;

      if (v103[5])
      {
        active_platform = dyld_get_active_platform();
        if ((active_platform & 0xFFFFFFFB) == 2 || active_platform == 1 || active_platform == 11)
        {
          if (!dyld_program_sdk_at_least())
          {
            v38 = 1;
            goto LABEL_75;
          }
        }

        else
        {
          syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
        }

        v38 = 9;
LABEL_75:
        v39 = dyld_get_active_platform();
        if ((v39 & 0xFFFFFFFB) == 2 || v39 == 1 || v39 == 11)
        {
          v40 = dyld_program_sdk_at_least();
        }

        else
        {
          syslog(5, "Unknown platform linking against CloudDocs framework %d", v39);
          v40 = 1;
        }

        v41 = [v73 isFolderOnlyPredicate];
        v42 = v38 | 0x10;
        if (!v40)
        {
          v42 = v38;
        }

        if (v41)
        {
          v43 = v42 | 0x40;
        }

        else
        {
          v43 = v42;
        }

        v44 = v103[5];
        v45 = v94;
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_35;
        v94[3] = &unk_1E7A15168;
        v94[4] = v9;
        v95 = v78;
        [v44 watchItemsNamesPrefixedBy:v23 inScopes:v43 appLibraryIDs:v75 gatherReply:v94];

LABEL_103:
        v29 = (v45 + 4);
        goto LABEL_104;
      }

LABEL_110:

      _Block_object_dispose(&v102, 8);
      goto LABEL_111;
    }

    if (((v11 | v12 | v79) & 1) == 0)
    {
      goto LABEL_105;
    }

    v33 = [(BRNotificationReceiver *)v70 _obtainNotificationSenderFromDaemon];
    v34 = v103[5];
    v103[5] = v33;

    if (!v103[5])
    {
      goto LABEL_110;
    }

    v35 = v11;
    if (v12)
    {
      v35 = v11 & 1 | 2;
    }

    if (v79)
    {
      v36 = v35 | 4;
    }

    else
    {
      v36 = v35;
    }

    v37 = dyld_get_active_platform();
    if ((v37 & 0xFFFFFFFB) == 2 || v37 == 1 || v37 == 11)
    {
      if (!dyld_program_sdk_at_least())
      {
LABEL_90:
        v46 = dyld_get_active_platform();
        if ((v46 & 0xFFFFFFFB) == 2 || v46 == 1 || v46 == 11)
        {
          v47 = dyld_program_sdk_at_least();
        }

        else
        {
          syslog(5, "Unknown platform linking against CloudDocs framework %d", v46);
          v47 = 1;
        }

        v48 = [v73 isFolderOnlyPredicate];
        v49 = v36 | 0x10;
        if (!v47)
        {
          v49 = v36;
        }

        if (v48)
        {
          v50 = v49 | 0x40;
        }

        else
        {
          v50 = v49;
        }

        v45 = v92;
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_36;
        v92[3] = &unk_1E7A15168;
        v92[4] = v9;
        v93 = v78;
        v51 = MEMORY[0x1B26FEA90](v92);
        v52 = v103[5];
        if (v75)
        {
          [v52 watchScopes:v50 appLibraryIDs:v75 gatherReply:v51];
        }

        else
        {
          [v52 watchScopes:v50 gatherReply:v51];
        }

        goto LABEL_103;
      }
    }

    else
    {
      syslog(5, "Unknown platform linking against CloudDocs framework %d", v37);
    }

    v36 |= 8u;
    goto LABEL_90;
  }

  v75 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]", 198);
  oslog = brc_default_log(0, 0);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
  }

LABEL_111:

  v69 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 269);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] gathering failed: %@%@", buf, 0x16u);
    }
  }

  else
  {
    v4 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 271);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_cold_1();
    }
  }

  v6 = [v3 br_isPOSIXErrorCode:4];
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 invalidate];
  }

  else
  {
    v8 = v7[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_31;
    block[3] = &unk_1E7A14798;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_32(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  if (v8)
  {
    v9 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 308);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_32_cold_1();
    }
  }

  if ([*(a1 + 32) br_isInSyncedLocation])
  {
    if (v7)
    {
      v11 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 316);
      v12 = brc_default_log(1, 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_32_cold_2();
      }
    }

    v13 = [*(a1 + 40) _obtainNotificationSenderFromDaemon];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(*(*(a1 + 56) + 8) + 40);
    v17 = *(a1 + 32);
    v18 = *(a1 + 64);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_33;
    v19[3] = &unk_1E7A15168;
    v20 = v17;
    v21 = *(a1 + 48);
    [v16 watchItemAtURL:v20 options:v18 gatherReply:v19];
  }
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_33(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 br_isPOSIXErrorCode:4])
  {
    v4 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 324);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] The gathering phase for children of '%@' failed: %@%@", &v8, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_35(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 br_isPOSIXErrorCode:4])
  {
    v4 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 343);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] The gathering phase for scopes %@ failed: %@%@", &v8, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_36(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 br_isPOSIXErrorCode:4])
  {
    v4 = brc_bread_crumbs("[BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:]_block_invoke", 368);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] The gathering phase for scopes %@ failed: %@%@", &v8, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_37(uint64_t result, int a2)
{
  if (*(*(*(result + 48) + 8) + 24) == a2)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = 1;
    brc_notify_get_state(a2, v5, [*(result + 32) UTF8String]);
    return [*(v4 + 40) networkDidChangeReachabilityStatusTo:v5[0] != 0];
  }

  return result;
}

uint64_t __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_2(uint64_t a1)
{
  v3 = 1;
  brc_notify_get_state(*(*(*(a1 + 48) + 8) + 24), &v3, [*(a1 + 32) UTF8String]);
  return [*(a1 + 40) networkDidChangeReachabilityStatusTo:v3 != 0];
}

- (void)watchUbiquitousScopes:(id)a3 bundleID:(id)a4 predicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__BRNotificationReceiver_watchUbiquitousScopes_bundleID_predicate___block_invoke;
  v15[3] = &unk_1E7A15740;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)suspend
{
  v15 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(&self->_suspendCount, 1u);
  if (!add)
  {
    dispatch_suspend(self->_source);
  }

  v4 = brc_bread_crumbs("[BRNotificationReceiver suspend]", 420);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138413058;
    v8 = self;
    v9 = 1024;
    v10 = add;
    v11 = 1024;
    v12 = add + 1;
    v13 = 2112;
    v14 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: suspended (%d->%d)%@", &v7, 0x22u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRNotificationReceiver resume]", 428);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: suspendCount >= 0%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)flush
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__BRNotificationReceiver_flush__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_sync(queue, block);
  dispatch_sync(self->_queue, &__block_literal_global_40);
}

- (void)_invalidateAndNotify:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_accountTokenDidChangeNotificationObserver)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self->_accountTokenDidChangeNotificationObserver];

    accountTokenDidChangeNotificationObserver = self->_accountTokenDidChangeNotificationObserver;
    self->_accountTokenDidChangeNotificationObserver = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(NSMutableDictionary *)self->_progressObserverByID allValues];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v22 + 1) + 8 * v11++) stop];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->_progressObserverByID removeAllObjects];
  if (!self->_isInvalidated)
  {
    networkReachabilityToken = self->_networkReachabilityToken;
    if (networkReachabilityToken != -1)
    {
      notify_cancel(networkReachabilityToken);
    }

    [(BRItemNotificationSending *)self->_sender invalidate];
    sender = self->_sender;
    self->_sender = 0;

    self->_isInvalidated = 1;
    v14 = self->_delegate;
    [(BRNotificationReceiver *)self setDelegate:0];
    if (v3)
    {
      ipcQueue = self->_ipcQueue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __47__BRNotificationReceiver__invalidateAndNotify___block_invoke;
      v19[3] = &unk_1E7A14A08;
      v20 = v14;
      v21 = self;
      dispatch_async(ipcQueue, v19);
    }

    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v17 = self->_timer;
      self->_timer = 0;
    }

    dispatch_source_cancel(self->_source);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)invalidateAndNotify:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_isInvalidated)
  {
    memset(v11, 0, sizeof(v11));
    __brc_create_section(0, "[BRNotificationReceiver invalidateAndNotify:]", 493, 0, v11);
    v5 = brc_bread_crumbs("[BRNotificationReceiver invalidateAndNotify:]", 493);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v13 = v11[0];
      v14 = 2112;
      v15 = self;
      v16 = 2112;
      v17 = v5;
      _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx invalidating notifications from %@%@", buf, 0x20u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__BRNotificationReceiver_invalidateAndNotify___block_invoke;
    block[3] = &unk_1E7A15768;
    block[4] = self;
    v10 = a3;
    dispatch_sync(queue, block);
    __brc_leave_section(v11);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_signalSourceIfNeeded
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] %@ notify delegate now%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __47__BRNotificationReceiver__signalSourceIfNeeded__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  __brc_create_section(0, "[BRNotificationReceiver _signalSourceIfNeeded]_block_invoke", 545, 0, v10);
  v2 = brc_bread_crumbs("[BRNotificationReceiver _signalSourceIfNeeded]_block_invoke", 545);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    *buf = 134218498;
    v12 = v10[0];
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ notification timer fired%@", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  if (*(v4 + 72) < v5)
  {
    *(v4 + 72) = v5;
    v4 = *(a1 + 32);
  }

  if ([*(v4 + 24) count])
  {
    dispatch_source_merge_data(*(*(a1 + 32) + 56), 1uLL);
  }

  dispatch_source_cancel(*(*(a1 + 32) + 64));
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;

  __brc_leave_section(v10);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_receiveUpdates:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isInvalidated)
  {
    isNetworkReachable = self->_isNetworkReachable;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (!v6)
    {
      goto LABEL_34;
    }

    v7 = v6;
    v8 = *v28;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 fileObjectID];
        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_itemInTransferByID objectForKey:v11];
          if (!v12 || ![v10 isDead] || objc_msgSend(v10, "canMerge:", v12))
          {
            if ([v10 isInTransfer])
            {
              if (!isNetworkReachable)
              {
                [v10 setIsNetworkOffline:1];
              }

              if (v12)
              {
                [v12 merge:v10];
              }

              else
              {
                itemInTransferByID = self->_itemInTransferByID;
                v15 = [v10 copy];
                [(NSMutableDictionary *)itemInTransferByID setObject:v15 forKey:v11];
              }
            }

            else
            {
              [v10 setIsNetworkOffline:0];
              [(NSMutableDictionary *)self->_itemInTransferByID removeObjectForKey:v11];
            }

            v16 = [v10 url];
            if (v16)
            {
              v17 = v16;
              if ([v10 isUploadActive])
              {

LABEL_25:
                v19 = [(NSMutableDictionary *)self->_progressObserverByID objectForKey:v11];
                if (v19)
                {
                  v20 = v19;
                  v21 = [(BRQueryItemProgressObserver *)v19 item];
                  [v21 merge:v10];
                }

                else
                {
                  v20 = [[BRQueryItemProgressObserver alloc] initWithItem:v10];
                  [(BRQueryItemProgressObserver *)v20 setQueue:self->_queue];
                  v26[0] = MEMORY[0x1E69E9820];
                  v26[1] = 3221225472;
                  v26[2] = __42__BRNotificationReceiver__receiveUpdates___block_invoke;
                  v26[3] = &unk_1E7A15790;
                  v26[4] = self;
                  [(BRQueryItemProgressObserver *)v20 setProgressHandler:v26];
                  [(NSMutableDictionary *)self->_progressObserverByID setObject:v20 forKey:v11];
                  [(BRQueryItemProgressObserver *)v20 start];
                }

LABEL_30:

                goto LABEL_31;
              }

              v18 = [v10 isDownloadActive];

              if (v18)
              {
                goto LABEL_25;
              }
            }

            v22 = [(NSMutableDictionary *)self->_progressObserverByID objectForKey:v11];
            if (v22)
            {
              v20 = v22;
              [(BRQueryItemProgressObserver *)v22 stop];
              [(NSMutableDictionary *)self->_progressObserverByID removeObjectForKey:v11];
              goto LABEL_30;
            }

LABEL_31:
            [(BRNotificationQueue *)self->_notifs addNotification:v10 asDead:0];
          }
        }

        else
        {
          v12 = brc_bread_crumbs("[BRNotificationReceiver _receiveUpdates:]", 576);
          v13 = brc_default_log(0, 0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v32 = v12;
            _os_log_fault_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: we should always have a fileObjectID%@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (!v7)
      {
LABEL_34:

        self->_receivedChanges += [v5 count];
        [(BRNotificationReceiver *)self _signalSourceIfNeeded];
        v4 = v24;
        break;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __42__BRNotificationReceiver__receiveUpdates___block_invoke(uint64_t result, void *a2)
{
  v3 = *(result + 32);
  if ((*(v3 + 129) & 1) == 0)
  {
    v4 = result;
    v5 = *(v3 + 24);
    v6 = [a2 copy];
    [v5 addNotification:v6 asDead:0];

    ++*(*(v4 + 32) + 72);
    v7 = *(v4 + 32);

    return [v7 _signalSourceIfNeeded];
  }

  return result;
}

- (void)receiveUpdates:(id)a3 reply:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRNotificationReceiver receiveUpdates:reply:]", 643, 0, v17);
  v8 = brc_bread_crumbs("[BRNotificationReceiver receiveUpdates:reply:]", 643);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v19 = v17[0];
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx receiving %@%@", buf, 0x20u);
  }

  ipcQueue = self->_ipcQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__BRNotificationReceiver_receiveUpdates_reply___block_invoke;
  v14[3] = &unk_1E7A157B8;
  v14[4] = self;
  v11 = v7;
  v16 = v11;
  v12 = v6;
  v15 = v12;
  dispatch_async_with_logs(ipcQueue, v14);

  __brc_leave_section(v17);
  v13 = *MEMORY[0x1E69E9840];
}

void __47__BRNotificationReceiver_receiveUpdates_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if (v3[129] == 1)
  {
    v4 = brc_bread_crumbs("[BRNotificationReceiver receiveUpdates:reply:]_block_invoke", 647);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __47__BRNotificationReceiver_receiveUpdates_reply___block_invoke_cold_1();
    }

    (*(a1[6] + 16))();
    objc_autoreleasePoolPop(v2);
  }

  else
  {
    [v3 _receiveUpdates:a1[5]];
    objc_autoreleasePoolPop(v2);
    v6 = *(a1[6] + 16);

    v6();
  }
}

- (void)receiveProgressUpdates:(id)a3 reply:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRNotificationReceiver receiveProgressUpdates:reply:]", 662, 0, v17);
  v8 = brc_bread_crumbs("[BRNotificationReceiver receiveProgressUpdates:reply:]", 662);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v19 = v17[0];
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx receiving progress updates %@%@", buf, 0x20u);
  }

  ipcQueue = self->_ipcQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__BRNotificationReceiver_receiveProgressUpdates_reply___block_invoke;
  v14[3] = &unk_1E7A157B8;
  v14[4] = self;
  v11 = v7;
  v16 = v11;
  v12 = v6;
  v15 = v12;
  dispatch_async_with_logs(ipcQueue, v14);

  __brc_leave_section(v17);
  v13 = *MEMORY[0x1E69E9840];
}

void __55__BRNotificationReceiver_receiveProgressUpdates_reply___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 129) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);
    v4 = *MEMORY[0x1E69E9840];

    v3();
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = *(*(a1 + 32) + 112);
          v13 = [v11 folderID];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v14 mergeProgressUpdate:v11];
            v15 = [v14 copy];
            [v5 addObject:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) _receiveUpdates:v5];
    (*(*(a1 + 48) + 16))();

    v16 = *MEMORY[0x1E69E9840];
  }
}

- (void)networkDidChangeReachabilityStatusTo:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  memset(v22, 0, sizeof(v22));
  __brc_create_section(0, "[BRNotificationReceiver networkDidChangeReachabilityStatusTo:]", 690, 0, v22);
  v5 = brc_bread_crumbs("[BRNotificationReceiver networkDidChangeReachabilityStatusTo:]", 690);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v25 = v22[0];
    if (v3)
    {
      v17 = "reachable";
    }

    else
    {
      v17 = "not reachable";
    }

    v26 = 2080;
    v27 = v17;
    v28 = 2112;
    v29 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx network is %s%@", buf, 0x20u);
  }

  self->_isNetworkReachable = v3;
  if (!self->_isInvalidated)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    v8 = [(NSMutableDictionary *)self->_itemInTransferByID allValues];
    v9 = [v7 initWithArray:v8 copyItems:1];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v18 + 1) + 8 * v13++) setIsNetworkOffline:{!v3, v18}];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    v14 = brc_bread_crumbs("[BRNotificationReceiver networkDidChangeReachabilityStatusTo:]", 703);
    v15 = brc_default_log(1, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRNotificationReceiver networkDidChangeReachabilityStatusTo:];
    }

    [(BRNotificationReceiver *)self _receiveUpdates:v10];
  }

  __brc_leave_section(v22);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)receiveStitchingUpdates:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__BRNotificationReceiver_receiveStitchingUpdates___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_with_logs(queue, v7);
}

- (void)disableUpdatesFromIPCBeforeStitching
{
  dispatch_suspend(self->_ipcQueue);
  queue = self->_queue;

  dispatch_sync(queue, &__block_literal_global_47);
}

- (void)init
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRNotificationReceiver init]", 47);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: _source%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_obtainNotificationSenderFromDaemon
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] not iCloud Drive items to query%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] received %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v0, v1, "[ERROR] won't restore persona: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __61__BRNotificationReceiver__obtainNotificationSenderFromDaemon__block_invoke_22_cold_5(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, a2, a3, "[DEBUG] ┏%llx received token change notification, reloading%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_watchUbiquitousScopes:bundleID:predicate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] API MISUSE: It's not allowed to call -watchUbiquitousScopes:predicate: twice%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_watchUbiquitousScopes:bundleID:predicate:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE2A9000, v0, v1, "[ERROR] Unable to understand scope: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_watchUbiquitousScopes:bundleID:predicate:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE2A9000, v0, 0x90u, "[ERROR] cannot pass more than one URL in the scopes%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_watchUbiquitousScopes:bundleID:predicate:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] forcing external documents even if not specified%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] gathering completed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_32_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: Couldn't adopt persona in NSMDQ but falling back to daemon%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__BRNotificationReceiver__watchUbiquitousScopes_bundleID_predicate___block_invoke_32_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] Using persona ID for NSMDQ %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __47__BRNotificationReceiver_receiveUpdates_reply___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] skiping update process as we were invalidated%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)networkDidChangeReachabilityStatusTo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] updating items: %@%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end
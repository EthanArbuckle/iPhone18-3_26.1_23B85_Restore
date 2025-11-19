@interface DEExtension
- (BOOL)checkAndTeardown;
- (BOOL)isLoggingEnabled;
- (BOOL)requiresDataClassBAccessToRun;
- (DEExtension)initWithNSExtension:(id)a3;
- (OS_dispatch_queue)serialQueue;
- (id)_fileContentsFromPlistWithKey:(id)a3 localization:(id)a4;
- (id)_localizedStringFromPlistWithKey:(id)a3 localization:(id)a4;
- (id)_localizedTextFromLocalizedStringKey:(id)a3 fallbackFileContentsKey:(id)a4 localization:(id)a5;
- (id)localizedCustomerConsentTextWithLocalization:(id)a3;
- (id)loggingProfileURLsFromExtension;
- (void)accessBundleWithSynchronousHandler:(id)a3;
- (void)annotatedAttachmentsForParameters:(id)a3 andHandler:(id)a4;
- (void)attachmentListWithHandler:(id)a3;
- (void)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4 andHandler:(id)a5;
- (void)createExtensionHostContextCompletion:(id)a3;
- (void)dealloc;
- (void)endUsingExtension;
- (void)installLoggingProfileWithSessionID:(id)a3;
- (void)loggingProfileURLsFromExtension;
- (void)performWithHostContext:(id)a3;
- (void)removeLoggingProfileWithSessionID:(id)a3;
- (void)setupWithParameters:(id)a3 session:(id)a4;
- (void)setupWithParameters:(id)a3 session:(id)a4 expirationDate:(id)a5;
- (void)teardownWithParameters:(id)a3 session:(id)a4;
@end

@implementation DEExtension

- (DEExtension)initWithNSExtension:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = DEExtension;
  v6 = [(DEExtension *)&v19 init];
  if (v6)
  {
    v7 = [v5 attributes];
    v8 = [v7 objectForKeyedSubscript:@"DEAttachmentsName"];
    v9 = *(v6 + 3);
    *(v6 + 3) = v8;

    objc_storeStrong(v6 + 7, a3);
    v10 = [v5 identifier];
    v11 = *(v6 + 4);
    *(v6 + 4) = v10;

    v12 = [v5 attributes];
    v13 = [v12 objectForKeyedSubscript:@"DEAttachmentsAllowUserSelection"];

    v6[8] = [v13 BOOLValue];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v15 = *(v6 + 8);
    *(v6 + 8) = v14;

    *(v6 + 9) = 0;
    *(v6 + 9) = 0;
    [*(v6 + 7) setRequestCompletionBlock:&__block_literal_global_1];
    [*(v6 + 7) setRequestCancellationBlock:&__block_literal_global_83];
    v16 = Log_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension initWithNSExtension:v5];
    }

    v17 = Log_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension initWithNSExtension:v5];
    }
  }

  return v6;
}

void __35__DEExtension_initWithNSExtension___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = Log_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "%@ completed request - items: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __35__DEExtension_initWithNSExtension___block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = Log_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 localizedDescription];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "%@ cancelled request - error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLoggingEnabled
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [(DEExtension *)self extension];
  v3 = [v2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"DEAttachmentsLoggingEnabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 BOOLValue])
    {
      goto LABEL_3;
    }

    v11 = Log_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Logging is disabled in plist";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEqualToString:@"DEAttachmentsLoggingInternal"])
    {
      if (MGGetBoolAnswer())
      {
        v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v7 = [v6 valueForKey:@"RCInternalMode"];
        if (![v7 integerValue])
        {

          goto LABEL_3;
        }

        v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v9 = [v8 valueForKey:@"RCInternalMode"];
        v10 = [v9 integerValue];

        if (v10 == 2)
        {
LABEL_3:
          v5 = 1;
          goto LABEL_38;
        }
      }

      v11 = Log_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Logging disabled. Requires internal install";
LABEL_36:
        _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      }
    }

    else
    {
      v11 = Log_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Logging disabled. Misconfigured plist (1)";
        goto LABEL_36;
      }
    }

LABEL_37:

    v5 = 0;
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = Log_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Logging disabled. Misconfigured plist (2)";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v13 = v4;
  v14 = [v13 allKeys];
  v15 = [v14 firstObject];

  v16 = v15;
  CFPreferencesAppSynchronize(v16);
  v41 = v16;
  v17 = [v13 objectForKeyedSubscript:v16];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = [v17 allKeys];
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v38 = v13;
    v39 = v4;
    v21 = 0;
    v22 = *v44;
    v40 = v17;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v43 + 1) + 8 * i);
        v25 = [v17 objectForKeyedSubscript:v24];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v18;
          keyExistsAndHasValidFormat = 0;
          v27 = v24;
          v28 = v41;
          AppBooleanValue = CFPreferencesGetAppBooleanValue(v27, v28, &keyExistsAndHasValidFormat);
          v30 = keyExistsAndHasValidFormat;
          v31 = [v25 BOOLValue];
          if (v30)
          {
            v32 = AppBooleanValue == 0;
          }

          else
          {
            v32 = 1;
          }

          v33 = v32;
          if (v31 == v33)
          {
            v36 = Log_0();
            v37 = v26;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v48 = v28;
              v49 = 2114;
              v50 = v27;
              _os_log_impl(&dword_248AB3000, v36, OS_LOG_TYPE_DEFAULT, "Logging is disabled per domain [%{public}@] key [%{public}@]", buf, 0x16u);
            }

            v13 = v38;
            v4 = v39;
            v17 = v40;
            goto LABEL_45;
          }

          v21 = 1;
          v18 = v26;
          v17 = v40;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v13 = v38;
    v4 = v39;
    if (v21)
    {
      v5 = 1;
      goto LABEL_46;
    }
  }

  else
  {
  }

  v37 = Log_0();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AB3000, v37, OS_LOG_TYPE_DEFAULT, "Logging is disabled per domain preference", buf, 2u);
  }

LABEL_45:

  v5 = 0;
LABEL_46:

LABEL_38:
  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)endUsingExtension
{
  objc_initWeak(&location, self);
  v3 = [(DEExtension *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__DEExtension_endUsingExtension__block_invoke;
  v4[3] = &unk_278F634E0;
  objc_copyWeak(&v5, &location);
  dispatch_sync(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__DEExtension_endUsingExtension__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained context];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    v6 = [v4 adoptsExtensionTrackerFlow];

    if (v6)
    {
      goto LABEL_6;
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 callCount] - 1;
    v9 = objc_loadWeakRetained((a1 + 32));
    [v9 setCallCount:v8];

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 callCount];

    if (v11 < 1)
    {
LABEL_6:
      v17 = Log_0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_loadWeakRetained((a1 + 32));
        v19 = [v18 extension];
        v20 = [v19 identifier];
        v29 = 138543362;
        v30 = v20;
        _os_log_impl(&dword_248AB3000, v17, OS_LOG_TYPE_DEFAULT, "Ending using extension %{public}@", &v29, 0xCu);
      }

      v21 = objc_loadWeakRetained((a1 + 32));
      v22 = [v21 context];
      v12 = [v22 _UUID];

      if (v12)
      {
        v23 = objc_loadWeakRetained((a1 + 32));
        v24 = [v23 extension];
        [v24 cancelExtensionRequestWithIdentifier:v12];

        v25 = objc_loadWeakRetained((a1 + 32));
        [v25 setContext:0];
      }
    }

    else
    {
      v12 = Log_0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained((a1 + 32));
        v14 = [v13 extension];
        v15 = [v14 identifier];
        v16 = objc_loadWeakRetained((a1 + 32));
        v29 = 138543618;
        v30 = v15;
        v31 = 2048;
        v32 = [v16 callCount];
        _os_log_impl(&dword_248AB3000, v12, OS_LOG_TYPE_DEFAULT, "[Legacy] Extension %{public}@ is done, but there's [%ld] other executions in flight.", &v29, 0x16u);
      }
    }
  }

  else
  {
    v26 = [v4 isFetchingExtensionHostContext];

    if (v26)
    {
      v27 = Log_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __32__DEExtension_endUsingExtension__block_invoke_cold_1((a1 + 32), v27);
      }
    }

    v12 = Log_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __32__DEExtension_endUsingExtension__block_invoke_cold_2((a1 + 32), v12);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)createExtensionHostContextCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DEExtension *)self extension];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__DEExtension_createExtensionHostContextCompletion___block_invoke;
  v7[3] = &unk_278F63790;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 beginExtensionRequestWithInputItems:MEMORY[0x277CBEBF8] completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained extension];
    v9 = [v8 _extensionContextForUUID:v5];
    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 setContext:v9];

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 context];

    if (v12)
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v16 = Log_0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_1((a1 + 40), v16);
        }

        v17 = objc_loadWeakRetained((a1 + 40));
        [v17 setContext:0];
      }

      v18 = objc_loadWeakRetained((a1 + 40));
      v19 = [v18 context];
      v20 = [v19 _auxiliaryConnection];
      v21 = [v20 valueForEntitlement:@"com.apple.DiagnosticExtensions.extension"];

      if (!v21)
      {
        v22 = Log_0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_2(v22);
        }

        v23 = objc_loadWeakRetained((a1 + 40));
        [v23 setContext:0];
      }
    }
  }

  if (v6)
  {
    v24 = Log_0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_3(v6, v24);
    }
  }

  v25 = objc_loadWeakRetained((a1 + 40));
  v26 = [v25 extension];
  v27 = [v26 identifier];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __52__DEExtension_createExtensionHostContextCompletion___block_invoke_96;
  v38[3] = &unk_278F63740;
  v28 = v27;
  v39 = v28;
  objc_copyWeak(&v40, (a1 + 40));
  v29 = objc_loadWeakRetained((a1 + 40));
  v30 = [v29 context];
  v31 = [v30 _auxiliaryConnection];
  [v31 setInvalidationHandler:v38];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__DEExtension_createExtensionHostContextCompletion___block_invoke_97;
  v36[3] = &unk_278F63768;
  v32 = v28;
  v37 = v32;
  v33 = objc_loadWeakRetained((a1 + 40));
  v34 = [v33 context];
  v35 = [v34 _auxiliaryConnection];
  [v35 setInterruptionHandler:v36];

  (*(*(a1 + 32) + 16))();
  objc_destroyWeak(&v40);
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_96(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "Connection was invalidated for extension [%{public}@]", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContext:0];

  v5 = *MEMORY[0x277D85DE8];
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_97(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "Connection was interrupted for extension [%{public}@]", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (OS_dispatch_queue)serialQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_serialQueue)
  {
    v3 = [(DEExtension *)v2 identifier];
    v4 = [v3 stringByAppendingString:@".serialQueue"];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_serialQueue;

  return v7;
}

- (void)performWithHostContext:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  objc_initWeak(&location, self);
  v6 = [(DEExtension *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEExtension_performWithHostContext___block_invoke;
  block[3] = &unk_278F63830;
  objc_copyWeak(&v12, &location);
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __38__DEExtension_performWithHostContext___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained context];

  if (v3)
  {
    v4 = Log_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] context];
      v6 = [a1[4] identifier];
      *buf = 138543618;
      v30 = v5;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Firing handler for existing context: [%{public}@], DE [%{public}@]", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__DEExtension_performWithHostContext___block_invoke_101;
    block[3] = &unk_278F637B8;
    v7 = a1[5];
    v27 = a1[6];
    objc_copyWeak(&v28, a1 + 7);
    dispatch_async(v7, block);
    objc_destroyWeak(&v28);
  }

  else
  {
    v8 = objc_loadWeakRetained(a1 + 7);
    v9 = [v8 isFetchingExtensionHostContext];

    v10 = Log_0();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Is fetching context, will store handler.", buf, 2u);
      }

      v12 = objc_loadWeakRetained(a1 + 7);
      v13 = [v12 contextFetchHandlers];
      v14 = MEMORY[0x24C1E46F0](a1[6]);
      [v13 addObject:v14];

      v15 = Log_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_loadWeakRetained(a1 + 7);
        v17 = [v16 contextFetchHandlers];
        v18 = [v17 count];
        *buf = 134217984;
        v30 = v18;
        _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_INFO, "performWithHostContext - Stored context fetch handlers [%lu]", buf, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Will create extension host.", buf, 2u);
      }

      v19 = objc_loadWeakRetained(a1 + 7);
      [v19 setIsFetchingExtensionHostContext:1];

      v20 = objc_loadWeakRetained(a1 + 7);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __38__DEExtension_performWithHostContext___block_invoke_102;
      v22[3] = &unk_278F63808;
      v22[4] = a1[4];
      objc_copyWeak(&v25, a1 + 7);
      v23 = a1[5];
      v24 = a1[6];
      [v20 createExtensionHostContextCompletion:v22];

      objc_destroyWeak(&v25);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __38__DEExtension_performWithHostContext___block_invoke_101(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  (*(v1 + 16))(v1, v2);
}

void __38__DEExtension_performWithHostContext___block_invoke_102(id *a1)
{
  v2 = [a1[4] serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEExtension_performWithHostContext___block_invoke_2;
  block[3] = &unk_278F637E0;
  objc_copyWeak(&v6, a1 + 7);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __38__DEExtension_performWithHostContext___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setIsFetchingExtensionHostContext:0];

  v3 = Log_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 context];
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 identifier];
    *buf = 138543618;
    v32 = v5;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_248AB3000, v3, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Created extension host: [%{public}@] for [%{public}@]", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DEExtension_performWithHostContext___block_invoke_103;
  block[3] = &unk_278F637B8;
  v8 = *(a1 + 32);
  v28 = *(a1 + 40);
  objc_copyWeak(&v29, (a1 + 48));
  dispatch_async(v8, block);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 contextFetchHandlers];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v11)
  {
    v12 = *v24;
    v13 = MEMORY[0x277D85DD0];
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = Log_0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248AB3000, v16, OS_LOG_TYPE_DEFAULT, "performWithHostContext - Executing stored context fetch handler", buf, 2u);
        }

        v17 = *(a1 + 32);
        v21[0] = v13;
        v21[1] = 3221225472;
        v21[2] = __38__DEExtension_performWithHostContext___block_invoke_104;
        v21[3] = &unk_278F637B8;
        v21[4] = v15;
        objc_copyWeak(&v22, (a1 + 48));
        dispatch_async(v17, v21);
        objc_destroyWeak(&v22);
        ++v14;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v11);
  }

  v18 = objc_loadWeakRetained((a1 + 48));
  v19 = [v18 contextFetchHandlers];
  [v19 removeAllObjects];

  objc_destroyWeak(&v29);
  v20 = *MEMORY[0x277D85DE8];
}

void __38__DEExtension_performWithHostContext___block_invoke_103(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  (*(v1 + 16))(v1, v2);
}

void __38__DEExtension_performWithHostContext___block_invoke_104(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];
  (*(v1 + 16))(v1, v2);
}

- (void)attachmentListWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__DEExtension_attachmentListWithHandler___block_invoke;
  v6[3] = &unk_278F63880;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(DEExtension *)self performWithHostContext:v6];
}

void __41__DEExtension_attachmentListWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) isLoggingEnabled])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__DEExtension_attachmentListWithHandler___block_invoke_2;
    v5[3] = &unk_278F63858;
    v6 = *(a1 + 40);
    [v3 attachmentListWithHandler:v5];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

uint64_t __41__DEExtension_attachmentListWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)annotatedAttachmentsForParameters:(id)a3 andHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke;
  v10[3] = &unk_278F638A8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(DEExtension *)self performWithHostContext:v10];
}

void __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) isLoggingEnabled])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke_2;
    v6[3] = &unk_278F636B0;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v3 annotatedAttachmentsForParameters:v4 withHandler:v6];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

uint64_t __60__DEExtension_annotatedAttachmentsForParameters_andHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4 andHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(DEExtension *)self adoptsExtensionTrackerFlow])
  {
    v11 = [(DEExtension *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke;
    block[3] = &unk_278F63768;
    block[4] = self;
    dispatch_sync(v11, block);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_108;
  v15[3] = &unk_278F638F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(DEExtension *)self performWithHostContext:v15];
}

void __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCallCount:{objc_msgSend(*(a1 + 32), "callCount") + 1}];
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) callCount];
    v4 = [*(a1 + 32) identifier];
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "[Legacy] attachmentsForParameters:withProgressHandler was called [%ld] times for [%{public}@].", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) isLoggingEnabled])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_2;
    v8[3] = &unk_278F638D0;
    v6 = *(a1 + 56);
    v8[4] = *(a1 + 32);
    v9 = v6;
    [v3 attachmentsForParameters:v4 withProgressHandler:v5 withHandler:v8];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __71__DEExtension_attachmentsForParameters_withProgressHandler_andHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  if (([*(a1 + 32) adoptsExtensionTrackerFlow] & 1) == 0)
  {
    v5 = Log_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Host is using legacy DE flow without setup/teardown; ending extension.", v6, 2u);
    }

    [*(a1 + 32) endUsingExtension];
  }
}

- (void)setupWithParameters:(id)a3 session:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [v9 dateByAddingTimeInterval:7200.0];

  [(DEExtension *)self setupWithParameters:v8 session:v7 expirationDate:v10];
}

- (void)setupWithParameters:(id)a3 session:(id)a4 expirationDate:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = Log_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(DEExtension *)self identifier];
    *buf = 136316162;
    v23 = "[DEExtension setupWithParameters:session:expirationDate:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v12;
    v28 = 2114;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, "%s, parameters:%@, identifier:%@, sessionID:%{public}@, date:%@", buf, 0x34u);
  }

  [(DEExtension *)self setAdoptsExtensionTrackerFlow:1];
  v13 = [(DEExtension *)self extensionTrackerClass];
  v14 = [(DEExtension *)self identifier];
  v15 = [(objc_class *)v13 shouldSetupWithIdentifier:v14 session:v9 expirationDate:v10];

  v16 = Log_0();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v17, OS_LOG_TYPE_DEFAULT, "DEExtension: Start setupForParameters:", buf, 2u);
    }

    [(DEExtension *)self installLoggingProfileWithSessionID:v9];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__DEExtension_setupWithParameters_session_expirationDate___block_invoke;
    v20[3] = &unk_278F63920;
    v21 = v8;
    [(DEExtension *)self performWithHostContext:v20];
    v17 = v21;
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = [(DEExtension *)self identifier];
    *buf = 138412546;
    v23 = v18;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_248AB3000, v17, OS_LOG_TYPE_INFO, "DEExtension: already called setup method for %@, %@", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __58__DEExtension_setupWithParameters_session_expirationDate___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    return [a2 setupForParameters:*(result + 32) withHandler:&__block_literal_global_111];
  }

  return result;
}

void __58__DEExtension_setupWithParameters_session_expirationDate___block_invoke_2()
{
  v0 = Log_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_248AB3000, v0, OS_LOG_TYPE_DEFAULT, "DEExtension: Done setupForParameters:", v1, 2u);
  }
}

- (void)teardownWithParameters:(id)a3 session:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = Log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(DEExtension *)self identifier];
    *buf = 136315906;
    v21 = "[DEExtension teardownWithParameters:session:]";
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_248AB3000, v8, OS_LOG_TYPE_DEFAULT, "%s parameters:%@, identifier:%@, sessionID:%{public}@", buf, 0x2Au);
  }

  v10 = [(DEExtension *)self extensionTrackerClass];
  v11 = [(DEExtension *)self identifier];
  v12 = [(objc_class *)v10 shouldTeardownWithIdentifier:v11 session:v7];

  v13 = Log_0();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_DEFAULT, "DEExtension: Start teardownWithParameters:", buf, 2u);
    }

    [(DEExtension *)self removeLoggingProfileWithSessionID:v7];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__DEExtension_teardownWithParameters_session___block_invoke;
    v17[3] = &unk_278F63948;
    v18 = v6;
    v19 = self;
    [(DEExtension *)self performWithHostContext:v17];
    v14 = v18;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = [(DEExtension *)self identifier];
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_INFO, "DEExtension is still needed. Teardown method is not called for %@, %@", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __46__DEExtension_teardownWithParameters_session___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __46__DEExtension_teardownWithParameters_session___block_invoke_2;
    v3[3] = &unk_278F63768;
    v2 = *(result + 32);
    v3[4] = *(result + 40);
    return [a2 teardownForParameters:v2 withHandler:v3];
  }

  return result;
}

uint64_t __46__DEExtension_teardownWithParameters_session___block_invoke_2(uint64_t a1)
{
  v2 = Log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_DEFAULT, "DEExtension: Done teardownWithParameters:", v4, 2u);
  }

  return [*(a1 + 32) endUsingExtension];
}

- (BOOL)checkAndTeardown
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = Log_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[DEExtension checkAndTeardown]";
    _os_log_impl(&dword_248AB3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__DEExtension_checkAndTeardown__block_invoke;
  v10[3] = &unk_278F639E8;
  v10[4] = self;
  p_buf = &buf;
  v5 = v4;
  v11 = v5;
  [(DEExtension *)self performWithHostContext:v10];
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void __31__DEExtension_checkAndTeardown__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__DEExtension_checkAndTeardown__block_invoke_2;
    v6[3] = &unk_278F639C0;
    v5 = a1[5];
    v4 = a1[6];
    v6[4] = a1[4];
    v9 = v4;
    v7 = v5;
    v8 = v3;
    [v8 isExtensionEnhancedLoggingStateOnWithHandler:v6];
  }
}

void __31__DEExtension_checkAndTeardown__block_invoke_2(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = Log_0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "DEExtension: %@ is NOT off. Will try to tear it down.", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__DEExtension_checkAndTeardown__block_invoke_112;
    v16[3] = &unk_278F63998;
    v7 = *(a1 + 48);
    v15 = *(a1 + 32);
    v8.i64[0] = v7;
    v8.i64[1] = *(a1 + 56);
    v14 = v8;
    v9 = v15.i64[1];
    *&v10 = v14.i64[0];
    *(&v10 + 1) = v15.i64[0];
    v17 = v10;
    v18 = vzip2q_s64(v15, v14);
    [v7 teardownForParameters:MEMORY[0x277CBEC10] withHandler:v16];
  }

  else
  {
    v11 = a2 ^ 1;
    if (v5)
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "DEExtension: %@ is already off.", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = v11;
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __31__DEExtension_checkAndTeardown__block_invoke_112(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DEExtension_checkAndTeardown__block_invoke_2_113;
  v4[3] = &unk_278F63970;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v3 = *(a1 + 48);
  v2 = v3;
  v5 = v3;
  [v1 isExtensionEnhancedLoggingStateOnWithHandler:v4];
}

intptr_t __31__DEExtension_checkAndTeardown__block_invoke_2_113(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = Log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"OFF";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"ON";
    }

    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "DEExtension: Final %@ EnhancedLoggingState is %@.", &v9, 0x16u);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2 ^ 1;
  result = dispatch_semaphore_signal(*(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3 = [(DEExtension *)self context];

  if (v3)
  {
    [(DEExtension *)self setCallCount:1];
    [(DEExtension *)self endUsingExtension];
  }

  v4.receiver = self;
  v4.super_class = DEExtension;
  [(DEExtension *)&v4 dealloc];
}

- (BOOL)requiresDataClassBAccessToRun
{
  v3 = [(DEExtension *)self cachedRequiresDataClassBAccessToRun];

  if (v3)
  {
    v4 = [(DEExtension *)self cachedRequiresDataClassBAccessToRun];
    v5 = [v4 BOOLValue];

    return v5;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__DEExtension_requiresDataClassBAccessToRun__block_invoke;
    v9[3] = &unk_278F63A10;
    v9[4] = &v10;
    [(DEExtension *)self accessBundleWithSynchronousHandler:v9];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:*(v11 + 24)];
    [(DEExtension *)self setCachedRequiresDataClassBAccessToRun:v7];

    v8 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
    return v8;
  }
}

void __44__DEExtension_requiresDataClassBAccessToRun__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 infoDictionary];
  v4 = [v3 valueForKey:@"DERequiresClassBDataClass"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v4 BOOLValue];
  }
}

- (void)accessBundleWithSynchronousHandler:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEExtension *)self extension];
  v6 = [v5 _plugIn];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v7 = [MEMORY[0x277D3D348] defaultHost];
  v24[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke;
  v17[3] = &unk_278F63A38;
  v17[4] = self;
  v17[5] = &v18;
  [v7 accessPlugIns:v8 synchronously:1 flags:0 extensions:v17];

  if (v19[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19[5] UTF8String];
      if (sandbox_extension_consume() == -1)
      {
        v9 = Log_0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(DEExtension *)self identifier];
          objc_claimAutoreleasedReturnValue();
          [DEExtension accessBundleWithSynchronousHandler:];
        }
      }

      else
      {
        v9 = v6;
        v10 = MEMORY[0x277CCA8D8];
        v11 = [v9 url];
        v12 = [v10 bundleWithURL:v11];

        if (v12)
        {
          v4[2](v4, v12);
        }

        else
        {
          v15 = Log_0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [(DEExtension *)self identifier];
            objc_claimAutoreleasedReturnValue();
            [DEExtension accessBundleWithSynchronousHandler:];
          }
        }

        sandbox_extension_release();
      }
    }

    else
    {
      v9 = Log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = v19[5];
        v14 = objc_opt_class();
        NSStringFromClass(v14);
        objc_claimAutoreleasedReturnValue();
        [DEExtension accessBundleWithSynchronousHandler:];
      }
    }
  }

  else
  {
    v9 = Log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DEExtension *)self identifier];
      objc_claimAutoreleasedReturnValue();
      [DEExtension accessBundleWithSynchronousHandler:];
    }
  }

  _Block_object_dispose(&v18, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = Log_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke_cold_1(a1);
    }
  }

  v6 = [v3 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)localizedCustomerConsentTextWithLocalization:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MGGetBoolAnswer() && ([(DEExtension *)self _localizedStringFromPlistWithKey:@"WLAN_DELocalizedCustomerConsentText" localization:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = Log_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_INFO, "WLAN required. Found matching customer consent text %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v6 = [(DEExtension *)self _localizedStringFromPlistWithKey:@"DELocalizedCustomerConsentText" localization:v4];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = Log_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension localizedCustomerConsentTextWithLocalization:];
    }
  }

LABEL_9:
  v8 = v6;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_localizedTextFromLocalizedStringKey:(id)a3 fallbackFileContentsKey:(id)a4 localization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DEExtension *)self _localizedStringFromPlistWithKey:v8 localization:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
LABEL_7:
    v15 = v13;
    goto LABEL_8;
  }

  if (v9)
  {
    v14 = Log_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DEExtension _localizedTextFromLocalizedStringKey:fallbackFileContentsKey:localization:];
    }

    v13 = [(DEExtension *)self _fileContentsFromPlistWithKey:v9 localization:v10];
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)_fileContentsFromPlistWithKey:(id)a3 localization:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__DEExtension__fileContentsFromPlistWithKey_localization___block_invoke;
  v12[3] = &unk_278F63A60;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [(DEExtension *)self accessBundleWithSynchronousHandler:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __58__DEExtension__fileContentsFromPlistWithKey_localization___block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 infoDictionary];
  v5 = [v4 valueForKey:a1[4]];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v7 = [v6 URLByDeletingPathExtension];
    v8 = [v7 lastPathComponent];

    v9 = [v6 pathExtension];
    v10 = [v3 URLForResource:v8 withExtension:v9 subdirectory:0 localization:a1[5]];
    if (!v10)
    {
      v11 = Log_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        v13 = a1[5];
        *buf = 138544386;
        v24 = v12;
        v25 = 2114;
        v26 = v6;
        v27 = 2114;
        v28 = v8;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v13;
        _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, "Cannot read file contents for key [%{public}@]: url [%{public}@] fileName [%{public}@] extension [%{public}@] localization [%{public}@]", buf, 0x34u);
      }

      v10 = [v3 URLForResource:v8 withExtension:v9 subdirectory:0];
    }

    v22 = 0;
    v14 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v10 encoding:4 error:&v22];
    v15 = v22;
    if (v15)
    {
      v16 = Log_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[4];
        v18 = a1[5];
        *buf = 138543874;
        v24 = v17;
        v25 = 2114;
        v26 = v18;
        v27 = 2114;
        v28 = v15;
        _os_log_error_impl(&dword_248AB3000, v16, OS_LOG_TYPE_ERROR, "Cannot read file contents for key [%{public}@]: localization [%{public}@] error [%{public}@]", buf, 0x20u);
      }
    }

    else
    {
      v19 = *(a1[6] + 8);
      v20 = v14;
      v16 = *(v19 + 40);
      *(v19 + 40) = v20;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_localizedStringFromPlistWithKey:(id)a3 localization:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke;
  v12[3] = &unk_278F63A60;
  v8 = v7;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  [(DEExtension *)self accessBundleWithSynchronousHandler:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "Ignoring given localization [%{public}@], user preferred languages instead.", &v13, 0xCu);
  }

  v6 = a1 + 5;
  v7 = [v3 localizedStringForKey:a1[5] value:&stru_285B6E130 table:@"InfoPlist"];
  if (![v7 length] || objc_msgSend(v7, "isEqualToString:", *v6))
  {
    v8 = Log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke_cold_1(a1 + 5, v8);
    }

    v9 = [v3 infoDictionary];
    v10 = [v9 valueForKey:*v6];

    v7 = v10;
  }

  if ([v7 length])
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)installLoggingProfileWithSessionID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEExtension *)self loggingProfileURLsFromExtension];
  if (v5)
  {
    v16 = 0;
    v6 = [DELoggingPreferences combinedLoggingPayloadForURLs:v5 error:&v16];
    v7 = v16;
    if (v7)
    {
      v8 = v7;
      v9 = Log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(DEExtension *)self identifier];
        *buf = 138543874;
        v18 = v4;
        v19 = 2114;
        v20 = v10;
        v21 = 2114;
        v22 = v8;
        v11 = "Error loading logging preference for sessionID [%{public}@] extension [%{public}@] : [%{public}@]";
LABEL_8:
        _os_log_error_impl(&dword_248AB3000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x20u);
      }
    }

    else
    {
      v12 = [(DEExtension *)self identifier];
      v15 = 0;
      [DELoggingPreferences installLoggingProfile:v6 sessionIdentifier:v4 extensionIdentifier:v12 error:&v15];
      v8 = v15;

      v13 = Log_0();
      v9 = v13;
      if (!v8)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v6;
          _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEFAULT, "Installed logging preference payload [%{public}@]", buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v10 = [(DEExtension *)self identifier];
        *buf = 138543874;
        v18 = v4;
        v19 = 2114;
        v20 = v10;
        v21 = 2114;
        v22 = v8;
        v11 = "Error installing logging preference for sessionID [%{public}@] extension [%{public}@] : [%{public}@]";
        goto LABEL_8;
      }
    }

LABEL_12:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeLoggingProfileWithSessionID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEExtension *)self identifier];
  v11 = 0;
  v6 = [DELoggingPreferences removeLoggingProfileForSessionIdentifier:v4 extensionIdentifier:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = Log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(DEExtension *)self identifier];
      *buf = 138543874;
      v13 = v4;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_248AB3000, v8, OS_LOG_TYPE_ERROR, "Error removing logging preference for sessionID [%{public}@] extension [%{public}@] : [%{public}@]", buf, 0x20u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = Log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_248AB3000, v8, OS_LOG_TYPE_DEFAULT, "Removed payload [%{public}@]", buf, 0xCu);
    }
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
}

- (id)loggingProfileURLsFromExtension
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [(DEExtension *)self extension];
  v3 = [v2 _plugIn];

  v4 = MEMORY[0x277CCA8D8];
  v5 = [v3 url];
  v6 = [v4 bundleWithURL:v5];

  v7 = [v6 infoDictionary];
  v8 = [v7 valueForKey:@"DELoggingPreferenceSubsystems"];

  if (!v8)
  {
    v9 = Log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(DEExtension *)v9 loggingProfileURLsFromExtension];
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = Log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DEExtension *)v9 loggingProfileURLsFromExtension];
    }

    goto LABEL_24;
  }

  if (![v8 count])
  {
    v9 = Log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v32 = @"DELoggingPreferenceSubsystems";
      _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_INFO, "%{public}@ is empty.", buf, 0xCu);
    }

LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  v24 = v3;
  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v6 URLForResource:v15 withExtension:@"plist" subdirectory:0];
          v17 = Log_0();
          v18 = v17;
          if (!v16)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [DEExtension loggingProfileURLsFromExtension];
            }

            goto LABEL_33;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [(DEExtension *)v29 loggingProfileURLsFromExtension];
          }

          [v9 addObject:v16];
        }

        else
        {
          v16 = Log_0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(DEExtension *)buf loggingProfileURLsFromExtension];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if ([v9 count])
  {
    v19 = [MEMORY[0x277CBEB98] setWithSet:v9];
  }

  else
  {
LABEL_33:
    v19 = 0;
  }

  v3 = v24;
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)initWithNSExtension:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 attributes];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "Extension attributes: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithNSExtension:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "Extension identifier: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __32__DEExtension_endUsingExtension__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained extension];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_248AB3000, a2, v6, "A context is being created, but the extension %{public}@ is being shut down. This is an error.", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __32__DEExtension_endUsingExtension__block_invoke_cold_2(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained extension];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_248AB3000, a2, OS_LOG_TYPE_FAULT, "Tried to end using extension %{public}@, but there's no context.", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained context];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_3(&dword_248AB3000, a2, v7, "Host Context is the wrong kind of class: %@", v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__DEExtension_createExtensionHostContextCompletion___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_248AB3000, a2, v4, "DEExtension beginRequest error: %@", v6);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)accessBundleWithSynchronousHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Failed to get extension token for [%{public}@]: Unknown token kind", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Plugin url is nil for [%{public}@]", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Failed to consume extension token for [%{public}@]", v5);
}

- (void)accessBundleWithSynchronousHandler:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_0(&dword_248AB3000, v3, v4, "Failed to get extension token for [%{public}@]: Token is nil", v5);
}

void __50__DEExtension_accessBundleWithSynchronousHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "Got sandbox extension token for [%{public}@].", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)localizedCustomerConsentTextWithLocalization:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_248AB3000, v0, OS_LOG_TYPE_DEBUG, "Found customer consent text %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_localizedTextFromLocalizedStringKey:fallbackFileContentsKey:localization:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEBUG, "Could not find [%{public}@] for any localization. Falling back to value in file for [%{public}@] plist key", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__DEExtension__localizedStringFromPlistWithKey_localization___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_248AB3000, a2, OS_LOG_TYPE_DEBUG, "Could not find [%{public}@] for preferred localizations. Falling back to value in plist value", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)loggingProfileURLsFromExtension
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_248AB3000, v0, v1, "Subsystem entry %{public}@ does not match a file in extension bundle", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end
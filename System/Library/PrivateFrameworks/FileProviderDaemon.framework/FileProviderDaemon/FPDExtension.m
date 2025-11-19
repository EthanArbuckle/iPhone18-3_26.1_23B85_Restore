@interface FPDExtension
+ (id)allocForIdentifier:(id)a3;
+ (id)instanceWithExtensionRecord:(id)a3 queue:(id)a4 server:(id)a5;
+ (id)instanceWithExtensionRecord:(id)a3 queue:(id)a4 volumeManager:(id)a5;
- (BOOL)isEqual:(id)a3;
- (FPDExtension)initWithExtensionRecord:(id)a3 queue:(id)a4 server:(id)a5 volumeManager:(id)a6;
- (id)customPushTopics;
- (void)_test_callFileProviderManagerAPIs:(id)a3;
- (void)didReceiveMessage:(id)a3 completionHandler:(id)a4;
- (void)removeTrashedItemsOlderThanDate:(id)a3 request:(id)a4 completionHandler:(id)a5;
@end

@implementation FPDExtension

+ (id)allocForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v5 = FPDLocalStorageExtension;
  }

  else if ([v4 fp_isiCloudDriveIdentifier])
  {
    v5 = FPDCloudDocsExtension;
  }

  else
  {
    v5 = a1;
  }

  v6 = [v5 alloc];

  return v6;
}

+ (id)instanceWithExtensionRecord:(id)a3 queue:(id)a4 server:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 bundleIdentifier];
  v12 = [objc_msgSend(a1 allocForIdentifier:{v11), "initWithExtensionRecord:queue:server:volumeManager:", v10, v9, v8, 0}];

  return v12;
}

+ (id)instanceWithExtensionRecord:(id)a3 queue:(id)a4 volumeManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 bundleIdentifier];
  v12 = [objc_msgSend(a1 allocForIdentifier:{v11), "initWithExtensionRecord:queue:server:volumeManager:", v10, v9, 0, v8}];

  return v12;
}

- (FPDExtension)initWithExtensionRecord:(id)a3 queue:(id)a4 server:(id)a5 volumeManager:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v13 && v14)
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension initWithExtensionRecord:? queue:? server:? volumeManager:?];
    }

LABEL_20:
    v29 = 0;
    goto LABEL_21;
  }

  v16 = [[FPDProviderDescriptor alloc] initWithExtensionRecord:v11];
  if (!v16)
  {
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v11;
      _os_log_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to create descriptor for extension %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v35.receiver = self;
  v35.super_class = FPDExtension;
  v17 = [(FPDProvider *)&v35 initWithDescriptor:v16 server:v13];
  self = v17;
  if (v17)
  {
    v18 = [(FPDProvider *)v17 extensionStorageURLs];
    v19 = [v18 count];

    if (!v19)
    {
      v20 = [(FPDProvider *)self supportsFPFS];
      v21 = fp_current_or_default_log();
      v22 = v21;
      if (!v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [FPDExtension initWithExtensionRecord:v11 queue:? server:? volumeManager:?];
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = [v11 bundleIdentifier];
        *buf = 138412546;
        v37 = v23;
        v38 = 2112;
        v39 = @"NSExtensionFileProviderDocumentGroup";
        _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] %@ key not found in Info.plist of %@. The documentStorageURL property on NSFileProviderManager will not be available.", buf, 0x16u);
      }
    }

    objc_storeStrong(&self->_sharedSessionQueue, a4);
    objc_storeStrong(&self->_extensionRecord, a3);
    v24 = [v13 volumeManager];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v15;
    }

    v27 = v26;

    v28 = [(FPDProviderDescriptor *)v16 personaIdentifier];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__FPDExtension_initWithExtensionRecord_queue_server_volumeManager___block_invoke;
    v33[3] = &unk_1E83BDF50;
    v34 = self;
    [v27 enumerateLibrariesForPersona:v28 withBlock:v33];
  }

  self = self;
  v29 = self;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(FPDProvider *)self descriptor];
      v8 = [(FPDProvider *)v4 descriptor];
      v6 = [v7 isEqual:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)removeTrashedItemsOlderThanDate:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FPDExtension removeTrashedItemsOlderThanDate:v11 request:? completionHandler:?];
  }

  v12 = dispatch_group_create();
  v13 = [(FPDProvider *)self relevantDomainsByID];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke;
  v21 = &unk_1E83BDFA0;
  v22 = v12;
  v23 = v9;
  v24 = v8;
  v25 = self;
  v14 = v8;
  v15 = v9;
  v16 = v12;
  [v13 enumerateKeysAndObjectsUsingBlock:&v18];

  v17 = [(FPDProvider *)self queue:v18];
  dispatch_group_notify(v16, v17, v10);
}

void __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  dispatch_group_enter(v5);
  v8 = [v6 session];

  v9 = [v8 newFileProviderProxyWithTimeout:objc_msgSend(*(a1 + 40) pid:{"pid"), 180.0}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83BDF78;
  v11 = *(a1 + 48);
  v10 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = *(a1 + 32);
  [v9 removeTrashedItemsOlderThanDate:v10 domainIdentifier:v7 completionHandler:v12];
}

void __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke_2_cold_1(a1);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)didReceiveMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKey:@"container-identifier"];

  v10 = [v6 userInfo];
  v11 = [v10 objectForKey:@"domain"];
  v12 = v11;
  v13 = *MEMORY[0x1E6967178];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (!v14)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension didReceiveMessage:v6 completionHandler:?];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension didReceiveMessage:v6 completionHandler:?];
    }

LABEL_11:

    v7[2](v7);
    goto LABEL_16;
  }

  v15 = [(FPDProvider *)self domainForIdentifier:v14 reason:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 defaultBackend];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke;
    v20[3] = &unk_1E83BDFF0;
    v21 = v9;
    v26 = v7;
    v22 = v6;
    v23 = self;
    v24 = v14;
    v25 = v16;
    [v17 wakeForPushWithCompletionHandler:v20];
  }

  else
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension didReceiveMessage:completionHandler:];
    }

    v7[2](v7);
  }

LABEL_16:
}

void __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_cold_1(v3);
    }
  }

  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = fp_current_or_default_log();
  v7 = v6;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_cold_2(a1);
    }

LABEL_13:
    (*(*(a1 + 72) + 16))();
    goto LABEL_14;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_cold_3((a1 + 32), a1, v7);
  }

  v8 = objc_alloc(MEMORY[0x1E69673A0]);
  v9 = [*(a1 + 48) identifier];
  v10 = [v8 initWithProviderID:v9 domainIdentifier:*(a1 + 56) itemIdentifier:*(a1 + 32)];

  v11 = *(a1 + 64);
  v12 = +[FPDRequest requestForSelf];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_22;
  v13[3] = &unk_1E83BDFC8;
  v14 = v3;
  [v11 didChangeItemID:v10 request:v12 completionHandler:v13];

  (*(*(a1 + 72) + 16))();
LABEL_14:
}

void __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_22_cold_1(v3);
    }
  }
}

- (id)customPushTopics
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FPDProvider *)v2 domainsByID];
  v4 = [v3 allValues];
  v5 = [v4 mutableCopy];

  objc_sync_exit(v2);
  v6 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 session];
        v12 = [v11 newFileProviderProxyWithTimeout:0 pid:180.0];
        v13 = [v12 synchronousRemoteObjectProxy];

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __32__FPDExtension_customPushTopics__block_invoke;
        v18[3] = &unk_1E83BE018;
        v18[4] = v10;
        v19 = v6;
        [v13 fetchCustomPushTopicsWithCompletionHandler:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = [v6 allObjects];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __32__FPDExtension_customPushTopics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__FPDExtension_customPushTopics__block_invoke_cold_1(a1, v6);
    }
  }

  else
  {
    if (v5)
    {
      [*(a1 + 40) addObjectsFromArray:v5];
      goto LABEL_7;
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __32__FPDExtension_customPushTopics__block_invoke_cold_2(a1, v7);
    }
  }

LABEL_7:
}

- (void)_test_callFileProviderManagerAPIs:(id)a3
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDExtension _test_callFileProviderManagerAPIs:v5];
  }

  v6 = [(FPDProvider *)self domainForIdentifier:*MEMORY[0x1E6967178] reason:0];
  v7 = [v6 session];

  v8 = [v7 newFileProviderProxyWithTimeout:0 pid:180.0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FPDExtension__test_callFileProviderManagerAPIs___block_invoke;
  v10[3] = &unk_1E83BE040;
  v11 = v4;
  v9 = v4;
  [v8 _test_callFileProviderManagerAPIs:v10];
}

void __50__FPDExtension__test_callFileProviderManagerAPIs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__FPDExtension__test_callFileProviderManagerAPIs___block_invoke_cold_1(v3);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)initWithExtensionRecord:(void *)a1 queue:server:volumeManager:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeTrashedItemsOlderThanDate:(os_log_t)log request:completionHandler:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[FPDExtension removeTrashedItemsOlderThanDate:request:completionHandler:]";
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveMessage:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveMessage:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_ERROR, "[ERROR] received file provider push for unknown domain %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveMessage:(void *)a1 completionHandler:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) userInfo];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_cold_3(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [*(a2 + 48) identifier];
  v7 = 138412546;
  v8 = v4;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Received push on container %@ for provider %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke_22_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __32__FPDExtension_customPushTopics__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_prettyDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __32__FPDExtension_customPushTopics__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No custom topics received for %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_test_callFileProviderManagerAPIs:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[FPDExtension _test_callFileProviderManagerAPIs:]";
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __50__FPDExtension__test_callFileProviderManagerAPIs___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end
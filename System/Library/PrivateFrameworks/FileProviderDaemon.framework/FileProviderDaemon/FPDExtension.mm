@interface FPDExtension
+ (id)allocForIdentifier:(id)identifier;
+ (id)instanceWithExtensionRecord:(id)record queue:(id)queue server:(id)server;
+ (id)instanceWithExtensionRecord:(id)record queue:(id)queue volumeManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (FPDExtension)initWithExtensionRecord:(id)record queue:(id)queue server:(id)server volumeManager:(id)manager;
- (id)customPushTopics;
- (void)_test_callFileProviderManagerAPIs:(id)is;
- (void)didReceiveMessage:(id)message completionHandler:(id)handler;
- (void)removeTrashedItemsOlderThanDate:(id)date request:(id)request completionHandler:(id)handler;
@end

@implementation FPDExtension

+ (id)allocForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    selfCopy = FPDLocalStorageExtension;
  }

  else if ([identifierCopy fp_isiCloudDriveIdentifier])
  {
    selfCopy = FPDCloudDocsExtension;
  }

  else
  {
    selfCopy = self;
  }

  v6 = [selfCopy alloc];

  return v6;
}

+ (id)instanceWithExtensionRecord:(id)record queue:(id)queue server:(id)server
{
  serverCopy = server;
  queueCopy = queue;
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v12 = [objc_msgSend(self allocForIdentifier:{bundleIdentifier), "initWithExtensionRecord:queue:server:volumeManager:", recordCopy, queueCopy, serverCopy, 0}];

  return v12;
}

+ (id)instanceWithExtensionRecord:(id)record queue:(id)queue volumeManager:(id)manager
{
  managerCopy = manager;
  queueCopy = queue;
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v12 = [objc_msgSend(self allocForIdentifier:{bundleIdentifier), "initWithExtensionRecord:queue:server:volumeManager:", recordCopy, queueCopy, 0, managerCopy}];

  return v12;
}

- (FPDExtension)initWithExtensionRecord:(id)record queue:(id)queue server:(id)server volumeManager:(id)manager
{
  v40 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  queueCopy = queue;
  serverCopy = server;
  managerCopy = manager;
  v15 = managerCopy;
  if (serverCopy && managerCopy)
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension initWithExtensionRecord:? queue:? server:? volumeManager:?];
    }

LABEL_20:
    selfCopy2 = 0;
    goto LABEL_21;
  }

  v16 = [[FPDProviderDescriptor alloc] initWithExtensionRecord:recordCopy];
  if (!v16)
  {
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = recordCopy;
      _os_log_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to create descriptor for extension %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v35.receiver = self;
  v35.super_class = FPDExtension;
  v17 = [(FPDProvider *)&v35 initWithDescriptor:v16 server:serverCopy];
  self = v17;
  if (v17)
  {
    extensionStorageURLs = [(FPDProvider *)v17 extensionStorageURLs];
    v19 = [extensionStorageURLs count];

    if (!v19)
    {
      supportsFPFS = [(FPDProvider *)self supportsFPFS];
      v21 = fp_current_or_default_log();
      v22 = v21;
      if (!supportsFPFS)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [FPDExtension initWithExtensionRecord:recordCopy queue:? server:? volumeManager:?];
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [recordCopy bundleIdentifier];
        *buf = 138412546;
        v37 = bundleIdentifier;
        v38 = 2112;
        v39 = @"NSExtensionFileProviderDocumentGroup";
        _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] %@ key not found in Info.plist of %@. The documentStorageURL property on NSFileProviderManager will not be available.", buf, 0x16u);
      }
    }

    objc_storeStrong(&self->_sharedSessionQueue, queue);
    objc_storeStrong(&self->_extensionRecord, record);
    volumeManager = [serverCopy volumeManager];
    v25 = volumeManager;
    if (volumeManager)
    {
      v26 = volumeManager;
    }

    else
    {
      v26 = v15;
    }

    v27 = v26;

    personaIdentifier = [(FPDProviderDescriptor *)v16 personaIdentifier];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__FPDExtension_initWithExtensionRecord_queue_server_volumeManager___block_invoke;
    v33[3] = &unk_1E83BDF50;
    selfCopy = self;
    [v27 enumerateLibrariesForPersona:personaIdentifier withBlock:v33];
  }

  self = self;
  selfCopy2 = self;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      descriptor = [(FPDProvider *)self descriptor];
      descriptor2 = [(FPDProvider *)equalCopy descriptor];
      v6 = [descriptor isEqual:descriptor2];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)removeTrashedItemsOlderThanDate:(id)date request:(id)request completionHandler:(id)handler
{
  dateCopy = date;
  requestCopy = request;
  handlerCopy = handler;
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FPDExtension removeTrashedItemsOlderThanDate:v11 request:? completionHandler:?];
  }

  v12 = dispatch_group_create();
  relevantDomainsByID = [(FPDProvider *)self relevantDomainsByID];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __74__FPDExtension_removeTrashedItemsOlderThanDate_request_completionHandler___block_invoke;
  v21 = &unk_1E83BDFA0;
  v22 = v12;
  v23 = requestCopy;
  v24 = dateCopy;
  selfCopy = self;
  v14 = dateCopy;
  v15 = requestCopy;
  v16 = v12;
  [relevantDomainsByID enumerateKeysAndObjectsUsingBlock:&v18];

  v17 = [(FPDProvider *)self queue:v18];
  dispatch_group_notify(v16, v17, handlerCopy);
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

- (void)didReceiveMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  userInfo = [messageCopy userInfo];
  v9 = [userInfo objectForKey:@"container-identifier"];

  userInfo2 = [messageCopy userInfo];
  v11 = [userInfo2 objectForKey:@"domain"];
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
      [FPDExtension didReceiveMessage:messageCopy completionHandler:?];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension didReceiveMessage:messageCopy completionHandler:?];
    }

LABEL_11:

    handlerCopy[2](handlerCopy);
    goto LABEL_16;
  }

  v15 = [(FPDProvider *)self domainForIdentifier:v14 reason:0];
  v16 = v15;
  if (v15)
  {
    defaultBackend = [v15 defaultBackend];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__FPDExtension_didReceiveMessage_completionHandler___block_invoke;
    v20[3] = &unk_1E83BDFF0;
    v21 = v9;
    v26 = handlerCopy;
    v22 = messageCopy;
    selfCopy = self;
    v24 = v14;
    v25 = v16;
    [defaultBackend wakeForPushWithCompletionHandler:v20];
  }

  else
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPDExtension didReceiveMessage:completionHandler:];
    }

    handlerCopy[2](handlerCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  domainsByID = [(FPDProvider *)selfCopy domainsByID];
  allValues = [domainsByID allValues];
  v5 = [allValues mutableCopy];

  objc_sync_exit(selfCopy);
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
        session = [v10 session];
        v12 = [session newFileProviderProxyWithTimeout:0 pid:180.0];
        synchronousRemoteObjectProxy = [v12 synchronousRemoteObjectProxy];

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __32__FPDExtension_customPushTopics__block_invoke;
        v18[3] = &unk_1E83BE018;
        v18[4] = v10;
        v19 = v6;
        [synchronousRemoteObjectProxy fetchCustomPushTopicsWithCompletionHandler:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  allObjects = [v6 allObjects];

  v15 = *MEMORY[0x1E69E9840];

  return allObjects;
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

- (void)_test_callFileProviderManagerAPIs:(id)is
{
  isCopy = is;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDExtension _test_callFileProviderManagerAPIs:v5];
  }

  v6 = [(FPDProvider *)self domainForIdentifier:*MEMORY[0x1E6967178] reason:0];
  session = [v6 session];

  v8 = [session newFileProviderProxyWithTimeout:0 pid:180.0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FPDExtension__test_callFileProviderManagerAPIs___block_invoke;
  v10[3] = &unk_1E83BE040;
  v11 = isCopy;
  v9 = isCopy;
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
@interface FPDSpotlightDaemonClient
- (FPDSpotlightDaemonClient)initWithExtensionManager:(id)a3;
- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5;
- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
@end

@implementation FPDSpotlightDaemonClient

- (FPDSpotlightDaemonClient)initWithExtensionManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = FPDSpotlightDaemonClient;
  v6 = [(FPDSpotlightDaemonClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionManager, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("reindex-queue", v8);
    reindexQueue = v7->_reindexQueue;
    v7->_reindexQueue = v9;
  }

  return v7;
}

- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a4 isEqualToString:*MEMORY[0x1E696A388]];
  v11 = fp_current_or_default_log();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] Received call to reindex all items for bundle ID %@", buf, 0xCu);
    }

    reindexQueue = self->_reindexQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke;
    block[3] = &unk_1E83BE828;
    v16 = v8;
    v17 = self;
    v18 = v9;
    dispatch_async(reindexQueue, block);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDSpotlightDaemonClient reindexAllItemsForBundleID:v12 protectionClass:? acknowledgementHandler:?];
    }

    v9[2](v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v38 = v3;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] reindexAllItemsForBundleID for bundle ID %@: On queue", buf, 0xCu);
  }

  v4 = dispatch_group_create();
  [*(*(a1 + 40) + 16) defaultProviderWithTopLevelBundleIdentifier:*(a1 + 32)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = v36 = 0u;
  v5 = [v25 domainsByID];
  v6 = [v5 allValues];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v10 = v29;
    v26 = v4;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        dispatch_group_enter(v4);
        v13 = fp_current_or_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v9;
          v15 = *(a1 + 32);
          [v12 identifier];
          v16 = v8;
          v18 = v17 = v10;
          v19 = [v18 fp_obfuscatedFilename];
          *buf = 138543618;
          v38 = v15;
          v9 = v14;
          v39 = 2114;
          v40 = v19;
          _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_INFO, "[INFO] Started running reindex-all for bundleID %{public}@ with domain %{public}@", buf, 0x16u);

          v10 = v17;
          v8 = v16;
          v4 = v26;
        }

        v20 = [v12 defaultBackend];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v29[0] = __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke_1;
        v29[1] = &unk_1E83BDF78;
        v30 = *(a1 + 32);
        v31 = v12;
        v32 = v4;
        [v20 reindexAllItemsWithDropReason:5 completionHandler:v28];
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  v21 = fp_current_or_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 32);
    *buf = 138412290;
    v38 = v22;
    _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_INFO, "[INFO] Completing call to reindex all items for bundle ID %@", buf, 0xCu);
  }

  v23 = dispatch_get_global_queue(0, 0);
  dispatch_group_notify(v4, v23, *(a1 + 48));

  v24 = *MEMORY[0x1E69E9840];
}

void __94__FPDSpotlightDaemonClient_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v7 = [v6 fp_obfuscatedFilename];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_INFO, "[INFO] Finished running reindex-all for bundleID %{public}@ with domain %{public}@, error: %@", &v9, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [a5 isEqualToString:*MEMORY[0x1E696A388]];
  v14 = fp_current_or_default_log();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v24 = [v10 count];
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_INFO, "[INFO] Received call to reindex %lu items for bundle ID %@", buf, 0x16u);
    }

    reindexQueue = self->_reindexQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke;
    v18[3] = &unk_1E83BE3B0;
    v19 = v11;
    v20 = v10;
    v21 = self;
    v22 = v12;
    dispatch_async(reindexQueue, v18);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDSpotlightDaemonClient reindexItemsWithIdentifiers:v15 bundleID:? protectionClass:? acknowledgementHandler:?];
    }

    v12[2](v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v58 = v3;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] reindexItemsWithIdentifiers for bundle ID %@: On queue", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v40 = a1;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v53 + 1) + 8 * i);
        v51 = 0;
        v52 = 0;
        [MEMORY[0x1E69673A0] getDomainIdentifier:&v52 andIdentifier:&v51 fromCoreSpotlightIdentifier:v10];
        v11 = v52;
        v12 = v51;
        v13 = v12;
        if (v11)
        {
          if (v12)
          {
            v14 = [v4 objectForKeyedSubscript:v11];
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v14 addObject:v10];
            [v4 setObject:v14 forKeyedSubscript:v11];
          }

          else
          {
            v14 = fp_current_or_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_cold_1(v62, &v63, v14);
            }
          }
        }

        else
        {
          v14 = fp_current_or_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v58 = v10;
            _os_log_error_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_ERROR, "[ERROR] Error converting CS identifier %@ to FP domain during reindex", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v7);
  }

  group = dispatch_group_create();
  v15 = v40;
  v41 = [*(*(v40 + 48) + 16) defaultProviderWithTopLevelBundleIdentifier:*(v40 + 32)];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v48;
    *&v18 = 138412546;
    v39 = v18;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v47 + 1) + 8 * j);
        v23 = [v16 objectForKeyedSubscript:{v22, v39}];
        if ([v23 count])
        {
          v24 = [v41 domainsByID];
          v25 = [v24 objectForKeyedSubscript:v22];

          if (v25)
          {
            dispatch_group_enter(group);
            v26 = fp_current_or_default_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = *(v40 + 32);
              v28 = [v25 identifier];
              v29 = [v28 fp_obfuscatedFilename];
              *buf = 138543618;
              v58 = v27;
              v15 = v40;
              v59 = 2114;
              v60 = v29;
              _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_INFO, "[INFO] Started running reindex items for bundleID %{public}@ with domain %{public}@", buf, 0x16u);
            }

            v30 = [v25 defaultBackend];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6;
            v43[3] = &unk_1E83BDF78;
            v44 = v25;
            v45 = v15[4];
            v46 = group;
            [v30 reindexItemsWithIndexReason:7 identifiers:v23 completionHandler:v43];

            v31 = v44;
          }

          else
          {
            v31 = fp_current_or_default_log();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v33 = v15[4];
              *buf = v39;
              v58 = v33;
              v59 = 2112;
              v60 = v22;
              _os_log_error_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_ERROR, "[ERROR] reindexItemsWithIdentifiers for bundle ID %@: domain == nil for domain %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v25 = fp_current_or_default_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v32 = v15[4];
            *buf = v39;
            v58 = v32;
            v59 = 2112;
            v60 = v22;
            _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] reindexItemsWithIdentifiers for bundle ID %@: items.count == 0 for domain %@", buf, 0x16u);
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v19);
  }

  v34 = fp_current_or_default_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v15[5] count];
    v36 = v15[4];
    *buf = 134218242;
    v58 = v35;
    v59 = 2112;
    v60 = v36;
    _os_log_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_INFO, "[INFO] Completing call to reindex %lu items for bundle ID %@", buf, 0x16u);
  }

  v37 = dispatch_get_global_queue(0, 0);
  dispatch_group_notify(group, v37, v15[7]);

  v38 = *MEMORY[0x1E69E9840];
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6(id *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6_cold_1(a1, v3, v5);
    }

    v6 = [a1[4] defaultBackend];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_7;
    v11[3] = &unk_1E83BDF78;
    v12 = a1[5];
    v13 = a1[4];
    v14 = a1[6];
    [v6 reindexAllItemsWithDropReason:4 completionHandler:v11];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = [a1[4] identifier];
      v9 = [v8 fp_obfuscatedFilename];
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Finished running reindex items for bundleID %{public}@ with domain %{public}@", buf, 0x16u);
    }

    dispatch_group_leave(a1[6]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_7(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v5 = [v4 fp_obfuscatedFilename];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] Finished running fallback reindex-all for bundleID %{public}@ with domain %{public}@", &v7, 0x16u);
  }

  dispatch_group_leave(*(a1 + 48));
  v6 = *MEMORY[0x1E69E9840];
}

- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v9 = a8;
  v10 = FPNotSupportedError();
  (*(a8 + 2))(v9, 0, v10);
}

- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a8;
  reindexQueue = self->_reindexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  block[3] = &unk_1E83C1040;
  v23 = v14;
  v24 = a7;
  v20 = v13;
  v21 = v12;
  v22 = self;
  v16 = v14;
  v17 = v12;
  v18 = v13;
  dispatch_async(reindexQueue, block);
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 64);
  if (*(a1 + 64))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_1(v2, v3);
    }
  }

  v22 = 0;
  v23 = 0;
  [MEMORY[0x1E69673A0] getDomainIdentifier:&v23 andIdentifier:&v22 fromCoreSpotlightIdentifier:*(a1 + 32)];
  v4 = v23;
  v5 = v22;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || !*(a1 + 40))
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_3((a1 + 32), a1);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [*(*(a1 + 48) + 16) defaultProviderWithTopLevelBundleIdentifier:?];
    v21 = 0;
    v9 = [v8 domainForIdentifier:v4 reason:&v21];
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69673A0]);
      v11 = [v8 identifier];
      v12 = [v10 initWithProviderID:v11 domainIdentifier:v4 itemIdentifier:v6];

      v13 = [v9 defaultBackend];
      v14 = [MEMORY[0x1E696B0B8] currentConnection];
      v15 = [FPDRequest requestForXPCConnection:v14];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_11;
      v19[3] = &unk_1E83C1018;
      v20 = *(a1 + 56);
      [v13 URLForItemID:v12 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:0 forBookmarkResolution:0 request:v15 completionHandler:v19];
    }

    else
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_2((a1 + 40));
      }

      v18 = *(a1 + 56);
      v12 = FPProviderNotFoundError();
      (*(v18 + 16))(v18, 0, v12);
    }
  }
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 url];
  (*(v3 + 16))(v3, v4, 0);
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Error converting CS identifier %@ to FP identifier during reindex", buf, 0xCu);
}

void __104__FPDSpotlightDaemonClient_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_6_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) identifier];
  v6 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Error reindexing specific items for domain %@, falling back to reindex all %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Options are not supported in FileProvider %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v2, v3, "[ERROR] Providing url for bundle id %@, missing domain for identifier %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __126__FPDSpotlightDaemonClient_provideFileURLForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_cold_3(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v4, v5, "[ERROR] Spotlight provideFileForURL failed to get fp item identifiers %@ for bundle %@");
  v6 = *MEMORY[0x1E69E9840];
}

@end
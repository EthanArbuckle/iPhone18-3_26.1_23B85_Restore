@interface FPDDomainExtensionBackend
- (BOOL)isProviderForRealPathURL:(id)a3;
- (FPDDomainExtensionBackend)initWithDomain:(id)a3;
- (NSArray)rootURLs;
- (id)createRootByImportingURL:(id)a3 knownFolders:(id)a4 error:(id *)a5;
- (id)evictItemAtURL:(id)a3 evictionReason:(unsigned int)a4 request:(id)a5 completionHandler:(id)a6;
- (id)newFileProviderProxyWithTimeoutValue:(double)a3 request:(id)a4;
- (id)nsfpRequest:(id)a3;
- (id)startProvidingItemAtURL:(id)a3 readerID:(id)a4 readingOptions:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7;
- (void)URLForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 forBookmarkResolution:(BOOL)a6 request:(id)a7 completionHandler:(id)a8;
- (void)_cancelProvidingItemAtURL:(id)a3 withKey:(id)a4 request:(id)a5;
- (void)bulkItemChanges:(id)a3 changedFields:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6;
- (void)clearDiagnosticState:(id)a3;
- (void)copyDatabaseToURL:(id)a3 completionHandler:(id)a4;
- (void)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 urlWrapper:(id)a5 options:(unint64_t)a6 bounceOnCollision:(BOOL)a7 request:(id)a8 completionHandler:(id)a9;
- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)dumpStateTo:(id)a3 options:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6;
- (void)enumerateSearchResultForRequest:(id)a3 lifetimeExtender:(id)a4 completionHandler:(id)a5;
- (void)enumerateWithSettings:(id)a3 lifetimeExtender:(id)a4 observer:(id)a5 completionHandler:(id)a6;
- (void)evictItemWithID:(id)a3 evictionReason:(unsigned int)a4 request:(id)a5 completionHandler:(id)a6;
- (void)fetchAlternateContentsURLWrapperForDocumentWithURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)fetchFPCKTelemetryWithCompletionHandler:(id)a3;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)a3 completionHandler:(id)a4;
- (void)fetchServicesForItemID:(id)a3 allowRestrictedSources:(BOOL)a4 request:(id)a5 completionHandler:(id)a6;
- (void)fetchThumbnailsAtURL:(id)a3 versions:(id)a4 size:(CGSize)a5 perThumbnailCompletionHandler:(id)a6 completionHandler:(id)a7;
- (void)fetchVendorEndpointWithRequest:(id)a3 completionHandler:(id)a4;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)a3 completionHandler:(id)a4;
- (void)getKnownFolderLocations:(unint64_t)a3 request:(id)a4 completionHandler:(id)a5;
- (void)getSavedDiagnostics:(id)a3;
- (void)hasNonUploadedFilesWithCompletionHandler:(id)a3;
- (void)hierarchyForURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)invalidate;
- (void)itemChangedAtURL:(id)a3 request:(id)a4;
- (void)itemForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 request:(id)a6 completionHandler:(id)a7;
- (void)itemForURL:(id)a3 options:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6;
- (void)itemIDForURL:(id)a3 requireProviderItemID:(BOOL)a4 request:(id)a5 completionHandler:(id)a6;
- (void)launchFeedbackForDomain:(id)a3 itemIdentifier:(id)a4 triggeringError:(id)a5 when:(id)a6 useDiagnostic:(BOOL)a7 completionHandler:(id)a8;
- (void)listRemoteVersionsOfItemAtURL:(id)a3 includeCachedVersions:(BOOL)a4 request:(id)a5 completionHandler:(id)a6;
- (void)materializeItemWithID:(id)a3 requestedRange:(_NSRange)a4 request:(id)a5 completionHandler:(id)a6;
- (void)movingItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5;
- (void)putBackURLForTrashedItemAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)reimportItemsBelowItemWithID:(id)a3 markItemDataless:(BOOL)a4 completionHandler:(id)a5;
- (void)reindexAllItemsWithDropReason:(unint64_t)a3 completionHandler:(id)a4;
- (void)reindexItemsWithIndexReason:(int64_t)a3 identifiers:(id)a4 completionHandler:(id)a5;
- (void)requestDiagnosticCollectionForItemWithID:(id)a3 errorReason:(id)a4 completionHandler:(id)a5;
- (void)resolveConflictAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)setAlternateContentsURLWrapper:(id)a3 forDocumentWithURL:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (void)setPutBackInfoOnItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)stateWithCompletionHandler:(id)a3;
- (void)trashItemAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)triggerFeedbackApprovalRequestForItemURL:(id)a3 domain:(id)a4 uiOnly:(BOOL)a5 completionHandler:(id)a6;
- (void)valuesForAttributes:(id)a3 forURL:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (void)waitForStabilizationForRequest:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5;
- (void)wakeForPushWithCompletionHandler:(id)a3;
- (void)workingSetDidChangeWithCompletionHandler:(id)a3;
@end

@implementation FPDDomainExtensionBackend

- (NSArray)rootURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v3 = [WeakRetained extensionStorageURLs];

  return v3;
}

- (FPDDomainExtensionBackend)initWithDomain:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FPDDomainExtensionBackend;
  v5 = [(FPDDomainExtensionBackend *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_domain, v4);
    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    v10 = [v4 providerDomainID];
    v11 = [v10 fp_obfuscatedProviderDomainID];
    v12 = [v8 stringWithFormat:@"extension backend: %@", v11];

    v13 = dispatch_workloop_create([v12 UTF8String]);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    provideFileCompletionsByURL = v6->_provideFileCompletionsByURL;
    v6->_provideFileCompletionsByURL = v15;
  }

  return v6;
}

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    if (!WeakRetained)
    {
      [FPDDomainExtensionBackend invalidate];
    }

    v4 = objc_loadWeakRetained(&self->_domain);
    v5 = [v4 serialQueue];
    if (!v5)
    {
      [FPDDomainExtensionBackend invalidate];
    }

    v6 = objc_loadWeakRetained(&self->_domain);
    v7 = [v6 serialQueue];
    dispatch_assert_queue_V2(v7);

    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained(&self->_domain);
      v10 = [v9 providerDomainID];
      v11 = [v10 fp_obfuscatedProviderDomainID];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_INFO, "[INFO] ♻️  invalidating extension backend for %@", &v13, 0xCu);
    }

    [(NSMutableDictionary *)self->_provideFileCompletionsByURL enumerateKeysAndObjectsUsingBlock:&__block_literal_global_97];
    [(NSMutableDictionary *)self->_provideFileCompletionsByURL removeAllObjects];
    objc_storeWeak(&self->_domain, 0);
    self->_invalidated = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __39__FPDDomainExtensionBackend_invalidate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 fp_shortDescription];
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_INFO, "[INFO] ❌  Cancelling request for %@ due to invalidation", buf, 0xCu);
  }

  v8 = FPUserCancelledError();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v5 objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v15 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isProviderForRealPathURL:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v6 = [WeakRetained provider];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v8 && ([MEMORY[0x1E695DFF8] fp_homeDirectory], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "fp_realpathURL"), v10 = objc_claimAutoreleasedReturnValue(), v9, LOBYTE(v9) = objc_msgSend(v4, "fp_matchesApplicationContainerURL:", v10), v10, (v9 & 1) != 0))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = [(FPDDomainExtensionBackend *)self coordinationRootURLs];
    v13 = [v12 mutableCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v11 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v19 + 1) + 8 * i) fp_realPathRelationshipToItemAtRealPathURL:{v4, v19}] < 2)
          {
            LOBYTE(v11) = 1;
            goto LABEL_14;
          }
        }

        v11 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)createRootByImportingURL:(id)a3 knownFolders:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = FPNotSupportedError();
  }

  return 0;
}

- (id)newFileProviderProxyWithTimeoutValue:(double)a3 request:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v8 = [WeakRetained session];

  if (v8)
  {
    v9 = [v8 newFileProviderProxyWithTimeout:objc_msgSend(v6 pid:{"pid"), a3}];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69674B0]);
    v11 = FPDomainUnavailableError();
    v9 = [v10 initWithConnection:0 protocol:&unk_1F4C8C390 orError:v11 name:@"invalidated extension" requestPid:{objc_msgSend(v6, "pid")}];
  }

  return v9;
}

- (id)nsfpRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v6 = [WeakRetained session];

  if (v6)
  {
    [v4 nsfpRequestForSession:v6 isSpeculative:0];
  }

  else
  {
    [MEMORY[0x1E6967518] requestFromTheSystem];
  }
  v7 = ;

  return v7;
}

- (void)itemForURL:(id)a3 options:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16 = v10;
  v17 = v9;
  v18 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  fp_dispatch_async_with_logs();
}

void __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v11 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_248;
  v14[3] = &unk_1E83BE530;
  v12 = v11;
  v13 = *(a1 + 32);
  v15 = v12;
  v16 = v13;
  v17 = *(a1 + 56);
  [v10 itemForURL:v12 completionHandler:v14];
}

void __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_248(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_248_cold_1(a1, v6, v7);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)itemIDForURL:(id)a3 requireProviderItemID:(BOOL)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16 = v10;
  v17 = v9;
  v18 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  fp_dispatch_async_with_logs();
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v11 = *(a1 + 48);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251;
  v14[3] = &unk_1E83BE558;
  v12 = v11;
  v13 = *(a1 + 32);
  v15 = v12;
  v16 = v13;
  v17 = *(a1 + 56);
  [v10 identifierForItemAtURL:v12 completionHandler:v14];
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251_cold_1(a1, v6, v7);
    }

    v9 = *(a1 + 48);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    if (v8)
    {
      __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251_cold_2(v5, a1, v7);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)putBackURLForTrashedItemAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, 0, v7);
}

- (void)setPutBackInfoOnItemAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPNotSupportedError();
  (*(a4 + 2))(v5, v6);
}

- (void)_cancelProvidingItemAtURL:(id)a3 withKey:(id)a4 request:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v12 = [WeakRetained serialQueue];
  dispatch_assert_queue_V2(v12);

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(FPDDomainExtensionBackend *)v13 _cancelProvidingItemAtURL:v14 withKey:v15 request:v16, v17, v18, v19, v20];
  }

  v21 = [(NSMutableDictionary *)self->_provideFileCompletionsByURL objectForKeyedSubscript:v8];
  v22 = [v21 objectForKeyedSubscript:v9];
  if (!v22)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [FPDDomainExtensionBackend _cancelProvidingItemAtURL:v8 withKey:? request:?];
    }

    goto LABEL_10;
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  (v22)[2](v22, v23);

  [v21 setObject:0 forKeyedSubscript:v9];
  if (![v21 count])
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainExtensionBackend _cancelProvidingItemAtURL:withKey:request:];
    }

    [(NSMutableDictionary *)self->_provideFileCompletionsByURL setObject:0 forKeyedSubscript:v8];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke;
    v27[3] = &unk_1E83BE580;
    v28 = v8;
    v25 = [(FPDDomainExtensionBackend *)self evictItemAtURL:v28 evictionReason:3 request:v10 completionHandler:v27];
    v26 = v28;
LABEL_10:
  }
}

void __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_2(a1);
  }
}

- (id)startProvidingItemAtURL:(id)a3 readerID:(id)a4 readingOptions:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7
{
  v85 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v65 = a4;
  v66 = a6;
  v11 = a7;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(FPDDomainExtensionBackend *)v12 startProvidingItemAtURL:v13 readerID:v14 readingOptions:v15 request:v16 completionHandler:v17, v18, v19];
  }

  if (self->_invalidated)
  {
    v20 = FPUserCancelledError();
    v11[2](v11, v20);
    v21 = 0;
    goto LABEL_29;
  }

  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v20 = [WeakRetained serialQueue];

  v23 = objc_loadWeakRetained(&self->_domain);
  v61 = [v23 log];

  v24 = [MEMORY[0x1E69DF068] sharedManager];
  v63 = [v24 currentPersona];

  v80 = 0;
  v64 = [v63 userPersonaUniqueString];
  v25 = objc_loadWeakRetained(&self->_domain);
  v26 = [v25 nsDomain];
  v27 = [v26 personaIdentifier];
  v28 = v27;
  if (v64 == v27)
  {

    v40 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v29 = objc_loadWeakRetained(&self->_domain);
  v30 = [v29 nsDomain];
  v31 = [v30 personaIdentifier];
  v32 = [v64 isEqualToString:v31];

  if ((v32 & 1) == 0 && voucher_process_can_use_arbitrary_personas())
  {
    v79 = 0;
    v33 = [v63 copyCurrentPersonaContextWithError:&v79];
    v34 = v79;
    v35 = v80;
    v80 = v33;

    if (v34)
    {
      v36 = fp_current_or_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:];
      }
    }

    v37 = objc_loadWeakRetained(&self->_domain);
    v38 = [v37 nsDomain];
    v39 = [v38 personaIdentifier];
    v40 = [v63 generateAndRestorePersonaContextWithPersonaUniqueString:v39];

    if (!v40)
    {
      goto LABEL_18;
    }

    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_loadWeakRetained(&self->_domain);
      v42 = [v41 nsDomain];
      v43 = [v42 personaIdentifier];
      *buf = 138412546;
      v82 = v43;
      v83 = 2112;
      v84 = v40;
      _os_log_error_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v40 = 0;
LABEL_18:
  dispatch_assert_queue_V2(v20);
  if (a5 >> 29)
  {
    v11[2](v11, 0);
    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    v44 = [MEMORY[0x1E696B098] valueWithPointer:v21];
    v45 = [(NSMutableDictionary *)self->_provideFileCompletionsByURL objectForKeyedSubscript:v67];
    v46 = [v45 count];
    if (!v45)
    {
      v45 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_provideFileCompletionsByURL setObject:v45 forKeyedSubscript:v67];
    }

    v47 = _Block_copy(v11);
    [v45 setObject:v47 forKeyedSubscript:v44];

    [v21 setCancellable:1];
    objc_initWeak(buf, self);
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke;
    v72[3] = &unk_1E83BE5D0;
    objc_copyWeak(&v78, buf);
    v60 = v11;
    v48 = v20;
    v49 = v20;
    v73 = v49;
    v50 = v61;
    v74 = v50;
    v51 = v67;
    v75 = v51;
    v59 = v44;
    v76 = v59;
    v52 = v66;
    v77 = v52;
    [v21 setCancellationHandler:v72];
    if (v46)
    {
      v53 = fp_current_or_default_log();
      v20 = v48;
      v11 = v60;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:];
      }

      v54 = v21;
    }

    else
    {
      queue = self->_queue;
      v68 = v52;
      v69 = v51;
      v70 = v49;
      v71 = v50;
      fp_dispatch_async_with_logs();
      v56 = v21;

      v20 = v48;
      v11 = v60;
    }

    objc_destroyWeak(&v78);
    objc_destroyWeak(buf);
  }

  _FPRestorePersona();
LABEL_29:

  v57 = *MEMORY[0x1E69E9840];

  return v21;
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2;
  block[3] = &unk_1E83BE5A8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = WeakRetained;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v4 = WeakRetained;
  dispatch_async(v3, block);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fpfs_adopt_log();
  [*(a1 + 40) _cancelProvidingItemAtURL:*(a1 + 48) withKey:*(a1 + 56) request:*(a1 + 64)];
  __fp_pop_log();
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_257(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_257_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:-1.0];
  v11 = *(a1 + 72);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_258;
  v15[3] = &unk_1E83BE620;
  v12 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v18 = v13;
  v19 = v14;
  v20 = *(a1 + 80);
  [v10 startProvidingItemAtURL:v12 readingOptions:v11 completionHandler:v15];
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259;
  block[3] = &unk_1E83BE5F8;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v27 = fpfs_adopt_log();
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 40) fp_shortDescription];
    __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_1(v4, v31, section, v3);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v6 = WeakRetained == 0;

  if (v6)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_4();
    }

    if ([*(*(a1 + 48) + 32) count])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Should not have any open requests"];
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
      }

      v14 = v12;
      __assert_rtn("-[FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainExtensionBackend.m", 433, [v12 UTF8String]);
    }
  }

  else
  {
    v7 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:*(a1 + 40)];
    if (v7)
    {
      [*(*(a1 + 48) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
      if (*(a1 + 56))
      {
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [*(a1 + 40) fp_shortDescription];
          v10 = [*(a1 + 56) fp_prettyDescription];
          __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_2(v9, v10, buf, v8);
        }
      }

      else
      {
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = [*(a1 + 40) fp_shortDescription];
          *buf = 138412290;
          v30 = v16;
          _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_INFO, "[INFO] ✅ item %@ provided", buf, 0xCu);
        }
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [v7 objectEnumerator];
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v17)
      {
        v18 = *v23;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(a1 + 56);
            (*(*(*(&v22 + 1) + 8 * i) + 16))();
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_3();
      }
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();

  v21 = *MEMORY[0x1E69E9840];
}

- (void)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 urlWrapper:(id)a5 options:(unint64_t)a6 bounceOnCollision:(BOOL)a7 request:(id)a8 completionHandler:(id)a9
{
  v12 = a3;
  v13 = a5;
  v14 = a8;
  v15 = a9;
  queue = self->_queue;
  v21 = v14;
  v22 = v12;
  v23 = v15;
  v17 = v15;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  fp_dispatch_async_with_logs();
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:-1.0];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = [*(a1 + 32) nsfpRequest:*(a1 + 40)];
  v16 = *(a1 + 88);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264;
  v18[3] = &unk_1E83BE670;
  v19 = *(a1 + 48);
  v20 = *(a1 + 64);
  v17 = [v10 createItemBasedOnTemplate:v11 fields:v13 contents:v12 options:v14 request:v15 bounce:v16 completionHandler:v18];
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v9 = a6;
  v10 = fp_current_or_default_log();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_1();
    }

    v12 = *(a1 + 40);
    v13 = FPPluginOperationFailedError();
    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)evictItemAtURL:(id)a3 evictionReason:(unsigned int)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  fp_dispatch_async_with_logs();

  return 0;
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:-1.0];
  v11 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266;
  v12[3] = &unk_1E83BE6C0;
  v13 = v11;
  v14 = *(a1 + 56);
  [v10 evictItemAtURL:v13 completionHandler:v12];
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_1();
    }

    v9 = *(a1 + 40);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_2(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)evictItemWithID:(id)a3 evictionReason:(unsigned int)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  fp_dispatch_async_with_logs();
}

void __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_267;
  v15[3] = &unk_1E83BE710;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v17 = v13;
  v15[4] = v14;
  v18 = *(a1 + 64);
  v16 = *(a1 + 48);
  [v10 URLForItemID:v11 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v12 completionHandler:v15];
}

void __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_267(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 || !a3)
  {
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 48) + 16);

    v10();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [a3 url];
    v6 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE6E8;
    v7 = *(a1 + 40);
    v12 = *(a1 + 48);
    v8 = [v4 evictItemAtURL:v5 evictionReason:v6 request:v7 completionHandler:v11];
  }
}

- (void)materializeItemWithID:(id)a3 requestedRange:(_NSRange)a4 request:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPNotSupportedError();
  (*(a6 + 2))(v7, v8);
}

- (void)itemChangedAtURL:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  fp_dispatch_async_with_logs();
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v11 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269;
  v12[3] = &unk_1E83BE760;
  v12[4] = *(a1 + 32);
  v13 = v11;
  [v10 itemChangedAtURL:v13 completionHandler:v12];
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269_cold_1(a1, v3, v4);
    }
  }
}

- (void)URLForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 forBookmarkResolution:(BOOL)a6 request:(id)a7 completionHandler:(id)a8
{
  v11 = a3;
  v12 = a7;
  v13 = a8;
  queue = self->_queue;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  fp_dispatch_async_with_logs();
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270;
  v16[3] = &unk_1E83BE788;
  v14 = v11;
  v15 = *(a1 + 32);
  v17 = v14;
  v18 = v15;
  v19 = *(a1 + 56);
  [v10 URLForItemID:v14 creatingPlaceholderIfMissing:v12 ignoreAlternateContentsURL:v13 completionHandler:v16];
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = fp_current_or_default_log();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_1(a1, v9, v11);
    }

    v12 = *(a1 + 48);
    v13 = FPPluginOperationFailedError();
    (*(v12 + 16))(v12, v13, 0, 0);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_2(v7, a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)itemForItemID:(id)a3 creatingPlaceholderIfMissing:(BOOL)a4 ignoreAlternateContentsURL:(BOOL)a5 request:(id)a6 completionHandler:(id)a7
{
  v10 = a3;
  v11 = a6;
  v12 = a7;
  queue = self->_queue;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  fp_dispatch_async_with_logs();
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) nsfpRequest:*(a1 + 40)];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272;
  v15[3] = &unk_1E83BE7D8;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v16 = v13;
  v17 = v14;
  v18 = *(a1 + 56);
  [v10 itemForItemID:v11 request:v12 completionHandler:v15];
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = fp_current_or_default_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_1(a1, v6, v9);
    }

    v10 = *(a1 + 48);
    v11 = FPPluginOperationFailedError();
    (*(v10 + 16))(v10, v7, v11);

    v7 = v11;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)dumpStateTo:(id)a3 options:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v8)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v14 = [WeakRetained provider];
  v15 = [v14 identifier];
  v16 = [v15 hasPrefix:@"com.apple."];

  if ((v16 & 1) == 0)
  {
LABEL_4:
    v12[2](v12, 0);
  }

  else
  {
    v17 = objc_loadWeakRetained(&self->_domain);
    v18 = [v17 provider];
    v19 = [v18 identifier];
    [v19 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

    queue = self->_queue;
    v21 = v11;
    v22 = v10;
    v23 = v12;
    fp_dispatch_async_with_logs();
  }
}

void __75__FPDDomainExtensionBackend_dumpStateTo_options_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 != 1)
  {
    WeakRetained = objc_loadWeakRetained(v3 + 1);
    v9 = [WeakRetained session];
    v4 = [v9 existingFileProviderProxyWithTimeout:0 onlyAlreadyLifetimeExtended:0 pid:10.0];

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(a1 + 56);
    v11 = FPDomainUnavailableError();
    (*(v10 + 16))(v10, v11);

    goto LABEL_6;
  }

  v4 = [v3 newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:10.0];
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a1 + 48);
  v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [v6 identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__FPDDomainExtensionBackend_dumpStateTo_options_request_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83BE1A8;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  [v4 dumpInternalStateToTermDumper:v5 domainIdentifier:v7 completionHandler:v12];

LABEL_6:
}

void __75__FPDDomainExtensionBackend_dumpStateTo_options_request_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = [v3 fp_isCocoaErrorCode:3072];
    v5 = *(a1 + 32);
    if (v4)
    {
      [*(a1 + 32) write:@"  not dumping extension: not running\n"];
      v6 = v8;
      v8 = 0;
    }

    else
    {
      v6 = [v8 description];
      [v5 write:{@"  can't dump the extension: %@\n", v6}];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  (*(*(a1 + 40) + 16))();
}

- (void)fetchFPCKTelemetryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (*(a3 + 2))(v4, 0, v5);
}

- (void)copyDatabaseToURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPNotSupportedError();
  (*(a4 + 2))(v5, v6);
}

- (void)waitForStabilizationForRequest:(id)a3 mode:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  v12 = v7;
  v13 = v8;
  v10 = v8;
  v11 = v7;
  fp_dispatch_async_with_logs();
}

void __83__FPDDomainExtensionBackend_waitForStabilizationForRequest_mode_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 waitForStabilizationWithCompletionHandler:*(a1 + 48)];
}

- (void)enumerateWithSettings:(id)a3 lifetimeExtender:(id)a4 observer:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  v19 = v10;
  v22 = v13;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  fp_dispatch_async_with_logs();
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) enumeratedItemID];

  if (!v10)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ only enumerating items is supported"];
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDDomainExtensionBackend enumerateWithSettings:lifetimeExtender:observer:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainExtensionBackend.m", 681, [v19 UTF8String]);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v12 = [WeakRetained session];

  if (v12)
  {
    v13 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 48) requestEffectivePID]);
    v14 = [*(a1 + 40) newFileProviderProxyWithRequest:v13];
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) nsfpRequest:v13];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2;
    v21[3] = &unk_1E83BE850;
    v22 = *(a1 + 32);
    v25 = *(a1 + 64);
    v23 = *(a1 + 48);
    v24 = v12;
    [v14 fetchAndStartEnumeratingWithSettings:v16 observer:v15 request:v17 completionHandler:v21];
  }

  else
  {
    v18 = *(a1 + 64);
    v13 = FPDomainUnavailableError();
    (*(v18 + 16))(v18, 0, v13);
  }
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = v6;
    if (!v6)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2_cold_1(a1, v10);
    }

    v11 = *(*(a1 + 56) + 16);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69674B0]);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerator %@", *(a1 + 32)];
    v10 = [v8 initWithConnection:v5 protocol:&unk_1F4C7FA50 orError:0 name:v9 requestPid:0];

    if (*(a1 + 40))
    {
      [*(a1 + 48) registerLifetimeExtensionForObject:?];
    }

    v11 = *(*(a1 + 56) + 16);
  }

  v11();
}

- (void)valuesForAttributes:(id)a3 forURL:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke;
  v18[3] = &unk_1E83BE8F0;
  v22 = v10;
  v23 = v13;
  v19 = v11;
  v20 = self;
  v21 = v12;
  v14 = v10;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  [(FPDDomainExtensionBackend *)self itemIDForURL:v17 requireProviderItemID:0 request:v15 completionHandler:v18];
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 16);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v5;
    v12 = *(a1 + 64);
    fp_dispatch_async_with_logs();
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_304(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2;
  v7[3] = &unk_1E83BE8A0;
  v5 = v3;
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 64);
  [v2 valuesForAttributes:v4 forItemID:v5 completionHandler:v7];
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_2(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (*(a3 + 2))(v4, 0, v5);
}

- (void)wakeForPushWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7 = v4;
  v6 = v4;
  fp_dispatch_async_with_logs();
}

void __62__FPDDomainExtensionBackend_wakeForPushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = +[FPDRequest requestForSelf];
  v3 = [v2 newFileProviderProxyWithRequest:v4];
  [v3 wakeForPushWithCompletionHandler:*(a1 + 40)];
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  fp_dispatch_async_with_logs();
}

void __90__FPDDomainExtensionBackend_fetchOperationServiceOrEndpointWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__FPDDomainExtensionBackend_fetchOperationServiceOrEndpointWithRequest_completionHandler___block_invoke_2;
  v3[3] = &unk_1E83BE918;
  v4 = *(a1 + 48);
  [v2 fetchOperationServiceEndpoint:v3];
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = FPNotSupportedError();
  (*(a4 + 2))(v5, v6);
}

- (void)fetchServicesForItemID:(id)a3 allowRestrictedSources:(BOOL)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  fp_dispatch_async_with_logs();
}

void __101__FPDDomainExtensionBackend_fetchServicesForItemID_allowRestrictedSources_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 fetchServicesForItemID:*(a1 + 48) allowRestrictedSources:*(a1 + 64) completionHandler:*(a1 + 56)];
}

- (void)fetchVendorEndpointWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  fp_dispatch_async_with_logs();
}

void __78__FPDDomainExtensionBackend_fetchVendorEndpointWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 fetchVendorEndpoint:*(a1 + 48)];
}

- (void)reimportItemsBelowItemWithID:(id)a3 markItemDataless:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)bulkItemChanges:(id)a3 changedFields:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  queue = self->_queue;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  fp_dispatch_async_with_logs();
}

void __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE940;
  v7 = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 bulkItemChanges:v4 changedFields:v3 completionHandler:v5];
}

void __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ([v8 count])
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2_cold_1(a1);
    }

LABEL_7:
  }

  (*(*(a1 + 32) + 16))();
}

- (void)trashItemAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  fp_dispatch_async_with_logs();
}

void __70__FPDDomainExtensionBackend_trashItemAtURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 trashItemAtURL:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)movingItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  fp_dispatch_async_with_logs();
}

void __72__FPDDomainExtensionBackend_movingItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:0];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) destinationDirectoryURL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__FPDDomainExtensionBackend_movingItemAtURL_withInfo_completionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE968;
  v6 = *(a1 + 56);
  [v2 movingItemAtURL:v3 requiresProvidingWithDestinationURL:v4 completionHandler:v5];
}

void __72__FPDDomainExtensionBackend_movingItemAtURL_withInfo_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    if ([v5 fp_isFeatureUnsupportedError] && (a2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!a2)
  {
LABEL_4:
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AC10] providingNotRequiredResponseWithSyncRootID:0];
    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AC10] providingRequiredResponse];
LABEL_7:
  v8 = v7;
  (*(v6 + 16))(v6, v7);
}

- (void)workingSetDidChangeWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v6 = [WeakRetained indexer];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__FPDDomainExtensionBackend_workingSetDidChangeWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E83BE990;
    v8 = v4;
    [v6 signalChangesWithCompletionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)getKnownFolderLocations:(unint64_t)a3 request:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  v12 = v8;
  v10 = v8;
  v11 = v7;
  fp_dispatch_async_with_logs();
}

void __79__FPDDomainExtensionBackend_getKnownFolderLocations_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 getKnownFolderLocations:*(a1 + 56) completionHandler:*(a1 + 48)];
}

- (void)resolveConflictAtURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, v7);
}

- (void)listRemoteVersionsOfItemAtURL:(id)a3 includeCachedVersions:(BOOL)a4 request:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = FPNotSupportedError();
  (*(a6 + 2))(v7, 0, MEMORY[0x1E695E0F0], v8);
}

- (void)fetchThumbnailsAtURL:(id)a3 versions:(id)a4 size:(CGSize)a5 perThumbnailCompletionHandler:(id)a6 completionHandler:(id)a7
{
  v8 = a7;
  v9 = FPNotSupportedError();
  (*(a7 + 2))(v8, v9);
}

- (void)hasNonUploadedFilesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = FPNotSupportedError();
  (*(a3 + 2))(v4, 0, v5);
}

- (void)hierarchyForURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = FPNotSupportedError();
  (*(a5 + 2))(v6, MEMORY[0x1E695E0F0], v7);
}

- (void)setAlternateContentsURLWrapper:(id)a3 forDocumentWithURL:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  v19 = v12;
  v20 = v10;
  v21 = v11;
  v22 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  fp_dispatch_async_with_logs();
}

void __105__FPDDomainExtensionBackend_setAlternateContentsURLWrapper_forDocumentWithURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __105__FPDDomainExtensionBackend_setAlternateContentsURLWrapper_forDocumentWithURL_request_completionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE6E8;
  v6 = *(a1 + 64);
  [v2 setAlternateContentsURL:v3 forDocumentWithURL:v4 completionHandler:v5];
}

- (void)fetchAlternateContentsURLWrapperForDocumentWithURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  fp_dispatch_async_with_logs();
}

void __106__FPDDomainExtensionBackend_fetchAlternateContentsURLWrapperForDocumentWithURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__FPDDomainExtensionBackend_fetchAlternateContentsURLWrapperForDocumentWithURL_request_completionHandler___block_invoke_2;
  v4[3] = &unk_1E83BE9E0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 fetchAlternateContentsURLWrapperForURL:v3 completionHandler:v4];
}

- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  fp_dispatch_async_with_logs();
}

void __108__FPDDomainExtensionBackend_didUpdateAlternateContentsDocumentForDocumentWithURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__FPDDomainExtensionBackend_didUpdateAlternateContentsDocumentForDocumentWithURL_request_completionHandler___block_invoke_2;
  v4[3] = &unk_1E83BE040;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 didUpdateAlternateContentsDocumentForDocumentWithURL:v3 completionHandler:v4];
}

- (void)reindexAllItemsWithDropReason:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8 = v5;
  v7 = v5;
  fp_dispatch_async_with_logs();
}

void __77__FPDDomainExtensionBackend_reindexAllItemsWithDropReason_completionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained indexer];

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1[4] + 8));
    v4 = [v6 indexer];
    [v4 signalNeedsReindexFromScratchWithDropReason:a1[6] completionHandler:a1[5]];
  }

  else
  {
    v5 = a1[5];
    v6 = FPNotSupportedError();
    (*(v5 + 16))(v5);
  }
}

- (void)reindexItemsWithIndexReason:(int64_t)a3 identifiers:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  v12 = v8;
  v10 = v7;
  v11 = v8;
  fp_dispatch_async_with_logs();
}

void __87__FPDDomainExtensionBackend_reindexItemsWithIndexReason_identifiers_completionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained indexer];

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1[4] + 8));
    v4 = [v6 indexer];
    [v4 signalNeedsReindexItemsWithIdentifiers:a1[5] indexReason:a1[7] completionHandler:a1[6]];
  }

  else
  {
    v5 = a1[6];
    v6 = FPNotSupportedError();
    (*(v5 + 16))(v5);
  }
}

- (void)triggerFeedbackApprovalRequestForItemURL:(id)a3 domain:(id)a4 uiOnly:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a6;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend triggerFeedbackApprovalRequestForItemURL:domain:uiOnly:completionHandler:];
  }

  v6[2](v6, 0);
}

- (void)launchFeedbackForDomain:(id)a3 itemIdentifier:(id)a4 triggeringError:(id)a5 when:(id)a6 useDiagnostic:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a8;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend launchFeedbackForDomain:itemIdentifier:triggeringError:when:useDiagnostic:completionHandler:];
  }

  v10 = FPNotSupportedError();
  v8[2](v8, v10);
}

- (void)getSavedDiagnostics:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend getSavedDiagnostics:];
  }

  v5 = FPNotSupportedError();
  v3[2](v3, 0, v5);
}

- (void)clearDiagnosticState:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend clearDiagnosticState:];
  }

  v5 = FPNotSupportedError();
  v3[2](v3, v5);
}

- (void)requestDiagnosticCollectionForItemWithID:(id)a3 errorReason:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend requestDiagnosticCollectionForItemWithID:errorReason:completionHandler:];
  }

  v7 = FPNotSupportedError();
  v5[2](v5, v7);
}

- (void)enumerateSearchResultForRequest:(id)a3 lifetimeExtender:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15 = v9;
  v16 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  fp_dispatch_async_with_logs();
}

void __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1[4] + 1);
  v3 = [WeakRetained session];

  if (v3)
  {
    v4 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [a1[5] requestEffectivePID]);
    v5 = [a1[4] newFileProviderProxyWithRequest:v4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2;
    v9[3] = &unk_1E83BEA08;
    v6 = a1[6];
    v13 = a1[7];
    v10 = a1[6];
    v11 = a1[5];
    v12 = v3;
    [v5 enumerateSearchResultForRequest:v6 completionHandler:v9];
  }

  else
  {
    v7 = a1[7];
    v8 = FPDomainUnavailableError();
    v7[2](v7, 0, v8);
  }
}

void __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = v6;
    if (!v6)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    }

    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2_cold_1(v8);
    }

    v9 = *(*(a1 + 56) + 16);
  }

  else
  {
    v8 = -[FPDWrappedSearchEnumeratorProxy initWithTarget:maximumNumberOfResultsPerPage:]([FPDWrappedSearchEnumeratorProxy alloc], "initWithTarget:maximumNumberOfResultsPerPage:", v5, [*(a1 + 32) maximumNumberOfResultsPerPage]);
    if (*(a1 + 40))
    {
      [*(a1 + 48) registerLifetimeExtensionForObject:?];
    }

    v9 = *(*(a1 + 56) + 16);
  }

  v9();
}

void __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_cancelProvidingItemAtURL:(uint64_t)a3 withKey:(uint64_t)a4 request:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_cancelProvidingItemAtURL:withKey:request:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cancelProvidingItemAtURL:(void *)a1 withKey:request:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(a1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)startProvidingItemAtURL:(uint64_t)a3 readerID:(uint64_t)a4 readingOptions:(uint64_t)a5 request:(uint64_t)a6 completionHandler:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_257_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx completion for start providing %@", buf, 0x16u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] ❌ no item provided for %@; %@", buf, 0x16u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) itemID];
  v4 = [v3 identifier];
  v5 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] 🆕✅ Extension successfully created item %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(a1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_2(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a1 url];
  v4 = [v3 fp_shortDescription];
  v5 = *(a2 + 32);
  WeakRetained = objc_loadWeakRetained((*(a2 + 40) + 8));
  v7 = [WeakRetained provider];
  v8 = [v7 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16(&dword_1CEFC7000, v9, v10, "[DEBUG] Successfully retrieved URL %@ for item ID “%@” from extension %@", v11, v12, v13, v14, 2u);

  v15 = *MEMORY[0x1E69E9840];
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_2()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  WeakRetained = objc_loadWeakRetained((*(v0 + 40) + 8));
  v3 = [WeakRetained provider];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_12(v1);
  v3 = [v2 provider];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 138412546;
  v6 = v1;
  OUTLINED_FUNCTION_3_1();
  v7 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] values for %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  *v5 = v1;
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v1, v2, "[ERROR] can't notify extension of item change %lu for items; %@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

void __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end
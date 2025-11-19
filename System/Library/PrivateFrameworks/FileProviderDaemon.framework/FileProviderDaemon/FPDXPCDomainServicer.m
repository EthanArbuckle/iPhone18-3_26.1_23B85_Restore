@interface FPDXPCDomainServicer
- (FPDExtensionSessionProtocol)sessionOrNil;
- (FPDXPCDomainServicer)initWithServer:(id)a3 providerDomainID:(id)a4 domain:(id)a5 connection:(id)a6;
- (id)__providerIfExists;
- (id)description;
- (id)domainOrNil:(unint64_t *)a3;
- (id)newFileProviderProxy;
- (id)providerOrNilWithReason:(unint64_t *)a3;
- (void)_registerLifetimeExtension;
- (void)_t_setFilePresenterObserver:(id)a3;
- (void)_unregisterLifetimeExtension;
- (void)currentMaterializedSetSyncAnchorWithCompletionHandler:(id)a3;
- (void)currentPendingSetSyncAnchorWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)a3 indexReason:(int64_t)a4 completionHandler:(id)a5;
- (void)didChangeItemID:(id)a3 completionHandler:(id)a4;
- (void)enumerateMaterializedSetFromSyncAnchor:(id)a3 suggestedBatchSize:(int64_t)a4 completionHandler:(id)a5;
- (void)enumeratePendingSetFromSyncAnchor:(id)a3 suggestedBatchSize:(int64_t)a4 completionHandler:(id)a5;
- (void)evictItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getDiagnosticAttributesForItems:(id)a3 completionHandler:(id)a4;
- (void)ingestFromCacheItemWithIdentifier:(id)a3 requestedFields:(unint64_t)a4 completionHandler:(id)a5;
- (void)invalidate;
- (void)listAvailableTestingOperationsWithCompletionHandler:(id)a3;
- (void)materializeItemWithIdentifier:(id)a3 requestedRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)reimportItemsBelowItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestDiagnosticCollectionForItemWithIdentifier:(id)a3 errorReason:(id)a4 completionHandler:(id)a5;
- (void)resolveItemID:(id)a3 completionHandler:(id)a4;
- (void)runTestingOperations:(id)a3 completionHandler:(id)a4;
- (void)setDomainEjectable:(BOOL)a3 completionHandler:(id)a4;
- (void)signalErrorResolved:(id)a3 completionHandler:(id)a4;
- (void)startAccessingServiceWithName:(id)a3 itemID:(id)a4 completionHandler:(id)a5;
- (void)startExtendingLifetime;
- (void)stateDirectoryWithCompletionHandler:(id)a3;
- (void)subscribeToDownloadProgressUpdates:(id)a3 completionHandler:(id)a4;
- (void)subscribeToUploadProgressUpdates:(id)a3 completionHandler:(id)a4;
- (void)temporaryDirectoryWithCompletionHandler:(id)a3;
- (void)waitForChangesOnItemsBelowItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)waitForStabilizationWithMode:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation FPDXPCDomainServicer

- (id)__providerIfExists
{
  v2 = self;
  objc_sync_enter(v2);
  provider = v2->__provider;
  if (provider && ![(FPDProvider *)provider invalidated])
  {
    v4 = v2->__provider;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)startExtendingLifetime
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDXPCDomainServicer.m" lineNumber:215 description:@"it's unsupported to call -_startAccessingProviderEndpointForProtocolName:itemURL:completionHandler: twice"];
}

- (void)_registerLifetimeExtension
{
  v3 = [(FPDXPCDomainServicer *)self sessionOrNil];
  [v3 registerLifetimeExtensionForObject:self->_lifetimeExtender];

  self->_isALifetimerExtender = 1;
}

- (FPDExtensionSessionProtocol)sessionOrNil
{
  v2 = [(FPDXPCDomainServicer *)self domainOrNil:0];
  v3 = [v2 session];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSString *)self->_providerDomainID fp_obfuscatedProviderDomainID];
  [(FPDXPCDomainServicer *)self pid];
  v6 = FPExecutableNameForProcessIdentifier();
  v7 = [v3 stringWithFormat:@"<%@:%p:%@> for %@[%d]", v4, self, v5, v6, -[FPDXPCDomainServicer pid](self, "pid")];

  return v7;
}

- (void)_unregisterLifetimeExtension
{
  if (self->_isALifetimerExtender)
  {
    self->_isALifetimerExtender = 0;
    v4 = [(FPDXPCDomainServicer *)self sessionOrNil];
    if (v4)
    {
      v5 = v4;
      [v4 asyncUnregisterLifetimeExtensionForObject:self->_lifetimeExtender];
      v4 = v5;
    }
  }
}

- (void)dealloc
{
  [(FPDXPCDomainServicer *)self invalidate];
  v3.receiver = self;
  v3.super_class = FPDXPCDomainServicer;
  [(FPDXPCDomainServicer *)&v3 dealloc];
}

- (void)invalidate
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] invalidating %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (FPDXPCDomainServicer)initWithServer:(id)a3 providerDomainID:(id)a4 domain:(id)a5 connection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = FPDXPCDomainServicer;
  v14 = [(FPDXPCDomainServicer *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_server, v10);
    objc_storeStrong(&v15->_providerDomainID, a4);
    objc_storeWeak(&v15->_domain, v12);
    v16 = [v12 log];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      log = v15->_log;
      v15->_log = v18;
    }

    else
    {
      log = [v11 fp_obfuscatedProviderDomainID];
      [log UTF8String];
      v20 = fpfs_create_log_for_provider();
      v21 = v15->_log;
      v15->_log = v20;
    }

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("FPDXPCDomainServicer request queue", v22);
    requestQueue = v15->_requestQueue;
    v15->_requestQueue = v23;

    objc_storeWeak(&v15->_connection, v13);
    v25 = objc_opt_new();
    lifetimeExtender = v15->_lifetimeExtender;
    v15->_lifetimeExtender = v25;

    -[FPDXPCDomainServicerLifetimeExtender setRequestEffectivePID:](v15->_lifetimeExtender, "setRequestEffectivePID:", [v13 processIdentifier]);
    v27 = MEMORY[0x1E696AEC0];
    v28 = FPExecutableNameForProcessIdentifier();
    v29 = [v27 stringWithFormat:@"servicer for %@", v28];
    [(FPDXPCDomainServicerLifetimeExtender *)v15->_lifetimeExtender setPrettyDescription:v29];
  }

  return v15;
}

- (id)providerOrNilWithReason:(unint64_t *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(FPDXPCDomainServicer *)v4 __providerIfExists];
  v6 = v5;
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&v4->_server);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&v4->_server);
      v9 = [v8 extensionManager];
      v10 = [(NSString *)v4->_providerDomainID fp_toProviderID];
      v11 = [v9 providerWithIdentifier:v10 reason:a3];
      provider = v4->__provider;
      v4->__provider = v11;
    }

    if (v4->_isALifetimerExtender)
    {
      [(FPDXPCDomainServicer *)v4 _registerLifetimeExtension];
    }

    v6 = v4->__provider;
  }

  v13 = v6;

  objc_sync_exit(v4);

  return v13;
}

- (id)domainOrNil:(unint64_t *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  WeakRetained = objc_loadWeakRetained(&v4->_domain);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&v4->_domain);
    objc_sync_exit(v4);
  }

  else
  {
    objc_sync_exit(v4);

    v7 = [(FPDXPCDomainServicer *)v4 providerOrNilWithReason:a3];
    if (v7)
    {
      v8 = [(NSString *)v4->_providerDomainID fp_toDomainIdentifier];
      v6 = [(FPDXPCDomainServicer *)v7 domainForIdentifier:v8 reason:a3];
    }

    else
    {
      v6 = 0;
    }

    v4 = v7;
  }

  return v6;
}

- (id)newFileProviderProxy
{
  v3 = [(FPDXPCDomainServicer *)self sessionOrNil];
  if (v3)
  {
    v4 = [v3 newFileProviderProxyWithTimeout:-[FPDXPCDomainServicer pid](self pid:{"pid"), 180.0}];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69674B0]);
    providerDomainID = self->_providerDomainID;
    v7 = FPProviderNotFoundError();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (not found)", self->_providerDomainID];
    v4 = [v5 initWithConnection:0 protocol:&unk_1F4C8C390 orError:v7 name:v8 requestPid:{-[FPDXPCDomainServicer pid](self, "pid")}];
  }

  return v4;
}

- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)a3 indexReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSString *)self->_providerDomainID fp_toDomainIdentifier];
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1D0;
  block[4] = self;
  v16 = v8;
  v18 = v9;
  v19 = a4;
  v17 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(requestQueue, block);
}

void __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2;
  v6[3] = &unk_1E83BE1A8;
  v6[4] = *(a1 + 32);
  v5 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 deleteSearchableItemsWithSpotlightDomainIdentifiers:v3 domainIdentifier:v4 indexReason:v5 completionHandler:v6];
}

void __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer deleteSearchableItemsWithSpotlightDomainIdentifiers:indexReason:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)didChangeItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke(uint64_t a1)
{
  v11 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v11];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_241;
    v7[3] = &unk_1E83BE1A8;
    v7[4] = *(a1 + 32);
    v5 = &v8;
    v8 = *(a1 + 48);
    [v2 didChangeItemID:v3 request:v4 completionHandler:v7];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_2;
    v9[3] = &unk_1E83BE1A8;
    v9[4] = *(a1 + 32);
    v5 = &v10;
    v10 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_2(v9, v4);
  }
}

void __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer didChangeItemID:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_241(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer didChangeItemID:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveItemID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = *(a1 + 40);
    v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_242;
    v9[3] = &unk_1E83BE220;
    v9[4] = *(a1 + 32);
    v7 = &v10;
    v10 = *(a1 + 48);
    [v4 URLForItemID:v5 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v6 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v11[4] = *(a1 + 32);
    v7 = &v12;
    v12 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_2(v11, v4);
  }
}

void __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer resolveItemID:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_242(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 80);
  v19 = fpfs_adopt_log();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 40);
    v16 = FPPopLogSectionForBlock();
    v17 = *(a1 + 32);
    v18 = [v8 url];
    *buf = 134219010;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    v24 = 2080;
    v25 = "[FPDXPCDomainServicer resolveItemID:completionHandler:]_block_invoke";
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v7;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v12 = *(a1 + 40);
  v13 = [v8 url];
  (*(v12 + 16))(v12, v13, v7);

  __fp_pop_log();
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setDomainEjectable:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke;
  block[3] = &unk_1E83BE248;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(requestQueue, block);
}

void __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke(uint64_t a1)
{
  v14 = 0;
  v2 = [*(a1 + 32) providerOrNilWithReason:&v14];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) providerDomainID];
    v5 = [v4 fp_toDomainIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_244;
    v10[3] = &unk_1E83BE1A8;
    v6 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v7 = &v11;
    v11 = v6;
    [v2 setEjectable:v3 forDomainIdentifier:v5 completionHandler:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_2;
    v12[3] = &unk_1E83BE1A8;
    v8 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v7 = &v13;
    v13 = v8;
    v9 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_2(v12, v4);
  }
}

void __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer setDomainEjectable:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_244(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained signalProviderChanges];

  v5 = *(*(a1 + 32) + 80);
  v11 = fpfs_adopt_log();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134218754;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCDomainServicer setDomainEjectable:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)ingestFromCacheItemWithIdentifier:(id)a3 requestedFields:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  requestQueue = self->_requestQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke;
  v13[3] = &unk_1E83BE270;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_sync(requestQueue, v13);
}

void __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v28];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E69673A0]);
      v7 = [v3 providerDomainID];
      v8 = [v6 initWithProviderDomainID:v7 itemIdentifier:*(a1 + 40)];

      v9 = [v3 defaultBackend];
      v10 = *(a1 + 56);
      v11 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_248;
      v23[3] = &unk_1E83BE1A8;
      v23[4] = *(a1 + 32);
      v24 = *(a1 + 48);
      [v9 ingestFromCacheItemWithID:v8 requestedFields:v10 request:v11 completionHandler:v23];
    }

    else
    {
      v14 = *(*(a1 + 32) + 80);
      v25 = fpfs_adopt_log();
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 48);
        v20 = FPPopLogSectionForBlock();
        v21 = *(a1 + 32);
        v22 = FPNotSupportedError();
        *buf = 134218754;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        v33 = 2080;
        v34 = "[FPDXPCDomainServicer ingestFromCacheItemWithIdentifier:requestedFields:completionHandler:]_block_invoke";
        v35 = 2112;
        v36 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v16 = *(a1 + 48);
      v17 = FPNotSupportedError();
      (*(v16 + 16))(v16, v17);

      __fp_pop_log();
    }
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2;
    v26[3] = &unk_1E83BE1A8;
    v26[4] = *(a1 + 32);
    v27 = *(a1 + 48);
    v12 = *(*(a1 + 32) + 88);
    v13 = FPProviderNotFoundError();
    __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2(v26, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer ingestFromCacheItemWithIdentifier:requestedFields:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_248(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer ingestFromCacheItemWithIdentifier:requestedFields:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reimportItemsBelowItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69673A0]);
    v4 = [v2 providerDomainID];
    v5 = [v3 initWithProviderDomainID:v4 itemIdentifier:*(a1 + 40)];

    v6 = [v2 defaultBackend];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_249;
    v9[3] = &unk_1E83BE1A8;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    [v6 reimportItemsBelowItemWithID:v5 markItemDataless:0 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    v7 = *(*(a1 + 32) + 88);
    v8 = FPProviderNotFoundError();
    __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(v11, v8);
  }
}

void __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer reimportItemsBelowItemWithIdentifier:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_249(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer reimportItemsBelowItemWithIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)evictItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v14 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v14];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69673A0]);
    v4 = [v2 providerDomainID];
    v5 = [v3 initWithProviderDomainID:v4 itemIdentifier:*(a1 + 40)];

    v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    [v6 setProviderInitiated:1];
    v7 = [v2 defaultBackend];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_250;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v7 evictItemWithID:v5 evictionReason:4 request:v6 completionHandler:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_2;
    v12[3] = &unk_1E83BE1A8;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 88);
    v9 = FPProviderNotFoundError();
    __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_2(v12, v9);
  }
}

void __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer evictItemWithIdentifier:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_250(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer evictItemWithIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)materializeItemWithIdentifier:(id)a3 requestedRange:(_NSRange)a4 completionHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke;
  block[3] = &unk_1E83BE298;
  v16 = v10;
  v17 = location;
  v18 = length;
  block[4] = self;
  v15 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_sync(requestQueue, block);
}

void __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v24];
  if (v2)
  {
    if (*(a1 + 56) == 0x7FFFFFFFFFFFFFFFLL || (fpfs_supports_partial_materialization() & 1) != 0)
    {
      v3 = objc_alloc(MEMORY[0x1E69673A0]);
      v4 = [v2 providerDomainID];
      v5 = [v3 initWithProviderDomainID:v4 itemIdentifier:*(a1 + 40)];

      v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
      [v6 setProviderInitiated:1];
      v7 = [v2 defaultBackend];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_251;
      v19[3] = &unk_1E83BE1A8;
      v19[4] = *(a1 + 32);
      v20 = *(a1 + 48);
      [v7 materializeItemWithID:v5 requestedRange:*(a1 + 56) request:*(a1 + 64) completionHandler:{v6, v19}];
    }

    else
    {
      v10 = *(*(a1 + 32) + 80);
      v21 = fpfs_adopt_log();
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 48);
        v16 = FPPopLogSectionForBlock();
        v17 = *(a1 + 32);
        v18 = FPNotSupportedError();
        *buf = 134218754;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        v29 = 2080;
        v30 = "[FPDXPCDomainServicer materializeItemWithIdentifier:requestedRange:completionHandler:]_block_invoke";
        v31 = 2112;
        v32 = v18;
        _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v12 = *(a1 + 48);
      v13 = FPNotSupportedError();
      (*(v12 + 16))(v12, v13);

      __fp_pop_log();
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_2;
    v22[3] = &unk_1E83BE1A8;
    v22[4] = *(a1 + 32);
    v23 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 88);
    v9 = FPProviderNotFoundError();
    __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_2(v22, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer materializeItemWithIdentifier:requestedRange:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_251(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer materializeItemWithIdentifier:requestedRange:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enumerateMaterializedSetFromSyncAnchor:(id)a3 suggestedBatchSize:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  requestQueue = self->_requestQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke;
  v13[3] = &unk_1E83BE270;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_sync(requestQueue, v13);
}

void __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_252;
    v9[3] = &unk_1E83BE2C0;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = &v10;
    v7 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v4 enumerateMaterializedSetFromSyncAnchor:v5 suggestedBatchSize:v7 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v11[4] = *(a1 + 32);
    v6 = &v12;
    v12 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(v11, v4);
  }
}

void __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134220034;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer enumerateMaterializedSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = MEMORY[0x1E695E0F0];
    v19 = 2112;
    v20 = MEMORY[0x1E695E0F0];
    v21 = 1024;
    v22 = 0;
    v23 = 2112;
    v24 = 0;
    v25 = 2112;
    v26 = 0;
    v27 = 2112;
    v28 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %@, %@, %@", buf, 0x58u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_252(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = *(*(a1 + 32) + 80);
  v24 = fpfs_adopt_log();
  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 40);
    v22 = FPPopLogSectionForBlock();
    v23 = *(a1 + 32);
    *buf = 134220034;
    v26 = v22;
    v27 = 2112;
    v28 = v23;
    v29 = 2080;
    v30 = "[FPDXPCDomainServicer enumerateMaterializedSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke";
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 1024;
    v36 = a4;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    _os_log_debug_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %@, %@, %@", buf, 0x58u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v20 = *MEMORY[0x1E69E9840];
}

- (void)currentMaterializedSetSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(requestQueue, v7);
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_254;
    v9[3] = &unk_1E83BE2E8;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = &v10;
    v10 = v5;
    [v4 currentMaterializedSetSyncAnchorWithCompletionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v7 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v6 = &v12;
    v12 = v7;
    v8 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2(v11, v4);
  }
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    FPPopLogSectionForBlock();
    __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1((a1 + 32));
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_254(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer currentMaterializedSetSyncAnchorWithCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enumeratePendingSetFromSyncAnchor:(id)a3 suggestedBatchSize:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  requestQueue = self->_requestQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke;
  v13[3] = &unk_1E83BE270;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_sync(requestQueue, v13);
}

void __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_256;
    v9[3] = &unk_1E83BE338;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = &v10;
    v7 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v4 enumeratePendingSetFromSyncAnchor:v5 suggestedBatchSize:v7 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v11[4] = *(a1 + 32);
    v6 = &v12;
    v12 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(v11, v4);
  }
}

void __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134220546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer enumeratePendingSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = MEMORY[0x1E695E0F0];
    v19 = 2112;
    v20 = MEMORY[0x1E695E0F0];
    v21 = 1024;
    v22 = 0;
    v23 = 1024;
    v24 = 0;
    v25 = 2048;
    v26 = 0;
    v27 = 2112;
    v28 = 0;
    v29 = 2112;
    v30 = 0;
    v31 = 2112;
    v32 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %{BOOL}d, %lf, %@, %@, %@", buf, 0x68u);
  }

  (*(*(a1 + 40) + 16))(0.0);
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_256(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6, void *a7, void *a8, double a9)
{
  v51 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = *(*(a1 + 32) + 80);
  v28 = fpfs_adopt_log();
  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 40);
    v26 = FPPopLogSectionForBlock();
    v27 = *(a1 + 32);
    *buf = 134220546;
    v30 = v26;
    v31 = 2112;
    v32 = v27;
    v33 = 2080;
    v34 = "[FPDXPCDomainServicer enumeratePendingSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke";
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 1024;
    v40 = a4;
    v41 = 1024;
    v42 = a5;
    v43 = 2048;
    v44 = a9;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = v20;
    v49 = 2112;
    v50 = v21;
    _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %{BOOL}d, %lf, %@, %@, %@", buf, 0x68u);
  }

  (*(*(a1 + 40) + 16))(a9);
  __fp_pop_log();

  v24 = *MEMORY[0x1E69E9840];
}

- (void)currentPendingSetSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(requestQueue, v7);
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_258;
    v9[3] = &unk_1E83BE360;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = &v10;
    v10 = v5;
    [v4 currentPendingSetSyncAnchorWithCompletionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v7 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v6 = &v12;
    v12 = v7;
    v8 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2(v11, v4);
  }
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    FPPopLogSectionForBlock();
    __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1((a1 + 32));
  }

  (*(*(a1 + 40) + 16))(0.0);
  __fp_pop_log();

  v7 = *MEMORY[0x1E69E9840];
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_258(uint64_t a1, int a2, void *a3, double a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *(*(a1 + 32) + 80);
  v14 = fpfs_adopt_log();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    v12 = FPPopLogSectionForBlock();
    v13 = *(a1 + 32);
    *buf = 134219266;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2080;
    v20 = "[FPDXPCDomainServicer currentPendingSetSyncAnchorWithCompletionHandler:]_block_invoke";
    v21 = 1024;
    v22 = a2;
    v23 = 2048;
    v24 = a4;
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %lf, %@", buf, 0x3Au);
  }

  (*(*(a1 + 40) + 16))(a4);
  __fp_pop_log();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)waitForChangesOnItemsBelowItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v25];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v3 defaultBackend];
      v7 = *(a1 + 40);
      v8 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_262;
      v20[3] = &unk_1E83BE1A8;
      v20[4] = *(a1 + 32);
      v21 = *(a1 + 48);
      [v6 waitForChangesOnItemsBelowItemWithIdentifier:v7 request:v8 completionHandler:v20];
    }

    else
    {
      v11 = *(*(a1 + 32) + 80);
      v22 = fpfs_adopt_log();
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 48);
        v17 = FPPopLogSectionForBlock();
        v18 = *(a1 + 32);
        v19 = FPNotSupportedError();
        *buf = 134218754;
        v27 = v17;
        v28 = 2112;
        v29 = v18;
        v30 = 2080;
        v31 = "[FPDXPCDomainServicer waitForChangesOnItemsBelowItemWithIdentifier:completionHandler:]_block_invoke";
        v32 = 2112;
        v33 = v19;
        _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v13 = *(a1 + 48);
      v14 = FPNotSupportedError();
      (*(v13 + 16))(v13, v14);

      __fp_pop_log();
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
    v23[3] = &unk_1E83BE1A8;
    v23[4] = *(a1 + 32);
    v24 = *(a1 + 48);
    v9 = *(*(a1 + 32) + 88);
    v10 = FPProviderNotFoundError();
    __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(v23, v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer waitForChangesOnItemsBelowItemWithIdentifier:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_262(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer waitForChangesOnItemsBelowItemWithIdentifier:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)waitForStabilizationWithMode:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke;
  block[3] = &unk_1E83BE388;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(requestQueue, block);
}

void __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke(uint64_t a1)
{
  v15 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v15];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_263;
    v11[3] = &unk_1E83BE1A8;
    v11[4] = *(a1 + 32);
    v8 = &v12;
    v12 = v6;
    [v4 waitForStabilizationForRequest:v5 mode:v7 completionHandler:v11];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_2;
    v13[3] = &unk_1E83BE1A8;
    v9 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v8 = &v14;
    v14 = v9;
    v10 = *(*(a1 + 32) + 88);
    v4 = FPProviderNotFoundError();
    __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_2(v13, v4);
  }
}

void __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer waitForStabilizationWithMode:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_263(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer waitForStabilizationWithMode:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)signalErrorResolved:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke(id *a1)
{
  v17 = 0;
  v2 = [a1[4] domainOrNil:&v17];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_264;
    block[3] = &unk_1E83BE3B0;
    v11 = v3;
    v5 = a1[5];
    v6 = a1[4];
    v12 = v5;
    v13 = v6;
    v14 = a1[6];
    dispatch_async(v4, block);

    v7 = v11;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2;
    v15[3] = &unk_1E83BE1A8;
    v15[4] = a1[4];
    v16 = a1[6];
    v8 = *(a1[4] + 11);
    v9 = FPProviderNotFoundError();
    __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2(v15, v9);

    v7 = v16;
  }
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer signalErrorResolved:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_264(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultBackend];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) defaultBackend];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2_267;
    v17[3] = &unk_1E83BE1A8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v17[4] = *(a1 + 48);
    v18 = v6;
    [v4 signalErrorResolved:v5 completionHandler:v17];
  }

  else
  {
    v7 = *(*(a1 + 48) + 80);
    v16 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 56);
      v13 = FPPopLogSectionForBlock();
      v14 = *(a1 + 48);
      v15 = FPNotSupportedError();
      *buf = 134218754;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2080;
      v24 = "[FPDXPCDomainServicer signalErrorResolved:completionHandler:]_block_invoke";
      v25 = 2112;
      v26 = v15;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v9 = *(a1 + 56);
    v10 = FPNotSupportedError();
    (*(v9 + 16))(v9, v10);

    __fp_pop_log();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2_267(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer signalErrorResolved:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)temporaryDirectoryWithCompletionHandler:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(requestQueue, v7);
}

void __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v29];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 volume];
    v26 = 0;
    v5 = [v4 temporaryDirectoryURL:v3 error:&v26];
    v6 = v26;

    if (v5)
    {
      v25 = v6;
      v7 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v25];
      v8 = v25;

      v9 = *(*(a1 + 32) + 80);
      v23 = fpfs_adopt_log();
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 40);
        v18 = FPPopLogSectionForBlock();
        v19 = *(a1 + 32);
        *buf = 134219010;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        v34 = 2080;
        v35 = "[FPDXPCDomainServicer temporaryDirectoryWithCompletionHandler:]_block_invoke";
        v36 = 2112;
        v37 = v7;
        v38 = 2112;
        v39 = v8;
        _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();
    }

    else
    {
      v14 = *(*(a1 + 32) + 80);
      v24 = fpfs_adopt_log();
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 40);
        v21 = FPPopLogSectionForBlock();
        v22 = *(a1 + 32);
        *buf = 134219010;
        v31 = v21;
        v32 = 2112;
        v33 = v22;
        v34 = 2080;
        v35 = "[FPDXPCDomainServicer temporaryDirectoryWithCompletionHandler:]_block_invoke";
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = v6;
        _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();

      v8 = v6;
    }
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke_2;
    v27[3] = &unk_1E83BE1A8;
    v11 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v11;
    v12 = *(*(a1 + 32) + 88);
    v13 = FPProviderNotFoundError();
    __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke_2(v27, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer temporaryDirectoryWithCompletionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stateDirectoryWithCompletionHandler:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(requestQueue, v7);
}

void __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v29];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 volume];
    v26 = 0;
    v5 = [v4 stateDirectoryURL:v3 error:&v26];
    v6 = v26;

    if (v5)
    {
      v25 = v6;
      v7 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v25];
      v8 = v25;

      v9 = *(*(a1 + 32) + 80);
      v23 = fpfs_adopt_log();
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 40);
        v18 = FPPopLogSectionForBlock();
        v19 = *(a1 + 32);
        *buf = 134219010;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        v34 = 2080;
        v35 = "[FPDXPCDomainServicer stateDirectoryWithCompletionHandler:]_block_invoke";
        v36 = 2112;
        v37 = v7;
        v38 = 2112;
        v39 = v8;
        _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();
    }

    else
    {
      v14 = *(*(a1 + 32) + 80);
      v24 = fpfs_adopt_log();
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 40);
        v21 = FPPopLogSectionForBlock();
        v22 = *(a1 + 32);
        *buf = 134219010;
        v31 = v21;
        v32 = 2112;
        v33 = v22;
        v34 = 2080;
        v35 = "[FPDXPCDomainServicer stateDirectoryWithCompletionHandler:]_block_invoke";
        v36 = 2112;
        v37 = 0;
        v38 = 2112;
        v39 = v6;
        _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();

      v8 = v6;
    }
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke_2;
    v27[3] = &unk_1E83BE1A8;
    v11 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v11;
    v12 = *(*(a1 + 32) + 88);
    v13 = FPProviderNotFoundError();
    __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke_2(v27, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer stateDirectoryWithCompletionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)listAvailableTestingOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(requestQueue, v7);
}

void __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v42];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v53[0] = *MEMORY[0x1E69675A8];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v5 = [WeakRetained fp_hasOneOfEntitlements:v4 nonSandboxedAccess:0 logLevel:2];

    if (v5)
    {
      v6 = [v2 nsDomain];
      v7 = ([v6 testingModes] & 2) == 0;

      if (v7)
      {
        v8 = *(*(a1 + 32) + 80);
        v39 = fpfs_adopt_log();
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 40);
          v30 = FPPopLogSectionForBlock();
          v31 = *(a1 + 32);
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v44 = v30;
          v45 = 2112;
          v46 = v31;
          v47 = 2080;
          v48 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
          v49 = 2112;
          v50 = 0;
          v51 = 2112;
          v52 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      else
      {
        v20 = [v2 defaultBackend];
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = [v2 defaultBackend];
          v23 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_272;
          v37[3] = &unk_1E83BE3D8;
          v37[4] = *(a1 + 32);
          v38 = *(a1 + 40);
          [v22 listAvailableTestingOperationsWithRequest:v23 completionHandler:v37];

          goto LABEL_11;
        }

        v24 = *(*(a1 + 32) + 80);
        v39 = fpfs_adopt_log();
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 40);
          v34 = FPPopLogSectionForBlock();
          v35 = *(a1 + 32);
          v36 = FPNotSupportedError();
          *buf = 134219010;
          v44 = v34;
          v45 = 2112;
          v46 = v35;
          v47 = 2080;
          v48 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
          v49 = 2112;
          v50 = 0;
          v51 = 2112;
          v52 = v36;
          _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      v10 = *(a1 + 40);
      v11 = FPNotSupportedError();
      (*(v10 + 16))(v10, 0, v11);

      __fp_pop_log();
    }

    else
    {
      v15 = *(*(a1 + 32) + 80);
      v39 = fpfs_adopt_log();
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 40);
        v26 = FPPopLogSectionForBlock();
        v27 = *(a1 + 32);
        v28 = FPNotPermittedError();
        *buf = 134219010;
        v44 = v26;
        v45 = 2112;
        v46 = v27;
        v47 = 2080;
        v48 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
        v49 = 2112;
        v50 = 0;
        v51 = 2112;
        v52 = v28;
        _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v17 = *(a1 + 40);
      v18 = FPNotPermittedError();
      (*(v17 + 16))(v17, 0, v18);

      __fp_pop_log();
    }
  }

  else
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_2;
    v40[3] = &unk_1E83BE1A8;
    v12 = *(a1 + 40);
    v40[4] = *(a1 + 32);
    v41 = v12;
    v13 = *(*(a1 + 32) + 88);
    v14 = FPProviderNotFoundError();
    __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_2(v40, v14);
  }

LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_272(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)runTestingOperations:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v42];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v53[0] = *MEMORY[0x1E69675A8];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v5 = [WeakRetained fp_hasOneOfEntitlements:v4 nonSandboxedAccess:0 logLevel:2];

    if (v5)
    {
      v6 = [v2 nsDomain];
      v7 = ([v6 testingModes] & 2) == 0;

      if (v7)
      {
        v8 = *(*(a1 + 32) + 80);
        v39 = fpfs_adopt_log();
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 48);
          v30 = FPPopLogSectionForBlock();
          v31 = *(a1 + 32);
          v32 = FPNotSupportedError();
          *buf = 134219010;
          v44 = v30;
          v45 = 2112;
          v46 = v31;
          v47 = 2080;
          v48 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
          v49 = 2112;
          v50 = 0;
          v51 = 2112;
          v52 = v32;
          _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      else
      {
        v19 = [v2 defaultBackend];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v21 = [v2 defaultBackend];
          v22 = *(a1 + 40);
          v23 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_276;
          v37[3] = &unk_1E83BE400;
          v37[4] = *(a1 + 32);
          v38 = *(a1 + 48);
          [v21 runTestingOperations:v22 request:v23 completionHandler:v37];

          goto LABEL_11;
        }

        v24 = *(*(a1 + 32) + 80);
        v39 = fpfs_adopt_log();
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 48);
          v34 = FPPopLogSectionForBlock();
          v35 = *(a1 + 32);
          v36 = FPNotSupportedError();
          *buf = 134219010;
          v44 = v34;
          v45 = 2112;
          v46 = v35;
          v47 = 2080;
          v48 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
          v49 = 2112;
          v50 = 0;
          v51 = 2112;
          v52 = v36;
          _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      v10 = *(a1 + 48);
      v11 = FPNotSupportedError();
      (*(v10 + 16))(v10, 0, v11);

      __fp_pop_log();
    }

    else
    {
      v14 = *(*(a1 + 32) + 80);
      v39 = fpfs_adopt_log();
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 48);
        v26 = FPPopLogSectionForBlock();
        v27 = *(a1 + 32);
        v28 = FPNotPermittedError();
        *buf = 134219010;
        v44 = v26;
        v45 = 2112;
        v46 = v27;
        v47 = 2080;
        v48 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
        v49 = 2112;
        v50 = 0;
        v51 = 2112;
        v52 = v28;
        _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v16 = *(a1 + 48);
      v17 = FPNotPermittedError();
      (*(v16 + 16))(v16, 0, v17);

      __fp_pop_log();
    }
  }

  else
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_2;
    v40[3] = &unk_1E83BE1A8;
    v40[4] = *(a1 + 32);
    v41 = *(a1 + 48);
    v12 = *(*(a1 + 32) + 88);
    v13 = FPProviderNotFoundError();
    __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_2(v40, v13);
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_276(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToUploadProgressUpdates:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke(id *a1)
{
  v17 = 0;
  v2 = [a1[4] domainOrNil:&v17];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_278;
    block[3] = &unk_1E83BE3B0;
    v11 = v3;
    v5 = a1[5];
    v6 = a1[4];
    v12 = v5;
    v13 = v6;
    v14 = a1[6];
    dispatch_async(v4, block);

    v7 = v11;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2;
    v15[3] = &unk_1E83BE1A8;
    v15[4] = a1[4];
    v16 = a1[6];
    v8 = *(a1[4] + 11);
    v9 = FPProviderNotFoundError();
    __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2(v15, v9);

    v7 = v16;
  }
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer subscribeToUploadProgressUpdates:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_278(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultBackend];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) defaultBackend];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2_281;
    v17[3] = &unk_1E83BE428;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v17[4] = *(a1 + 48);
    v19 = v6;
    v18 = *(a1 + 40);
    [v4 subscribeToUploadProgressUpdates:v5 completionHandler:v17];
  }

  else
  {
    v7 = *(*(a1 + 48) + 80);
    v16 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 56);
      v13 = FPPopLogSectionForBlock();
      v14 = *(a1 + 48);
      v15 = FPNotSupportedError();
      *buf = 134218754;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2080;
      v25 = "[FPDXPCDomainServicer subscribeToUploadProgressUpdates:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = v15;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v9 = *(a1 + 56);
    v10 = FPNotSupportedError();
    (*(v9 + 16))(v9, v10);

    __fp_pop_log();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2_281(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 80);
    v10 = fpfs_adopt_log();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 48);
      v8 = FPPopLogSectionForBlock();
      v9 = *(a1 + 32);
      *buf = 134218754;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2080;
      v16 = "[FPDXPCDomainServicer subscribeToUploadProgressUpdates:completionHandler:]_block_invoke_2";
      v17 = 2112;
      v18 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToDownloadProgressUpdates:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke(id *a1)
{
  v17 = 0;
  v2 = [a1[4] domainOrNil:&v17];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_282;
    block[3] = &unk_1E83BE3B0;
    v11 = v3;
    v5 = a1[5];
    v6 = a1[4];
    v12 = v5;
    v13 = v6;
    v14 = a1[6];
    dispatch_async(v4, block);

    v7 = v11;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2;
    v15[3] = &unk_1E83BE1A8;
    v15[4] = a1[4];
    v16 = a1[6];
    v8 = *(a1[4] + 11);
    v9 = FPProviderNotFoundError();
    __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2(v15, v9);

    v7 = v16;
  }
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer subscribeToDownloadProgressUpdates:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_282(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultBackend];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) defaultBackend];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2_285;
    v17[3] = &unk_1E83BE428;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v17[4] = *(a1 + 48);
    v19 = v6;
    v18 = *(a1 + 40);
    [v4 subscribeToDownloadProgressUpdates:v5 completionHandler:v17];
  }

  else
  {
    v7 = *(*(a1 + 48) + 80);
    v16 = fpfs_adopt_log();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 56);
      v13 = FPPopLogSectionForBlock();
      v14 = *(a1 + 48);
      v15 = FPNotSupportedError();
      *buf = 134218754;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2080;
      v25 = "[FPDXPCDomainServicer subscribeToDownloadProgressUpdates:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = v15;
      _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v9 = *(a1 + 56);
    v10 = FPNotSupportedError();
    (*(v9 + 16))(v9, v10);

    __fp_pop_log();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2_285(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 80);
    v10 = fpfs_adopt_log();
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 48);
      v8 = FPPopLogSectionForBlock();
      v9 = *(a1 + 32);
      *buf = 134218754;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2080;
      v16 = "[FPDXPCDomainServicer subscribeToDownloadProgressUpdates:completionHandler:]_block_invoke_2";
      v17 = 2112;
      v18 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startAccessingServiceWithName:(id)a3 itemID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  requestQueue = self->_requestQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke;
  v15[3] = &unk_1E83BE4A0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_sync(requestQueue, v15);
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke(uint64_t a1)
{
  v16 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v16];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = *(a1 + 40);
    v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286;
    v10[3] = &unk_1E83BE478;
    v10[4] = *(a1 + 32);
    v7 = &v13;
    v13 = *(a1 + 56);
    v11 = *(a1 + 48);
    v12 = v3;
    [v4 fetchServicesForItemID:v5 allowRestrictedSources:1 request:v6 completionHandler:v10];

    v8 = v11;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_2;
    v14[3] = &unk_1E83BE1A8;
    v14[4] = *(a1 + 32);
    v7 = &v15;
    v15 = *(a1 + 56);
    v9 = *(*(a1 + 32) + 88);
    v8 = FPProviderNotFoundError();
    __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_2(v14, v8);
  }
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219266;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = 0;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v12)
    {
      v13 = *v43;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v42 + 1) + 8 * i) serviceName];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v20 = objc_opt_new();
            [v20 setRequestEffectivePID:{objc_msgSend(*(*(a1 + 32) + 56), "requestEffectivePID")}];
            v21 = MEMORY[0x1E696AEC0];
            v22 = *(a1 + 40);
            [*(*(a1 + 32) + 56) requestEffectivePID];
            v23 = FPExecutableNameForProcessIdentifier();
            v24 = [v21 stringWithFormat:@"service %@ for %@[%u]", v22, v23, objc_msgSend(*(*(a1 + 32) + 56), "requestEffectivePID")];
            [v20 setPrettyDescription:v24];

            v25 = [*(a1 + 48) session];
            objc_initWeak(&location, v25);

            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 3221225472;
            v40[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_294;
            v40[3] = &unk_1E83BE450;
            objc_copyWeak(&v41, &location);
            [v20 setStopBlock:v40];
            if (!v20)
            {
              __assert_rtn("[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke_2", "FPDXPCDomainServicer.m", 701, "extender");
            }

            v26 = [*(a1 + 48) session];
            [v26 registerLifetimeExtensionForObject:v20];

            v27 = *(*(a1 + 32) + 80);
            v39 = fpfs_adopt_log();
            v28 = fp_current_or_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v33 = *(a1 + 56);
              v34 = FPPopLogSectionForBlock();
              v35 = *(a1 + 32);
              *buf = 134219266;
              v49 = v34;
              v50 = 2112;
              v51 = v35;
              v52 = 2080;
              v53 = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke_2";
              v54 = 2112;
              v55 = v7;
              v56 = 2112;
              v57 = v20;
              v58 = 2112;
              v59 = 0;
              _os_log_debug_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
            }

            (*(*(a1 + 56) + 16))();
            __fp_pop_log();

            objc_destroyWeak(&v41);
            objc_destroyWeak(&location);

            goto LABEL_24;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = *(*(a1 + 32) + 80);
    location = fpfs_adopt_log();
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 56);
      FPPopLogSectionForBlock();
      __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286_cold_1((a1 + 32));
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    if (!v9)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286_cold_2(v29);
      }

      v10 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"error"];
    }

    v30 = *(*(a1 + 32) + 80);
    location = fpfs_adopt_log();
    v31 = fp_current_or_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 56);
      v37 = FPPopLogSectionForBlock();
      v38 = *(a1 + 32);
      *buf = 134219266;
      v49 = v37;
      v50 = 2112;
      v51 = v38;
      v52 = 2080;
      v53 = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke";
      v54 = 2112;
      v55 = 0;
      v56 = 2112;
      v57 = 0;
      v58 = 2112;
      v59 = v10;
      _os_log_debug_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

LABEL_24:

  v32 = *MEMORY[0x1E69E9840];
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_294(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterLifetimeExtensionForObject:v3];
}

- (void)getDiagnosticAttributesForItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(requestQueue, block);
}

void __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v34];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v45[0] = *MEMORY[0x1E6967560];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v5 = [WeakRetained fp_hasOneOfEntitlements:v4 nonSandboxedAccess:0 logLevel:2];

    if (v5)
    {
      v6 = [v2 defaultBackend];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [v2 defaultBackend];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_301;
        v29[3] = &unk_1E83BE3D8;
        v9 = *(a1 + 40);
        v29[4] = *(a1 + 32);
        v30 = *(a1 + 48);
        [v8 getDiagnosticAttributesForItems:v9 completionHandler:v29];
      }

      else
      {
        v16 = *(*(a1 + 32) + 80);
        v31 = fpfs_adopt_log();
        v17 = fp_current_or_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 48);
          v26 = FPPopLogSectionForBlock();
          v27 = *(a1 + 32);
          v28 = FPNotSupportedError();
          *buf = 134219010;
          v36 = v26;
          v37 = 2112;
          v38 = v27;
          v39 = 2080;
          v40 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke";
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = v28;
          _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v18 = *(a1 + 48);
        v19 = FPNotSupportedError();
        (*(v18 + 16))(v18, 0, v19);

        __fp_pop_log();
      }
    }

    else
    {
      v12 = *(*(a1 + 32) + 80);
      v31 = fpfs_adopt_log();
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 48);
        v22 = FPPopLogSectionForBlock();
        v23 = *(a1 + 32);
        v24 = FPNotPermittedError();
        *buf = 134219010;
        v36 = v22;
        v37 = 2112;
        v38 = v23;
        v39 = 2080;
        v40 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke";
        v41 = 2112;
        v42 = 0;
        v43 = 2112;
        v44 = v24;
        _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v14 = *(a1 + 48);
      v15 = FPNotPermittedError();
      (*(v14 + 16))(v14, 0, v15);

      __fp_pop_log();
    }
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_2;
    v32[3] = &unk_1E83BE1A8;
    v32[4] = *(a1 + 32);
    v33 = *(a1 + 48);
    v10 = *(*(a1 + 32) + 88);
    v11 = FPProviderNotFoundError();
    __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_2(v32, v11);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = 0;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_301(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  v13 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = FPPopLogSectionForBlock();
    v12 = *(a1 + 32);
    *buf = 134219010;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2080;
    v19 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_t_setFilePresenterObserver:(id)a3
{
  v4 = a3;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(requestQueue, v7);
}

void __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) providerOrNilWithReason:&v12];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(v3 + 48) finishObserving];
    v4 = [v2 domainForIdentifier:*MEMORY[0x1E6967178] reason:0];
    v5 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v4 path:"filePresenters"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke_3;
    v10[3] = &unk_1E83BE4C8;
    v11 = *(a1 + 40);
    v6 = [v5 addObserverBlock:v10];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;
  }

  else
  {
    v9 = *(v3 + 88);
    v4 = FPProviderNotFoundError();
  }
}

void __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = v2;
  v4 = [v2 allValues];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 presentedItemURL];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = fp_current_or_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_error_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_ERROR, "[ERROR] nil presentedItemURL for presenter: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  [*(v13 + 32) observePresentedFilesDidChange:v3];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)requestDiagnosticCollectionForItemWithIdentifier:(id)a3 errorReason:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  requestQueue = self->_requestQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke;
  v9[3] = &unk_1E83BE310;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(requestQueue, v9);
}

void __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v18];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 80);
    v15 = fpfs_adopt_log();
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = FPPopLogSectionForBlock();
      v13 = *(a1 + 32);
      v14 = FPNotSupportedError();
      *buf = 134218754;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2080;
      v24 = "[FPDXPCDomainServicer requestDiagnosticCollectionForItemWithIdentifier:errorReason:completionHandler:]_block_invoke";
      v25 = 2112;
      v26 = v14;
      _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v5 = *(a1 + 40);
    v6 = FPNotSupportedError();
    (*(v5 + 16))(v5, v6);

    __fp_pop_log();
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke_2;
    v16[3] = &unk_1E83BE1A8;
    v7 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v7;
    v8 = *(*(a1 + 32) + 88);
    v9 = FPProviderNotFoundError();
    __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke_2(v16, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v10 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134218754;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer requestDiagnosticCollectionForItemWithIdentifier:errorReason:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();

  v6 = *MEMORY[0x1E69E9840];
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8523e-34, v1, v2, v3);
  *(v4 + 24) = "[FPDXPCDomainServicer currentMaterializedSetSyncAnchorWithCompletionHandler:]_block_invoke_2";
  *(v4 + 32) = v5;
  *(v4 + 34) = 0;
  _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v6, 0x2Au);
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8526e-34, v1, v2, v3);
  *(v4 + 24) = "[FPDXPCDomainServicer currentPendingSetSyncAnchorWithCompletionHandler:]_block_invoke_2";
  *(v4 + 32) = 1024;
  *(v4 + 34) = 0;
  *(v4 + 38) = 2048;
  *(v4 + 40) = 0;
  *(v4 + 48) = v5;
  *(v4 + 50) = 0;
  _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %lf, %@", v6, 0x3Au);
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_3(a1);
  OUTLINED_FUNCTION_0_0(3.8526e-34, v1, v2, v3);
  *(v4 + 24) = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke";
  *(v4 + 32) = v5;
  *(v4 + 34) = 0;
  *(v4 + 42) = v5;
  *(v4 + 44) = 0;
  *(v4 + 52) = v5;
  *(v4 + 54) = 0;
  _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", v6, 0x3Eu);
}

@end
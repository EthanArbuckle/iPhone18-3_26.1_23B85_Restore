@interface FPDCoordinator
+ (id)requestForClaimID:(id)d;
- (FPDCoordinator)initWithExtensionManager:(id)manager callbackQueue:(id)queue;
- (FPDExtensionManager)extensionManager;
- (id)_readingIntentWithURL:(id)l materializeOption:(unint64_t)option;
- (void)coordinateAtURL:(id)l recursively:(BOOL)recursively request:(id)request handler:(id)handler;
- (void)coordinateForCopyingFromURL:(id)l toURL:(id)rL request:(id)request handler:(id)handler;
- (void)coordinateForMovingFromURL:(id)l toURL:(id)rL request:(id)request handler:(id)handler;
- (void)coordinateForMovingFromURL:(id)l toURL:(id)rL toTargetFolderURL:(id)uRL targetMaterializeOption:(unint64_t)option sourceMaterializeOption:(unint64_t)materializeOption request:(id)request handler:(id)handler;
- (void)dealloc;
- (void)resolveItem:(id)item completion:(id)completion;
- (void)resolveItem:(id)item recursively:(BOOL)recursively request:(id)request andCoordinateWithHandler:(id)handler;
- (void)startAccessingURLForAtomDuration:(id)duration;
- (void)stopAccessingAllURLs;
- (void)stopAccessingURL:(id)l;
@end

@implementation FPDCoordinator

- (FPDCoordinator)initWithExtensionManager:(id)manager callbackQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = FPDCoordinator;
  v8 = [(FPDCoordinator *)&v16 init];
  if (v8)
  {
    v9 = objc_opt_new();
    fileCoordinator = v8->_fileCoordinator;
    v8->_fileCoordinator = v9;

    objc_storeStrong(&v8->_callbackQueue, queue);
    v11 = objc_opt_new();
    coordinationQueue = v8->_coordinationQueue;
    v8->_coordinationQueue = v11;

    [(NSOperationQueue *)v8->_coordinationQueue setUnderlyingQueue:queueCopy];
    objc_storeWeak(&v8->_extensionManager, managerCopy);
    v13 = objc_opt_new();
    currentlyAccessedURLs = v8->_currentlyAccessedURLs;
    v8->_currentlyAccessedURLs = v13;
  }

  return v8;
}

- (void)dealloc
{
  v3 = self->_currentlyAccessedURLs;
  objc_sync_enter(v3);
  if ([(NSMutableSet *)self->_currentlyAccessedURLs count])
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FPDCoordinator *)v4 dealloc];
    }

    [(FPDCoordinator *)self stopAccessingAllURLs];
  }

  objc_sync_exit(v3);

  v5.receiver = self;
  v5.super_class = FPDCoordinator;
  [(FPDCoordinator *)&v5 dealloc];
}

- (void)startAccessingURLForAtomDuration:(id)duration
{
  durationCopy = duration;
  v4 = self->_currentlyAccessedURLs;
  objc_sync_enter(v4);
  if ((-[NSMutableSet containsObject:](self->_currentlyAccessedURLs, "containsObject:", durationCopy) & 1) == 0 && [durationCopy startAccessingSecurityScopedResource])
  {
    [(NSMutableSet *)self->_currentlyAccessedURLs addObject:durationCopy];
  }

  objc_sync_exit(v4);
}

- (void)stopAccessingURL:(id)l
{
  lCopy = l;
  v4 = self->_currentlyAccessedURLs;
  objc_sync_enter(v4);
  [lCopy stopAccessingSecurityScopedResource];
  [(NSMutableSet *)self->_currentlyAccessedURLs removeObject:lCopy];
  objc_sync_exit(v4);
}

- (void)stopAccessingAllURLs
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = self->_currentlyAccessedURLs;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_currentlyAccessedURLs;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) stopAccessingSecurityScopedResource];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_currentlyAccessedURLs removeAllObjects];
  objc_sync_exit(v3);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolveItem:(id)item recursively:(BOOL)recursively request:(id)request andCoordinateWithHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__FPDCoordinator_resolveItem_recursively_request_andCoordinateWithHandler___block_invoke;
  v14[3] = &unk_1E83BF478;
  v15 = requestCopy;
  v16 = handlerCopy;
  recursivelyCopy = recursively;
  v14[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  [(FPDCoordinator *)self resolveItem:item completion:v14];
}

void __75__FPDCoordinator_resolveItem_recursively_request_andCoordinateWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    [v6 coordinateAtURL:a2 recursively:*(a1 + 56) request:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v7 = v6[4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__FPDCoordinator_resolveItem_recursively_request_andCoordinateWithHandler___block_invoke_2;
    v8[3] = &unk_1E83BF450;
    v10 = *(a1 + 48);
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

- (void)resolveItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  fileURL = [itemCopy fileURL];

  if (fileURL)
  {
    fileURL2 = [itemCopy fileURL];
    [(FPDCoordinator *)self startAccessingURLForAtomDuration:fileURL2];

    fileURL3 = [itemCopy fileURL];
    completionCopy[2](completionCopy, fileURL3, 0);
  }

  else
  {
    v21 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_extensionManager);
    itemID = [itemCopy itemID];
    fileURL3 = [WeakRetained domainFromItemID:itemID reason:&v21];

    if (fileURL3)
    {
      defaultBackend = [fileURL3 defaultBackend];
      itemID2 = [itemCopy itemID];
      v15 = +[FPDRequest requestForSelf];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __41__FPDCoordinator_resolveItem_completion___block_invoke;
      v18[3] = &unk_1E83BF4C8;
      v18[4] = self;
      v19 = itemCopy;
      v20 = completionCopy;
      [defaultBackend URLForItemID:itemID2 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v15 completionHandler:v18];
    }

    else
    {
      providerDomainID = [itemCopy providerDomainID];
      v17 = FPProviderNotFoundError();
      (completionCopy)[2](completionCopy, 0, v17);
    }
  }
}

void __41__FPDCoordinator_resolveItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPDCoordinator_resolveItem_completion___block_invoke_2;
  block[3] = &unk_1E83BF4A0;
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v15 = v6;
  v16 = v9;
  v17 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __41__FPDCoordinator_resolveItem_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__FPDCoordinator_resolveItem_completion___block_invoke_2_cold_1(a1, v2);
    }

    v4 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = [*(a1 + 48) url];
    [*(a1 + 56) startAccessingURLForAtomDuration:v5];
    (*(*(a1 + 64) + 16))();
  }
}

- (void)coordinateAtURL:(id)l recursively:(BOOL)recursively request:(id)request handler:(id)handler
{
  recursivelyCopy = recursively;
  v32[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  requestCopy = request;
  handlerCopy = handler;
  if (!lCopy)
  {
    [FPDCoordinator coordinateAtURL:a2 recursively:self request:? handler:?];
  }

  if (recursivelyCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [(FPDCoordinator *)self _readingIntentWithURL:lCopy materializeOption:v14];
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FPDCoordinator coordinateAtURL:recursivelyCopy recursively:lCopy request:v16 handler:?];
  }

  _nextClaimIdentifier = [MEMORY[0x1E696ABF8] _nextClaimIdentifier];
  registerClaim(_nextClaimIdentifier, requestCopy);
  fileCoordinator = self->_fileCoordinator;
  v32[0] = v15;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  coordinationQueue = self->_coordinationQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke;
  v26[3] = &unk_1E83BF4F0;
  v27 = _nextClaimIdentifier;
  selfCopy = self;
  v29 = v15;
  v30 = lCopy;
  v31 = handlerCopy;
  v21 = handlerCopy;
  v22 = lCopy;
  v23 = v15;
  v24 = _nextClaimIdentifier;
  [(NSFileCoordinator *)fileCoordinator coordinateAccessWithIntents:v19 queue:coordinationQueue byAccessor:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  unregisterClaim(*(a1 + 32));
  v4 = [*(*(a1 + 40) + 16) retainAccess];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke_2;
  aBlock[3] = &unk_1E83BDE60;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v7 = v4;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  if (v3)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke_cold_1(a1, v3);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = *(a1 + 64);
    v11 = [*(a1 + 48) URL];
    (*(v10 + 16))(v10, v11, 0, v8);
  }
}

uint64_t __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke_2(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke_2_cold_1(a1, v2);
  }

  return [*(*(a1 + 40) + 16) releaseAccess:*(a1 + 48)];
}

- (void)coordinateForCopyingFromURL:(id)l toURL:(id)rL request:(id)request handler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  requestCopy = request;
  v14 = [(FPDCoordinator *)self _readingIntentWithURL:lCopy materializeOption:2];
  v15 = [MEMORY[0x1E696ABF0] writingIntentWithURL:rLCopy options:0];
  _nextClaimIdentifier = [MEMORY[0x1E696ABF8] _nextClaimIdentifier];
  registerClaim(_nextClaimIdentifier, requestCopy);

  fileCoordinator = self->_fileCoordinator;
  v35[0] = v14;
  v35[1] = v15;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  coordinationQueue = self->_coordinationQueue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__FPDCoordinator_coordinateForCopyingFromURL_toURL_request_handler___block_invoke;
  v27[3] = &unk_1E83BF518;
  v28 = _nextClaimIdentifier;
  selfCopy = self;
  v30 = lCopy;
  v31 = rLCopy;
  v33 = v15;
  v34 = handlerCopy;
  v32 = v14;
  v20 = v15;
  v21 = v14;
  v22 = handlerCopy;
  v23 = rLCopy;
  v24 = lCopy;
  v25 = _nextClaimIdentifier;
  [(NSFileCoordinator *)fileCoordinator coordinateAccessWithIntents:v18 queue:coordinationQueue byAccessor:v27];

  v26 = *MEMORY[0x1E69E9840];
}

void __68__FPDCoordinator_coordinateForCopyingFromURL_toURL_request_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  unregisterClaim(*(a1 + 32));
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__FPDCoordinator_coordinateForCopyingFromURL_toURL_request_handler___block_invoke_cold_1(a1, v3);
    }

    v5 = &__block_literal_global_28;
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v6 = [*(*(a1 + 40) + 16) retainAccess];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __68__FPDCoordinator_coordinateForCopyingFromURL_toURL_request_handler___block_invoke_3;
    v14 = &unk_1E83BE158;
    v15 = *(a1 + 40);
    v16 = v6;
    v7 = v6;
    v5 = _Block_copy(&v11);

    v8 = *(a1 + 80);
    v9 = [*(a1 + 64) URL];
    v10 = [*(a1 + 72) URL];
    (*(v8 + 16))(v8, v9, v10, 0, v5);
  }
}

- (id)_readingIntentWithURL:(id)l materializeOption:(unint64_t)option
{
  if (option)
  {
    if (option == 2)
    {
      v5 = 131073;
    }

    else
    {
      v5 = 1;
    }

    v6 = [MEMORY[0x1E696ABF0] readingIntentWithURL:l options:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coordinateForMovingFromURL:(id)l toURL:(id)rL toTargetFolderURL:(id)uRL targetMaterializeOption:(unint64_t)option sourceMaterializeOption:(unint64_t)materializeOption request:(id)request handler:(id)handler
{
  v60 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  handlerCopy = handler;
  requestCopy = request;
  v18 = objc_opt_new();
  v19 = [MEMORY[0x1E696ABF0] writingIntentWithURL:lCopy options:2];
  [v18 addObject:v19];
  v20 = [MEMORY[0x1E696ABF0] writingIntentWithURL:rLCopy options:8];
  [v18 addObject:v20];
  optionCopy = option;
  v22 = [(FPDCoordinator *)self _readingIntentWithURL:uRLCopy materializeOption:option];
  if (v22)
  {
    [v18 addObject:v22];
  }

  v40 = v18;
  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:materializeOption];
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:optionCopy];
    *buf = 138413314;
    v51 = lCopy;
    v52 = 2112;
    v53 = uRLCopy;
    v54 = 2112;
    v55 = v38;
    v56 = 2112;
    v57 = v35;
    v58 = 2048;
    v59 = [v40 count];
    _os_log_debug_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Request to coordinateForMoving %@ to %@; sourceMaterializeOption %@ targetMaterializeOption %@. Intents (%lu)", buf, 0x34u);
  }

  _nextClaimIdentifier = [MEMORY[0x1E696ABF8] _nextClaimIdentifier];
  registerClaim(_nextClaimIdentifier, requestCopy);

  fileCoordinator = self->_fileCoordinator;
  coordinationQueue = self->_coordinationQueue;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __133__FPDCoordinator_coordinateForMovingFromURL_toURL_toTargetFolderURL_targetMaterializeOption_sourceMaterializeOption_request_handler___block_invoke;
  v41[3] = &unk_1E83BF540;
  v42 = _nextClaimIdentifier;
  v43 = lCopy;
  v44 = rLCopy;
  v45 = uRLCopy;
  v46 = v19;
  v47 = v20;
  v48 = v22;
  v49 = handlerCopy;
  v37 = v22;
  v27 = v20;
  v28 = v19;
  v29 = handlerCopy;
  v30 = uRLCopy;
  v31 = rLCopy;
  v32 = lCopy;
  v33 = _nextClaimIdentifier;
  [(NSFileCoordinator *)fileCoordinator coordinateAccessWithIntents:v40 queue:coordinationQueue byAccessor:v41];

  v34 = *MEMORY[0x1E69E9840];
}

void __133__FPDCoordinator_coordinateForMovingFromURL_toURL_toTargetFolderURL_targetMaterializeOption_sourceMaterializeOption_request_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  unregisterClaim(*(a1 + 32));
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __133__FPDCoordinator_coordinateForMovingFromURL_toURL_toTargetFolderURL_targetMaterializeOption_sourceMaterializeOption_request_handler___block_invoke_cold_1(a1, v3);
    }

    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v5 = *(a1 + 88);
    v6 = [*(a1 + 64) URL];
    v7 = [*(a1 + 72) URL];
    v8 = [*(a1 + 80) URL];
    (*(v5 + 16))(v5, v6, v7, v8, 0);
  }
}

- (void)coordinateForMovingFromURL:(id)l toURL:(id)rL request:(id)request handler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v13 = MEMORY[0x1E696ABF0];
  requestCopy = request;
  v15 = [v13 writingIntentWithURL:lCopy options:2];
  v16 = [MEMORY[0x1E696ABF0] writingIntentWithURL:rLCopy options:8];
  _nextClaimIdentifier = [MEMORY[0x1E696ABF8] _nextClaimIdentifier];
  registerClaim(_nextClaimIdentifier, requestCopy);

  fileCoordinator = self->_fileCoordinator;
  v35[0] = v15;
  v35[1] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  coordinationQueue = self->_coordinationQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__FPDCoordinator_coordinateForMovingFromURL_toURL_request_handler___block_invoke;
  v28[3] = &unk_1E83BF568;
  v29 = _nextClaimIdentifier;
  v30 = lCopy;
  v31 = rLCopy;
  v32 = v15;
  v33 = v16;
  v34 = handlerCopy;
  v21 = v16;
  v22 = v15;
  v23 = handlerCopy;
  v24 = rLCopy;
  v25 = lCopy;
  v26 = _nextClaimIdentifier;
  [(NSFileCoordinator *)fileCoordinator coordinateAccessWithIntents:v19 queue:coordinationQueue byAccessor:v28];

  v27 = *MEMORY[0x1E69E9840];
}

void __67__FPDCoordinator_coordinateForMovingFromURL_toURL_request_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  unregisterClaim(*(a1 + 32));
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__FPDCoordinator_coordinateForMovingFromURL_toURL_request_handler___block_invoke_cold_1(a1, v3);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = [*(a1 + 56) URL];
    v7 = [*(a1 + 64) URL];
    (*(v5 + 16))(v5, v6, v7, 0);
  }
}

+ (id)requestForClaimID:(id)d
{
  dCopy = d;
  if (initRequestDictionary_onceToken != -1)
  {
    registerClaim_cold_1();
  }

  v4 = requestPerClaimID;
  objc_sync_enter(v4);
  v5 = [requestPerClaimID objectForKeyedSubscript:dCopy];
  objc_sync_exit(v4);

  return v5;
}

- (FPDExtensionManager)extensionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionManager);

  return WeakRetained;
}

void __41__FPDCoordinator_resolveItem_completion___block_invoke_2_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)coordinateAtURL:(uint64_t)a1 recursively:(uint64_t)a2 request:handler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDCoordinator.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"url"}];
}

- (void)coordinateAtURL:(os_log_t)log recursively:request:handler:.cold.2(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = @"yes";
  if ((a1 & 1) == 0)
  {
    v3 = @"no";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDCoordinator, going to materialize recursively ? %@ readURL %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 56) fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __62__FPDCoordinator_coordinateAtURL_recursively_request_handler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPDCoordinator: Releasing file coordinator for intent %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __68__FPDCoordinator_coordinateForCopyingFromURL_toURL_request_handler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __133__FPDCoordinator_coordinateForMovingFromURL_toURL_toTargetFolderURL_targetMaterializeOption_sourceMaterializeOption_request_handler___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);

  v11 = *MEMORY[0x1E69E9840];
}

void __67__FPDCoordinator_coordinateForMovingFromURL_toURL_request_handler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

@end
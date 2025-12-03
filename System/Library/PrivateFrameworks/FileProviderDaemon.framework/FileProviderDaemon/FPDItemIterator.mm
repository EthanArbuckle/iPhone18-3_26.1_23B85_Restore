@interface FPDItemIterator
- (BOOL)_createEnumerator;
- (BOOL)_enumerateMoreItems;
- (BOOL)_shouldTraverseSubTree:(id)tree;
- (FPDItemIterator)initWithItem:(id)item provider:(id)provider;
- (id)_popItem;
- (id)nextWithError:(id *)error;
- (void)_createEnumerator;
- (void)_decorateItem:(id)item;
- (void)_enumerateMoreItems;
- (void)_invalidateWithError:(id)error;
- (void)_next;
- (void)_popFolder;
- (void)_pushFolder:(id)folder;
- (void)dealloc;
@end

@implementation FPDItemIterator

- (FPDItemIterator)initWithItem:(id)item provider:(id)provider
{
  itemCopy = item;
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = FPDItemIterator;
  v8 = [(FPDItemIterator *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_provider, providerCopy);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("FileProvider.provider-iterator", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    v13 = objc_opt_new();
    remainingItemsByDepth = v9->_remainingItemsByDepth;
    v9->_remainingItemsByDepth = v13;

    v15 = objc_opt_new();
    enumeratorByDepth = v9->_enumeratorByDepth;
    v9->_enumeratorByDepth = v15;

    v17 = v9->_enumeratorByDepth;
    v18 = objc_opt_new();
    [(NSMutableArray *)v17 addObject:v18];

    v19 = v9->_remainingItemsByDepth;
    v20 = [MEMORY[0x1E695DF70] arrayWithObject:itemCopy];
    [(NSMutableArray *)v19 addObject:v20];

    WeakRetained = objc_loadWeakRetained(&v9->_provider);
    domainIdentifier = [itemCopy domainIdentifier];
    v23 = [WeakRetained domainForIdentifier:domainIdentifier reason:0];
    objc_storeWeak(&v9->_domain, v23);

    v24 = objc_loadWeakRetained(&v9->_domain);
    session = [v24 session];
    [session registerLifetimeExtensionForObject:v9];
  }

  return v9;
}

- (void)_popFolder
{
  v9 = *MEMORY[0x1E69E9840];
  lastObject = [*(self + 64) lastObject];
  parentItem = [lastObject parentItem];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_pushFolder:(id)folder
{
  folderCopy = folder;
  v7 = objc_opt_new();
  [v7 setParentItem:folderCopy];

  [v7 setEnumerator:0];
  [v7 setNextPage:0];
  [(NSMutableArray *)self->_enumeratorByDepth addObject:v7];
  remainingItemsByDepth = self->_remainingItemsByDepth;
  v6 = objc_opt_new();
  [(NSMutableArray *)remainingItemsByDepth addObject:v6];
}

- (id)_popItem
{
  lastObject = [(NSMutableArray *)self->_remainingItemsByDepth lastObject];
  v4 = [lastObject objectAtIndexedSubscript:0];

  lastObject2 = [(NSMutableArray *)self->_remainingItemsByDepth lastObject];
  [lastObject2 removeObjectAtIndex:0];

  [(FPDItemIterator *)self _decorateItem:v4];

  return v4;
}

- (BOOL)_createEnumerator
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  lastObject = [(NSMutableArray *)self->_enumeratorByDepth lastObject];
  parentItem = [lastObject parentItem];
  providerItemID = [parentItem providerItemID];
  [v3 setEnumeratedItemID:providerItemID];

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__1;
  v45 = __Block_byref_object_dispose__1;
  v46 = 0;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    enumeratedItemID = [v3 enumeratedItemID];
    [(FPDItemIterator *)enumeratedItemID _createEnumerator];
  }

  enumeratedItemID2 = [v3 enumeratedItemID];
  v10 = enumeratedItemID2 == 0;

  if (v10)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ only enumerating items is supported"];
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v30 = v28;
    __assert_rtn("-[FPDItemIterator _createEnumerator]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDItemIterator.m", 127, [v28 UTF8String]);
  }

  enumeratedItemID3 = [v3 enumeratedItemID];
  domainIdentifier = [enumeratedItemID3 domainIdentifier];

  v40 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v14 = [WeakRetained domainForIdentifier:domainIdentifier reason:&v40];

  if (!v14)
  {
    v15 = FPProviderNotFoundError();
    v16 = v42[5];
    v42[5] = v15;
  }

  session = [v14 session];
  v18 = [session newFileProviderProxyWithTimeout:0 pid:180.0];
  synchronousRemoteObjectProxy = [v18 synchronousRemoteObjectProxy];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __36__FPDItemIterator__createEnumerator__block_invoke;
  v34 = &unk_1E83BEE98;
  v38 = &v41;
  v20 = v3;
  v35 = v20;
  v39 = &v47;
  v21 = v14;
  v36 = v21;
  selfCopy = self;
  [synchronousRemoteObjectProxy fetchAndStartEnumeratingWithSettings:v20 observer:self request:0 completionHandler:&v31];

  v22 = v42[5];
  v23 = v48[5];
  if (v22)
  {
    if (v23)
    {
LABEL_14:
      [(FPDItemIterator *)self _invalidateWithError:v22, v31, v32, v33, v34, v35];
      v24 = 0;
      goto LABEL_15;
    }

LABEL_11:
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [(FPDItemIterator *)v25 _createEnumerator];
    }

    v22 = v42[5];
    goto LABEL_14;
  }

  if (!v23)
  {
    goto LABEL_11;
  }

  [lastObject setEnumerator:{v48[5], v31, v32, v33, v34, v35}];
  [lastObject setNextPage:*MEMORY[0x1E6967208]];
  v24 = 1;
LABEL_15:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

void __36__FPDItemIterator__createEnumerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:v5 protocol:&unk_1F4C7FA50 orError:0 name:@"item iterator" requestPid:0];
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
      v11 = v8;

      v12 = [*(a1 + 40) session];
      [v12 registerLifetimeExtensionForObject:*(a1 + 48)];

      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __36__FPDItemIterator__createEnumerator__block_invoke_cold_1(a1, a1 + 56);
  }

LABEL_8:
}

- (BOOL)_enumerateMoreItems
{
  lastObject = [(NSMutableArray *)self->_remainingItemsByDepth lastObject];
  v4 = [lastObject count];

  if (v4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ still have items to process"];
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDItemIterator _enumerateMoreItems]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDItemIterator.m", 178, [v16 UTF8String]);
  }

  if ([(NSMutableArray *)self->_enumeratorByDepth count]== 1)
  {
    return 0;
  }

  lastObject2 = [(NSMutableArray *)self->_enumeratorByDepth lastObject];
  enumerator = [lastObject2 enumerator];

  if (!enumerator && ![(FPDItemIterator *)self _createEnumerator])
  {
    return 0;
  }

  lastObject3 = [(NSMutableArray *)self->_enumeratorByDepth lastObject];
  nextPage = [lastObject3 nextPage];

  if (nextPage)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(FPDItemIterator *)lastObject3 _enumerateMoreItems];
    }

    enumerator2 = [lastObject3 enumerator];
    v12 = enumerator2;
    if (enumerator2)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__1;
      v36 = __Block_byref_object_dispose__1;
      v37 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__1;
      v30 = __Block_byref_object_dispose__1;
      v31 = 0;
      synchronousRemoteObjectProxy = [enumerator2 synchronousRemoteObjectProxy];
      nextPage2 = [lastObject3 nextPage];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __38__FPDItemIterator__enumerateMoreItems__block_invoke;
      v21 = &unk_1E83BEEE8;
      v24 = &v32;
      selfCopy = self;
      v23 = lastObject3;
      v25 = &v26;
      [synchronousRemoteObjectProxy enumerateItemsFromPage:nextPage2 suggestedPageSize:200 reply:&v18];

      if (v33[5])
      {
        [(FPDItemIterator *)self _invalidateWithError:v18, v19, v20, v21, selfCopy];
        v5 = 0;
      }

      else
      {
        v5 = v27[5] != 0;
      }

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v32, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __38__FPDItemIterator__enumerateMoreItems__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a6);
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __38__FPDItemIterator__enumerateMoreItems__block_invoke_cold_1();
    }
  }

  else
  {
    if (v11)
    {
      v17 = [*(*(a1 + 32) + 72) lastObject];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __38__FPDItemIterator__enumerateMoreItems__block_invoke_94;
      v20[3] = &unk_1E83BEEC0;
      v21 = *(a1 + 40);
      v18 = [v11 fp_filter:v20];
      [v17 addObjectsFromArray:v18];
    }

    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __38__FPDItemIterator__enumerateMoreItems__block_invoke_cold_2(v11);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    [*(a1 + 40) setNextPage:v12];
  }
}

uint64_t __38__FPDItemIterator__enumerateMoreItems__block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 parentItemID];
  v5 = [*(a1 + 32) parentItem];
  v6 = [v5 providerItemID];
  if ([v4 isEqual:v6])
  {
    v7 = [v3 providerItemID];
    v8 = [*(a1 + 32) parentItem];
    v9 = [v8 providerItemID];
    v10 = [v7 isEqual:v9] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_decorateItem:(id)item
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (-[FPDIterator shouldDecorateItems](self, "shouldDecorateItems") || [itemCopy isFolder] && -[FPDIterator skipMaterializedTreeTraversal](self, "skipMaterializedTreeTraversal"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    defaultBackend = [WeakRetained defaultBackend];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [FPDItemIterator _decorateItem:itemCopy];
      }

      v10 = objc_loadWeakRetained(&self->_domain);
      defaultBackend2 = [v10 defaultBackend];
      v18[0] = itemCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __33__FPDItemIterator__decorateItem___block_invoke;
      v15[3] = &unk_1E83BEF10;
      v16 = itemCopy;
      v17 = v8;
      v13 = v8;
      [defaultBackend2 decorateItems:v12 completionHandler:v15];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __33__FPDItemIterator__decorateItem___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__FPDItemIterator__decorateItem___block_invoke_cold_1(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_shouldTraverseSubTree:(id)tree
{
  treeCopy = tree;
  if ([(FPDIterator *)self skipMaterializedTreeTraversal])
  {
    v5 = [treeCopy isRecursivelyDownloaded] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  lastObject = [(NSMutableArray *)self->_enumeratorByDepth lastObject];
  parentItem = [lastObject parentItem];
  itemIdentifier = [parentItem itemIdentifier];
  itemIdentifier2 = [treeCopy itemIdentifier];
  if ([itemIdentifier isEqual:itemIdentifier2])
  {
    v10 = 0;
  }

  else
  {
    lastObject2 = [(NSMutableArray *)self->_enumeratorByDepth lastObject];
    parentItem2 = [lastObject2 parentItem];
    [parentItem2 formerIdentifier];
    v13 = v17 = v5;
    itemIdentifier3 = [treeCopy itemIdentifier];
    v15 = [v13 isEqual:itemIdentifier3];

    v10 = (v15 ^ 1) & v17;
  }

  return v10 & 1;
}

- (void)_next
{
  v7 = *MEMORY[0x1E69E9840];
  [*(self + 72) count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)nextWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__FPDItemIterator_nextWithError___block_invoke;
  v8[3] = &unk_1E83BEF38;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  v8[7] = a2;
  dispatch_sync(queue, v8);
  v5 = v16[5];
  if (error && !v5)
  {
    *error = v10[5];
    v5 = v16[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __33__FPDItemIterator_nextWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _next];
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(*(a1 + 32) + 56);
    v6 = *(*(a1 + 48) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    if (!*(v2 + 32) && (*(v2 + 48) & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ invalid state"];
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDItemIterator nextWithError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDItemIterator.m", 352, [v11 UTF8String]);
    }

    v9 = [MEMORY[0x1E69672A8] locatorForItem:?];
    v10 = *(*(a1 + 40) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_done)
  {
    if (errorCopy)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(FPDItemIterator *)errorCopy _invalidateWithError:?];
      }
    }

    objc_storeStrong(&self->_error, error);
    current = self->_current;
    self->_current = 0;

    self->_done = 1;
    while (1)
    {
      lastObject = [(NSMutableArray *)self->_enumeratorByDepth lastObject];

      if (!lastObject)
      {
        break;
      }

      lastObject2 = [(NSMutableArray *)self->_enumeratorByDepth lastObject];
      enumerator = [lastObject2 enumerator];
      [enumerator invalidate];

      [(NSMutableArray *)self->_enumeratorByDepth removeLastObject];
    }

    [(NSMutableArray *)self->_remainingItemsByDepth removeAllObjects];
    [(NSMutableArray *)self->_enumeratorByDepth removeAllObjects];
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    session = [WeakRetained session];
    [session unregisterLifetimeExtensionForObject:self];

    objc_storeWeak(&self->_provider, 0);
  }
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__FPDItemIterator_dealloc__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = FPDItemIterator;
  [(FPDItemIterator *)&v4 dealloc];
}

- (void)_createEnumerator
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] iterator: creating enumerator for %@", buf, 0xCu);
}

void __36__FPDItemIterator__createEnumerator__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(*a2 + 8) + 40) fp_prettyDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v4, v5, "[ERROR] couldn't get enumerator for %@ from extension: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateMoreItems
{
  v10 = *MEMORY[0x1E69E9840];
  parentItem = [self parentItem];
  itemID = [parentItem itemID];
  nextPage = [self nextPage];
  v8 = 138412546;
  v9 = itemID;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] iterator: enumerating more items starting in %@ starting at %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __38__FPDItemIterator__enumerateMoreItems__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] iterator: failed with %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __38__FPDItemIterator__enumerateMoreItems__block_invoke_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_decorateItem:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 isDownloaded];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __33__FPDItemIterator__decorateItem___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) isDownloaded];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a2 + 64) firstObject];
  v3 = [v2 parentItem];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v4, v5, "[ERROR] invalidating iterator of %@ with error: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

@end
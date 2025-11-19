@interface DOCNodeThumbnail
- (BOOL)hasFinishedTryingToFetchCorrectThumbnail;
- (BOOL)isLoading;
- (BOOL)isRepresentativeIcon;
- (BOOL)registerGenerationCompletionHandler:(id)a3;
- (CGSize)size;
- (DOCNodeThumbnail)initWithGenerator:(id)a3 node:(id)a4 descriptor:(id)a5 fallback:(id)a6;
- (DOCThumbnailGenerator)generator;
- (UIImage)thumbnail;
- (id)averageColorInRect:(CGRect)a3;
- (void)_callGenerationCompletionHandlers;
- (void)_cancelCurrentRequest;
- (void)_fetchThumbnailWithOptions:(unint64_t)a3;
- (void)_notifyListeners;
- (void)addListener:(id)a3;
- (void)fetchWithOptions:(unint64_t)a3;
- (void)removeListener:(id)a3;
- (void)scheduleUpdateIfNeeded;
- (void)setFallback:(id)a3;
- (void)setNeedsUpdate;
- (void)thumbnailLoaded:(id)a3;
- (void)thumbnailOperationDidLoadThumbnail:(id)a3 representativeIcon:(BOOL)a4;
- (void)thumbnailOperationFailedToLoadThumbnail;
- (void)updateNodeThumbnailIdentifierTo:(id)a3;
@end

@implementation DOCNodeThumbnail

- (DOCNodeThumbnail)initWithGenerator:(id)a3 node:(id)a4 descriptor:(id)a5 fallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = DOCNodeThumbnail;
  v14 = [(DOCNodeThumbnail *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_generator, v10);
    objc_storeStrong(&v15->_descriptor, a5);
    objc_storeStrong(&v15->_fallback, a6);
    *&v15->_representativeIcon = 0;
    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v15->_listeners;
    v15->_listeners = v16;

    objc_storeStrong(&v15->_node, a4);
    v18 = [v11 thumbnailIdentifier];
    nodeThumbnailIdentifier = v15->_nodeThumbnailIdentifier;
    v15->_nodeThumbnailIdentifier = v18;

    v20 = objc_opt_new();
    generationCompletionHandlers = v15->_generationCompletionHandlers;
    v15->_generationCompletionHandlers = v20;

    [(DOCThumbnail *)v15->_fallback addListener:v15];
  }

  return v15;
}

- (CGSize)size
{
  [(DOCThumbnailDescriptor *)self->_descriptor size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setFallback:(id)a3
{
  v8 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_fallback == v8)
  {
    objc_sync_exit(v5);
  }

  else
  {
    v6 = [(DOCNodeThumbnail *)v5 fallback];
    [v6 removeListener:v5];

    objc_storeStrong(&v5->_fallback, a3);
    v7 = [(DOCNodeThumbnail *)v5 fallback];
    [v7 addListener:v5];

    objc_sync_exit(v5);
    [(DOCNodeThumbnail *)v5 thumbnailLoaded:v8];
  }
}

- (void)setNeedsUpdate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_needsUpdate = 1;
  objc_sync_exit(obj);
}

- (BOOL)isLoading
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DOCNodeThumbnail *)v2 currentRequest];

  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(DOCNodeThumbnail *)v2 thumbnailImage];

    if (v5)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = [(DOCNodeThumbnail *)v2 fallback];
      v4 = [v6 isLoading];
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)isRepresentativeIcon
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DOCNodeThumbnail *)v2 thumbnailImage];

  if (v3)
  {
    LOBYTE(v4) = v2->_representativeIcon;
    objc_sync_exit(v2);
  }

  else
  {
    v5 = [(DOCNodeThumbnail *)v2 fallback];
    objc_sync_exit(v2);

    v4 = [(DOCNodeThumbnail *)v5 isRepresentativeIcon];
    v2 = v5;
  }

  return v4 & 1;
}

- (id)averageColorInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(DOCNodeThumbnail *)self isRepresentativeIcon])
  {
    v8 = [(DOCNodeThumbnail *)self thumbnail];
    v9 = [v8 doc_averageColorInRect:{x, y, width, height}];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] whiteColor];
  }

  return v9;
}

- (void)addListener:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(DOCNodeThumbnail *)self listeners];
    objc_sync_enter(v5);
    v6 = [(DOCNodeThumbnail *)self listeners];
    [v6 addObject:v7];

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (void)removeListener:(id)a3
{
  v8 = a3;
  v4 = [(DOCNodeThumbnail *)self listeners];
  objc_sync_enter(v4);
  if (v8)
  {
    v5 = [(DOCNodeThumbnail *)self listeners];
    [v5 removeObject:v8];
  }

  v6 = [(DOCNodeThumbnail *)self listeners];
  v7 = [v6 count];

  objc_sync_exit(v4);
  if (!v7)
  {
    [(DOCNodeThumbnail *)self _cancelCurrentRequest];
  }
}

- (BOOL)hasFinishedTryingToFetchCorrectThumbnail
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DOCNodeThumbnail *)v2 currentRequest];
  v4 = v3 == 0;

  objc_sync_exit(v2);
  return v4;
}

- (UIImage)thumbnail
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DOCNodeThumbnail *)v2 thumbnailImage];
  if (v3)
  {
    objc_sync_exit(v2);
    v4 = v2;
  }

  else
  {
    v4 = [(DOCNodeThumbnail *)v2 fallback];
    objc_sync_exit(v2);

    v3 = [v4 thumbnail];
  }

  [(DOCNodeThumbnail *)v2 scheduleUpdateIfNeeded];
  v5 = [(DOCNodeThumbnail *)v2 generator];
  [v5 markThumbnailAsRecentlyUsed:v2];

  return v3;
}

- (void)thumbnailLoaded:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DOCNodeThumbnail *)v4 thumbnailImage];

  objc_sync_exit(v4);
  if (!v5)
  {
    [(DOCNodeThumbnail *)v4 _notifyListeners];
  }
}

- (void)thumbnailOperationDidLoadThumbnail:(id)a3 representativeIcon:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v7->_representativeIcon = a4;
  currentRequest = v7->_currentRequest;
  v7->_currentRequest = 0;

  [(DOCNodeThumbnail *)v7 _callGenerationCompletionHandlers];
  thumbnailImage = v7->_thumbnailImage;
  v7->_thumbnailImage = v6;
  v10 = v6;

  objc_sync_exit(v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__DOCNodeThumbnail_thumbnailOperationDidLoadThumbnail_representativeIcon___block_invoke;
  block[3] = &unk_278FB38C0;
  block[4] = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)thumbnailOperationFailedToLoadThumbnail
{
  obj = self;
  objc_sync_enter(obj);
  currentRequest = obj->_currentRequest;
  obj->_currentRequest = 0;

  [(DOCNodeThumbnail *)obj _callGenerationCompletionHandlers];
  [(DOCNodeThumbnail *)obj setNeedsUpdate];
  objc_sync_exit(obj);
}

- (void)fetchWithOptions:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  [(DOCNodeThumbnail *)obj _fetchThumbnailWithOptions:a3];
  objc_sync_exit(obj);
}

- (void)_fetchThumbnailWithOptions:(unint64_t)a3
{
  v3 = a3;
  v5 = [(DOCNodeThumbnail *)self node];
  v6 = v5;
  if ((v3 & 2) != 0)
  {
    goto LABEL_5;
  }

  v7 = v5;
  if ([v7 isActionable])
  {
    v8 = [v7 providerDomainID];
    v9 = DOCProviderDomainIDIsSharedServerDomainID();

    if ((v9 & 1) == 0)
    {

      if ((v3 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_9:
      v13 = self;
      objc_sync_enter(v13);
      if (v13->_currentRequest || v13->_thumbnailImage)
      {
        objc_sync_exit(v13);
        goto LABEL_12;
      }

      objc_sync_exit(v13);

LABEL_6:
      [(DOCNodeThumbnail *)self _cancelCurrentRequest];
      WeakRetained = objc_loadWeakRetained(&self->_generator);
      v13 = [WeakRetained thumbnailGenerator];

      v14 = [DOCThumbnailRequest requestForNode:self->_node descriptor:self->_descriptor thumbnailGenerator:v13];
      v15 = self;
      objc_sync_enter(v15);
      objc_storeStrong(&v15->_currentRequest, v14);
      objc_sync_exit(v15);

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke;
      v20[3] = &unk_278FB38C0;
      v20[4] = v15;
      [v14 setThumbnailGenerationRequiresDownloadHandler:v20];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke_2;
      v17[3] = &unk_278FB3918;
      v18 = v14;
      v19 = v15;
      v16 = v14;
      [v16 generateThumbnailWithCompletionHandler:v17];

LABEL_12:
      goto LABEL_13;
    }

    v10 = [v7 fpfs_fpItem];
    v11 = [v10 doc_isSMBSharepoint];

    if (v11)
    {
LABEL_5:
      if ((v3 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

LABEL_13:
}

void __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _callGenerationCompletionHandlers];
  objc_sync_exit(obj);
}

void __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = MEMORY[0x277D062B8];
    v9 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke_2_cold_1(a1, v7, v9);
    }

    [*(a1 + 40) thumbnailOperationFailedToLoadThumbnail];
  }

  else
  {
    [*(a1 + 40) thumbnailOperationDidLoadThumbnail:v5 representativeIcon:1];
  }
}

- (void)_cancelCurrentRequest
{
  obj = self;
  objc_sync_enter(obj);
  [(DOCThumbnailRequest *)obj->_currentRequest cancel];
  currentRequest = obj->_currentRequest;
  obj->_currentRequest = 0;

  [(DOCNodeThumbnail *)obj _callGenerationCompletionHandlers];
  objc_sync_exit(obj);
}

- (void)_callGenerationCompletionHandlers
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_generationCompletionHandlers copy];
  [(NSMutableArray *)v2->_generationCompletionHandlers removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerGenerationCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  currentRequest = v5->_currentRequest;
  if (currentRequest)
  {
    generationCompletionHandlers = v5->_generationCompletionHandlers;
    v8 = _Block_copy(v4);
    [(NSMutableArray *)generationCompletionHandlers addObject:v8];
  }

  objc_sync_exit(v5);

  return currentRequest != 0;
}

- (void)scheduleUpdateIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if ([(DOCNodeThumbnail *)obj needsUpdate])
  {
    obj->_needsUpdate = 0;
    [(DOCNodeThumbnail *)obj _fetchThumbnailWithOptions:0];
  }

  objc_sync_exit(obj);
}

- (void)_notifyListeners
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(DOCNodeThumbnail *)self listeners];
  objc_sync_enter(v3);
  v4 = [(DOCNodeThumbnail *)self listeners];
  v5 = [v4 allObjects];

  objc_sync_exit(v3);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v9 = *v19;
    v10 = MEMORY[0x277D062B8];
    *&v8 = 138412802;
    v17 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = *v10;
        if (!*v10)
        {
          DOCInitLogging();
          v13 = *v10;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          v15 = objc_opt_class();
          *buf = v17;
          v23 = v15;
          v24 = 2048;
          v25 = v12;
          v26 = 2112;
          v27 = self;
          _os_log_debug_impl(&dword_249CE0000, v14, OS_LOG_TYPE_DEBUG, "Notifying <%@: %p> that the thumbnail for %@ successfully loaded", buf, 0x20u);
        }

        [v12 thumbnailLoaded:{self, v17, v18}];
        ++v11;
      }

      while (v7 != v11);
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateNodeThumbnailIdentifierTo:(id)a3
{
  v8 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DOCNodeThumbnail *)v5 nodeThumbnailIdentifier];
  v7 = [v8 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&v5->_nodeThumbnailIdentifier, a3);
    [(DOCNodeThumbnail *)v5 setNeedsUpdate];
  }

  objc_sync_exit(v5);
}

- (DOCThumbnailGenerator)generator
{
  WeakRetained = objc_loadWeakRetained(&self->_generator);

  return WeakRetained;
}

void __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_249CE0000, log, OS_LOG_TYPE_ERROR, "Failed to generate thumbnail for request %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end
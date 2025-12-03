@interface DOCNodeThumbnail
- (BOOL)hasFinishedTryingToFetchCorrectThumbnail;
- (BOOL)isLoading;
- (BOOL)isRepresentativeIcon;
- (BOOL)registerGenerationCompletionHandler:(id)handler;
- (CGSize)size;
- (DOCNodeThumbnail)initWithGenerator:(id)generator node:(id)node descriptor:(id)descriptor fallback:(id)fallback;
- (DOCThumbnailGenerator)generator;
- (UIImage)thumbnail;
- (id)averageColorInRect:(CGRect)rect;
- (void)_callGenerationCompletionHandlers;
- (void)_cancelCurrentRequest;
- (void)_fetchThumbnailWithOptions:(unint64_t)options;
- (void)_notifyListeners;
- (void)addListener:(id)listener;
- (void)fetchWithOptions:(unint64_t)options;
- (void)removeListener:(id)listener;
- (void)scheduleUpdateIfNeeded;
- (void)setFallback:(id)fallback;
- (void)setNeedsUpdate;
- (void)thumbnailLoaded:(id)loaded;
- (void)thumbnailOperationDidLoadThumbnail:(id)thumbnail representativeIcon:(BOOL)icon;
- (void)thumbnailOperationFailedToLoadThumbnail;
- (void)updateNodeThumbnailIdentifierTo:(id)to;
@end

@implementation DOCNodeThumbnail

- (DOCNodeThumbnail)initWithGenerator:(id)generator node:(id)node descriptor:(id)descriptor fallback:(id)fallback
{
  generatorCopy = generator;
  nodeCopy = node;
  descriptorCopy = descriptor;
  fallbackCopy = fallback;
  v23.receiver = self;
  v23.super_class = DOCNodeThumbnail;
  v14 = [(DOCNodeThumbnail *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_generator, generatorCopy);
    objc_storeStrong(&v15->_descriptor, descriptor);
    objc_storeStrong(&v15->_fallback, fallback);
    *&v15->_representativeIcon = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v15->_listeners;
    v15->_listeners = weakObjectsHashTable;

    objc_storeStrong(&v15->_node, node);
    thumbnailIdentifier = [nodeCopy thumbnailIdentifier];
    nodeThumbnailIdentifier = v15->_nodeThumbnailIdentifier;
    v15->_nodeThumbnailIdentifier = thumbnailIdentifier;

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

- (void)setFallback:(id)fallback
{
  fallbackCopy = fallback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_fallback == fallbackCopy)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    fallback = [(DOCNodeThumbnail *)selfCopy fallback];
    [fallback removeListener:selfCopy];

    objc_storeStrong(&selfCopy->_fallback, fallback);
    fallback2 = [(DOCNodeThumbnail *)selfCopy fallback];
    [fallback2 addListener:selfCopy];

    objc_sync_exit(selfCopy);
    [(DOCNodeThumbnail *)selfCopy thumbnailLoaded:fallbackCopy];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentRequest = [(DOCNodeThumbnail *)selfCopy currentRequest];

  if (currentRequest)
  {
    LOBYTE(isLoading) = 1;
  }

  else
  {
    thumbnailImage = [(DOCNodeThumbnail *)selfCopy thumbnailImage];

    if (thumbnailImage)
    {
      LOBYTE(isLoading) = 0;
    }

    else
    {
      fallback = [(DOCNodeThumbnail *)selfCopy fallback];
      isLoading = [fallback isLoading];
    }
  }

  objc_sync_exit(selfCopy);

  return isLoading;
}

- (BOOL)isRepresentativeIcon
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  thumbnailImage = [(DOCNodeThumbnail *)selfCopy thumbnailImage];

  if (thumbnailImage)
  {
    LOBYTE(isRepresentativeIcon) = selfCopy->_representativeIcon;
    objc_sync_exit(selfCopy);
  }

  else
  {
    fallback = [(DOCNodeThumbnail *)selfCopy fallback];
    objc_sync_exit(selfCopy);

    isRepresentativeIcon = [(DOCNodeThumbnail *)fallback isRepresentativeIcon];
    selfCopy = fallback;
  }

  return isRepresentativeIcon & 1;
}

- (id)averageColorInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(DOCNodeThumbnail *)self isRepresentativeIcon])
  {
    thumbnail = [(DOCNodeThumbnail *)self thumbnail];
    whiteColor = [thumbnail doc_averageColorInRect:{x, y, width, height}];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  return whiteColor;
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  if (listenerCopy)
  {
    v7 = listenerCopy;
    listeners = [(DOCNodeThumbnail *)self listeners];
    objc_sync_enter(listeners);
    listeners2 = [(DOCNodeThumbnail *)self listeners];
    [listeners2 addObject:v7];

    objc_sync_exit(listeners);
    listenerCopy = v7;
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(DOCNodeThumbnail *)self listeners];
  objc_sync_enter(listeners);
  if (listenerCopy)
  {
    listeners2 = [(DOCNodeThumbnail *)self listeners];
    [listeners2 removeObject:listenerCopy];
  }

  listeners3 = [(DOCNodeThumbnail *)self listeners];
  v7 = [listeners3 count];

  objc_sync_exit(listeners);
  if (!v7)
  {
    [(DOCNodeThumbnail *)self _cancelCurrentRequest];
  }
}

- (BOOL)hasFinishedTryingToFetchCorrectThumbnail
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentRequest = [(DOCNodeThumbnail *)selfCopy currentRequest];
  v4 = currentRequest == 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (UIImage)thumbnail
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  thumbnailImage = [(DOCNodeThumbnail *)selfCopy thumbnailImage];
  if (thumbnailImage)
  {
    objc_sync_exit(selfCopy);
    fallback = selfCopy;
  }

  else
  {
    fallback = [(DOCNodeThumbnail *)selfCopy fallback];
    objc_sync_exit(selfCopy);

    thumbnailImage = [fallback thumbnail];
  }

  [(DOCNodeThumbnail *)selfCopy scheduleUpdateIfNeeded];
  generator = [(DOCNodeThumbnail *)selfCopy generator];
  [generator markThumbnailAsRecentlyUsed:selfCopy];

  return thumbnailImage;
}

- (void)thumbnailLoaded:(id)loaded
{
  loadedCopy = loaded;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  thumbnailImage = [(DOCNodeThumbnail *)selfCopy thumbnailImage];

  objc_sync_exit(selfCopy);
  if (!thumbnailImage)
  {
    [(DOCNodeThumbnail *)selfCopy _notifyListeners];
  }
}

- (void)thumbnailOperationDidLoadThumbnail:(id)thumbnail representativeIcon:(BOOL)icon
{
  thumbnailCopy = thumbnail;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_representativeIcon = icon;
  currentRequest = selfCopy->_currentRequest;
  selfCopy->_currentRequest = 0;

  [(DOCNodeThumbnail *)selfCopy _callGenerationCompletionHandlers];
  thumbnailImage = selfCopy->_thumbnailImage;
  selfCopy->_thumbnailImage = thumbnailCopy;
  v10 = thumbnailCopy;

  objc_sync_exit(selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__DOCNodeThumbnail_thumbnailOperationDidLoadThumbnail_representativeIcon___block_invoke;
  block[3] = &unk_278FB38C0;
  block[4] = selfCopy;
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

- (void)fetchWithOptions:(unint64_t)options
{
  obj = self;
  objc_sync_enter(obj);
  [(DOCNodeThumbnail *)obj _fetchThumbnailWithOptions:options];
  objc_sync_exit(obj);
}

- (void)_fetchThumbnailWithOptions:(unint64_t)options
{
  optionsCopy = options;
  node = [(DOCNodeThumbnail *)self node];
  v6 = node;
  if ((optionsCopy & 2) != 0)
  {
    goto LABEL_5;
  }

  v7 = node;
  if ([v7 isActionable])
  {
    providerDomainID = [v7 providerDomainID];
    v9 = DOCProviderDomainIDIsSharedServerDomainID();

    if ((v9 & 1) == 0)
    {

      if ((optionsCopy & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_9:
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (selfCopy->_currentRequest || selfCopy->_thumbnailImage)
      {
        objc_sync_exit(selfCopy);
        goto LABEL_12;
      }

      objc_sync_exit(selfCopy);

LABEL_6:
      [(DOCNodeThumbnail *)self _cancelCurrentRequest];
      WeakRetained = objc_loadWeakRetained(&self->_generator);
      selfCopy = [WeakRetained thumbnailGenerator];

      v14 = [DOCThumbnailRequest requestForNode:self->_node descriptor:self->_descriptor thumbnailGenerator:selfCopy];
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      objc_storeStrong(&selfCopy2->_currentRequest, v14);
      objc_sync_exit(selfCopy2);

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke;
      v20[3] = &unk_278FB38C0;
      v20[4] = selfCopy2;
      [v14 setThumbnailGenerationRequiresDownloadHandler:v20];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __47__DOCNodeThumbnail__fetchThumbnailWithOptions___block_invoke_2;
      v17[3] = &unk_278FB3918;
      v18 = v14;
      v19 = selfCopy2;
      v16 = v14;
      [v16 generateThumbnailWithCompletionHandler:v17];

LABEL_12:
      goto LABEL_13;
    }

    fpfs_fpItem = [v7 fpfs_fpItem];
    doc_isSMBSharepoint = [fpfs_fpItem doc_isSMBSharepoint];

    if (doc_isSMBSharepoint)
    {
LABEL_5:
      if ((optionsCopy & 1) == 0)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_generationCompletionHandlers copy];
  [(NSMutableArray *)selfCopy->_generationCompletionHandlers removeAllObjects];
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

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerGenerationCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentRequest = selfCopy->_currentRequest;
  if (currentRequest)
  {
    generationCompletionHandlers = selfCopy->_generationCompletionHandlers;
    v8 = _Block_copy(handlerCopy);
    [(NSMutableArray *)generationCompletionHandlers addObject:v8];
  }

  objc_sync_exit(selfCopy);

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
  listeners = [(DOCNodeThumbnail *)self listeners];
  objc_sync_enter(listeners);
  listeners2 = [(DOCNodeThumbnail *)self listeners];
  allObjects = [listeners2 allObjects];

  objc_sync_exit(listeners);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = allObjects;
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
          selfCopy = self;
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

- (void)updateNodeThumbnailIdentifierTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeThumbnailIdentifier = [(DOCNodeThumbnail *)selfCopy nodeThumbnailIdentifier];
  v7 = [toCopy isEqual:nodeThumbnailIdentifier];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&selfCopy->_nodeThumbnailIdentifier, to);
    [(DOCNodeThumbnail *)selfCopy setNeedsUpdate];
  }

  objc_sync_exit(selfCopy);
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
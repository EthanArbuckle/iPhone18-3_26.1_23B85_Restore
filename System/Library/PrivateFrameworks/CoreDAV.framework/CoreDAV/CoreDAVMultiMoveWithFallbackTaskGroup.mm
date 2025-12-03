@interface CoreDAVMultiMoveWithFallbackTaskGroup
- (CoreDAVMultiMoveWithFallbackTaskGroup)initWithSourceURLs:(id)ls destinationURL:(id)l overwrite:(BOOL)overwrite useFallback:(BOOL)fallback sourceEntityDataPayloads:(id)payloads sourceEntityDataContentTypes:(id)types sourceEntityETags:(id)tags accountInfoProvider:(id)self0 taskManager:(id)self1;
- (id)description;
- (id)fullDestinationURLFromSourceURL:(id)l;
- (void)_completedMoveTask:(id)task sourceURL:(id)l;
- (void)_completedPutTask:(id)task sourceURL:(id)l;
- (void)_setTagsForDestinationEntityAtURL:(id)l fromTaskResponseHeaders:(id)headers completionBlock:(id)block;
- (void)processOutstandingTasks;
- (void)startTaskGroup;
@end

@implementation CoreDAVMultiMoveWithFallbackTaskGroup

- (CoreDAVMultiMoveWithFallbackTaskGroup)initWithSourceURLs:(id)ls destinationURL:(id)l overwrite:(BOOL)overwrite useFallback:(BOOL)fallback sourceEntityDataPayloads:(id)payloads sourceEntityDataContentTypes:(id)types sourceEntityETags:(id)tags accountInfoProvider:(id)self0 taskManager:(id)self1
{
  fallbackCopy = fallback;
  v72 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  lCopy = l;
  obj = payloads;
  payloadsCopy = payloads;
  typesCopy = types;
  typesCopy2 = types;
  tagsCopy = tags;
  providerCopy = provider;
  managerCopy = manager;
  v70.receiver = self;
  v70.super_class = CoreDAVMultiMoveWithFallbackTaskGroup;
  v23 = [(CoreDAVTaskGroup *)&v70 initWithAccountInfoProvider:providerCopy taskManager:managerCopy];
  if (!v23)
  {
    goto LABEL_19;
  }

  if (!lsCopy || ![lsCopy count])
  {
    v51 = MEMORY[0x277CBEAD8];
    v52 = *MEMORY[0x277CBE660];
    v53 = @"Non-nil and non-empty sourceURLs set required.";
    goto LABEL_26;
  }

  lsCopy2 = ls;
  lCopy2 = l;
  v58 = managerCopy;
  v59 = providerCopy;
  v60 = tagsCopy;
  v61 = typesCopy2;
  v62 = payloadsCopy;
  if (!lCopy || ([lCopy CDVRawPath], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, !v25))
  {
    v51 = MEMORY[0x277CBEAD8];
    v52 = *MEMORY[0x277CBE660];
    v53 = @"Non-nil and non-zero length destinationURL required.";
LABEL_26:
    v54 = [v51 exceptionWithName:v52 reason:v53 userInfo:0];
    objc_exception_throw(v54);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v26 = lsCopy;
  v27 = [v26 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v67;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v67 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v66 + 1) + 8 * i);
        cDVRawPath = [v31 CDVRawPath];
        v33 = [cDVRawPath length];

        if (!v33)
        {
          v44 = MEMORY[0x277CBEAD8];
          v45 = *MEMORY[0x277CBE660];
          v46 = MEMORY[0x277CCACA8];
          v47 = @"Non-zero length sourceURL required.";
          goto LABEL_22;
        }

        uRLByDeletingLastPathComponent = [v31 URLByDeletingLastPathComponent];
        v35 = [uRLByDeletingLastPathComponent isEqual:lCopy];

        if (v35)
        {
          v44 = MEMORY[0x277CBEAD8];
          v45 = *MEMORY[0x277CBE660];
          [MEMORY[0x277CCACA8] stringWithFormat:@"The value for sourceURL and the value for destinationURL must not be the same. A sourceURL is already present in destination path: %@", v31, lsCopy2, lCopy2];
          goto LABEL_23;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v28);
  }

  typesCopy2 = v61;
  payloadsCopy = v62;
  if (fallbackCopy && (!v62 || !v61))
  {
    v44 = MEMORY[0x277CBEAD8];
    v45 = *MEMORY[0x277CBE660];
    v46 = MEMORY[0x277CCACA8];
    v47 = @"Asked to create a taskgroup with fallback, but some required data for PUT is missing.";
LABEL_22:
    [v46 stringWithFormat:v47, v55, lsCopy2, lCopy2];
    v48 = LABEL_23:;
    v49 = [v44 exceptionWithName:v45 reason:v48 userInfo:0];
    v50 = v49;

    objc_exception_throw(v49);
  }

  v23->_useFallback = fallbackCopy;
  objc_storeStrong(&v23->_sourceEntityDataPayloads, obj);
  objc_storeStrong(&v23->_sourceEntityDataContentTypes, typesCopy);
  objc_storeStrong(&v23->_sourceEntityETags, tags);
  objc_storeStrong(&v23->_sourceURLs, lsCopy2);
  objc_storeStrong(&v23->_destinationURL, lCopy2);
  v36 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSSet count](v23->_sourceURLs, "count")}];
  destinationURLs = v23->_destinationURLs;
  v23->_destinationURLs = v36;

  v38 = MEMORY[0x277CBEB38];
  sourceURLs = [(CoreDAVMultiMoveWithFallbackTaskGroup *)v23 sourceURLs];
  v40 = [v38 dictionaryWithCapacity:{objc_msgSend(sourceURLs, "count")}];
  destinationEntityETags = v23->_destinationEntityETags;
  v23->_destinationEntityETags = v40;

  providerCopy = v59;
  tagsCopy = v60;
  managerCopy = v58;
LABEL_19:

  v42 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"CoreDAVMultiMoveWithFallbackTaskGroup:"];
  [v3 appendFormat:@"\n\tSource urls: %@", self->_sourceURLs];
  [v3 appendFormat:@"\n\tDestination url: %@", self->_destinationURL];
  [v3 appendFormat:@"\n\tOverwrite: %i", self->_overwrite];

  return v3;
}

- (id)fullDestinationURLFromSourceURL:(id)l
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:l];
  destinationURL = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationURL];
  v7 = [v4 URLWithString:v5 relativeToURL:destinationURL];

  return v7;
}

- (void)startTaskGroup
{
  v3 = MEMORY[0x277CBEB18];
  sourceURLs = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceURLs];
  allObjects = [sourceURLs allObjects];
  v6 = [v3 arrayWithArray:allObjects];
  outstandingSourceURLsToMove = self->_outstandingSourceURLsToMove;
  self->_outstandingSourceURLsToMove = v6;

  [(CoreDAVMultiMoveWithFallbackTaskGroup *)self processOutstandingTasks];
}

- (void)processOutstandingTasks
{
  v30 = *MEMORY[0x277D85DE8];
  outstandingSourceURLsToMove = self->_outstandingSourceURLsToMove;
  if (outstandingSourceURLsToMove && [(NSMutableArray *)outstandingSourceURLsToMove count])
  {
    outstandingSourceURLsToMove = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self outstandingSourceURLsToMove];
    lastObject = [outstandingSourceURLsToMove lastObject];

    v6 = [CoreDAVMoveTask alloc];
    v7 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:lastObject];
    v8 = [(CoreDAVCopyOrMoveTask *)v6 initWithSourceURL:lastObject destinationURL:v7 andOverwrite:[(CoreDAVMultiMoveWithFallbackTaskGroup *)self overwrite]];

    sourceEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
    v10 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lastObject];
    v11 = [sourceEntityETags objectForKey:v10];
    [(CoreDAVMoveTask *)v8 setPreviousETag:v11];

    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [(CoreDAVTask *)v8 setAccountInfoProvider:accountInfoProvider];

    [(CoreDAVTask *)v8 setTimeoutInterval:self->super._timeoutInterval];
    objc_initWeak(&location, v8);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __64__CoreDAVMultiMoveWithFallbackTaskGroup_processOutstandingTasks__block_invoke;
    v23 = &unk_278E31008;
    objc_copyWeak(&v26, &location);
    selfCopy = self;
    v13 = lastObject;
    v25 = v13;
    [(CoreDAVTask *)v8 setCompletionBlock:&v20];
    v14 = [CoreDAVLogging sharedLogging:v20];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v16 = [v14 logHandleForAccountInfoProvider:WeakRetained];

    if (v16)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[multi-move] ~  Multi-move task group starting:\n%@", buf, 0xCu);
      }
    }

    [(NSMutableSet *)self->super._outstandingTasks addObject:v8];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v8];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);

    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v19 = *MEMORY[0x277D85DE8];

    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
  }
}

uint64_t __64__CoreDAVMultiMoveWithFallbackTaskGroup_processOutstandingTasks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    v4 = [*(a1 + 32) outstandingSourceURLsToMove];
    [v4 removeObject:*(a1 + 40)];

    WeakRetained = [*(a1 + 32) _completedMoveTask:v6 sourceURL:*(a1 + 40)];
    v3 = v6;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_setTagsForDestinationEntityAtURL:(id)l fromTaskResponseHeaders:(id)headers completionBlock:(id)block
{
  blockCopy = block;
  headersCopy = headers;
  lCopy = l;
  destinationEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityETags];
  v12 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _eTagFromTaskResponseHeaders:headersCopy];

  v13 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lCopy];

  [destinationEntityETags setObject:v12 forKey:v13];
  v14 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v16 = [v14 logHandleForAccountInfoProvider:WeakRetained];

  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", v17, 2u);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_completedMoveTask:(id)task sourceURL:(id)l
{
  v54 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lCopy = l;
  v7 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v53 = lCopy;
    _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_DEBUG, "[multi-move] ~ Completion block for %@", buf, 0xCu);
  }

  error = [taskCopy error];
  v11 = error;
  if (error)
  {
    domain = [error domain];
    if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
    {
      code = [v11 code];
    }

    else
    {
      code = 0;
    }

    if (self->_useFallback && ((code - 403) < 3 || code == 501))
    {
      v20 = +[CoreDAVLogging sharedLogging];
      v21 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v22 = [v20 logHandleForAccountInfoProvider:v21];

      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = lCopy;
        _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "[multi-move] ~  Move of %@ failed, trying a PUT as fallback", buf, 0xCu);
      }

      sourceEntityDataPayloads = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityDataPayloads];
      v24 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lCopy];
      v44 = [sourceEntityDataPayloads objectForKey:v24];

      sourceEntityDataContentTypes = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityDataContentTypes];
      v26 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lCopy];
      v27 = [sourceEntityDataContentTypes objectForKey:v26];

      v28 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:lCopy];
      v29 = v28;
      if (v44 && v27 && v28)
      {
        v30 = [CoreDAVPutTask alloc];
        sourceEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
        v32 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lCopy];
        v33 = [sourceEntityETags objectForKey:v32];
        v34 = [(CoreDAVPostOrPutTask *)v30 initWithDataPayload:v44 dataContentType:v27 atURL:v29 previousETag:v33];

        v35 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        [(CoreDAVTask *)v34 setAccountInfoProvider:v35];

        objc_initWeak(buf, v34);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __70__CoreDAVMultiMoveWithFallbackTaskGroup__completedMoveTask_sourceURL___block_invoke;
        v49[3] = &unk_278E31008;
        objc_copyWeak(&v51, buf);
        v49[4] = self;
        v50 = lCopy;
        [(CoreDAVTask *)v34 setCompletionBlock:v49];
        [(NSMutableSet *)self->super._outstandingTasks addObject:v34];
        taskManager = [(CoreDAVTaskGroup *)self taskManager];
        [taskManager submitQueuedCoreDAVTask:v34];

        objc_destroyWeak(&v51);
        objc_destroyWeak(buf);
      }

      else
      {
        v40 = +[CoreDAVLogging sharedLogging];
        v41 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v42 = [v40 logHandleForAccountInfoProvider:v41];

        if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = lCopy;
          _os_log_impl(&dword_2452FB000, v42, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ PUT failed for %@. Missing local data.", buf, 0xCu);
        }

        [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v11 delegateCallbackBlock:0];
      }
    }

    else
    {
      v37 = +[CoreDAVLogging sharedLogging];
      v38 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v39 = [v37 logHandleForAccountInfoProvider:v38];

      if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = lCopy;
        _os_log_impl(&dword_2452FB000, v39, OS_LOG_TYPE_DEFAULT, "[multi-move] ~  Move failed for %@", buf, 0xCu);
      }

      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v11 delegateCallbackBlock:0];
    }
  }

  else
  {
    v14 = +[CoreDAVLogging sharedLogging];
    v15 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v16 = [v14 logHandleForAccountInfoProvider:v15];

    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = lCopy;
      _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[multi-move] ~  Move succeded for %@", buf, 0xCu);
    }

    v17 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:lCopy];
    objc_initWeak(buf, self);
    responseHeaders = [taskCopy responseHeaders];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __70__CoreDAVMultiMoveWithFallbackTaskGroup__completedMoveTask_sourceURL___block_invoke_35;
    v46[3] = &unk_278E30F68;
    objc_copyWeak(&v48, buf);
    v19 = v17;
    v47 = v19;
    [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _setTagsForDestinationEntityAtURL:v19 fromTaskResponseHeaders:responseHeaders completionBlock:v46];

    objc_destroyWeak(&v48);
    objc_destroyWeak(buf);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __70__CoreDAVMultiMoveWithFallbackTaskGroup__completedMoveTask_sourceURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    WeakRetained = [*(a1 + 32) _completedPutTask:v5 sourceURL:*(a1 + 40)];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

void __70__CoreDAVMultiMoveWithFallbackTaskGroup__completedMoveTask_sourceURL___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained destinationURLs];
    [v3 addObject:*(a1 + 32)];

    [v4 processOutstandingTasks];
    WeakRetained = v4;
  }
}

- (void)_completedPutTask:(id)task sourceURL:(id)l
{
  v32 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lCopy = l;
  error = [taskCopy error];
  v9 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

  if (error)
  {
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [taskCopy url];
        *buf = 138412290;
        v31 = v13;
        _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "[multi-move] ~  Move-fallback PUT to %@ failed", buf, 0xCu);
      }
    }

    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:error delegateCallbackBlock:0];
  }

  else
  {
    if (v11)
    {
      v14 = v11;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [taskCopy url];
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "[multi-move] ~  Move-fallback PUT succeded at %@", buf, 0xCu);
      }
    }

    v16 = +[CoreDAVLogging sharedLogging];
    v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v18 = [v16 logHandleForAccountInfoProvider:v17];

    if (v18)
    {
      v19 = v18;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        responseHeaders = [taskCopy responseHeaders];
        *buf = 138412290;
        v31 = responseHeaders;
        _os_log_impl(&dword_2452FB000, v19, OS_LOG_TYPE_INFO, "[multi-move] ~  Move-fallback PUT Responses are: %@", buf, 0xCu);
      }
    }

    v21 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:lCopy];
    objc_initWeak(buf, self);
    responseHeaders2 = [taskCopy responseHeaders];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__CoreDAVMultiMoveWithFallbackTaskGroup__completedPutTask_sourceURL___block_invoke;
    v25[3] = &unk_278E30FE0;
    objc_copyWeak(&v29, buf);
    v23 = v21;
    v26 = v23;
    v27 = taskCopy;
    v28 = lCopy;
    [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _setTagsForDestinationEntityAtURL:v23 fromTaskResponseHeaders:responseHeaders2 completionBlock:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __69__CoreDAVMultiMoveWithFallbackTaskGroup__completedPutTask_sourceURL___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained destinationURLs];
    [v4 addObject:*(a1 + 32)];

    v5 = +[CoreDAVLogging sharedLogging];
    v6 = objc_loadWeakRetained(v3 + 2);
    v7 = [v5 logHandleForAccountInfoProvider:v6];

    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 40) url];
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "[multi-move] ~  Going to do a DELETE of the sourceURL now (put to %@)", buf, 0xCu);
      }
    }

    v10 = [(CoreDAVTask *)[CoreDAVDeleteTask alloc] initWithURL:*(a1 + 48)];
    v11 = objc_loadWeakRetained(v3 + 2);
    [(CoreDAVTask *)v10 setAccountInfoProvider:v11];

    objc_initWeak(buf, v10);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __69__CoreDAVMultiMoveWithFallbackTaskGroup__completedPutTask_sourceURL___block_invoke_37;
    v18 = &unk_278E30F68;
    objc_copyWeak(&v20, buf);
    v12 = v3;
    v19 = v12;
    [(CoreDAVTask *)v10 setCompletionBlock:&v15];
    [v12[4] addObject:{v10, v15, v16, v17, v18}];
    v13 = [v12 taskManager];
    [v13 submitQueuedCoreDAVTask:v10];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__CoreDAVMultiMoveWithFallbackTaskGroup__completedPutTask_sourceURL___block_invoke_37(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[CoreDAVLogging sharedLogging];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v5 = [v3 logHandleForAccountInfoProvider:v4];

    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [WeakRetained error];
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "[multi-move] ~  Move-fallback DELETE completed with error: %@", &v12, 0xCu);
      }
    }

    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    v8 = [WeakRetained error];

    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [WeakRetained error];
      [v9 finishCoreDAVTaskGroupWithError:v10 delegateCallbackBlock:0];
    }

    else
    {
      [v9 processOutstandingTasks];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end
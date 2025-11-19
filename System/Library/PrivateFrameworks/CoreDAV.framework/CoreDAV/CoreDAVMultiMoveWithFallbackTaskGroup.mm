@interface CoreDAVMultiMoveWithFallbackTaskGroup
- (CoreDAVMultiMoveWithFallbackTaskGroup)initWithSourceURLs:(id)a3 destinationURL:(id)a4 overwrite:(BOOL)a5 useFallback:(BOOL)a6 sourceEntityDataPayloads:(id)a7 sourceEntityDataContentTypes:(id)a8 sourceEntityETags:(id)a9 accountInfoProvider:(id)a10 taskManager:(id)a11;
- (id)description;
- (id)fullDestinationURLFromSourceURL:(id)a3;
- (void)_completedMoveTask:(id)a3 sourceURL:(id)a4;
- (void)_completedPutTask:(id)a3 sourceURL:(id)a4;
- (void)_setTagsForDestinationEntityAtURL:(id)a3 fromTaskResponseHeaders:(id)a4 completionBlock:(id)a5;
- (void)processOutstandingTasks;
- (void)startTaskGroup;
@end

@implementation CoreDAVMultiMoveWithFallbackTaskGroup

- (CoreDAVMultiMoveWithFallbackTaskGroup)initWithSourceURLs:(id)a3 destinationURL:(id)a4 overwrite:(BOOL)a5 useFallback:(BOOL)a6 sourceEntityDataPayloads:(id)a7 sourceEntityDataContentTypes:(id)a8 sourceEntityETags:(id)a9 accountInfoProvider:(id)a10 taskManager:(id)a11
{
  v65 = a6;
  v72 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  obj = a7;
  v18 = a7;
  v64 = a8;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v70.receiver = self;
  v70.super_class = CoreDAVMultiMoveWithFallbackTaskGroup;
  v23 = [(CoreDAVTaskGroup *)&v70 initWithAccountInfoProvider:v21 taskManager:v22];
  if (!v23)
  {
    goto LABEL_19;
  }

  if (!v16 || ![v16 count])
  {
    v51 = MEMORY[0x277CBEAD8];
    v52 = *MEMORY[0x277CBE660];
    v53 = @"Non-nil and non-empty sourceURLs set required.";
    goto LABEL_26;
  }

  v56 = a3;
  v57 = a4;
  v58 = v22;
  v59 = v21;
  v60 = v20;
  v61 = v19;
  v62 = v18;
  if (!v17 || ([v17 CDVRawPath], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, !v25))
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
  v26 = v16;
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
        v32 = [v31 CDVRawPath];
        v33 = [v32 length];

        if (!v33)
        {
          v44 = MEMORY[0x277CBEAD8];
          v45 = *MEMORY[0x277CBE660];
          v46 = MEMORY[0x277CCACA8];
          v47 = @"Non-zero length sourceURL required.";
          goto LABEL_22;
        }

        v34 = [v31 URLByDeletingLastPathComponent];
        v35 = [v34 isEqual:v17];

        if (v35)
        {
          v44 = MEMORY[0x277CBEAD8];
          v45 = *MEMORY[0x277CBE660];
          [MEMORY[0x277CCACA8] stringWithFormat:@"The value for sourceURL and the value for destinationURL must not be the same. A sourceURL is already present in destination path: %@", v31, v56, v57];
          goto LABEL_23;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v28);
  }

  v19 = v61;
  v18 = v62;
  if (v65 && (!v62 || !v61))
  {
    v44 = MEMORY[0x277CBEAD8];
    v45 = *MEMORY[0x277CBE660];
    v46 = MEMORY[0x277CCACA8];
    v47 = @"Asked to create a taskgroup with fallback, but some required data for PUT is missing.";
LABEL_22:
    [v46 stringWithFormat:v47, v55, v56, v57];
    v48 = LABEL_23:;
    v49 = [v44 exceptionWithName:v45 reason:v48 userInfo:0];
    v50 = v49;

    objc_exception_throw(v49);
  }

  v23->_useFallback = v65;
  objc_storeStrong(&v23->_sourceEntityDataPayloads, obj);
  objc_storeStrong(&v23->_sourceEntityDataContentTypes, v64);
  objc_storeStrong(&v23->_sourceEntityETags, a9);
  objc_storeStrong(&v23->_sourceURLs, v56);
  objc_storeStrong(&v23->_destinationURL, v57);
  v36 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSSet count](v23->_sourceURLs, "count")}];
  destinationURLs = v23->_destinationURLs;
  v23->_destinationURLs = v36;

  v38 = MEMORY[0x277CBEB38];
  v39 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)v23 sourceURLs];
  v40 = [v38 dictionaryWithCapacity:{objc_msgSend(v39, "count")}];
  destinationEntityETags = v23->_destinationEntityETags;
  v23->_destinationEntityETags = v40;

  v21 = v59;
  v20 = v60;
  v22 = v58;
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

- (id)fullDestinationURLFromSourceURL:(id)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:a3];
  v6 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationURL];
  v7 = [v4 URLWithString:v5 relativeToURL:v6];

  return v7;
}

- (void)startTaskGroup
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceURLs];
  v5 = [v4 allObjects];
  v6 = [v3 arrayWithArray:v5];
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
    v4 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self outstandingSourceURLsToMove];
    v5 = [v4 lastObject];

    v6 = [CoreDAVMoveTask alloc];
    v7 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:v5];
    v8 = [(CoreDAVCopyOrMoveTask *)v6 initWithSourceURL:v5 destinationURL:v7 andOverwrite:[(CoreDAVMultiMoveWithFallbackTaskGroup *)self overwrite]];

    v9 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
    v10 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:v5];
    v11 = [v9 objectForKey:v10];
    [(CoreDAVMoveTask *)v8 setPreviousETag:v11];

    v12 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [(CoreDAVTask *)v8 setAccountInfoProvider:v12];

    [(CoreDAVTask *)v8 setTimeoutInterval:self->super._timeoutInterval];
    objc_initWeak(&location, v8);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __64__CoreDAVMultiMoveWithFallbackTaskGroup_processOutstandingTasks__block_invoke;
    v23 = &unk_278E31008;
    objc_copyWeak(&v26, &location);
    v24 = self;
    v13 = v5;
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
    v17 = [(CoreDAVTaskGroup *)self taskManager];
    [v17 submitQueuedCoreDAVTask:v8];

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

- (void)_setTagsForDestinationEntityAtURL:(id)a3 fromTaskResponseHeaders:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityETags];
  v12 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _eTagFromTaskResponseHeaders:v9];

  v13 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:v10];

  [v11 setObject:v12 forKey:v13];
  v14 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v16 = [v14 logHandleForAccountInfoProvider:WeakRetained];

  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", v17, 2u);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_completedMoveTask:(id)a3 sourceURL:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v6 = a4;
  v7 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v53 = v6;
    _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_DEBUG, "[multi-move] ~ Completion block for %@", buf, 0xCu);
  }

  v10 = [v45 error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
    {
      v13 = [v11 code];
    }

    else
    {
      v13 = 0;
    }

    if (self->_useFallback && ((v13 - 403) < 3 || v13 == 501))
    {
      v20 = +[CoreDAVLogging sharedLogging];
      v21 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v22 = [v20 logHandleForAccountInfoProvider:v21];

      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = v6;
        _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "[multi-move] ~  Move of %@ failed, trying a PUT as fallback", buf, 0xCu);
      }

      v23 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityDataPayloads];
      v24 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:v6];
      v44 = [v23 objectForKey:v24];

      v25 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityDataContentTypes];
      v26 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:v6];
      v27 = [v25 objectForKey:v26];

      v28 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:v6];
      v29 = v28;
      if (v44 && v27 && v28)
      {
        v30 = [CoreDAVPutTask alloc];
        v31 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
        v32 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:v6];
        v33 = [v31 objectForKey:v32];
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
        v50 = v6;
        [(CoreDAVTask *)v34 setCompletionBlock:v49];
        [(NSMutableSet *)self->super._outstandingTasks addObject:v34];
        v36 = [(CoreDAVTaskGroup *)self taskManager];
        [v36 submitQueuedCoreDAVTask:v34];

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
          v53 = v6;
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
        v53 = v6;
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
      v53 = v6;
      _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "[multi-move] ~  Move succeded for %@", buf, 0xCu);
    }

    v17 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:v6];
    objc_initWeak(buf, self);
    v18 = [v45 responseHeaders];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __70__CoreDAVMultiMoveWithFallbackTaskGroup__completedMoveTask_sourceURL___block_invoke_35;
    v46[3] = &unk_278E30F68;
    objc_copyWeak(&v48, buf);
    v19 = v17;
    v47 = v19;
    [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _setTagsForDestinationEntityAtURL:v19 fromTaskResponseHeaders:v18 completionBlock:v46];

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

- (void)_completedPutTask:(id)a3 sourceURL:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 error];
  v9 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

  if (v8)
  {
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v6 url];
        *buf = 138412290;
        v31 = v13;
        _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "[multi-move] ~  Move-fallback PUT to %@ failed", buf, 0xCu);
      }
    }

    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v8 delegateCallbackBlock:0];
  }

  else
  {
    if (v11)
    {
      v14 = v11;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v6 url];
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
        v20 = [v6 responseHeaders];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&dword_2452FB000, v19, OS_LOG_TYPE_INFO, "[multi-move] ~  Move-fallback PUT Responses are: %@", buf, 0xCu);
      }
    }

    v21 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self fullDestinationURLFromSourceURL:v7];
    objc_initWeak(buf, self);
    v22 = [v6 responseHeaders];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__CoreDAVMultiMoveWithFallbackTaskGroup__completedPutTask_sourceURL___block_invoke;
    v25[3] = &unk_278E30FE0;
    objc_copyWeak(&v29, buf);
    v23 = v21;
    v26 = v23;
    v27 = v6;
    v28 = v7;
    [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _setTagsForDestinationEntityAtURL:v23 fromTaskResponseHeaders:v22 completionBlock:v25];

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
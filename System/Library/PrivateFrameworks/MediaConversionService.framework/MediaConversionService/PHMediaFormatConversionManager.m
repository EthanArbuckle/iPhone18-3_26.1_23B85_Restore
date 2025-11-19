@interface PHMediaFormatConversionManager
- (PHMediaFormatConversionManager)init;
- (id)jobForConversionRequest:(id)a3 completionHandler:(id)a4;
- (id)rootAncestorRequestForRequest:(id)a3;
- (id)ut_objectsToBeDeallocatedWithReceiver;
- (void)cancellationRequestedForJob:(id)a3;
- (void)configureTransferBehaviorUserPreferenceForRequest:(id)a3;
- (void)enqueueConversionRequest:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)performConversionRequest:(id)a3 completionHandler:(id)a4;
- (void)preflightAllRelatedRequestsForCurrentJob;
- (void)preflightConversionRequest:(id)a3;
- (void)preflightConversionRequest:(id)a3 completionHandler:(id)a4;
- (void)processQueuedJobs;
- (void)setDirectoryForTemporaryFiles:(id)a3;
- (void)setTransferBehaviorUserPreferenceOverride:(id)a3;
- (void)setupConversionImplementation;
- (void)validateLivePhotoPairingIdentifierConfigurationForRequest:(id)a3;
@end

@implementation PHMediaFormatConversionManager

- (id)ut_objectsToBeDeallocatedWithReceiver
{
  v3 = [(PHMediaFormatConversionManager *)self conversionImplementation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHMediaFormatConversionManager *)self conversionImplementation];
    v6 = [v5 ut_objectsToBeDeallocatedWithReceiver];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidate
{
  v4 = [(PHMediaFormatConversionManager *)self stateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PHMediaFormatConversionManager_invalidate__block_invoke;
  v5[3] = &unk_27989B7E0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void __44__PHMediaFormatConversionManager_invalidate__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] != 1)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PHMediaFormatConversion.m" lineNumber:2369 description:@"Invalidate can only be called once."];
  }

  [*(a1 + 32) setState:2];
  v2 = [*(a1 + 32) currentlyProcessingJob];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 conversionRequest];
    v5 = [v4 progress];
    [v5 cancel];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 32) queuedJobs];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      v11 = v3;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v3 = *(*(&v16 + 1) + 8 * v10);

        v12 = [v3 conversionRequest];
        v13 = [v12 progress];
        [v13 cancel];

        ++v10;
        v11 = v3;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancellationRequestedForJob:(id)a3
{
  v4 = a3;
  v5 = [(PHMediaFormatConversionManager *)self stateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PHMediaFormatConversionManager_cancellationRequestedForJob___block_invoke;
  v7[3] = &unk_27989B6F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __62__PHMediaFormatConversionManager_cancellationRequestedForJob___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversionRequest];
  if ([v2 status] == 2)
  {
    [v2 markAsCancelled];
    v3 = [*(a1 + 40) queuedJobs];
    [v3 removeObject:*(a1 + 32)];

    v4 = [*(a1 + 40) callbackQueue];
    v5 = [*(a1 + 32) completionHandler];
    dispatch_async(v4, v5);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = [v2 identifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled queued request %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)jobForConversionRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setConversionRequest:v6];
  [v8 setCompletionHandler:v7];
  v9 = [v6 progress];
  v10 = [v9 cancellationHandler];

  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__PHMediaFormatConversionManager_jobForConversionRequest_completionHandler___block_invoke;
  v14[3] = &unk_27989B7B8;
  objc_copyWeak(&v16, &from);
  objc_copyWeak(&v17, &location);
  v11 = v10;
  v15 = v11;
  v12 = [v6 progress];
  [v12 setCancellationHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

void __76__PHMediaFormatConversionManager_jobForConversionRequest_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v2)
  {
    [WeakRetained cancellationRequestedForJob:v2];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (id)rootAncestorRequestForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 parentRequest];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = v5;

      v5 = [v6 parentRequest];

      v3 = v6;
    }

    while (v5);
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (void)preflightAllRelatedRequestsForCurrentJob
{
  v4 = [(PHMediaFormatConversionManager *)self currentlyProcessingJob];
  v5 = [v4 conversionRequest];
  v6 = [(PHMediaFormatConversionManager *)self rootAncestorRequestForRequest:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke;
  v9[3] = &unk_27989B790;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v12 = a2;
  v7 = v5;
  v8 = v4;
  [(PHMediaFormatConversionManager *)self preflightConversionRequest:v6 completionHandler:v9];
}

void __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke_2;
  block[3] = &unk_27989B790;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  dispatch_async(v2, block);
}

uint64_t __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentlyProcessingJob];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [v12 currentlyProcessingJob];
    [v10 handleFailureInMethod:v11 object:v12 file:@"PHMediaFormatConversion.m" lineNumber:2287 description:{@"Current job mismatch: %@/%@", v13, v14}];
  }

  if ([*(a1 + 48) status] != 3)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v18 = [*(a1 + 48) statusString];
    [v15 handleFailureInMethod:v17 object:v16 file:@"PHMediaFormatConversion.m" lineNumber:2288 description:{@"Current job request state mismatch: %@", v18}];
  }

  v4 = [*(a1 + 48) progress];
  v5 = [v4 isCancelled];

  if (v5)
  {
    [*(a1 + 48) markAsCancelled];
  }

  if ([*(a1 + 48) status] == 3 && objc_msgSend(*(a1 + 48), "preflighted"))
  {
    [*(a1 + 48) setStatus:2];
    v6 = [*(a1 + 32) queuedJobs];
    [v6 insertObject:*(a1 + 40) atIndex:0];
  }

  else
  {
    v6 = [*(a1 + 32) callbackQueue];
    v7 = [*(a1 + 40) completionHandler];
    dispatch_async(v6, v7);
  }

  [*(a1 + 32) setCurrentlyProcessingJob:0];
  v8 = *(a1 + 32);

  return [v8 processQueuedJobs];
}

- (void)validateLivePhotoPairingIdentifierConfigurationForRequest:(id)a3
{
  v7 = a3;
  if (([v7 livePhotoPairingIdentifierBehavior] - 3) <= 1)
  {
    v5 = [v7 livePhotoPairingIdentifier];

    if (!v5)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2271 description:@"Unexpected nil pairing identifier"];
    }
  }
}

- (void)performConversionRequest:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2238 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2239 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  if ([v7 isCompositeRequest])
  {
LABEL_16:
    v9[2](v9);
    goto LABEL_17;
  }

  v10 = [v7 backwardsCompatibilityStatus];
  v11 = MEMORY[0x277CE1CB8];
  v12 = [v7 source];
  v13 = [v12 fileType];
  v14 = [v11 typeWithIdentifier:v13];

  if (![v7 requiresPassthroughConversion])
  {
LABEL_10:
    if (v10 == 2)
    {
      goto LABEL_11;
    }

LABEL_12:
    if ([v7 backwardsCompatibilityStatus] != 1)
    {
LABEL_15:

      goto LABEL_16;
    }

    [v7 setStatus:4];
    v18 = [v7 source];
    v19 = [PHMediaFormatConversionDestination destinationForConversionReturningUnchangedSource:v18];
    [v7 setDestination:v19];
LABEL_14:

    goto LABEL_15;
  }

  v15 = [v7 source];
  if ([v15 mediaType] != 1)
  {

    goto LABEL_10;
  }

  v16 = [v14 isEqual:*MEMORY[0x277CE1E40]];

  if (v10 != 2)
  {
    goto LABEL_12;
  }

  if ((v16 & 1) == 0)
  {
    [v7 setStatus:5];
    v17 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Passthrough video conversion is only available for QuickTime input format";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v17 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:4 userInfo:v18];
    [v7 setError:v19];
    goto LABEL_14;
  }

LABEL_11:
  [(PHMediaFormatConversionManager *)self validateLivePhotoPairingIdentifierConfigurationForRequest:v7];
  v20 = [(PHMediaFormatConversionManager *)self conversionImplementation];
  [v20 performConversionRequest:v7 completionHandler:v9];

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)processQueuedJobs
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [(PHMediaFormatConversionManager *)self stateQueue];
  dispatch_assert_queue_V2(v4);

  if ([(PHMediaFormatConversionManager *)self state]!= 1)
  {
    goto LABEL_4;
  }

  v5 = [(PHMediaFormatConversionManager *)self currentlyProcessingJob];
  if (v5)
  {

    goto LABEL_4;
  }

  v11 = [(PHMediaFormatConversionManager *)self queuedJobs];
  v12 = [v11 count];

  if (!v12)
  {
LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = [(PHMediaFormatConversionManager *)self state];
      v7 = [(PHMediaFormatConversionManager *)self currentlyProcessingJob];
      v8 = [v7 conversionRequest];
      v9 = [v8 identifier];
      v10 = [(PHMediaFormatConversionManager *)self queuedJobs];
      *buf = 134218498;
      v23 = v6;
      v24 = 2112;
      v25 = v9;
      v26 = 2048;
      v27 = [v10 count];
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process queued jobs: not starting job, state: %ld, current request: %@, queued job count: %lu", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v13 = [(NSMutableArray *)self->_queuedJobs firstObject];
  v14 = [(PHMediaFormatConversionManager *)self queuedJobs];
  [v14 removeObjectAtIndex:0];

  [(PHMediaFormatConversionManager *)self setCurrentlyProcessingJob:v13];
  v15 = [v13 conversionRequest];
  if ([v15 status] != 2)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [v15 statusString];
    [v18 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2203 description:{@"Unexpected request state %@", v19}];
  }

  [v15 setStatus:3];
  if ([v15 preflighted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = [v15 identifier];
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process queued jobs: starting job %{public}@ for request %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, v13);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke;
    v20[3] = &unk_27989B768;
    objc_copyWeak(v21, buf);
    v21[1] = a2;
    v20[4] = self;
    [(PHMediaFormatConversionManager *)self performConversionRequest:v15 completionHandler:v20];
    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PHMediaFormatConversionManager *)self preflightAllRelatedRequestsForCurrentJob];
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

void __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PHMediaFormatConversion.m" lineNumber:2216 description:@"Current job went away unexpectedly"];
  }

  v3 = [WeakRetained conversionRequest];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [v3 identifier];
    v5 = [v3 statusString];
    v6 = [v3 error];
    *buf = 138543874;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process queued jobs: completed request %{public}@, status = %{public}@, error = %@", buf, 0x20u);
  }

  [v3 didFinishProcessing];
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_871;
  block[3] = &unk_27989B740;
  v8 = *(a1 + 32);
  v13 = WeakRetained;
  v14 = v8;
  v15 = *(a1 + 48);
  v9 = WeakRetained;
  dispatch_async(v7, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_871(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  v2[2]();

  v3 = [*(a1 + 40) stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_2;
  block[3] = &unk_27989B740;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  dispatch_async(v3, block);
}

uint64_t __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentlyProcessingJob];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = [v9 currentlyProcessingJob];
    [v6 handleFailureInMethod:v7 object:v9 file:@"PHMediaFormatConversion.m" lineNumber:2228 description:{@"Current job mismatch: %@/%@", v8, v10}];
  }

  [*(a1 + 32) setCurrentlyProcessingJob:0];
  v4 = *(a1 + 32);

  return [v4 processQueuedJobs];
}

- (void)setDirectoryForTemporaryFiles:(id)a3
{
  v5 = a3;
  v6 = [(NSURL *)v5 path];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v8 = [v7 fileExistsAtPath:v6 isDirectory:&v15];
  v9 = [v7 isWritableFileAtPath:v6];
  v10 = v9;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2186 description:{@"Invalid temporary directory URL parameter '%@' not satisfying exists && isDirectory && isWritable (%d/%d/%d)", v5, 0, v15, v10}];

LABEL_6:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2187 description:{@"Invalid parameter not satisfying: %@", @"exists && isDirectory && isWritable"}];

    goto LABEL_3;
  }

  if ((v15 & v9 & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2186 description:{@"Invalid temporary directory URL parameter '%@' not satisfying exists && isDirectory && isWritable (%d/%d/%d)", v5, 1, v15, v10}];

    if ((v15 & v10 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_3:
  directoryForTemporaryFiles = self->_directoryForTemporaryFiles;
  self->_directoryForTemporaryFiles = v5;
}

- (void)setTransferBehaviorUserPreferenceOverride:(id)a3
{
  v4 = MEMORY[0x259C84340](a3, a2);
  transferBehaviorUserPreferenceOverride = self->_transferBehaviorUserPreferenceOverride;
  self->_transferBehaviorUserPreferenceOverride = v4;

  MEMORY[0x2821F96F8]();
}

- (void)configureTransferBehaviorUserPreferenceForRequest:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PHMediaFormatConversionManager *)self conversionImplementation];
  v6 = [v5 transferBehaviorUserPreference];

  transferBehaviorUserPreferenceOverride = self->_transferBehaviorUserPreferenceOverride;
  if (transferBehaviorUserPreferenceOverride)
  {
    v8 = transferBehaviorUserPreferenceOverride[2](transferBehaviorUserPreferenceOverride, v4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Media conversion transfer user preference overridden from %ld to %ld", &v10, 0x16u);
    }
  }

  else
  {
    v8 = v6;
  }

  [v4 setTransferBehaviorUserPreference:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)preflightConversionRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHMediaFormatConversionManager *)self preflightQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__PHMediaFormatConversionManager_preflightConversionRequest_completionHandler___block_invoke;
  block[3] = &unk_27989B718;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __79__PHMediaFormatConversionManager_preflightConversionRequest_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) preflightConversionRequest:*(a1 + 40)];
  v2 = [*(a1 + 32) callbackQueue];
  dispatch_async(v2, *(a1 + 48));
}

- (void)preflightConversionRequest:(id)a3
{
  v4 = a3;
  [(PHMediaFormatConversionManager *)self configureTransferBehaviorUserPreferenceForRequest:v4];
  [v4 setDirectoryForTemporaryFiles:self->_directoryForTemporaryFiles];
  [v4 preflightWithConversionManager:self];
}

- (void)enqueueConversionRequest:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 status] != 1)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2102 description:{@"Invalid parameter not satisfying: %@", @"conversionRequest.status == PHMediaFormatRequestStatusInitialized"}];
  }

  if ([v7 isCompositeRequest])
  {
    [v7 enqueueSubrequestsOnConversionManager:self];
  }

  v9 = [v7 source];
  v10 = [v9 renderOriginatingSignature];

  if (v10 == @"PHMediaFormatConversionUnknownFutureIdentifierPlaceholder")
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2109 description:@"Invalid attempt to enqueue a request using an identifier placeholder. The placeholder may only be used for preflight."];
  }

  if (![v7 requiresSinglePassVideoConversion])
  {
    goto LABEL_10;
  }

  v11 = objc_opt_new();
  [v11 setMediaType:1];
  [v11 generateTemporaryOutputFileURLForRequest:v7];
  [v11 enableSinglePassVideoConversionWithTargetLength:{objc_msgSend(v7, "estimatedOutputFileLength")}];
  v21 = 0;
  v12 = [v11 createTemporaryOutputDirectoryWithError:&v21];
  v13 = v21;
  if (v12)
  {
    [v7 setDestination:v11];

LABEL_10:
    v14 = [(PHMediaFormatConversionManager *)self stateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PHMediaFormatConversionManager_enqueueConversionRequest_completionHandler___block_invoke;
    block[3] = &unk_27989B718;
    block[4] = self;
    v19 = v7;
    v20 = v8;
    dispatch_sync(v14, block);

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v13;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary directory: %@", buf, 0xCu);
  }

  [v7 setError:v13];
  [v7 setStatus:5];
  v8[2](v8);

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

void __77__PHMediaFormatConversionManager_enqueueConversionRequest_completionHandler___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([a1[4] state] == 1)
  {
    v2 = [a1[4] jobForConversionRequest:a1[5] completionHandler:a1[6]];
    [a1[5] setStatus:2];
    v3 = [a1[4] queuedJobs];
    [v3 addObject:v2];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = [a1[5] identifier];
      v5 = [a1[4] queuedJobs];
      v8 = 138412546;
      v9 = v4;
      v10 = 2048;
      v11 = [v5 count];
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Enqueued request %@, enqueued count now %lu", &v8, 0x16u);
    }

    [a1[4] processQueuedJobs];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = [a1[5] identifier];
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting conversion request %@ enqueued to manager not in running state", &v8, 0xCu);
    }

    [a1[5] markAsCancelled];
    v2 = [a1[4] callbackQueue];
    dispatch_async(v2, a1[6]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupConversionImplementation
{
  v3 = objc_opt_new();
  [(PHMediaFormatConversionManager *)self setConversionImplementation:v3];
}

- (PHMediaFormatConversionManager)init
{
  v16.receiver = self;
  v16.super_class = PHMediaFormatConversionManager;
  v2 = [(PHMediaFormatConversionManager *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    queuedJobs = v2->_queuedJobs;
    v2->_queuedJobs = v3;

    v5 = dispatch_queue_create("com.apple.photos.mediaformatconversion.state", 0);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v5;

    v7 = dispatch_queue_create("com.apple.photos.mediaformatconversion.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = dispatch_queue_create("com.apple.photos.mediaformatconversion.preflight", 0);
    preflightQueue = v2->_preflightQueue;
    v2->_preflightQueue = v9;

    v2->_state = 1;
    v11 = MEMORY[0x277CBEBC0];
    v12 = NSTemporaryDirectory();
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];
    directoryForTemporaryFiles = v2->_directoryForTemporaryFiles;
    v2->_directoryForTemporaryFiles = v13;

    [(PHMediaFormatConversionManager *)v2 setupConversionImplementation];
  }

  return v2;
}

@end
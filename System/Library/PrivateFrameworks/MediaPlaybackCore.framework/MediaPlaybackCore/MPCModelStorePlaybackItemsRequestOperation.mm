@interface MPCModelStorePlaybackItemsRequestOperation
- (MPCModelStorePlaybackItemsRequestOperation)initWithRequest:(id)request responseHandler:(id)handler;
- (void)_handleItemMetadataBatchRequestCompletedWithAccumulator:(id)accumulator previousResponse:(id)response error:(id)error isFinalResponse:(BOOL)finalResponse;
- (void)_runPersonalizationWithSectionCollection:(id)collection error:(id)error isFinalResponse:(BOOL)response isInvalidForPersonalization:(BOOL)personalization performanceMetrics:(id)metrics;
- (void)_runStorePlatformRequestToLoadMetadataWithAccumulator:(id)accumulator previousResponse:(id)response;
- (void)execute;
@end

@implementation MPCModelStorePlaybackItemsRequestOperation

- (void)_handleItemMetadataBatchRequestCompletedWithAccumulator:(id)accumulator previousResponse:(id)response error:(id)error isFinalResponse:(BOOL)finalResponse
{
  finalResponseCopy = finalResponse;
  v30 = *MEMORY[0x1E69E9840];
  accumulatorCopy = accumulator;
  responseCopy = response;
  errorCopy = error;
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 134218754;
    selfCopy2 = self;
    v28 = 1024;
    *v29 = finalResponseCopy;
    *&v29[4] = 2048;
    *&v29[6] = responseCopy;
    *&v29[14] = 2114;
    *&v29[16] = errorCopy;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _handleItemMetadataBatchRequestCompletedWithAccumulator [] isFinalResponse=%{BOOL}u previousResponse=%p error=%{public}@", &v26, 0x26u);
  }

  accumulationError = [accumulatorCopy accumulationError];
  if (!responseCopy || !finalResponseCopy)
  {
    goto LABEL_11;
  }

  _personalizationResponse = [responseCopy _personalizationResponse];
  request = [_personalizationResponse request];
  unpersonalizedContentDescriptors = [request unpersonalizedContentDescriptors];

  totalItemCount = [0 totalItemCount];
  totalItemCount2 = [unpersonalizedContentDescriptors totalItemCount];
  if (totalItemCount >= totalItemCount2)
  {

LABEL_11:
    unpersonalizedContentDescriptors = [accumulatorCopy unpersonalizedContentDescriptors];
    goto LABEL_12;
  }

  v20 = totalItemCount2;
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    errors = self->_errors;
    v26 = 134218754;
    selfCopy2 = self;
    v28 = 2114;
    *v29 = errors;
    *&v29[8] = 2048;
    *&v29[10] = totalItemCount;
    *&v29[18] = 2048;
    *&v29[20] = v20;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "SPIR: %p - Falling back to existing previous response from errors: %{public}@, current item count: %li, previous item count: %li", &v26, 0x2Au);
  }

  if (!unpersonalizedContentDescriptors)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (accumulationError)
  {
    v23 = accumulationError;
  }

  else
  {
    v23 = errorCopy;
  }

  v24 = v23;
  performanceMetrics = [accumulatorCopy performanceMetrics];
  [(MPCModelStorePlaybackItemsRequestOperation *)self _runPersonalizationWithSectionCollection:unpersonalizedContentDescriptors error:v24 isFinalResponse:finalResponseCopy isInvalidForPersonalization:0 performanceMetrics:performanceMetrics];
}

- (void)_runPersonalizationWithSectionCollection:(id)collection error:(id)error isFinalResponse:(BOOL)response isInvalidForPersonalization:(BOOL)personalization performanceMetrics:(id)metrics
{
  v61 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  errorCopy = error;
  metricsCopy = metrics;
  if (!personalization)
  {
    hasCalledResponseHandler = self->_hasCalledResponseHandler;
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (hasCalledResponseHandler)
    {
      if (v17)
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = self;
        _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection invalidating previousModelResponse [_hasCalledResponseHandler]", &buf, 0xCu);
      }

      [(MPModelResponse *)self->_previousModelResponse _invalidate];
      goto LABEL_19;
    }

    if (v17)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection setting hasCalledResponseHandler = YES", &buf, 0xCu);
    }

    self->_hasCalledResponseHandler = 1;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__11709;
  v59 = __Block_byref_object_dispose__11710;
  responseHandler = [(MPCModelStorePlaybackItemsRequestOperation *)self responseHandler];
  if (errorCopy)
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 134218242;
      *&v53[4] = self;
      *&v53[12] = 2114;
      *&v53[14] = errorCopy;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection finishing with error [non-nil error passed in] error=%{public}@", v53, 0x16u);
    }

    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, 0, errorCopy);
    }

    [(MPAsyncOperation *)self finishWithError:errorCopy];
  }

  else
  {
    *v53 = 0;
    *&v53[8] = v53;
    *&v53[16] = 0x2810000000;
    v54 = &unk_1C60E49B1;
    v55 = 0;
    request = [(MPCModelStorePlaybackItemsRequestOperation *)self request];
    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    allowsExplicitContent = [mEMORY[0x1E6970920] allowsExplicitContent];

    v22 = [objc_alloc(MEMORY[0x1E69709E0]) initWithUnpersonalizedRequest:request unpersonalizedContentDescriptors:collectionCopy];
    userIdentity = [(MPCPlaybackAccount *)self->_account userIdentity];
    [v22 setUserIdentity:userIdentity];

    [v22 setMatchAlbumArtistsOnNameAndStoreID:0];
    v24 = objc_alloc(MEMORY[0x1E69B13F0]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __156__MPCModelStorePlaybackItemsRequestOperation__runPersonalizationWithSectionCollection_error_isFinalResponse_isInvalidForPersonalization_performanceMetrics___block_invoke;
    v44[3] = &unk_1E8233C80;
    v44[4] = self;
    v47 = v53;
    p_buf = &buf;
    v25 = v22;
    v45 = v25;
    v46 = collectionCopy;
    v26 = [v24 initWithTimeout:v44 interruptionHandler:60.0];
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 134218242;
      selfCopy = self;
      v51 = 2114;
      v52 = v25;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection performing personalization request [] personalizationRequest=%{public}@", v49, 0x16u);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __156__MPCModelStorePlaybackItemsRequestOperation__runPersonalizationWithSectionCollection_error_isFinalResponse_isInvalidForPersonalization_performanceMetrics___block_invoke_68;
    v32[3] = &unk_1E8233CA8;
    v28 = v26;
    v33 = v28;
    selfCopy2 = self;
    v29 = v25;
    v35 = v29;
    v30 = request;
    v36 = v30;
    responseCopy = response;
    personalizationCopy = personalization;
    v43 = allowsExplicitContent;
    v37 = metricsCopy;
    v38 = 0;
    v39 = &buf;
    v40 = v53;
    [v29 performWithResponseHandler:v32];

    _Block_object_dispose(v53, 8);
  }

  _Block_object_dispose(&buf, 8);

LABEL_19:
}

void __156__MPCModelStorePlaybackItemsRequestOperation__runPersonalizationWithSectionCollection_error_isFinalResponse_isInvalidForPersonalization_performanceMetrics___block_invoke(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 134217984;
      v49 = v6;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_FAULT, "SPIR: %p: _runPersonalizationWithSectionCollection failed [personalization request dealloc'd responseHandler]", buf, 0xCu);
    }

    v7 = @"personalization request dealloc'd responseHandler";
    v8 = @"BlockGuard-Dealloc";
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      *buf = 134217984;
      v49 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_FAULT, "SPIR: %p: _runPersonalizationWithSectionCollection failed [personalization request timed out]", buf, 0xCu);
    }

    v7 = @"personalization request timed out";
    v8 = @"BlockGuard-Timeout";
  }

  v38 = v8;

  v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:70 debugDescription:{@"Block guard interrupted [%@]", v7}];
  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  v11 = *(*(*(a1 + 64) + 8) + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, 0, v10);
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v39 = v10;
  [*(a1 + 32) finishWithError:v10];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = MEMORY[0x1E69705E8];
  v16 = [*(a1 + 40) userIdentity];
  v17 = [v15 deviceMediaLibraryWithUserIdentity:v16];

  v37 = v17;
  v18 = [v17 msvDatabase];
  v19 = [v18 statementWithString:@"SELECT media_type error:{COUNT() FROM item GROUP BY media_type", 0}];
  v20 = [v18 resultsForStatement:v19];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = [v25 objectValueAtColumnIndex:0];
        v27 = [v25 objectValueAtColumnIndex:1];
        [v14 setObject:v27 forKeyedSubscript:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v22);
  }

  v28 = MEMORY[0x1E69B13D8];
  v29 = *MEMORY[0x1E69B1340];
  v44[0] = @"request";
  v30 = [*(a1 + 32) request];
  v31 = [v30 description];
  v32 = v31;
  v33 = @"@";
  if (v31)
  {
    v33 = v31;
  }

  v34 = *(a1 + 48);
  v45[0] = v33;
  v45[1] = v34;
  v44[1] = @"unpersonalizedContentDescriptors";
  v44[2] = @"library-stats";
  v45[2] = v14;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v46 = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  [v28 snapshotWithDomain:v29 type:@"Bug" subType:@"StorePlaybackItemsRequest-Personalization" context:v38 triggerThresholdValues:0 events:v36 completion:0];
}

void __156__MPCModelStorePlaybackItemsRequestOperation__runPersonalizationWithSectionCollection_error_isFinalResponse_isInvalidForPersonalization_performanceMetrics___block_invoke_68(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) disarm];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v28 = 134218242;
    v29 = v5;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection personalization response handler called [] personalizationRequest=%{public}@ ", &v28, 0x16u);
  }

  v7 = [v3 results];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _disableMissingIdentifiersFaults];
  }

  v8 = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:*(a1 + 56) personalizationResponse:v3 results:0 performanceMetrics:*(a1 + 64) accumulator:0];
  [(MPCModelStorePlaybackItemsResponse *)v8 setFinalResponse:*(a1 + 96)];
  if (*(*(a1 + 40) + 298) == 1)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v28 = 134217984;
      v29 = v10;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "SPIR: %p: producing an invalid response [_requiresFollowupRequest]", &v28, 0xCu);
    }

    [(MPModelResponse *)v8 _invalidate];
  }

  if ((*(a1 + 97) & 1) == 0)
  {
    v11 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    v12 = [v11 allowsExplicitContent];
    v13 = *(a1 + 98);

    if (v13 != v12)
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v28 = 134217984;
        v29 = v15;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "SPIR: %p: producing an invalid response [allowsExplicitContent mismatch]", &v28, 0xCu);
      }

      [(MPModelResponse *)v8 _invalidate];
    }
  }

  if (*(a1 + 96) == 1)
  {
    v16 = [*(*(a1 + 40) + 288) firstObject];
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v28 = 134218498;
      v29 = v18;
      v30 = 2114;
      v31 = v8;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection finishing [isFinalResponse] currentModelResponse=%{public}@ error=%{public}@", &v28, 0x20u);
    }

    v19 = *(*(*(a1 + 80) + 8) + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, v8, v16);
    }

    [*(a1 + 40) finishWithError:v16];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 72);
      v28 = 134218498;
      v29 = v21;
      v30 = 2114;
      v31 = v8;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "SPIR: %p: _runPersonalizationWithSectionCollection finishing [non-finalResponse] currentModelResponse=%{public}@ error=%{public}@", &v28, 0x20u);
    }

    os_unfair_lock_lock((*(*(a1 + 88) + 8) + 32));
    v23 = *(*(*(a1 + 80) + 8) + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, v8, *(a1 + 72));
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }

    os_unfair_lock_unlock((*(*(a1 + 88) + 8) + 32));
    [*(a1 + 40) finishWithError:*(a1 + 72)];
    v26 = *(a1 + 40);
    v27 = v8;
    v16 = *(v26 + 272);
    *(v26 + 272) = v27;
  }
}

- (void)_runStorePlatformRequestToLoadMetadataWithAccumulator:(id)accumulator previousResponse:(id)response
{
  v31 = *MEMORY[0x1E69E9840];
  accumulatorCopy = accumulator;
  responseCopy = response;
  newStoreItemMetadataRequest = [accumulatorCopy newStoreItemMetadataRequest];
  [newStoreItemMetadataRequest setShouldIgnoreExpiration:1];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    itemIdentifiers = [newStoreItemMetadataRequest itemIdentifiers];
    v11 = [itemIdentifiers count];
    itemIdentifiers2 = [newStoreItemMetadataRequest itemIdentifiers];
    msv_compactDescription = [itemIdentifiers2 msv_compactDescription];
    *buf = 134218498;
    selfCopy = self;
    v27 = 2048;
    v28 = v11;
    v29 = 2114;
    v30 = msv_compactDescription;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "SPIR: %p: requesting store metadata for %ld items itemIDs=%{public}@", buf, 0x20u);
  }

  mEMORY[0x1E69709D0] = [MEMORY[0x1E69709D0] sharedStoreItemMetadataRequestController];
  [mEMORY[0x1E69709D0] beginTransaction];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__MPCModelStorePlaybackItemsRequestOperation__runStorePlatformRequestToLoadMetadataWithAccumulator_previousResponse___block_invoke;
  v20[3] = &unk_1E8238938;
  v20[4] = self;
  v21 = newStoreItemMetadataRequest;
  v22 = accumulatorCopy;
  v23 = mEMORY[0x1E69709D0];
  v24 = responseCopy;
  v15 = responseCopy;
  v16 = mEMORY[0x1E69709D0];
  v17 = accumulatorCopy;
  v18 = newStoreItemMetadataRequest;
  v19 = [v16 getStoreItemMetadataForRequest:v18 includeBatchResponseError:1 responseHandler:v20];
}

void __117__MPCModelStorePlaybackItemsRequestOperation__runStorePlatformRequestToLoadMetadataWithAccumulator_previousResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = (a1 + 32);
    if (*(*(a1 + 32) + 296))
    {
      goto LABEL_16;
    }

    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v11;
      v21 = [v5 lastBatchStoreItemDictionaries];
      v13 = [v21 count];
      v20 = [v5 itemIdentifiers];
      v14 = [v20 count];
      v15 = [v5 lastBatchItemIdentifiers];
      v16 = [v15 msv_compactDescription];
      *buf = 134218754;
      v23 = v19;
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "SPIR: %p: got store metadata for %ld items (accumulatedItemCount=%ld) lastBatchItemIDs=%{public}@", buf, 0x2Au);
    }

    goto LABEL_10;
  }

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 134218754;
    v23 = v8;
    v24 = 2048;
    v25 = v5;
    v26 = 2048;
    v27 = v9;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "SPIR: %p: SP request=%p got response=%p with error=%{public}@ ", buf, 0x2Au);
  }

  v11 = (a1 + 32);
  v10 = *(a1 + 32);
  if ((*(v10 + 296) & 1) == 0)
  {
    [*(v10 + 288) addObject:v6];
LABEL_10:
    if ([*(a1 + 48) handleResponse:v5 error:v6])
    {
      *(*(a1 + 32) + 296) = 1;
      *(*(a1 + 32) + 298) = 0;
      [*(a1 + 56) endTransaction];
      [*(a1 + 32) _handleItemMetadataBatchRequestCompletedWithAccumulator:*(a1 + 48) previousResponse:*(a1 + 64) error:v6 isFinalResponse:1];
    }

    else if ([v5 isFinalResponse])
    {
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v11;
        *buf = 134217984;
        v23 = v18;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "SPIR: %p: metadataResponse is final, but we don't have enough items, recursing", buf, 0xCu);
      }

      [*(a1 + 32) _runStorePlatformRequestToLoadMetadataWithAccumulator:*(a1 + 48) previousResponse:*(a1 + 64)];
    }
  }

LABEL_16:
}

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  responseHandler = [(MPCModelStorePlaybackItemsRequestOperation *)self responseHandler];
  if (responseHandler)
  {
    v4 = responseHandler;
  }

  else
  {
    v4 = &__block_literal_global_11776;
  }

  if ([(MPAsyncOperation *)self isCancelled])
  {
    request = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:28 userInfo:0];
    v4[2](v4, 0, request);
    [(MPAsyncOperation *)self finishWithError:request];
  }

  else
  {
    request = [(MPCModelStorePlaybackItemsRequestOperation *)self request];
    if ([request isValid])
    {
      v6 = +[MPCPlaybackAccountManager sharedManager];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__MPCModelStorePlaybackItemsRequestOperation_execute__block_invoke_7;
      v9[3] = &unk_1E8237160;
      v9[4] = self;
      v10 = v6;
      v12 = v4;
      v11 = request;
      v7 = v6;
      [v7 performAfterLoadingAccounts:v9];
    }

    else
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "SPIR: %p: failing with error [request missing both storeIDs and sectionedModelObjects]", buf, 0xCu);
      }

      v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:@"Request must contain either storeIDs or sectionedModelObjects"];
      v4[2](v4, 0, v7);
      [(MPAsyncOperation *)self finishWithError:v7];
    }
  }
}

void __53__MPCModelStorePlaybackItemsRequestOperation_execute__block_invoke_7(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 304) playbackRequestEnvironment];
  v3 = [v2 userIdentity];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  }

  v6 = v5;

  v7 = [*(a1 + 40) accountForUserIdentity:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 280);
  *(v8 + 280) = v7;

  if (*(*(a1 + 32) + 280))
  {
    v10 = [*(a1 + 48) previousResponse];
    if ([v10 isInvalidForPersonalization])
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 134218240;
        v47 = v12;
        v48 = 2048;
        *v49 = v10;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "SPIR: %p: re-running personalization [previousResponse.isInvalidForPersonalization] previousResponse=%p", buf, 0x16u);
      }

      v13 = [v10 _personalizationResponse];
      v14 = [v13 request];
      v15 = [v14 unpersonalizedContentDescriptors];

      [*(a1 + 32) _runPersonalizationWithSectionCollection:v15 error:0 isFinalResponse:objc_msgSend(v10 isInvalidForPersonalization:"isFinalResponse") performanceMetrics:{1, 0}];
      goto LABEL_41;
    }

    v18 = [*(a1 + 48) storeIDs];
    v19 = [v18 count];

    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = *(a1 + 32);
      v23 = [*(a1 + 48) storeIDs];
      v24 = [v23 msv_compactDescription];
      *buf = 134218242;
      v47 = v22;
      v48 = 2114;
      *v49 = v24;
      v25 = "SPIR: %p: starting requestedStoreIDs=%{public}@";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      v26 = *(a1 + 32);
      v23 = [*(a1 + 48) identifiers];
      v24 = [v23 debugDescription];
      *buf = 134218242;
      v47 = v26;
      v48 = 2114;
      *v49 = v24;
      v25 = "SPIR: %p: starting identifiers=%{public}@";
    }

    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);

LABEL_18:
    v15 = [[_MPCModelStorePlaybackItemsRequestAccumulator_Legacy alloc] initWithRequest:*(a1 + 48)];
    v27 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v15 accumulatorResult];
    var0 = v27.var0;
    v29 = *&v27 & 0x100;
    *(*(a1 + 32) + 298) = (*&v27 & 0x100) == 0;
    v30 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v15 accumulationError];
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      *buf = 134218754;
      v47 = v32;
      v48 = 1024;
      *v49 = HIBYTE(v29);
      *&v49[4] = 1024;
      *&v49[6] = var0;
      v50 = 2114;
      v51 = v30;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "SPIR: %p: initial accumulator result: didFinishPrioritizedBatch=%{BOOL}u didFinishEntireRequest=%{BOOL}u accumulationError=%{public}@", buf, 0x22u);
    }

    if (v30)
    {
      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 32);
        *buf = 134218242;
        v47 = v34;
        v48 = 2114;
        *v49 = v30;
        _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "SPIR: %p: completing without requests [has accumulationError] accumulationError=%{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      [*(a1 + 32) finishWithError:v30];
      goto LABEL_40;
    }

    if (v29 && var0)
    {
      v35 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v15 unpersonalizedContentDescriptors];
      [*(a1 + 32) _runPersonalizationWithSectionCollection:v35 error:0 isFinalResponse:1 isInvalidForPersonalization:0 performanceMetrics:0];
      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 32);
        *buf = 134218242;
        v47 = v37;
        v48 = 2114;
        *v49 = v35;
        _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "SPIR: %p: completing without requests [no remaining IDs to request] unpersonalizedContentDescriptors=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (([*(*(a1 + 32) + 280) hasCatalogPlaybackCapability] & 1) == 0)
      {
        v38 = [*(a1 + 32) request];
        v39 = [v38 isInGroupSession];

        if ((v39 & 1) == 0)
        {
          v35 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:57 debugDescription:{@"Cannot make remaining requests [account missing catalogPlaybackCapability] account=%@", *(*(a1 + 32) + 280)}];
          (*(*(a1 + 56) + 16))();
          [*(a1 + 32) finishWithError:v35];
          goto LABEL_39;
        }
      }

      v40 = [MEMORY[0x1E69E4528] sharedPrivacyInfo];
      v41 = [v40 privacyAcknowledgementRequiredForMusic];

      v42 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v43 = v42;
      if (!v41)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 32);
          *buf = 134217984;
          v47 = v45;
          _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "SPIR: %p: performing remaining lookups via StorePlatform", buf, 0xCu);
        }

        [*(a1 + 32) _runStorePlatformRequestToLoadMetadataWithAccumulator:v15 previousResponse:v10];
        goto LABEL_40;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 134217984;
        v47 = v44;
        _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_ERROR, "SPIR: %p: Declining to use StorePlatform due to required privacy acknowledgement.", buf, 0xCu);
      }

      v35 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7007 userInfo:0];
      v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:57 underlyingError:v35 debugDescription:{@"Cannot make remaining requests [privacy ack required] account=%@", *(*(a1 + 32) + 280)}];
      (*(*(a1 + 56) + 16))();
      [*(a1 + 32) finishWithError:v36];
    }

LABEL_39:
LABEL_40:

LABEL_41:
    goto LABEL_42;
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    *buf = 134218242;
    v47 = v17;
    v48 = 2114;
    *v49 = v6;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "SPIR: %p: failing with error [missing account] userIdentity=%{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:57 debugDescription:{@"Unable to find account for identity: %@", v6}];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) finishWithError:v10];
LABEL_42:
}

- (MPCModelStorePlaybackItemsRequestOperation)initWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [(MPAsyncOperation *)self init];
  if (v8)
  {
    v9 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v9;

    v11 = [handlerCopy copy];
    responseHandler = v8->_responseHandler;
    v8->_responseHandler = v11;

    array = [MEMORY[0x1E695DF70] array];
    errors = v8->_errors;
    v8->_errors = array;
  }

  return v8;
}

@end
@interface MPCModelStorePlaybackItemsRequestPaginatedOperation
- (MPCModelStorePlaybackItemsRequestPaginatedOperation)initWithRequest:(id)request responseHandler:(id)handler accumulator:(id)accumulator;
- (void)_finishWithResponse:(id)response error:(id)error;
- (void)execute;
- (void)finish;
- (void)finishWithError:(id)error;
- (void)loadNextPageForAccumulator:(id)accumulator;
- (void)refreshEligibilityForResponse:(id)response;
- (void)repersonalizeContentDescriptors:(id)descriptors accumulator:(id)accumulator isFinalResponse:(BOOL)response;
@end

@implementation MPCModelStorePlaybackItemsRequestPaginatedOperation

- (void)_finishWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (responseCopy && errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = currentHandler;
    v11 = @"Must not have both response and error";
    v12 = a2;
    selfCopy2 = self;
    v14 = 317;
  }

  else
  {
    if (responseCopy | errorCopy)
    {
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = currentHandler;
    v11 = @"Must have either response or error";
    v12 = a2;
    selfCopy2 = self;
    v14 = 318;
  }

  [currentHandler handleFailureInMethod:v12 object:selfCopy2 file:@"MPCModelStorePlaybackItemsRequestPaginatedOperation.m" lineNumber:v14 description:v11];

LABEL_4:
  responseHandler = [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self responseHandler];
  responseHandler[2](responseHandler, responseCopy, errorCopy);

  [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self finishWithError:errorCopy];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if ([(MPAsyncOperation *)self isFinished])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestPaginatedOperation.m" lineNumber:312 description:@"Attempt to finish more than once"];
  }

  v7.receiver = self;
  v7.super_class = MPCModelStorePlaybackItemsRequestPaginatedOperation;
  [(MPAsyncOperation *)&v7 finishWithError:errorCopy];
}

- (void)finish
{
  if ([(MPAsyncOperation *)self isFinished])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestPaginatedOperation.m" lineNumber:307 description:@"Attempt to finish more than once"];
  }

  v5.receiver = self;
  v5.super_class = MPCModelStorePlaybackItemsRequestPaginatedOperation;
  [(MPAsyncOperation *)&v5 finish];
}

- (void)execute
{
  v19 = *MEMORY[0x1E69E9840];
  request = [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self request];
  if (([request supportsPaginatedResults] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestPaginatedOperation.m" lineNumber:134 description:{@"Attempt to run PaginatedOperation for non-paginated request: %@", request}];
  }

  v5 = self->_accumulator;
  if ([(MPAsyncOperation *)self isCancelled])
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:28 userInfo:0];
LABEL_10:
    v10 = v6;
    [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self _finishWithResponse:0 error:v6];

    goto LABEL_11;
  }

  if (([request isValid] & 1) == 0)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      piaTag = [(MPCModelStorePlaybackItemsRequestAccumulator *)v5 piaTag];
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] execute | failing with error [request missing both storeIDs and sectionedModelObjects]", buf, 8u);
    }

    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:@"Request must contain either storeIDs or sectionedModelObjects"];
    goto LABEL_10;
  }

  v7 = +[MPCPlaybackAccountManager sharedManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MPCModelStorePlaybackItemsRequestPaginatedOperation_execute__block_invoke;
  v12[3] = &unk_1E8233D40;
  v12[4] = self;
  v13 = v7;
  v14 = v5;
  v15 = request;
  v16 = a2;
  v8 = v7;
  [v8 performAfterLoadingAccounts:v12];

LABEL_11:
}

void __62__MPCModelStorePlaybackItemsRequestPaginatedOperation_execute__block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 288) playbackRequestEnvironment];
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
  v9 = *(v8 + 272);
  *(v8 + 272) = v7;

  if (*(*(a1 + 32) + 272))
  {
    v10 = [*(a1 + 56) previousResponse];
    v11 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    v22 = [v10 invalidationReason];
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        if (v22 == 3)
        {
          v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [*(a1 + 48) piaTag];
            *buf = 67109120;
            v81 = v26;
            _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | repersonalizing [account invalidation]", buf, 8u);
          }

          if ([objc_opt_class() useAccumulatedResults])
          {
            goto LABEL_25;
          }

          goto LABEL_45;
        }

LABEL_44:
        v48 = [MEMORY[0x1E696AAA8] currentHandler];
        [v48 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestPaginatedOperation.m" lineNumber:203 description:{@"Unexpected previousResponse with invalidationReason=%ld", objc_msgSend(v11, "invalidationReason")}];

LABEL_6:
        v12 = [*(a1 + 48) accumulatorResult];
        v13 = [*(a1 + 48) accumulationError];
        v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = [*(a1 + 48) piaTag];
            *buf = 67109378;
            v81 = v16;
            v82 = 2114;
            *v83 = v13;
            _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | completing without requests [has accumulationError] accumulationError=%{public}@", buf, 0x12u);
          }

          v17 = *(a1 + 32);
          v18 = 0;
          v19 = v13;
          goto LABEL_26;
        }

        if (v15)
        {
          v27 = [*(a1 + 48) piaTag];
          *buf = 67109890;
          v81 = v27;
          v82 = 1024;
          *v83 = (v12 >> 8) & 1;
          *&v83[4] = 1024;
          *&v83[6] = v12 & 1;
          v84 = 2114;
          v85 = 0;
          _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | initial accumulator result [] finishedPrioritized=%{BOOL}u finished=%{BOOL}u accumulationError=%{public}@", buf, 0x1Eu);
        }

        if ((v12 & 0x100) != 0)
        {
          if ([objc_opt_class() useAccumulatedResults])
          {
            v28 = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:*(*(a1 + 32) + 288) accumulator:*(a1 + 48)];
            [(MPCModelStorePlaybackItemsResponse *)v28 setFinalResponse:v12 & 1];
            [*(a1 + 32) _finishWithResponse:v28 error:0];
            if (v12)
            {
              v29 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [*(a1 + 48) piaTag];
                *buf = 67109120;
                v81 = v30;
                v31 = "[SPIR:%{sonic:fourCC}u] execute | finished [no remaining IDs to request]";
LABEL_57:
                v58 = v29;
                v59 = 8;
LABEL_61:
                _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, v31, buf, v59);
              }
            }

            else
            {
              v29 = _MPCLogCategoryPlayback_Oversize();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v57 = [*(a1 + 48) piaTag];
                *buf = 67109120;
                v81 = v57;
                v31 = "[SPIR:%{sonic:fourCC}u] execute | finished with placeholders [prioritized IDs loaded]";
                goto LABEL_57;
              }
            }

LABEL_62:

            goto LABEL_27;
          }

          v28 = [*(a1 + 48) unpersonalizedContentDescriptors];
          [*(a1 + 32) repersonalizeContentDescriptors:v28 accumulator:*(a1 + 48) isFinalResponse:v12 & 1];
          if (v12)
          {
            v29 = _MPCLogCategoryPlayback();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_62;
            }

            v56 = [*(a1 + 48) piaTag];
            *buf = 67109378;
            v81 = v56;
            v82 = 2114;
            *v83 = v28;
            v31 = "[SPIR:%{sonic:fourCC}u] execute | finished [no remaining IDs to request] unpersonalizedContentDescriptors=%{public}@";
          }

          else
          {
            v29 = _MPCLogCategoryPlayback_Oversize();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_62;
            }

            v60 = [*(a1 + 48) piaTag];
            *buf = 67109378;
            v81 = v60;
            v82 = 2114;
            *v83 = v28;
            v31 = "[SPIR:%{sonic:fourCC}u] execute | finished with placeholders [prioritized IDs loaded] unpersonalizedContentDescriptors=%{public}@";
          }

          v58 = v29;
          v59 = 18;
          goto LABEL_61;
        }

        v32 = [*(a1 + 56) sodPersonID];
        v33 = [v32 length];

        if (v33)
        {
          v34 = MEMORY[0x1E69E4680];
          v35 = MEMORY[0x1E696AD98];
          v36 = [*(a1 + 56) sodPersonID];
          v37 = [v35 numberWithLongLong:{objc_msgSend(v36, "longLongValue")}];
          v38 = [v34 specificAccountWithDSID:v37];

          v39 = *(a1 + 48);
          v40 = [*(a1 + 56) sodContainerPayload];
          v41 = [*(a1 + 56) sodItemPayload];
          LODWORD(v39) = [v39 handleContainerPayload:v40 itemPayload:v41 userIdentity:v38];

          if (v39)
          {
            v42 = [*(a1 + 48) accumulatorResult];
            v43 = [*(a1 + 48) accumulationError];
            v44 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [*(a1 + 48) piaTag];
              *buf = 67109890;
              v81 = v45;
              v82 = 1024;
              *v83 = (v42 >> 8) & 1;
              *&v83[4] = 1024;
              *&v83[6] = v42 & 1;
              v84 = 2114;
              v85 = v43;
              _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | accumulator result [imported request payloads] finishedPrioritized=%{BOOL}u finished=%{BOOL}u accumulationError=%{public}@", buf, 0x1Eu);
            }

            if (v43)
            {
              v46 = _MPCLogCategoryPlayback();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v47 = [*(a1 + 48) piaTag];
                *buf = 67109378;
                v81 = v47;
                v82 = 2114;
                *v83 = 0;
                _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | completing without requests [has secondAccumulationError] accumulationError=%{public}@", buf, 0x12u);
              }

LABEL_75:
              [*(a1 + 32) _finishWithResponse:0 error:v43];
LABEL_76:

LABEL_83:
              goto LABEL_27;
            }

            if ((v42 & 0x100) != 0)
            {
              if ([objc_opt_class() useAccumulatedResults])
              {
                v61 = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:*(*(a1 + 32) + 288) accumulator:*(a1 + 48)];
                [(MPCModelStorePlaybackItemsResponse *)v61 setFinalResponse:v42 & 1];
                [*(a1 + 32) _finishWithResponse:v61 error:0];
                if (v42)
                {
                  v62 = _MPCLogCategoryPlayback();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = [*(a1 + 48) piaTag];
                    *buf = 67109120;
                    v81 = v63;
                    v64 = "[SPIR:%{sonic:fourCC}u] execute | finished [response built from request payloads]";
LABEL_89:
                    v77 = v62;
                    v78 = 8;
LABEL_93:
                    _os_log_impl(&dword_1C5C61000, v77, OS_LOG_TYPE_DEFAULT, v64, buf, v78);
                  }
                }

                else
                {
                  v62 = _MPCLogCategoryPlayback_Oversize();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    v76 = [*(a1 + 48) piaTag];
                    *buf = 67109120;
                    v81 = v76;
                    v64 = "[SPIR:%{sonic:fourCC}u] execute | finished with placeholders [prioritized response built from request payloads]";
                    goto LABEL_89;
                  }
                }

LABEL_94:

                goto LABEL_76;
              }

              v61 = [*(a1 + 48) unpersonalizedContentDescriptors];
              [*(a1 + 32) repersonalizeContentDescriptors:v61 accumulator:*(a1 + 48) isFinalResponse:v42 & 1];
              if (v42)
              {
                v62 = _MPCLogCategoryPlayback();
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_94;
                }

                v75 = [*(a1 + 48) piaTag];
                *buf = 67109378;
                v81 = v75;
                v82 = 2114;
                *v83 = v61;
                v64 = "[SPIR:%{sonic:fourCC}u] execute | finished [response built from request payloads] unpersonalizedContentDescriptors=%{public}@";
              }

              else
              {
                v62 = _MPCLogCategoryPlayback_Oversize();
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_94;
                }

                v79 = [*(a1 + 48) piaTag];
                *buf = 67109378;
                v81 = v79;
                v82 = 2114;
                *v83 = v61;
                v64 = "[SPIR:%{sonic:fourCC}u] execute | finished with placeholders [prioritized response built from request payloads] unpersonalizedContentDescriptors=%{public}@";
              }

              v77 = v62;
              v78 = 18;
              goto LABEL_93;
            }
          }
        }

        if (([*(*(a1 + 32) + 272) hasCatalogPlaybackCapability] & 1) == 0)
        {
          v65 = [*(a1 + 32) request];
          v66 = [v65 isInGroupSession];

          if ((v66 & 1) == 0)
          {
            v38 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:57 debugDescription:{@"Cannot make remaining requests [account missing catalogPlaybackCapability] account=%@", *(*(a1 + 32) + 272)}];
            v73 = _MPCLogCategoryPlayback();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = [*(a1 + 48) piaTag];
              *buf = 67109120;
              v81 = v74;
              _os_log_impl(&dword_1C5C61000, v73, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] execute | failing [account missing catalogPlaybackCapability]", buf, 8u);
            }

            [*(a1 + 32) _finishWithResponse:0 error:v38];
            goto LABEL_83;
          }
        }

        v67 = [MEMORY[0x1E69E4528] sharedPrivacyInfo];
        v68 = [v67 privacyAcknowledgementRequiredForMusic];

        v69 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v70 = v69;
        if (!v68)
        {
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v72 = [*(a1 + 48) piaTag];
            *buf = 67109120;
            v81 = v72;
            _os_log_impl(&dword_1C5C61000, v70, OS_LOG_TYPE_DEFAULT, "[SPIR%{sonic:fourCC}u] execute | loadPage [firstPage]", buf, 8u);
          }

          [*(a1 + 32) loadNextPageForAccumulator:*(a1 + 48)];
          goto LABEL_27;
        }

        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v71 = [*(a1 + 48) piaTag];
          *buf = 67109120;
          v81 = v71;
          _os_log_impl(&dword_1C5C61000, v70, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] execute | failing [privacy acknowledgement required]", buf, 8u);
        }

        v38 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7007 userInfo:0];
        v43 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:57 underlyingError:v38 debugDescription:{@"Cannot make remaining requests [privacy acknowledgement required] account=%@", *(*(a1 + 32) + 272)}];
        goto LABEL_75;
      }

      v54 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [*(a1 + 48) piaTag];
        *buf = 67109120;
        v81 = v55;
        _os_log_impl(&dword_1C5C61000, v54, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | refreshing [restrictions invalidation]", buf, 8u);
      }

      [*(a1 + 32) refreshEligibilityForResponse:v11];
    }

    else
    {
      if (v22)
      {
        if (v22 == 1)
        {
          v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 48) piaTag];
            *buf = 67109120;
            v81 = v24;
            _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | repersonalizing [library invalidation]", buf, 8u);
          }

          if ([objc_opt_class() useAccumulatedResults])
          {
            [*(a1 + 48) repersonalize];
LABEL_25:
            v13 = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:*(*(a1 + 32) + 288) accumulator:*(a1 + 48)];
            -[MPCModelStorePlaybackItemsResponse setFinalResponse:](v13, "setFinalResponse:", [v11 isFinalResponse]);
            v17 = *(a1 + 32);
            v18 = v13;
            v19 = 0;
LABEL_26:
            [v17 _finishWithResponse:v18 error:v19];
LABEL_27:

            goto LABEL_28;
          }

LABEL_45:
          v49 = [v11 _personalizationResponse];
          v50 = [v49 request];
          v51 = [v50 unpersonalizedContentDescriptors];

          [*(a1 + 32) repersonalizeContentDescriptors:v51 accumulator:*(a1 + 48) isFinalResponse:{objc_msgSend(v11, "isFinalResponse")}];
          goto LABEL_28;
        }

        goto LABEL_44;
      }

      v52 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [*(a1 + 48) piaTag];
        *buf = 67109120;
        v81 = v53;
        _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] execute | loadPage [next page]", buf, 8u);
      }

      [*(a1 + 32) loadNextPageForAccumulator:*(a1 + 48)];
    }
  }

  else
  {
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(a1 + 48) piaTag];
      *buf = 67109378;
      v81 = v21;
      v82 = 2114;
      *v83 = v6;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] execute | failing with error [missing account] userIdentity=%{public}@", buf, 0x12u);
    }

    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:57 debugDescription:{@"Unable to find account for identity: %@", v6}];
    [*(a1 + 32) _finishWithResponse:0 error:v11];
  }

LABEL_28:
}

- (void)loadNextPageForAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  nextPaginatedStoreItemMetadataRequest = [accumulatorCopy nextPaginatedStoreItemMetadataRequest];
  [nextPaginatedStoreItemMetadataRequest setShouldIgnoreExpiration:1];
  mEMORY[0x1E69709D0] = [MEMORY[0x1E69709D0] sharedStoreItemMetadataRequestController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__MPCModelStorePlaybackItemsRequestPaginatedOperation_loadNextPageForAccumulator___block_invoke;
  v9[3] = &unk_1E8233D18;
  v9[4] = self;
  v10 = accumulatorCopy;
  v7 = accumulatorCopy;
  v8 = [mEMORY[0x1E69709D0] getStoreItemMetadataForRequest:nextPaginatedStoreItemMetadataRequest includeBatchResponseError:1 responseHandler:v9];
}

void __82__MPCModelStorePlaybackItemsRequestPaginatedOperation_loadNextPageForAccumulator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isFinished])
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) piaTag];
      v20 = 67109120;
      v21 = v8;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] loadNextPageForAccumulator | ignoring response [arrived after operation finished]", &v20, 8u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 40) piaTag];
        v20 = 67109378;
        v21 = v10;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] loadNextPageForAccumulator | received error from metadata controller [] error=%{public}@", &v20, 0x12u);
      }
    }

    v11 = [*(a1 + 40) handlePaginatedResponse:v5 error:v6];
    v12 = [*(a1 + 40) accumulationError];
    if (v12)
    {
      v7 = v12;
      [*(a1 + 32) _finishWithResponse:0 error:v12];
    }

    else
    {
      if ([v5 isFinalResponse])
      {
        if (v11 & 0x100) != 0 || (v11)
        {
          v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [*(a1 + 40) piaTag];
            v20 = 67109120;
            v21 = v14;
            _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] loadNextPageForAccumulator | producing model response [recieved final response]", &v20, 8u);
          }

          if ([objc_opt_class() useAccumulatedResults])
          {
            v15 = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:*(*(a1 + 32) + 288) accumulator:*(a1 + 40)];
            [(MPCModelStorePlaybackItemsResponse *)v15 setFinalResponse:v11 & 1];
            [*(a1 + 32) _finishWithResponse:v15 error:0];
          }

          else
          {
            v15 = [*(a1 + 40) unpersonalizedContentDescriptors];
            [*(a1 + 32) repersonalizeContentDescriptors:v15 accumulator:*(a1 + 40) isFinalResponse:v11 & 1];
          }
        }

        else
        {
          v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [*(a1 + 40) piaTag];
            v20 = 67109120;
            v21 = v19;
            _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] loadNextPageForAccumulator | attempting another load [still missing prioritized items]", &v20, 8u);
          }

          [*(a1 + 32) loadNextPageForAccumulator:*(a1 + 40)];
        }
      }

      else
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 40) piaTag];
          v20 = 67109120;
          v21 = v17;
          _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] loadNextPageForAccumulator | accumulating metadata response [metadataResponse.isFinalResponse = NO]", &v20, 8u);
        }
      }

      v7 = 0;
    }
  }
}

- (void)refreshEligibilityForResponse:(id)response
{
  v5 = self->_accumulator;
  responseCopy = response;
  if ([objc_opt_class() useAccumulatedResults])
  {
    v10 = [[_MPCModelStorePlaybackItemsRequestAccumulator_Modern alloc] initWithRequest:self->_request];

    unpersonalizedContentDescriptors = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:self->_request accumulator:v10];
    isFinalResponse = [responseCopy isFinalResponse];

    [(MPCModelStorePlaybackItemsResponse *)unpersonalizedContentDescriptors setFinalResponse:isFinalResponse];
    [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self _finishWithResponse:unpersonalizedContentDescriptors error:0];
  }

  else
  {
    v10 = [[_MPCModelStorePlaybackItemsRequestAccumulator_Legacy alloc] initWithRequest:self->_request];

    unpersonalizedContentDescriptors = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)v10 unpersonalizedContentDescriptors];
    isFinalResponse2 = [responseCopy isFinalResponse];

    [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self repersonalizeContentDescriptors:unpersonalizedContentDescriptors accumulator:v10 isFinalResponse:isFinalResponse2];
  }
}

- (void)repersonalizeContentDescriptors:(id)descriptors accumulator:(id)accumulator isFinalResponse:(BOOL)response
{
  accumulatorCopy = accumulator;
  descriptorsCopy = descriptors;
  request = [(MPCModelStorePlaybackItemsRequestPaginatedOperation *)self request];
  v11 = [objc_alloc(MEMORY[0x1E69709E0]) initWithUnpersonalizedRequest:request unpersonalizedContentDescriptors:descriptorsCopy];

  userIdentity = [(MPCPlaybackAccount *)self->_account userIdentity];
  [v11 setUserIdentity:userIdentity];

  [v11 setMatchAlbumArtistsOnNameAndStoreID:0];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __115__MPCModelStorePlaybackItemsRequestPaginatedOperation_repersonalizeContentDescriptors_accumulator_isFinalResponse___block_invoke;
  v19 = &unk_1E8233CF0;
  v20 = request;
  v21 = accumulatorCopy;
  responseCopy = response;
  selfCopy = self;
  v13 = accumulatorCopy;
  v14 = request;
  v15 = [v11 newOperationWithResponseHandler:&v16];
  [v15 start];
}

void __115__MPCModelStorePlaybackItemsRequestPaginatedOperation_repersonalizeContentDescriptors_accumulator_isFinalResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 results];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 _disableMissingIdentifiersFaults];
  }

  v4 = [[MPCModelStorePlaybackItemsResponse alloc] initWithRequest:*(a1 + 32) personalizationResponse:v3 results:0 performanceMetrics:0 accumulator:*(a1 + 40)];

  [(MPCModelStorePlaybackItemsResponse *)v4 setFinalResponse:*(a1 + 56)];
  [*(a1 + 48) _finishWithResponse:v4 error:0];
}

- (MPCModelStorePlaybackItemsRequestPaginatedOperation)initWithRequest:(id)request responseHandler:(id)handler accumulator:(id)accumulator
{
  requestCopy = request;
  handlerCopy = handler;
  accumulatorCopy = accumulator;
  v11 = [(MPAsyncOperation *)self init];
  if (v11)
  {
    v12 = [requestCopy copy];
    request = v11->_request;
    v11->_request = v12;

    v14 = [handlerCopy copy];
    responseHandler = v11->_responseHandler;
    v11->_responseHandler = v14;

    objc_storeStrong(&v11->_accumulator, accumulator);
    if (!v11->_responseHandler)
    {
      v11->_responseHandler = &__block_literal_global_11915;
    }
  }

  return v11;
}

@end
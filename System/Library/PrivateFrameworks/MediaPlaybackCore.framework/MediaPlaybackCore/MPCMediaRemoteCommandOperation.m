@interface MPCMediaRemoteCommandOperation
- (BOOL)_checkDependenciesForFailures:(id)a3;
- (BOOL)_handleLibraryManipulationCommandsForRequestID:(id)a3;
- (MPCMediaRemoteCommandOperation)initWithCommandRequest:(id)a3 options:(unint64_t)a4 sendDate:(id)a5;
- (id)_wrapUnderlyingErrorsIfNeeded:(id)a3;
- (void)_completeRequestID:(id)a3 withStatus:(id)a4;
- (void)execute;
- (void)performLibraryFavoriteEntityChangeRequestFor:(id)a3 withFavoriteEntityChangeRequestAction:(int64_t)a4 completion:(id)a5;
@end

@implementation MPCMediaRemoteCommandOperation

- (void)performLibraryFavoriteEntityChangeRequestFor:(id)a3 withFavoriteEntityChangeRequestAction:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69706B8];
  v9 = a3;
  v10 = [[v8 alloc] initWithChangeAction:a4];
  v11 = objc_alloc_init(MEMORY[0x1E69706B0]);
  [v11 setModelObject:v9];

  [v11 setRequestAction:v10];
  v12 = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __128__MPCMediaRemoteCommandOperation_performLibraryFavoriteEntityChangeRequestFor_withFavoriteEntityChangeRequestAction_completion___block_invoke;
  v14[3] = &unk_1E8238D28;
  v15 = v7;
  v13 = v7;
  [v12 performFavoriteStateChangeRequest:v11 withRelatedModelObjects:0 completion:v14];
}

void __128__MPCMediaRemoteCommandOperation_performLibraryFavoriteEntityChangeRequestFor_withFavoriteEntityChangeRequestAction_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 200;
    v4 = a2;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69708F8] statusWithCode:v3 error:v4];
  (*(*(a1 + 32) + 16))();
}

- (void)execute
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = [(MPCMediaRemoteCommandOperation *)self request];
  v5 = [v4 options];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69B10B0];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
  if (!v11)
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v12 UUIDString];

    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  if (self->_tokenB)
  {
    v13 = [v11 stringByAppendingString:@"-tokenE"];

    [v9 setObject:v13 forKeyedSubscript:v10];
    [v9 setObject:self->_tokenB forKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionDelegationTokenB"];
    v11 = v13;
  }

  if ([(MPAsyncOperation *)self isCancelled])
  {
    v14 = [MPCPlayerCommandStatus alloc];
    v15 = MEMORY[0x1E69708F8];
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1000 debugDescription:@"Command was cancelled before it was performed."];
    v17 = [v15 statusWithCode:200 error:v16];
    v18 = [(MPCPlayerCommandStatus *)v14 initWithMPStatus:v17 request:self->_request];
    status = self->_status;
    self->_status = v18;

    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
      v22 = self->_status;
      *buf = 138543874;
      v66 = v21;
      v67 = 2114;
      v68 = v11;
      v69 = 2114;
      v70 = v22;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | failed to perform command [canceled before sending] status=%{public}@", buf, 0x20u);
    }

    [(MPAsyncOperation *)self finish];
    goto LABEL_36;
  }

  if (([(MPCMediaRemoteCommandOperation *)self options]& 1) == 0 && [(MPCMediaRemoteCommandOperation *)self _checkDependenciesForFailures:v11])
  {
    goto LABEL_36;
  }

  v23 = *MEMORY[0x1E69B1088];
  v24 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B1088]];

  if (!v24)
  {
    v25 = MEMORY[0x1E696AD98];
    [(NSDate *)self->_sendDate timeIntervalSinceReferenceDate];
    v26 = [v25 numberWithDouble:?];
    [v9 setObject:v26 forKeyedSubscript:v23];
  }

  v27 = [(MPCMediaRemoteCommandOperation *)self request];
  v28 = [v27 label];

  if ([v28 length])
  {
    [v9 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69B1200]];
  }

  if (([(MPCMediaRemoteCommandOperation *)self options]& 0x10000) != 0)
  {
    v29 = [(MPCMediaRemoteCommandOperation *)self request];
    v30 = [v29 userInitiatedOptions];

    if ([v30 count])
    {
      [v9 addEntriesFromDictionary:v30];
    }

    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B1100]];
  }

  v31 = [(MPCMediaRemoteCommandOperation *)self request];
  v32 = [v31 controller];
  if (v32)
  {
  }

  else
  {
    v33 = [(MPCMediaRemoteCommandOperation *)self request];
    v34 = [v33 playerPath];

    if (v34)
    {
      goto LABEL_26;
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"MPCPlayerChangeRequest.m" lineNumber:429 description:@"Either Controller or PlayerPath is required to perform a change request."];
  }

LABEL_26:
  v35 = [(MPCMediaRemoteCommandOperation *)self request];
  v36 = [v35 command];

  if (![(MPCMediaRemoteCommandOperation *)self _handleLibraryManipulationCommandsForRequestID:v11])
  {
    v37 = [(MPCMediaRemoteCommandOperation *)self request];
    v38 = [v37 controller];

    if (v38)
    {
      v39 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
        *buf = 138543618;
        v66 = v40;
        v67 = 2114;
        v68 = v11;
        _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | sending command []", buf, 0x16u);
      }

      v41 = [(MPCMediaRemoteCommandOperation *)self request];
      v42 = [v41 controller];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke;
      v63[3] = &unk_1E8238CB0;
      v63[4] = self;
      v64 = v11;
      [v42 sendCommand:v36 options:v9 completion:v63];

      v43 = v64;
    }

    else
    {
      v44 = objc_alloc(MEMORY[0x1E69B13F0]);
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke_2;
      v62[3] = &unk_1E8239338;
      v62[4] = self;
      v62[5] = a2;
      v45 = [v44 initWithDeallocHandler:v62];
      v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
        v48 = [(MPCMediaRemoteCommandOperation *)self request];
        v49 = [v48 playerPath];
        *buf = 138543874;
        v66 = v47;
        v67 = 2114;
        v68 = v11;
        v69 = 2114;
        v70 = v49;
        _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | resolving player path [] playerPath=%{public}@", buf, 0x20u);
      }

      v50 = [(MPCMediaRemoteCommandOperation *)self request];
      v51 = [v50 playerPath];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke_200;
      v56[3] = &unk_1E8238CD8;
      v57 = v45;
      v58 = self;
      v59 = v11;
      v61 = v36;
      v60 = v9;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke_2_204;
      v52[3] = &unk_1E8238D00;
      v53 = v57;
      v54 = self;
      v55 = v59;
      v43 = v57;
      [v51 resolveWithRouteResolvedHandler:v56 completion:v52];
    }
  }

LABEL_36:
}

void __41__MPCMediaRemoteCommandOperation_execute__block_invoke_2(uint64_t a1)
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MPCPlayerChangeRequest.m" lineNumber:444 description:@"MPCPlayerCommandRequest player path resolution completion not called"];
  }
}

void __41__MPCMediaRemoteCommandOperation_execute__block_invoke_200(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MPCRemoteCommandDescriptionCopy([*(*(a1 + 40) + 272) command]);
      v6 = *(a1 + 48);
      *buf = 138543874;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | resolved player path route [] playerPath=%{public}@", buf, 0x20u);
    }

    v7 = *(a1 + 64);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke_202;
    v10[3] = &unk_1E8238CB0;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[4] = *(a1 + 40);
    v11 = v8;
    [MPCMediaRemoteController sendCommand:v7 options:v9 toPlayerPath:v3 completion:v10];
  }
}

void __41__MPCMediaRemoteCommandOperation_execute__block_invoke_2_204(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) disarm])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = [*(a1 + 40) request];
    v9 = [v8 playerPath];
    v10 = [v7 msv_errorWithDomain:@"MPCError" code:1000 underlyingError:v6 debugDescription:{@"PlayerPath did not resolve route to origin: %@", v9}];

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = MPCRemoteCommandDescriptionCopy([*(*(a1 + 40) + 272) command]);
      v13 = *(a1 + 48);
      v14 = [v10 msv_description];
      *buf = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v5;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | failed to resolve player path route [] playerPath=%{public}@ error=%{public}@", buf, 0x2Au);
    }

    v15 = [MEMORY[0x1E69708F8] statusWithCode:200 error:v10];
    [*(a1 + 40) _completeRequestID:*(a1 + 48) withStatus:v15];
  }
}

- (void)_completeRequestID:(id)a3 withStatus:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCMediaRemoteCommandOperation *)self request];
  v9 = [v8 command];

  if (v9 != 125 && v9 != 122 || [v7 type] != 999 || (objc_msgSend(v7, "customDataType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", @"com.apple.music/wha-delegation/b"), v10, !v11))
  {
    v14 = [(MPCMediaRemoteCommandOperation *)self _wrapUnderlyingErrorsIfNeeded:v7];

    v15 = [(MPCMediaRemoteCommandOperation *)self request];
    v16 = [v15 statusTransformer];

    if (v16)
    {
      v17 = [(MPCMediaRemoteCommandOperation *)self request];
      v18 = [v17 statusTransformer];
      v7 = (v18)[2](v18, v14);
    }

    else
    {
      v7 = v14;
    }

    v19 = [[MPCPlayerCommandStatus alloc] initWithMPStatus:v7 request:self->_request];
    status = self->_status;
    self->_status = v19;

    v21 = [(MPCPlayerCommandStatus *)self->_status error];

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
        v25 = self->_status;
        v31 = 138543874;
        v32 = v24;
        v33 = 2114;
        v34 = v6;
        v35 = 2114;
        v36 = v25;
        v26 = "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | failed to perform command [failed status] status=%{public}@";
        v27 = v23;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C5C61000, v27, v28, v26, &v31, 0x20u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
      v29 = self->_status;
      v31 = 138543874;
      v32 = v24;
      v33 = 2114;
      v34 = v6;
      v35 = 2114;
      v36 = v29;
      v26 = "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | finished command [] status=%{public}@";
      v27 = v23;
      v28 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    v30 = [v7 error];
    [(MPAsyncOperation *)self finishWithError:v30];

    goto LABEL_16;
  }

  v12 = [v7 customData];
  tokenB = self->_tokenB;
  self->_tokenB = v12;

  [(MPCMediaRemoteCommandOperation *)self execute];
LABEL_16:
}

- (BOOL)_handleLibraryManipulationCommandsForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(MPCMediaRemoteCommandOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(MPCMediaRemoteCommandOperation *)self request];
  v8 = v7;
  if (isKindOfClass)
  {
    if ([v7 value])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v10 = [v8 modelObject];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __81__MPCMediaRemoteCommandOperation__handleLibraryManipulationCommandsForRequestID___block_invoke;
    v25 = &unk_1E8238CB0;
    v26 = self;
    v11 = &v27;
    v27 = v4;
    v12 = &v22;
  }

  else
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v8 = [(MPCMediaRemoteCommandOperation *)self request];
    v9 = [v8 value] ^ 1;
    v10 = [v8 modelObject];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __81__MPCMediaRemoteCommandOperation__handleLibraryManipulationCommandsForRequestID___block_invoke_2;
    v19 = &unk_1E8238CB0;
    v20 = self;
    v11 = &v21;
    v21 = v4;
    v12 = &v16;
  }

  [(MPCMediaRemoteCommandOperation *)self performLibraryFavoriteEntityChangeRequestFor:v10 withFavoriteEntityChangeRequestAction:v9 completion:v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27];

  v14 = 1;
LABEL_10:

  return v14;
}

- (id)_wrapUnderlyingErrorsIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  v6 = [v4 statusCode];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  if (v6 == 1004)
  {
    v12 = MEMORY[0x1E69708F8];
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerEnqueueError" code:2 underlyingError:v5 debugDescription:@"Feature requires active subscription"];
    v10 = v12;
    v11 = 1004;
    goto LABEL_6;
  }

  if (v6 == 1001)
  {
    v8 = MEMORY[0x1E69708F8];
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerEnqueueError" code:1 underlyingError:v5 debugDescription:@"Queue is user curated and requires override"];
    v10 = v8;
    v11 = 1001;
LABEL_6:
    v13 = [v10 statusWithCode:v11 error:v9];

    goto LABEL_17;
  }

  if ([v4 type] != 1 && objc_msgSend(v4, "type") != 3)
  {
LABEL_11:
    v13 = v4;
    goto LABEL_17;
  }

  v14 = [v5 msv_errorByUnwrappingDomain:@"MPCMusicSharePlayBehaviorError" code:10];
  v15 = [v5 msv_errorByUnwrappingDomain:@"MPCMusicBehaviorError" code:3];
  v16 = [v5 msv_errorByUnwrappingDomain:@"MPCMusicBehaviorError" code:9];
  if (v14)
  {
    v17 = MEMORY[0x1E69708F8];
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"Attempted to add unsupported content to Share Play";
LABEL_14:
    v20 = 3;
    goto LABEL_15;
  }

  if (v15)
  {
    v17 = MEMORY[0x1E69708F8];
    v18 = MEMORY[0x1E696ABC0];
    v19 = @"Attempted to convert queue with unsupported content to Share Play";
    goto LABEL_14;
  }

  v17 = MEMORY[0x1E69708F8];
  v18 = MEMORY[0x1E696ABC0];
  if (!v16)
  {
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1001 underlyingError:v5 debugDescription:{@"Failed to perform command %@", self->_request}];
    goto LABEL_16;
  }

  v19 = @"Radio station requires subscription";
  v20 = 5;
LABEL_15:
  [v18 msv_errorWithDomain:@"MPCPlayerEnqueueError" code:v20 underlyingError:v5 debugDescription:{v19, v23}];
  v21 = LABEL_16:;
  v13 = [v17 statusWithCode:v7 error:v21];

LABEL_17:

  return v13;
}

- (BOOL)_checkDependenciesForFailures:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(MPCMediaRemoteCommandOperation *)self dependencies];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 status];
          v13 = [v12 statusCode];

          if (v13)
          {
            [(MPAsyncOperation *)self cancel];
            v15 = [MPCPlayerCommandStatus alloc];
            v16 = MEMORY[0x1E69708F8];
            v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1000 debugDescription:@"Did not attempt command because dependent command failed."];
            v18 = [v16 statusWithCode:200 error:v17];
            v19 = [(MPCPlayerCommandStatus *)v15 initWithMPStatus:v18 request:self->_request];
            status = self->_status;
            self->_status = v19;

            v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
              v23 = self->_status;
              *buf = 138543874;
              v32 = v22;
              v33 = 2114;
              v34 = v4;
              v35 = 2114;
              v36 = v23;
              _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | failed to perform command [dependent command failed] status=%{public}@", buf, 0x20u);
            }

            v24 = [v11 status];
            v25 = [v24 error];
            [(MPAsyncOperation *)self finishWithError:v25];

            v14 = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (MPCMediaRemoteCommandOperation)initWithCommandRequest:(id)a3 options:(unint64_t)a4 sendDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPCMediaRemoteCommandOperation;
  v11 = [(MPAsyncOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, a3);
    v12->_options = a4;
    objc_storeStrong(&v12->_sendDate, a5);
  }

  return v12;
}

@end
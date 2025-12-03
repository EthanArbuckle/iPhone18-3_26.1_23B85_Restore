@interface MPCMediaRemoteCommandOperation
- (BOOL)_checkDependenciesForFailures:(id)failures;
- (BOOL)_handleLibraryManipulationCommandsForRequestID:(id)d;
- (MPCMediaRemoteCommandOperation)initWithCommandRequest:(id)request options:(unint64_t)options sendDate:(id)date;
- (id)_wrapUnderlyingErrorsIfNeeded:(id)needed;
- (void)_completeRequestID:(id)d withStatus:(id)status;
- (void)execute;
- (void)performLibraryFavoriteEntityChangeRequestFor:(id)for withFavoriteEntityChangeRequestAction:(int64_t)action completion:(id)completion;
@end

@implementation MPCMediaRemoteCommandOperation

- (void)performLibraryFavoriteEntityChangeRequestFor:(id)for withFavoriteEntityChangeRequestAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E69706B8];
  forCopy = for;
  v10 = [[v8 alloc] initWithChangeAction:action];
  v11 = objc_alloc_init(MEMORY[0x1E69706B0]);
  [v11 setModelObject:forCopy];

  [v11 setRequestAction:v10];
  mEMORY[0x1E69706D8] = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __128__MPCMediaRemoteCommandOperation_performLibraryFavoriteEntityChangeRequestFor_withFavoriteEntityChangeRequestAction_completion___block_invoke;
  v14[3] = &unk_1E8238D28;
  v15 = completionCopy;
  v13 = completionCopy;
  [mEMORY[0x1E69706D8] performFavoriteStateChangeRequest:v11 withRelatedModelObjects:0 completion:v14];
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
  request = [(MPCMediaRemoteCommandOperation *)self request];
  options = [request options];
  v6 = [options mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = dictionary;

  v10 = *MEMORY[0x1E69B10B0];
  uUIDString = [v9 objectForKeyedSubscript:*MEMORY[0x1E69B10B0]];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [v9 setObject:uUIDString forKeyedSubscript:v10];
  }

  if (self->_tokenB)
  {
    v13 = [uUIDString stringByAppendingString:@"-tokenE"];

    [v9 setObject:v13 forKeyedSubscript:v10];
    [v9 setObject:self->_tokenB forKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionDelegationTokenB"];
    uUIDString = v13;
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
      v68 = uUIDString;
      v69 = 2114;
      v70 = v22;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | failed to perform command [canceled before sending] status=%{public}@", buf, 0x20u);
    }

    [(MPAsyncOperation *)self finish];
    goto LABEL_36;
  }

  if (([(MPCMediaRemoteCommandOperation *)self options]& 1) == 0 && [(MPCMediaRemoteCommandOperation *)self _checkDependenciesForFailures:uUIDString])
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

  request2 = [(MPCMediaRemoteCommandOperation *)self request];
  label = [request2 label];

  if ([label length])
  {
    [v9 setObject:label forKeyedSubscript:*MEMORY[0x1E69B1200]];
  }

  if (([(MPCMediaRemoteCommandOperation *)self options]& 0x10000) != 0)
  {
    request3 = [(MPCMediaRemoteCommandOperation *)self request];
    userInitiatedOptions = [request3 userInitiatedOptions];

    if ([userInitiatedOptions count])
    {
      [v9 addEntriesFromDictionary:userInitiatedOptions];
    }

    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B1100]];
  }

  request4 = [(MPCMediaRemoteCommandOperation *)self request];
  controller = [request4 controller];
  if (controller)
  {
  }

  else
  {
    request5 = [(MPCMediaRemoteCommandOperation *)self request];
    playerPath = [request5 playerPath];

    if (playerPath)
    {
      goto LABEL_26;
    }

    request4 = [MEMORY[0x1E696AAA8] currentHandler];
    [request4 handleFailureInMethod:a2 object:self file:@"MPCPlayerChangeRequest.m" lineNumber:429 description:@"Either Controller or PlayerPath is required to perform a change request."];
  }

LABEL_26:
  request6 = [(MPCMediaRemoteCommandOperation *)self request];
  command = [request6 command];

  if (![(MPCMediaRemoteCommandOperation *)self _handleLibraryManipulationCommandsForRequestID:uUIDString])
  {
    request7 = [(MPCMediaRemoteCommandOperation *)self request];
    controller2 = [request7 controller];

    if (controller2)
    {
      v39 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
        *buf = 138543618;
        v66 = v40;
        v67 = 2114;
        v68 = uUIDString;
        _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | sending command []", buf, 0x16u);
      }

      request8 = [(MPCMediaRemoteCommandOperation *)self request];
      controller3 = [request8 controller];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke;
      v63[3] = &unk_1E8238CB0;
      v63[4] = self;
      v64 = uUIDString;
      [controller3 sendCommand:command options:v9 completion:v63];

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
        request9 = [(MPCMediaRemoteCommandOperation *)self request];
        playerPath2 = [request9 playerPath];
        *buf = 138543874;
        v66 = v47;
        v67 = 2114;
        v68 = uUIDString;
        v69 = 2114;
        v70 = playerPath2;
        _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_DEFAULT, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | resolving player path [] playerPath=%{public}@", buf, 0x20u);
      }

      request10 = [(MPCMediaRemoteCommandOperation *)self request];
      playerPath3 = [request10 playerPath];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke_200;
      v56[3] = &unk_1E8238CD8;
      v57 = v45;
      selfCopy = self;
      v59 = uUIDString;
      v61 = command;
      v60 = v9;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __41__MPCMediaRemoteCommandOperation_execute__block_invoke_2_204;
      v52[3] = &unk_1E8238D00;
      v53 = v57;
      selfCopy2 = self;
      v55 = v59;
      v43 = v57;
      [playerPath3 resolveWithRouteResolvedHandler:v56 completion:v52];
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

- (void)_completeRequestID:(id)d withStatus:(id)status
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  statusCopy = status;
  request = [(MPCMediaRemoteCommandOperation *)self request];
  command = [request command];

  if (command != 125 && command != 122 || [statusCopy type] != 999 || (objc_msgSend(statusCopy, "customDataType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", @"com.apple.music/wha-delegation/b"), v10, !v11))
  {
    v14 = [(MPCMediaRemoteCommandOperation *)self _wrapUnderlyingErrorsIfNeeded:statusCopy];

    request2 = [(MPCMediaRemoteCommandOperation *)self request];
    statusTransformer = [request2 statusTransformer];

    if (statusTransformer)
    {
      request3 = [(MPCMediaRemoteCommandOperation *)self request];
      statusTransformer2 = [request3 statusTransformer];
      statusCopy = (statusTransformer2)[2](statusTransformer2, v14);
    }

    else
    {
      statusCopy = v14;
    }

    v19 = [[MPCPlayerCommandStatus alloc] initWithMPStatus:statusCopy request:self->_request];
    status = self->_status;
    self->_status = v19;

    error = [(MPCPlayerCommandStatus *)self->_status error];

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v23 = v22;
    if (error)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = MPCRemoteCommandDescriptionCopy([(MPCPlayerCommandRequest *)self->_request command]);
        v25 = self->_status;
        v31 = 138543874;
        v32 = v24;
        v33 = 2114;
        v34 = dCopy;
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
      v34 = dCopy;
      v35 = 2114;
      v36 = v29;
      v26 = "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | finished command [] status=%{public}@";
      v27 = v23;
      v28 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    error2 = [statusCopy error];
    [(MPAsyncOperation *)self finishWithError:error2];

    goto LABEL_16;
  }

  customData = [statusCopy customData];
  tokenB = self->_tokenB;
  self->_tokenB = customData;

  [(MPCMediaRemoteCommandOperation *)self execute];
LABEL_16:
}

- (BOOL)_handleLibraryManipulationCommandsForRequestID:(id)d
{
  dCopy = d;
  request = [(MPCMediaRemoteCommandOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  request2 = [(MPCMediaRemoteCommandOperation *)self request];
  request3 = request2;
  if (isKindOfClass)
  {
    if ([request2 value])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    modelObject = [request3 modelObject];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __81__MPCMediaRemoteCommandOperation__handleLibraryManipulationCommandsForRequestID___block_invoke;
    v25 = &unk_1E8238CB0;
    selfCopy = self;
    v11 = &v27;
    v27 = dCopy;
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

    request3 = [(MPCMediaRemoteCommandOperation *)self request];
    v9 = [request3 value] ^ 1;
    modelObject = [request3 modelObject];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __81__MPCMediaRemoteCommandOperation__handleLibraryManipulationCommandsForRequestID___block_invoke_2;
    v19 = &unk_1E8238CB0;
    selfCopy2 = self;
    v11 = &v21;
    v21 = dCopy;
    v12 = &v16;
  }

  [(MPCMediaRemoteCommandOperation *)self performLibraryFavoriteEntityChangeRequestFor:modelObject withFavoriteEntityChangeRequestAction:v9 completion:v12, v16, v17, v18, v19, selfCopy2, v21, v22, v23, v24, v25, selfCopy, v27];

  v14 = 1;
LABEL_10:

  return v14;
}

- (id)_wrapUnderlyingErrorsIfNeeded:(id)needed
{
  neededCopy = needed;
  error = [neededCopy error];
  statusCode = [neededCopy statusCode];
  if (!statusCode)
  {
    goto LABEL_11;
  }

  v7 = statusCode;
  if (statusCode == 1004)
  {
    v12 = MEMORY[0x1E69708F8];
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerEnqueueError" code:2 underlyingError:error debugDescription:@"Feature requires active subscription"];
    v10 = v12;
    v11 = 1004;
    goto LABEL_6;
  }

  if (statusCode == 1001)
  {
    v8 = MEMORY[0x1E69708F8];
    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerEnqueueError" code:1 underlyingError:error debugDescription:@"Queue is user curated and requires override"];
    v10 = v8;
    v11 = 1001;
LABEL_6:
    v13 = [v10 statusWithCode:v11 error:v9];

    goto LABEL_17;
  }

  if ([neededCopy type] != 1 && objc_msgSend(neededCopy, "type") != 3)
  {
LABEL_11:
    v13 = neededCopy;
    goto LABEL_17;
  }

  v14 = [error msv_errorByUnwrappingDomain:@"MPCMusicSharePlayBehaviorError" code:10];
  v15 = [error msv_errorByUnwrappingDomain:@"MPCMusicBehaviorError" code:3];
  v16 = [error msv_errorByUnwrappingDomain:@"MPCMusicBehaviorError" code:9];
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
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1001 underlyingError:error debugDescription:{@"Failed to perform command %@", self->_request}];
    goto LABEL_16;
  }

  v19 = @"Radio station requires subscription";
  v20 = 5;
LABEL_15:
  [v18 msv_errorWithDomain:@"MPCPlayerEnqueueError" code:v20 underlyingError:error debugDescription:{v19, v23}];
  v21 = LABEL_16:;
  v13 = [v17 statusWithCode:v7 error:v21];

LABEL_17:

  return v13;
}

- (BOOL)_checkDependenciesForFailures:(id)failures
{
  v38 = *MEMORY[0x1E69E9840];
  failuresCopy = failures;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  dependencies = [(MPCMediaRemoteCommandOperation *)self dependencies];
  v6 = [dependencies countByEnumeratingWithState:&v27 objects:v37 count:16];
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
          objc_enumerationMutation(dependencies);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          status = [v11 status];
          statusCode = [status statusCode];

          if (statusCode)
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
              v34 = failuresCopy;
              v35 = 2114;
              v36 = v23;
              _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "[PCR:%{public}@:%{public}@] performWithExtendedStatusCompletion: | failed to perform command [dependent command failed] status=%{public}@", buf, 0x20u);
            }

            status2 = [v11 status];
            error = [status2 error];
            [(MPAsyncOperation *)self finishWithError:error];

            v14 = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [dependencies countByEnumeratingWithState:&v27 objects:v37 count:16];
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

- (MPCMediaRemoteCommandOperation)initWithCommandRequest:(id)request options:(unint64_t)options sendDate:(id)date
{
  requestCopy = request;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = MPCMediaRemoteCommandOperation;
  v11 = [(MPAsyncOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_request, request);
    v12->_options = options;
    objc_storeStrong(&v12->_sendDate, date);
  }

  return v12;
}

@end
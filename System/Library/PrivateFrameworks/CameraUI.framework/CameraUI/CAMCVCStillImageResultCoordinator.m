@interface CAMCVCStillImageResultCoordinator
- (BOOL)_attemptDispatchForPairWithFilteredResultSpecifiers:(unint64_t)a3 unfilteredResultSpecifiers:(unint64_t)a4 forceRemainingDispatches:(BOOL)a5;
- (BOOL)_attemptDispatchForResultSpecifiers:(unint64_t)a3 forceRemainingDispatches:(BOOL)a4;
- (BOOL)_isDelayingForcedDispatch;
- (BOOL)_isWaitingOnResultSpecifiers:(unint64_t)a3;
- (CAMCVCStillImageResultCoordinator)initWithDelegate:(id)a3 identifier:(id)a4 allExpectedResultSpecifiers:(id)a5 isExpectingPairedVideo:(BOOL)a6 allowMultipleCaptures:(BOOL)a7 shouldReturnFilteredPhotosAsSingleAsset:(BOOL)a8;
- (CAMCVCStillImageResultCoordinatorDelegate)delegate;
- (id)_errorForResultSpecifiers:(unint64_t)a3 allowMissingVideo:(BOOL)a4;
- (id)_errorWithDescription:(id)a3 code:(int64_t)a4;
- (void)_dispatchPendingPropertiesForced:(BOOL)a3;
- (void)delayForcedDispatchForPhotoResultSpecifiers:(unint64_t)a3;
- (void)delayForcedDispatchForVideoResultSpecifiers:(unint64_t)a3;
- (void)forceRemainingDispatchesIfPossible;
- (void)updatePhotoProperties:(id)a3 assetAdjustments:(id)a4 forResultSpecifiers:(unint64_t)a5;
- (void)updateVideoProperties:(id)a3 forResultSpecifiers:(unint64_t)a4 wantsDepthRenderedForStill:(BOOL)a5;
@end

@implementation CAMCVCStillImageResultCoordinator

- (CAMCVCStillImageResultCoordinator)initWithDelegate:(id)a3 identifier:(id)a4 allExpectedResultSpecifiers:(id)a5 isExpectingPairedVideo:(BOOL)a6 allowMultipleCaptures:(BOOL)a7 shouldReturnFilteredPhotosAsSingleAsset:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v39.receiver = self;
  v39.super_class = CAMCVCStillImageResultCoordinator;
  v17 = [(CAMCVCStillImageResultCoordinator *)&v39 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v14);
    objc_storeStrong(&v18->_identifier, a4);
    objc_storeStrong(&v18->_allExpectedResultSpecifiers, a5);
    v18->_expectingPairedVideo = a6;
    v18->_allowMultipleCaptures = a7;
    v18->_shouldReturnFilteredPhotosAsSingleAsset = a8;
    v19 = [MEMORY[0x1E695DFA8] set];
    receivedPhotos = v18->__receivedPhotos;
    v18->__receivedPhotos = v19;

    v21 = [MEMORY[0x1E695DFA8] set];
    receivedVideos = v18->__receivedVideos;
    v18->__receivedVideos = v21;

    v23 = [MEMORY[0x1E695DFA8] set];
    photoResultSpecifiersDelayingForcedDispatch = v18->__photoResultSpecifiersDelayingForcedDispatch;
    v18->__photoResultSpecifiersDelayingForcedDispatch = v23;

    v25 = [MEMORY[0x1E695DFA8] set];
    videoResultSpecifiersDelayingForcedDispatch = v18->__videoResultSpecifiersDelayingForcedDispatch;
    v18->__videoResultSpecifiersDelayingForcedDispatch = v25;

    v27 = [MEMORY[0x1E695DFA8] set];
    handledResultSpecifiers = v18->__handledResultSpecifiers;
    v18->__handledResultSpecifiers = v27;

    v29 = [MEMORY[0x1E695DFA8] set];
    dispatchedResultSpecifiers = v18->__dispatchedResultSpecifiers;
    v18->__dispatchedResultSpecifiers = v29;

    v31 = [MEMORY[0x1E695DF90] dictionary];
    pendingPhotoProperties = v18->__pendingPhotoProperties;
    v18->__pendingPhotoProperties = v31;

    v33 = [MEMORY[0x1E695DF90] dictionary];
    pendingVideoProperties = v18->__pendingVideoProperties;
    v18->__pendingVideoProperties = v33;

    v35 = [MEMORY[0x1E695DF90] dictionary];
    pendingAssetAdjustments = v18->__pendingAssetAdjustments;
    v18->__pendingAssetAdjustments = v35;

    v37 = v18;
  }

  return v18;
}

- (void)updatePhotoProperties:(id)a3 assetAdjustments:(id)a4 forResultSpecifiers:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = os_log_create("com.apple.camera", "Camera");
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  v11 = [(CAMCVCStillImageResultCoordinator *)self identifier];
  if ((a5 & 2) == 0)
  {
    v12 = &stru_1F1660A30;
    if ((a5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (a5)
  {
LABEL_6:
    v13 = [(__CFString *)v12 stringByAppendingString:@"HDR"];

    v12 = v13;
  }

LABEL_7:
  if (![(__CFString *)v12 length])
  {

    v12 = @"None";
  }

  v14 = @"YES";
  if (!v8)
  {
    v14 = @"NO";
  }

  v15 = v14;
  v23 = 138543874;
  v24 = v11;
  v25 = 2114;
  v26 = v12;
  v27 = 2114;
  v28 = v15;
  _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: updatePhotoProperties for %{public}@ (hasAdjustments=%{public}@)", &v23, 0x20u);

LABEL_12:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v17 = [(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch];
  v18 = [(CAMCVCStillImageResultCoordinator *)self _receivedPhotos];
  [v18 addObject:v16];

  v19 = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
  [v19 removeObject:v16];

  v20 = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  [v20 setObject:v9 forKeyedSubscript:v16];

  v21 = [(CAMCVCStillImageResultCoordinator *)self _pendingAssetAdjustments];
  [v21 setObject:v8 forKeyedSubscript:v16];

  v22 = v17 && ![(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch]&& [(CAMCVCStillImageResultCoordinator *)self _didReceiveForceRemainingDispatchesIfPossible];
  [(CAMCVCStillImageResultCoordinator *)self _dispatchPendingPropertiesForced:v22];
}

- (void)updateVideoProperties:(id)a3 forResultSpecifiers:(unint64_t)a4 wantsDepthRenderedForStill:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = os_log_create("com.apple.camera", "Camera");
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  v10 = [(CAMCVCStillImageResultCoordinator *)self identifier];
  if ((a4 & 2) == 0)
  {
    v11 = &stru_1F1660A30;
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (a4)
  {
LABEL_6:
    v12 = [(__CFString *)v11 stringByAppendingString:@"HDR"];

    v11 = v12;
  }

LABEL_7:
  if (![(__CFString *)v11 length])
  {

    v11 = @"None";
  }

  v21 = 138543618;
  v22 = v10;
  v23 = 2114;
  v24 = v11;
  _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: updateVideoProperties for %{public}@", &v21, 0x16u);

LABEL_10:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v14 = [(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch];
  v15 = [(CAMCVCStillImageResultCoordinator *)self _receivedVideos];
  [v15 addObject:v13];

  v16 = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
  [v16 removeObject:v13];

  v17 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  [v17 setObject:v8 forKeyedSubscript:v13];

  if (v5)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4 | 2];
    v19 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
    [v19 setObject:v8 forKeyedSubscript:v18];
  }

  v20 = v14 && ![(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch]&& [(CAMCVCStillImageResultCoordinator *)self _didReceiveForceRemainingDispatchesIfPossible];
  [(CAMCVCStillImageResultCoordinator *)self _dispatchPendingPropertiesForced:v20];
}

- (void)delayForcedDispatchForPhotoResultSpecifiers:(unint64_t)a3
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(CAMCVCStillImageResultCoordinator *)self _receivedPhotos];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
    [v6 addObject:v7];
  }
}

- (void)delayForcedDispatchForVideoResultSpecifiers:(unint64_t)a3
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(CAMCVCStillImageResultCoordinator *)self _receivedVideos];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
    [v6 addObject:v7];
  }
}

- (BOOL)_isDelayingForcedDispatch
{
  v3 = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (void)forceRemainingDispatchesIfPossible
{
  v15 = *MEMORY[0x1E69E9840];
  [(CAMCVCStillImageResultCoordinator *)self _setDidReceiveForceRemainingDispatchesIfPossible:1];
  if ([(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch])
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CAMCVCStillImageResultCoordinator *)self identifier];
      v5 = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
      v6 = CAMDebugStringForCaptureResultSpecifiersSet(v5);
      v7 = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
      v8 = CAMDebugStringForCaptureResultSpecifiersSet(v7);
      v9 = 138543874;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: received forceRemainingDispatchesIfPossible but still explicitly waiting for Photos:%{public}@ Videos:%{public}@", &v9, 0x20u);
    }
  }

  else
  {

    [(CAMCVCStillImageResultCoordinator *)self _dispatchPendingPropertiesForced:1];
  }
}

- (void)_dispatchPendingPropertiesForced:(BOOL)a3
{
  v3 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v5 = [(CAMCVCStillImageResultCoordinator *)self allowMultipleCaptures];
  v6 = [(CAMCVCStillImageResultCoordinator *)self _dispatchedResultSpecifiers];
  v7 = [v6 count];
  if (v5 || !v7)
  {
    if (v3)
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v43 = v9;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: forcing remaining dispatches", buf, 0xCu);
      }
    }

    v10 = [(CAMCVCStillImageResultCoordinator *)self allExpectedResultSpecifiers];
    v11 = [(CAMCVCStillImageResultCoordinator *)self _handledResultSpecifiers];
    v12 = [(CAMCVCStillImageResultCoordinator *)self shouldReturnFilteredPhotosAsSingleAsset];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __70__CAMCVCStillImageResultCoordinator__dispatchPendingPropertiesForced___block_invoke;
    v38[3] = &unk_1E76FCF40;
    v15 = v10;
    v39 = v15;
    v41 = v12;
    v16 = v13;
    v40 = v16;
    [&unk_1F16C9C68 enumerateObjectsWithOptions:v14 usingBlock:v38];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__CAMCVCStillImageResultCoordinator__dispatchPendingPropertiesForced___block_invoke_2;
    v31[3] = &unk_1E76FCF68;
    v17 = v11;
    v32 = v17;
    v33 = v15;
    v35 = v12;
    v36 = v3;
    v34 = self;
    v37 = v5;
    v18 = v15;
    [v16 enumerateObjectsUsingBlock:v31];
    v19 = [v17 count];
    v20 = [v16 count];
    v21 = [v6 count];
    v22 = v21;
    if (!v5 && v19 == v20 && !v21)
    {
      v30 = v18;
      v23 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v43 = v24;
        _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Failed to dispatch or fallback so just returning nil", buf, 0xCu);
      }

      v25 = [v16 firstObject];
      v26 = [v25 integerValue];

      v27 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:v26 allowMissingVideo:v3];
      v28 = [(CAMCVCStillImageResultCoordinator *)self delegate];
      [v28 stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:v26 photoProperties:0 videoProperties:0 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 error:v27];

      v18 = v30;
    }

    if (v3 || v22 != 0 && !v5)
    {
      v29 = [(CAMCVCStillImageResultCoordinator *)self delegate];
      [v29 stillImagePersistenceCoordinatorDidCompleteAllDispatches:self];
    }
  }
}

void __70__CAMCVCStillImageResultCoordinator__dispatchPendingPropertiesForced___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v3 = [v7 integerValue];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3 | 2];
    v6 = [v4 containsObject:v5];

    if (v3 == (v3 | 2) || (*(a1 + 48) & 1) == 0 || (v6 & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

uint64_t __70__CAMCVCStillImageResultCoordinator__dispatchPendingPropertiesForced___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [*(a1 + 32) containsObject:v15];
  v7 = v15;
  if ((v6 & 1) == 0)
  {
    v8 = [v15 integerValue];
    v9 = v8 & 0xFFFFFFFFFFFFFFFDLL;
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8 & 0xFFFFFFFFFFFFFFFDLL];
    LOBYTE(v10) = [v10 containsObject:v11];

    v12 = (v8 != (v8 & 0xFFFFFFFFFFFFFFFDLL)) & *(a1 + 56) & v10;
    if (*(a1 + 57))
    {
LABEL_3:
      [*(a1 + 32) addObject:v15];
      v13 = *(a1 + 48);
      if (v12)
      {
        v6 = [v13 _attemptDispatchForPairWithFilteredResultSpecifiers:v8 unfilteredResultSpecifiers:v9 forceRemainingDispatches:*(a1 + 57)];
        v7 = v15;
        if ((v6 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v6 = [v13 _attemptDispatchForResultSpecifiers:v8 forceRemainingDispatches:*(a1 + 57)];
        v7 = v15;
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      if (*(a1 + 58))
      {
        goto LABEL_13;
      }

LABEL_12:
      *a4 = 1;
      goto LABEL_13;
    }

    v6 = [*(a1 + 48) _isWaitingOnResultSpecifiers:v8];
    if (v6 & 1) != 0 || ((v12 ^ 1))
    {
      if (!v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v6 = [*(a1 + 48) _isWaitingOnResultSpecifiers:v9];
      if ((v6 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v7 = v15;
    if ((*(a1 + 58) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)_isWaitingOnResultSpecifiers:(unint64_t)a3
{
  v5 = [(CAMCVCStillImageResultCoordinator *)self _receivedPhotos];
  v6 = [(CAMCVCStillImageResultCoordinator *)self _receivedVideos];
  v7 = [(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [v5 containsObject:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11 = [v6 containsObject:v10];

  if (v9)
  {
    v12 = v7 & (v11 ^ 1);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_attemptDispatchForPairWithFilteredResultSpecifiers:(unint64_t)a3 unfilteredResultSpecifiers:(unint64_t)a4 forceRemainingDispatches:(BOOL)a5
{
  v5 = a5;
  v74 = *MEMORY[0x1E69E9840];
  v9 = [(CAMCVCStillImageResultCoordinator *)self allowMultipleCaptures];
  v62 = [(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo];
  v10 = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v64 = [v10 objectForKeyedSubscript:v11];

  v12 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  *(&v63 + 1) = [v12 objectForKeyedSubscript:v13];

  v14 = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v16 = [v14 objectForKeyedSubscript:v15];

  v17 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  *&v63 = [v17 objectForKeyedSubscript:v18];

  v19 = [(CAMCVCStillImageResultCoordinator *)self _pendingAssetAdjustments];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v67 = [v19 objectForKeyedSubscript:v20];

  v21 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:a3 allowMissingVideo:v5];
  v66 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:a4 allowMissingVideo:v5];
  v22 = os_log_create("com.apple.camera", "Camera");
  v23 = v22;
  v65 = v21;
  if (__PAIR128__(v66, v21) == 0)
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v30 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    if ((a4 & 2) != 0)
    {
      v31 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((a4 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v31 = &stru_1F1660A30;
      if ((a4 & 1) == 0)
      {
LABEL_22:
        if (![(__CFString *)v31 length])
        {

          v31 = @"None";
        }

        v43 = v31;
        if ((a3 & 2) != 0)
        {
          v44 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
          if ((a3 & 1) == 0)
          {
LABEL_29:
            if (![(__CFString *)v44 length])
            {

              v44 = @"None";
            }

            *buf = 138543874;
            v69 = v30;
            v70 = 2114;
            v71 = v43;
            v72 = 2114;
            v73 = v44;
            _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Dispatching %{public}@+%{public}@", buf, 0x20u);

LABEL_32:
            v27 = *(&v63 + 1);
            v26 = v64;
            v28 = v16;
            v29 = v63;
            if (v62)
            {
              if (v63 == 0)
              {
                v46 = os_log_create("com.apple.camera", "Camera");
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = [(CAMCVCStillImageResultCoordinator *)self identifier];
                  *buf = 138543362;
                  v69 = v47;
                  v48 = "ResultCoordinator %{public}@: Missing filtered and unfiltered videos for filtered LivePhoto. Will treat as regular photo";
                  goto LABEL_52;
                }

LABEL_53:

                goto LABEL_54;
              }

              if (!*(&v63 + 1))
              {
                v46 = os_log_create("com.apple.camera", "Camera");
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = [(CAMCVCStillImageResultCoordinator *)self identifier];
                  *buf = 138543362;
                  v69 = v47;
                  v48 = "ResultCoordinator %{public}@: Missing filtered video for filtered LivePhoto. Will treat as regular photo";
                  goto LABEL_52;
                }

                goto LABEL_53;
              }

              if (!v63)
              {
                v46 = os_log_create("com.apple.camera", "Camera");
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = [(CAMCVCStillImageResultCoordinator *)self identifier];
                  *buf = 138543362;
                  v69 = v47;
                  v48 = "ResultCoordinator %{public}@: Missing unfiltered video for filtered LivePhoto. May result in issues.";
LABEL_52:
                  _os_log_impl(&dword_1A3640000, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);

                  goto LABEL_53;
                }

                goto LABEL_53;
              }
            }

LABEL_54:
            v36 = [(CAMCVCStillImageResultCoordinator *)self delegate];
            v37 = v36;
            v61 = v67;
            v38 = self;
            v39 = a3;
            v40 = v64;
            v41 = *(&v63 + 1);
            v53 = v28;
            v54 = v63;
            goto LABEL_55;
          }
        }

        else
        {
          v44 = &stru_1F1660A30;
          if ((a3 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v45 = [(__CFString *)v44 stringByAppendingString:@"HDR"];

        v44 = v45;
        goto LABEL_29;
      }
    }

    v42 = [(__CFString *)v31 stringByAppendingString:@"HDR"];

    v31 = v42;
    goto LABEL_22;
  }

  if (!v21)
  {
    v28 = v16;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(CAMCVCStillImageResultCoordinator *)self identifier];
      v33 = [v66 localizedDescription];
      *buf = 138543618;
      v69 = v32;
      v70 = 2114;
      v71 = v33;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Using filtered photo alone instead of filtered pair due to error: %{public}@", buf, 0x16u);
    }

    v27 = *(&v63 + 1);
    v26 = v64;
    v29 = v63;
    if (v62 && !*(&v63 + 1))
    {
      v34 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v69 = v35;
        _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Missing video for LivePhoto. Will treat as regular photo", buf, 0xCu);
      }
    }

    v36 = [(CAMCVCStillImageResultCoordinator *)self delegate];
    v37 = v36;
    v61 = 0;
    v38 = self;
    v39 = a3;
    v40 = v64;
    v41 = *(&v63 + 1);
    goto LABEL_48;
  }

  if (!v66)
  {
    v27 = *(&v63 + 1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(CAMCVCStillImageResultCoordinator *)self identifier];
      v50 = [v65 localizedDescription];
      *buf = 138543618;
      v69 = v49;
      v70 = 2114;
      v71 = v50;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Using unfiltered photo alone instead of filtered pair due to error: %{public}@", buf, 0x16u);
    }

    v26 = v64;
    v28 = v16;
    v29 = v63;
    if (v62 && !v63)
    {
      v51 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v69 = v52;
        _os_log_impl(&dword_1A3640000, v51, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Missing video for LivePhoto. Will treat as regular photo", buf, 0xCu);
      }
    }

    v36 = [(CAMCVCStillImageResultCoordinator *)self delegate];
    v37 = v36;
    v61 = 0;
    v38 = self;
    v39 = a4;
    v40 = v28;
    v41 = v63;
LABEL_48:
    v53 = 0;
    v54 = 0;
LABEL_55:
    [v36 stillImagePersistenceCoordinator:v38 requestsDispatchForResultSpecifiers:v39 photoProperties:v40 videoProperties:v41 unfilteredPhotoProperties:v53 unfilteredVideoProperties:v54 assetAdjustments:v61 error:0];

    v24 = [(CAMCVCStillImageResultCoordinator *)self _dispatchedResultSpecifiers];
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v24 addObject:v55];

    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v24 addObject:v56];

    v25 = 1;
    goto LABEL_56;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v58 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    v59 = [v21 localizedDescription];
    v60 = [v66 localizedDescription];
    *buf = 138543874;
    v69 = v58;
    v70 = 2114;
    v71 = v59;
    v72 = 2114;
    v73 = v60;
    _os_log_error_impl(&dword_1A3640000, v23, OS_LOG_TYPE_ERROR, "ResultCoordinator %{public}@: Could not dispatch filtered pair due to errors: %{public}@ and %{public}@", buf, 0x20u);

    v21 = v65;
  }

  if (v9)
  {
    v24 = [(CAMCVCStillImageResultCoordinator *)self delegate];
    [v24 stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:a3 photoProperties:0 videoProperties:0 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 error:v21];
    v25 = 0;
    v27 = *(&v63 + 1);
    v26 = v64;
    v28 = v16;
    v29 = v63;
LABEL_56:

    goto LABEL_57;
  }

  v25 = 0;
  v27 = *(&v63 + 1);
  v26 = v64;
  v28 = v16;
  v29 = v63;
LABEL_57:

  return v25;
}

- (BOOL)_attemptDispatchForResultSpecifiers:(unint64_t)a3 forceRemainingDispatches:(BOOL)a4
{
  v4 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = [(CAMCVCStillImageResultCoordinator *)self allowMultipleCaptures];
  v8 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:a3 allowMissingVideo:v4];
  v9 = os_log_create("com.apple.camera", "Camera");
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      v15 = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v17 = [v15 objectForKeyedSubscript:v16];

      v18 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v20 = [v18 objectForKeyedSubscript:v19];

      v21 = [(CAMCVCStillImageResultCoordinator *)self _pendingAssetAdjustments];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v23 = [v21 objectForKeyedSubscript:v22];

      if ([(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo]&& !v20)
      {
        v24 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(CAMCVCStillImageResultCoordinator *)self identifier];
          *buf = 138543362;
          v34 = v25;
          _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Missing video for LivePhoto. Will treat as regular photo", buf, 0xCu);
        }
      }

      v26 = [(CAMCVCStillImageResultCoordinator *)self delegate];
      [v26 stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:a3 photoProperties:v17 videoProperties:v20 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:v23 error:0];

      v11 = [(CAMCVCStillImageResultCoordinator *)self _dispatchedResultSpecifiers];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v11 addObject:v27];

      goto LABEL_20;
    }

    v12 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    if ((a3 & 2) != 0)
    {
      v13 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((a3 & 1) == 0)
      {
LABEL_11:
        if (![(__CFString *)v13 length])
        {

          v13 = @"None";
        }

        *buf = 138543618;
        v34 = v12;
        v35 = 2114;
        v36 = v13;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Dispatching %{public}@", buf, 0x16u);

        goto LABEL_14;
      }
    }

    else
    {
      v13 = &stru_1F1660A30;
      if ((a3 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v14 = [(__CFString *)v13 stringByAppendingString:@"HDR"];

    v13 = v14;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v29 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    v30 = [v8 localizedDescription];
    if ((a3 & 2) != 0)
    {
      v31 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    }

    else
    {
      v31 = &stru_1F1660A30;
    }

    if (a3)
    {
      v32 = [(__CFString *)v31 stringByAppendingString:@"HDR"];

      v31 = v32;
    }

    if (![(__CFString *)v31 length])
    {

      v31 = @"None";
    }

    *buf = 138543874;
    v34 = v29;
    v35 = 2114;
    v36 = v30;
    v37 = 2114;
    v38 = v31;
    _os_log_error_impl(&dword_1A3640000, v10, OS_LOG_TYPE_ERROR, "ResultCoordinator %{public}@: %{public}@ for %{public}@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = [(CAMCVCStillImageResultCoordinator *)self delegate];
    [v11 stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:a3 photoProperties:0 videoProperties:0 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 error:v8];
LABEL_20:
  }

  return v8 == 0;
}

- (id)_errorForResultSpecifiers:(unint64_t)a3 allowMissingVideo:(BOOL)a4
{
  v7 = [(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo];
  v8 = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v13 = [v11 objectForKeyedSubscript:v12];

  v14 = [v10 objectForKeyedSubscript:@"CAMCameraViewControllerCaptureError"];
  if (v14)
  {
    v15 = -38101;
    v16 = @"Photo capture error";
LABEL_3:
    v17 = [(CAMCVCStillImageResultCoordinator *)self _errorWithDescription:v16 code:v15];
    goto LABEL_4;
  }

  if (!v10)
  {
    v15 = -38102;
    v16 = @"Missing photo properties";
    goto LABEL_3;
  }

  v17 = 0;
  if (v7 && !v13 && !a4)
  {
    v15 = -38103;
    v16 = @"Missing video properties";
    goto LABEL_3;
  }

LABEL_4:

  return v17;
}

- (id)_errorWithDescription:(id)a3 code:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMCVCStillImageResultCoordinatorErrorDomain" code:a4 userInfo:v7];

  return v8;
}

- (CAMCVCStillImageResultCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
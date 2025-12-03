@interface CAMCVCStillImageResultCoordinator
- (BOOL)_attemptDispatchForPairWithFilteredResultSpecifiers:(unint64_t)specifiers unfilteredResultSpecifiers:(unint64_t)resultSpecifiers forceRemainingDispatches:(BOOL)dispatches;
- (BOOL)_attemptDispatchForResultSpecifiers:(unint64_t)specifiers forceRemainingDispatches:(BOOL)dispatches;
- (BOOL)_isDelayingForcedDispatch;
- (BOOL)_isWaitingOnResultSpecifiers:(unint64_t)specifiers;
- (CAMCVCStillImageResultCoordinator)initWithDelegate:(id)delegate identifier:(id)identifier allExpectedResultSpecifiers:(id)specifiers isExpectingPairedVideo:(BOOL)video allowMultipleCaptures:(BOOL)captures shouldReturnFilteredPhotosAsSingleAsset:(BOOL)asset;
- (CAMCVCStillImageResultCoordinatorDelegate)delegate;
- (id)_errorForResultSpecifiers:(unint64_t)specifiers allowMissingVideo:(BOOL)video;
- (id)_errorWithDescription:(id)description code:(int64_t)code;
- (void)_dispatchPendingPropertiesForced:(BOOL)forced;
- (void)delayForcedDispatchForPhotoResultSpecifiers:(unint64_t)specifiers;
- (void)delayForcedDispatchForVideoResultSpecifiers:(unint64_t)specifiers;
- (void)forceRemainingDispatchesIfPossible;
- (void)updatePhotoProperties:(id)properties assetAdjustments:(id)adjustments forResultSpecifiers:(unint64_t)specifiers;
- (void)updateVideoProperties:(id)properties forResultSpecifiers:(unint64_t)specifiers wantsDepthRenderedForStill:(BOOL)still;
@end

@implementation CAMCVCStillImageResultCoordinator

- (CAMCVCStillImageResultCoordinator)initWithDelegate:(id)delegate identifier:(id)identifier allExpectedResultSpecifiers:(id)specifiers isExpectingPairedVideo:(BOOL)video allowMultipleCaptures:(BOOL)captures shouldReturnFilteredPhotosAsSingleAsset:(BOOL)asset
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  specifiersCopy = specifiers;
  v39.receiver = self;
  v39.super_class = CAMCVCStillImageResultCoordinator;
  v17 = [(CAMCVCStillImageResultCoordinator *)&v39 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_allExpectedResultSpecifiers, specifiers);
    v18->_expectingPairedVideo = video;
    v18->_allowMultipleCaptures = captures;
    v18->_shouldReturnFilteredPhotosAsSingleAsset = asset;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pendingPhotoProperties = v18->__pendingPhotoProperties;
    v18->__pendingPhotoProperties = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    pendingVideoProperties = v18->__pendingVideoProperties;
    v18->__pendingVideoProperties = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    pendingAssetAdjustments = v18->__pendingAssetAdjustments;
    v18->__pendingAssetAdjustments = dictionary3;

    v37 = v18;
  }

  return v18;
}

- (void)updatePhotoProperties:(id)properties assetAdjustments:(id)adjustments forResultSpecifiers:(unint64_t)specifiers
{
  v29 = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  propertiesCopy = properties;
  v10 = os_log_create("com.apple.camera", "Camera");
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  identifier = [(CAMCVCStillImageResultCoordinator *)self identifier];
  if ((specifiers & 2) == 0)
  {
    v12 = &stru_1F1660A30;
    if ((specifiers & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (specifiers)
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
  if (!adjustmentsCopy)
  {
    v14 = @"NO";
  }

  v15 = v14;
  v23 = 138543874;
  v24 = identifier;
  v25 = 2114;
  v26 = v12;
  v27 = 2114;
  v28 = v15;
  _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: updatePhotoProperties for %{public}@ (hasAdjustments=%{public}@)", &v23, 0x20u);

LABEL_12:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  _isDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch];
  _receivedPhotos = [(CAMCVCStillImageResultCoordinator *)self _receivedPhotos];
  [_receivedPhotos addObject:v16];

  _photoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
  [_photoResultSpecifiersDelayingForcedDispatch removeObject:v16];

  _pendingPhotoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  [_pendingPhotoProperties setObject:propertiesCopy forKeyedSubscript:v16];

  _pendingAssetAdjustments = [(CAMCVCStillImageResultCoordinator *)self _pendingAssetAdjustments];
  [_pendingAssetAdjustments setObject:adjustmentsCopy forKeyedSubscript:v16];

  v22 = _isDelayingForcedDispatch && ![(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch]&& [(CAMCVCStillImageResultCoordinator *)self _didReceiveForceRemainingDispatchesIfPossible];
  [(CAMCVCStillImageResultCoordinator *)self _dispatchPendingPropertiesForced:v22];
}

- (void)updateVideoProperties:(id)properties forResultSpecifiers:(unint64_t)specifiers wantsDepthRenderedForStill:(BOOL)still
{
  stillCopy = still;
  v25 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v9 = os_log_create("com.apple.camera", "Camera");
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  identifier = [(CAMCVCStillImageResultCoordinator *)self identifier];
  if ((specifiers & 2) == 0)
  {
    v11 = &stru_1F1660A30;
    if ((specifiers & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (specifiers)
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
  v22 = identifier;
  v23 = 2114;
  v24 = v11;
  _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: updateVideoProperties for %{public}@", &v21, 0x16u);

LABEL_10:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  _isDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch];
  _receivedVideos = [(CAMCVCStillImageResultCoordinator *)self _receivedVideos];
  [_receivedVideos addObject:v13];

  _videoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
  [_videoResultSpecifiersDelayingForcedDispatch removeObject:v13];

  _pendingVideoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  [_pendingVideoProperties setObject:propertiesCopy forKeyedSubscript:v13];

  if (stillCopy)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers | 2];
    _pendingVideoProperties2 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
    [_pendingVideoProperties2 setObject:propertiesCopy forKeyedSubscript:v18];
  }

  v20 = _isDelayingForcedDispatch && ![(CAMCVCStillImageResultCoordinator *)self _isDelayingForcedDispatch]&& [(CAMCVCStillImageResultCoordinator *)self _didReceiveForceRemainingDispatchesIfPossible];
  [(CAMCVCStillImageResultCoordinator *)self _dispatchPendingPropertiesForced:v20];
}

- (void)delayForcedDispatchForPhotoResultSpecifiers:(unint64_t)specifiers
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  _receivedPhotos = [(CAMCVCStillImageResultCoordinator *)self _receivedPhotos];
  v5 = [_receivedPhotos containsObject:v7];

  if ((v5 & 1) == 0)
  {
    _photoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
    [_photoResultSpecifiersDelayingForcedDispatch addObject:v7];
  }
}

- (void)delayForcedDispatchForVideoResultSpecifiers:(unint64_t)specifiers
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  _receivedVideos = [(CAMCVCStillImageResultCoordinator *)self _receivedVideos];
  v5 = [_receivedVideos containsObject:v7];

  if ((v5 & 1) == 0)
  {
    _videoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
    [_videoResultSpecifiersDelayingForcedDispatch addObject:v7];
  }
}

- (BOOL)_isDelayingForcedDispatch
{
  _photoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
  if ([_photoResultSpecifiersDelayingForcedDispatch count])
  {
    v4 = 1;
  }

  else
  {
    _videoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
    v4 = [_videoResultSpecifiersDelayingForcedDispatch count] != 0;
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
      identifier = [(CAMCVCStillImageResultCoordinator *)self identifier];
      _photoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _photoResultSpecifiersDelayingForcedDispatch];
      v6 = CAMDebugStringForCaptureResultSpecifiersSet(_photoResultSpecifiersDelayingForcedDispatch);
      _videoResultSpecifiersDelayingForcedDispatch = [(CAMCVCStillImageResultCoordinator *)self _videoResultSpecifiersDelayingForcedDispatch];
      v8 = CAMDebugStringForCaptureResultSpecifiersSet(_videoResultSpecifiersDelayingForcedDispatch);
      v9 = 138543874;
      v10 = identifier;
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

- (void)_dispatchPendingPropertiesForced:(BOOL)forced
{
  forcedCopy = forced;
  v44 = *MEMORY[0x1E69E9840];
  allowMultipleCaptures = [(CAMCVCStillImageResultCoordinator *)self allowMultipleCaptures];
  _dispatchedResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self _dispatchedResultSpecifiers];
  v7 = [_dispatchedResultSpecifiers count];
  if (allowMultipleCaptures || !v7)
  {
    if (forcedCopy)
    {
      v8 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v43 = identifier;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: forcing remaining dispatches", buf, 0xCu);
      }
    }

    allExpectedResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self allExpectedResultSpecifiers];
    _handledResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self _handledResultSpecifiers];
    shouldReturnFilteredPhotosAsSingleAsset = [(CAMCVCStillImageResultCoordinator *)self shouldReturnFilteredPhotosAsSingleAsset];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (allowMultipleCaptures)
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
    v15 = allExpectedResultSpecifiers;
    v39 = v15;
    v41 = shouldReturnFilteredPhotosAsSingleAsset;
    v16 = v13;
    v40 = v16;
    [&unk_1F16C9C68 enumerateObjectsWithOptions:v14 usingBlock:v38];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__CAMCVCStillImageResultCoordinator__dispatchPendingPropertiesForced___block_invoke_2;
    v31[3] = &unk_1E76FCF68;
    v17 = _handledResultSpecifiers;
    v32 = v17;
    v33 = v15;
    v35 = shouldReturnFilteredPhotosAsSingleAsset;
    v36 = forcedCopy;
    selfCopy = self;
    v37 = allowMultipleCaptures;
    v18 = v15;
    [v16 enumerateObjectsUsingBlock:v31];
    v19 = [v17 count];
    v20 = [v16 count];
    v21 = [_dispatchedResultSpecifiers count];
    v22 = v21;
    if (!allowMultipleCaptures && v19 == v20 && !v21)
    {
      v30 = v18;
      v23 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v43 = identifier2;
        _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Failed to dispatch or fallback so just returning nil", buf, 0xCu);
      }

      firstObject = [v16 firstObject];
      integerValue = [firstObject integerValue];

      v27 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:integerValue allowMissingVideo:forcedCopy];
      delegate = [(CAMCVCStillImageResultCoordinator *)self delegate];
      [delegate stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:integerValue photoProperties:0 videoProperties:0 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 error:v27];

      v18 = v30;
    }

    if (forcedCopy || v22 != 0 && !allowMultipleCaptures)
    {
      delegate2 = [(CAMCVCStillImageResultCoordinator *)self delegate];
      [delegate2 stillImagePersistenceCoordinatorDidCompleteAllDispatches:self];
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

- (BOOL)_isWaitingOnResultSpecifiers:(unint64_t)specifiers
{
  _receivedPhotos = [(CAMCVCStillImageResultCoordinator *)self _receivedPhotos];
  _receivedVideos = [(CAMCVCStillImageResultCoordinator *)self _receivedVideos];
  isExpectingPairedVideo = [(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v9 = [_receivedPhotos containsObject:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v11 = [_receivedVideos containsObject:v10];

  if (v9)
  {
    v12 = isExpectingPairedVideo & (v11 ^ 1);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_attemptDispatchForPairWithFilteredResultSpecifiers:(unint64_t)specifiers unfilteredResultSpecifiers:(unint64_t)resultSpecifiers forceRemainingDispatches:(BOOL)dispatches
{
  dispatchesCopy = dispatches;
  v74 = *MEMORY[0x1E69E9840];
  allowMultipleCaptures = [(CAMCVCStillImageResultCoordinator *)self allowMultipleCaptures];
  isExpectingPairedVideo = [(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo];
  _pendingPhotoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v64 = [_pendingPhotoProperties objectForKeyedSubscript:v11];

  _pendingVideoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  *(&v63 + 1) = [_pendingVideoProperties objectForKeyedSubscript:v13];

  _pendingPhotoProperties2 = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v16 = [_pendingPhotoProperties2 objectForKeyedSubscript:v15];

  _pendingVideoProperties2 = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  *&v63 = [_pendingVideoProperties2 objectForKeyedSubscript:v18];

  _pendingAssetAdjustments = [(CAMCVCStillImageResultCoordinator *)self _pendingAssetAdjustments];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v67 = [_pendingAssetAdjustments objectForKeyedSubscript:v20];

  v21 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:specifiers allowMissingVideo:dispatchesCopy];
  v66 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:resultSpecifiers allowMissingVideo:dispatchesCopy];
  v22 = os_log_create("com.apple.camera", "Camera");
  v23 = v22;
  v65 = v21;
  if (__PAIR128__(v66, v21) == 0)
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    identifier = [(CAMCVCStillImageResultCoordinator *)self identifier];
    if ((resultSpecifiers & 2) != 0)
    {
      v31 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((resultSpecifiers & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v31 = &stru_1F1660A30;
      if ((resultSpecifiers & 1) == 0)
      {
LABEL_22:
        if (![(__CFString *)v31 length])
        {

          v31 = @"None";
        }

        v43 = v31;
        if ((specifiers & 2) != 0)
        {
          v44 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
          if ((specifiers & 1) == 0)
          {
LABEL_29:
            if (![(__CFString *)v44 length])
            {

              v44 = @"None";
            }

            *buf = 138543874;
            v69 = identifier;
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
            if (isExpectingPairedVideo)
            {
              if (v63 == 0)
              {
                v46 = os_log_create("com.apple.camera", "Camera");
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [(CAMCVCStillImageResultCoordinator *)self identifier];
                  *buf = 138543362;
                  v69 = identifier2;
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
                  identifier2 = [(CAMCVCStillImageResultCoordinator *)self identifier];
                  *buf = 138543362;
                  v69 = identifier2;
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
                  identifier2 = [(CAMCVCStillImageResultCoordinator *)self identifier];
                  *buf = 138543362;
                  v69 = identifier2;
                  v48 = "ResultCoordinator %{public}@: Missing unfiltered video for filtered LivePhoto. May result in issues.";
LABEL_52:
                  _os_log_impl(&dword_1A3640000, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);

                  goto LABEL_53;
                }

                goto LABEL_53;
              }
            }

LABEL_54:
            delegate = [(CAMCVCStillImageResultCoordinator *)self delegate];
            v37 = delegate;
            v61 = v67;
            selfCopy3 = self;
            resultSpecifiersCopy = specifiers;
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
          if ((specifiers & 1) == 0)
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
      identifier3 = [(CAMCVCStillImageResultCoordinator *)self identifier];
      localizedDescription = [v66 localizedDescription];
      *buf = 138543618;
      v69 = identifier3;
      v70 = 2114;
      v71 = localizedDescription;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Using filtered photo alone instead of filtered pair due to error: %{public}@", buf, 0x16u);
    }

    v27 = *(&v63 + 1);
    v26 = v64;
    v29 = v63;
    if (isExpectingPairedVideo && !*(&v63 + 1))
    {
      v34 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        identifier4 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v69 = identifier4;
        _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Missing video for LivePhoto. Will treat as regular photo", buf, 0xCu);
      }
    }

    delegate = [(CAMCVCStillImageResultCoordinator *)self delegate];
    v37 = delegate;
    v61 = 0;
    selfCopy3 = self;
    resultSpecifiersCopy = specifiers;
    v40 = v64;
    v41 = *(&v63 + 1);
    goto LABEL_48;
  }

  if (!v66)
  {
    v27 = *(&v63 + 1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier5 = [(CAMCVCStillImageResultCoordinator *)self identifier];
      localizedDescription2 = [v65 localizedDescription];
      *buf = 138543618;
      v69 = identifier5;
      v70 = 2114;
      v71 = localizedDescription2;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Using unfiltered photo alone instead of filtered pair due to error: %{public}@", buf, 0x16u);
    }

    v26 = v64;
    v28 = v16;
    v29 = v63;
    if (isExpectingPairedVideo && !v63)
    {
      v51 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        identifier6 = [(CAMCVCStillImageResultCoordinator *)self identifier];
        *buf = 138543362;
        v69 = identifier6;
        _os_log_impl(&dword_1A3640000, v51, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Missing video for LivePhoto. Will treat as regular photo", buf, 0xCu);
      }
    }

    delegate = [(CAMCVCStillImageResultCoordinator *)self delegate];
    v37 = delegate;
    v61 = 0;
    selfCopy3 = self;
    resultSpecifiersCopy = resultSpecifiers;
    v40 = v28;
    v41 = v63;
LABEL_48:
    v53 = 0;
    v54 = 0;
LABEL_55:
    [delegate stillImagePersistenceCoordinator:selfCopy3 requestsDispatchForResultSpecifiers:resultSpecifiersCopy photoProperties:v40 videoProperties:v41 unfilteredPhotoProperties:v53 unfilteredVideoProperties:v54 assetAdjustments:v61 error:0];

    _dispatchedResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self _dispatchedResultSpecifiers];
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
    [_dispatchedResultSpecifiers addObject:v55];

    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
    [_dispatchedResultSpecifiers addObject:v56];

    v25 = 1;
    goto LABEL_56;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    identifier7 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    localizedDescription3 = [v21 localizedDescription];
    localizedDescription4 = [v66 localizedDescription];
    *buf = 138543874;
    v69 = identifier7;
    v70 = 2114;
    v71 = localizedDescription3;
    v72 = 2114;
    v73 = localizedDescription4;
    _os_log_error_impl(&dword_1A3640000, v23, OS_LOG_TYPE_ERROR, "ResultCoordinator %{public}@: Could not dispatch filtered pair due to errors: %{public}@ and %{public}@", buf, 0x20u);

    v21 = v65;
  }

  if (allowMultipleCaptures)
  {
    _dispatchedResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self delegate];
    [_dispatchedResultSpecifiers stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:specifiers photoProperties:0 videoProperties:0 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 error:v21];
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

- (BOOL)_attemptDispatchForResultSpecifiers:(unint64_t)specifiers forceRemainingDispatches:(BOOL)dispatches
{
  dispatchesCopy = dispatches;
  v39 = *MEMORY[0x1E69E9840];
  allowMultipleCaptures = [(CAMCVCStillImageResultCoordinator *)self allowMultipleCaptures];
  v8 = [(CAMCVCStillImageResultCoordinator *)self _errorForResultSpecifiers:specifiers allowMissingVideo:dispatchesCopy];
  v9 = os_log_create("com.apple.camera", "Camera");
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      _pendingPhotoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
      v17 = [_pendingPhotoProperties objectForKeyedSubscript:v16];

      _pendingVideoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
      v20 = [_pendingVideoProperties objectForKeyedSubscript:v19];

      _pendingAssetAdjustments = [(CAMCVCStillImageResultCoordinator *)self _pendingAssetAdjustments];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
      v23 = [_pendingAssetAdjustments objectForKeyedSubscript:v22];

      if ([(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo]&& !v20)
      {
        v24 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(CAMCVCStillImageResultCoordinator *)self identifier];
          *buf = 138543362;
          v34 = identifier;
          _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Missing video for LivePhoto. Will treat as regular photo", buf, 0xCu);
        }
      }

      delegate = [(CAMCVCStillImageResultCoordinator *)self delegate];
      [delegate stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:specifiers photoProperties:v17 videoProperties:v20 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:v23 error:0];

      _dispatchedResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self _dispatchedResultSpecifiers];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
      [_dispatchedResultSpecifiers addObject:v27];

      goto LABEL_20;
    }

    identifier2 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    if ((specifiers & 2) != 0)
    {
      v13 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((specifiers & 1) == 0)
      {
LABEL_11:
        if (![(__CFString *)v13 length])
        {

          v13 = @"None";
        }

        *buf = 138543618;
        v34 = identifier2;
        v35 = 2114;
        v36 = v13;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ResultCoordinator %{public}@: Dispatching %{public}@", buf, 0x16u);

        goto LABEL_14;
      }
    }

    else
    {
      v13 = &stru_1F1660A30;
      if ((specifiers & 1) == 0)
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
    identifier3 = [(CAMCVCStillImageResultCoordinator *)self identifier];
    localizedDescription = [v8 localizedDescription];
    if ((specifiers & 2) != 0)
    {
      v31 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    }

    else
    {
      v31 = &stru_1F1660A30;
    }

    if (specifiers)
    {
      v32 = [(__CFString *)v31 stringByAppendingString:@"HDR"];

      v31 = v32;
    }

    if (![(__CFString *)v31 length])
    {

      v31 = @"None";
    }

    *buf = 138543874;
    v34 = identifier3;
    v35 = 2114;
    v36 = localizedDescription;
    v37 = 2114;
    v38 = v31;
    _os_log_error_impl(&dword_1A3640000, v10, OS_LOG_TYPE_ERROR, "ResultCoordinator %{public}@: %{public}@ for %{public}@", buf, 0x20u);
  }

  if (allowMultipleCaptures)
  {
    _dispatchedResultSpecifiers = [(CAMCVCStillImageResultCoordinator *)self delegate];
    [_dispatchedResultSpecifiers stillImagePersistenceCoordinator:self requestsDispatchForResultSpecifiers:specifiers photoProperties:0 videoProperties:0 unfilteredPhotoProperties:0 unfilteredVideoProperties:0 assetAdjustments:0 error:v8];
LABEL_20:
  }

  return v8 == 0;
}

- (id)_errorForResultSpecifiers:(unint64_t)specifiers allowMissingVideo:(BOOL)video
{
  isExpectingPairedVideo = [(CAMCVCStillImageResultCoordinator *)self isExpectingPairedVideo];
  _pendingPhotoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingPhotoProperties];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v10 = [_pendingPhotoProperties objectForKeyedSubscript:v9];

  _pendingVideoProperties = [(CAMCVCStillImageResultCoordinator *)self _pendingVideoProperties];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v13 = [_pendingVideoProperties objectForKeyedSubscript:v12];

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
  if (isExpectingPairedVideo && !v13 && !video)
  {
    v15 = -38103;
    v16 = @"Missing video properties";
    goto LABEL_3;
  }

LABEL_4:

  return v17;
}

- (id)_errorWithDescription:(id)description code:(int64_t)code
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = description;
  v5 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMCVCStillImageResultCoordinatorErrorDomain" code:code userInfo:v7];

  return v8;
}

- (CAMCVCStillImageResultCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface CAMStillImagePersistenceCoordinator
- (BOOL)hasReceivedAllExpectedResponses;
- (CAMStillImagePersistenceCoordinator)initWithDelegate:(id)delegate loggingIdentifier:(id)identifier;
- (CAMStillImagePersistenceCoordinatorDelegate)delegate;
- (id)_debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:(id)specifiers receivedCoordinationInfos:(id)infos;
- (unsigned)_powerAssertionReasonForResultSpecifiers:(unint64_t)specifiers;
- (void)_dispatchRemotePersistenceIfPossibleForPairWithOriginalResultSpecifiers:(unint64_t)specifiers processedResultSpecifiers:(unint64_t)resultSpecifiers request:(id)request shouldPersistAsSingleAsset:(BOOL)asset;
- (void)_dispatchRemotePersistenceIfPossibleForResultSpecifiers:(unint64_t)specifiers request:(id)request;
- (void)updateForCoordinationInfo:(id)info localPersistenceResult:(id)result request:(id)request;
- (void)updateForTimeoutTimerFiredForCoordinationInfo:(id)info request:(id)request;
@end

@implementation CAMStillImagePersistenceCoordinator

- (CAMStillImagePersistenceCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasReceivedAllExpectedResponses
{
  _receivedCoordinationInfos = [(CAMStillImagePersistenceCoordinator *)self _receivedCoordinationInfos];
  if ([_receivedCoordinationInfos count])
  {
    allValues = [_receivedCoordinationInfos allValues];
    firstObject = [allValues firstObject];
    allExpectedResultSpecifiers = [firstObject allExpectedResultSpecifiers];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__CAMStillImagePersistenceCoordinator_hasReceivedAllExpectedResponses__block_invoke;
    v8[3] = &unk_1E76FA350;
    v9 = _receivedCoordinationInfos;
    v10 = &v11;
    [allExpectedResultSpecifiers enumerateObjectsUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __70__CAMStillImagePersistenceCoordinator_hasReceivedAllExpectedResponses__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];

  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (CAMStillImagePersistenceCoordinator)initWithDelegate:(id)delegate loggingIdentifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CAMStillImagePersistenceCoordinator;
  v8 = [(CAMStillImagePersistenceCoordinator *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [identifierCopy copy];
    loggingIdentifier = v9->_loggingIdentifier;
    v9->_loggingIdentifier = v10;

    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ PersistenceCoordinator:", identifierCopy];
    loggingPrefix = v9->__loggingPrefix;
    v9->__loggingPrefix = identifierCopy;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    receivedCoordinationInfos = v9->__receivedCoordinationInfos;
    v9->__receivedCoordinationInfos = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    pendingLocalPersistenceResults = v9->__pendingLocalPersistenceResults;
    v9->__pendingLocalPersistenceResults = dictionary2;

    v18 = v9;
  }

  return v9;
}

- (void)updateForCoordinationInfo:(id)info localPersistenceResult:(id)result request:(id)request
{
  v103 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  requestCopy = request;
  delegate = [(CAMStillImagePersistenceCoordinator *)self delegate];
  _receivedCoordinationInfos = [(CAMStillImagePersistenceCoordinator *)self _receivedCoordinationInfos];
  _pendingLocalPersistenceResults = [(CAMStillImagePersistenceCoordinator *)self _pendingLocalPersistenceResults];
  resultSpecifiers = [infoCopy resultSpecifiers];
  allExpectedResultSpecifiers = [infoCopy allExpectedResultSpecifiers];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v14 = [_receivedCoordinationInfos objectForKeyedSubscript:v13];

  v88 = v14;
  if (v14)
  {
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CAMStillImagePersistenceCoordinator updateForCoordinationInfo:resultSpecifiers localPersistenceResult:v15 request:?];
    }
  }

  if (resultCopy)
  {
    error = [resultCopy error];

    if (!error)
    {
      v17 = os_log_create("com.apple.camera", "Camera");
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v18 = resultCopy;
      v19 = _pendingLocalPersistenceResults;
      v20 = _receivedCoordinationInfos;
      _loggingPrefix = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
      if ((resultSpecifiers & 2) != 0)
      {
        v22 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
        if ((resultSpecifiers & 1) == 0)
        {
LABEL_22:
          if (![(__CFString *)v22 length])
          {

            v22 = @"None";
          }

          *buf = 138543618;
          v94 = _loggingPrefix;
          v95 = 2114;
          v96 = v22;
          v24 = "%{public}@ Updating persistence coordination with %{public}@ image";
          goto LABEL_25;
        }
      }

      else
      {
        v22 = &stru_1F1660A30;
        if ((resultSpecifiers & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v25 = [(__CFString *)v22 stringByAppendingString:@"HDR"];

      v22 = v25;
      goto LABEL_22;
    }
  }

  v17 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = resultCopy;
    v19 = _pendingLocalPersistenceResults;
    v20 = _receivedCoordinationInfos;
    _loggingPrefix = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
    if ((resultSpecifiers & 2) != 0)
    {
      v22 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((resultSpecifiers & 1) == 0)
      {
LABEL_17:
        if (![(__CFString *)v22 length])
        {

          v22 = @"None";
        }

        *buf = 138543618;
        v94 = _loggingPrefix;
        v95 = 2114;
        v96 = v22;
        v24 = "%{public}@ Updating persistence coordination with %{public}@ image (unusable result)";
LABEL_25:
        _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);

        _receivedCoordinationInfos = v20;
        _pendingLocalPersistenceResults = v19;
        resultCopy = v18;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = &stru_1F1660A30;
      if ((resultSpecifiers & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v23 = [(__CFString *)v22 stringByAppendingString:@"HDR"];

    v22 = v23;
    goto LABEL_17;
  }

LABEL_26:
  selfCopy = self;

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  [_receivedCoordinationInfos setObject:infoCopy forKeyedSubscript:v26];

  if (resultCopy)
  {
    error2 = [resultCopy error];

    if (!error2)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
      [_pendingLocalPersistenceResults setObject:resultCopy forKeyedSubscript:v28];
    }
  }

  v29 = resultCopy;
  v30 = [allExpectedResultSpecifiers containsObject:&unk_1F16C7928];
  v31 = [allExpectedResultSpecifiers containsObject:&unk_1F16C7940];
  v32 = [allExpectedResultSpecifiers containsObject:&unk_1F16C7958];
  if ([allExpectedResultSpecifiers containsObject:&unk_1F16C7970] && v32 && v31 && v30)
  {
    v33 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      _loggingPrefix2 = [(CAMStillImagePersistenceCoordinator *)selfCopy _loggingPrefix];
      v34 = [&stru_1F1660A30 length];
      v35 = @"None";
      if (v34)
      {
        v35 = &stru_1F1660A30;
      }

      v81 = v35;
      v36 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      v85 = _receivedCoordinationInfos;
      if (![(__CFString *)v36 length])
      {

        v36 = @"None";
      }

      v86 = infoCopy;
      v37 = v36;
      v38 = [&stru_1F1660A30 stringByAppendingString:@"HDR"];
      v39 = resultCopy;
      if (![(__CFString *)v38 length])
      {

        v38 = @"None";
      }

      v40 = v38;
      v41 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      v42 = [v41 stringByAppendingString:@"HDR"];

      if (![(__CFString *)v42 length])
      {

        v42 = @"None";
      }

      resultCopy = v39;
      *buf = 138544386;
      v94 = _loggingPrefix2;
      v95 = 2114;
      v96 = v81;
      v97 = 2114;
      v98 = v37;
      v99 = 2114;
      v100 = v38;
      v101 = 2114;
      v102 = v42;
      _os_log_impl(&dword_1A3640000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Expecting %{public}@+%{public}@ and %{public}@+%{public}@ pairs", buf, 0x34u);

      _receivedCoordinationInfos = v85;
      infoCopy = v86;
    }

    v43 = [_receivedCoordinationInfos objectForKey:&unk_1F16C7928];

    v44 = [_receivedCoordinationInfos objectForKey:&unk_1F16C7958];

    v45 = selfCopy;
    if (v43 && v44)
    {
      [(CAMStillImagePersistenceCoordinator *)selfCopy _dispatchRemotePersistenceIfPossibleForPairWithOriginalResultSpecifiers:0 processedResultSpecifiers:2 request:requestCopy shouldPersistAsSingleAsset:1];
      v46 = selfCopy;
      v47 = 1;
      v48 = 3;
      v49 = requestCopy;
LABEL_69:
      v59 = 1;
LABEL_70:
      [(CAMStillImagePersistenceCoordinator *)v46 _dispatchRemotePersistenceIfPossibleForPairWithOriginalResultSpecifiers:v47 processedResultSpecifiers:v48 request:v49 shouldPersistAsSingleAsset:v59];
    }
  }

  else
  {
    if (([infoCopy isUnfilteredImageForFilteredPair] & 1) != 0 || objc_msgSend(infoCopy, "isFilteredImageForFilteredPair"))
    {
      v50 = os_log_create("com.apple.camera", "Camera");
      v45 = selfCopy;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        _loggingPrefix3 = [(CAMStillImagePersistenceCoordinator *)selfCopy _loggingPrefix];
        if (resultSpecifiers)
        {
          v51 = [&stru_1F1660A30 stringByAppendingString:@"HDR"];
        }

        else
        {
          v51 = &stru_1F1660A30;
        }

        if (![(__CFString *)v51 length])
        {

          v51 = @"None";
        }

        v84 = v51;
        v60 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
        v61 = v60;
        if (resultSpecifiers)
        {
          [(__CFString *)v60 stringByAppendingString:@"HDR"];
          v62 = infoCopy;
          v64 = v63 = resultCopy;

          v61 = v64;
          resultCopy = v63;
          infoCopy = v62;
          v45 = selfCopy;
        }

        if (![(__CFString *)v61 length])
        {

          v61 = @"None";
        }

        *buf = 138543874;
        v94 = _loggingPrefix3;
        v95 = 2114;
        v96 = v51;
        v97 = 2114;
        v98 = v61;
        _os_log_impl(&dword_1A3640000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Expecting %{public}@+%{public}@", buf, 0x20u);
      }

      v47 = resultSpecifiers & 0xFFFFFFFFFFFFFFFDLL;
      v48 = resultSpecifiers | 2;
      v46 = v45;
      v49 = requestCopy;
      goto LABEL_69;
    }

    v52 = os_log_create("com.apple.camera", "Camera");
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if ((v31 & v30) == 1)
    {
      v45 = selfCopy;
      if (v53)
      {
        v82 = _pendingLocalPersistenceResults;
        v54 = _receivedCoordinationInfos;
        v55 = resultCopy;
        _loggingPrefix4 = [(CAMStillImagePersistenceCoordinator *)selfCopy _loggingPrefix];
        if ([&stru_1F1660A30 length])
        {
          v57 = &stru_1F1660A30;
        }

        else
        {
          v57 = @"None";
        }

        v58 = [&stru_1F1660A30 stringByAppendingString:@"HDR"];
        if (![(__CFString *)v58 length])
        {

          v58 = @"None";
        }

        *buf = 138543874;
        v94 = _loggingPrefix4;
        v95 = 2114;
        v96 = v57;
        v97 = 2114;
        v98 = v58;
        _os_log_impl(&dword_1A3640000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Expecting %{public}@+%{public}@", buf, 0x20u);

        resultCopy = v55;
        _receivedCoordinationInfos = v54;
        _pendingLocalPersistenceResults = v82;
      }

      v46 = selfCopy;
      v47 = 0;
      v48 = 1;
      v49 = requestCopy;
      v59 = 0;
      goto LABEL_70;
    }

    if (v53)
    {
      v76 = _pendingLocalPersistenceResults;
      v77 = _receivedCoordinationInfos;
      _loggingPrefix5 = [(CAMStillImagePersistenceCoordinator *)selfCopy _loggingPrefix];
      if ((resultSpecifiers & 2) != 0)
      {
        v79 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      }

      else
      {
        v79 = &stru_1F1660A30;
      }

      if (resultSpecifiers)
      {
        v80 = [(__CFString *)v79 stringByAppendingString:@"HDR"];

        v79 = v80;
      }

      if (![(__CFString *)v79 length])
      {

        v79 = @"None";
      }

      *buf = 138543618;
      v94 = _loggingPrefix5;
      v95 = 2114;
      v96 = v79;
      _os_log_impl(&dword_1A3640000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Not expecting any pairs, persisting %{public}@ on its own", buf, 0x16u);

      _receivedCoordinationInfos = v77;
      _pendingLocalPersistenceResults = v76;
      resultCopy = v29;
    }

    v45 = selfCopy;
    [(CAMStillImagePersistenceCoordinator *)selfCopy _dispatchRemotePersistenceIfPossibleForResultSpecifiers:resultSpecifiers request:requestCopy];
  }

  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v66 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v65];

  v67 = delegate;
  if (v66)
  {
    v68 = resultCopy;
    v69 = _pendingLocalPersistenceResults;
    v70 = _receivedCoordinationInfos;
    v71 = [(CAMStillImagePersistenceCoordinator *)v45 _debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:allExpectedResultSpecifiers receivedCoordinationInfos:_receivedCoordinationInfos];
    v72 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
LABEL_81:

      [v67 stillImagePersistenceCoordinator:v45 requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:infoCopy request:requestCopy];
      _receivedCoordinationInfos = v70;
      _pendingLocalPersistenceResults = v69;
      resultCopy = v68;
      goto LABEL_82;
    }

    _loggingPrefix6 = [(CAMStillImagePersistenceCoordinator *)v45 _loggingPrefix];
    if ((resultSpecifiers & 2) != 0)
    {
      v74 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((resultSpecifiers & 1) == 0)
      {
LABEL_78:
        if (![(__CFString *)v74 length])
        {

          v74 = @"None";
        }

        *buf = 138543874;
        v94 = _loggingPrefix6;
        v95 = 2114;
        v96 = v74;
        v97 = 2114;
        v98 = v71;
        _os_log_impl(&dword_1A3640000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferring persistence of %{public}@ image while waiting on %{public}@", buf, 0x20u);

        v45 = selfCopy;
        goto LABEL_81;
      }
    }

    else
    {
      v74 = &stru_1F1660A30;
      if ((resultSpecifiers & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    v75 = [(__CFString *)v74 stringByAppendingString:@"HDR"];

    v74 = v75;
    v67 = delegate;
    goto LABEL_78;
  }

LABEL_82:
}

- (void)_dispatchRemotePersistenceIfPossibleForPairWithOriginalResultSpecifiers:(unint64_t)specifiers processedResultSpecifiers:(unint64_t)resultSpecifiers request:(id)request shouldPersistAsSingleAsset:(BOOL)asset
{
  assetCopy = asset;
  v59 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  delegate = [(CAMStillImagePersistenceCoordinator *)self delegate];
  _receivedCoordinationInfos = [(CAMStillImagePersistenceCoordinator *)self _receivedCoordinationInfos];
  _pendingLocalPersistenceResults = [(CAMStillImagePersistenceCoordinator *)self _pendingLocalPersistenceResults];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v14 = [_receivedCoordinationInfos objectForKey:v12];

  v15 = [_receivedCoordinationInfos objectForKey:v13];

  if (assetCopy)
  {
    v16 = requestCopy;
    if (v14 && v15)
    {
      v17 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v12];
      v18 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v13];
      v19 = v18;
      v46 = v17;
      if (v17 && v18)
      {
        resultSpecifiersCopy = resultSpecifiers;
        localPersistenceUUID = [v17 localPersistenceUUID];
        v21 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          _loggingPrefix = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
          if ((specifiers & 2) != 0)
          {
            v22 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
          }

          else
          {
            v22 = &stru_1F1660A30;
          }

          v41 = v19;
          if (specifiers)
          {
            v27 = [(__CFString *)v22 stringByAppendingString:@"HDR"];

            v22 = v27;
          }

          if (![(__CFString *)v22 length])
          {

            v22 = @"None";
          }

          v36 = v22;
          if ((resultSpecifiersCopy & 2) != 0)
          {
            v28 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
          }

          else
          {
            v28 = &stru_1F1660A30;
          }

          v16 = requestCopy;
          if (resultSpecifiersCopy)
          {
            v29 = [(__CFString *)v28 stringByAppendingString:@"HDR"];

            v28 = v29;
          }

          v19 = v41;
          if (![(__CFString *)v28 length])
          {

            v28 = @"None";
          }

          *buf = 138544130;
          v50 = _loggingPrefix;
          v51 = 2114;
          v52 = v36;
          v53 = 2114;
          v54 = v28;
          v55 = 2114;
          v56 = localPersistenceUUID;
          _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Dispatching remote persistence for %{public}@+%{public}@ as %{public}@", buf, 0x2Au);
        }

        [delegate stillImagePersistenceCoordinator:self requestsRemotePersistenceForLocalPersistenceResult:v46 filteredLocalResult:v19 request:v16 powerAssertionReason:{-[CAMStillImagePersistenceCoordinator _powerAssertionReasonForResultSpecifiers:](self, "_powerAssertionReasonForResultSpecifiers:", resultSpecifiersCopy)}];
        [_pendingLocalPersistenceResults setObject:0 forKeyedSubscript:v12];
        [_pendingLocalPersistenceResults setObject:0 forKeyedSubscript:v13];

        goto LABEL_34;
      }

      if (v17)
      {
        v23 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          _loggingPrefix2 = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
          v44 = CAMDebugStringForCaptureResultSpecifiers(resultSpecifiers);
          v30 = CAMDebugStringForCaptureResultSpecifiers(specifiers);
          v31 = CAMDebugStringForCaptureResultSpecifiers(resultSpecifiers);
          CAMDebugStringForCaptureResultSpecifiers(specifiers);
          v32 = v39 = v23;
          *buf = 138544386;
          v50 = _loggingPrefix2;
          v51 = 2114;
          v52 = v44;
          v53 = 2114;
          v54 = v30;
          v55 = 2114;
          v56 = v31;
          v57 = 2114;
          v58 = v32;
          _os_log_error_impl(&dword_1A3640000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Missing %{public}@ image for %{public}@+%{public}@ pair. Submitting %{public}@ image as a standalone image", buf, 0x34u);

          v23 = v39;
        }

        selfCopy2 = self;
        resultSpecifiersCopy2 = specifiers;
      }

      else
      {
        if (!v18)
        {
LABEL_34:

          goto LABEL_35;
        }

        v26 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          _loggingPrefix3 = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
          v40 = CAMDebugStringForCaptureResultSpecifiers(specifiers);
          v33 = CAMDebugStringForCaptureResultSpecifiers(specifiers);
          CAMDebugStringForCaptureResultSpecifiers(resultSpecifiers);
          v34 = v42 = v19;
          CAMDebugStringForCaptureResultSpecifiers(resultSpecifiers);
          *buf = 138544386;
          v50 = _loggingPrefix3;
          v51 = 2114;
          v52 = v40;
          v53 = 2114;
          v54 = v33;
          v55 = 2114;
          v56 = v34;
          v58 = v57 = 2114;
          v35 = v58;
          _os_log_error_impl(&dword_1A3640000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Missing %{public}@ image for %{public}@+%{public}@ pair. Submitting %{public}@ image as a standalone image", buf, 0x34u);

          v19 = v42;
        }

        selfCopy2 = self;
        resultSpecifiersCopy2 = resultSpecifiers;
      }

      [(CAMStillImagePersistenceCoordinator *)selfCopy2 _dispatchRemotePersistenceIfPossibleForResultSpecifiers:resultSpecifiersCopy2 request:v16];
      goto LABEL_34;
    }
  }

  else
  {
    v16 = requestCopy;
    if (v14)
    {
      [(CAMStillImagePersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:specifiers request:requestCopy];
      [(CAMStillImagePersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:resultSpecifiers request:requestCopy];
    }
  }

LABEL_35:
}

- (void)_dispatchRemotePersistenceIfPossibleForResultSpecifiers:(unint64_t)specifiers request:(id)request
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  delegate = [(CAMStillImagePersistenceCoordinator *)self delegate];
  _pendingLocalPersistenceResults = [(CAMStillImagePersistenceCoordinator *)self _pendingLocalPersistenceResults];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v10 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v9];

  if (v10)
  {
    localPersistenceUUID = [v10 localPersistenceUUID];
    v12 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      [delegate stillImagePersistenceCoordinator:self requestsRemotePersistenceForLocalPersistenceResult:v10 filteredLocalResult:0 request:requestCopy powerAssertionReason:{-[CAMStillImagePersistenceCoordinator _powerAssertionReasonForResultSpecifiers:](self, "_powerAssertionReasonForResultSpecifiers:", specifiers)}];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
      [_pendingLocalPersistenceResults setObject:0 forKeyedSubscript:v15];

      goto LABEL_12;
    }

    _loggingPrefix = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
    if ((specifiers & 2) != 0)
    {
      v13 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((specifiers & 1) == 0)
      {
LABEL_8:
        if (![(__CFString *)v13 length])
        {

          v13 = @"None";
        }

        *buf = 138543874;
        v19 = _loggingPrefix;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = localPersistenceUUID;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Dispatching remote persistence for %{public}@ as %{public}@", buf, 0x20u);

        requestCopy = v16;
        goto LABEL_11;
      }
    }

    else
    {
      v13 = &stru_1F1660A30;
      if ((specifiers & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v14 = [(__CFString *)v13 stringByAppendingString:@"HDR"];

    v13 = v14;
    goto LABEL_8;
  }

LABEL_12:
}

- (void)updateForTimeoutTimerFiredForCoordinationInfo:(id)info request:(id)request
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  _receivedCoordinationInfos = [(CAMStillImagePersistenceCoordinator *)self _receivedCoordinationInfos];
  _pendingLocalPersistenceResults = [(CAMStillImagePersistenceCoordinator *)self _pendingLocalPersistenceResults];
  allExpectedResultSpecifiers = [infoCopy allExpectedResultSpecifiers];
  resultSpecifiers = [infoCopy resultSpecifiers];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v13 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CAMStillImagePersistenceCoordinator *)self _debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:allExpectedResultSpecifiers receivedCoordinationInfos:_receivedCoordinationInfos];
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _loggingPrefix = [(CAMStillImagePersistenceCoordinator *)self _loggingPrefix];
      if ((resultSpecifiers & 2) != 0)
      {
        v16 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      }

      else
      {
        v16 = &stru_1F1660A30;
      }

      if (resultSpecifiers)
      {
        v17 = [(__CFString *)v16 stringByAppendingString:@"HDR"];

        v16 = v17;
      }

      if (![(__CFString *)v16 length])
      {

        v16 = @"None";
      }

      *buf = 138543874;
      v20 = _loggingPrefix;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Timed out while waiting for other capture results (%{public}@). Submitting %{public}@ image as a standalone image", buf, 0x20u);
    }

    [(CAMStillImagePersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:resultSpecifiers request:requestCopy];
  }
}

- (unsigned)_powerAssertionReasonForResultSpecifiers:(unint64_t)specifiers
{
  if (specifiers)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 512;
  }

  if ((specifiers & 2) != 0)
  {
    v3 = 2048;
  }

  if ((~specifiers & 3) != 0)
  {
    return v3;
  }

  else
  {
    return 4096;
  }
}

- (id)_debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:(id)specifiers receivedCoordinationInfos:(id)infos
{
  specifiersCopy = specifiers;
  infosCopy = infos;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __135__CAMStillImagePersistenceCoordinator__debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers_receivedCoordinationInfos___block_invoke;
  v10[3] = &unk_1E76FA350;
  v7 = infosCopy;
  v11 = v7;
  v12 = &v13;
  [specifiersCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __135__CAMStillImagePersistenceCoordinator__debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers_receivedCoordinationInfos___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) objectForKey:v14];

  v4 = v14;
  if (v3)
  {
    goto LABEL_13;
  }

  v5 = [v14 integerValue];
  v6 = v5;
  if ((v5 & 2) == 0)
  {
    v7 = &stru_1F1660A30;
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (v6)
  {
LABEL_6:
    v8 = [(__CFString *)v7 stringByAppendingString:@"HDR"];

    v7 = v8;
  }

LABEL_7:
  if (![(__CFString *)v7 length])
  {

    v7 = @"None";
  }

  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 40))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", *(v9 + 40), v7];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = v7;
    v12 = *(v9 + 40);
    *(v9 + 40) = v13;
  }

  v4 = v14;
LABEL_13:
}

- (void)updateForCoordinationInfo:(void *)a1 localPersistenceResult:(char)a2 request:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 _loggingPrefix];
  if ((a2 & 2) != 0)
  {
    v6 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = &stru_1F1660A30;
  if (a2)
  {
LABEL_5:
    v7 = [(__CFString *)v6 stringByAppendingString:@"HDR"];

    v6 = v7;
  }

LABEL_6:
  if (![(__CFString *)v6 length])
  {

    v6 = @"None";
  }

  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "%{public}@ Already received results for %{public}@! Updating anyway...", &v8, 0x16u);
}

@end
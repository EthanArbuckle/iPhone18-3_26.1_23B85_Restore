@interface CAMVideoPersistenceCoordinator
- (BOOL)hasReceivedAllExpectedResponses;
- (CAMVideoPersistenceCoordinationDelegate)delegate;
- (CAMVideoPersistenceCoordinator)initWithDelegate:(id)delegate loggingIdentifier:(id)identifier;
- (id)_debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:(id)specifiers receivedCoordinationInfos:(id)infos;
- (unsigned)_powerAssertionReasonForResultSpecifiers:(unint64_t)specifiers;
- (void)_dispatchRemotePersistenceIfPossibleForResultSpecifiers:(unint64_t)specifiers request:(id)request;
- (void)updateForCoordinationInfo:(id)info localPersistenceResult:(id)result request:(id)request;
- (void)updateForTimeoutTimerFiredForCoordinationInfo:(id)info request:(id)request;
@end

@implementation CAMVideoPersistenceCoordinator

- (CAMVideoPersistenceCoordinator)initWithDelegate:(id)delegate loggingIdentifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CAMVideoPersistenceCoordinator;
  v8 = [(CAMVideoPersistenceCoordinator *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [identifierCopy copy];
    loggingIdentifier = v9->_loggingIdentifier;
    v9->_loggingIdentifier = v10;

    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ VideoPersistenceCoordinator:", identifierCopy];
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
  v52 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  resultCopy = result;
  requestCopy = request;
  delegate = [(CAMVideoPersistenceCoordinator *)self delegate];
  _receivedCoordinationInfos = [(CAMVideoPersistenceCoordinator *)self _receivedCoordinationInfos];
  _pendingLocalPersistenceResults = [(CAMVideoPersistenceCoordinator *)self _pendingLocalPersistenceResults];
  resultSpecifiers = [infoCopy resultSpecifiers];
  allExpectedResultSpecifiers = [infoCopy allExpectedResultSpecifiers];
  v14 = 0x1E696A000uLL;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v44 = _receivedCoordinationInfos;
  v16 = [_receivedCoordinationInfos objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CAMStillImagePersistenceCoordinator updateForCoordinationInfo:resultSpecifiers localPersistenceResult:v17 request:?];
    }
  }

  if (!resultCopy || ([resultCopy error], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    _loggingPrefix = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
    if ((resultSpecifiers & 2) != 0)
    {
      v20 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((resultSpecifiers & 1) == 0)
      {
LABEL_17:
        if (![(__CFString *)v20 length])
        {

          v20 = @"None";
        }

        *buf = 138543618;
        v47 = _loggingPrefix;
        v48 = 2114;
        v49 = v20;
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating persistence coordination with %{public}@ video (unusable result)", buf, 0x16u);

        v14 = 0x1E696A000;
        goto LABEL_25;
      }
    }

    else
    {
      v20 = &stru_1F1660A30;
      if ((resultSpecifiers & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    [(__CFString *)v20 stringByAppendingString:@"HDR"];
    v23 = v22 = delegate;

    v20 = v23;
    delegate = v22;
    goto LABEL_17;
  }

  v19 = os_log_create("com.apple.camera", "Camera");
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  _loggingPrefix2 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
  if ((resultSpecifiers & 2) == 0)
  {
    v21 = &stru_1F1660A30;
    if ((resultSpecifiers & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v21 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (resultSpecifiers)
  {
LABEL_21:
    [(__CFString *)v21 stringByAppendingString:@"HDR"];
    v41 = v16;
    v24 = _pendingLocalPersistenceResults;
    v26 = v25 = delegate;

    v21 = v26;
    delegate = v25;
    _pendingLocalPersistenceResults = v24;
    v16 = v41;
  }

LABEL_22:
  if (![(__CFString *)v21 length])
  {

    v21 = @"None";
  }

  *buf = 138543618;
  v47 = _loggingPrefix2;
  v48 = 2114;
  v49 = v21;
  _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating persistence coordination with %{public}@ video", buf, 0x16u);

  v14 = 0x1E696A000uLL;
LABEL_25:

  v27 = [*(v14 + 3480) numberWithUnsignedInteger:resultSpecifiers];
  [v44 setObject:infoCopy forKeyedSubscript:v27];

  if (resultCopy)
  {
    error = [resultCopy error];

    if (!error)
    {
      v29 = [*(v14 + 3480) numberWithUnsignedInteger:resultSpecifiers];
      [_pendingLocalPersistenceResults setObject:resultCopy forKeyedSubscript:v29];
    }
  }

  [(CAMVideoPersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:resultSpecifiers request:requestCopy];
  v30 = [*(v14 + 3480) numberWithUnsignedInteger:resultSpecifiers];
  v31 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v30];

  if (v31)
  {
    v42 = v16;
    v32 = _pendingLocalPersistenceResults;
    v33 = [(CAMVideoPersistenceCoordinator *)self _debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:allExpectedResultSpecifiers receivedCoordinationInfos:v44];
    v34 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:

      [delegate videoPersistenceCoordinator:self requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:infoCopy request:requestCopy];
      _pendingLocalPersistenceResults = v32;
      v16 = v42;
      goto LABEL_39;
    }

    v40 = delegate;
    _loggingPrefix3 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
    if ((resultSpecifiers & 2) != 0)
    {
      v36 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((resultSpecifiers & 1) == 0)
      {
LABEL_35:
        if (![(__CFString *)v36 length])
        {

          v36 = @"None";
        }

        *buf = 138543874;
        v47 = _loggingPrefix3;
        v48 = 2114;
        v49 = v36;
        v50 = 2114;
        v51 = v33;
        _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferring persistence of %{public}@ video while waiting on %{public}@", buf, 0x20u);

        delegate = v40;
        goto LABEL_38;
      }
    }

    else
    {
      v36 = &stru_1F1660A30;
      if ((resultSpecifiers & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v37 = [(__CFString *)v36 stringByAppendingString:@"HDR"];

    v36 = v37;
    goto LABEL_35;
  }

LABEL_39:
}

- (void)_dispatchRemotePersistenceIfPossibleForResultSpecifiers:(unint64_t)specifiers request:(id)request
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  delegate = [(CAMVideoPersistenceCoordinator *)self delegate];
  _pendingLocalPersistenceResults = [(CAMVideoPersistenceCoordinator *)self _pendingLocalPersistenceResults];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
  v10 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v9];

  if (v10)
  {
    localPersistenceUUID = [v10 localPersistenceUUID];
    v12 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      [delegate videoPersistenceCoordinator:self requestsRemotePersistenceForLocalPersistenceResult:v10 captureRequest:requestCopy powerAssertionReason:{-[CAMVideoPersistenceCoordinator _powerAssertionReasonForResultSpecifiers:](self, "_powerAssertionReasonForResultSpecifiers:", specifiers)}];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:specifiers];
      [_pendingLocalPersistenceResults setObject:0 forKeyedSubscript:v15];

      goto LABEL_12;
    }

    _loggingPrefix = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
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
  _receivedCoordinationInfos = [(CAMVideoPersistenceCoordinator *)self _receivedCoordinationInfos];
  _pendingLocalPersistenceResults = [(CAMVideoPersistenceCoordinator *)self _pendingLocalPersistenceResults];
  allExpectedResultSpecifiers = [infoCopy allExpectedResultSpecifiers];
  resultSpecifiers = [infoCopy resultSpecifiers];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resultSpecifiers];
  v13 = [_pendingLocalPersistenceResults objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CAMVideoPersistenceCoordinator *)self _debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:allExpectedResultSpecifiers receivedCoordinationInfos:_receivedCoordinationInfos];
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _loggingPrefix = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
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
      _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Timed out while waiting for other capture results (%{public}@). Submitting %{public}@ video as a standalone video", buf, 0x20u);
    }

    [(CAMVideoPersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:resultSpecifiers request:requestCopy];
  }
}

- (BOOL)hasReceivedAllExpectedResponses
{
  v18 = *MEMORY[0x1E69E9840];
  _receivedCoordinationInfos = [(CAMVideoPersistenceCoordinator *)self _receivedCoordinationInfos];
  if ([_receivedCoordinationInfos count])
  {
    allValues = [_receivedCoordinationInfos allValues];
    firstObject = [allValues firstObject];
    [firstObject allExpectedResultSpecifiers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [_receivedCoordinationInfos objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];

          if (!v10)
          {
            v11 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)_powerAssertionReasonForResultSpecifiers:(unint64_t)specifiers
{
  if (specifiers)
  {
    return 0x40000;
  }

  else
  {
    return 0x20000;
  }
}

- (id)_debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:(id)specifiers receivedCoordinationInfos:(id)infos
{
  v24 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  infosCopy = infos;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [specifiersCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(specifiersCopy);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      v13 = [infosCopy objectForKeyedSubscript:v12];

      if (!v13)
      {
        integerValue = [v12 integerValue];
        v15 = &stru_1F1660A30;
        if ((integerValue & 2) != 0)
        {
          v15 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
        }

        if (integerValue)
        {
          v16 = [(__CFString *)v15 stringByAppendingString:@"HDR"];

          v15 = v16;
        }

        if ([(__CFString *)v15 length])
        {
          if (v9)
          {
            goto LABEL_13;
          }

LABEL_15:
          v9 = v15;
        }

        else
        {

          v15 = @"None";
          if (!v9)
          {
            goto LABEL_15;
          }

LABEL_13:
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v9, v15];

          v9 = v17;
        }

        continue;
      }
    }

    v8 = [specifiersCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);
LABEL_21:

  return v9;
}

- (CAMVideoPersistenceCoordinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
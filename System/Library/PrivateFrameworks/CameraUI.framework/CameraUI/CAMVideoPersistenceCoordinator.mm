@interface CAMVideoPersistenceCoordinator
- (BOOL)hasReceivedAllExpectedResponses;
- (CAMVideoPersistenceCoordinationDelegate)delegate;
- (CAMVideoPersistenceCoordinator)initWithDelegate:(id)a3 loggingIdentifier:(id)a4;
- (id)_debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:(id)a3 receivedCoordinationInfos:(id)a4;
- (unsigned)_powerAssertionReasonForResultSpecifiers:(unint64_t)a3;
- (void)_dispatchRemotePersistenceIfPossibleForResultSpecifiers:(unint64_t)a3 request:(id)a4;
- (void)updateForCoordinationInfo:(id)a3 localPersistenceResult:(id)a4 request:(id)a5;
- (void)updateForTimeoutTimerFiredForCoordinationInfo:(id)a3 request:(id)a4;
@end

@implementation CAMVideoPersistenceCoordinator

- (CAMVideoPersistenceCoordinator)initWithDelegate:(id)a3 loggingIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = CAMVideoPersistenceCoordinator;
  v8 = [(CAMVideoPersistenceCoordinator *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [v7 copy];
    loggingIdentifier = v9->_loggingIdentifier;
    v9->_loggingIdentifier = v10;

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ VideoPersistenceCoordinator:", v7];
    loggingPrefix = v9->__loggingPrefix;
    v9->__loggingPrefix = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    receivedCoordinationInfos = v9->__receivedCoordinationInfos;
    v9->__receivedCoordinationInfos = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    pendingLocalPersistenceResults = v9->__pendingLocalPersistenceResults;
    v9->__pendingLocalPersistenceResults = v16;

    v18 = v9;
  }

  return v9;
}

- (void)updateForCoordinationInfo:(id)a3 localPersistenceResult:(id)a4 request:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v45 = a5;
  v10 = [(CAMVideoPersistenceCoordinator *)self delegate];
  v11 = [(CAMVideoPersistenceCoordinator *)self _receivedCoordinationInfos];
  v12 = [(CAMVideoPersistenceCoordinator *)self _pendingLocalPersistenceResults];
  v13 = [v8 resultSpecifiers];
  v43 = [v8 allExpectedResultSpecifiers];
  v14 = 0x1E696A000uLL;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  v44 = v11;
  v16 = [v11 objectForKeyedSubscript:v15];

  if (v16)
  {
    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CAMStillImagePersistenceCoordinator updateForCoordinationInfo:v13 localPersistenceResult:v17 request:?];
    }
  }

  if (!v9 || ([v9 error], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v38 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
    if ((v13 & 2) != 0)
    {
      v20 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((v13 & 1) == 0)
      {
LABEL_17:
        if (![(__CFString *)v20 length])
        {

          v20 = @"None";
        }

        *buf = 138543618;
        v47 = v38;
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
      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    [(__CFString *)v20 stringByAppendingString:@"HDR"];
    v23 = v22 = v10;

    v20 = v23;
    v10 = v22;
    goto LABEL_17;
  }

  v19 = os_log_create("com.apple.camera", "Camera");
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  v39 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
  if ((v13 & 2) == 0)
  {
    v21 = &stru_1F1660A30;
    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v21 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
  if (v13)
  {
LABEL_21:
    [(__CFString *)v21 stringByAppendingString:@"HDR"];
    v41 = v16;
    v24 = v12;
    v26 = v25 = v10;

    v21 = v26;
    v10 = v25;
    v12 = v24;
    v16 = v41;
  }

LABEL_22:
  if (![(__CFString *)v21 length])
  {

    v21 = @"None";
  }

  *buf = 138543618;
  v47 = v39;
  v48 = 2114;
  v49 = v21;
  _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating persistence coordination with %{public}@ video", buf, 0x16u);

  v14 = 0x1E696A000uLL;
LABEL_25:

  v27 = [*(v14 + 3480) numberWithUnsignedInteger:v13];
  [v44 setObject:v8 forKeyedSubscript:v27];

  if (v9)
  {
    v28 = [v9 error];

    if (!v28)
    {
      v29 = [*(v14 + 3480) numberWithUnsignedInteger:v13];
      [v12 setObject:v9 forKeyedSubscript:v29];
    }
  }

  [(CAMVideoPersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:v13 request:v45];
  v30 = [*(v14 + 3480) numberWithUnsignedInteger:v13];
  v31 = [v12 objectForKeyedSubscript:v30];

  if (v31)
  {
    v42 = v16;
    v32 = v12;
    v33 = [(CAMVideoPersistenceCoordinator *)self _debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:v43 receivedCoordinationInfos:v44];
    v34 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:

      [v10 videoPersistenceCoordinator:self requestsTimeoutScheduledForDeferredRemotePersistenceForCoordinationInfo:v8 request:v45];
      v12 = v32;
      v16 = v42;
      goto LABEL_39;
    }

    v40 = v10;
    v35 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
    if ((v13 & 2) != 0)
    {
      v36 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((v13 & 1) == 0)
      {
LABEL_35:
        if (![(__CFString *)v36 length])
        {

          v36 = @"None";
        }

        *buf = 138543874;
        v47 = v35;
        v48 = 2114;
        v49 = v36;
        v50 = 2114;
        v51 = v33;
        _os_log_impl(&dword_1A3640000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferring persistence of %{public}@ video while waiting on %{public}@", buf, 0x20u);

        v10 = v40;
        goto LABEL_38;
      }
    }

    else
    {
      v36 = &stru_1F1660A30;
      if ((v13 & 1) == 0)
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

- (void)_dispatchRemotePersistenceIfPossibleForResultSpecifiers:(unint64_t)a3 request:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CAMVideoPersistenceCoordinator *)self delegate];
  v8 = [(CAMVideoPersistenceCoordinator *)self _pendingLocalPersistenceResults];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 localPersistenceUUID];
    v12 = os_log_create("com.apple.camera", "Camera");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      [v7 videoPersistenceCoordinator:self requestsRemotePersistenceForLocalPersistenceResult:v10 captureRequest:v6 powerAssertionReason:{-[CAMVideoPersistenceCoordinator _powerAssertionReasonForResultSpecifiers:](self, "_powerAssertionReasonForResultSpecifiers:", a3)}];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v8 setObject:0 forKeyedSubscript:v15];

      goto LABEL_12;
    }

    v17 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
    if ((a3 & 2) != 0)
    {
      v13 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      if ((a3 & 1) == 0)
      {
LABEL_8:
        if (![(__CFString *)v13 length])
        {

          v13 = @"None";
        }

        *buf = 138543874;
        v19 = v17;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Dispatching remote persistence for %{public}@ as %{public}@", buf, 0x20u);

        v6 = v16;
        goto LABEL_11;
      }
    }

    else
    {
      v13 = &stru_1F1660A30;
      if ((a3 & 1) == 0)
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

- (void)updateForTimeoutTimerFiredForCoordinationInfo:(id)a3 request:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(CAMVideoPersistenceCoordinator *)self _receivedCoordinationInfos];
  v9 = [(CAMVideoPersistenceCoordinator *)self _pendingLocalPersistenceResults];
  v10 = [v7 allExpectedResultSpecifiers];
  v11 = [v7 resultSpecifiers];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v13 = [v9 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CAMVideoPersistenceCoordinator *)self _debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:v10 receivedCoordinationInfos:v8];
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(CAMVideoPersistenceCoordinator *)self _loggingPrefix];
      if ((v11 & 2) != 0)
      {
        v16 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
      }

      else
      {
        v16 = &stru_1F1660A30;
      }

      if (v11)
      {
        v17 = [(__CFString *)v16 stringByAppendingString:@"HDR"];

        v16 = v17;
      }

      if (![(__CFString *)v16 length])
      {

        v16 = @"None";
      }

      *buf = 138543874;
      v20 = v18;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Timed out while waiting for other capture results (%{public}@). Submitting %{public}@ video as a standalone video", buf, 0x20u);
    }

    [(CAMVideoPersistenceCoordinator *)self _dispatchRemotePersistenceIfPossibleForResultSpecifiers:v11 request:v6];
  }
}

- (BOOL)hasReceivedAllExpectedResponses
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(CAMVideoPersistenceCoordinator *)self _receivedCoordinationInfos];
  if ([v2 count])
  {
    v3 = [v2 allValues];
    v4 = [v3 firstObject];
    [v4 allExpectedResultSpecifiers];
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

          v10 = [v2 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];

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

- (unsigned)_powerAssertionReasonForResultSpecifiers:(unint64_t)a3
{
  if (a3)
  {
    return 0x40000;
  }

  else
  {
    return 0x20000;
  }
}

- (id)_debugStringForUnreceivedResultSpecifiersFromExpectedResultSpecifiers:(id)a3 receivedCoordinationInfos:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      v13 = [v6 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v14 = [v12 integerValue];
        v15 = &stru_1F1660A30;
        if ((v14 & 2) != 0)
        {
          v15 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
        }

        if (v14)
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

    v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
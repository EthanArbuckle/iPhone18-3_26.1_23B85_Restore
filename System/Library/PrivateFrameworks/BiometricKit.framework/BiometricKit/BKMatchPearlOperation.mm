@interface BKMatchPearlOperation
- (BOOL)startNewMatchAttemptWithError:(id *)error;
- (id)matchResultInfoWithServerIdentity:(id)identity details:(id)details;
- (id)optionsDictionaryWithError:(id *)error;
@end

@implementation BKMatchPearlOperation

- (id)optionsDictionaryWithError:(id *)error
{
  v13.receiver = self;
  v13.super_class = BKMatchPearlOperation;
  v4 = [(BKMatchOperation *)&v13 optionsDictionaryWithError:?];
  if (!v4)
  {
    [(BKMatchPearlOperation *)&v14 optionsDictionaryWithError:?];
    v6 = v14;
    v11 = v15;
    goto LABEL_18;
  }

  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
  v6 = v5;
  if (self->_longTimeout)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchLongTimeout"];
  }

  if (self->_shouldAutoRetry)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchAutoRetry"];
  }

  if (self->_preAugmentationCheck)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchPreAugmentationCheck"];
  }

  preAugmentationCheckIdentity = self->_preAugmentationCheckIdentity;
  if (preAugmentationCheckIdentity)
  {
    serverIdentity = [(BKIdentity *)preAugmentationCheckIdentity serverIdentity];
    if (!serverIdentity)
    {
      [BKMatchPearlOperation optionsDictionaryWithError:];
      v11 = 0;
      goto LABEL_18;
    }

    v9 = serverIdentity;
    [v6 setObject:serverIdentity forKey:@"BKOptionMatchPreAugmentationCheckIdentity"];
  }

  if (self->_fullFaceOnly)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchFullFaceOnly"];
  }

  if (self->_trigger - 1 <= 5)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(self->_trigger)];
    [v6 setObject:v10 forKey:@"BKOptionMatchOperationTrigger"];
  }

  if (self->_nonDelayedIndicator)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchNonDelayedIndicator"];
  }

  v6 = v6;
  v11 = v6;
LABEL_18:

  return v11;
}

- (BOOL)startNewMatchAttemptWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super.super._xpcClient;
    v8 = v6;
    v18 = 134217984;
    *v19 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::startNewMatchAttempt (_cid:%lu)\n", &v18, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(BKOperation *)selfCopy state]== 5)
  {
    startNewMatchAttempt = [(BiometricKitXPCClient *)selfCopy->super.super._xpcClient startNewMatchAttempt];
    if (!startNewMatchAttempt)
    {
      BKLogEvent(0x40001u);
      objc_sync_exit(selfCopy);

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v5;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v12 = *error;
        }

        else
        {
          v12 = 0;
        }

        v18 = 67109634;
        v13 = 1;
        *v19 = 1;
        *&v19[4] = 1024;
        *&v19[6] = 0;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::startNewMatchAttempt -> %d(err:0x%x), error:%@\n", &v18, 0x18u);
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_17;
    }

    [BKMatchPearlOperation startNewMatchAttemptWithError:];
    setErrorWithOSStatus(startNewMatchAttempt, error);
  }

  else
  {
    setError(1, error);
    LODWORD(startNewMatchAttempt) = 0;
  }

  objc_sync_exit(selfCopy);

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v5;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v17 = *error;
    }

    else
    {
      v17 = 0;
    }

    v18 = 67109634;
    *v19 = 0;
    *&v19[4] = 1024;
    *&v19[6] = startNewMatchAttempt;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "BKMatchPearlOperation::startNewMatchAttempt -> %d(err:0x%x), error:%@\n", &v18, 0x18u);
  }

  v13 = 0;
LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)matchResultInfoWithServerIdentity:(id)identity details:(id)details
{
  detailsCopy = details;
  identityCopy = identity;
  v8 = [BKMatchPearlResultInfo alloc];
  device = [(BKOperation *)self device];
  v10 = [(BKMatchPearlResultInfo *)v8 initWithServerIdentity:identityCopy details:detailsCopy device:device];

  return v10;
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) providedFeedback:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_455(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) providedFaceOcclusionInfo:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_459(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) providedFaceWUPoseEligibilityInfo:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_465(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) requestedPasscodeShortcutWithReason:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_466(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKFaceDetectStateInfo alloc] initWithPresenceState:*(a1 + 48) == 63 details:*(a1 + 40)];
  [v4 operation:v2 faceDetectStateChanged:v3];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_469(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

- (id)optionsDictionaryWithError:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  result = OUTLINED_FUNCTION_13_0();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)optionsDictionaryWithError:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a2 = 0;
  *a1 = 0;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)startNewMatchAttemptWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end
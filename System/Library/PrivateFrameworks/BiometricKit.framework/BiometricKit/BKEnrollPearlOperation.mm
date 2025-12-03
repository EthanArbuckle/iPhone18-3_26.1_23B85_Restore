@interface BKEnrollPearlOperation
- (BKEnrollPearlOperation)initWithDevice:(id)device;
- (BOOL)completeWithError:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (BOOL)suspendWithError:(id *)error;
- (id)enrollResultInfoWithServerIdentity:(id)identity details:(id)details;
- (id)optionsDictionaryWithError:(id *)error;
- (void)enrollFeedback:(id)feedback client:(unint64_t)client;
- (void)enrollUpdate:(id)update client:(unint64_t)client;
@end

@implementation BKEnrollPearlOperation

- (BKEnrollPearlOperation)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = BKEnrollPearlOperation;
  result = [(BKEnrollOperation *)&v4 initWithDevice:device];
  if (result)
  {
    result->_enrollmentType = 1;
  }

  return result;
}

- (id)enrollResultInfoWithServerIdentity:(id)identity details:(id)details
{
  detailsCopy = details;
  identityCopy = identity;
  v8 = [BKEnrollPearlResultInfo alloc];
  device = [(BKOperation *)self device];
  v10 = [(BKEnrollPearlResultInfo *)v8 initWithServerIdentity:identityCopy details:detailsCopy device:device];

  return v10;
}

void __47__BKEnrollPearlOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKFaceDetectStateInfo alloc] initWithPresenceState:*(a1 + 40) == 63];
  [v4 operation:v2 faceDetectStateChanged:v3];
}

void __47__BKEnrollPearlOperation_statusMessage_client___block_invoke_357(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKEnrollPearlProgressInfo alloc] initWithPercents:*(a1 + 40)];
  [v4 enrollOperation:v2 progressedWithInfo:v3];
}

void __47__BKEnrollPearlOperation_statusMessage_client___block_invoke_361(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

- (void)enrollUpdate:(id)update client:(unint64_t)client
{
  v48 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  kdebug_trace();
  if (updateCopy)
  {
    v6 = [updateCopy length];
    if (v6 <= 0x31)
    {
      [BKEnrollPearlOperation enrollUpdate:client:];
    }

    else
    {
      v7 = v6;
      bytes = [updateCopy bytes];
      if (bytes)
      {
        v9 = bytes;
        if (v7 < *(bytes + 48) * *(bytes + 46) + 50)
        {
          [BKEnrollPearlOperation enrollUpdate:client:];
        }

        else
        {
          delegate = [(BKOperation *)self delegate];
          v11 = objc_opt_respondsToSelector();

          if (v11)
          {
            v12 = [[BKFaceDetectStateInfo alloc] initFromFaceInfo:v9 + 4];
            dispatchQueue = [(BKOperation *)self dispatchQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke;
            block[3] = &unk_1E8304208;
            block[4] = self;
            v39 = v12;
            v14 = v12;
            dispatch_async(dispatchQueue, block);
          }

          delegate2 = [(BKOperation *)self delegate];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            v17 = *(v9 + 2);
            if (__osLog)
            {
              v18 = __osLog;
            }

            else
            {
              v18 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              delegate3 = [(BKOperation *)self delegate];
              delegate4 = [(BKOperation *)self delegate];
              *buf = 134218498;
              v41 = v17;
              v42 = 2048;
              v43 = delegate3;
              v44 = 2112;
              v45 = delegate4;
              _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::enrollUpdate:client: percentCompleted:%ld => delegate:%p(%@)\n", buf, 0x20u);
            }

            dispatchQueue2 = [(BKOperation *)self dispatchQueue];
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_368;
            v37[3] = &unk_1E8303D98;
            v37[4] = self;
            v37[5] = v17;
            dispatch_async(dispatchQueue2, v37);
          }

          delegate5 = [(BKOperation *)self delegate];
          v24 = objc_opt_respondsToSelector();

          if (v24)
          {
            v25 = [[BKEnrollPearlProgressInfo alloc] initFromEnrollInfo:v9];
            if (__osLog)
            {
              v26 = __osLog;
            }

            else
            {
              v26 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              percentageCompleted = [v25 percentageCompleted];
              enrolledPoses = [v25 enrolledPoses];
              delegate6 = [(BKOperation *)self delegate];
              delegate7 = [(BKOperation *)self delegate];
              *buf = 134218754;
              v41 = percentageCompleted;
              v42 = 2112;
              v43 = enrolledPoses;
              v44 = 2048;
              v45 = delegate6;
              v46 = 2112;
              v47 = delegate7;
              _os_log_impl(&dword_1C82AD000, v27, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation::enrollUpdate: progressedWithInfo:(percentageCompleted:%ld, enrolledPoses:%@) => delegate:%p(%@)\n", buf, 0x2Au);
            }

            dispatchQueue3 = [(BKOperation *)self dispatchQueue];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_369;
            v35[3] = &unk_1E8304208;
            v35[4] = self;
            v36 = v25;
            v33 = v25;
            dispatch_async(dispatchQueue3, v35);
          }
        }
      }

      else
      {
        [BKEnrollPearlOperation enrollUpdate:client:];
      }
    }
  }

  else
  {
    [BKEnrollPearlOperation enrollUpdate:client:];
  }

  kdebug_trace();

  v34 = *MEMORY[0x1E69E9840];
}

void __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) faceDetectStateChanged:*(a1 + 40)];
}

void __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_368(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) percentCompleted:*(a1 + 40)];
}

void __46__BKEnrollPearlOperation_enrollUpdate_client___block_invoke_369(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 enrollOperation:*(a1 + 32) progressedWithInfo:*(a1 + 40)];
}

- (void)enrollFeedback:(id)feedback client:(unint64_t)client
{
  feedbackCopy = feedback;
  v6 = feedbackCopy;
  if (feedbackCopy)
  {
    if ([feedbackCopy length] <= 0x29)
    {
      [BKEnrollPearlOperation enrollFeedback:client:];
    }

    else
    {
      bytes = [v6 bytes];
      if (bytes)
      {
        v8 = bytes;
        delegate = [(BKOperation *)self delegate];
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = [[BKFaceDetectStateInfo alloc] initFromFaceInfo:v8];
          dispatchQueue = [(BKOperation *)self dispatchQueue];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __48__BKEnrollPearlOperation_enrollFeedback_client___block_invoke;
          v14[3] = &unk_1E8304208;
          v14[4] = self;
          v15 = v11;
          v13 = v11;
          dispatch_async(dispatchQueue, v14);
        }
      }

      else
      {
        [BKEnrollPearlOperation enrollFeedback:client:];
      }
    }
  }

  else
  {
    [BKEnrollPearlOperation enrollFeedback:client:];
  }
}

void __48__BKEnrollPearlOperation_enrollFeedback_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) faceDetectStateChanged:*(a1 + 40)];
}

- (id)optionsDictionaryWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = BKEnrollPearlOperation;
  v5 = [(BKEnrollOperation *)&v16 optionsDictionaryWithError:?];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    v7 = v6;
    if (self->_clientToComplete)
    {
      [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionEnrollClientToComplete"];
    }

    if ((self->_enrollmentType - 1) >= 3)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316162;
      *&buf[4] = "0";
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 900;
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v7 setObject:v8 forKey:@"BKOptionFaceIDEnrollType"];

      augmentedIdentity = self->_augmentedIdentity;
      if (augmentedIdentity)
      {
        serverIdentity = [(BKIdentity *)augmentedIdentity serverIdentity];
        [v7 setObject:serverIdentity forKey:@"BKOptionEnrollAugmentedIdentity"];
      }

      if (self->_enrollmentType != 3)
      {
        goto LABEL_10;
      }

      if (self->_periocularGlassesRequirement < 3uLL)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
        [v7 setObject:v11 forKey:@"BKOptionFaceIDEnrollGlassesRequirement"];

LABEL_10:
        v7 = v7;
        v12 = v7;
        goto LABEL_18;
      }

      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316162;
      *&buf[4] = "0";
      v19 = 2048;
      v20 = 0;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 918;
    }

    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_17:
    setError(1, error);
    v12 = 0;
    goto LABEL_18;
  }

  [(BKEnrollPearlOperation *)&v17 optionsDictionaryWithError:buf];
  v7 = v17;
  v12 = *buf;
LABEL_18:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)startWithError:(id *)error
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    *buf = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:start (_cid:%lu)\n", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = BKEnrollPearlOperation;
  v9 = [(BKOperation *)&v18 startWithError:error];
  v10 = v9;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (v9)
  {
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

      *buf = 67109378;
      v20[0] = 1;
      LOWORD(v20[1]) = 2112;
      *(&v20[1] + 2) = v12;
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
      _os_log_impl(&dword_1C82AD000, v14, v15, "BKEnrollPearlOperation:start -> %d, error:%@\n", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v13 = *error;
    }

    else
    {
      v13 = 0;
    }

    *buf = 67109378;
    v20[0] = 0;
    LOWORD(v20[1]) = 2112;
    *(&v20[1] + 2) = v13;
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_20;
  }

  kdebug_trace();
  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)completeWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    v20 = 134217984;
    *v21 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:complete (_cid:%lu)\n", &v20, 0xCu);
  }

  completeEnrollment = [(BiometricKitXPCClient *)self->super.super._xpcClient completeEnrollment];
  v10 = completeEnrollment;
  if (completeEnrollment)
  {
    if (__osLog)
    {
      v17 = __osLog;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      *v21 = "err == 0 ";
      *&v21[8] = 2048;
      *&v21[10] = v10;
      v22 = 2080;
      v23 = &unk_1C82F52EE;
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v26 = 1024;
      v27 = 963;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    setErrorWithOSStatus(v10, error);
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v5;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v20 = 67109378;
      *v21 = 0;
      *&v21[4] = 2112;
      *&v21[6] = v19;
      v13 = v18;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
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

      v20 = 67109378;
      *v21 = 1;
      *&v21[4] = 2112;
      *&v21[6] = v12;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v13, v14, "BKEnrollPearlOperation:complete -> %d, error:%@\n", &v20, 0x12u);
    }
  }

  kdebug_trace();
  v15 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (BOOL)suspendWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    v20 = 134217984;
    *v21 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:suspend (_cid:%lu)\n", &v20, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->super.super._xpcClient suspendEnrollment:1];
  v10 = v9;
  if (v9)
  {
    if (__osLog)
    {
      v17 = __osLog;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      *v21 = "err == 0 ";
      *&v21[8] = 2048;
      *&v21[10] = v10;
      v22 = 2080;
      v23 = &unk_1C82F52EE;
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v26 = 1024;
      v27 = 987;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    setErrorWithOSStatus(v10, error);
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v5;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v20 = 67109378;
      *v21 = 0;
      *&v21[4] = 2112;
      *&v21[6] = v19;
      v13 = v18;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
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

      v20 = 67109378;
      *v21 = 1;
      *&v21[4] = 2112;
      *&v21[6] = v12;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v13, v14, "BKEnrollPearlOperation:suspend -> %d, error:%@\n", &v20, 0x12u);
    }
  }

  kdebug_trace();
  v15 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (BOOL)resumeWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  kdebug_trace();
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
    v20 = 134217984;
    *v21 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKEnrollPearlOperation:resume (_cid:%lu)\n", &v20, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->super.super._xpcClient suspendEnrollment:0];
  v10 = v9;
  if (v9)
  {
    if (__osLog)
    {
      v17 = __osLog;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      *v21 = "err == 0 ";
      *&v21[8] = 2048;
      *&v21[10] = v10;
      v22 = 2080;
      v23 = &unk_1C82F52EE;
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v26 = 1024;
      v27 = 1011;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    setErrorWithOSStatus(v10, error);
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v5;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v20 = 67109378;
      *v21 = 0;
      *&v21[4] = 2112;
      *&v21[6] = v19;
      v13 = v18;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
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

      v20 = 67109378;
      *v21 = 1;
      *&v21[4] = 2112;
      *&v21[6] = v12;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v13, v14, "BKEnrollPearlOperation:resume -> %d, error:%@\n", &v20, 0x12u);
    }
  }

  kdebug_trace();
  v15 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (void)enrollUpdate:client:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollUpdate:client:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollUpdate:client:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollUpdate:client:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollFeedback:client:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollFeedback:client:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollFeedback:client:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)optionsDictionaryWithError:(void *)a1 .cold.1(void *a1, void *a2)
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

@end
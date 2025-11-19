@interface BKDevicePearl
+ (BOOL)deviceAvailableWithFailure:(BOOL *)a3;
- (BOOL)prewarmCamera:(unint64_t)a3 error:(id *)a4;
- (BOOL)setTemplate:(id)a3 forIdentity:(id)a4 error:(id *)a5;
- (id)createEnrollOperationWithError:(id *)a3;
- (id)createMatchOperationWithError:(id *)a3;
- (id)createPresenceDetectOperationWithError:(id *)a3;
- (id)periocularMatchStateWithError:(id *)a3;
- (id)supportsPeriocularEnrollmentWithError:(id *)a3;
- (int64_t)deviceEventWithStatus:(unsigned int)a3;
- (int64_t)deviceStateWithStatus:(unsigned int)a3;
- (int64_t)pearlState;
@end

@implementation BKDevicePearl

- (int64_t)pearlState
{
  v3 = [(BiometricKitXPCClient *)self->super._xpcClient getDeviceState];

  return [(BKDevicePearl *)self deviceStateWithStatus:v3];
}

+ (BOOL)deviceAvailableWithFailure:(BOOL *)a3
{
  *&v13[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    *v13 = a3;
    _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::deviceAvailableWithFailure: %p\n", &v12, 0xCu);
  }

  if (isEphemeralMultiUser())
  {
    goto LABEL_20;
  }

  v6 = isFaceIDPlatform();
  if (a3)
  {
    *a3 = 0;
  }

  if ((v6 & 1) == 0)
  {
LABEL_20:
    [(BKDevicePearl *)a3 deviceAvailableWithFailure:?];
    v9 = v12;
  }

  else
  {
    if (__osLogTrace)
    {
      v7 = __osLogTrace;
    }

    else
    {
      v7 = v4;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v8 = *a3;
      }

      else
      {
        v8 = -1;
      }

      v12 = 67109376;
      v9 = 1;
      v13[0] = 1;
      LOWORD(v13[1]) = 1024;
      *(&v13[1] + 2) = v8;
      _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::deviceAvailableWithFailure: -> %d, failure:%d\n", &v12, 0xEu);
    }

    else
    {
      v9 = 1;
    }
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)createEnrollOperationWithError:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
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
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createEnrollOperation\n", &v12, 2u);
  }

  v7 = [[BKEnrollPearlOperation alloc] initWithDevice:self];
  if (v7)
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v9 = *a3;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createEnrollOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDevicePearl createEnrollOperationWithError:a3];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createMatchOperationWithError:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
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
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createMatchOperation\n", &v12, 2u);
  }

  v7 = [(BKMatchOperation *)[BKMatchPearlOperation alloc] initWithDevice:self];
  if (v7)
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v9 = *a3;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createMatchOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDevicePearl createMatchOperationWithError:a3];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createPresenceDetectOperationWithError:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
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
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createPresenceDetectOperation\n", &v12, 2u);
  }

  v7 = [[BKFaceDetectOperation alloc] initWithDevice:self];
  if (v7)
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v9 = *a3;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::createPresenceDetectOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDevicePearl createPresenceDetectOperationWithError:a3];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)supportsPeriocularEnrollmentWithError:(id *)a3
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
    xpcClient = self->super._xpcClient;
    v8 = v6;
    *buf = 134217984;
    v19 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::supportsPeriocularEnrollment (_cid:%lu)\n", buf, 0xCu);
  }

  v17 = 0;
  if ([(BiometricKitXPCClient *)self->super._xpcClient isPeriocularEnrollmentSupported:&v17])
  {
    [BKDevicePearl supportsPeriocularEnrollmentWithError:];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v17];
    if (v9)
    {
      v10 = v9;
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
        if (a3)
        {
          v12 = *a3;
        }

        else
        {
          v12 = 0;
        }

        *buf = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::supportsPeriocularEnrollment -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (a3)
    {
      v14 = *a3;
    }

    else
    {
      v14 = 0;
    }

    *buf = 138412546;
    v19 = 0;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "BKDevicePearl::supportsPeriocularEnrollment -> %@, error:%@\n", buf, 0x16u);
  }

  v10 = 0;
LABEL_26:
  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)periocularMatchStateWithError:(id *)a3
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
    xpcClient = self->super._xpcClient;
    v8 = v6;
    *buf = 134217984;
    v19 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::periocularMatchState (_cid:%lu)\n", buf, 0xCu);
  }

  v17 = 0;
  if ([(BiometricKitXPCClient *)self->super._xpcClient getPeriocularMatchState:0xFFFFFFFFLL state:&v17])
  {
    [BKDevicePearl periocularMatchStateWithError:];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v17 & 0x3F];
    if (v9)
    {
      v10 = v9;
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
        if (a3)
        {
          v12 = *a3;
        }

        else
        {
          v12 = 0;
        }

        *buf = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::periocularMatchState -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (a3)
    {
      v14 = *a3;
    }

    else
    {
      v14 = 0;
    }

    *buf = 138412546;
    v19 = 0;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "BKDevicePearl::periocularMatchState -> %@, error:%@\n", buf, 0x16u);
  }

  v10 = 0;
LABEL_26:
  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

void __87__BKDevicePearl_removePeriocularEnrollmentsForUser_identityUUID_removeAll_async_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [BKErrorHelper errorWithOSStatus:a2];
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 67109378;
      v8 = 0;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevicePearl::removePeriocularEnrollmentsForUser:identityUUID:removeAll:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109378;
      v8 = 1;
      v9 = 2112;
      v10 = 0;
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::removePeriocularEnrollmentsForUser:identityUUID:removeAll:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __73__BKDevicePearl_removePeriocularEnrollmentsFromIdentity_removeAll_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__BKDevicePearl_removePeriocularEnrollmentsFromIdentity_removeAll_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __68__BKDevicePearl_removePeriocularEnrollmentsForUser_removeAll_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BKDevicePearl_removePeriocularEnrollmentsForUser_removeAll_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (BOOL)setTemplate:(id)a3 forIdentity:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 length];
    v14 = [(BiometricKitXPCClient *)self->super._xpcClient connectionId];
    v27 = 134218496;
    *v28 = v13;
    *&v28[8] = 2048;
    *&v28[10] = v9;
    v29 = 2048;
    v30 = v14;
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::setTemplate:forIdentity: NSData(length:%lu), %p (_cid:%lu)\n", &v27, 0x20u);
  }

  xpcClient = self->super._xpcClient;
  v16 = [v9 serverIdentity];
  v17 = [(BiometricKitXPCClient *)xpcClient setTemplate:v8 forIdentity:v16];

  if (v17)
  {
    if (__osLog)
    {
      v24 = __osLog;
    }

    else
    {
      v24 = v10;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 136316162;
      *v28 = "err == 0 ";
      *&v28[8] = 2048;
      *&v28[10] = v17;
      v29 = 2080;
      v30 = &unk_1C82F52EE;
      v31 = 2080;
      v32 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v33 = 1024;
      v34 = 1641;
      _os_log_impl(&dword_1C82AD000, v24, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v27, 0x30u);
    }

    setErrorWithOSStatus(v17, a5);
    if (__osLogTrace)
    {
      v25 = __osLogTrace;
    }

    else
    {
      v25 = v10;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (a5)
      {
        v26 = *a5;
      }

      else
      {
        v26 = 0;
      }

      v27 = 67109378;
      *v28 = 0;
      *&v28[4] = 2112;
      *&v28[6] = v26;
      v20 = v25;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v10;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (a5)
      {
        v19 = *a5;
      }

      else
      {
        v19 = 0;
      }

      v27 = 67109378;
      *v28 = 1;
      *&v28[4] = 2112;
      *&v28[6] = v19;
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v20, v21, "BKDevicePearl::setTemplate:forIdentity: -> %d, error:%@\n", &v27, 0x12u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17 == 0;
}

- (BOOL)prewarmCamera:(unint64_t)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super._xpcClient;
    v10 = v8;
    v19 = 134218240;
    *v20 = a3;
    *&v20[8] = 2048;
    *&v20[10] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::prewarmCamera: %lu (_cid:%lu)\n", &v19, 0x16u);
  }

  if (a3 == 1)
  {
    if (![(BiometricKitXPCClient *)self->super._xpcClient prewarmCamera:2])
    {
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v7;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v12 = *a4;
        }

        else
        {
          v12 = 0;
        }

        v19 = 67109378;
        v16 = 1;
        *v20 = 1;
        *&v20[4] = 2112;
        *&v20[6] = v12;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevicePearl::prewarmCamera: -> %d, error:%@\n", &v19, 0x12u);
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_32;
    }

    [BKDevicePearl prewarmCamera:error:];
  }

  else
  {
    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = v7;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      *v20 = "0";
      *&v20[8] = 2048;
      *&v20[10] = 0;
      v21 = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 1666;
      _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v19, 0x30u);
    }

    setError(1, a4);
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (a4)
    {
      v15 = *a4;
    }

    else
    {
      v15 = 0;
    }

    v19 = 67109378;
    *v20 = 0;
    *&v20[4] = 2112;
    *&v20[6] = v15;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_ERROR, "BKDevicePearl::prewarmCamera: -> %d, error:%@\n", &v19, 0x12u);
  }

  v16 = 0;
LABEL_32:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __38__BKDevicePearl_statusMessage_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) pearlEventOccurred:*(a1 + 40)];
}

void __38__BKDevicePearl_statusMessage_client___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) pearlStateChanged:*(a1 + 40)];
}

- (int64_t)deviceEventWithStatus:(unsigned int)a3
{
  result = 0;
  switch(a3)
  {
    case 0x3E9u:
      result = 1;
      break;
    case 0x3EAu:
      result = 2;
      break;
    case 0x3EBu:
      result = 3;
      break;
    case 0x3ECu:
      result = 4;
      break;
    case 0x3EDu:
      result = 5;
      break;
    case 0x3EEu:
      result = 6;
      break;
    case 0x3EFu:
      result = 7;
      break;
    case 0x3F0u:
      result = 8;
      break;
    case 0x3F1u:
      result = 9;
      break;
    case 0x3F2u:
      result = 10;
      break;
    case 0x3F3u:
    case 0x3F4u:
    case 0x3F5u:
    case 0x3F6u:
    case 0x3F7u:
    case 0x3F8u:
      return result;
    case 0x3F9u:
      result = 13;
      break;
    case 0x3FAu:
      result = 14;
      break;
    case 0x3FBu:
      result = 15;
      break;
    case 0x3FCu:
      result = 16;
      break;
    case 0x3FDu:
      result = 17;
      break;
    default:
      v4 = 11;
      if (a3 != 1070)
      {
        v4 = 0;
      }

      if (a3 == 1066)
      {
        result = 12;
      }

      else
      {
        result = v4;
      }

      break;
  }

  return result;
}

- (int64_t)deviceStateWithStatus:(unsigned int)a3
{
  v3 = a3 - 1011;
  if (v3 < 5)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (void)deviceAvailableWithFailure:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLogTrace))
  {
    if (a1)
    {
      v4 = *a1;
    }

    OUTLINED_FUNCTION_3();
    _os_log_impl(v5, v6, v7, v8, v9, 0xEu);
  }

  *a2 = 0;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)createEnrollOperationWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  OUTLINED_FUNCTION_13_0();
  if (OUTLINED_FUNCTION_11(__osLogTrace))
  {
    if (a1)
    {
      v7 = *a1;
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)createMatchOperationWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  OUTLINED_FUNCTION_13_0();
  if (OUTLINED_FUNCTION_11(__osLogTrace))
  {
    if (a1)
    {
      v7 = *a1;
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)createPresenceDetectOperationWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  OUTLINED_FUNCTION_13_0();
  if (OUTLINED_FUNCTION_11(__osLogTrace))
  {
    if (a1)
    {
      v7 = *a1;
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)queryIdentityMigrationFailureForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)supportsPeriocularEnrollmentWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)periocularMatchStateWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)periocularMatchStateForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)periocularMatchStateForUser:error:.cold.2()
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

- (id)prewarmCamera:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end
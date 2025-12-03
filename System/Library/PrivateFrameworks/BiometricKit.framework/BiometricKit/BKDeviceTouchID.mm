@interface BKDeviceTouchID
+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure;
- (id)createEnrollOperationWithError:(id *)error;
- (id)createExtendEnrollTouchIDOperationWithError:(id *)error;
- (id)createMatchOperationWithError:(id *)error;
- (id)createPresenceDetectOperationWithError:(id *)error;
@end

@implementation BKDeviceTouchID

+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure
{
  *&v14[5] = *MEMORY[0x1E69E9840];
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
    *buf = 134217984;
    *v14 = failure;
    _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::deviceAvailableWithFailure: %p\n", buf, 0xCu);
  }

  v12 = 0;
  if (isEphemeralMultiUser())
  {
    goto LABEL_20;
  }

  v6 = isTouchIDPlatformWithFailure(&v12);
  if (failure)
  {
    *failure = v12;
  }

  if ((v6 & 1) == 0)
  {
LABEL_20:
    [(BKDeviceTouchID *)failure deviceAvailableWithFailure:buf];
    v9 = buf[0];
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
      if (failure)
      {
        v8 = *failure;
      }

      else
      {
        v8 = -1;
      }

      *buf = 67109376;
      v9 = 1;
      v14[0] = 1;
      LOWORD(v14[1]) = 1024;
      *(&v14[1] + 2) = v8;
      _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::deviceAvailableWithFailure: -> %d, failure:%d\n", buf, 0xEu);
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

- (id)createEnrollOperationWithError:(id *)error
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createEnrollOperation\n", &v12, 2u);
  }

  v7 = [[BKEnrollTouchIDOperation alloc] initWithDevice:self];
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
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createEnrollOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createEnrollOperationWithError:error];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createExtendEnrollTouchIDOperationWithError:(id *)error
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createExtendEnrollTouchIDOperation\n", &v12, 2u);
  }

  v7 = [(BKOperation *)[BKExtendEnrollTouchIDOperation alloc] initWithDevice:self];
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
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createExtendEnrollTouchIDOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createExtendEnrollTouchIDOperationWithError:error];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createMatchOperationWithError:(id *)error
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createMatchOperation\n", &v12, 2u);
  }

  v7 = [(BKMatchOperation *)[BKMatchTouchIDOperation alloc] initWithDevice:self];
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
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createMatchOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createMatchOperationWithError:error];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)createPresenceDetectOperationWithError:(id *)error
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createPresenceDetectOperation\n", &v12, 2u);
  }

  v7 = [(BKOperation *)[BKFingerDetectOperation alloc] initWithDevice:self];
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
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDeviceTouchID::createPresenceDetectOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDeviceTouchID createPresenceDetectOperationWithError:error];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
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

- (void)createExtendEnrollTouchIDOperationWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
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

@end
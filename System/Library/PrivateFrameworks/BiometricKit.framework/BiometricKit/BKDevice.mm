@interface BKDevice
+ (BKDevice)deviceWithDescriptor:(id)descriptor error:(id *)error;
+ (BOOL)biometryAvailabilityInfo:(int64_t *)info fromDeviceInfo:(int64_t)deviceInfo error:(id *)error;
+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure;
+ (BOOL)extendedLockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error;
+ (BOOL)lockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error;
- (BKDeviceDelegate)delegate;
- (BOOL)deviceHardwareState:(unint64_t *)state error:(id *)error;
- (BOOL)dropAllUnlockTokensWithError:(id *)error;
- (BOOL)forceBioLockoutForAllUsersWithError:(id *)error;
- (BOOL)isDelegate;
- (BOOL)removeIdentity:(id)identity error:(id *)error;
- (BOOL)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set error:(id *)error;
- (BOOL)updateIdentity:(id)identity error:(id *)error;
- (id)accessoriesWithError:(id *)error;
- (id)accessoryGroupsWithError:(id *)error;
- (id)connectedAccessoriesWithError:(id *)error;
- (id)createEnrollOperationWithError:(id *)error;
- (id)createMatchOperationWithError:(id *)error;
- (id)createPresenceDetectOperationWithError:(id *)error;
- (id)dispatchQueue;
- (id)identitiesWithError:(id *)error;
- (id)identityForUUID:(id)d error:(id *)error;
- (id)lastMatchEventWithError:(id *)error;
- (id)maxIdentityCountWithError:(id *)error;
- (id)systemProtectedConfigurationWithError:(id *)error;
- (void)dealloc;
- (void)removeIdentity:(id)identity reply:(id)reply;
- (void)setDelegate:(id)delegate;
- (void)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set reply:(id)reply;
- (void)updateIdentity:(id)identity reply:(id)reply;
@end

@implementation BKDevice

- (BKDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dispatchQueue
{
  queue = self->_queue;
  if (queue)
  {
    v3 = queue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (BOOL)isDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(BiometricKitXPCClient *)self->_xpcClient setDelegate:0];
  v3 = self->_xpcClient;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__BKDevice_dealloc__block_invoke;
  block[3] = &unk_1E8303E78;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  xpcClient = self->_xpcClient;
  self->_xpcClient = 0;

  v7.receiver = self;
  v7.super_class = BKDevice;
  [(BKDevice *)&v7 dealloc];
}

+ (BOOL)deviceAvailableWithFailure:(BOOL *)failure
{
  v16 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136316162;
    v7 = "0";
    v8 = 2048;
    v9 = 0;
    v10 = 2080;
    v11 = &unk_1C82F52EE;
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
    v14 = 1024;
    v15 = 50;
    _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v6, 0x30u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (BKDevice)deviceWithDescriptor:(id)descriptor error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  kdebug_trace();
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
    *v26 = 138412290;
    *&v26[4] = descriptorCopy;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceWithDescriptor: %@\n", v26, 0xCu);
  }

  if (!descriptorCopy)
  {
    [BKDevice deviceWithDescriptor:v26 error:?];
    goto LABEL_43;
  }

  v9 = -[BiometricKitXPCClient initWithDeviceType:clientType:]([BiometricKitXPCClient alloc], "initWithDeviceType:clientType:", [descriptorCopy type], 2);
  if (!v9)
  {
    [BKDevice deviceWithDescriptor:v26 error:?];
    goto LABEL_43;
  }

  v10 = v9;
  type = [descriptorCopy type];
  if (type == 2)
  {
    v12 = off_1E8303950;
    if (![BKDevicePearl deviceAvailableWithFailure:0])
    {
      [BKDevice deviceWithDescriptor:v10 error:v26];
      goto LABEL_43;
    }
  }

  else
  {
    if (type != 1)
    {
      if (__osLog)
      {
        v19 = __osLog;
      }

      else
      {
        v19 = v7;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v26 = 136316162;
        *&v26[4] = "0";
        v27 = 2048;
        v28 = 0;
        v29 = 2080;
        v30 = &unk_1C82F52EE;
        v31 = 2080;
        v32 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
        v33 = 1024;
        v34 = 92;
        _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v26, 0x30u);
      }

      goto LABEL_25;
    }

    v12 = off_1E8303958;
    if (![BKDeviceTouchID deviceAvailableWithFailure:0])
    {
      [BKDevice deviceWithDescriptor:v10 error:v26];
LABEL_43:
      v10 = *v26;
LABEL_25:
      setError(1, error);
      goto LABEL_26;
    }
  }

  v13 = objc_alloc_init(*v12);
  if (!v13)
  {
LABEL_26:
    if (__osLogTrace)
    {
      v20 = __osLogTrace;
    }

    else
    {
      v20 = v7;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      connectionId = [(BiometricKitXPCClient *)v10 connectionId];
      if (error)
      {
        v23 = *error;
      }

      else
      {
        v23 = 0;
      }

      *v26 = 138412802;
      *&v26[4] = 0;
      v27 = 2048;
      v28 = connectionId;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "BKDevice::deviceWithDescriptor: -> %@ (_cid:%lu) %@\n", v26, 0x20u);
    }

    v14 = 0;
    goto LABEL_37;
  }

  v14 = v13;
  [(BiometricKitXPCClient *)v10 setDelegate:v13];
  objc_storeStrong(v14 + 1, v10);
  objc_storeStrong(v14 + 4, descriptor);
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v7;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    connectionId2 = [(BiometricKitXPCClient *)v10 connectionId];
    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    *v26 = 138412802;
    *&v26[4] = v14;
    v27 = 2048;
    v28 = connectionId2;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceWithDescriptor: -> %@ (_cid:%lu) %@\n", v26, 0x20u);
  }

LABEL_37:
  kdebug_trace();

  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setDelegate:(id)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
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
    v10 = 138412290;
    v11 = delegateCopy;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::setDelegate: %@\n", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    [(BiometricKitXPCClient *)self->_xpcClient registerDelegate:delegateCopy != 0];
  }

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
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::setDelegate: -> void\n", &v10, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::createEnrollOperation\n", &v12, 2u);
  }

  v7 = [[BKEnrollOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::createEnrollOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDevice createEnrollOperationWithError:error];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::createMatchOperation\n", &v12, 2u);
  }

  v7 = [[BKMatchOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::createMatchOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDevice createMatchOperationWithError:error];
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
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKDevice::createPresenceDetectOperation\n", &v12, 2u);
  }

  v7 = [(BKOperation *)[BKPresenceDetectOperation alloc] initWithDevice:self];
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
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::createPresenceDetectOperation -> %@, error:%@\n", &v12, 0x16u);
    }
  }

  else
  {
    [BKDevice createPresenceDetectOperationWithError:error];
  }

  kdebug_trace();
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)systemProtectedConfigurationWithError:(id *)error
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
    xpcClient = self->_xpcClient;
    v8 = v6;
    v18 = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::systemProtectedConfiguration (_cid:%lu)\n", &v18, 0xCu);
  }

  getSystemProtectedConfiguration = [(BiometricKitXPCClient *)self->_xpcClient getSystemProtectedConfiguration];
  if (getSystemProtectedConfiguration)
  {
    v10 = [[BKSystemProtectedConfiguration alloc] initWithDictionary:getSystemProtectedConfiguration];
    if (v10)
    {
      v11 = v10;
      if (__osLogTrace)
      {
        v12 = __osLogTrace;
      }

      else
      {
        v12 = v5;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v13 = *error;
        }

        else
        {
          v13 = 0;
        }

        v18 = 138543618;
        connectionId = v11;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKDevice::systemProtectedConfiguration: -> %{public}@, error:%@\n", &v18, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    [BKDevice systemProtectedConfigurationWithError:];
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v15 = *error;
    }

    else
    {
      v15 = 0;
    }

    v18 = 138543618;
    connectionId = 0;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_ERROR, "BKDevice::systemProtectedConfiguration: -> %{public}@, error:%@\n", &v18, 0x16u);
  }

  v11 = 0;
LABEL_26:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

void __72__BKDevice_setProtectedConfiguration_forUser_credentialSet_async_reply___block_invoke(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::setProtectedConfiguration:forUser:credentialSet:async: -> reply(%d, %@)\n", &v7, 0x12u);
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
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::setProtectedConfiguration:forUser:credentialSet:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __66__BKDevice_setProtectedConfiguration_forUser_credentialSet_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BKDevice_setProtectedConfiguration_forUser_credentialSet_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __70__BKDevice_setSystemProtectedConfiguration_credentialSet_async_reply___block_invoke(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::setSystemProtectedConfiguration:credentialSet:async: -> reply(%d, %@)\n", &v7, 0x12u);
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
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::setSystemProtectedConfiguration:credentialSet:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set error:(id *)error
{
  configurationCopy = configuration;
  setCopy = set;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__BKDevice_setSystemProtectedConfiguration_credentialSet_error___block_invoke;
  v12[3] = &unk_1E8304308;
  v12[4] = &v19;
  v12[5] = &v13;
  [(BKDevice *)self setSystemProtectedConfiguration:configurationCopy credentialSet:setCopy async:0 reply:v12];
  if (error)
  {
    *error = v14[5];
  }

  v10 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)setSystemProtectedConfiguration:(id)configuration credentialSet:(id)set reply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__BKDevice_setSystemProtectedConfiguration_credentialSet_reply___block_invoke;
  v10[3] = &unk_1E8304358;
  v11 = replyCopy;
  v9 = replyCopy;
  [(BKDevice *)self setSystemProtectedConfiguration:configuration credentialSet:set async:1 reply:v10];
}

void __64__BKDevice_setSystemProtectedConfiguration_credentialSet_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__BKDevice_setSystemProtectedConfiguration_credentialSet_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (BOOL)dropAllUnlockTokensWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v8 = v6;
    v19 = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::dropAllUnlockTokens (_cid:%lu)\n", &v19, 0xCu);
  }

  dropUnlockToken = [(BiometricKitXPCClient *)self->_xpcClient dropUnlockToken];
  if (dropUnlockToken)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      *v20 = "err == 0 ";
      *&v20[8] = 2048;
      *v21 = dropUnlockToken;
      *&v21[8] = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
      v25 = 1024;
      v26 = 551;
      _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v19, 0x30u);
    }

    setErrorWithOSStatus(dropUnlockToken, error);
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v18 = *error;
      }

      else
      {
        v18 = 0;
      }

      v19 = 67109634;
      *v20 = 0;
      *&v20[4] = 1024;
      *&v20[6] = dropUnlockToken;
      *v21 = 2112;
      *&v21[2] = v18;
      v12 = v17;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v5;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v11 = *error;
      }

      else
      {
        v11 = 0;
      }

      v19 = 67109634;
      *v20 = 1;
      *&v20[4] = 1024;
      *&v20[6] = 0;
      *v21 = 2112;
      *&v21[2] = v11;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v12, v13, "BKDevice::dropAllUnlockTokens -> %d(err:0x%x), error:%@\n", &v19, 0x18u);
    }
  }

  result = dropUnlockToken == 0;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)forceBioLockoutForAllUsersWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v8 = v6;
    v19 = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::forceBioLockoutForAllUsers (_cid:%lu)\n", &v19, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->_xpcClient forceBioLockoutForUser:0xFFFFFFFFLL withOptions:0];
  if (v9)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136316162;
      *v20 = "err == 0 ";
      *&v20[8] = 2048;
      *v21 = v9;
      *&v21[8] = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
      v25 = 1024;
      v26 = 573;
      _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v19, 0x30u);
    }

    setErrorWithOSStatus(v9, error);
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v5;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v18 = *error;
      }

      else
      {
        v18 = 0;
      }

      v19 = 67109634;
      *v20 = 0;
      *&v20[4] = 1024;
      *&v20[6] = v9;
      *v21 = 2112;
      *&v21[2] = v18;
      v12 = v17;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v5;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v11 = *error;
      }

      else
      {
        v11 = 0;
      }

      v19 = 67109634;
      *v20 = 1;
      *&v20[4] = 1024;
      *&v20[6] = 0;
      *v21 = 2112;
      *&v21[2] = v11;
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v12, v13, "BKDevice::dropAllUnlockTokens -> %d(err:0x%x), error:%@\n", &v19, 0x18u);
    }
  }

  result = v9 == 0;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)identityForUUID:(id)d error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
    xpcClient = self->_xpcClient;
    v10 = v8;
    v20 = 138412546;
    v21 = dCopy;
    v22 = 2048;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::identityForUUID: %@ (_cid:%lu)\n", &v20, 0x16u);
  }

  v11 = [(BiometricKitXPCClient *)self->_xpcClient getIdentityFromUUID:dCopy];
  if (v11)
  {
    v12 = [[BKIdentity alloc] initWithServerIdentity:v11 device:self];
    if (v12)
    {
      v13 = v12;
      if (__osLogTrace)
      {
        v14 = __osLogTrace;
      }

      else
      {
        v14 = v7;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        v20 = 138412546;
        v21 = v13;
        v22 = 2112;
        connectionId = v15;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKDevice::identityForUUID: -> %@, error:%@\n", &v20, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    [BKDevice identityForUUID:error:];
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
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

    v20 = 138412546;
    v21 = 0;
    v22 = 2112;
    connectionId = v17;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_ERROR, "BKDevice::identityForUUID: -> %@, error:%@\n", &v20, 0x16u);
  }

  v13 = 0;
LABEL_26:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

void __39__BKDevice_updateIdentity_async_reply___block_invoke(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::updateIdentity:async: -> reply(%d, %@)\n", &v7, 0x12u);
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
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::updateIdentity:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__BKDevice_updateIdentity_error___block_invoke;
  v9[3] = &unk_1E8304308;
  v9[4] = &v16;
  v9[5] = &v10;
  [(BKDevice *)self updateIdentity:identityCopy async:0 reply:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)updateIdentity:(id)identity reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__BKDevice_updateIdentity_reply___block_invoke;
  v8[3] = &unk_1E8304358;
  v9 = replyCopy;
  v7 = replyCopy;
  [(BKDevice *)self updateIdentity:identity async:1 reply:v8];
}

void __33__BKDevice_updateIdentity_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BKDevice_updateIdentity_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __39__BKDevice_removeIdentity_async_reply___block_invoke(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::removeIdentity:async: -> reply(%d, %@)\n", &v7, 0x12u);
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
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::removeIdentity:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__BKDevice_removeIdentity_error___block_invoke;
  v9[3] = &unk_1E8304308;
  v9[4] = &v16;
  v9[5] = &v10;
  [(BKDevice *)self removeIdentity:identityCopy async:0 reply:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)removeIdentity:(id)identity reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__BKDevice_removeIdentity_reply___block_invoke;
  v8[3] = &unk_1E8304358;
  v9 = replyCopy;
  v7 = replyCopy;
  [(BKDevice *)self removeIdentity:identity async:1 reply:v8];
}

void __33__BKDevice_removeIdentity_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BKDevice_removeIdentity_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __51__BKDevice_removeAllIdentitiesForUser_async_reply___block_invoke(uint64_t a1, uint64_t a2)
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
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "BKDevice::removeAllIdentitiesForUser:async: -> reply(%d, %@)\n", &v7, 0x12u);
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
      _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDevice::removeAllIdentitiesForUser:async: -> reply(%d, %@)\n", &v7, 0x12u);
    }

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __45__BKDevice_removeAllIdentitiesForUser_reply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__BKDevice_removeAllIdentitiesForUser_reply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (id)identitiesWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::identities (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = [(BiometricKitXPCClient *)self->_xpcClient identities:0];
  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[BKIdentity alloc] initWithServerIdentity:*(*(&v27 + 1) + 8 * i) device:self];
          [array addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v12);
    }

    if (array)
    {
      if (__osLogTrace)
      {
        v16 = __osLogTrace;
      }

      else
      {
        v16 = v4;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [array count];
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 134218498;
        connectionId = v18;
        v33 = 2114;
        v34 = array;
        v35 = 2112;
        v36 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKDevice::identities -> %lu: %{public}@, error:%@\n", buf, 0x20u);
      }

      goto LABEL_31;
    }
  }

  else
  {
    [BKDevice identitiesWithError:];
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v4;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = v20;
    v22 = [0 count];
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 134218498;
    connectionId = v22;
    v33 = 2114;
    v34 = 0;
    v35 = 2112;
    v36 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "BKDevice::identities -> %lu: %{public}@, error:%@\n", buf, 0x20u);
  }

  array = 0;
LABEL_31:

  v24 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)maxIdentityCountWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v8 = v6;
    v21 = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::maxIdentityCount (_cid:%lu)\n", &v21, 0xCu);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BiometricKitXPCClient getMaxIdentityCount:](self->_xpcClient, "getMaxIdentityCount:", 0)}];
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
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v12 = v11;
    integerValue = [v10 integerValue];
    if (error)
    {
      v14 = *error;
    }

    else
    {
      v14 = 0;
    }

    v21 = 134218242;
    connectionId = integerValue;
    v23 = 2112;
    v24 = v14;
    v17 = v12;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v12 = v11;
    integerValue2 = [0 integerValue];
    if (error)
    {
      v16 = *error;
    }

    else
    {
      v16 = 0;
    }

    v21 = 134218242;
    connectionId = integerValue2;
    v23 = 2112;
    v24 = v16;
    v17 = v12;
    v18 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C82AD000, v17, v18, "BKDevice::maxIdentityCount -> %ld, error:%@\n", &v21, 0x16u);

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)lastMatchEventWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v8 = v6;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDevice::lastMatchEvent (_cid:%lu)\n", buf, 0xCu);
  }

  v9 = self->_xpcClient;
  v20 = 0;
  v10 = [(BiometricKitXPCClient *)v9 getLastMatchEvent:&v20];
  v11 = v20;
  if (v10)
  {
    [BKDevice lastMatchEventWithError:];
  }

  else
  {
    v12 = [BKMatchEvent matchEventWithDictionary:v11 device:self error:error];
    if (v12)
    {
      v13 = v12;
      if (__osLogTrace)
      {
        v14 = __osLogTrace;
      }

      else
      {
        v14 = v5;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        *buf = 138412546;
        connectionId = v13;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_1C82AD000, v14, OS_LOG_TYPE_DEFAULT, "BKDevice::lastMatchEvent -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_16;
    }

    [BKDevice lastMatchEventWithError:];
  }

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

    *buf = 138412546;
    connectionId = 0;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_ERROR, "BKDevice::lastMatchEvent -> %@, error:%@\n", buf, 0x16u);
  }

  v13 = 0;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)deviceHardwareState:(unint64_t *)state error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v10 = v8;
    *buf = 134218240;
    *v22 = state;
    *&v22[8] = 2048;
    *&v22[10] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceHardwareState: %p (_cid:%lu)\n", buf, 0x16u);
  }

  v20 = 0;
  if (state)
  {
    if (![(BiometricKitXPCClient *)self->_xpcClient getDeviceHardwareState:&v20])
    {
      if (v20 < 3)
      {
        *state = v20;
      }

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
        v12 = *state;
        if (error)
        {
          v13 = *error;
        }

        else
        {
          v13 = 0;
        }

        *buf = 67109634;
        v14 = 1;
        *v22 = 1;
        *&v22[4] = 2048;
        *&v22[6] = v12;
        *&v22[14] = 2112;
        *&v22[16] = v13;
        _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevice::deviceHardwareState: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_19;
    }

    [BKDevice deviceHardwareState:error:];
  }

  else
  {
    [BKDevice deviceHardwareState:error:];
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v7;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v18 = *state;
    }

    else
    {
      v18 = 0;
    }

    if (error)
    {
      v19 = *error;
    }

    else
    {
      v19 = 0;
    }

    *buf = 67109634;
    *v22 = 0;
    *&v22[4] = 2048;
    *&v22[6] = v18;
    *&v22[14] = 2112;
    *&v22[16] = v19;
    _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "BKDevice::deviceHardwareState: -> %d, state:%ld, error:%@\n", buf, 0x1Cu);
  }

  v14 = 0;
LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)accessoryGroupsWithError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::accessoryGroups (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_xpcClient;
  v33 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v33];
  v10 = v33;
  if (v9)
  {
    [BKDevice accessoryGroupsWithError:];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [BKAccessoryGroup alloc];
          group = [v17 group];
          v20 = [(BKAccessoryGroup *)v18 initWithServerAccessoryGroup:group device:self];
          [v11 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v14);
    }

    v4 = MEMORY[0x1E69E9C10];
    if (v11)
    {
      if (__osLogTrace)
      {
        v21 = __osLogTrace;
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        connectionId = v11;
        v36 = 2112;
        v37 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_DEFAULT, "BKDevice::accessoryGroups -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v4;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    connectionId = 0;
    v36 = 2112;
    v37 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_ERROR, "BKDevice::accessoryGroups -> %@, error:%@\n", buf, 0x16u);
  }

  v11 = 0;
LABEL_31:
  allObjects = [v11 allObjects];

  v26 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (id)accessoriesWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::accessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_xpcClient;
  v29 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v29];
  v10 = v29;
  if (v9)
  {
    [BKDevice accessoriesWithError:];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[BKAccessory alloc] initWithServerAccessory:*(*(&v25 + 1) + 8 * i) device:self];
          [array addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
    }

    if (array)
    {
      if (__osLogTrace)
      {
        v18 = __osLogTrace;
      }

      else
      {
        v18 = v4;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        connectionId = array;
        v32 = 2112;
        v33 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v18, OS_LOG_TYPE_DEFAULT, "BKDevice::accessories -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_31;
    }
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v4;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    connectionId = 0;
    v32 = 2112;
    v33 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_ERROR, "BKDevice::accessories -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_31:

  v22 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)connectedAccessoriesWithError:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
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
    xpcClient = self->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDevice::connectedAccessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_xpcClient;
  v30 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v30];
  v10 = v30;
  if (v9)
  {
    [BKDevice connectedAccessoriesWithError:];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if (([v17 flags] & 2) != 0)
          {
            v18 = [[BKAccessory alloc] initWithServerAccessory:v17 device:self];
            [array addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v14);
    }

    if (array)
    {
      if (__osLogTrace)
      {
        v19 = __osLogTrace;
      }

      else
      {
        v19 = v4;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        connectionId = array;
        v33 = 2112;
        v34 = errorCopy;
        _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_DEFAULT, "BKDevice::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_33;
    }
  }

  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v4;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    if (error)
    {
      errorCopy2 = *error;
    }

    *buf = 138412546;
    connectionId = 0;
    v33 = 2112;
    v34 = errorCopy2;
    _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_ERROR, "BKDevice::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
  }

  array = 0;
LABEL_33:

  v23 = *MEMORY[0x1E69E9840];

  return array;
}

void __41__BKDevice_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) matchEventOccurred:*(a1 + 40)];
}

+ (BOOL)lockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error
{
  if (state)
  {
    if ((lockoutState & 0x40) != 0)
    {
      v6 = 6;
    }

    else if ((lockoutState & 0x100) != 0)
    {
      v6 = 7;
    }

    else if ((lockoutState & 0x10) != 0)
    {
      v6 = 2;
    }

    else if ((lockoutState & 2) != 0)
    {
      v6 = 3;
    }

    else if ((lockoutState & 4) != 0)
    {
      v6 = 4;
    }

    else if ((lockoutState & 8) != 0)
    {
      v6 = 1;
    }

    else if ((lockoutState & 0x800) != 0)
    {
      v6 = 8;
    }

    else
    {
      v6 = 5;
    }

    *state = v6;
  }

  else
  {
    +[BKDevice lockoutState:fromDeviceLockoutState:error:];
  }

  return state != 0;
}

+ (BOOL)extendedLockoutState:(int64_t *)state fromDeviceLockoutState:(int64_t)lockoutState error:(id *)error
{
  if (state)
  {
    v6 = (lockoutState >> 3) & 8 | (lockoutState >> 2) & 0x40 | (lockoutState >> 4) & 1 | lockoutState & 6;
    *state = v6;
    v7 = v6;
    if ((lockoutState & 8) == 0)
    {
      v7 = v6 | 0x10;
      *state = v6 | 0x10;
      if ((lockoutState & 0x800) != 0)
      {
        v7 = v6 | 0x90;
        *state = v6 | 0x90;
      }
    }

    if ((lockoutState & 0x200) == 0)
    {
      *state = v7 | 0x20;
    }
  }

  else
  {
    +[BKDevice extendedLockoutState:fromDeviceLockoutState:error:];
  }

  return state != 0;
}

+ (BOOL)biometryAvailabilityInfo:(int64_t *)info fromDeviceInfo:(int64_t)deviceInfo error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (!info)
  {
    +[BKDevice biometryAvailabilityInfo:fromDeviceInfo:error:];
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  if (deviceInfo == 3)
  {
    v7 = 3;
    goto LABEL_8;
  }

  if (deviceInfo == 2)
  {
    v7 = 2;
LABEL_8:
    *info = v7;
    result = 1;
    goto LABEL_16;
  }

  if (deviceInfo != 1)
  {
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = "0";
      v12 = 2048;
      v13 = 0;
      v14 = 2080;
      v15 = &unk_1C82F52EE;
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevice.m";
      v18 = 1024;
      v19 = 1349;
      _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v10, 0x30u);
    }

    setError(1, error);
    goto LABEL_15;
  }

  result = 1;
  *info = 1;
LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)deviceWithDescriptor:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a2 = a1;
  v10 = *MEMORY[0x1E69E9840];
}

+ (void)deviceWithDescriptor:(uint64_t)a1 error:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a2 = a1;
  v10 = *MEMORY[0x1E69E9840];
}

+ (void)deviceWithDescriptor:(void *)a1 error:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)deviceWithDescriptor:(void *)a1 error:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x1E69E9840];
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

- (id)protectedConfigurationForUser:error:.cold.1()
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

- (id)effectiveProtectedConfigurationForUser:error:.cold.1()
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

- (id)systemProtectedConfigurationWithError:.cold.1()
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

- (uint64_t)setProtectedConfiguration:forUser:credentialSet:async:reply:.cold.1()
{
  OUTLINED_FUNCTION_15_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v11);
  }

  v6 = [BKErrorHelper errorWithCode:1];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  result = v8(v7);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.1()
{
  OUTLINED_FUNCTION_15_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v11);
  }

  v6 = [BKErrorHelper errorWithCode:3];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  result = v8(v7);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.2()
{
  OUTLINED_FUNCTION_15_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v11);
  }

  v6 = [BKErrorHelper errorWithCode:3];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  result = v8(v7);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.3()
{
  OUTLINED_FUNCTION_15_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v11);
  }

  v6 = [BKErrorHelper errorWithCode:3];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  result = v8(v7);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setSystemProtectedConfiguration:credentialSet:async:reply:.cold.4()
{
  OUTLINED_FUNCTION_15_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v11);
  }

  v6 = [BKErrorHelper errorWithCode:1];
  v7 = OUTLINED_FUNCTION_4_2(v6);
  result = v8(v7);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)bioLockoutState:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)bioLockoutState:forUser:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)bioLockoutState:forUser:error:.cold.3()
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

- (id)extendedBioLockoutState:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)extendedBioLockoutState:forUser:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)extendedBioLockoutState:forUser:error:.cold.3()
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

- (id)expressModeState:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)expressModeState:forUser:error:.cold.2()
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

- (void)identitiesDatabaseUUIDForUser:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  setError(1, a1);
  if (OUTLINED_FUNCTION_2(__osLogTrace))
  {
    if (a1)
    {
      v2 = *a1;
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)identitiesDatabaseHashForUser:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  setError(1, a1);
  if (OUTLINED_FUNCTION_2(__osLogTrace))
  {
    if (a1)
    {
      v2 = *a1;
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)forceBioLockoutForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)forceBioLockoutForUser:error:.cold.2()
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

- (id)forceBioLockoutIfLockedForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)forceBioLockoutIfLockedForUser:error:.cold.2()
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

- (id)identityForUUID:error:.cold.1()
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

- (id)identitiesWithError:.cold.1()
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

- (id)identitiesForUser:error:.cold.1()
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

- (id)biometryAvailability:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)biometryAvailability:forUser:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)biometryAvailability:forUser:error:.cold.3()
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

- (id)lastMatchEventWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)lastMatchEventWithError:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)deviceHardwareState:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)deviceHardwareState:error:.cold.2()
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

- (id)accessoryGroupsWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)accessoriesWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)connectedAccessoriesWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)identitiesForUser:accessoryGroup:error:.cold.1()
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

- (id)freeIdentityCountForUser:accessoryGroup:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v9 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v8);
  }

  result = OUTLINED_FUNCTION_14_0();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)lockoutState:fromDeviceLockoutState:error:.cold.1()
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

+ (id)extendedLockoutState:fromDeviceLockoutState:error:.cold.1()
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

+ (id)biometryAvailabilityInfo:fromDeviceInfo:error:.cold.1()
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

@end
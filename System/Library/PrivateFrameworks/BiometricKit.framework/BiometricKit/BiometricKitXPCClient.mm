@interface BiometricKitXPCClient
+ (id)clientUUID;
+ (void)clientUUID;
+ (void)initialize;
- (BOOL)fileRadarWithLogs:(id)logs withDescription:(id)description;
- (BOOL)isAriadneSignpostsEnabled;
- (BOOL)isFingerOn;
- (BOOL)isXARTAvailable;
- (BiometricKitXPCClient)init;
- (BiometricKitXPCClient)initWithDeviceType:(int64_t)type clientType:(int64_t)clientType;
- (BiometricKitXPCClientDelegate)delegate;
- (id)getCalibrationDataInfo;
- (id)getIdentityFromUUID:(id)d;
- (id)getNodeTopologyForIdentity:(id)identity;
- (id)getSensorInfo;
- (id)getSystemProtectedConfiguration;
- (id)identities:(id)identities;
- (id)pullAlignmentData;
- (id)pullCalibrationData;
- (id)pullCaptureBuffer;
- (id)pullMatchPolicyInfoData;
- (int)completeEnrollment;
- (int)connect;
- (int)dropUnlockToken;
- (int)enrollContinue;
- (int)getCountersignedStoreToken:(id *)token;
- (int)getDeviceHardwareState:(unsigned int *)state;
- (int)getLastMatchEvent:(id *)event;
- (int)getPreferencesValue:(id *)value forKey:(id)key;
- (int)initializeConnection;
- (int)isPeriocularEnrollmentSupported:(BOOL *)supported;
- (int)listAccessories:(id *)accessories;
- (int)prewarmCamera:(unint64_t)camera;
- (int)registerDSID:(unint64_t)d withOptions:(id)options;
- (int)registerStoreToken:(id)token;
- (int)resetAppleConnectCounter;
- (int)setPreferencesValue:(id)value forKey:(id)key;
- (int)setTemplate:(id)template forIdentity:(id)identity;
- (int)setUserDSID:(unint64_t)d withOptions:(id)options;
- (int)startNewMatchAttempt;
- (int64_t)getDeviceState;
- (int64_t)getProvisioningState;
- (int64_t)getSensorCalibrationStatus;
- (void)cancel;
- (void)completeEnrollment;
- (void)connect;
- (void)dealloc;
- (void)detectPresenceWithOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)disconnect;
- (void)dropUnlockToken;
- (void)enrollContinue;
- (void)getCalibrationDataInfo;
- (void)getDeviceState;
- (void)getProvisioningState;
- (void)getSensorCalibrationStatus;
- (void)getSensorInfo;
- (void)getSystemProtectedConfiguration;
- (void)initializeConnection;
- (void)interruptConnection;
- (void)invalidateConnection;
- (void)isAriadneSignpostsEnabled;
- (void)isFingerOn;
- (void)isXARTAvailable;
- (void)logEventOrCode:(unint64_t)code;
- (void)match:(id)match withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)pullAlignmentData;
- (void)pullCalibrationData;
- (void)pullCaptureBuffer;
- (void)pullMatchPolicyInfoData;
- (void)removeIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)removePeriocularTemplatesWithOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)resetAppleConnectCounter;
- (void)setSystemProtectedConfiguration:(id)configuration withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)startNewMatchAttempt;
- (void)timestampEvent:(unint64_t)event absoluteTime:(unint64_t)time;
- (void)updateIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply;
@end

@implementation BiometricKitXPCClient

- (BiometricKitXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(BiometricKitXPCClient *)self invalidateConnection];
  v3 = _clientIDs;
  objc_sync_enter(v3);
  if (self->_clientID)
  {
    v4 = _clientIDs;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v4 removeObject:v5];
  }

  objc_sync_exit(v3);

  v6.receiver = self;
  v6.super_class = BiometricKitXPCClient;
  [(BiometricKitXPCClient *)&v6 dealloc];
}

- (void)invalidateConnection
{
  obj = self;
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(&obj->_connection);
  if (WeakRetained)
  {
    connectionInvalidated = obj->_connectionInvalidated;

    if (!connectionInvalidated)
    {
      if (obj->_connectionInitialized)
      {
        if (!obj->_connectionInterrupted)
        {
          [(BiometricKitXPCClient *)obj disconnect];
        }

        obj->_connectionInitialized = 0;
      }

      v4 = objc_loadWeakRetained(&obj->_connection);
      [v4 removeClient:obj];

      obj->_connectionInvalidated = 1;
    }
  }

  objc_sync_exit(obj);
}

- (int)initializeConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connectionInterrupted)
  {
    selfCopy->_connectionInterrupted = 0;
    selfCopy->_connectionInitialized = 0;
  }

  else if (selfCopy->_connectionInitialized)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_8;
  }

  if (selfCopy->_connectionInvalidated)
  {
    goto LABEL_5;
  }

  connect = [(BiometricKitXPCClient *)selfCopy connect];
  if (connect)
  {
    [(BiometricKitXPCClient *)connect initializeConnection];
    v3 = v7;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    -[BiometricKitXPCClient registerDelegateCall:](selfCopy, "registerDelegateCall:", [WeakRetained isDelegate]);

    v3 = 0;
    selfCopy->_connectionInitialized = 1;
  }

LABEL_8:
  objc_sync_exit(selfCopy);

  return v3;
}

- (int)connect
{
  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x2020000000;
  v31 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (isInternalBuild())
  {
    v6 = +[BiometricKitXPCClient clientUUID];
    v7 = v24[5];
    v24[5] = v6;
  }

  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKeyedSubscript:@"BKClientBundleIdentifier"];
  }

  v8 = MEMORY[0x1E696AD98];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v10 = [v8 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
  [dictionary setObject:v10 forKeyedSubscript:@"BKClientProcessId"];

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo2 processName];
  [dictionary setObject:processName forKeyedSubscript:@"BKClientProcessName"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_clientType];
  [dictionary setObject:v13 forKeyedSubscript:@"BKClientType"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BiometricKitXPCClient connectionId](self, "connectionId")}];
  [dictionary setObject:v14 forKeyedSubscript:@"BKClientConnectionId"];

  [dictionary setObject:v24[5] forKeyedSubscript:@"BKClientUUID"];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];

  if (xpcConnection)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__BiometricKitXPCClient_connect__block_invoke;
    v22[3] = &unk_1E8303DE8;
    v22[4] = &v29;
    v17 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v22];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __32__BiometricKitXPCClient_connect__block_invoke_2;
    v21[3] = &unk_1E8303E10;
    v21[4] = &v23;
    v21[5] = &v29;
    [v17 connect:dictionary client:clientID replyBlock:v21];

    v19 = *(v30[0] + 24);
  }

  else
  {
    [(BiometricKitXPCClient *)v30 connect];
    v19 = 1;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v19;
}

+ (id)clientUUID
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v2 = malloc_type_malloc(0x800uLL, 0x80040B8603338uLL);
  if (v2)
  {
    v3 = v2;
    v4 = backtrace(v2, 256);
    if (v4 <= 0)
    {
      +[BiometricKitXPCClient clientUUID];
    }

    else
    {
      v5 = v4;
      if (v4 >= 0x101)
      {
        +[BiometricKitXPCClient clientUUID];
      }

      else
      {
        v6 = v4;
        v7 = malloc_type_malloc(20 * v4, 0x1000040A86A77D5uLL);
        if (v7)
        {
          v8 = v7;
          backtrace_image_offsets(v3, v7, v5);
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, v8);
          v9 = &v8[20 * v5 + 20];
          v10 = v6 + 1;
          do
          {
            v11 = uuid_compare(v9 - 40, dst);
            v9 -= 20;
            v12 = v10 - 1;
            if (!v11)
            {
              break;
            }
          }

          while (v10-- != 2);
          if (v12 >= v6)
          {
            +[BiometricKitXPCClient clientUUID];
          }

          else
          {
            uuid_copy(v20, v9);
          }

          free(v3);
          v14 = v8;
          goto LABEL_12;
        }

        +[BiometricKitXPCClient clientUUID];
      }
    }

    v14 = v3;
LABEL_12:
    free(v14);
    goto LABEL_13;
  }

  +[BiometricKitXPCClient clientUUID];
LABEL_13:
  v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v20];
  uUIDString = [v15 UUIDString];

  v17 = *MEMORY[0x1E69E9840];

  return uUIDString;
}

void __32__BiometricKitXPCClient_connect__block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 == 266)
  {
    if (isInternalBuild())
    {
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
        v4 = *(*(*(a1 + 32) + 8) + 40);
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_ERROR, "Please adopt new BiometricKit entitlements (see rdar://105770455 for additional details), client UUID %@\n", &v6, 0xCu);
      }
    }

    a2 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  [v4 disconnect:-[BiometricKitXPCClient clientID](self replyBlock:{"clientID"), &__block_literal_global_300}];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    _clientIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);

    MEMORY[0x1EEE66BB8]();
  }
}

- (BiometricKitXPCClient)init
{
  if (isTouchIDPlatform())
  {
    v3 = 1;
  }

  else if (isFaceIDPlatform())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [(BiometricKitXPCClient *)self initWithDeviceType:v3 clientType:1];
}

- (BiometricKitXPCClient)initWithDeviceType:(int64_t)type clientType:(int64_t)clientType
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [BiometricKitXPCClientConnection connectionWithDeviceType:type];
  if (!v6)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136316162;
    v21 = "0";
    v22 = 2048;
    v23 = 0;
    v24 = 2080;
    v25 = &unk_1C82F52EE;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v28 = 1024;
    v29 = 531;
LABEL_13:
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_26;
  }

  if ((clientType - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136316162;
    v21 = "0";
    v22 = 2048;
    v23 = 0;
    v24 = 2080;
    v25 = &unk_1C82F52EE;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v28 = 1024;
    v29 = 536;
    goto LABEL_13;
  }

  v19.receiver = self;
  v19.super_class = BiometricKitXPCClient;
  self = [(BiometricKitXPCClient *)&v19 init];
  if (!self)
  {
    [BiometricKitXPCClient initWithDeviceType:clientType:];
LABEL_30:
    self = self;
    selfCopy = self;
    goto LABEL_27;
  }

  v8 = _clientIDs;
  objc_sync_enter(v8);
  v9 = _clientIDIndex;
  v10 = _clientIDIndex;
  while (!v10)
  {
LABEL_19:
    if (++v10 == v9)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v21 = "0";
        v22 = 2048;
        v23 = 0;
        v24 = 2080;
        v25 = &unk_1C82F52EE;
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
        v28 = 1024;
        v29 = 549;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      objc_sync_exit(v8);

      goto LABEL_26;
    }
  }

  v11 = _clientIDs;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  LODWORD(v11) = [v11 containsObject:v12];

  if (v11)
  {
    v9 = _clientIDIndex;
    goto LABEL_19;
  }

  v17 = _clientIDs;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  [v17 addObject:v18];

  self->_clientID = v10;
  _clientIDIndex = v10 + 1;
  objc_sync_exit(v8);

  self->_connectionID = arc4random();
  if ([v6 addClient:self])
  {
    objc_storeWeak(&self->_connection, v6);
    self->_clientType = clientType;
    goto LABEL_30;
  }

  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v21 = "0";
    v22 = 2048;
    v23 = 0;
    v24 = 2080;
    v25 = &unk_1C82F52EE;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v28 = 1024;
    v29 = 562;
    goto LABEL_13;
  }

LABEL_26:
  selfCopy = 0;
LABEL_27:

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)interruptConnection
{
  v11 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)self connectionId];
    _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_DEFAULT, "BiometricKitXPCClient::interruptConnection (_cid:%lu)\n", buf, 0xCu);
  }

  self->_connectionInterrupted = 1;
  objc_initWeak(buf, self);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BiometricKitXPCClient_interruptConnection__block_invoke;
  block[3] = &unk_1E8303C80;
  objc_copyWeak(&v8, buf);
  dispatch_async(v5, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__BiometricKitXPCClient_interruptConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 6);
    [v5 connectionInterrupted];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __32__BiometricKitXPCClient_connect__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __42__BiometricKitXPCClient_registerDelegate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) initializeConnection];

  objc_autoreleasePoolPop(v2);
}

uint64_t __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)match:(id)match withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  matchCopy = match;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient match:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 match:matchCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 match:matchCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)detectPresenceWithOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient detectPresenceWithOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke;
      v25[3] = &unk_1E8303EA0;
      v12 = replyCopy;
      v26 = v12;
      v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v25];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_2;
      v23[3] = &unk_1E8303EC8;
      v24 = v12;
      [v13 detectPresenceWithOptions:optionsCopy async:1 client:clientID replyBlock:v23];

      v15 = v26;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_3;
      v21[3] = &unk_1E8303EA0;
      v16 = replyCopy;
      v22 = v16;
      v17 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_4;
      v19[3] = &unk_1E8303EC8;
      v20 = v16;
      [v17 detectPresenceWithOptions:optionsCopy async:0 client:clientID2 replyBlock:v19];

      v15 = v22;
    }
  }
}

uint64_t __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)updateIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  identityCopy = identity;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient updateIdentity:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 updateIdentity:identityCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 updateIdentity:identityCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)removeIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  identityCopy = identity;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient removeIdentity:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 removeIdentity:identityCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 removeIdentity:identityCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)getIdentityFromUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getIdentityFromUUID:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_316];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__BiometricKitXPCClient_getIdentityFromUUID___block_invoke_2;
    v11[3] = &unk_1E8303EF0;
    v11[4] = &v12;
    [v7 getIdentityFromUUID:dCopy client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)identities:(id)identities
{
  identitiesCopy = identities;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient identities:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_319];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__BiometricKitXPCClient_identities___block_invoke_2;
    v11[3] = &unk_1E8303F18;
    v11[4] = &v12;
    [v7 identities:identitiesCopy client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (int)enrollContinue
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient enrollContinue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__BiometricKitXPCClient_enrollContinue__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__BiometricKitXPCClient_enrollContinue__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 enrollContinue:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __39__BiometricKitXPCClient_enrollContinue__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)pullAlignmentData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullAlignmentData];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_327];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__BiometricKitXPCClient_pullAlignmentData__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullAlignmentData:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullMatchPolicyInfoData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullMatchPolicyInfoData];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_330];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__BiometricKitXPCClient_pullMatchPolicyInfoData__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullMatchPolicyInfoData:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)getNodeTopologyForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getNodeTopologyForIdentity:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_332];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__BiometricKitXPCClient_getNodeTopologyForIdentity___block_invoke_2;
    v11[3] = &unk_1E8303F90;
    v11[4] = &v12;
    [v7 getNodeTopologyForIdentity:identityCopy client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)getSystemProtectedConfiguration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getSystemProtectedConfiguration];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_337];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__BiometricKitXPCClient_getSystemProtectedConfiguration__block_invoke_2;
    v9[3] = &unk_1E8303FB8;
    v9[4] = &v10;
    [v5 getSystemProtectedConfiguration:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)setSystemProtectedConfiguration:(id)configuration withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  configurationCopy = configuration;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient setSystemProtectedConfiguration:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 setSystemProtectedConfiguration:configurationCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 setSystemProtectedConfiguration:configurationCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __52__BiometricKitXPCClient_getBioLockoutState_forUser___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __52__BiometricKitXPCClient_getBioLockoutState_forUser___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

uint64_t __53__BiometricKitXPCClient_getExpressModeState_forUser___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __53__BiometricKitXPCClient_getExpressModeState_forUser___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

- (int64_t)getProvisioningState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getProvisioningState];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_341];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__BiometricKitXPCClient_getProvisioningState__block_invoke_2;
    v9[3] = &unk_1E8303F40;
    v9[4] = &v10;
    [v5 getProvisioningState:clientID replyBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int)dropUnlockToken
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient dropUnlockToken];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__BiometricKitXPCClient_dropUnlockToken__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__BiometricKitXPCClient_dropUnlockToken__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 dropUnlockToken:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __40__BiometricKitXPCClient_dropUnlockToken__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __60__BiometricKitXPCClient_forceBioLockoutForUser_withOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)registerDSID:(unint64_t)d withOptions:(id)options
{
  optionsCopy = options;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v17 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient registerDSID:withOptions:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__BiometricKitXPCClient_registerDSID_withOptions___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v16;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__BiometricKitXPCClient_registerDSID_withOptions___block_invoke_2;
    v14[3] = &unk_1E8303F68;
    v14[4] = &v16;
    [v10 registerDSID:d options:optionsCopy client:clientID replyBlock:v14];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __50__BiometricKitXPCClient_registerDSID_withOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)resetAppleConnectCounter
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient resetAppleConnectCounter];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__BiometricKitXPCClient_resetAppleConnectCounter__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__BiometricKitXPCClient_resetAppleConnectCounter__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 resetAppleConnectCounter:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __49__BiometricKitXPCClient_resetAppleConnectCounter__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)registerStoreToken:(id)token
{
  tokenCopy = token;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient registerStoreToken:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__BiometricKitXPCClient_registerStoreToken___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__BiometricKitXPCClient_registerStoreToken___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 registerStoreToken:tokenCopy client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);

  return v10;
}

uint64_t __44__BiometricKitXPCClient_registerStoreToken___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getCountersignedStoreToken:(id *)token
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v21 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getCountersignedStoreToken:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__BiometricKitXPCClient_getCountersignedStoreToken___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v20;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__BiometricKitXPCClient_getCountersignedStoreToken___block_invoke_2;
    v12[3] = &unk_1E8304008;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getCountersignedStoreToken:clientID replyBlock:v12];

    if (token)
    {
      *token = v15[5];
    }
  }

  v10 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __52__BiometricKitXPCClient_getCountersignedStoreToken___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __68__BiometricKitXPCClient_diagnostics_withOptions_passed_withDetails___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __68__BiometricKitXPCClient_diagnostics_withOptions_passed_withDetails___block_invoke_2(void *a1, int a2, char a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

- (void)timestampEvent:(unint64_t)event absoluteTime:(unint64_t)time
{
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient timestampEvent:absoluteTime:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v8 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_350];
    [v8 timestampEvent:event absoluteTime:time client:-[BiometricKitXPCClient clientID](self replyBlock:{"clientID"), &__block_literal_global_352}];
  }
}

- (int)setUserDSID:(unint64_t)d withOptions:(id)options
{
  optionsCopy = options;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v17 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient setUserDSID:withOptions:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__BiometricKitXPCClient_setUserDSID_withOptions___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v16;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__BiometricKitXPCClient_setUserDSID_withOptions___block_invoke_2;
    v14[3] = &unk_1E8303F68;
    v14[4] = &v16;
    [v10 setUserDSID:d options:optionsCopy client:clientID replyBlock:v14];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __49__BiometricKitXPCClient_setUserDSID_withOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int64_t)getSensorCalibrationStatus
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getSensorCalibrationStatus];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_354];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__BiometricKitXPCClient_getSensorCalibrationStatus__block_invoke_2;
    v9[3] = &unk_1E8303F40;
    v9[4] = &v10;
    [v5 getSensorCalibrationStatus:clientID replyBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getCalibrationDataInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getCalibrationDataInfo];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_356];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__BiometricKitXPCClient_getCalibrationDataInfo__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 getCalibrationDataInfo:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)getSensorInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getSensorInfo];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_358];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__BiometricKitXPCClient_getSensorInfo__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 getSensorInfo:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullCalibrationData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullCalibrationData];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_360];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__BiometricKitXPCClient_pullCalibrationData__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullCalibrationData:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullCaptureBuffer
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullCaptureBuffer];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_362];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__BiometricKitXPCClient_pullCaptureBuffer__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullCaptureBuffer:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __75__BiometricKitXPCClient_pullDebugImageData_rotated_imageWidth_imageHeight___block_invoke_2(void *a1, void *a2, int a3, int a4)
{
  v10 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a1[5];
  if (v8)
  {
    *v8 = a3;
  }

  v9 = a1[6];
  if (v9)
  {
    *v9 = a4;
  }
}

void __45__BiometricKitXPCClient_getLogs_withDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)fileRadarWithLogs:(id)logs withDescription:(id)description
{
  logsCopy = logs;
  descriptionCopy = description;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient fileRadarWithLogs:withDescription:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_374];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__BiometricKitXPCClient_fileRadarWithLogs_withDescription___block_invoke_2;
    v14[3] = &unk_1E83040D0;
    v14[4] = &v15;
    [v10 fileRadarWithLogs:logsCopy description:descriptionCopy client:clientID replyBlock:v14];
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)isFingerOn
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient isFingerOn];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_377];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__BiometricKitXPCClient_isFingerOn__block_invoke_2;
    v9[3] = &unk_1E83040D0;
    v9[4] = &v10;
    [v5 isFingerOn:clientID replyBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __46__BiometricKitXPCClient_enableBackgroundFdet___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)isAriadneSignpostsEnabled
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient isAriadneSignpostsEnabled];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_379];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__BiometricKitXPCClient_isAriadneSignpostsEnabled__block_invoke_2;
    v9[3] = &unk_1E83040D0;
    v9[4] = &v10;
    [v5 isAriadneSignpostsEnabled:clientID replyBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isXARTAvailable
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient isXARTAvailable];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_381];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__BiometricKitXPCClient_isXARTAvailable__block_invoke_2;
    v9[3] = &unk_1E83040D0;
    v9[4] = &v10;
    [v5 isXARTAvailable:clientID replyBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int64_t)getDeviceState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getDeviceState];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_383];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__BiometricKitXPCClient_getDeviceState__block_invoke_2;
    v9[3] = &unk_1E8303F40;
    v9[4] = &v10;
    [v5 getDeviceState:clientID replyBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int)startNewMatchAttempt
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient startNewMatchAttempt];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__BiometricKitXPCClient_startNewMatchAttempt__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__BiometricKitXPCClient_startNewMatchAttempt__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 startNewMatchAttempt:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __45__BiometricKitXPCClient_startNewMatchAttempt__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __57__BiometricKitXPCClient_getBiometryAvailability_forUser___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __57__BiometricKitXPCClient_getBiometryAvailability_forUser___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (int)completeEnrollment
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient completeEnrollment];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__BiometricKitXPCClient_completeEnrollment__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__BiometricKitXPCClient_completeEnrollment__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 completeEnrollment:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __43__BiometricKitXPCClient_completeEnrollment__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __43__BiometricKitXPCClient_suspendEnrollment___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)setTemplate:(id)template forIdentity:(id)identity
{
  templateCopy = template;
  identityCopy = identity;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v18 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient setTemplate:forIdentity:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__BiometricKitXPCClient_setTemplate_forIdentity___block_invoke;
    v16[3] = &unk_1E8303DE8;
    v16[4] = &v17;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__BiometricKitXPCClient_setTemplate_forIdentity___block_invoke_2;
    v15[3] = &unk_1E8303F68;
    v15[4] = &v17;
    [v11 setTemplate:templateCopy forIdentity:identityCopy client:clientID replyBlock:v15];
  }

  v13 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);

  return v13;
}

uint64_t __49__BiometricKitXPCClient_setTemplate_forIdentity___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)isPeriocularEnrollmentSupported:(BOOL *)supported
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (supported)
  {
    initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
    *(v15 + 6) = initializeConnection;
    if (initializeConnection)
    {
      [BiometricKitXPCClient isPeriocularEnrollmentSupported:];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_connection);
      xpcConnection = [WeakRetained xpcConnection];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke;
      v13[3] = &unk_1E8303DE8;
      v13[4] = &v14;
      v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke_2;
      v12[3] = &unk_1E83040F8;
      v12[4] = &v14;
      v12[5] = supported;
      [v8 isPeriocularEnrollmentSupported:clientID replyBlock:v12];
    }
  }

  else
  {
    [BiometricKitXPCClient isPeriocularEnrollmentSupported:];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke_2(uint64_t result, int a2, char a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

uint64_t __55__BiometricKitXPCClient_getPeriocularMatchState_state___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __55__BiometricKitXPCClient_getPeriocularMatchState_state___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

- (void)removePeriocularTemplatesWithOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient removePeriocularTemplatesWithOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke;
      v25[3] = &unk_1E8303EA0;
      v12 = replyCopy;
      v26 = v12;
      v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v25];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_2;
      v23[3] = &unk_1E8303EC8;
      v24 = v12;
      [v13 removePeriocularTemplatesWithOptions:optionsCopy async:1 client:clientID replyBlock:v23];

      v15 = v26;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_3;
      v21[3] = &unk_1E8303EA0;
      v16 = replyCopy;
      v22 = v16;
      v17 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_4;
      v19[3] = &unk_1E8303EC8;
      v20 = v16;
      [v17 removePeriocularTemplatesWithOptions:optionsCopy async:0 client:clientID2 replyBlock:v19];

      v15 = v22;
    }
  }
}

uint64_t __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __75__BiometricKitXPCClient_queryIdentityMigrationFailureForUser_failed_clear___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __75__BiometricKitXPCClient_queryIdentityMigrationFailureForUser_failed_clear___block_invoke_2(uint64_t result, int a2, char a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (void)logEventOrCode:(unint64_t)code
{
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient logEventOrCode:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_387];
    [v6 logEventOrCode:code];
  }
}

uint64_t __46__BiometricKitXPCClient_enableMatchAutoRetry___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __46__BiometricKitXPCClient_pauseFaceDetectTimer___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getLastMatchEvent:(id *)event
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v21 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getLastMatchEvent:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v20;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke_2;
    v12[3] = &unk_1E8304120;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getLastMatchEvent:clientID replyBlock:v12];

    if (event)
    {
      *event = v15[5];
    }
  }

  v10 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    a3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
}

- (int)getDeviceHardwareState:(unsigned int *)state
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v19 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getDeviceHardwareState:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v18;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke_2;
    v12[3] = &unk_1E8304148;
    v12[4] = &v18;
    v12[5] = &v14;
    [v8 getDeviceHardwareState:clientID replyBlock:v12];

    if (state)
    {
      *state = *(v15 + 6);
    }
  }

  v10 = *(v19 + 6);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

uint64_t __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke_2(uint64_t result, int a2, int a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (*(*(*(result + 32) + 8) + 24))
  {
    a3 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (int)listAccessories:(id *)accessories
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v21 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient listAccessories:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__BiometricKitXPCClient_listAccessories___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v20;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__BiometricKitXPCClient_listAccessories___block_invoke_2;
    v12[3] = &unk_1E8304170;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 listAccessories:clientID replyBlock:v12];

    if (accessories)
    {
      *accessories = v15[5];
    }
  }

  v10 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __41__BiometricKitXPCClient_listAccessories___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __41__BiometricKitXPCClient_listAccessories___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    a3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
}

uint64_t __69__BiometricKitXPCClient_getFreeIdentityCount_forUser_accessoryGroup___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __69__BiometricKitXPCClient_getFreeIdentityCount_forUser_accessoryGroup___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (*(*(*(result + 32) + 8) + 24))
  {
    a3 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (int)getPreferencesValue:(id *)value forKey:(id)key
{
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v23 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getPreferencesValue:forKey:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__BiometricKitXPCClient_getPreferencesValue_forKey___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v22;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__BiometricKitXPCClient_getPreferencesValue_forKey___block_invoke_2;
    v14[3] = &unk_1E83041C0;
    v14[4] = &v22;
    v14[5] = &v16;
    [v10 getPreferencesValueForKey:keyCopy client:clientID replyBlock:v14];

    if (*(v23 + 6))
    {
      [BiometricKitXPCClient getPreferencesValue:forKey:];
    }

    else
    {
      *value = v17[5];
    }
  }

  v12 = *(v23 + 6);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v12;
}

uint64_t __52__BiometricKitXPCClient_getPreferencesValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)setPreferencesValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v18 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient setPreferencesValue:forKey:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__BiometricKitXPCClient_setPreferencesValue_forKey___block_invoke;
    v16[3] = &unk_1E8303DE8;
    v16[4] = &v17;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__BiometricKitXPCClient_setPreferencesValue_forKey___block_invoke_2;
    v15[3] = &unk_1E8303F68;
    v15[4] = &v17;
    [v11 setPreferencesValue:valueCopy forKey:keyCopy client:clientID replyBlock:v15];
  }

  v13 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);

  return v13;
}

uint64_t __52__BiometricKitXPCClient_setPreferencesValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)prewarmCamera:(unint64_t)camera
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient prewarmCamera:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__BiometricKitXPCClient_prewarmCamera___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__BiometricKitXPCClient_prewarmCamera___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 prewarmCamera:camera client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t __39__BiometricKitXPCClient_prewarmCamera___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)initWithDeviceType:clientType:.cold.1()
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

- (void)initializeConnection
{
  v13 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v12);
  }

  *a3 = a2;
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)clientUUID
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

- (void)connect
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *(*self + 24) = 1;
  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)enroll:forUser:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)match:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)detectPresenceWithOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)updateIdentity:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)removeIdentity:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)removeAllIdentitiesForUser:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getIdentityFromUUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)identities:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getMaxIdentityCount:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getFreeIdentityCount:forUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enrollContinue
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullAlignmentData
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullMatchPolicyInfoData
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getNodeTopologyForIdentity:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getProtectedConfigurationForUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getSystemProtectedConfiguration
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setProtectedConfiguration:forUser:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)setSystemProtectedConfiguration:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getBioLockoutState:forUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getBioLockoutState:forUser:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getExpressModeState:forUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getExpressModeState:forUser:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getProvisioningState
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dropUnlockToken
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)forceBioLockoutForUser:withOptions:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerDSID:withOptions:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetAppleConnectCounter
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerStoreToken:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCountersignedStoreToken:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getIdentitiesDatabaseUUIDForUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getIdentitiesDatabaseHashForUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)diagnostics:withOptions:passed:withDetails:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)timestampEvent:absoluteTime:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setUserDSID:withOptions:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getSensorCalibrationStatus
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCalibrationDataInfo
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getSensorInfo
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullCalibrationData
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullCaptureBuffer
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullDebugImageData:rotated:imageWidth:imageHeight:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setDebugImages:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getLogs:withDetails:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fileRadarWithLogs:withDescription:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isFingerOn
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableBackgroundFdet:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isAriadneSignpostsEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isXARTAvailable
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getDeviceState
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startNewMatchAttempt
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getBiometryAvailability:forUser:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)completeEnrollment
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)suspendEnrollment:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setTemplate:forIdentity:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isPeriocularEnrollmentSupported:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isPeriocularEnrollmentSupported:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getPeriocularMatchState:state:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getPeriocularMatchState:state:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)removePeriocularTemplatesWithOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logEventOrCode:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableMatchAutoRetry:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pauseFaceDetectTimer:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getLastMatchEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getDeviceHardwareState:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)listAccessories:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getPreferencesValue:forKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getPreferencesValue:forKey:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPreferencesValue:forKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)prewarmCamera:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end
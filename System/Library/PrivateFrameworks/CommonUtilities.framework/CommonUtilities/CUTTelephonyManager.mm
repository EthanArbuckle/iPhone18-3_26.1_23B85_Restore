@interface CUTTelephonyManager
+ (id)sharedInstance;
- (BOOL)disableFastDormancy;
- (CUTTelephonyManager)init;
- (void)__adjustFastDormancyTokens;
- (void)_adjustFastDormancyTokens;
- (void)_setFastDormancySuspended:(BOOL)a3;
- (void)addFastDormancyDisableToken:(id)a3;
- (void)dealloc;
- (void)removeFastDormancyDisableToken:(id)a3;
@end

@implementation CUTTelephonyManager

+ (id)sharedInstance
{
  if (qword_1EB7AAE18 != -1)
  {
    sub_1B2331A14();
  }

  if (qword_1EB7AAE28 != -1)
  {
    sub_1B2331A28();
  }

  if (qword_1EB7AAE20 != -1)
  {
    sub_1B2322CCC();
  }

  v2 = qword_1EB7AAE10;

  return v2;
}

- (void)_adjustFastDormancyTokens
{
  [(NSRecursiveLock *)self->_lock lock];
  if ((byte_1EB7AAE08 & 1) == 0)
  {
    byte_1EB7AAE08 = 1;
    v3 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B232A140;
    block[3] = &unk_1E7B20EB0;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (CUTTelephonyManager)init
{
  v7.receiver = self;
  v7.super_class = CUTTelephonyManager;
  v2 = [(CUTTelephonyManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = +[CUTWiFiManager sharedInstance];
    [v5 addDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(NSRecursiveLock *)self->_lock lock];
  [(NSMutableSet *)self->_disableFastDormancyTokens removeAllObjects];
  [(CUTTelephonyManager *)self _adjustFastDormancyTokens];
  [(NSRecursiveLock *)self->_lock unlock];
  v3.receiver = self;
  v3.super_class = CUTTelephonyManager;
  [(CUTTelephonyManager *)&v3 dealloc];
}

- (void)_setFastDormancySuspended:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  if (self->_serverConnection)
  {
    v5 = 0;
  }

  else
  {
    v6 = _CTServerConnectionCreateWithIdentifier();
    self->_serverConnection = v6;
    v5 = v6 == 0;
  }

  suspendDormancyAssertion = self->_suspendDormancyAssertion;
  if (v3)
  {
    if (suspendDormancyAssertion == 0 && !v5)
    {
      MainBundle = CFBundleGetMainBundle();
      if (MainBundle)
      {
        v9 = CFBundleGetIdentifier(MainBundle);
      }

      else
      {
        v9 = 0;
      }

      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.cuttelephonymanager", v9];
      serverConnection = self->_serverConnection;
      v12 = _CTServerConnectionDormancySuspendAssertionCreate();
      v13 = v12;
      v14 = HIDWORD(v12);
      v15 = +[CUTLog network];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          *buf = 67109376;
          *v24 = v13;
          *&v24[4] = 1024;
          *&v24[6] = v14;
          v19 = "Could not suspend fast dormancy: (%i, %i).";
          v20 = v15;
          v21 = 14;
          goto LABEL_17;
        }
      }

      else if (v16)
      {
        v18 = self->_suspendDormancyAssertion;
        v17 = self->_serverConnection;
        *buf = 134218498;
        *v24 = v17;
        *&v24[8] = 2112;
        v25 = v10;
        v26 = 2048;
        v27 = v18;
        v19 = "Fast dormancy suspended with ctServerConnection %p, name %@, assertion %p";
        v20 = v15;
        v21 = 32;
LABEL_17:
        _os_log_impl(&dword_1B2321000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }

LABEL_19:
    }
  }

  else if (suspendDormancyAssertion)
  {
    CFRelease(suspendDormancyAssertion);
    self->_suspendDormancyAssertion = 0;
    v9 = +[CUTLog network];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "Fast dormancy suspension removed", buf, 2u);
    }

    goto LABEL_19;
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)__adjustFastDormancyTokens
{
  [(CUTTelephonyManager *)self disableFastDormancy];

  MEMORY[0x1EEE66B58](self, sel__setFastDormancySuspended_);
}

- (BOOL)disableFastDormancy
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableSet *)self->_disableFastDormancyTokens count]!= 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)addFastDormancyDisableToken:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(NSRecursiveLock *)self->_lock lock];
    disableFastDormancyTokens = self->_disableFastDormancyTokens;
    if (!disableFastDormancyTokens)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_disableFastDormancyTokens;
      self->_disableFastDormancyTokens = v6;

      disableFastDormancyTokens = self->_disableFastDormancyTokens;
    }

    [(NSMutableSet *)disableFastDormancyTokens addObject:v4];
    v8 = +[CUTLog network];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_disableFastDormancyTokens;
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, "Client token: %@ being added to fast dormancy clients (%@)", &v11, 0x16u);
    }

    [(NSRecursiveLock *)self->_lock unlock];
    [(CUTTelephonyManager *)self _adjustFastDormancyTokens];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeFastDormancyDisableToken:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[CUTLog network];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      disableFastDormancyTokens = self->_disableFastDormancyTokens;
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = disableFastDormancyTokens;
      _os_log_impl(&dword_1B2321000, v5, OS_LOG_TYPE_DEFAULT, "Client token: %@ being removed from fast dormancy clients (%@)", &v8, 0x16u);
    }

    [(NSRecursiveLock *)self->_lock lock];
    [(NSMutableSet *)self->_disableFastDormancyTokens removeObject:v4];
    [(NSRecursiveLock *)self->_lock unlock];
    [(CUTTelephonyManager *)self _adjustFastDormancyTokens];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
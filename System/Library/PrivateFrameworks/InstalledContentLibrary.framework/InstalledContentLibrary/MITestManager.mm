@interface MITestManager
+ (id)sharedInstance;
- (BOOL)_onQueue_clearIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4;
- (BOOL)_onQueue_setIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4;
- (BOOL)clearIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4;
- (BOOL)isRunningInTestMode:(BOOL *)a3 outError:(id *)a4;
- (BOOL)setIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4;
- (BOOL)testFlagsAreSet:(unint64_t)a3;
- (MITestManager)init;
- (id)_testModeSentinelURL;
- (void)_onQueue_clearTestFlags:(unint64_t)a3;
- (void)_onQueue_setTestFlags:(unint64_t)a3;
- (void)clearTestFlags:(unint64_t)a3;
- (void)setTestFlags:(unint64_t)a3;
@end

@implementation MITestManager

- (MITestManager)init
{
  v7.receiver = self;
  v7.super_class = MITestManager;
  v2 = [(MITestManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installd.testMode", v3);
    [(MITestManager *)v2 setTestModeQueue:v4];

    v5 = objc_opt_new();
    [(MITestManager *)v2 setSourceForPID:v5];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MITestManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __31__MITestManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (id)_testModeSentinelURL
{
  v2 = +[MIDaemonConfiguration sharedInstance];
  v3 = [v2 dataDirectory];
  v4 = [v3 URLByAppendingPathComponent:@"sMITestMode" isDirectory:0];

  return v4;
}

- (BOOL)isRunningInTestMode:(BOOL *)a3 outError:(id *)a4
{
  v6 = [MIDaemonConfiguration sharedInstance:a3];
  v7 = [v6 hasInternalContent];

  if (v7)
  {
    v8 = [(MITestManager *)self _testModeSentinelURL];
    v9 = +[MIFileManager defaultManager];
    v10 = [v9 itemExistsAtURL:v8];

    if (!a3)
    {
      return 1;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v10;
  }

  return 1;
}

- (BOOL)_onQueue_setIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4
{
  v5 = *&a3;
  v7 = [(MITestManager *)self testModeQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MITestManager *)self _testModeSentinelURL];
  v29 = 0;
  v9 = [&stru_1F28762E8 writeToURL:v8 atomically:1 encoding:4 error:&v29];
  v10 = v29;
  if (v9)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v20 = [v8 path];
      MOLogWrite();
    }

    v11 = [(MITestManager *)self sourceForPID];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      objc_initWeak(&location, self);
      v14 = [(MITestManager *)self testModeQueue];
      v15 = dispatch_source_create(MEMORY[0x1E69E96F0], v5, 0x80000000uLL, v14);

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __76__MITestManager__onQueue_setIsRunningInTestModeForProcessWithPID_withError___block_invoke;
      handler[3] = &unk_1E7AE2078;
      objc_copyWeak(&v26, &location);
      v27 = v5;
      dispatch_source_set_event_handler(v15, handler);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __76__MITestManager__onQueue_setIsRunningInTestModeForProcessWithPID_withError___block_invoke_2;
      v22[3] = &unk_1E7AE2078;
      objc_copyWeak(&v23, &location);
      v24 = v5;
      dispatch_source_set_cancel_handler(v15, v22);
      v16 = [(MITestManager *)self sourceForPID];
      v17 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      [v16 setObject:v15 forKeyedSubscript:v17];

      dispatch_activate(v15);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v26);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v21 = [v8 path];
      MOLogWrite();
    }

    if (a4)
    {
      v18 = v10;
      *a4 = v10;
    }
  }

  return v9;
}

void __76__MITestManager__onQueue_setIsRunningInTestModeForProcessWithPID_withError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v6 = *(a1 + 40);
      MOLogWrite();
    }

    v3 = *(a1 + 40);
    v7 = 0;
    v4 = [WeakRetained _onQueue_clearIsRunningInTestModeForProcessWithPID:v3 withError:{&v7, v6}];
    v5 = v7;
    if ((v4 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }
  }
}

void __76__MITestManager__onQueue_setIsRunningInTestModeForProcessWithPID_withError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained sourceForPID];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
    [v3 setObject:0 forKeyedSubscript:v4];

    WeakRetained = v5;
  }
}

- (BOOL)setIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 hasInternalContent];

  if (v8)
  {
    v10 = [(MITestManager *)self testModeQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__MITestManager_setIsRunningInTestModeForProcessWithPID_withError___block_invoke;
    v16[3] = &unk_1E7AE20A0;
    v16[4] = self;
    v16[5] = &v24;
    v17 = a3;
    v16[6] = &v18;
    dispatch_sync(v10, v16);

    v11 = v25;
    if (*(v25 + 24) == 1)
    {
      *(v25 + 24) = 1;
    }
  }

  else
  {
    v12 = _CreateError("[MITestManager setIsRunningInTestModeForProcessWithPID:withError:]", 151, @"MIInstallerErrorDomain", 157, 0, 0, @"Missing required internal content variant", v9, v16[0]);
    v13 = v19[5];
    v19[5] = v12;

    v11 = v25;
  }

  v14 = *(v11 + 24);
  if (a4 && (v11[3] & 1) == 0)
  {
    *a4 = v19[5];
    v14 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v14 & 1;
}

void __67__MITestManager_setIsRunningInTestModeForProcessWithPID_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _onQueue_setIsRunningInTestModeForProcessWithPID:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (BOOL)_onQueue_clearIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4
{
  v5 = *&a3;
  v7 = [(MITestManager *)self testModeQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MITestManager *)self sourceForPID];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = +[MIFileManager defaultManager];
  v12 = [(MITestManager *)self _testModeSentinelURL];
  v19 = 0;
  v13 = [v11 removeItemAtURL:v12 error:&v19];
  v14 = v19;
  if (v13)
  {
    [(MITestManager *)self _onQueue_clearTestFlags:-1];
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v18 = [v12 path];
    MOLogWrite();
  }

  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  if (a4)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = v14;
    *a4 = v14;
  }

  return v13;
}

- (BOOL)clearIsRunningInTestModeForProcessWithPID:(int)a3 withError:(id *)a4
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 hasInternalContent];

  if (v8)
  {
    v10 = [(MITestManager *)self testModeQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__MITestManager_clearIsRunningInTestModeForProcessWithPID_withError___block_invoke;
    v15[3] = &unk_1E7AE20A0;
    v15[4] = self;
    v15[5] = &v17;
    v16 = a3;
    v15[6] = &v21;
    dispatch_sync(v10, v15);

    v11 = *(v18 + 24);
    if (v11 == 1)
    {
      *(v18 + 24) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = _CreateError("[MITestManager clearIsRunningInTestModeForProcessWithPID:withError:]", 213, @"MIInstallerErrorDomain", 157, 0, 0, @"Missing required internal content variant", v9, v15[0]);
    v13 = v22[5];
    v22[5] = v12;

    LOBYTE(v11) = *(v18 + 24);
  }

  if (a4 && (v11 & 1) == 0)
  {
    *a4 = v22[5];
    LOBYTE(v11) = *(v18 + 24);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v11 & 1;
}

void __69__MITestManager_clearIsRunningInTestModeForProcessWithPID_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _onQueue_clearIsRunningInTestModeForProcessWithPID:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (void)_onQueue_setTestFlags:(unint64_t)a3
{
  v5 = [(MITestManager *)self testModeQueue];
  dispatch_assert_queue_V2(v5);

  testFlags = self->_testFlags;
  self->_testFlags = testFlags | a3;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

  if ((a3 & 1) != 0 && (testFlags & 1) == 0)
  {

    MIReduceAvailableMemoryForValidationForTesting();
  }
}

- (void)setTestFlags:(unint64_t)a3
{
  v5 = [(MITestManager *)self testModeQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MITestManager_setTestFlags___block_invoke;
  v6[3] = &unk_1E7AE20C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (void)_onQueue_clearTestFlags:(unint64_t)a3
{
  v5 = [(MITestManager *)self testModeQueue];
  dispatch_assert_queue_V2(v5);

  testFlags = self->_testFlags;
  self->_testFlags = testFlags & ~a3;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

  if (a3 & 1) != 0 && (testFlags)
  {

    MIRestoreAvailableMemoryForValidationAfterTesting();
  }
}

- (void)clearTestFlags:(unint64_t)a3
{
  v5 = [(MITestManager *)self testModeQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__MITestManager_clearTestFlags___block_invoke;
  v6[3] = &unk_1E7AE20C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

- (BOOL)testFlagsAreSet:(unint64_t)a3
{
  v4 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(MITestManager *)self testModeQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MITestManager_testFlagsAreSet___block_invoke;
  block[3] = &unk_1E7AE20F0;
  block[5] = &v8;
  block[6] = a3;
  block[4] = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __33__MITestManager_testFlagsAreSet___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = [*(a1 + 32) testFlags];
  *(*(*(a1 + 40) + 8) + 24) = v2 == (*(a1 + 48) & result);
  return result;
}

@end
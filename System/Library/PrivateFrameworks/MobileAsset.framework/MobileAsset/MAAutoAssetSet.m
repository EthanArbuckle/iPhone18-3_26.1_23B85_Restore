@interface MAAutoAssetSet
+ (id)_privateStateQueue;
+ (id)defaultDispatchQueue;
+ (id)endAtomicLocksSync:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8;
+ (id)frameworkInstanceUUID;
+ (void)endAtomicLocks:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8 completion:(id)a9;
+ (void)frameworkInstanceSetLogDomain;
- (MAAutoAssetSet)initWithCoder:(id)a3;
- (id)_endAtomicLocksSync:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8;
- (id)_newProxyObjectForSetProgressBlock:(id)a3 withLogMessage:(id)a4;
- (id)_readLockedSetStatusFromSharedLockFile:(id)a3 error:(id *)a4;
- (id)alterEntriesRepresentingAtomicSync:(id)a3 toBeComprisedOfEntries:(id)a4 withNeedPolicy:(id)a5;
- (id)assetSetForStagingSync:(id)a3 asEntriesWhenTargeting:(id)a4;
- (id)checkAtomicSync:(id)a3 forAtomicInstance:(id)a4 awaitingDownload:(BOOL)a5 withNeedPolicy:(id)a6 withTimeout:(int64_t)a7 discoveredAtomicEntries:(id *)a8 error:(id *)a9 reportingProgress:(id)a10;
- (id)continueAtomicLockSync:(id)a3 ofAtomicInstance:(id)a4 withNeedPolicy:(id)a5;
- (id)currentSetStatusSync:(id *)a3;
- (id)endAtomicLockSync:(id)a3 ofAtomicInstance:(id)a4;
- (id)formSubAtomicInstanceSync:(id)a3 fromAtomicInstance:(id)a4 toBeComprisedOfEntries:(id)a5 error:(id *)a6;
- (id)initLockerUsingClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 error:(id *)a5;
- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 forAssetSetIdentifier:(id)a5 asShortTermLocker:(BOOL)a6 comprisedOfEntries:(id)a7 usingDesiredPolicyCategory:(id)a8 completingFromQueue:(id)a9 error:(id *)a10;
- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 forAssetSetIdentifier:(id)a5 comprisedOfEntries:(id)a6 error:(id *)a7;
- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 forAssetSetIdentifier:(id)a5 comprisedOfEntries:(id)a6 usingDesiredPolicyCategory:(id)a7 error:(id *)a8;
- (id)lockAtomicSync:(id)a3 forAtomicInstance:(id)a4 withNeedPolicy:(id)a5 withTimeout:(int64_t)a6 lockedAtomicEntries:(id *)a7 error:(id *)a8 reportingProgress:(id)a9;
- (id)mapLockedAtomicEntrySync:(id)a3 forAtomicInstance:(id)a4 mappingSelector:(id)a5 mappedSelector:(id *)a6;
- (id)needForAtomicSync:(id)a3 withNeedPolicy:(id)a4;
- (id)summary;
- (int)_shortTermOpenSharedLockFile:(id)a3 lockingAtomicInstance:(id)a4 forLockReason:(id)a5 verifyingLocalContentURLs:(BOOL)a6 openingFilename:(id)a7 providingLockedSetStatus:(id *)a8 sharedLockError:(id *)a9;
- (void)_alterEntriesRepresentingAtomic:(id)a3 toBeComprisedOfEntries:(id)a4 withNeedPolicy:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7;
- (void)_assetSetForStaging:(id)a3 asEntriesWhenTargeting:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_autoSetAtomicOperationStatusProgress:(id)a3 withLogMessage:(id)a4 progressBlock:(id)a5;
- (void)_checkAtomic:(id)a3 forAtomicInstance:(id)a4 awaitingDownload:(BOOL)a5 withNeedPolicy:(id)a6 withTimeout:(int64_t)a7 reportingProgress:(id)a8 isSynchronous:(BOOL)a9 completion:(id)a10;
- (void)_closeAndRemoveShortTermLock:(id)a3 forShortTermLock:(id)a4;
- (void)_continueAtomicLock:(id)a3 ofAtomicInstance:(id)a4 withNeedPolicy:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7;
- (void)_eliminateAtomic:(id)a3 awaitingUnlocked:(BOOL)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_endAtomicLocks:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8 isSynchronous:(BOOL)a9 completion:(id)a10;
- (void)_failedCheckAtomic:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9;
- (void)_failedCurrentSetStatus:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9;
- (void)_failedFormSubAtomicInstance:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_failedLockAtomic:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9;
- (void)_failedMapLockedAtomicEntry:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9;
- (void)_failedOperation:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9;
- (void)_formSubAtomicInstance:(id)a3 fromAtomicInstance:(id)a4 toBeComprisedOfEntries:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7;
- (void)_lockAtomic:(id)a3 forAtomicInstance:(id)a4 withNeedPolicy:(id)a5 withTimeout:(int64_t)a6 reportingProgress:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9;
- (void)_needForAtomic:(id)a3 withNeedPolicy:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_shortTermCurrentSetStatusIsSynchronous:(BOOL)a3 completion:(id)a4;
- (void)_shortTermEndAtomicLock:(id)a3 ofAtomicInstance:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_shortTermLockAtomicHelper:(id)a3 forAtomicInstance:(id)a4 performContentValidation:(BOOL)a5 isSynchronous:(BOOL)a6 completionHandler:(id)a7;
- (void)_shortTermLogResult:(id)a3 forLockReason:(id)a4 forAtomicInstance:(id)a5 atomicInstanceFilename:(id)a6 forShortTermLock:(id)a7 withSetStatus:(id)a8 returningError:(id)a9;
- (void)_successCheckAtomic:(id)a3 forAssetSetIdentifier:(id)a4 newerInstanceDiscovered:(id)a5 discoveredAtomicEntries:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_successCurrentSetStatus:(id)a3 forAssetSetIdentifier:(id)a4 withAssetSetStatus:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7;
- (void)_successFormSubAtomicInstance:(id)a3 formedSubAtomicInstance:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_successLockAtomic:(id)a3 forAssetSetIdentifier:(id)a4 lockedAtomicInstance:(id)a5 lockedAtomicEntries:(id)a6 sandboxExtension:(id)a7 sandboxExtensionPath:(id)a8 isSynchronous:(BOOL)a9 completion:(id)a10;
- (void)_successMapLockedAtomicEntry:(id)a3 forAtomicInstance:(id)a4 forMappedSelector:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7;
- (void)_successOperation:(id)a3 forAssetSetIdentifier:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)alterEntriesRepresentingAtomic:(id)a3 toBeComprisedOfEntries:(id)a4 withNeedPolicy:(id)a5 completion:(id)a6;
- (void)assetSetForStaging:(id)a3 asEntriesWhenTargeting:(id)a4 completion:(id)a5;
- (void)connectToServerFrameworkCompletion:(id)a3;
- (void)continueAtomicLock:(id)a3 ofAtomicInstance:(id)a4 withNeedPolicy:(id)a5 completion:(id)a6;
- (void)currentSetStatus:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endAtomicLock:(id)a3 ofAtomicInstance:(id)a4 completion:(id)a5;
- (void)formSubAtomicInstance:(id)a3 fromAtomicInstance:(id)a4 toBeComprisedOfEntries:(id)a5 completion:(id)a6;
- (void)lockAtomic:(id)a3 forAtomicInstance:(id)a4 completion:(id)a5;
- (void)lockAtomic:(id)a3 forAtomicInstance:(id)a4 withNeedPolicy:(id)a5 withTimeout:(int64_t)a6 reportingProgress:(id)a7 completion:(id)a8;
- (void)mapLockedAtomicEntry:(id)a3 forAtomicInstance:(id)a4 mappingSelector:(id)a5 completion:(id)a6;
- (void)needForAtomic:(id)a3 withNeedPolicy:(id)a4 completion:(id)a5;
@end

@implementation MAAutoAssetSet

+ (void)frameworkInstanceSetLogDomain
{
  if (frameworkInstanceSetLogDomain_setFrameworkLogDomainOnce != -1)
  {
    +[MAAutoAssetSet frameworkInstanceSetLogDomain];
  }
}

void __47__MAAutoAssetSet_frameworkInstanceSetLogDomain__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%s", @"com.apple.MAAutoSetClient", getprogname()];
  v0 = [MEMORY[0x1E69D3880] sharedCore];
  [v0 useDomain:v1];
}

+ (id)_privateStateQueue
{
  if (_privateStateQueue_setFrameworkQueueOnce != -1)
  {
    +[MAAutoAssetSet _privateStateQueue];
  }

  v3 = _privateStateQueue_setFrameworkQueue;

  return v3;
}

void __36__MAAutoAssetSet__privateStateQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoassetset.framework" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = _privateStateQueue_setFrameworkQueue;
  _privateStateQueue_setFrameworkQueue = v1;
}

+ (id)frameworkInstanceUUID
{
  if (frameworkInstanceUUID_setFrameworkUUIDOnce != -1)
  {
    +[MAAutoAssetSet frameworkInstanceUUID];
  }

  v3 = frameworkInstanceUUID_setFrameworkUUID;

  return v3;
}

+ (id)defaultDispatchQueue
{
  if (defaultDispatchQueue_setDefaultQueueOnce != -1)
  {
    +[MAAutoAssetSet defaultDispatchQueue];
  }

  v3 = defaultDispatchQueue_setDefaultQueue;

  return v3;
}

- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 forAssetSetIdentifier:(id)a5 comprisedOfEntries:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[MAAutoAssetSet defaultDispatchQueue];
  v17 = [(MAAutoAssetSet *)self initUsingClientDomain:v15 forClientName:v14 forAssetSetIdentifier:v13 asShortTermLocker:0 comprisedOfEntries:v12 usingDesiredPolicyCategory:0 completingFromQueue:v16 error:a7];

  return v17;
}

- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 forAssetSetIdentifier:(id)a5 comprisedOfEntries:(id)a6 usingDesiredPolicyCategory:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[MAAutoAssetSet defaultDispatchQueue];
  v20 = [(MAAutoAssetSet *)self initUsingClientDomain:v18 forClientName:v17 forAssetSetIdentifier:v16 asShortTermLocker:0 comprisedOfEntries:v15 usingDesiredPolicyCategory:v14 completingFromQueue:v19 error:a8];

  return v20;
}

- (id)initLockerUsingClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[MAAutoAssetSet defaultDispatchQueue];
  v11 = [(MAAutoAssetSet *)self initUsingClientDomain:v9 forClientName:@"SHORT_TERM_LOCKER" forAssetSetIdentifier:v8 asShortTermLocker:1 comprisedOfEntries:0 usingDesiredPolicyCategory:0 completingFromQueue:v10 error:a5];

  return v11;
}

- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 forAssetSetIdentifier:(id)a5 asShortTermLocker:(BOOL)a6 comprisedOfEntries:(id)a7 usingDesiredPolicyCategory:(id)a8 completingFromQueue:(id)a9 error:(id *)a10
{
  v12 = a6;
  v17 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a7;
  v27 = a8;
  v18 = a9;
  v31.receiver = self;
  v31.super_class = MAAutoAssetSet;
  v19 = [(MAAutoAssetSet *)&v31 init];
  if (!v19)
  {
    v21 = 0;
    goto LABEL_24;
  }

  +[MAAutoAssetSet frameworkInstanceSetLogDomain];
  objc_storeStrong(&v19->_clientDomainName, a3);
  objc_storeStrong(&v19->_autoAssetSetClientName, a4);
  objc_storeStrong(&v19->_assetSetIdentifier, a5);
  v19->_shortTermLocker = v12;
  objc_storeStrong(&v19->_autoAssetEntries, a7);
  objc_storeStrong(&v19->_updateCategoryDesiredByClient, a8);
  +[MAAutoAssetError mapAutoAssetErrorIndications];
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[MAAutoAssetSet defaultDispatchQueue];
  }

  completionDispatchQueue = v19->_completionDispatchQueue;
  v19->_completionDispatchQueue = v20;

  if (!v12)
  {
    if (v19->_completionDispatchQueue)
    {
      goto LABEL_14;
    }

LABEL_15:
    v23 = @"no completion dispatch queue";
    goto LABEL_17;
  }

  if (__maAutoAssetSetShortTermLockerOnce != -1)
  {
    [MAAutoAssetSet initUsingClientDomain:forClientName:forAssetSetIdentifier:asShortTermLocker:comprisedOfEntries:usingDesiredPolicyCategory:completingFromQueue:error:];
  }

  if (!v19->_completionDispatchQueue)
  {
    goto LABEL_15;
  }

  if (!__maAutoAssetSetShortTermLockerDispatchQueue)
  {
    v23 = @"no SHORT-TERM locker dispatch queue";
    goto LABEL_17;
  }

  if (!__maAutoAssetSetSharedProcessByClientDomainName)
  {
    v23 = @"no SHORT-TERM lock tracking dictionary";
LABEL_17:
    v24 = [MAAutoAssetError buildError:6101 fromOperation:@"auto-set(initUsingClientDomain)" underlyingError:0 withDescription:v23];
    goto LABEL_18;
  }

LABEL_14:
  v24 = 0;
LABEL_18:
  if (a10)
  {
    v25 = v24;
    *a10 = v24;
  }

  if (v24)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

LABEL_24:
  return v21;
}

uint64_t __166__MAAutoAssetSet_initUsingClientDomain_forClientName_forAssetSetIdentifier_asShortTermLocker_comprisedOfEntries_usingDesiredPolicyCategory_completingFromQueue_error___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("process.MobileAssetFramework.shortTermLocker", v0);
  v2 = __maAutoAssetSetShortTermLockerDispatchQueue;
  __maAutoAssetSetShortTermLockerDispatchQueue = v1;

  __maAutoAssetSetSharedProcessByClientDomainName = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (MAAutoAssetSet)initWithCoder:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MAAutoAssetSet;
  v5 = [(MAAutoAssetSet *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v13;

    v5->_shortTermLocker = [v4 decodeBoolForKey:@"shortTermLocker"];
    v15 = [v4 decodeObjectOfClasses:v8 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateCategoryDesiredByClient"];
    updateCategoryDesiredByClient = v5->_updateCategoryDesiredByClient;
    v5->_updateCategoryDesiredByClient = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSet *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MAAutoAssetSet *)self autoAssetSetClientName];
  [v4 encodeObject:v6 forKey:@"autoAssetSetClientName"];

  v7 = [(MAAutoAssetSet *)self assetSetIdentifier];
  [v4 encodeObject:v7 forKey:@"assetSetIdentifier"];

  [v4 encodeBool:-[MAAutoAssetSet shortTermLocker](self forKey:{"shortTermLocker"), @"shortTermLocker"}];
  v8 = [(MAAutoAssetSet *)self autoAssetEntries];
  [v4 encodeObject:v8 forKey:@"autoAssetEntries"];

  v9 = [(MAAutoAssetSet *)self updateCategoryDesiredByClient];
  [v4 encodeObject:v9 forKey:@"updateCategoryDesiredByClient"];
}

- (void)alterEntriesRepresentingAtomic:(id)a3 toBeComprisedOfEntries:(id)a4 withNeedPolicy:(id)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__MAAutoAssetSet_alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_completion___block_invoke;
  v12[3] = &unk_1E74CB200;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(MAAutoAssetSet *)self _alterEntriesRepresentingAtomic:a3 toBeComprisedOfEntries:a4 withNeedPolicy:a5 isSynchronous:0 completion:v12];
}

void __98__MAAutoAssetSet_alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__MAAutoAssetSet_alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __98__MAAutoAssetSet_alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_alterEntriesRepresentingAtomic:(id)a3 toBeComprisedOfEntries:(id)a4 withNeedPolicy:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v16);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_197AD5000, "MAAutoSet:_alterEntriesRepresentingAtomic", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v17, &state);

  if (v15)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke;
      v29[3] = &unk_1E74CB228;
      v29[4] = self;
      v31 = v8;
      v30 = v15;
      v18 = MEMORY[0x19A8EC5D0](v29);
      +[MAAutoAssetSet _privateStateQueue];
      if (v8)
        v19 = {;
        dispatch_sync(v19, v18);
      }

      else
        v19 = {;
        dispatch_async(v19, v18);
      }
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke_2;
      v23[3] = &unk_1E74CB250;
      v23[4] = self;
      v24 = v13;
      v25 = v14;
      v26 = v12;
      v28 = v8;
      v27 = v15;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v23];
    }
  }

  else
  {
    v20 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"alterEntriesRepresentingAtomic"];
      *buf = 138543362;
      v34 = v21;
      _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_ERROR, "MA-auto-set{alterEntriesRepresentingAtomic} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"alterEntriesRepresentingAtomic" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke_4;
    v26[3] = &unk_1E74C97C8;
    v26[4] = *(a1 + 32);
    v27 = v3;
    v29 = *(a1 + 72);
    v28 = *(a1 + 64);
    v5 = MEMORY[0x19A8EC5D0](v26);
    v6 = *(a1 + 72);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = *(a1 + 40);
    v16 = +[MAAutoAssetSet frameworkInstanceUUID];
    v17 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:0 comprisedOfEntries:v15 asEntriesWhenTargeting:0 associatingFrameworkUUID:v16];

    v18 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:*(a1 + 48) reasonDesired:*(a1 + 56) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = +[MAAutoAssetSet frameworkInstanceUUID];
    v21 = [v20 UUIDString];

    [v19 setSafeObject:v17 forKey:@"setInstance"];
    [v19 setSafeObject:v18 forKey:@"setDesire"];
    v22 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:ALTER_ENTRIES_REPRESENTING_ATOMIC" clientID:v21 version:0 message:v19];
    v23 = __maConnectionClient_0;
    v24 = +[MAAutoAssetSet _privateStateQueue];
    v25 = *(a1 + 72);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke_3;
    v30[3] = &unk_1E74C97A0;
    v30[4] = *(a1 + 32);
    v32 = v25;
    v31 = *(a1 + 64);
    [v23 connectClientSendServerMessage:v22 proxyObject:0 replyQueue:v24 isSynchronous:v25 withReply:v30];
  }
}

void __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = [v6 assetSetIdentifier];
  v8 = v7;
  v9 = *(a1 + 48);
  if (!a2 || v10)
  {
    if (v10)
    {
      [v6 _failedOperation:@"alterEntriesRepresentingAtomic" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v10 description:@"failure reported by server" isSynchronous:v9 completion:*(a1 + 40)];
    }

    else
    {
      [v6 _failedOperation:@"alterEntriesRepresentingAtomic" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v9 completion:*(a1 + 40)];
    }
  }

  else
  {
    [v6 _successOperation:@"alterEntriesRepresentingAtomic" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __113__MAAutoAssetSet__alterEntriesRepresentingAtomic_toBeComprisedOfEntries_withNeedPolicy_isSynchronous_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"alterEntriesRepresentingAtomic" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)alterEntriesRepresentingAtomicSync:(id)a3 toBeComprisedOfEntries:(id)a4 withNeedPolicy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__MAAutoAssetSet_alterEntriesRepresentingAtomicSync_toBeComprisedOfEntries_withNeedPolicy___block_invoke;
  v13[3] = &unk_1E74CB278;
  v13[4] = &v14;
  [(MAAutoAssetSet *)self _alterEntriesRepresentingAtomic:v8 toBeComprisedOfEntries:v9 withNeedPolicy:v10 isSynchronous:1 completion:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __91__MAAutoAssetSet_alterEntriesRepresentingAtomicSync_toBeComprisedOfEntries_withNeedPolicy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (void)needForAtomic:(id)a3 withNeedPolicy:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MAAutoAssetSet_needForAtomic_withNeedPolicy_completion___block_invoke;
  v10[3] = &unk_1E74CB200;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(MAAutoAssetSet *)self _needForAtomic:a3 withNeedPolicy:a4 isSynchronous:0 completion:v10];
}

void __58__MAAutoAssetSet_needForAtomic_withNeedPolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MAAutoAssetSet_needForAtomic_withNeedPolicy_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __58__MAAutoAssetSet_needForAtomic_withNeedPolicy_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_needForAtomic:(id)a3 withNeedPolicy:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_197AD5000, "MAAutoSet:_needForAtomic", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  if (v12)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke;
      v25[3] = &unk_1E74CB228;
      v25[4] = self;
      v27 = v7;
      v26 = v12;
      v15 = MEMORY[0x19A8EC5D0](v25);
      +[MAAutoAssetSet _privateStateQueue];
      if (v7)
        v16 = {;
        dispatch_sync(v16, v15);
      }

      else
        v16 = {;
        dispatch_async(v16, v15);
      }
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke_2;
      v20[3] = &unk_1E74C97F0;
      v20[4] = self;
      v21 = v11;
      v22 = v10;
      v24 = v7;
      v23 = v12;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v20];
    }
  }

  else
  {
    v17 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"needForAtomic"];
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto-set{needForAtomic} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"needForAtomic" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke_4;
    v26[3] = &unk_1E74C97C8;
    v26[4] = *(a1 + 32);
    v27 = v3;
    v29 = *(a1 + 64);
    v28 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v26);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = [*(a1 + 32) autoAssetEntries];
    v16 = +[MAAutoAssetSet frameworkInstanceUUID];
    v17 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:0 comprisedOfEntries:v15 asEntriesWhenTargeting:0 associatingFrameworkUUID:v16];

    v18 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:*(a1 + 40) reasonDesired:*(a1 + 48) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = +[MAAutoAssetSet frameworkInstanceUUID];
    v21 = [v20 UUIDString];

    [v19 setSafeObject:v17 forKey:@"setInstance"];
    [v19 setSafeObject:v18 forKey:@"setDesire"];
    v22 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:NEED_FOR_ATOMIC" clientID:v21 version:0 message:v19];
    v23 = __maConnectionClient_0;
    v24 = +[MAAutoAssetSet _privateStateQueue];
    v25 = *(a1 + 64);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke_3;
    v30[3] = &unk_1E74C97A0;
    v30[4] = *(a1 + 32);
    v32 = v25;
    v31 = *(a1 + 56);
    [v23 connectClientSendServerMessage:v22 proxyObject:0 replyQueue:v24 isSynchronous:v25 withReply:v30];
  }
}

void __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = [v6 assetSetIdentifier];
  v8 = v7;
  v9 = *(a1 + 48);
  if (!a2 || v10)
  {
    if (v10)
    {
      [v6 _failedOperation:@"needForAtomic" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v10 description:@"failure reported by server" isSynchronous:v9 completion:*(a1 + 40)];
    }

    else
    {
      [v6 _failedOperation:@"needForAtomic" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v9 completion:*(a1 + 40)];
    }
  }

  else
  {
    [v6 _successOperation:@"needForAtomic" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __73__MAAutoAssetSet__needForAtomic_withNeedPolicy_isSynchronous_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"needForAtomic" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)needForAtomicSync:(id)a3 withNeedPolicy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__8;
  v17[4] = __Block_byref_object_dispose__8;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MAAutoAssetSet_needForAtomicSync_withNeedPolicy___block_invoke;
  v10[3] = &unk_1E74CB2A0;
  v10[4] = v17;
  v10[5] = &v11;
  [(MAAutoAssetSet *)self _needForAtomic:v6 withNeedPolicy:v7 isSynchronous:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return v8;
}

void __51__MAAutoAssetSet_needForAtomicSync_withNeedPolicy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

void __121__MAAutoAssetSet_checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__MAAutoAssetSet_checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __121__MAAutoAssetSet_checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __121__MAAutoAssetSet_checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [*(a1 + 32) completionDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __121__MAAutoAssetSet_checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_4;
  v16[3] = &unk_1E74CAB58;
  v12 = *(a1 + 40);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

uint64_t __121__MAAutoAssetSet_checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_4(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)_checkAtomic:(id)a3 forAtomicInstance:(id)a4 awaitingDownload:(BOOL)a5 withNeedPolicy:(id)a6 withTimeout:(int64_t)a7 reportingProgress:(id)a8 isSynchronous:(BOOL)a9 completion:(id)a10
{
  v43 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a10;
  v21 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v21);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v22 = _os_activity_create(&dword_197AD5000, "MAAutoSet:_checkAtomic", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v22, &state);

  if (v20)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke;
      v37[3] = &unk_1E74CB228;
      v37[4] = self;
      v39 = a9;
      v38 = v20;
      v23 = MEMORY[0x19A8EC5D0](v37);
      v24 = +[MAAutoAssetSet _privateStateQueue];
      if (a9)
      {
        dispatch_sync(v24, v23);
      }

      else
      {
        dispatch_async(v24, v23);
      }
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_2;
      v28[3] = &unk_1E74CB340;
      v28[4] = self;
      v29 = v17;
      v30 = v18;
      v35 = a5;
      v31 = v16;
      v34 = a7;
      v32 = v19;
      v36 = a9;
      v33 = v20;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v28];
    }
  }

  else
  {
    v25 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"checkAtomic"];
      *buf = 138543362;
      v42 = v26;
      _os_log_impl(&dword_197AD5000, v25, OS_LOG_TYPE_ERROR, "MA-auto-set{checkAtomic} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v27 = *MEMORY[0x1E69E9840];
}

void __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_4;
    v32[3] = &unk_1E74C97C8;
    v32[4] = *(a1 + 32);
    v33 = v3;
    v35 = *(a1 + 89);
    v34 = *(a1 + 72);
    v5 = MEMORY[0x19A8EC5D0](v32);
    v6 = *(a1 + 89);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) autoAssetEntries];
    v17 = +[MAAutoAssetSet frameworkInstanceUUID];
    v18 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:v15 comprisedOfEntries:v16 asEntriesWhenTargeting:0 associatingFrameworkUUID:v17];

    v19 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:*(a1 + 48) reasonDesired:*(a1 + 56) awaitingDownloadOfDiscovered:*(a1 + 88) withCheckWaitTimeout:*(a1 + 80) withLockWaitTimeout:-101 desiringProgress:*(a1 + 64) != 0];
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = +[MAAutoAssetSet frameworkInstanceUUID];
    v22 = [v21 UUIDString];

    [v20 setSafeObject:v18 forKey:@"setInstance"];
    [v20 setSafeObject:v19 forKey:@"setDesire"];
    v23 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:CHECK_ATOMIC" clientID:v22 version:0 message:v20];
    v24 = [*(a1 + 32) _newProxyObjectForSetProgressBlock:*(a1 + 64) withLogMessage:@"MA-auto-set{_checkAtomicStatusProgress}"];
    v25 = __maConnectionClient_0;
    v26 = +[MAAutoAssetSet _privateStateQueue];
    v27 = *(a1 + 89);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_3;
    v36[3] = &unk_1E74CB318;
    v28 = *(a1 + 32);
    v37 = v24;
    v38 = v28;
    v41 = v27;
    v29 = *(a1 + 72);
    v39 = v19;
    v40 = v29;
    v30 = v19;
    v31 = v24;
    [v25 connectClientSendServerMessage:v23 proxyObject:v31 replyQueue:v26 isSynchronous:v27 withReply:v36];

    v4 = 0;
  }
}

void __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v28 || v5)
  {
    v17 = *(a1 + 40);
    v8 = [v17 assetSetIdentifier];
    v18 = *(a1 + 64);
    v19 = *(a1 + 56);
    if (v5)
    {
      [v17 _failedCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v8 withErrorCode:0 withResponseError:v5 description:@"failure reported by server" isSynchronous:v18 completion:*(a1 + 56)];
    }

    else
    {
      [v17 _failedCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v8 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v18 completion:*(a1 + 56)];
    }
  }

  else
  {
    v7 = [v28 message];
    v8 = [v7 safeObjectForKey:@"setFound" ofClass:objc_opt_class()];

    if (v8)
    {
      v9 = [v8 currentSetStatus];
      v10 = [v9 newerVersionError];

      if (v10)
      {
        v11 = [*(a1 + 48) checkWaitTimeoutSecs];
        v12 = *(a1 + 40);
        v13 = [v12 assetSetIdentifier];
        v14 = [v8 currentSetStatus];
        v15 = v14;
        if (v11)
        {
          v16 = [v14 newerVersionError];
          [v12 _failedCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v13 withErrorCode:0 withResponseError:v16 description:@"found-information indicated error" isSynchronous:*(a1 + 64) completion:*(a1 + 56)];
        }

        else
        {
          v16 = [v14 newerAtomicInstanceDiscovered];
          v26 = [v8 currentSetStatus];
          v27 = [v26 newerDiscoveredAtomicEntries];
          [v12 _successCheckAtomic:@"checkAtomic(ignoring newerVersionError)" forAssetSetIdentifier:v13 newerInstanceDiscovered:v16 discoveredAtomicEntries:v27 isSynchronous:*(a1 + 64) completion:*(a1 + 56)];
        }
      }

      else
      {
        v21 = *(a1 + 40);
        v13 = [v21 assetSetIdentifier];
        v22 = [v8 currentSetStatus];
        v23 = [v22 newerAtomicInstanceDiscovered];
        v24 = [v8 currentSetStatus];
        v25 = [v24 newerDiscoveredAtomicEntries];
        [v21 _successCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v13 newerInstanceDiscovered:v23 discoveredAtomicEntries:v25 isSynchronous:*(a1 + 64) completion:*(a1 + 56)];
      }
    }

    else
    {
      v20 = *(a1 + 40);
      v13 = [v20 assetSetIdentifier];
      [v20 _failedCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v13 withErrorCode:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 64) completion:*(a1 + 56)];
    }
  }
}

void __136__MAAutoAssetSet__checkAtomic_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedCheckAtomic:@"checkAtomic" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)checkAtomicSync:(id)a3 forAtomicInstance:(id)a4 awaitingDownload:(BOOL)a5 withNeedPolicy:(id)a6 withTimeout:(int64_t)a7 discoveredAtomicEntries:(id *)a8 error:(id *)a9 reportingProgress:(id)a10
{
  v22 = a5;
  v25 = a3;
  v24 = a4;
  v14 = a6;
  v15 = a10;
  v16 = v15;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__8;
  v45 = __Block_byref_object_dispose__8;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__8;
  v39 = __Block_byref_object_dispose__8;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  if (v15)
  {
    v17 = v27;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __144__MAAutoAssetSet_checkAtomicSync_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_discoveredAtomicEntries_error_reportingProgress___block_invoke;
    v27[3] = &unk_1E74CB2C8;
    v27[4] = self;
    v21 = &v28;
    v28 = v15;
  }

  else
  {
    v17 = 0;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __144__MAAutoAssetSet_checkAtomicSync_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_discoveredAtomicEntries_error_reportingProgress___block_invoke_3;
  v26[3] = &unk_1E74CB368;
  v26[4] = &v41;
  v26[5] = &v35;
  v26[6] = &v29;
  LOBYTE(v20) = 1;
  [(MAAutoAssetSet *)self _checkAtomic:v25 forAtomicInstance:v24 awaitingDownload:v22 withNeedPolicy:v14 withTimeout:a7 reportingProgress:v17 isSynchronous:v20 completion:v26];
  if (a8)
  {
    *a8 = v36[5];
  }

  if (a9)
  {
    *a9 = v30[5];
  }

  v18 = v42[5];
  if (v16)
  {
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v18;
}

void __144__MAAutoAssetSet_checkAtomicSync_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_discoveredAtomicEntries_error_reportingProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__MAAutoAssetSet_checkAtomicSync_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_discoveredAtomicEntries_error_reportingProgress___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __144__MAAutoAssetSet_checkAtomicSync_forAtomicInstance_awaitingDownload_withNeedPolicy_withTimeout_discoveredAtomicEntries_error_reportingProgress___block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v18 = v7;

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
  v15 = v8;

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
}

- (void)lockAtomic:(id)a3 forAtomicInstance:(id)a4 withNeedPolicy:(id)a5 withTimeout:(int64_t)a6 reportingProgress:(id)a7 completion:(id)a8
{
  v14 = a7;
  v15 = a8;
  if (v14)
  {
    v16 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke;
    v21[3] = &unk_1E74CB2C8;
    v21[4] = self;
    v18 = &v22;
    v22 = v14;
  }

  else
  {
    v16 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_3;
  v19[3] = &unk_1E74CB2F0;
  v19[4] = self;
  v17 = v15;
  v20 = v17;
  [(MAAutoAssetSet *)self _lockAtomic:a3 forAtomicInstance:a4 withNeedPolicy:a5 withTimeout:a6 reportingProgress:v16 isSynchronous:0 completion:v19];

  if (v14)
  {
  }
}

void __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [*(a1 + 32) completionDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_4;
  v16[3] = &unk_1E74CAB58;
  v12 = *(a1 + 40);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

uint64_t __103__MAAutoAssetSet_lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_completion___block_invoke_4(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)_lockAtomic:(id)a3 forAtomicInstance:(id)a4 withNeedPolicy:(id)a5 withTimeout:(int64_t)a6 reportingProgress:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v41 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  v20 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v20);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v21 = _os_activity_create(&dword_197AD5000, "MAAutoSet:_lockAtomic", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v21, &state);

  if (v19)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke;
      v35[3] = &unk_1E74CB228;
      v35[4] = self;
      v37 = v9;
      v36 = v19;
      v22 = MEMORY[0x19A8EC5D0](v35);
      +[MAAutoAssetSet _privateStateQueue];
      if (v9)
        v23 = {;
        dispatch_sync(v23, v22);
      }

      else
        v23 = {;
        dispatch_async(v23, v22);
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_2;
      v27[3] = &unk_1E74CB390;
      v27[4] = self;
      v28 = v16;
      v29 = v17;
      v30 = v15;
      v33 = a6;
      v31 = v18;
      v34 = v9;
      v32 = v19;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v27];
    }
  }

  else
  {
    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"lockAtomic"];
      *buf = 138543362;
      v40 = v25;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set{lockAtomic} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v26 = *MEMORY[0x1E69E9840];
}

void __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedLockAtomic:@"lockAtomic" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_4;
    v30[3] = &unk_1E74C97C8;
    v30[4] = *(a1 + 32);
    v31 = v3;
    v33 = *(a1 + 88);
    v32 = *(a1 + 72);
    v5 = MEMORY[0x19A8EC5D0](v30);
    v6 = *(a1 + 88);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) autoAssetEntries];
    v17 = +[MAAutoAssetSet frameworkInstanceUUID];
    v18 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:v15 comprisedOfEntries:v16 asEntriesWhenTargeting:0 associatingFrameworkUUID:v17];

    v19 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:*(a1 + 48) reasonDesired:*(a1 + 56) awaitingDownloadOfDiscovered:1 withCheckWaitTimeout:-101 withLockWaitTimeout:*(a1 + 80) desiringProgress:*(a1 + 64) != 0];
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = +[MAAutoAssetSet frameworkInstanceUUID];
    v22 = [v21 UUIDString];

    [v20 setSafeObject:v18 forKey:@"setInstance"];
    [v20 setSafeObject:v19 forKey:@"setDesire"];
    v23 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:LOCK_ATOMIC" clientID:v22 version:0 message:v20];
    v24 = [*(a1 + 32) _newProxyObjectForSetProgressBlock:*(a1 + 64) withLogMessage:@"MA-auto-set{_lockAtomicStatusProgress}"];
    v25 = __maConnectionClient_0;
    v26 = +[MAAutoAssetSet _privateStateQueue];
    v27 = *(a1 + 88);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_3;
    v34[3] = &unk_1E74CAC70;
    v28 = *(a1 + 32);
    v35 = v24;
    v36 = v28;
    v38 = v27;
    v37 = *(a1 + 72);
    v29 = v24;
    [v25 connectClientSendServerMessage:v23 proxyObject:v29 replyQueue:v26 isSynchronous:v27 withReply:v34];

    v4 = 0;
  }
}

void __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v29 || v5)
  {
    v20 = *(a1 + 40);
    v8 = [v20 assetSetIdentifier];
    v21 = *(a1 + 56);
    v22 = *(a1 + 48);
    if (v5)
    {
      [v20 _failedLockAtomic:@"lockAtomic" forAssetSetIdentifier:v8 withErrorCode:0 withResponseError:v5 description:@"failure reported by server" isSynchronous:v21 completion:*(a1 + 48)];
    }

    else
    {
      [v20 _failedLockAtomic:@"lockAtomic" forAssetSetIdentifier:v8 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v21 completion:*(a1 + 48)];
    }
  }

  else
  {
    v7 = [v29 message];
    v8 = [v7 safeObjectForKey:@"setFound" ofClass:objc_opt_class()];

    v9 = [v29 message];
    v10 = [v9 safeStringForKey:@"sandboxExtensionKey"];

    v11 = [v29 message];
    v12 = [v11 safeStringForKey:@"sandboxExtensionPathKey"];

    if (v8)
    {
      v13 = [v8 currentSetStatus];
      v14 = [v13 availableForUseError];

      v15 = *(a1 + 40);
      v16 = [v15 assetSetIdentifier];
      v17 = [v8 currentSetStatus];
      v18 = v17;
      if (v14)
      {
        v19 = [v17 availableForUseError];
        [v15 _failedLockAtomic:@"lockAtomic" forAssetSetIdentifier:v16 withErrorCode:0 withResponseError:v19 description:@"found-information indicated error" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
      }

      else
      {
        v28 = [v17 latestDownloadedAtomicInstance];
        [v8 currentSetStatus];
        v25 = v24 = v10;
        v26 = [v25 latestDowloadedAtomicInstanceEntries];
        LOBYTE(v27) = *(a1 + 56);
        [v15 _successLockAtomic:@"lockAtomic" forAssetSetIdentifier:v16 lockedAtomicInstance:v28 lockedAtomicEntries:v26 sandboxExtension:v24 sandboxExtensionPath:v12 isSynchronous:v27 completion:*(a1 + 48)];

        v10 = v24;
      }
    }

    else
    {
      v23 = *(a1 + 40);
      v16 = [v23 assetSetIdentifier];
      [v23 _failedLockAtomic:@"lockAtomic" forAssetSetIdentifier:v16 withErrorCode:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }
  }
}

void __118__MAAutoAssetSet__lockAtomic_forAtomicInstance_withNeedPolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedLockAtomic:@"lockAtomic" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)lockAtomicSync:(id)a3 forAtomicInstance:(id)a4 withNeedPolicy:(id)a5 withTimeout:(int64_t)a6 lockedAtomicEntries:(id *)a7 error:(id *)a8 reportingProgress:(id)a9
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a9;
  v16 = v15;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__8;
  v44 = __Block_byref_object_dispose__8;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__8;
  v38 = __Block_byref_object_dispose__8;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  if (v15)
  {
    v17 = v26;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __122__MAAutoAssetSet_lockAtomicSync_forAtomicInstance_withNeedPolicy_withTimeout_lockedAtomicEntries_error_reportingProgress___block_invoke;
    v26[3] = &unk_1E74CB2C8;
    v26[4] = self;
    v21 = &v27;
    v27 = v15;
  }

  else
  {
    v17 = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __122__MAAutoAssetSet_lockAtomicSync_forAtomicInstance_withNeedPolicy_withTimeout_lockedAtomicEntries_error_reportingProgress___block_invoke_3;
  v25[3] = &unk_1E74CB368;
  v25[4] = &v40;
  v25[5] = &v34;
  v25[6] = &v28;
  v18 = v13;
  [(MAAutoAssetSet *)self _lockAtomic:v24 forAtomicInstance:v13 withNeedPolicy:v14 withTimeout:a6 reportingProgress:v17 isSynchronous:1 completion:v25];
  if (a7)
  {
    *a7 = v35[5];
  }

  if (a8)
  {
    *a8 = v29[5];
  }

  v19 = v41[5];
  if (v16)
  {
  }

  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v19;
}

void __122__MAAutoAssetSet_lockAtomicSync_forAtomicInstance_withNeedPolicy_withTimeout_lockedAtomicEntries_error_reportingProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__MAAutoAssetSet_lockAtomicSync_forAtomicInstance_withNeedPolicy_withTimeout_lockedAtomicEntries_error_reportingProgress___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __122__MAAutoAssetSet_lockAtomicSync_forAtomicInstance_withNeedPolicy_withTimeout_lockedAtomicEntries_error_reportingProgress___block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v18 = v7;

  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
  v15 = v8;

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
}

- (void)mapLockedAtomicEntry:(id)a3 forAtomicInstance:(id)a4 mappingSelector:(id)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__MAAutoAssetSet_mapLockedAtomicEntry_forAtomicInstance_mappingSelector_completion___block_invoke;
  v12[3] = &unk_1E74CB3B8;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(MAAutoAssetSet *)self _mapLockedAtomicEntry:a3 forAtomicInstance:a4 mappingSelector:a5 isSynchronous:0 completion:v12];
}

void __84__MAAutoAssetSet_mapLockedAtomicEntry_forAtomicInstance_mappingSelector_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [*(a1 + 32) completionDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__MAAutoAssetSet_mapLockedAtomicEntry_forAtomicInstance_mappingSelector_completion___block_invoke_2;
  v16[3] = &unk_1E74CAB58;
  v12 = *(a1 + 40);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

uint64_t __84__MAAutoAssetSet_mapLockedAtomicEntry_forAtomicInstance_mappingSelector_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

void __99__MAAutoAssetSet__mapLockedAtomicEntry_forAtomicInstance_mappingSelector_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __99__MAAutoAssetSet__mapLockedAtomicEntry_forAtomicInstance_mappingSelector_isSynchronous_completion___block_invoke_3;
    v33[3] = &unk_1E74C97C8;
    v33[4] = *(a1 + 40);
    v34 = v3;
    v36 = *(a1 + 72);
    v35 = *(a1 + 64);
    v5 = MEMORY[0x19A8EC5D0](v33);
    v6 = *(a1 + 72);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [MAAutoAssetSetEntry alloc];
    v11 = [*(a1 + 32) assetType];
    v12 = [*(a1 + 32) assetSpecifier];
    v13 = [*(a1 + 32) assetVersion];
    v32 = [(MAAutoAssetSetEntry *)v10 initForAssetType:v11 withAssetSpecifier:v12 matchingAssetVersion:v13];

    v14 = v9;
    [v9 addObject:v32];
    v15 = [MAAutoAssetSetInfoInstance alloc];
    v16 = [*(a1 + 40) clientDomainName];
    v17 = [*(a1 + 40) autoAssetSetClientName];
    v18 = __maAutoAssetSetSharedClientProcessName;
    v19 = __maAutoAssetSetSharedClientProcessID;
    v20 = [*(a1 + 40) assetSetIdentifier];
    v21 = *(a1 + 48);
    v22 = +[MAAutoAssetSet frameworkInstanceUUID];
    v23 = [(MAAutoAssetSetInfoInstance *)v15 initUsingClientDomain:v16 forClientName:v17 withProcessName:v18 withProcessID:v19 forAssetSetIdentifier:v20 forAtomicInstance:v21 comprisedOfEntries:v14 asEntriesWhenTargeting:0 associatingFrameworkUUID:v22];

    v24 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:0 reasonDesired:*(a1 + 56) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = +[MAAutoAssetSet frameworkInstanceUUID];
    v27 = [v26 UUIDString];

    [v25 setSafeObject:v23 forKey:@"setInstance"];
    [v25 setSafeObject:v24 forKey:@"setDesire"];
    v28 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:MAP_LOCKED_ATOMIC_ENTRY" clientID:v27 version:0 message:v25];
    v29 = __maConnectionClient_0;
    v30 = +[MAAutoAssetSet _privateStateQueue];
    v31 = *(a1 + 72);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __99__MAAutoAssetSet__mapLockedAtomicEntry_forAtomicInstance_mappingSelector_isSynchronous_completion___block_invoke_2;
    v37[3] = &unk_1E74CB3E0;
    v37[4] = *(a1 + 40);
    v41 = v31;
    v40 = *(a1 + 64);
    v38 = *(a1 + 32);
    v39 = *(a1 + 48);
    [v29 connectClientSendServerMessage:v28 proxyObject:0 replyQueue:v30 isSynchronous:v31 withReply:v37];

    v4 = 0;
  }
}

void __99__MAAutoAssetSet__mapLockedAtomicEntry_forAtomicInstance_mappingSelector_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  if (!v5 || v6)
  {
    v28 = *(a1 + 32);
    v9 = [v28 assetSetIdentifier];
    v29 = *(a1 + 64);
    v30 = *(a1 + 56);
    if (v6)
    {
      [v28 _failedMapLockedAtomicEntry:@"mapLockedAtomicEntry" forAssetSetIdentifier:v9 withErrorCode:0 withResponseError:v6 description:@"failure reported by server" isSynchronous:v29 completion:*(a1 + 56)];
    }

    else
    {
      [v28 _failedMapLockedAtomicEntry:@"mapLockedAtomicEntry" forAssetSetIdentifier:v9 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v29 completion:*(a1 + 56)];
    }

    goto LABEL_26;
  }

  v40 = a1;
  v8 = [v5 message];
  v9 = [v8 safeObjectForKey:@"setFound" ofClass:objc_opt_class()];

  if (!v9)
  {
    v31 = *(a1 + 32);
    v32 = [v31 assetSetIdentifier];
    [v31 _failedMapLockedAtomicEntry:@"mapLockedAtomicEntry" forAssetSetIdentifier:v32 withErrorCode:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 64) completion:*(a1 + 56)];
    goto LABEL_25;
  }

  v36 = v5;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v9;
  v10 = [v9 currentSetStatus];
  v11 = [v10 latestDowloadedAtomicInstanceEntries];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v45 count:16];
  v13 = a1;
  if (!v12)
  {
LABEL_15:

    goto LABEL_23;
  }

  v14 = v12;
  v15 = *v42;
  v16 = 0x1E69D3000uLL;
  v37 = *v42;
LABEL_6:
  v17 = 0;
  v38 = v14;
  while (1)
  {
    if (*v42 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v18 = *(*(&v41 + 1) + 8 * v17);
    v19 = *(v16 + 2176);
    v20 = [v18 fullAssetSelector];
    v21 = [v20 assetType];
    v22 = [*(v13 + 40) assetType];
    if (([v19 stringIsEqual:v21 to:v22] & 1) == 0)
    {

      goto LABEL_13;
    }

    v23 = *(v16 + 2176);
    v24 = [v18 fullAssetSelector];
    [v24 assetSpecifier];
    v26 = v25 = v16;
    v27 = [*(v13 + 40) assetSpecifier];
    LOBYTE(v23) = [v23 stringIsEqual:v26 to:v27];

    v13 = v40;
    v16 = v25;
    v14 = v38;

    v15 = v37;
    if (v23)
    {
      break;
    }

LABEL_13:
    if (v14 == ++v17)
    {
      v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  v32 = [v18 fullAssetSelector];

  if (v32)
  {
    [*(v40 + 32) _successMapLockedAtomicEntry:@"mapLockedAtomicEntry" forAtomicInstance:*(v40 + 48) forMappedSelector:v32 isSynchronous:*(v40 + 64) completion:*(v40 + 56)];
    goto LABEL_24;
  }

LABEL_23:
  v33 = *(v13 + 32);
  v32 = [v33 assetSetIdentifier];
  [v33 _failedMapLockedAtomicEntry:@"mapLockedAtomicEntry" forAssetSetIdentifier:v32 withErrorCode:6102 withResponseError:0 description:@"found-information did not include latest downloaded atomic-instance-entry for mapped selector" isSynchronous:*(v13 + 64) completion:*(v13 + 56)];
LABEL_24:
  v6 = 0;
  v5 = v36;
  v9 = v35;
LABEL_25:

LABEL_26:
  v34 = *MEMORY[0x1E69E9840];
}

void __99__MAAutoAssetSet__mapLockedAtomicEntry_forAtomicInstance_mappingSelector_isSynchronous_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedMapLockedAtomicEntry:@"mapLockedAtomicEntry" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)mapLockedAtomicEntrySync:(id)a3 forAtomicInstance:(id)a4 mappingSelector:(id)a5 mappedSelector:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__MAAutoAssetSet_mapLockedAtomicEntrySync_forAtomicInstance_mappingSelector_mappedSelector___block_invoke;
  v15[3] = &unk_1E74CB408;
  v15[4] = &v22;
  v15[5] = &v16;
  [(MAAutoAssetSet *)self _mapLockedAtomicEntry:v10 forAtomicInstance:v11 mappingSelector:v12 isSynchronous:1 completion:v15];
  if (a6)
  {
    *a6 = v23[5];
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __92__MAAutoAssetSet_mapLockedAtomicEntrySync_forAtomicInstance_mappingSelector_mappedSelector___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v13 = v6;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

- (void)lockAtomic:(id)a3 forAtomicInstance:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MAAutoAssetSet_lockAtomic_forAtomicInstance_completion___block_invoke;
  v10[3] = &unk_1E74CB2C8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(MAAutoAssetSet *)self _shortTermLockAtomic:a3 forAtomicInstance:a4 performContentValidation:1 isSynchronous:0 completion:v10];
}

void __58__MAAutoAssetSet_lockAtomic_forAtomicInstance_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MAAutoAssetSet_lockAtomic_forAtomicInstance_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __58__MAAutoAssetSet_lockAtomic_forAtomicInstance_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __83__MAAutoAssetSet_lockAtomic_forAtomicInstance_performContentValidation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MAAutoAssetSet_lockAtomic_forAtomicInstance_performContentValidation_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __83__MAAutoAssetSet_lockAtomic_forAtomicInstance_performContentValidation_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __107__MAAutoAssetSet__shortTermLockAtomic_forAtomicInstance_performContentValidation_isSynchronous_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = @"auto-set(lockAtomic)";
  }

  else
  {
    v2 = @"auto-set(lockAtomic:Fast)";
  }

  v3 = [MAAutoAssetError buildError:6581 fromOperation:v2 underlyingError:0 withDescription:@"restricted to SHORT-TERM locker instance"];
  (*(*(a1 + 32) + 16))();
}

void __83__MAAutoAssetSet__lockAtomicSync_forAtomicInstance_performContentValidation_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)formSubAtomicInstance:(id)a3 fromAtomicInstance:(id)a4 toBeComprisedOfEntries:(id)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__MAAutoAssetSet_formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_completion___block_invoke;
  v12[3] = &unk_1E74CB200;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(MAAutoAssetSet *)self _formSubAtomicInstance:a3 fromAtomicInstance:a4 toBeComprisedOfEntries:a5 isSynchronous:0 completion:v12];
}

void __93__MAAutoAssetSet_formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MAAutoAssetSet_formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __93__MAAutoAssetSet_formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_formSubAtomicInstance:(id)a3 fromAtomicInstance:(id)a4 toBeComprisedOfEntries:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v16);

  if (v15)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke;
      v30[3] = &unk_1E74CB228;
      v30[4] = self;
      v32 = v8;
      v31 = v15;
      v17 = MEMORY[0x19A8EC5D0](v30);
      v18 = +[MAAutoAssetSet _privateStateQueue];
      v19 = v18;
      if (v8)
      {
        dispatch_sync(v18, v17);
      }

      else
      {
        dispatch_async(v18, v17);
      }

      v22 = v31;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke_2;
      v24[3] = &unk_1E74CB250;
      v24[4] = self;
      v25 = v13;
      v26 = v14;
      v27 = v12;
      v29 = v8;
      v28 = v15;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v24];

      v22 = v25;
    }
  }

  else
  {
    v20 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"formSubAtomicInstance"];
      *buf = 138543362;
      v34 = v21;
      _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_ERROR, "MA-auto-set{formSubAtomicInstance} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"formSubAtomicInstance" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke_4;
    v27[3] = &unk_1E74C97C8;
    v27[4] = *(a1 + 32);
    v28 = v3;
    v30 = *(a1 + 72);
    v29 = *(a1 + 64);
    v5 = MEMORY[0x19A8EC5D0](v27);
    v6 = *(a1 + 72);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = +[MAAutoAssetSet frameworkInstanceUUID];
    v18 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:v16 comprisedOfEntries:v15 asEntriesWhenTargeting:0 associatingFrameworkUUID:v17];

    v19 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:0 reasonDesired:*(a1 + 56) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = +[MAAutoAssetSet frameworkInstanceUUID];
    v22 = [v21 UUIDString];

    [v20 setSafeObject:v18 forKey:@"setInstance"];
    [v20 setSafeObject:v19 forKey:@"setDesire"];
    v23 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:FORM_SUB_ATOMIC" clientID:v22 version:0 message:v20];
    v24 = __maConnectionClient_0;
    v25 = +[MAAutoAssetSet _privateStateQueue];
    v26 = *(a1 + 72);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke_3;
    v31[3] = &unk_1E74C97A0;
    v31[4] = *(a1 + 32);
    v33 = v26;
    v32 = *(a1 + 64);
    [v24 connectClientSendServerMessage:v23 proxyObject:0 replyQueue:v25 isSynchronous:v26 withReply:v31];

    v4 = 0;
  }
}

void __108__MAAutoAssetSet__formSubAtomicInstance_fromAtomicInstance_toBeComprisedOfEntries_isSynchronous_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v15 || v5)
  {
    if (v5)
    {
      v12 = @"failure reported by server";
      v13 = 0;
      v14 = v5;
    }

    else
    {
      v12 = @"no response message from server";
      v13 = 6104;
      v14 = 0;
    }

    [*(a1 + 32) _failedFormSubAtomicInstance:@"formSubAtomicInstance" withErrorCode:v13 withResponseError:v14 description:v12 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v15 message];
    v8 = [v7 safeObjectForKey:@"setFound" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    v10 = [v8 currentSetStatus];
    v11 = [v10 newerAtomicInstanceDiscovered];
    [v9 _successFormSubAtomicInstance:@"formSubAtomicInstance" formedSubAtomicInstance:v11 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (id)formSubAtomicInstanceSync:(id)a3 fromAtomicInstance:(id)a4 toBeComprisedOfEntries:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__MAAutoAssetSet_formSubAtomicInstanceSync_fromAtomicInstance_toBeComprisedOfEntries_error___block_invoke;
  v15[3] = &unk_1E74CB2A0;
  v15[4] = &v22;
  v15[5] = &v16;
  [(MAAutoAssetSet *)self _formSubAtomicInstance:v10 fromAtomicInstance:v11 toBeComprisedOfEntries:v12 isSynchronous:1 completion:v15];
  if (a6)
  {
    *a6 = v17[5];
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __92__MAAutoAssetSet_formSubAtomicInstanceSync_fromAtomicInstance_toBeComprisedOfEntries_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)continueAtomicLock:(id)a3 ofAtomicInstance:(id)a4 withNeedPolicy:(id)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MAAutoAssetSet_continueAtomicLock_ofAtomicInstance_withNeedPolicy_completion___block_invoke;
  v12[3] = &unk_1E74CB200;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(MAAutoAssetSet *)self _continueAtomicLock:a3 ofAtomicInstance:a4 withNeedPolicy:a5 isSynchronous:0 completion:v12];
}

void __80__MAAutoAssetSet_continueAtomicLock_ofAtomicInstance_withNeedPolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MAAutoAssetSet_continueAtomicLock_ofAtomicInstance_withNeedPolicy_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __80__MAAutoAssetSet_continueAtomicLock_ofAtomicInstance_withNeedPolicy_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_continueAtomicLock:(id)a3 ofAtomicInstance:(id)a4 withNeedPolicy:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v16);

  if (v15)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke;
      v30[3] = &unk_1E74CB228;
      v30[4] = self;
      v32 = v8;
      v31 = v15;
      v17 = MEMORY[0x19A8EC5D0](v30);
      v18 = +[MAAutoAssetSet _privateStateQueue];
      v19 = v18;
      if (v8)
      {
        dispatch_sync(v18, v17);
      }

      else
      {
        dispatch_async(v18, v17);
      }

      v22 = v31;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke_2;
      v24[3] = &unk_1E74CB250;
      v24[4] = self;
      v25 = v13;
      v26 = v14;
      v27 = v12;
      v29 = v8;
      v28 = v15;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v24];

      v22 = v25;
    }
  }

  else
  {
    v20 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"continueAtomicLock"];
      *buf = 138543362;
      v34 = v21;
      _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_ERROR, "MA-auto-set{continueAtomicLock} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"continueAtomicLock" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke_4;
    v26[3] = &unk_1E74C97C8;
    v26[4] = *(a1 + 32);
    v27 = v3;
    v29 = *(a1 + 72);
    v28 = *(a1 + 64);
    v5 = MEMORY[0x19A8EC5D0](v26);
    v6 = *(a1 + 72);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = *(a1 + 40);
    v16 = +[MAAutoAssetSet frameworkInstanceUUID];
    v17 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:v15 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v16];

    v18 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:*(a1 + 48) reasonDesired:*(a1 + 56) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = +[MAAutoAssetSet frameworkInstanceUUID];
    v21 = [v20 UUIDString];

    [v19 setSafeObject:v17 forKey:@"setInstance"];
    [v19 setSafeObject:v18 forKey:@"setDesire"];
    v22 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:CONTINUE_ATOMIC_LOCK" clientID:v21 version:0 message:v19];
    v23 = __maConnectionClient_0;
    v24 = +[MAAutoAssetSet _privateStateQueue];
    v25 = *(a1 + 72);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke_3;
    v30[3] = &unk_1E74C97A0;
    v30[4] = *(a1 + 32);
    v32 = v25;
    v31 = *(a1 + 64);
    [v23 connectClientSendServerMessage:v22 proxyObject:0 replyQueue:v24 isSynchronous:v25 withReply:v30];
  }
}

void __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = [v6 assetSetIdentifier];
  v8 = v7;
  v9 = *(a1 + 48);
  if (!a2 || v10)
  {
    if (v10)
    {
      [v6 _failedOperation:@"continueAtomicLock" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v10 description:@"failure reported by server" isSynchronous:v9 completion:*(a1 + 40)];
    }

    else
    {
      [v6 _failedOperation:@"continueAtomicLock" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v9 completion:*(a1 + 40)];
    }
  }

  else
  {
    [v6 _successOperation:@"continueAtomicLock" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __95__MAAutoAssetSet__continueAtomicLock_ofAtomicInstance_withNeedPolicy_isSynchronous_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"continueAtomicLock" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)continueAtomicLockSync:(id)a3 ofAtomicInstance:(id)a4 withNeedPolicy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v11);

  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    dispatch_assert_queue_not_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__MAAutoAssetSet_continueAtomicLockSync_ofAtomicInstance_withNeedPolicy___block_invoke;
  v14[3] = &unk_1E74CB278;
  v14[4] = &v15;
  [(MAAutoAssetSet *)self _continueAtomicLock:v8 ofAtomicInstance:v9 withNeedPolicy:v10 isSynchronous:1 completion:v14];
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __73__MAAutoAssetSet_continueAtomicLockSync_ofAtomicInstance_withNeedPolicy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (void)endAtomicLock:(id)a3 ofAtomicInstance:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v11);

  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    dispatch_assert_queue_not_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MAAutoAssetSet_endAtomicLock_ofAtomicInstance_completion___block_invoke;
  v13[3] = &unk_1E74CB200;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [(MAAutoAssetSet *)self _endAtomicLock:v8 ofAtomicInstance:v9 isSynchronous:0 completion:v13];
}

void __60__MAAutoAssetSet_endAtomicLock_ofAtomicInstance_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MAAutoAssetSet_endAtomicLock_ofAtomicInstance_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __60__MAAutoAssetSet_endAtomicLock_ofAtomicInstance_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __75__MAAutoAssetSet__endAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__MAAutoAssetSet__endAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke_3;
    v26[3] = &unk_1E74C97C8;
    v26[4] = *(a1 + 32);
    v27 = v3;
    v29 = *(a1 + 64);
    v28 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v26);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = *(a1 + 40);
    v16 = +[MAAutoAssetSet frameworkInstanceUUID];
    v17 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:v15 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v16];

    v18 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:0 reasonDesired:*(a1 + 48) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = +[MAAutoAssetSet frameworkInstanceUUID];
    v21 = [v20 UUIDString];

    [v19 setSafeObject:v17 forKey:@"setInstance"];
    [v19 setSafeObject:v18 forKey:@"setDesire"];
    v22 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:END_ATOMIC_LOCK" clientID:v21 version:0 message:v19];
    v23 = __maConnectionClient_0;
    v24 = +[MAAutoAssetSet _privateStateQueue];
    v25 = *(a1 + 64);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __75__MAAutoAssetSet__endAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke_2;
    v30[3] = &unk_1E74C97A0;
    v30[4] = *(a1 + 32);
    v32 = v25;
    v31 = *(a1 + 56);
    [v23 connectClientSendServerMessage:v22 proxyObject:0 replyQueue:v24 isSynchronous:v25 withReply:v30];
  }
}

void __75__MAAutoAssetSet__endAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = [v6 assetSetIdentifier];
  v8 = v7;
  v9 = *(a1 + 48);
  if (!a2 || v10)
  {
    if (v10)
    {
      [v6 _failedOperation:@"endAtomicLock" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v10 description:@"failure reported by server" isSynchronous:v9 completion:*(a1 + 40)];
    }

    else
    {
      [v6 _failedOperation:@"endAtomicLock" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v9 completion:*(a1 + 40)];
    }
  }

  else
  {
    [v6 _successOperation:@"endAtomicLock" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __75__MAAutoAssetSet__endAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"endAtomicLock" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)endAtomicLockSync:(id)a3 ofAtomicInstance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v8);

  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    dispatch_assert_queue_not_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__MAAutoAssetSet_endAtomicLockSync_ofAtomicInstance___block_invoke;
    v12[3] = &unk_1E74CB278;
    v12[4] = &v13;
    [(MAAutoAssetSet *)self _shortTermEndAtomicLock:v6 ofAtomicInstance:v7 isSynchronous:1 completion:v12];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__MAAutoAssetSet_endAtomicLockSync_ofAtomicInstance___block_invoke_2;
    v11[3] = &unk_1E74CB278;
    v11[4] = &v13;
    [(MAAutoAssetSet *)self _endAtomicLock:v6 ofAtomicInstance:v7 isSynchronous:1 completion:v11];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __53__MAAutoAssetSet_endAtomicLockSync_ofAtomicInstance___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

void __53__MAAutoAssetSet_endAtomicLockSync_ofAtomicInstance___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (void)assetSetForStaging:(id)a3 asEntriesWhenTargeting:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__MAAutoAssetSet_assetSetForStaging_asEntriesWhenTargeting_completion___block_invoke;
  v10[3] = &unk_1E74CB200;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(MAAutoAssetSet *)self _assetSetForStaging:a3 asEntriesWhenTargeting:a4 isSynchronous:0 completion:v10];
}

void __71__MAAutoAssetSet_assetSetForStaging_asEntriesWhenTargeting_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MAAutoAssetSet_assetSetForStaging_asEntriesWhenTargeting_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __71__MAAutoAssetSet_assetSetForStaging_asEntriesWhenTargeting_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_assetSetForStaging:(id)a3 asEntriesWhenTargeting:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  if (v12)
  {
    if ([(MAAutoAssetSet *)self shortTermLocker])
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke;
      v26[3] = &unk_1E74CB228;
      v26[4] = self;
      v28 = v7;
      v27 = v12;
      v14 = MEMORY[0x19A8EC5D0](v26);
      v15 = +[MAAutoAssetSet _privateStateQueue];
      v16 = v15;
      if (v7)
      {
        dispatch_sync(v15, v14);
      }

      else
      {
        dispatch_async(v15, v14);
      }

      v19 = v27;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke_2;
      v21[3] = &unk_1E74C97F0;
      v21[4] = self;
      v22 = v11;
      v23 = v10;
      v25 = v7;
      v24 = v12;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v21];

      v19 = v22;
    }
  }

  else
  {
    v17 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"assetSetForStaging"];
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto-set{assetSetForStaging} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"assetSetForStaging" forAssetSetIdentifier:v3 withErrorCode:6580 withResponseError:0 description:@"not supported for SHORT-TERM locker instance" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
}

void __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke_4;
    v26[3] = &unk_1E74C97C8;
    v26[4] = *(a1 + 32);
    v27 = v3;
    v29 = *(a1 + 64);
    v28 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v26);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = *(a1 + 40);
    v16 = +[MAAutoAssetSet frameworkInstanceUUID];
    v17 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:0 comprisedOfEntries:0 asEntriesWhenTargeting:v15 associatingFrameworkUUID:v16];

    v18 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:0 reasonDesired:*(a1 + 48) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = +[MAAutoAssetSet frameworkInstanceUUID];
    v21 = [v20 UUIDString];

    [v19 setSafeObject:v17 forKey:@"setInstance"];
    [v19 setSafeObject:v18 forKey:@"setDesire"];
    v22 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:ASSET_SET_FOR_STAGING" clientID:v21 version:0 message:v19];
    v23 = __maConnectionClient_0;
    v24 = +[MAAutoAssetSet _privateStateQueue];
    v25 = *(a1 + 64);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke_3;
    v30[3] = &unk_1E74C97A0;
    v30[4] = *(a1 + 32);
    v32 = v25;
    v31 = *(a1 + 56);
    [v23 connectClientSendServerMessage:v22 proxyObject:0 replyQueue:v24 isSynchronous:v25 withReply:v30];
  }
}

void __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = [v6 assetSetIdentifier];
  v8 = v7;
  v9 = *(a1 + 48);
  if (!a2 || v10)
  {
    if (v10)
    {
      [v6 _failedOperation:@"assetSetForStaging" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v10 description:@"failure reported by server" isSynchronous:v9 completion:*(a1 + 40)];
    }

    else
    {
      [v6 _failedOperation:@"assetSetForStaging" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v9 completion:*(a1 + 40)];
    }
  }

  else
  {
    [v6 _successOperation:@"assetSetForStaging" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __86__MAAutoAssetSet__assetSetForStaging_asEntriesWhenTargeting_isSynchronous_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"assetSetForStaging" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)assetSetForStagingSync:(id)a3 asEntriesWhenTargeting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__MAAutoAssetSet_assetSetForStagingSync_asEntriesWhenTargeting___block_invoke;
  v10[3] = &unk_1E74CB278;
  v10[4] = &v11;
  [(MAAutoAssetSet *)self _assetSetForStaging:v6 asEntriesWhenTargeting:v7 isSynchronous:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __64__MAAutoAssetSet_assetSetForStagingSync_asEntriesWhenTargeting___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (void)currentSetStatus:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MAAutoAssetSet_currentSetStatus___block_invoke;
  v6[3] = &unk_1E74CB2C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MAAutoAssetSet *)self _currentSetStatusIsSynchronous:0 completion:v6];
}

void __35__MAAutoAssetSet_currentSetStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MAAutoAssetSet_currentSetStatus___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __35__MAAutoAssetSet_currentSetStatus___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __60__MAAutoAssetSet__currentSetStatusIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__MAAutoAssetSet__currentSetStatusIsSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 32);
    v26 = v3;
    v28 = *(a1 + 48);
    v27 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = +[MAAutoAssetSet frameworkInstanceUUID];
    v16 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:0 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v15];

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = +[MAAutoAssetSet frameworkInstanceUUID];
    v19 = [v18 UUIDString];

    [v17 setSafeObject:v16 forKey:@"setInstance"];
    v20 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:CURRENT_SET_STATUS" clientID:v19 version:0 message:v17];
    v21 = __maConnectionClient_0;
    v22 = +[MAAutoAssetSet _privateStateQueue];
    v23 = *(a1 + 48);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __60__MAAutoAssetSet__currentSetStatusIsSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v24 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v31 = v23;
    v30 = v24;
    [v21 connectClientSendServerMessage:v20 proxyObject:0 replyQueue:v22 isSynchronous:v23 withReply:v29];
  }
}

void __60__MAAutoAssetSet__currentSetStatusIsSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v17 || v5)
  {
    v13 = *(a1 + 32);
    v8 = [v13 assetSetIdentifier];
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    if (v5)
    {
      [v13 _failedCurrentSetStatus:@"currentSetStatus" forAssetSetIdentifier:v8 withErrorCode:0 withResponseError:v5 description:@"failure reported by server" isSynchronous:v14 completion:*(a1 + 40)];
    }

    else
    {
      [v13 _failedCurrentSetStatus:@"currentSetStatus" forAssetSetIdentifier:v8 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v14 completion:*(a1 + 40)];
    }
  }

  else
  {
    v7 = [v17 message];
    v8 = [v7 safeObjectForKey:@"setFound" ofClass:objc_opt_class()];

    if (v8)
    {
      v9 = [v8 currentSetStatus];

      v10 = *(a1 + 32);
      v11 = [v10 assetSetIdentifier];
      if (v9)
      {
        v12 = [v8 currentSetStatus];
        [v10 _successCurrentSetStatus:@"currentSetStatus" forAssetSetIdentifier:v11 withAssetSetStatus:v12 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
      }

      else
      {
        [v10 _failedCurrentSetStatus:@"currentSetStatus" forAssetSetIdentifier:v11 withErrorCode:6104 withResponseError:0 description:@"found-information yet no set-status provided" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
      }
    }

    else
    {
      v16 = *(a1 + 32);
      v11 = [v16 assetSetIdentifier];
      [v16 _failedCurrentSetStatus:@"currentSetStatus" forAssetSetIdentifier:v11 withErrorCode:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

void __60__MAAutoAssetSet__currentSetStatusIsSynchronous_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedCurrentSetStatus:@"currentSetStatus" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset-set XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)currentSetStatusSync:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__MAAutoAssetSet_currentSetStatusSync___block_invoke;
    v8[3] = &unk_1E74CB458;
    v8[4] = &v15;
    v8[5] = &v9;
    [(MAAutoAssetSet *)self _shortTermCurrentSetStatusIsSynchronous:1 completion:v8];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__MAAutoAssetSet_currentSetStatusSync___block_invoke_2;
    v7[3] = &unk_1E74CB458;
    v7[4] = &v15;
    v7[5] = &v9;
    [(MAAutoAssetSet *)self _currentSetStatusIsSynchronous:1 completion:v7];
  }

  if (a3)
  {
    *a3 = v10[5];
  }

  v5 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __39__MAAutoAssetSet_currentSetStatusSync___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

void __39__MAAutoAssetSet_currentSetStatusSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_shortTermLockAtomicHelper:(id)a3 forAtomicInstance:(id)a4 performContentValidation:(BOOL)a5 isSynchronous:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v15);

  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    dispatch_assert_queue_not_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__8;
  v32[4] = __Block_byref_object_dispose__8;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__8;
  v30[4] = __Block_byref_object_dispose__8;
  v31 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__MAAutoAssetSet__shortTermLockAtomicHelper_forAtomicInstance_performContentValidation_isSynchronous_completionHandler___block_invoke;
  v21[3] = &unk_1E74CB4A8;
  v16 = v13;
  v22 = v16;
  v23 = self;
  v17 = v12;
  v28 = a5;
  v24 = v17;
  v26 = v32;
  v27 = v30;
  v18 = v14;
  v25 = v18;
  v29 = v8;
  v19 = MEMORY[0x19A8EC5D0](v21);
  v20 = MEMORY[0x19A8EC5D0]();
  if (v8)
  {
    dispatch_sync(__maAutoAssetSetShortTermLockerDispatchQueue, v20);
  }

  else
  {
    dispatch_async(__maAutoAssetSetShortTermLockerDispatchQueue, v20);
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void __120__MAAutoAssetSet__shortTermLockAtomicHelper_forAtomicInstance_performContentValidation_isSynchronous_completionHandler___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v62 = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    v8 = *(a1 + 80);
    v9 = *(*(a1 + 72) + 8);
    v57 = *(v9 + 40);
    obj = v7;
    LOBYTE(v52) = v8;
    v10 = [v4 _shortTermLockForAtomicInstance:v3 locking:1 withLockedFileDescriptor:0xFFFFFFFFLL forLockReason:v5 justCreated:&v62 providingLockedSetStatus:&obj shouldVerifyContent:v52 error:&v57];
    objc_storeStrong((v6 + 40), obj);
    objc_storeStrong((v9 + 40), v57);
    if (!v10)
    {
      v20 = 0;
      goto LABEL_17;
    }

    v11 = v62;
    v12 = _MAClientLog(@"AutoSet");
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 == 1)
    {
      if (v13)
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        v16 = [v10 summary];
        *buf = 138543874;
        *v64 = v14;
        *&v64[8] = 2114;
        *&v64[10] = v15;
        *&v64[18] = 2114;
        *&v64[20] = v16;
        v17 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermLockAtomicSync} (%{public}@) | lockReason:%{public}@ | holding shared lock | shortTermLock:%{public}@";
LABEL_14:
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, v17, buf, 0x20u);
      }
    }

    else if (v13)
    {
      v40 = *(a1 + 32);
      v41 = *(a1 + 48);
      v16 = [v10 summary];
      *buf = 138543874;
      *v64 = v40;
      *&v64[8] = 2114;
      *&v64[10] = v41;
      *&v64[18] = 2114;
      *&v64[20] = v16;
      v17 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermLockAtomicSync} (%{public}@) | lockReason:%{public}@ | additional (locally tracked usage) of shared lock | shortTermLock:%{public}@";
      goto LABEL_14;
    }

    v20 = 0;
    v28 = v2;
    goto LABEL_16;
  }

  v18 = [*(a1 + 40) clientDomainName];
  v19 = [*(a1 + 40) assetSetIdentifier];
  v20 = [MAAutoAssetSetStatus shortTermLockFilename:v18 forAssetSetIdentifier:v19 forSetAtomicInstance:0];

  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  v25 = *(a1 + 80);
  v26 = *(*(a1 + 72) + 8);
  v60 = *(v26 + 40);
  v61 = v24;
  v27 = [v21 _shortTermOpenSharedLockFile:@"auto-set(_shortTermLockAtomicSync)[atomic-instance]" lockingAtomicInstance:v2 forLockReason:v22 verifyingLocalContentURLs:v25 openingFilename:v20 providingLockedSetStatus:&v61 sharedLockError:&v60];
  objc_storeStrong((v23 + 40), v61);
  objc_storeStrong((v26 + 40), v60);
  if ((v27 & 0x80000000) == 0)
  {
    v28 = [*(*(*(a1 + 64) + 8) + 40) latestDownloadedAtomicInstance];

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = *(a1 + 80);
    v32 = *(*(a1 + 72) + 8);
    v59 = *(v32 + 40);
    LOBYTE(v53) = v31;
    v10 = [v29 _shortTermLockForAtomicInstance:v28 locking:1 withLockedFileDescriptor:v27 forLockReason:v30 justCreated:&v62 providingLockedSetStatus:0 shouldVerifyContent:v53 error:&v59];
    objc_storeStrong((v32 + 40), v59);
    if (v10)
    {
      v33 = v62;
      v12 = _MAClientLog(@"AutoSet");
      v34 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v33 == 1)
      {
        if (v34)
        {
          v35 = *(a1 + 48);
          v36 = [v10 summary];
          *buf = 138543874;
          *v64 = v28;
          *&v64[8] = 2114;
          *&v64[10] = v35;
          *&v64[18] = 2114;
          *&v64[20] = v36;
          v37 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermLockAtomicSync} (%{public}@) | lockReason:%{public}@ | holding shared lock | shortTermLock:%{public}@";
          v38 = v12;
          v39 = 32;
LABEL_30:
          _os_log_impl(&dword_197AD5000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);

          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (v34)
      {
        v47 = *(a1 + 48);
        v48 = [v10 summary];
        *buf = 138543874;
        *v64 = v28;
        *&v64[8] = 2114;
        *&v64[10] = v47;
        *&v64[18] = 2114;
        *&v64[20] = v48;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermLockAtomicSync} (%{public}@) | lockReason:%{public}@ | additional (locally tracked usage) of shared lock | shortTermLock:%{public}@", buf, 0x20u);
      }
    }

    if (close(v27))
    {
      v49 = *__error();
      v12 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v50 = *(a1 + 48);
        *buf = 67109890;
        *v64 = v27;
        *&v64[4] = 2114;
        *&v64[6] = v28;
        *&v64[14] = 2114;
        *&v64[16] = v50;
        *&v64[24] = 1024;
        *&v64[26] = v49;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermLockAtomicSync}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | lockReason:%{public}@ | WARNING | (extraFileLockToClose) failed close of sharedLockedFileDescriptor, errno:%d", buf, 0x22u);
      }

      goto LABEL_16;
    }

    v12 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 48);
      v36 = [v10 summary];
      *buf = 67109890;
      *v64 = v27;
      *&v64[4] = 2114;
      *&v64[6] = v28;
      *&v64[14] = 2114;
      *&v64[16] = v51;
      *&v64[24] = 2114;
      *&v64[26] = v36;
      v37 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermLockAtomicSync}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | lockReason:%{public}@ | (extraFileLockToClose) released sharedLockedFileDescriptor | shortTermLock:%{public}@";
      v38 = v12;
      v39 = 38;
      goto LABEL_30;
    }

LABEL_16:

    v2 = v28;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:
  [*(a1 + 40) _shortTermLogResult:@"_shortTermLockAtomicSync" forLockReason:*(a1 + 48) forAtomicInstance:*(a1 + 32) atomicInstanceFilename:v20 forShortTermLock:v10 withSetStatus:*(*(*(a1 + 64) + 8) + 40) returningError:*(*(*(a1 + 72) + 8) + 40)];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __120__MAAutoAssetSet__shortTermLockAtomicHelper_forAtomicInstance_performContentValidation_isSynchronous_completionHandler___block_invoke_563;
  v54[3] = &unk_1E74CB480;
  v55 = *(a1 + 56);
  v56 = *(a1 + 64);
  v42 = MEMORY[0x19A8EC5D0](v54);
  v43 = *(a1 + 81);
  v44 = +[MAAutoAssetSet _privateStateQueue];
  v45 = v44;
  if (v43 == 1)
  {
    dispatch_sync(v44, v42);
  }

  else
  {
    dispatch_async(v44, v42);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)_shortTermEndAtomicLock:(id)a3 ofAtomicInstance:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    dispatch_assert_queue_not_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__8;
  v29[4] = __Block_byref_object_dispose__8;
  v30 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__MAAutoAssetSet__shortTermEndAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke;
  v22[3] = &unk_1E74CB4F8;
  v14 = v11;
  v23 = v14;
  v15 = v10;
  v24 = v15;
  v25 = self;
  v27 = v29;
  v16 = v12;
  v26 = v16;
  v28 = v7;
  v17 = MEMORY[0x19A8EC5D0](v22);
  v21 = MEMORY[0x19A8EC5D0](v17, v18, v19, v20);
  if (v7)
  {
    dispatch_sync(__maAutoAssetSetShortTermLockerDispatchQueue, v21);
  }

  else
  {
    dispatch_async(__maAutoAssetSetShortTermLockerDispatchQueue, v21);
  }

  _Block_object_dispose(v29, 8);
}

void __84__MAAutoAssetSet__shortTermEndAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke(uint64_t a1)
{
  v103 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    if (v2)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot end SHORT-TERM locks of all atomic-instances when lock-reason provided | endLockReason:%@", *(a1 + 40)];
      v16 = [MAAutoAssetError buildError:6111 fromOperation:@"auto-set(_shortTermEndAtomicLockSync)" underlyingError:0 withDescription:v15];
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v8 = 0;
      goto LABEL_69;
    }

    v26 = __maAutoAssetSetSharedProcessByClientDomainName;
    v27 = [*(a1 + 48) clientDomainName];
    v28 = [v26 safeObjectForKey:v27 ofClass:objc_opt_class()];

    if (!v28)
    {
      v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot end SHORT-TERM locks of all atomic-instances (byAssetSetIdenfier empty) | endLockReason:%@", *(a1 + 40)];
      v56 = [MAAutoAssetError buildError:6111 fromOperation:@"auto-set(_shortTermEndAtomicLockSync)" underlyingError:0 withDescription:v55];
      v57 = *(*(a1 + 64) + 8);
      v58 = *(v57 + 40);
      *(v57 + 40) = v56;

      v8 = 0;
LABEL_68:

      goto LABEL_69;
    }

    v29 = [*(a1 + 48) assetSetIdentifier];
    v30 = [v28 safeObjectForKey:v29 ofClass:objc_opt_class()];

    if (!v30)
    {
      v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot end SHORT-TERM locks of all atomic-instances (byAtomicInstance empty) | endLockReason:%@", *(a1 + 40)];
      v64 = [MAAutoAssetError buildError:6111 fromOperation:@"auto-set(_shortTermEndAtomicLockSync)" underlyingError:0 withDescription:v63];
      v65 = *(*(a1 + 64) + 8);
      v66 = *(v65 + 40);
      *(v65 + 40) = v64;

      v8 = 0;
LABEL_67:

      goto LABEL_68;
    }

    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v94 objects:v102 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v95;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v95 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [v31 addObject:*(*(&v94 + 1) + 8 * i)];
        }

        v34 = [v32 countByEnumeratingWithState:&v94 objects:v102 count:16];
      }

      while (v34);
    }

    v37 = [v31 count];
    if (v37 < 1)
    {
      v39 = 0;
    }

    else
    {
      v38 = v37;
      v88 = v28;
      v39 = 0;
      v40 = 0;
      for (j = 0; j != v38; ++j)
      {
        v42 = [v31 objectAtIndex:j];
        LOBYTE(v87) = 0;
        v43 = [*(a1 + 48) _shortTermLockForAtomicInstance:v42 locking:0 withLockedFileDescriptor:0xFFFFFFFFLL forLockReason:0 justCreated:0 providingLockedSetStatus:0 shouldVerifyContent:v87 error:0];
        [v32 removeObjectForKey:v42];
        if (v43)
        {
          [*(a1 + 48) _closeAndRemoveShortTermLock:@"_shortTermEndAtomicLockSync(ending all locks of atomic-instances and lock-reasons)" forShortTermLock:v43];
          if (v39)
          {
            v40 = 1;
          }

          else
          {
            v39 = v43;
          }
        }
      }

      if (v40)
      {
        v8 = 0;
        v28 = v88;
LABEL_66:

        goto LABEL_67;
      }

      v28 = v88;
    }

    v39 = v39;
    v8 = v39;
    goto LABEL_66;
  }

  v3 = *(a1 + 48);
  v4 = *(*(a1 + 64) + 8);
  v7 = *(v4 + 40);
  v6 = (v4 + 40);
  v5 = v7;
  if (v2)
  {
    obj = v5;
    LOBYTE(v87) = 0;
    v8 = [v3 _shortTermLockForAtomicInstance:v87 locking:&obj withLockedFileDescriptor:? forLockReason:? justCreated:? providingLockedSetStatus:? shouldVerifyContent:? error:?];
    objc_storeStrong(v6, obj);
    if (!v8)
    {
      goto LABEL_69;
    }

    v9 = [v8 lockCountByReason];
    v10 = [v9 safeObjectForKey:*(a1 + 40) ofClass:objc_opt_class()];

    if (!v10)
    {
      v44 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = [v8 summary];
      v45 = [v44 initWithFormat:@"SHORT-TERM lock is not currently locked for reason to end-lock for | shortTermLock:%@ | endLockReason:%@", v25, *(a1 + 40)];
      v46 = [MAAutoAssetError buildError:6501 fromOperation:@"auto-set(_shortTermEndAtomicLockSync)" underlyingError:0 withDescription:v45];
      v47 = *(*(a1 + 64) + 8);
      v48 = *(v47 + 40);
      *(v47 + 40) = v46;

      v10 = 0;
      goto LABEL_62;
    }

    v11 = [v10 intValue];
    v12 = v11;
    if (v11 > 0)
    {
      if (v11 == 1)
      {
        v13 = [v8 lockCountByReason];
        [v13 removeObjectForKey:*(a1 + 40)];

        v14 = [v8 totalLockCount];
        if (v14 < 1)
        {
          v69 = _MAClientLog(@"AutoSet");
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 = *(a1 + 32);
            v71 = [v8 summary];
            *buf = 138543618;
            v99 = v70;
            v100 = 2112;
            v101 = v71;
            _os_log_impl(&dword_197AD5000, v69, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermEndAtomicLockSync} (%{public}@) | WARNING | inconsistent totalLockCount (ending last lock) | shortTermLock:%@", buf, 0x16u);
          }
        }

        else
        {
          [v8 setTotalLockCount:{objc_msgSend(v8, "totalLockCount") - 1}];
        }

        v72 = [v8 lockCountByReason];
        if ([v72 count])
        {

          goto LABEL_55;
        }

        v73 = [v8 totalLockCount];

        if (v73 <= 0)
        {
          [*(a1 + 48) _closeAndRemoveShortTermLock:@"_shortTermEndAtomicLockSync(ending specific atomic-instance lock)" forShortTermLock:v8];
LABEL_55:
          if (v14 <= 0)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }

        if (v14 < 1)
        {
LABEL_63:

          goto LABEL_69;
        }
      }

      else
      {
        v59 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:(v11 - 1)];

        v60 = [v8 lockCountByReason];
        [v60 setSafeObject:v59 forKey:*(a1 + 40)];

        if ([v8 totalLockCount] < 2)
        {
          v25 = _MAClientLog(@"AutoSet");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v67 = *(a1 + 32);
            v68 = [v8 summary];
            *buf = 138543618;
            v99 = v67;
            v100 = 2112;
            v101 = v68;
            _os_log_impl(&dword_197AD5000, v25, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermEndAtomicLockSync} (%{public}@) | WARNING | inconsistent totalLockCount (not last lock) | shortTermLock:%@", buf, 0x16u);
          }

          v10 = v59;
          goto LABEL_62;
        }

        [v8 setTotalLockCount:{objc_msgSend(v8, "totalLockCount") - 1}];
        v10 = v59;
      }

LABEL_59:
      v74 = __maAutoAssetSetSharedProcessByClientDomainName;
      v75 = [*(a1 + 48) clientDomainName];
      v25 = [v74 safeObjectForKey:v75 ofClass:objc_opt_class()];

      if (v25)
      {
        v76 = [*(a1 + 48) assetSetIdentifier];
        v50 = [v25 safeObjectForKey:v76 ofClass:objc_opt_class()];

        v77 = [v8 assetSetAtomicInstance];
        [v50 setSafeObject:v8 forKey:v77];

        v78 = [*(a1 + 48) assetSetIdentifier];
        [v25 setSafeObject:v50 forKey:v78];

        v79 = __maAutoAssetSetSharedProcessByClientDomainName;
        v80 = [*(a1 + 48) clientDomainName];
        [v79 setSafeObject:v25 forKey:v80];

        goto LABEL_61;
      }

LABEL_62:

      goto LABEL_63;
    }

    v49 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = [v8 summary];
    v50 = [v49 initWithFormat:@"SHORT-TERM lock lockCountForReason has invalid lock count | shortTermLock:%@ | endLockReason:%@ | lockCount:%d", v25, *(a1 + 40), v12];
    v51 = [MAAutoAssetError buildError:6501 fromOperation:@"auto-set(_shortTermEndAtomicLockSync)" underlyingError:0 withDescription:v50];
    v52 = *(*(a1 + 64) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;

LABEL_61:
    goto LABEL_62;
  }

  v93 = v5;
  LOBYTE(v87) = 0;
  v8 = [v3 _shortTermLockForAtomicInstance:v87 locking:&v93 withLockedFileDescriptor:? forLockReason:? justCreated:? providingLockedSetStatus:? shouldVerifyContent:? error:?];
  objc_storeStrong(v6, v93);
  v19 = *(*(*(a1 + 64) + 8) + 40);
  if (v19 && [v19 code] == 6110)
  {
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  if (v8)
  {
    v22 = __maAutoAssetSetSharedProcessByClientDomainName;
    v23 = [*(a1 + 48) clientDomainName];
    v10 = [v22 safeObjectForKey:v23 ofClass:objc_opt_class()];

    if (v10)
    {
      v24 = [*(a1 + 48) assetSetIdentifier];
      v25 = [v10 safeObjectForKey:v24 ofClass:objc_opt_class()];

      if (!v25)
      {
        v50 = _MAClientLog(@"AutoSet");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v61 = *(a1 + 32);
          v62 = [v8 summary];
          *buf = 138543618;
          v99 = v61;
          v100 = 2112;
          v101 = v62;
          _os_log_impl(&dword_197AD5000, v50, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermEndAtomicLockSync} (%{public}@) | WARNING | unable to locate byAtomicInstance when ending SHORT-TERM locks for all lock reasons | shortTermLock:%@", buf, 0x16u);
        }

        goto LABEL_61;
      }

      [*(a1 + 48) _closeAndRemoveShortTermLock:@"_shortTermEndAtomicLockSync(ending specific atomic-instance locks - all lock-reasons)" forShortTermLock:v8];
      goto LABEL_62;
    }

    v25 = _MAClientLog(@"AutoSet");
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    v54 = *(a1 + 32);
    v50 = [v8 summary];
    *buf = 138543618;
    v99 = v54;
    v100 = 2112;
    v101 = v50;
    _os_log_impl(&dword_197AD5000, v25, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermEndAtomicLockSync} (%{public}@) | WARNING | unable to locate byAssetSetIdentifier when ending SHORT-TERM locks for all lock reasons | shortTermLock:%@", buf, 0x16u);
    goto LABEL_61;
  }

LABEL_69:
  [*(a1 + 48) _shortTermLogResult:@"_shortTermEndAtomicLockSync" forLockReason:*(a1 + 40) forAtomicInstance:*(a1 + 32) atomicInstanceFilename:0 forShortTermLock:v8 withSetStatus:0 returningError:*(*(*(a1 + 64) + 8) + 40)];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __84__MAAutoAssetSet__shortTermEndAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke_595;
  v89[3] = &unk_1E74CB4D0;
  v81 = *(a1 + 56);
  v89[4] = *(a1 + 48);
  v90 = v81;
  v91 = *(a1 + 64);
  v82 = MEMORY[0x19A8EC5D0](v89);
  v83 = *(a1 + 72);
  v84 = +[MAAutoAssetSet _privateStateQueue];
  v85 = v84;
  if (v83 == 1)
  {
    dispatch_sync(v84, v82);
  }

  else
  {
    dispatch_async(v84, v82);
  }

  v86 = *MEMORY[0x1E69E9840];
}

void __84__MAAutoAssetSet__shortTermEndAtomicLock_ofAtomicInstance_isSynchronous_completion___block_invoke_595(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) assetSetIdentifier];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 48) + 8) + 40));
}

- (void)_shortTermCurrentSetStatusIsSynchronous:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__8;
  v17[4] = __Block_byref_object_dispose__8;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__8;
  v15[4] = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__MAAutoAssetSet__shortTermCurrentSetStatusIsSynchronous_completion___block_invoke;
  v10[3] = &unk_1E74CB520;
  v10[4] = self;
  v12 = v17;
  v13 = v15;
  v7 = v6;
  v11 = v7;
  v14 = v4;
  v8 = MEMORY[0x19A8EC5D0](v10);
  v9 = MEMORY[0x19A8EC5D0]();
  if (v4)
  {
    dispatch_sync(__maAutoAssetSetShortTermLockerDispatchQueue, v9);
  }

  else
  {
    dispatch_async(__maAutoAssetSetShortTermLockerDispatchQueue, v9);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

void __69__MAAutoAssetSet__shortTermCurrentSetStatusIsSynchronous_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) clientDomainName];
  v3 = [*(a1 + 32) assetSetIdentifier];
  v4 = [MAAutoAssetSetStatus shortTermLockFilename:v2 forAssetSetIdentifier:v3 forSetAtomicInstance:0];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 56) + 8);
  v31 = *(v8 + 40);
  obj = v6;
  v9 = [v7 _shortTermOpenSharedLockFile:@"auto-set(_shortTermCurrentSetStatus)" lockingAtomicInstance:0 forLockReason:0 verifyingLocalContentURLs:0 openingFilename:v4 providingLockedSetStatus:&obj sharedLockError:&v31];
  objc_storeStrong((v5 + 40), obj);
  objc_storeStrong((v8 + 40), v31);
  if (v9 < 0)
  {
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 56) + 8);
  v30 = *(v11 + 40);
  v12 = [v10 _readLockedSetStatusFromSharedLockFile:v4 error:&v30];
  objc_storeStrong((v11 + 40), v30);
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (close(v9))
  {
    v15 = *__error();
    v16 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(*(*(a1 + 48) + 8) + 40) latestDownloadedAtomicInstance];
      *buf = 67109890;
      v34 = v9;
      v35 = 2114;
      v36 = v17;
      v37 = 2114;
      v38 = v4;
      v39 = 1024;
      v40 = v15;
      v18 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermCurrentSetStatusSync}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | WARNING | failed close of shared lock file | latestAtomicInstanceFilename:%{public}@ | errno:%d";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 34;
LABEL_7:
      _os_log_impl(&dword_197AD5000, v19, v20, v18, buf, v21);
    }
  }

  else
  {
    v16 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(*(*(a1 + 48) + 8) + 40) latestDownloadedAtomicInstance];
      *buf = 67109634;
      v34 = v9;
      v35 = 2114;
      v36 = v17;
      v37 = 2114;
      v38 = v4;
      v18 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{_shortTermCurrentSetStatusSync}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | released sharedLockedFileDescriptor | | latestAtomicInstanceFilename:%{public}@";
      v19 = v16;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 28;
      goto LABEL_7;
    }
  }

LABEL_9:
  [*(a1 + 32) _shortTermLogResult:@"_shortTermCurrentSetStatusSync" forLockReason:0 forAtomicInstance:0 atomicInstanceFilename:v4 forShortTermLock:0 withSetStatus:*(*(*(a1 + 48) + 8) + 40) returningError:*(*(*(a1 + 56) + 8) + 40)];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__MAAutoAssetSet__shortTermCurrentSetStatusIsSynchronous_completion___block_invoke_602;
  v27[3] = &unk_1E74CB480;
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  v22 = MEMORY[0x19A8EC5D0](v27);
  v23 = *(a1 + 64);
  v24 = +[MAAutoAssetSet _privateStateQueue];
  v25 = v24;
  if (v23 == 1)
  {
    dispatch_sync(v24, v22);
  }

  else
  {
    dispatch_async(v24, v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (int)_shortTermOpenSharedLockFile:(id)a3 lockingAtomicInstance:(id)a4 forLockReason:(id)a5 verifyingLocalContentURLs:(BOOL)a6 openingFilename:(id)a7 providingLockedSetStatus:(id *)a8 sharedLockError:(id *)a9
{
  v11 = a6;
  v15 = a9;
  v101 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = @"SYMLINK";
  v88 = v17;
  if (v17)
  {
    v20 = v17;
  }

  v21 = v20;
  v22 = open([v19 UTF8String], 20);
  v23 = v22;
  v89 = v11;
  if (v22 < 0)
  {
    v83 = v22;
    v29 = a8;
    v30 = *__error();
    v31 = v21;
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to obtain shared lock (%@) | lockReason:%@ | atomicInstanceFilename:%@ | errno:%d", v21, v18, v19, v30];
    v28 = [MAAutoAssetError buildError:6582 fromOperation:v16 underlyingError:0 withDescription:v32];

    v33 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544386;
      v96 = v16;
      v97 = 2114;
      *v98 = v31;
      *&v98[8] = 2114;
      *&v98[10] = v18;
      *&v98[18] = 2114;
      *&v98[20] = v19;
      *&v98[28] = 1024;
      *&v98[30] = v30;
      _os_log_impl(&dword_197AD5000, v33, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_shortTermOpenSharedLockFile} (%{public}@) | lockReason:%{public}@ | unable to obtain shared lock | atomicInstanceFilename:%{public}@ | errno:%d", buf, 0x30u);
    }

    v86 = 0;
    v87 = 0;
    v21 = v31;
    v34 = v29;
    v15 = a9;
    v23 = v83;
    v35 = v16;
    v26 = v33;
    goto LABEL_53;
  }

  v85 = a8;
  v24 = v18;
  v25 = v16;
  v94 = 0;
  v26 = [(MAAutoAssetSet *)self _readLockedSetStatusFromSharedLockFile:v19 error:&v94];
  v27 = v94;
  if (v27)
  {
    v28 = v27;
    v86 = 0;
    v87 = 0;
    goto LABEL_45;
  }

  if (!v26)
  {
    v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to read contents of shared lock (%@) | lockReason:%@ | atomicInstanceFilename:%@", v21, v24, v19];
    v53 = 6582;
    v35 = v25;
    v18 = v24;
    v54 = v52;
    v55 = v35;
    v56 = v52;
LABEL_33:
    v28 = [MAAutoAssetError buildError:v53 fromOperation:v55 underlyingError:0 withDescription:v56];
    v86 = 0;
    v87 = 0;
    goto LABEL_43;
  }

  v36 = _MAClientLog(@"AutoSet");
  v35 = v25;
  v18 = v24;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v96 = v35;
    v97 = 1024;
    *v98 = v23;
    *&v98[4] = 2114;
    *&v98[6] = v21;
    *&v98[14] = 2112;
    *&v98[16] = v24;
    *&v98[24] = 2114;
    *&v98[26] = v19;
    _os_log_impl(&dword_197AD5000, v36, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_shortTermOpenSharedLockFile}\n[SHORT_FILE_OPEN][%d] (%{public}@) | lockReason:%@ | successfully opened SHORT-TERM | atomicInstanceFilename:%{public}@ | ", buf, 0x30u);
  }

  v37 = [v26 latestDownloadedAtomicInstance];

  v34 = v85;
  if (!v37)
  {
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"No latestDownloadedAtomicInstance in locked set-status from shared lock (%@) | lockReason:%@ | atomicInstanceFilename:%@", v21, v18, v19];
    v53 = 6111;
    v55 = v35;
    v56 = v54;
    goto LABEL_33;
  }

  if (!v11)
  {
    v86 = 0;
    v87 = 0;
    v28 = 0;
    if (v85)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v81 = [MEMORY[0x1E696AC08] defaultManager];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = [v26 latestDowloadedAtomicInstanceEntries];
  v77 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (!v77)
  {
    v86 = 0;
    v87 = 0;
    v28 = 0;
    goto LABEL_42;
  }

  v86 = 0;
  v87 = 0;
  v78 = v35;
  v79 = *v91;
  v80 = v21;
  v84 = v23;
  while (2)
  {
    v38 = 0;
    do
    {
      if (*v91 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v90 + 1) + 8 * v38);
      v40 = [v39 localContentURL];

      if (!v40)
      {
        v62 = objc_alloc(MEMORY[0x1E696AEC0]);
        v82 = [v39 summary];
        v61 = [v62 initWithFormat:@"AtomicEntry in locked set-status has nil localContentURL (%@) | lockReason:%@ | atomicInstanceFilename:%@ | nextAtomicEntry:%@", v80, v18, v19, v82];
        v21 = v80;
        v28 = [MAAutoAssetError buildError:6108 fromOperation:v35 underlyingError:0 withDescription:v61];
        goto LABEL_41;
      }

      v41 = [v39 localContentURL];
      v42 = [v41 lastPathComponent];

      v43 = [MEMORY[0x1E69D3880] stringIsEqual:v42 to:@".AssetData"];
      v82 = v42;
      if ((v43 & 1) == 0 && ([MEMORY[0x1E69D3880] stringIsEqual:v42 to:@"AssetData"] & 1) == 0)
      {
        v63 = objc_alloc(MEMORY[0x1E696AEC0]);
        v61 = [v39 summary];
        v64 = [v63 initWithFormat:@"AtomicEntry in locked set-status that is neither standard nor secure asset (%@) | lockReason:%@ | atomicInstanceFilename:%@ | nextAtomicEntry:%@", v80, v18, v19, v61];
        v28 = [MAAutoAssetError buildError:6108 fromOperation:v35 underlyingError:0 withDescription:v64];

        v21 = v80;
        goto LABEL_41;
      }

      v44 = v18;
      v45 = [v39 localContentURL];
      v46 = [v45 URLByDeletingLastPathComponent];
      v47 = [v46 URLByAppendingPathComponent:@"Info.plist"];
      v48 = [v47 path];

      if (!v48 || ([v81 fileExistsAtPath:v48] & 1) == 0)
      {
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v58 = [v39 summary];
        v59 = v44;
        v21 = v80;
        v60 = [v57 initWithFormat:@"AtomicEntry in locked set-status has localContentURL where Info.plist is missing (%@) | lockReason:%@ | atomicInstanceFilename:%@ | nextAtomicEntry:%@ | infoPlistPath:%@", v80, v44, v19, v58, v48];
        v61 = v48;
        v28 = [MAAutoAssetError buildError:6108 fromOperation:v78 underlyingError:0 withDescription:v60];

        v18 = v59;
        v35 = v78;
LABEL_41:

        v15 = a9;
        v23 = v84;
        goto LABEL_42;
      }

      if (v43)
      {
        v49 = [v39 localContentURL];
        v50 = [v49 path];
        v51 = [v50 stringByAppendingPathComponent:@"System/Library/CoreServices/RestoreVersion.plist"];

        v35 = v78;
        if (![v81 fileExistsAtPath:v51])
        {
          v65 = objc_alloc(MEMORY[0x1E696AEC0]);
          v66 = [v39 summary];
          v67 = [v65 initWithFormat:@"AtomicEntry in locked set-status for secure grafted/mounted auto-asset where required content is missing (%@) | lockReason:%@ | atomicInstanceFilename:%@ | nextAtomicEntry:%@ | secureGraftedReqiredFilename:%@", v80, v44, v19, v66, v51];
          v28 = [MAAutoAssetError buildError:6108 fromOperation:v78 underlyingError:0 withDescription:v67];

          v18 = v44;
          v35 = v78;

          v21 = v80;
          v61 = v48;
          goto LABEL_41;
        }

        ++v86;
      }

      else
      {
        ++v87;
        v35 = v78;
      }

      ++v38;
      v18 = v44;
      v21 = v80;
      v15 = a9;
    }

    while (v77 != v38);
    v28 = 0;
    v23 = v84;
    v77 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v77)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v54 = v81;
LABEL_43:

  if (v28)
  {
    v24 = v18;
    v25 = v35;
LABEL_45:
    if (close(v23))
    {
      v68 = v15;
      v69 = *__error();
      v70 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544642;
        v96 = v25;
        v97 = 1024;
        *v98 = v23;
        *&v98[4] = 2114;
        *&v98[6] = v21;
        *&v98[14] = 2112;
        *&v98[16] = v24;
        *&v98[24] = 2114;
        *&v98[26] = v19;
        *&v98[34] = 1024;
        *&v98[36] = v69;
        _os_log_impl(&dword_197AD5000, v70, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_shortTermOpenSharedLockFile}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | lockReason:%@ | WARNING | failed close of shared lock file | atomicInstanceFilename:%{public}@ | errno:%d", buf, 0x36u);
      }

      v15 = v68;
LABEL_51:
      v35 = v25;
      v18 = v24;
    }

    else
    {
      v70 = _MAClientLog(@"AutoSet");
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 138544386;
      v35 = v25;
      v96 = v25;
      v97 = 1024;
      *v98 = v23;
      *&v98[4] = 2114;
      *&v98[6] = v21;
      *&v98[14] = 2112;
      v18 = v24;
      *&v98[16] = v24;
      *&v98[24] = 2114;
      *&v98[26] = v19;
      _os_log_impl(&dword_197AD5000, v70, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_shortTermOpenSharedLockFile}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | lockReason:%@ | released sharedLockFileDescriptor | atomicInstanceFilename:%{public}@", buf, 0x30u);
    }

    v23 = -1;
    v34 = v85;
LABEL_53:

    v26 = 0;
    if (v34)
    {
LABEL_54:
      v71 = v26;
      *v34 = v26;
    }
  }

  else
  {
    v34 = v85;
    if (v85)
    {
      goto LABEL_54;
    }
  }

LABEL_55:
  if (v15)
  {
    v72 = v28;
    *v15 = v28;
  }

  if (v89 && !v28 && v26)
  {
    v73 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      v96 = v35;
      v97 = 2114;
      *v98 = v19;
      *&v98[8] = 2112;
      *&v98[10] = v21;
      *&v98[18] = 2114;
      *&v98[20] = v18;
      *&v98[28] = 2048;
      *&v98[30] = v87;
      *&v98[38] = 2048;
      v99 = v86;
      _os_log_impl(&dword_197AD5000, v73, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_shortTermOpenSharedLockFile} | successfully locked SHORT-TERM (%{public}@) | lockReason:%@ | atomicInstanceFilename:%{public}@ | standardURLs:%ld | secureURLs:%ld", buf, 0x3Eu);
    }
  }

  v74 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)_shortTermLogResult:(id)a3 forLockReason:(id)a4 forAtomicInstance:(id)a5 atomicInstanceFilename:(id)a6 forShortTermLock:(id)a7 withSetStatus:(id)a8 returningError:(id)a9
{
  v71 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v56 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  dispatch_assert_queue_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  v21 = _MAClientLog(@"AutoSet");
  v22 = v21;
  if (v20)
  {
    v23 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (!v23)
      {
        goto LABEL_23;
      }

      v52 = v17;
      v54 = v15;
      v24 = [(MAAutoAssetSet *)self assetSetIdentifier];
      v25 = @"N";
      if (v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = @"N";
      }

      v27 = [v18 summary];
      if (v19)
      {
        v25 = [v19 summary];
      }

      v28 = [v20 checkedDescription];
      *buf = 138544642;
      v58 = v54;
      v59 = 2114;
      v60 = v24;
      v61 = 2114;
      v62 = v26;
      v63 = 2114;
      v64 = v27;
      v65 = 2114;
      v66 = v25;
      v67 = 2114;
      v68 = v28;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@} %{public}@ ERROR | lockReason:%{public}@ | shortTermLock:%{public}@ | setStatus:%{public}@ | error:%{public}@", buf, 0x3Eu);

      if (v19)
      {
      }

      v15 = v54;
      goto LABEL_22;
    }

    if (!v23)
    {
      goto LABEL_56;
    }

    v36 = [(MAAutoAssetSet *)self assetSetIdentifier];
    v37 = @"N";
    if (v16)
    {
      v38 = v16;
    }

    else
    {
      v38 = @"N";
    }

    v39 = v17;
    if (v56)
    {
      v40 = v56;
    }

    else
    {
      v40 = @"N";
    }

    v50 = v36;
    v53 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = @"N";
    }

    v55 = v15;
    if (v19)
    {
      v37 = [v19 summary];
    }

    v42 = [v20 checkedDescription];
    *buf = 138544898;
    v58 = v55;
    v59 = 2114;
    v60 = v51;
    v61 = 2114;
    v62 = v38;
    v63 = 2114;
    v64 = v40;
    v65 = 2114;
    v66 = v41;
    v67 = 2114;
    v68 = v37;
    v69 = 2114;
    v70 = v42;
    _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@} %{public}@ ERROR | lockReason:%{public}@ | forAtomicInstance:%{public}@ | atomicInstanceFilename:%{public}@ | setStatus:%{public}@ | error:%{public}@", buf, 0x48u);

    if (v19)
    {
    }

LABEL_55:
    v17 = v53;
    v15 = v55;
    goto LABEL_56;
  }

  v29 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (!v29)
    {
      goto LABEL_56;
    }

    v55 = v15;
    v43 = [(MAAutoAssetSet *)self assetSetIdentifier];
    v44 = @"N";
    if (v16)
    {
      v45 = v16;
    }

    else
    {
      v45 = @"N";
    }

    v46 = v17;
    if (v56)
    {
      v47 = v56;
    }

    else
    {
      v47 = @"N";
    }

    v53 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = @"N";
    }

    if (v19)
    {
      v44 = [v19 summary];
    }

    *buf = 138544642;
    v58 = v55;
    v59 = 2114;
    v60 = v43;
    v61 = 2114;
    v62 = v45;
    v63 = 2114;
    v64 = v47;
    v65 = 2114;
    v66 = v48;
    v67 = 2114;
    v68 = v44;
    _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@} %{public}@ SUCCESS | lockReason:%{public}@ | forAtomicInstance:%{public}@ | atomicInstanceFilename:%{public}@ | setStatus:%{public}@", buf, 0x3Eu);
    if (v19)
    {
    }

    goto LABEL_55;
  }

  if (!v29)
  {
    goto LABEL_23;
  }

  v52 = v17;
  v30 = v15;
  v31 = [(MAAutoAssetSet *)self assetSetIdentifier];
  v32 = @"N";
  if (v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = @"N";
  }

  v34 = [v18 summary];
  if (v19)
  {
    v32 = [v19 summary];
  }

  *buf = 138544386;
  v58 = v30;
  v59 = 2114;
  v60 = v31;
  v61 = 2114;
  v62 = v33;
  v63 = 2114;
  v64 = v34;
  v65 = 2114;
  v66 = v32;
  _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@} %{public}@ SUCCESS | lockReason:%{public}@ | shortTermLock:%{public}@ | setStatus:%{public}@", buf, 0x34u);
  if (v19)
  {
  }

  v15 = v30;
LABEL_22:
  v17 = v52;
LABEL_23:

  v22 = _MAClientLog(@"AutoSet");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v18 lockCountByReason];
    *buf = 138543362;
    v58 = v35;
    _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK] lockCountByReason:\n%{public}@", buf, 0xCu);
  }

LABEL_56:

  v49 = *MEMORY[0x1E69E9840];
}

- (id)_readLockedSetStatusFromSharedLockFile:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MAAutoAssetInfoFound;
  dispatch_assert_queue_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  if (_readLockedSetStatusFromSharedLockFile_error__readSetStatusSetupDispatchOnce != -1)
  {
    [MAAutoAssetSet _readLockedSetStatusFromSharedLockFile:error:];
  }

  v7 = MAAutoAssetInfoFound;
  v8 = 0x1E696A000uLL;
  if (realpath_DARWIN_EXTSN([v5 fileSystemRepresentation], v48))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v48];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = _readLockedSetStatusFromSharedLockFile_error__recordArray;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        v16 = [v15 lockerFileRealPath];
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if ([v15 isCurrentlyValid])
      {
        v19 = [v15 setStatus];

        v18 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        goto LABEL_43;
      }

      v18 = v15;
      v24 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v5;
        _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK] _readLockedSetStatusFromSharedLockFile: In memory record for lock file(%@) not valid. Discarding", buf, 0xCu);
      }

      v7 = MAAutoAssetInfoFound;
      v8 = 0x1E696A000uLL;
      v6 = MAAutoAssetInfoFound;
      if (v18)
      {
        [_readLockedSetStatusFromSharedLockFile_error__recordArray removeObject:v18];
      }
    }

    else
    {
LABEL_12:

      v18 = 0;
      v7 = MAAutoAssetInfoFound;
      v8 = 0x1E696A000;
      v6 = MAAutoAssetInfoFound;
    }
  }

  else
  {
    v23 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v5;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK] _readLockedSetStatusFromSharedLockFile: Failed to determine realpath for %@. Skipping caching", buf, 0xCu);
    }

    v9 = 0;
    v18 = 0;
  }

  v25 = objc_alloc(MEMORY[0x1E69D3890]);
  v26 = objc_opt_respondsToSelector();

  v27 = objc_alloc(MEMORY[0x1E69D3890]);
  cache = v6[26].cache;
  if (v26)
  {
    v29 = [v27 initWithDispatchQueue:cache withPersistencePath:v5 forPolicyVersion:@"1.0" issuingDefaultLevelLogging:0];
  }

  else
  {
    v29 = [v27 initWithDispatchQueue:cache withPersistencePath:v5 forPolicyVersion:@"1.0"];
  }

  v20 = v29;
  if (!v29)
  {
    v32 = @"Unable to create persisted-state for shared lock file | sharedLockFilename:%@";
    goto LABEL_33;
  }

  if (![v29 loadPersistedState])
  {
    v32 = @"Unable to load persisted-state for shared lock file | sharedLockFilename:%@";
    goto LABEL_33;
  }

  v30 = [v20 secureCodedObjectForKey:@"sharedLockSetStatus" ofClass:objc_opt_class()];
  if (!v30)
  {
    v32 = @"Unable to read set-status from persisted-state for shared lock file | sharedLockFilename:%@";
LABEL_33:
    v33 = [objc_alloc(*(v8 + 3776)) initWithFormat:v32, v5];
    v21 = [MAAutoAssetError buildError:6101 fromOperation:@"auto-set(_readLockedSetStatusFromSharedLockFile)" underlyingError:0 withDescription:v33];

    v31 = 0;
    if (!a4)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v31 = v30;
  v21 = 0;
  if (a4)
  {
LABEL_34:
    v34 = v21;
    *a4 = v21;
  }

LABEL_35:
  if (v31 && v9)
  {
    if ([(__objc2_class_ro *)v7[34].info count])
    {
      [(__objc2_class_ro *)v7[34].info removeObjectAtIndex:0];
    }

    v35 = [[MAAutoAssetSetShortTermLockInMemoryRecord alloc] initWithPathAndSetStatus:v9 setStatus:v31];
    [(__objc2_class_ro *)v7[34].info addObject:v35];
    v36 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v5;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_197AD5000, v36, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK] _readLockedSetStatusFromSharedLockFile: Updating in memory record for lockerFile:'%@' realPath:'%@'", buf, 0x16u);
    }
  }

  v22 = v31;
  v19 = v22;
LABEL_43:

  v37 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __63__MAAutoAssetSet__readLockedSetStatusFromSharedLockFile_error___block_invoke()
{
  _readLockedSetStatusFromSharedLockFile_error__recordArray = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_closeAndRemoveShortTermLock:(id)a3 forShortTermLock:(id)a4
{
  *&v32[13] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(__maAutoAssetSetShortTermLockerDispatchQueue);
  v8 = [v7 lockedFileDescriptor];
  if (([v7 lockedFileDescriptor] & 0x80000000) == 0)
  {
    v9 = close([v7 lockedFileDescriptor]);
    [v7 setLockedFileDescriptor:0xFFFFFFFFLL];
    if (v9)
    {
      v10 = *__error();
      v11 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v7 assetSetAtomicInstance];
        v13 = [v7 summary];
        v27 = 138544386;
        v28 = v6;
        v29 = 1024;
        *v30 = v8;
        *&v30[4] = 2114;
        *&v30[6] = v12;
        v31 = 1024;
        *v32 = v10;
        v32[2] = 2114;
        *&v32[3] = v13;
        v14 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_closeAndRemoveShortTermLock}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | WARNING | failed close of shared lock file | errno:%d | shortTermLock:%{public}@";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 44;
LABEL_9:
        _os_log_impl(&dword_197AD5000, v15, v16, v14, &v27, v17);
      }
    }

    else
    {
      v11 = _MAClientLog(@"AutoSet");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 assetSetAtomicInstance];
        v13 = [v7 summary];
        v27 = 138544130;
        v28 = v6;
        v29 = 1024;
        *v30 = v8;
        *&v30[4] = 2114;
        *&v30[6] = v12;
        v31 = 2114;
        *v32 = v13;
        v14 = "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_closeAndRemoveShortTermLock}\n[SHORT_FILE_CLOSE][%d] (%{public}@) | released shared lock | shortTermLock:%{public}@";
        v15 = v11;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 38;
        goto LABEL_9;
      }
    }

    v20 = __maAutoAssetSetSharedProcessByClientDomainName;
    v21 = [(MAAutoAssetSet *)self clientDomainName];
    v18 = [v20 safeObjectForKey:v21 ofClass:objc_opt_class()];

    if (v18)
    {
      v22 = [(MAAutoAssetSet *)self assetSetIdentifier];
      v19 = [v18 safeObjectForKey:v22 ofClass:objc_opt_class()];

      if (v19)
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v7 setLockCountByReason:v23];

        [v7 setTotalLockCount:0];
        v24 = [v7 assetSetAtomicInstance];
        [v19 removeObjectForKey:v24];
      }

      else
      {
        v24 = _MAClientLog(@"AutoSet");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v7 summary];
          v27 = 138543618;
          v28 = v6;
          v29 = 2114;
          *v30 = v25;
          _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_closeAndRemoveShortTermLock} | WARNING | unable to locate byAtomicInstance when ending SHORT-TERM lock | shortTermLock:%{public}@", &v27, 0x16u);
        }
      }

      goto LABEL_17;
    }

    v19 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = [v7 summary];
      v27 = 138543618;
      v28 = v6;
      v29 = 2114;
      *v30 = v24;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_closeAndRemoveShortTermLock} | WARNING | unable to locate byAssetSetIdentifier when ending SHORT-TERM lock | shortTermLock:%{public}@", &v27, 0x16u);
LABEL_17:
    }

LABEL_18:

    goto LABEL_19;
  }

  v18 = _MAClientLog(@"AutoSet");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v7 summary];
    v27 = 138543618;
    v28 = v6;
    v29 = 2114;
    *v30 = v19;
    _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto-set[AUTO-SHORT-TERM][FRAMEWORK]{%{public}@:_closeAndRemoveShortTermLock} | WARNING | invalid lockedFileDesciptor | shortTermLock:%{public}@", &v27, 0x16u);
    goto LABEL_18;
  }

LABEL_19:

  v26 = *MEMORY[0x1E69E9840];
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MAAutoAssetSet *)self autoAssetSetClientName];
  v5 = [(MAAutoAssetSet *)self assetSetIdentifier];
  if ([(MAAutoAssetSet *)self shortTermLocker])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MAAutoAssetSet *)self autoAssetEntries];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(MAAutoAssetSet *)self autoAssetEntries];
    v10 = [v8 initWithFormat:@"%ld", objc_msgSend(v9, "count")];
    v11 = [v3 initWithFormat:@"autoAssetSetClientName:%@|assetSetIdentifier:%@|shortTermLocker:%@|autoAssetEntries:%@", v4, v5, v6, v10];
  }

  else
  {
    v11 = [v3 initWithFormat:@"autoAssetSetClientName:%@|assetSetIdentifier:%@|shortTermLocker:%@|autoAssetEntries:%@", v4, v5, v6, @"N"];
  }

  return v11;
}

+ (void)endAtomicLocks:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8 completion:(id)a9
{
  v39 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  if (v19)
  {
    v29 = v14;
    v20 = [MAAutoAssetSet alloc];
    v21 = +[MAAutoAssetSet defaultDispatchQueue];
    v36 = 0;
    v22 = [(MAAutoAssetSet *)v20 initUsingClientDomain:v15 forClientName:v16 forAssetSetIdentifier:v17 comprisedOfEntries:0 usingDesiredPolicyCategory:0 completingFromQueue:v21 error:&v36];
    v23 = v36;

    if (v23)
    {
      v24 = +[MAAutoAssetSet defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __133__MAAutoAssetSet_endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v25 = &v33;
      v33 = v19;
      v31 = v17;
      v32 = v23;
      dispatch_async(v24, block);
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __133__MAAutoAssetSet_endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_completion___block_invoke;
      v34[3] = &unk_1E74CB548;
      v25 = &v35;
      v35 = v19;
      LOBYTE(v28) = 0;
      [v22 _endAtomicLocks:v29 usingClientDomain:v15 forClientName:v16 forAssetSetIdentifier:v17 ofAtomicInstance:v18 removingLockCount:a8 isSynchronous:v28 completion:v34];
    }

    v14 = v29;
  }

  else
  {
    +[MAAutoAssetSet frameworkInstanceSetLogDomain];
    v23 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+endAtomicLocks"];
      *buf = 138543362;
      v38 = v26;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_ERROR, "MA-auto-set{+endAtomicLocks} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __133__MAAutoAssetSet_endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAssetSet defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__MAAutoAssetSet_endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __133__MAAutoAssetSet_endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_endAtomicLocks:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8 isSynchronous:(BOOL)a9 completion:(id)a10
{
  v58 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v22);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v23 = _os_activity_create(&dword_197AD5000, "MAAutoSet:_endAtomicLocks", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v23, &state);

  if (v21)
  {
    if (!v16 && a8 != -1)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke;
      v51[3] = &unk_1E74C97C8;
      v51[4] = self;
      v52 = v19;
      v54 = a9;
      v53 = v21;
      v24 = MEMORY[0x19A8EC5D0](v51);
      v25 = +[MAAutoAssetSet _privateStateQueue];
      if (a9)
      {
        dispatch_sync(v25, v24);
      }

      else
      {
        dispatch_async(v25, v24);
      }

      goto LABEL_23;
    }

    if (![v20 isEqualToString:@"ALL_INSTANCES"])
    {
      goto LABEL_18;
    }

    if (a8 != -1)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_2;
      v47[3] = &unk_1E74C97C8;
      v47[4] = self;
      v48 = v19;
      v50 = a9;
      v49 = v21;
      v28 = MEMORY[0x19A8EC5D0](v47);
      v29 = +[MAAutoAssetSet _privateStateQueue];
      if (a9)
      {
        dispatch_sync(v29, v28);
      }

      else
      {
        dispatch_async(v29, v28);
      }

      goto LABEL_23;
    }

    if (!v16)
    {
LABEL_18:
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_4;
      v33[3] = &unk_1E74CB598;
      v34 = v17;
      v35 = v18;
      v36 = v19;
      v37 = v20;
      v41 = a8;
      v42 = a9;
      v38 = v16;
      v39 = self;
      v40 = v21;
      [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v33];

      goto LABEL_23;
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_3;
    v43[3] = &unk_1E74C97C8;
    v43[4] = self;
    v44 = v19;
    v46 = a9;
    v45 = v21;
    v30 = MEMORY[0x19A8EC5D0](v43);
    v31 = +[MAAutoAssetSet _privateStateQueue];
    if (a9)
    {
      dispatch_sync(v31, v30);
    }

    else
    {
      dispatch_async(v31, v30);
    }
  }

  else
  {
    v26 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_endAtomicLocks"];
      *buf = 138543362;
      v57 = v27;
      _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_ERROR, "MA-auto-set{_endAtomicLocks} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

LABEL_23:
  os_activity_scope_leave(&state);

  v32 = *MEMORY[0x1E69E9840];
}

void __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_6;
    v27[3] = &unk_1E74CB570;
    v27[4] = *(a1 + 72);
    v28 = *(a1 + 48);
    v29 = v3;
    v31 = *(a1 + 96);
    v30 = *(a1 + 80);
    v4 = MEMORY[0x19A8EC5D0](v27);
    v5 = *(a1 + 96);
    v6 = +[MAAutoAssetSet _privateStateQueue];
    v7 = v6;
    if (v5 == 1)
    {
      dispatch_sync(v6, v4);
    }

    else
    {
      dispatch_async(v6, v4);
    }

    v25 = v28;
  }

  else
  {
    v8 = [MAAutoAssetSetInfoInstance alloc];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = __maAutoAssetSetSharedClientProcessName;
    v12 = __maAutoAssetSetSharedClientProcessID;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = +[MAAutoAssetSet frameworkInstanceUUID];
    v26 = [(MAAutoAssetSetInfoInstance *)v8 initUsingClientDomain:v9 forClientName:v10 withProcessName:v11 withProcessID:v12 forAssetSetIdentifier:v13 forAtomicInstance:v14 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v15];

    v16 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:0 reasonDesired:*(a1 + 64) awaitingDownloadOfDiscovered:0 withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v17 = [[MAAutoAssetSetInfoEnd alloc] initWithLockReason:*(a1 + 64) endingLockCount:*(a1 + 88)];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = +[MAAutoAssetSet frameworkInstanceUUID];
    v20 = [v19 UUIDString];

    [v18 setSafeObject:v26 forKey:@"setInstance"];
    [v18 setSafeObject:v16 forKey:@"setDesire"];
    [v18 setSafeObject:v17 forKey:@"setEnd"];
    v21 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:END_ATOMIC_LOCKS_FOR_CLIENT" clientID:v20 version:0 message:v18];
    v22 = __maConnectionClient_0;
    v23 = +[MAAutoAssetSet _privateStateQueue];
    v24 = *(a1 + 96);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_5;
    v32[3] = &unk_1E74CAC70;
    v32[4] = *(a1 + 72);
    v33 = *(a1 + 48);
    v35 = *(a1 + 96);
    v34 = *(a1 + 80);
    [v22 connectClientSendServerMessage:v21 proxyObject:0 replyQueue:v23 isSynchronous:v24 withReply:v32];

    v25 = v26;
  }
}

void __148__MAAutoAssetSet__endAtomicLocks_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount_isSynchronous_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  if (!a2 || v9)
  {
    if (v9)
    {
      [v6 _failedOperation:@"endAtomicLocks" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v9 description:@"failure reported by server" isSynchronous:v8 completion:*(a1 + 48)];
    }

    else
    {
      [v6 _failedOperation:@"endAtomicLocks" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v8 completion:*(a1 + 48)];
    }
  }

  else
  {
    [v6 _successOperation:@"endAtomicLocks" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
  }
}

+ (id)endAtomicLocksSync:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [MAAutoAssetSet alloc];
  v19 = +[MAAutoAssetSet defaultDispatchQueue];
  v23 = 0;
  v20 = [(MAAutoAssetSet *)v18 initUsingClientDomain:v14 forClientName:v15 forAssetSetIdentifier:v16 comprisedOfEntries:0 usingDesiredPolicyCategory:0 completingFromQueue:v19 error:&v23];
  v21 = v23;

  if (!v21)
  {
    v21 = [v20 _endAtomicLocksSync:v13 usingClientDomain:v14 forClientName:v15 forAssetSetIdentifier:v16 ofAtomicInstance:v17 removingLockCount:a8];
  }

  return v21;
}

- (id)_endAtomicLocksSync:(id)a3 usingClientDomain:(id)a4 forClientName:(id)a5 forAssetSetIdentifier:(id)a6 ofAtomicInstance:(id)a7 removingLockCount:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __127__MAAutoAssetSet__endAtomicLocksSync_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount___block_invoke;
  v22[3] = &unk_1E74CB278;
  v22[4] = &v23;
  LOBYTE(v21) = 1;
  [(MAAutoAssetSet *)self _endAtomicLocks:v14 usingClientDomain:v15 forClientName:v16 forAssetSetIdentifier:v17 ofAtomicInstance:v18 removingLockCount:a8 isSynchronous:v21 completion:v22];
  v19 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v19;
}

void __127__MAAutoAssetSet__endAtomicLocksSync_usingClientDomain_forClientName_forAssetSetIdentifier_ofAtomicInstance_removingLockCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

void __102__MAAutoAssetSet_eliminateAtomic_usingClientDomain_forAssetSetIdentifier_awaitingUnlocked_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAssetSet defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__MAAutoAssetSet_eliminateAtomic_usingClientDomain_forAssetSetIdentifier_awaitingUnlocked_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_eliminateAtomic:(id)a3 awaitingUnlocked:(BOOL)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_197AD5000, "MAAutoSet:_eliminateAtomic", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  if (v11)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__MAAutoAssetSet__eliminateAtomic_awaitingUnlocked_isSynchronous_completion___block_invoke;
    v17[3] = &unk_1E74CB030;
    v17[4] = self;
    v18 = v10;
    v20 = a4;
    v21 = a5;
    v19 = v11;
    [(MAAutoAssetSet *)self connectToServerFrameworkCompletion:v17];
  }

  else
  {
    v14 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_eliminateAtomic"];
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto-set{_eliminateAtomic} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v16 = *MEMORY[0x1E69E9840];
}

void __77__MAAutoAssetSet__eliminateAtomic_awaitingUnlocked_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __77__MAAutoAssetSet__eliminateAtomic_awaitingUnlocked_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 32);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetSet _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetSetInfoInstance alloc];
    v10 = [*(a1 + 32) clientDomainName];
    v11 = [*(a1 + 32) autoAssetSetClientName];
    v12 = __maAutoAssetSetSharedClientProcessName;
    v13 = __maAutoAssetSetSharedClientProcessID;
    v14 = [*(a1 + 32) assetSetIdentifier];
    v15 = +[MAAutoAssetSet frameworkInstanceUUID];
    v16 = [(MAAutoAssetSetInfoInstance *)v9 initUsingClientDomain:v10 forClientName:v11 withProcessName:v12 withProcessID:v13 forAssetSetIdentifier:v14 forAtomicInstance:0 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v15];

    v17 = [[MAAutoAssetSetInfoDesire alloc] initForClientAssetSetPolicy:0 reasonDesired:*(a1 + 40) awaitingDownloadOfDiscovered:*(a1 + 56) withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = +[MAAutoAssetSet frameworkInstanceUUID];
    v20 = [v19 UUIDString];

    [v18 setSafeObject:v16 forKey:@"setInstance"];
    [v18 setSafeObject:v17 forKey:@"setDesire"];
    v21 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET:ELIMINATE_ATOMIC" clientID:v20 version:0 message:v18];
    v22 = __maConnectionClient_0;
    v23 = +[MAAutoAssetSet _privateStateQueue];
    v24 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__MAAutoAssetSet__eliminateAtomic_awaitingUnlocked_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v29[4] = *(a1 + 32);
    v31 = v24;
    v30 = *(a1 + 48);
    [v22 connectClientSendServerMessage:v21 proxyObject:0 replyQueue:v23 isSynchronous:v24 withReply:v29];
  }
}

void __77__MAAutoAssetSet__eliminateAtomic_awaitingUnlocked_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = [v6 assetSetIdentifier];
  v8 = v7;
  v9 = *(a1 + 48);
  if (!a2 || v10)
  {
    if (v10)
    {
      [v6 _failedOperation:@"eliminateAtomic" forAssetSetIdentifier:v7 withErrorCode:0 withResponseError:v10 description:@"failure reported by server" isSynchronous:v9 completion:*(a1 + 40)];
    }

    else
    {
      [v6 _failedOperation:@"eliminateAtomic" forAssetSetIdentifier:v7 withErrorCode:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v9 completion:*(a1 + 40)];
    }
  }

  else
  {
    [v6 _successOperation:@"eliminateAtomic" forAssetSetIdentifier:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __77__MAAutoAssetSet__eliminateAtomic_awaitingUnlocked_isSynchronous_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 assetSetIdentifier];
  [v2 _failedOperation:@"eliminateAtomic" forAssetSetIdentifier:v3 withErrorCode:0 withResponseError:*(a1 + 40) description:@"unable to connect to the auto-asset XPC service" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
}

void __56__MAAutoAssetSet__eliminateAtomicSync_awaitingUnlocked___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (void)connectToServerFrameworkCompletion:(id)a3
{
  v4 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MAAutoAssetSet_connectToServerFrameworkCompletion___block_invoke;
  v5[3] = &unk_1E74CB5C0;
  v5[4] = self;
  v5[5] = &v6;
  if (__maAutoAssetSetSharedDispatchOnce != -1)
  {
    dispatch_once(&__maAutoAssetSetSharedDispatchOnce, v5);
  }

  v4[2](v4, v7[5]);
  _Block_object_dispose(&v6, 8);
}

void __53__MAAutoAssetSet_connectToServerFrameworkCompletion___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v1 = +[MAAutoAssetSet frameworkInstanceUUID];
  v31 = [v1 UUIDString];

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v14 = __maAutoAssetSetSharedClientProcessName;
  __maAutoAssetSetSharedClientProcessName = v13;

  __maAutoAssetSetSharedClientProcessID = getpid();
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:ALTER_ENTRIES_REPRESENTING_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:NEED_FOR_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:CHECK_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:LOCK_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:MAP_LOCKED_ATOMIC_ENTRY"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:FORM_SUB_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:CONTINUE_ATOMIC_LOCK"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:END_ATOMIC_LOCK"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:END_ATOMIC_LOCKS_FOR_CLIENT"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:ASSET_SET_FOR_STAGING"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:CURRENT_SET_STATUS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET:ELIMINATE_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):ALTER_ENTRIES_REPRESENTING_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):NEED_FOR_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):CHECK_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):LOCK_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):MAP_LOCKED_ATOMIC_ENTRY"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):FORM_SUB_ATOMIC"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):CONTINUE_ATOMIC_LOCK"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):END_ATOMIC_LOCK"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):END_ATOMIC_LOCKS_FOR_CLIENT"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):ASSET_SET_FOR_STAGING"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):CURRENT_SET_STATUS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SET(REPLY):ELIMINATE_ATOMIC"];
  v15 = _MAClientLog(@"AutoSet");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "MA-auto-set{connectToServerFrameworkCompletion} set all the allowlisted classes for the client policy for all delegate callbacks", buf, 2u);
  }

  v16 = [objc_alloc(MEMORY[0x1E69D3868]) initForServiceName:@"com.apple.mobileasset.autoasset" delegate:*(a1 + 32) clientID:v31];
  v17 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v19 = [v17 setWithArray:v18];
  [v16 setProxyObjectClasses:v19];

  v20 = [objc_alloc(MEMORY[0x1E69D3860]) initWithClientPolicy:v16];
  v21 = __maConnectionClient_0;
  __maConnectionClient_0 = v20;

  if (__maConnectionClient_0)
  {
    v22 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "MA-auto-set{connectToServerFrameworkCompletion} connection client initialized for server connection";
      v24 = v22;
      v25 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_197AD5000, v24, v25, v23, buf, 2u);
    }
  }

  else
  {
    v26 = [MAAutoAssetError buildError:6104 fromOperation:@"auto-set(connectToServerFrameworkCompletion)" underlyingError:0 withDescription:@"unable to create shared SUCoreConnectClient for the client process"];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v22 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "MA-auto-set{connectToServerFrameworkCompletion} unable to create shared SUCoreConnectClient for the client process";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)_newProxyObjectForSetProgressBlock:(id)a3 withLogMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3042000000;
  v20[3] = __Block_byref_object_copy__782;
  v20[4] = __Block_byref_object_dispose__783;
  objc_initWeak(&v21, self);
  v8 = objc_alloc(MEMORY[0x1E69D3870]);
  v9 = +[MAAutoAssetSet frameworkInstanceUUID];
  v10 = [v9 UUIDString];
  v11 = +[MAAutoAssetSet _privateStateQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__MAAutoAssetSet__newProxyObjectForSetProgressBlock_withLogMessage___block_invoke;
  v16[3] = &unk_1E74CB5E8;
  v19 = v20;
  v12 = v7;
  v17 = v12;
  v13 = v6;
  v18 = v13;
  v14 = [v8 initWithClientID:v10 completionQueue:v11 genericBlock:v16];

  _Block_object_dispose(v20, 8);
  objc_destroyWeak(&v21);

  return v14;
}

void __68__MAAutoAssetSet__newProxyObjectForSetProgressBlock_withLogMessage___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  WeakRetained = objc_loadWeakRetained((*(a1[6] + 8) + 40));
  if (!WeakRetained)
  {
    v6 = _MAClientLog(@"AutoSet");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v7 = "MA-auto-set{_newProxyObjectForSetProgressBlock} | Unable to capture retained strong self reference";
    v8 = &v11;
LABEL_11:
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = _MAClientLog(@"AutoSet");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 0;
    v7 = "MA-auto-set{_newProxyObjectForSetProgressBlock} | no progress provided | no progress reported to client at this time";
    v8 = &v10;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = "MA-auto-set{_newProxyObjectForSetProgressBlock} | no progress provided | unexpected type for setStatusWithProgress";
      v8 = &v9;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  [WeakRetained _autoSetAtomicOperationStatusProgress:v3 withLogMessage:a1[4] progressBlock:a1[5]];
LABEL_13:
}

- (void)_successCheckAtomic:(id)a3 forAssetSetIdentifier:(id)a4 newerInstanceDiscovered:(id)a5 discoveredAtomicEntries:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v17);

  v18 = _MAClientLog(@"AutoSet");
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_successCheckAtomic:%{public}@} | assetSetIdentifier:%{public}@ | SUCCESS", &v21, 0x16u);
    }

    v16[2](v16, v14, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set{_successCheckAtomic:%{public}@}| assetSetIdentifier:%{public}@ | no client completion block", &v21, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_failedCheckAtomic:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v18);

  if (v17)
  {
    v19 = v15;
    v20 = v19;
    if (a5 && !v19)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"auto-set(%@) | assetSetIdentifier:%@", v13, v14];
      v20 = [MAAutoAssetError buildError:a5 fromOperation:v21 underlyingError:0 withDescription:v16];
    }

    v22 = _MAClientLog(@"AutoSet");
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [v20 checkedDescription];
        *buf = 138544130;
        v31 = v13;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v14;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedCheckAtomic:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | error:%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_failedCheckAtomic:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | SUCCESS", buf, 0x20u);
    }

    (*(v17 + 2))(v17, 0, 0, v20);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v15)
    {
      v26 = [v15 checkedDescription];
      v27 = [v25 initWithFormat:@"%@ | error:%@", v16, v26];
    }

    else
    {
      v26 = [MAAutoAssetError summaryForCode:a5 fromOperation:v13];
      v27 = [v25 initWithFormat:@"%@ | result:%@", v16, v26];
    }

    v20 = v27;

    v28 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedCheckAtomic:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | no client completion block", buf, 0x20u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_successCurrentSetStatus:(id)a3 forAssetSetIdentifier:(id)a4 withAssetSetStatus:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = _MAClientLog(@"AutoSet");
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_successCurrentSetStatus:%{public}@} | assetSetIdentifier:%{public}@ | SUCCESS", &v18, 0x16u);
    }

    v13[2](v13, v12, 0);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_ERROR, "MA-auto-set{_successCurrentSetStatus:%{public}@}| assetSetIdentifier:%{public}@ | no client completion block", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_failedCurrentSetStatus:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v18);

  if (v17)
  {
    v19 = v15;
    v20 = v19;
    if (a5 && !v19)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"auto-set(%@) | assetSetIdentifier:%@", v13, v14];
      v20 = [MAAutoAssetError buildError:a5 fromOperation:v21 underlyingError:0 withDescription:v16];
    }

    v22 = _MAClientLog(@"AutoSet");
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [v20 checkedDescription];
        *buf = 138544130;
        v31 = v13;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v14;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedCurrentSetStatus:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | error:%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_failedCurrentSetStatus:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | SUCCESS", buf, 0x20u);
    }

    v17[2](v17, 0, v20);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v15)
    {
      v26 = [v15 checkedDescription];
      v27 = [v25 initWithFormat:@"%@ | error:%@", v16, v26];
    }

    else
    {
      v26 = [MAAutoAssetError summaryForCode:a5 fromOperation:v13];
      v27 = [v25 initWithFormat:@"%@ | result:%@", v16, v26];
    }

    v20 = v27;

    v28 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedCurrentSetStatus:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | no client completion block", buf, 0x20u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_autoSetAtomicOperationStatusProgress:(id)a3 withLogMessage:(id)a4 progressBlock:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  if (v9)
  {
    v9[2](v9, v7, 0);
  }

  else
  {
    v11 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 summary];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ | no client progress block | %{public}@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_successLockAtomic:(id)a3 forAssetSetIdentifier:(id)a4 lockedAtomicInstance:(id)a5 lockedAtomicEntries:(id)a6 sandboxExtension:(id)a7 sandboxExtensionPath:(id)a8 isSynchronous:(BOOL)a9 completion:(id)a10
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  v22 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v22);

  if (v21)
  {
    [MAAutoAssetAuthorizationPolicy consumeSandboxExtension:v19 forPath:v20];
    v23 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_successLockAtomic:%{public}@} | assetSetIdentifier:%{public}@ | SUCCESS", &v26, 0x16u);
    }

    v21[2](v21, v17, v18, 0);
  }

  else
  {
    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set{_successLockAtomic:%{public}@}| assetSetIdentifier:%{public}@ | no client completion block", &v26, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_failedLockAtomic:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v18);

  if (v17)
  {
    v19 = v15;
    v20 = v19;
    if (a5 && !v19)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"auto-set(%@) | assetSetIdentifier:%@", v13, v14];
      v20 = [MAAutoAssetError buildError:a5 fromOperation:v21 underlyingError:0 withDescription:v16];
    }

    v22 = _MAClientLog(@"AutoSet");
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [v20 checkedDescription];
        *buf = 138544130;
        v31 = v13;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v14;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedLockAtomic:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | error:%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_failedLockAtomic:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | SUCCESS", buf, 0x20u);
    }

    (*(v17 + 2))(v17, 0, 0, v20);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v15)
    {
      v26 = [v15 checkedDescription];
      v27 = [v25 initWithFormat:@"%@ | error:%@", v16, v26];
    }

    else
    {
      v26 = [MAAutoAssetError summaryForCode:a5 fromOperation:v13];
      v27 = [v25 initWithFormat:@"%@ | result:%@", v16, v26];
    }

    v20 = v27;

    v28 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedLockAtomic:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | no client completion block", buf, 0x20u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_successMapLockedAtomicEntry:(id)a3 forAtomicInstance:(id)a4 forMappedSelector:(id)a5 isSynchronous:(BOOL)a6 completion:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = _MAClientLog(@"AutoSet");
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 summary];
      v20 = 138543874;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_successMapLockedAtomicEntry:%{public}@} | assetSetAtomicInstance:%{public}@ | mappedSelector:%{public}@ | SUCCESS", &v20, 0x20u);
    }

    v13[2](v13, v11, v12, 0);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (v12)
      {
        v18 = [v12 summary];
      }

      else
      {
        v18 = @"N";
      }

      v20 = 138543874;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_ERROR, "MA-auto-set{_successMapLockedAtomicEntry:%{public}@}| assetSetAtomicInstance:%{public}@ | mappedSelector:%{public}@ | no client completion block", &v20, 0x20u);
      if (v12)
      {
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_failedMapLockedAtomicEntry:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v18);

  if (v17)
  {
    v19 = v15;
    v20 = v19;
    if (a5 && !v19)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"auto-set(%@) | assetSetIdentifier:%@", v13, v14];
      v20 = [MAAutoAssetError buildError:a5 fromOperation:v21 underlyingError:0 withDescription:v16];
    }

    v22 = _MAClientLog(@"AutoSet");
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [v20 checkedDescription];
        *buf = 138544130;
        v31 = v13;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v14;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedMapLockedAtomicEntry:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | error:%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v23, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_failedMapLockedAtomicEntry:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | SUCCESS", buf, 0x20u);
    }

    (*(v17 + 2))(v17, 0, 0, v20);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v15)
    {
      v26 = [v15 checkedDescription];
      v27 = [v25 initWithFormat:@"%@ | error:%@", v16, v26];
    }

    else
    {
      v26 = [MAAutoAssetError summaryForCode:a5 fromOperation:v13];
      v27 = [v25 initWithFormat:@"%@ | result:%@", v16, v26];
    }

    v20 = v27;

    v28 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedMapLockedAtomicEntry:%{public}@} | %{public}@ | assetSetIdentifier:%{public}@ | no client completion block", buf, 0x20u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_successFormSubAtomicInstance:(id)a3 formedSubAtomicInstance:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"AutoSet");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_successFormSubAtomicInstance:%{public}@} | subAtomicInstance:%{public}@ | SUCCESS", &v15, 0x16u);
    }

    v10[2](v10, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-set{_successFormSubAtomicInstance:%{public}@}| subAtomicInstance:%{public}@ | no client completion block", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedFormSubAtomicInstance:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a4 && !v17)
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"auto-set(%@)", v12];
      v18 = [MAAutoAssetError buildError:a4 fromOperation:v19 underlyingError:0 withDescription:v14];
    }

    v20 = _MAClientLog(@"AutoSet");
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [v18 checkedDescription];
        *buf = 138543874;
        v29 = v12;
        v30 = 2114;
        v31 = v14;
        v32 = 2114;
        v33 = v22;
        _os_log_impl(&dword_197AD5000, v21, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedFormSubAtomicInstance:%{public}@} | %{public}@ | error:%{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_197AD5000, v21, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_failedFormSubAtomicInstance:%{public}@} | %{public}@ | SUCCESS", buf, 0x16u);
    }

    v15[2](v15, 0, v18);
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v24 = [v13 checkedDescription];
      v25 = [v23 initWithFormat:@"%@ | error:%@", v14, v24];
    }

    else
    {
      v24 = [MAAutoAssetError summaryForCode:a4 fromOperation:v12];
      v25 = [v23 initWithFormat:@"%@ | result:%@", v14, v24];
    }

    v18 = v25;

    v26 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedFormSubAtomicInstance:%{public}@} | %{public}@ | no client completion block", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_successOperation:(id)a3 forAssetSetIdentifier:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"AutoSet");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_successOperation:%{public}@} | assetSetIdentifier:%{public}@ | SUCCESS", &v15, 0x16u);
    }

    v10[2](v10, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-set{_successOperation:%{public}@} | assetSetIdentifier:%{public}@ | no client completion block", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedOperation:(id)a3 forAssetSetIdentifier:(id)a4 withErrorCode:(int64_t)a5 withResponseError:(id)a6 description:(id)a7 isSynchronous:(BOOL)a8 completion:(id)a9
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a9;
  v16 = +[MAAutoAssetSet _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a5 && !v17)
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"auto-set(%@)", v12];
      v18 = [MAAutoAssetError buildError:a5 fromOperation:v19 underlyingError:0 withDescription:v14];
    }

    v20 = _MAClientLog(@"AutoSet");
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [v18 checkedDescription];
        *buf = 138543874;
        v29 = v12;
        v30 = 2114;
        v31 = v14;
        v32 = 2114;
        v33 = v22;
        _os_log_impl(&dword_197AD5000, v21, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedOperation:%{public}@} | %{public}@ | error:%{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_197AD5000, v21, OS_LOG_TYPE_DEFAULT, "MA-auto-set{_failedOperation:%{public}@} | %{public}@ | SUCCESS", buf, 0x16u);
    }

    v15[2](v15, 0, v18);
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v24 = [v13 checkedDescription];
      v25 = [v23 initWithFormat:@"%@ | error:%@", v14, v24];
    }

    else
    {
      v24 = [MAAutoAssetError summaryForCode:a5 fromOperation:v12];
      v25 = [v23 initWithFormat:@"%@ | result:%@", v14, v24];
    }

    v18 = v25;

    v26 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_ERROR, "MA-auto-set{_failedOperation:%{public}@} | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __38__MAAutoAssetSet_defaultDispatchQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoassetset.client" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = defaultDispatchQueue_setDefaultQueue;
  defaultDispatchQueue_setDefaultQueue = v1;
}

uint64_t __39__MAAutoAssetSet_frameworkInstanceUUID__block_invoke()
{
  frameworkInstanceUUID_setFrameworkUUID = objc_alloc_init(MEMORY[0x1E696AFB0]);

  return MEMORY[0x1EEE66BB8]();
}

@end
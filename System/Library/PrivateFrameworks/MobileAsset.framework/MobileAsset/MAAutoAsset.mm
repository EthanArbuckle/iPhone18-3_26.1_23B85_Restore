@interface MAAutoAsset
+ (BOOL)estimateEvictableBytesForSoftwareUpdateSyncWithReturnEvictableBytesPtr:(unint64_t *)ptr returnEstimateEvictableBytesErrorPtr:(id *)errorPtr;
+ (BOOL)hasStartupActivatedCompletedOnce;
+ (BOOL)resumeFromSoftwareUpdateSyncWithReturnResumeErrorPtr:(id *)ptr;
+ (BOOL)suspendForSoftwareUpdateSyncWithNeededBytes:(unint64_t)bytes returnSuspendErrorPtr:(id *)ptr;
+ (id)_privateStateQueue;
+ (id)assetSelectorForAssetTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion;
+ (id)cancelActivityForSelectorSync:(id)sync;
+ (id)defaultDispatchQueue;
+ (id)determineIfAvailableSync:(id)sync forAssetSelector:(id)selector discoveredAttributes:(id *)attributes error:(id *)error;
+ (id)eliminateAllForAssetTypeSync:(id)sync;
+ (id)eliminateAllForSelectorSync:(id)sync;
+ (id)eliminatePromotedNeverLockedForSelectorSync:(id)sync;
+ (id)endAllPreviousLocksOfReasonSync:(id)sync forClientName:(id)name forAssetSelector:(id)selector;
+ (id)endAllPreviousLocksOfSelectorSync:(id)sync forClientName:(id)name;
+ (id)endPreviousLocksOfReasonSync:(id)sync forClientName:(id)name forAssetSelector:(id)selector removingLockCount:(int64_t)count;
+ (id)frameworkInstanceUUID;
+ (id)interestInContentSync:(id)sync forAssetSelector:(id)selector withInterestPolicy:(id)policy;
+ (id)stageCancelOperationSync;
+ (id)stageDetermineAllAvailableForUpdateSync:(id)sync totalExpectedBytes:(unint64_t *)bytes error:(id *)error;
+ (id)stageDetermineAllAvailableSync:(id)sync forTargetBuildVersion:(id)version totalExpectedBytes:(unint64_t *)bytes error:(id *)error;
+ (id)stageDetermineGroupsAvailableForUpdateSync:(id)sync totalExpectedBytes:(id *)bytes error:(id *)error;
+ (id)stageDownloadGroupsSync:(id)sync awaitingAllGroups:(BOOL)groups withStagingTimeout:(int64_t)timeout byGroupAssetsStaged:(id *)staged error:(id *)error reportingProgress:(id)progress;
+ (id)stageEraseAllSync;
+ (id)stagePurgeAllSync;
+ (int64_t)suspendResumeStatusForSoftwareUpdateSyncWithReturnStatusErrorPtr:(id *)ptr;
+ (unint64_t)stageDownloadAllSync:(int64_t)sync assetsSuccessfullyStaged:(int64_t *)staged error:(id *)error reportingProgress:(id)progress;
+ (void)_sendRequestIsSynchronous:(BOOL)synchronous fromOperation:(id)operation messageName:(id)name requestInfo:(id)info completion:(id)completion;
+ (void)cancelActivityForSelector:(id)selector completion:(id)completion;
+ (void)determineIfAvailable:(id)available forAssetSelector:(id)selector completion:(id)completion;
+ (void)eliminateAllForAssetType:(id)type completion:(id)completion;
+ (void)eliminateAllForSelector:(id)selector completion:(id)completion;
+ (void)eliminatePromotedNeverLockedForSelector:(id)selector completion:(id)completion;
+ (void)endAllPreviousLocksOfReason:(id)reason forClientName:(id)name forAssetSelector:(id)selector completion:(id)completion;
+ (void)endAllPreviousLocksOfSelector:(id)selector completion:(id)completion;
+ (void)endAllPreviousLocksOfSelector:(id)selector forClientName:(id)name completion:(id)completion;
+ (void)endPreviousLocksOfReason:(id)reason forClientName:(id)name forAssetSelector:(id)selector removingLockCount:(int64_t)count completion:(id)completion;
+ (void)estimateEvictableBytesForSoftwareUpdateWithCompletion:(id)completion;
+ (void)frameworkInstanceSetLogDomain;
+ (void)interestInContent:(id)content forAssetSelector:(id)selector withInterestPolicy:(id)policy completion:(id)completion;
+ (void)logMAAutoAssetVersion;
+ (void)resumeFromSoftwareUpdateWithCompletion:(id)completion;
+ (void)stageCancelOperation:(id)operation;
+ (void)stageDetermineAllAvailable:(id)available forTargetBuildVersion:(id)version completion:(id)completion;
+ (void)stageDetermineAllAvailableForUpdate:(id)update completion:(id)completion;
+ (void)stageDetermineGroupsAvailableForUpdate:(id)update completion:(id)completion;
+ (void)stageDownloadAll:(int64_t)all reportingProgress:(id)progress completion:(id)completion;
+ (void)stageDownloadGroups:(id)groups awaitingAllGroups:(BOOL)allGroups withStagingTimeout:(int64_t)timeout reportingProgress:(id)progress completion:(id)completion;
+ (void)stageEraseAll:(id)all;
+ (void)stagePurgeAll:(id)all;
+ (void)suspendForSoftwareUpdateWithNeededBytes:(unint64_t)bytes completion:(id)completion;
+ (void)suspendResumeStatusForSoftwareUpdateWithCompletion:(id)completion;
- (MAAutoAsset)initWithCoder:(id)coder;
- (MAAutoAssetInfoInstance)infoInstance;
- (MAAutoAssetInfoInstance)lockedInfoInstance;
- (NSString)description;
- (SUCoreConnectClient)maAutoAssetSharedConnectionClient;
- (id)_cancelActivityForSelectorSync;
- (id)_eliminateAllForAssetTypeSync;
- (id)_eliminateAllForSelectorSync;
- (id)_eliminatePromotedNeverLockedForSelectorSync;
- (id)_endAllPreviousLocksOfReasonSync:(id)sync;
- (id)_endPreviousLocksOfReasonSync:(id)sync removingLockCount:(int64_t)count;
- (id)_newProxyObjectForLockProgressBlock:(id)block;
- (id)_newProxyObjectForStageProgressBlock:(id)block;
- (id)_stageCancelOperationSync;
- (id)_stageDetermineAllAvailableForUpdateSync:(id)sync totalExpectedBytes:(unint64_t *)bytes error:(id *)error;
- (id)_stageDetermineAllAvailableSync:(id)sync forTargetBuildVersion:(id)version totalExpectedBytes:(unint64_t *)bytes error:(id *)error;
- (id)_stageDetermineGroupsAvailableForUpdateSync:(id)sync totalExpectedBytes:(id *)bytes error:(id *)error;
- (id)_stageDownloadGroupsSync:(id)sync awaitingAllGroups:(BOOL)groups withStagingTimeout:(int64_t)timeout byGroupAssetsStaged:(id *)staged error:(id *)error reportingProgress:(id)progress;
- (id)_stageEraseAllSync;
- (id)_stagePurgeAllSync;
- (id)assetAttribute:(id)attribute;
- (id)checkForNewerSync:(id)sync withUsagePolicy:(id)policy withTimeout:(int64_t)timeout discoveredAttributes:(id *)attributes error:(id *)error;
- (id)continueLockUsageSync:(id)sync withUsagePolicy:(id)policy;
- (id)currentStatusSync:(id *)sync;
- (id)determineIfAvailableSync:(id)sync withTimeout:(int64_t)timeout discoveredAttributes:(id *)attributes error:(id *)error;
- (id)endLockUsageSync:(id)sync;
- (id)initForClientName:(id)name selectingAsset:(id)asset usingDesiredPolicyCategory:(id)category completingFromQueue:(id)queue error:(id *)error;
- (id)interestInContentSync:(id)sync withInterestPolicy:(id)policy;
- (id)lockContentSync:(id)sync withUsagePolicy:(id)policy withTimeout:(int64_t)timeout lockedAssetSelector:(id *)selector newerInProgress:(id *)progress error:(id *)error reportingProgress:(id)reportingProgress;
- (id)mapLockedContentSync:(id)sync error:(id *)error;
- (id)setupConnectionState;
- (id)summary;
- (void)_cancelActivityForSelectorIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_checkForNewer:(id)newer withUsagePolicy:(id)policy withTimeout:(int64_t)timeout isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_continueLockUsage:(id)usage withUsagePolicy:(id)policy isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_currentStatusIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_determineIfAvailable:(id)available withTimeout:(int64_t)timeout isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_eliminateAllForAssetTypeIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_eliminateAllForSelectorIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_eliminatePromotedNeverLockedForSelectorIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_endAllPreviousLocksOfReason:(id)reason isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_endLockUsage:(id)usage isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_endPreviousLocksOfReason:(id)reason removingLockCount:(int64_t)count isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedCancelActivity:(int64_t)activity withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedCheckForNewer:(int64_t)newer withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedContinueLockUsage:(int64_t)usage withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedCurrentStatus:(int64_t)status withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedDetermineIfAvailable:(int64_t)available withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedEliminate:(int64_t)eliminate withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedEndLockUsage:(int64_t)usage withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedInterestInContent:(int64_t)content withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedLockContent:(int64_t)content withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedMapLockedContent:(int64_t)content withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStageCancelOperation:(int64_t)operation withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStageDetermineAllAvailable:(int64_t)available withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStageDetermineGroupsAvailableForUpdate:(int64_t)update withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStageDownloadAll:(int64_t)all withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStageDownloadGroups:(int64_t)groups withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStageEraseAll:(int64_t)all withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedStagePurgeAll:(int64_t)all withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_interestInContent:(id)content withInterestPolicy:(id)policy isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_lockContent:(id)content withUsagePolicy:(id)policy withTimeout:(int64_t)timeout reportingProgress:(id)progress isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_lockContentStatusProgress:(id)progress lockForUseError:(id)error progressBlock:(id)block;
- (void)_mapLockedContent:(id)content isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageCancelOperationIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageDetermineAllAvailable:(id)available forTargetBuildVersion:(id)version isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageDetermineAllAvailableForUpdate:(id)update isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageDetermineGroupsAvailableForUpdate:(id)update isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageDownloadAll:(int64_t)all reportingProgress:(id)progress isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageDownloadAllStatusProgress:(id)progress stageProgressError:(id)error progressBlock:(id)block;
- (void)_stageDownloadGroups:(id)groups awaitingAllGroups:(BOOL)allGroups withStagingTimeout:(int64_t)timeout reportingProgress:(id)progress isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stageEraseAllIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stagePurgeAllIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successCancelActivityIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successCheckForNewer:(id)newer isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successContinueLockUsage:(id)usage isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successCurrentStatus:(id)status isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successDetermineIfAvailable:(id)available isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successEliminateIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successEndLockUsage:(id)usage isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successInterestInContent:(id)content isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successLockContent:(id)content dueToDesire:(id)desire sandboxExtension:(id)extension sandboxExtensionPath:(id)path isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successMapLockedContent:(id)content dueToDesire:(id)desire isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStageCancelOperationIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStageDetermineAllAvailable:(id)available isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStageDetermineGroupsAvailableForUpdate:(id)update isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStageDownloadAll:(id)all isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStageDownloadGroups:(id)groups isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStageEraseAllIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successStagePurgeAllIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)checkForNewer:(id)newer withUsagePolicy:(id)policy withTimeout:(int64_t)timeout completion:(id)completion;
- (void)connectToServerFrameworkCompletion:(id)completion;
- (void)continueLockUsage:(id)usage withUsagePolicy:(id)policy completion:(id)completion;
- (void)currentStatus:(id)status;
- (void)determineIfAvailable:(id)available withTimeout:(int64_t)timeout completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)endLockUsage:(id)usage completion:(id)completion;
- (void)interestInContent:(id)content withInterestPolicy:(id)policy completion:(id)completion;
- (void)lockContent:(id)content withUsagePolicy:(id)policy withTimeout:(int64_t)timeout reportingProgress:(id)progress completion:(id)completion;
- (void)mapLockedContent:(id)content completion:(id)completion;
@end

@implementation MAAutoAsset

- (id)initForClientName:(id)name selectingAsset:(id)asset usingDesiredPolicyCategory:(id)category completingFromQueue:(id)queue error:(id *)error
{
  nameCopy = name;
  assetCopy = asset;
  categoryCopy = category;
  queueCopy = queue;
  +[MAAutoAsset logMAAutoAssetVersion];
  v29.receiver = self;
  v29.super_class = MAAutoAsset;
  v17 = [(MAAutoAsset *)&v29 init];
  if (!v17)
  {
LABEL_10:
    v24 = v17;
    goto LABEL_23;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  objc_storeStrong(&v17->_autoAssetClientName, name);
  objc_storeStrong(&v17->_assetSelector, asset);
  objc_storeStrong(&v17->_updateCategoryDesiredByClient, category);
  contentLockedSelector = v17->_contentLockedSelector;
  v17->_contentLockedSelector = 0;

  contentLockedReason = v17->_contentLockedReason;
  v17->_contentLockedReason = 0;

  localContentURL = v17->_localContentURL;
  v17->_localContentURL = 0;

  assetAttributes = v17->_assetAttributes;
  v17->_assetAttributes = 0;

  +[MAAutoAssetError mapAutoAssetErrorIndications];
  if (queueCopy)
  {
    v22 = queueCopy;
  }

  else
  {
    v22 = +[MAAutoAsset defaultDispatchQueue];
  }

  completionDispatchQueue = v17->_completionDispatchQueue;
  v17->_completionDispatchQueue = v22;

  v17->_locksOfContent = 0;
  if (v17->_autoAssetClientName && v17->_assetSelector)
  {
    if (v17->_completionDispatchQueue)
    {
      if (error)
      {
        *error = 0;
      }

      goto LABEL_10;
    }

    if (error)
    {
      v26 = [MEMORY[0x1E696AD60] stringWithFormat:@"failed to initialize, missing:"];
      v27 = v26;
      if (!v17->_completionDispatchQueue)
      {
        [v26 appendString:@" completionDispatchQueue"];
      }

      *error = [MAAutoAssetError buildError:6101 fromOperation:@"auto(defaultDispatchQueue)" underlyingError:0 withDescription:v27];
    }

LABEL_18:
    v24 = 0;
    goto LABEL_23;
  }

  if (!error)
  {
    goto LABEL_18;
  }

  if (v17->_autoAssetClientName)
  {
    v25 = @"assetSelector is a required parameter that was not provided";
  }

  else if (v17->_assetSelector)
  {
    v25 = @"autoAssetClientName is a required parameter that was not provided";
  }

  else
  {
    v25 = @"autoAssetClientName and assetSelector are required parameters yet neither was provided";
  }

  [MAAutoAssetError buildError:6102 fromOperation:@"auto(initForClientName)" underlyingError:0 withDescription:v25];
  *error = v24 = 0;
LABEL_23:

  return v24;
}

- (MAAutoAsset)initWithCoder:(id)coder
{
  v26[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MAAutoAsset;
  v5 = [(MAAutoAsset *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetClientName"];
    autoAssetClientName = v5->_autoAssetClientName;
    v5->_autoAssetClientName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateCategoryDesiredByClient"];
    updateCategoryDesiredByClient = v5->_updateCategoryDesiredByClient;
    v5->_updateCategoryDesiredByClient = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentLockedSelector"];
    contentLockedSelector = v5->_contentLockedSelector;
    v5->_contentLockedSelector = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentLockedReason"];
    contentLockedReason = v5->_contentLockedReason;
    v5->_contentLockedReason = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localContentURL"];
    localContentURL = v5->_localContentURL;
    v5->_localContentURL = v16;

    v18 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v26[4] = objc_opt_class();
    v26[5] = objc_opt_class();
    v26[6] = objc_opt_class();
    v26[7] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:8];
    v20 = [v18 setWithArray:v19];

    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"assetAttributes"];
    assetAttributes = v5->_assetAttributes;
    v5->_assetAttributes = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  autoAssetClientName = [(MAAutoAsset *)self autoAssetClientName];
  [coderCopy encodeObject:autoAssetClientName forKey:@"autoAssetClientName"];

  assetSelector = [(MAAutoAsset *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  updateCategoryDesiredByClient = [(MAAutoAsset *)self updateCategoryDesiredByClient];
  [coderCopy encodeObject:updateCategoryDesiredByClient forKey:@"updateCategoryDesiredByClient"];

  contentLockedSelector = [(MAAutoAsset *)self contentLockedSelector];
  [coderCopy encodeObject:contentLockedSelector forKey:@"contentLockedSelector"];

  contentLockedReason = [(MAAutoAsset *)self contentLockedReason];
  [coderCopy encodeObject:contentLockedReason forKey:@"contentLockedReason"];

  localContentURL = [(MAAutoAsset *)self localContentURL];
  [coderCopy encodeObject:localContentURL forKey:@"localContentURL"];

  assetAttributes = [(MAAutoAsset *)self assetAttributes];
  [coderCopy encodeObject:assetAttributes forKey:@"assetAttributes"];
}

- (void)interestInContent:(id)content withInterestPolicy:(id)policy completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__MAAutoAsset_interestInContent_withInterestPolicy_completion___block_invoke;
  v10[3] = &unk_1E74CAA68;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MAAutoAsset *)self _interestInContent:content withInterestPolicy:policy isSynchronous:0 completion:v10];
}

void __63__MAAutoAsset_interestInContent_withInterestPolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MAAutoAsset_interestInContent_withInterestPolicy_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __63__MAAutoAsset_interestInContent_withInterestPolicy_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_interestInContent:(id)content withInterestPolicy:(id)policy isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  policyCopy = policy;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_197AD5000, "MAAuto:_interestInContent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__MAAutoAsset__interestInContent_withInterestPolicy_isSynchronous_completion___block_invoke;
    v18[3] = &unk_1E74C97F0;
    v18[4] = self;
    v19 = policyCopy;
    v20 = contentCopy;
    synchronousCopy = synchronous;
    v21 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v18];
  }

  else
  {
    v15 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"interestInContent"];
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto{interestInContent} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v17 = *MEMORY[0x1E69E9840];
}

void __78__MAAutoAsset__interestInContent_withInterestPolicy_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__MAAutoAsset__interestInContent_withInterestPolicy_isSynchronous_completion___block_invoke_3;
    v20[3] = &unk_1E74C97C8;
    v20[4] = *(a1 + 32);
    v21 = v3;
    v23 = *(a1 + 64);
    v22 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v20);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [MAAutoAssetInfoDesire alloc];
    v10 = [*(a1 + 32) updateCategoryDesiredByClient];
    v11 = [(MAAutoAssetInfoDesire *)v9 initWithDesiredCategory:v10 forClientAssetPolicy:*(a1 + 40) reasonDesired:*(a1 + 48) withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = +[MAAutoAsset frameworkInstanceUUID];
    v14 = [v13 UUIDString];

    v15 = [*(a1 + 32) infoInstance];
    [v12 setSafeObject:v15 forKey:@"instance"];

    [v12 setSafeObject:v11 forKey:@"desire"];
    v16 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:INTEREST_IN_CONTENT" clientID:v14 version:0 message:v12];
    v17 = __maConnectionClient;
    v18 = +[MAAutoAsset _privateStateQueue];
    v19 = *(a1 + 64);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__MAAutoAsset__interestInContent_withInterestPolicy_isSynchronous_completion___block_invoke_2;
    v24[3] = &unk_1E74C97A0;
    v24[4] = *(a1 + 32);
    v26 = v19;
    v25 = *(a1 + 56);
    [v17 connectClientSendServerMessage:v16 proxyObject:0 replyQueue:v18 isSynchronous:v19 withReply:v24];
  }
}

void __78__MAAutoAsset__interestInContent_withInterestPolicy_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v11)
  {
    if (v11)
    {
      v8 = @"failure reported by server";
      v9 = *(a1 + 32);
      v10 = 0;
    }

    else
    {
      v8 = @"no response message from server";
      v9 = *(a1 + 32);
      v10 = 6104;
    }

    [v9 _failedInterestInContent:v10 withResponseError:v11 description:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) assetSelector];
    [v6 _successInterestInContent:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (id)interestInContentSync:(id)sync withInterestPolicy:(id)policy
{
  syncCopy = sync;
  policyCopy = policy;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__5;
  v17[4] = __Block_byref_object_dispose__5;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MAAutoAsset_interestInContentSync_withInterestPolicy___block_invoke;
  v10[3] = &unk_1E74CAA90;
  v10[4] = v17;
  v10[5] = &v11;
  [(MAAutoAsset *)self _interestInContent:syncCopy withInterestPolicy:policyCopy isSynchronous:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return v8;
}

void __56__MAAutoAsset_interestInContentSync_withInterestPolicy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)checkForNewer:(id)newer withUsagePolicy:(id)policy withTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MAAutoAsset_checkForNewer_withUsagePolicy_withTimeout_completion___block_invoke;
  v12[3] = &unk_1E74CAAE0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MAAutoAsset *)self _checkForNewer:newer withUsagePolicy:policy withTimeout:timeout isSynchronous:0 completion:v12];
}

void __68__MAAutoAsset_checkForNewer_withUsagePolicy_withTimeout_completion___block_invoke(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MAAutoAsset_checkForNewer_withUsagePolicy_withTimeout_completion___block_invoke_2;
  block[3] = &unk_1E74CAAB8;
  v14 = *(a1 + 40);
  v23 = a3;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v14;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(v13, block);
}

uint64_t __68__MAAutoAsset_checkForNewer_withUsagePolicy_withTimeout_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48));
  }

  return result;
}

- (void)_checkForNewer:(id)newer withUsagePolicy:(id)policy withTimeout:(int64_t)timeout isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  newerCopy = newer;
  policyCopy = policy;
  completionCopy = completion;
  v15 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v15);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_197AD5000, "MAAuto:_checkForNewer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);

  if (completionCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83__MAAutoAsset__checkForNewer_withUsagePolicy_withTimeout_isSynchronous_completion___block_invoke;
    v20[3] = &unk_1E74CAB08;
    v20[4] = self;
    v21 = policyCopy;
    v22 = newerCopy;
    timeoutCopy = timeout;
    synchronousCopy = synchronous;
    v23 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v20];
  }

  else
  {
    v17 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"checkForNewer"];
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{checkForNewer} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __83__MAAutoAsset__checkForNewer_withUsagePolicy_withTimeout_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83__MAAutoAsset__checkForNewer_withUsagePolicy_withTimeout_isSynchronous_completion___block_invoke_3;
    v20[3] = &unk_1E74C97C8;
    v20[4] = *(a1 + 32);
    v21 = v3;
    v23 = *(a1 + 72);
    v22 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v20);
    v6 = *(a1 + 72);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [MAAutoAssetInfoDesire alloc];
    v10 = [*(a1 + 32) updateCategoryDesiredByClient];
    v11 = [(MAAutoAssetInfoDesire *)v9 initWithDesiredCategory:v10 forClientAssetPolicy:*(a1 + 40) reasonDesired:*(a1 + 48) withCheckWaitTimeout:*(a1 + 64) withLockWaitTimeout:-101 desiringProgress:0];

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = +[MAAutoAsset frameworkInstanceUUID];
    v14 = [v13 UUIDString];

    v15 = [*(a1 + 32) infoInstance];
    [v12 setSafeObject:v15 forKey:@"instance"];

    [v12 setSafeObject:v11 forKey:@"desire"];
    v16 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:CHECK_FOR_NEWER" clientID:v14 version:0 message:v12];
    v17 = __maConnectionClient;
    v18 = +[MAAutoAsset _privateStateQueue];
    v19 = *(a1 + 72);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __83__MAAutoAsset__checkForNewer_withUsagePolicy_withTimeout_isSynchronous_completion___block_invoke_2;
    v24[3] = &unk_1E74C97A0;
    v24[4] = *(a1 + 32);
    v26 = v19;
    v25 = *(a1 + 56);
    [v17 connectClientSendServerMessage:v16 proxyObject:0 replyQueue:v18 isSynchronous:v19 withReply:v24];
  }
}

void __83__MAAutoAsset__checkForNewer_withUsagePolicy_withTimeout_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v17 || v5)
  {
    if (v5)
    {
      v14 = @"failure reported by server";
      v15 = 0;
      v16 = v5;
    }

    else
    {
      v14 = @"no response message from server";
      v15 = 6104;
      v16 = 0;
    }

    [*(a1 + 32) _failedCheckForNewer:v15 withResponseError:v16 description:v14 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v17 message];
    v8 = [v7 safeObjectForKey:@"found" ofClass:objc_opt_class()];

    if (v8)
    {
      v9 = [v8 currentStatus];
      v10 = [v9 newerVersionError];

      v11 = *(a1 + 32);
      if (v10)
      {
        v12 = [v8 currentStatus];
        v13 = [v12 newerVersionError];
        [v11 _failedCheckForNewer:0 withResponseError:v13 description:@"found-information indicated error" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
      }

      else
      {
        [*(a1 + 32) _successCheckForNewer:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
      }
    }

    else
    {
      [*(a1 + 32) _failedCheckForNewer:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

- (id)checkForNewerSync:(id)sync withUsagePolicy:(id)policy withTimeout:(int64_t)timeout discoveredAttributes:(id *)attributes error:(id *)error
{
  syncCopy = sync;
  policyCopy = policy;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__MAAutoAsset_checkForNewerSync_withUsagePolicy_withTimeout_discoveredAttributes_error___block_invoke;
  v16[3] = &unk_1E74CAB30;
  v16[4] = &v29;
  v16[5] = &v23;
  v16[6] = &v17;
  [(MAAutoAsset *)self _checkForNewer:syncCopy withUsagePolicy:policyCopy withTimeout:timeout isSynchronous:1 completion:v16];
  if (attributes)
  {
    *attributes = v24[5];
  }

  if (error)
  {
    *error = v18[5];
  }

  v14 = v30[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __88__MAAutoAsset_checkForNewerSync_withUsagePolicy_withTimeout_discoveredAttributes_error___block_invoke(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = *(a1[4] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v19 = v8;

  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v9;
  v16 = v9;

  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v10;
}

- (void)determineIfAvailable:(id)available withTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__MAAutoAsset_determineIfAvailable_withTimeout_completion___block_invoke;
  v10[3] = &unk_1E74CAB80;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MAAutoAsset *)self _determineIfAvailable:available withTimeout:timeout isSynchronous:0 completion:v10];
}

void __59__MAAutoAsset_determineIfAvailable_withTimeout_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [*(a1 + 32) completionDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__MAAutoAsset_determineIfAvailable_withTimeout_completion___block_invoke_2;
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

uint64_t __59__MAAutoAsset_determineIfAvailable_withTimeout_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)_determineIfAvailable:(id)available withTimeout:(int64_t)timeout isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  completionCopy = completion;
  v12 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_197AD5000, "MAAuto:_determineIfAvailable", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__MAAutoAsset__determineIfAvailable_withTimeout_isSynchronous_completion___block_invoke;
    v17[3] = &unk_1E74CABA8;
    v17[4] = self;
    v18 = availableCopy;
    timeoutCopy = timeout;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v17];
  }

  else
  {
    v14 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"determineIfAvailable"];
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto{determineIfAvailable} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v16 = *MEMORY[0x1E69E9840];
}

void __74__MAAutoAsset__determineIfAvailable_withTimeout_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__MAAutoAsset__determineIfAvailable_withTimeout_isSynchronous_completion___block_invoke_3;
    v20[3] = &unk_1E74C97C8;
    v20[4] = *(a1 + 32);
    v21 = v3;
    v23 = *(a1 + 64);
    v22 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v20);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [MAAutoAssetInfoDesire alloc];
    v10 = [*(a1 + 32) updateCategoryDesiredByClient];
    v11 = [(MAAutoAssetInfoDesire *)v9 initWithDesiredCategory:v10 forClientAssetPolicy:0 reasonDesired:*(a1 + 40) withCheckWaitTimeout:*(a1 + 56) withLockWaitTimeout:-101 desiringProgress:0];

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = +[MAAutoAsset frameworkInstanceUUID];
    v14 = [v13 UUIDString];

    v15 = [*(a1 + 32) infoInstance];
    [v12 setSafeObject:v15 forKey:@"instance"];

    [v12 setSafeObject:v11 forKey:@"desire"];
    v16 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:DETERMINE_IF_AVAILABLE" clientID:v14 version:0 message:v12];
    v17 = __maConnectionClient;
    v18 = +[MAAutoAsset _privateStateQueue];
    v19 = *(a1 + 64);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __74__MAAutoAsset__determineIfAvailable_withTimeout_isSynchronous_completion___block_invoke_2;
    v24[3] = &unk_1E74C97A0;
    v24[4] = *(a1 + 32);
    v26 = v19;
    v25 = *(a1 + 48);
    [v17 connectClientSendServerMessage:v16 proxyObject:0 replyQueue:v18 isSynchronous:v19 withReply:v24];
  }
}

void __74__MAAutoAsset__determineIfAvailable_withTimeout_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v17 || v5)
  {
    if (v5)
    {
      v14 = @"failure reported by server";
      v15 = 0;
      v16 = v5;
    }

    else
    {
      v14 = @"no response message from server";
      v15 = 6104;
      v16 = 0;
    }

    [*(a1 + 32) _failedDetermineIfAvailable:v15 withResponseError:v16 description:v14 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v17 message];
    v8 = [v7 safeObjectForKey:@"found" ofClass:objc_opt_class()];

    if (v8)
    {
      v9 = [v8 currentStatus];
      v10 = [v9 newerVersionError];

      v11 = *(a1 + 32);
      if (v10)
      {
        v12 = [v8 currentStatus];
        v13 = [v12 newerVersionError];
        [v11 _failedDetermineIfAvailable:0 withResponseError:v13 description:@"found-information indicated error" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
      }

      else
      {
        [*(a1 + 32) _successDetermineIfAvailable:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
      }
    }

    else
    {
      [*(a1 + 32) _failedDetermineIfAvailable:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

- (id)determineIfAvailableSync:(id)sync withTimeout:(int64_t)timeout discoveredAttributes:(id *)attributes error:(id *)error
{
  syncCopy = sync;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__MAAutoAsset_determineIfAvailableSync_withTimeout_discoveredAttributes_error___block_invoke;
  v13[3] = &unk_1E74CABD0;
  v13[4] = &v26;
  v13[5] = &v20;
  v13[6] = &v14;
  [(MAAutoAsset *)self _determineIfAvailable:syncCopy withTimeout:timeout isSynchronous:1 completion:v13];
  if (attributes)
  {
    *attributes = v21[5];
  }

  if (error)
  {
    *error = v15[5];
  }

  v11 = v27[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __79__MAAutoAsset_determineIfAvailableSync_withTimeout_discoveredAttributes_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
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

+ (BOOL)hasStartupActivatedCompletedOnce
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/.nofollow/private/var/run/MobileAssetStartupActivation.doneThisBoot"];

  return v3;
}

- (void)currentStatus:(id)status
{
  statusCopy = status;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__MAAutoAsset_currentStatus___block_invoke;
  v6[3] = &unk_1E74CABF8;
  v6[4] = self;
  v7 = statusCopy;
  v5 = statusCopy;
  [(MAAutoAsset *)self _currentStatusIsSynchronous:0 completion:v6];
}

void __29__MAAutoAsset_currentStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MAAutoAsset_currentStatus___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __29__MAAutoAsset_currentStatus___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_currentStatusIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_currentStatusIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__MAAutoAsset__currentStatusIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"currentStatus"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{currentStatus} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __54__MAAutoAsset__currentStatusIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__MAAutoAsset__currentStatusIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:CURRENT_STATUS" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__MAAutoAsset__currentStatusIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __54__MAAutoAsset__currentStatusIsSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v17 || v5)
  {
    if (v5)
    {
      v13 = @"failure reported by server";
      v14 = 0;
      v15 = v5;
    }

    else
    {
      v13 = @"no response message from server";
      v14 = 6104;
      v15 = 0;
    }

    [*(a1 + 32) _failedCurrentStatus:v14 withResponseError:v15 description:v13 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    goto LABEL_14;
  }

  v7 = [v17 message];
  v8 = [v7 safeObjectForKey:@"found" ofClass:objc_opt_class()];

  if (!v8)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = @"no found-information provided by server";
LABEL_12:
    [v11 _failedCurrentStatus:6104 withResponseError:0 description:v16 isSynchronous:v10 completion:v12];
    goto LABEL_13;
  }

  v9 = [v8 currentStatus];

  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (!v9)
  {
    v16 = @"found-information yet no status provided";
    goto LABEL_12;
  }

  [v11 _successCurrentStatus:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
LABEL_13:

LABEL_14:
}

- (id)currentStatusSync:(id *)sync
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__MAAutoAsset_currentStatusSync___block_invoke;
  v6[3] = &unk_1E74CAC48;
  v6[4] = &v13;
  v6[5] = &v7;
  [(MAAutoAsset *)self _currentStatusIsSynchronous:1 completion:v6];
  if (sync)
  {
    *sync = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void __33__MAAutoAsset_currentStatusSync___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_lockContent:(id)content withUsagePolicy:(id)policy withTimeout:(int64_t)timeout reportingProgress:(id)progress isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  policyCopy = policy;
  progressCopy = progress;
  completionCopy = completion;
  v18 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v18);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v19 = _os_activity_create(&dword_197AD5000, "MAAuto:_lockContent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v19, &state);

  if (completionCopy)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __99__MAAutoAsset__lockContent_withUsagePolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke;
    v23[3] = &unk_1E74CAC98;
    timeoutCopy = timeout;
    v23[4] = self;
    v24 = policyCopy;
    v25 = contentCopy;
    v26 = progressCopy;
    synchronousCopy = synchronous;
    v27 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v23];
  }

  else
  {
    v20 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"lockContent"];
      *buf = 138543362;
      v32 = v21;
      _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_ERROR, "MA-auto{lockContent} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __99__MAAutoAsset__lockContent_withUsagePolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __99__MAAutoAsset__lockContent_withUsagePolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_3;
    v27 = &unk_1E74C97C8;
    v28 = *(a1 + 32);
    v29 = v3;
    v31 = *(a1 + 80);
    v30 = *(a1 + 64);
    v5 = MEMORY[0x19A8EC5D0](&v24);
    v6 = *(a1 + 80);
    v7 = [MAAutoAsset _privateStateQueue:v24];
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
    if (*(a1 + 72))
    {
      v9 = -2;
    }

    else
    {
      v9 = 0;
    }

    v10 = [MAAutoAssetInfoDesire alloc];
    v11 = [*(a1 + 32) updateCategoryDesiredByClient];
    v12 = [(MAAutoAssetInfoDesire *)v10 initWithDesiredCategory:v11 forClientAssetPolicy:*(a1 + 40) reasonDesired:*(a1 + 48) withCheckWaitTimeout:v9 withLockWaitTimeout:*(a1 + 72) desiringProgress:*(a1 + 56) != 0];

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = +[MAAutoAsset frameworkInstanceUUID];
    v15 = [v14 UUIDString];

    v16 = [*(a1 + 32) infoInstance];
    [v13 setSafeObject:v16 forKey:@"instance"];

    [v13 setSafeObject:v12 forKey:@"desire"];
    v17 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:LOCK_CONTENT" clientID:v15 version:0 message:v13];
    v18 = [*(a1 + 32) _newProxyObjectForLockProgressBlock:*(a1 + 56)];
    v19 = __maConnectionClient;
    v20 = +[MAAutoAsset _privateStateQueue];
    v21 = *(a1 + 80);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __99__MAAutoAsset__lockContent_withUsagePolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_2;
    v32[3] = &unk_1E74CAC70;
    v22 = *(a1 + 32);
    v33 = v18;
    v34 = v22;
    v36 = v21;
    v35 = *(a1 + 64);
    v23 = v18;
    [v19 connectClientSendServerMessage:v17 proxyObject:v23 replyQueue:v20 isSynchronous:v21 withReply:v32];
  }
}

void __99__MAAutoAsset__lockContent_withUsagePolicy_withTimeout_reportingProgress_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v19 || v5)
  {
    if (v5)
    {
      v16 = @"failure reported by server";
      v17 = 0;
      v18 = v5;
    }

    else
    {
      v16 = @"no response message from server";
      v17 = 6104;
      v18 = 0;
    }

    [*(a1 + 40) _failedLockContent:v17 withResponseError:v18 description:v16 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    v7 = [v19 message];
    v8 = [v7 safeObjectForKey:@"found" ofClass:objc_opt_class()];

    v9 = [v19 message];
    v10 = [v9 safeObjectForKey:@"desire" ofClass:objc_opt_class()];

    v11 = [v19 message];
    v12 = [v11 safeStringForKey:@"sandboxExtensionKey"];

    v13 = [v19 message];
    v14 = [v13 safeStringForKey:@"sandboxExtensionPathKey"];

    v15 = *(a1 + 40);
    if (v8)
    {
      [v15 _successLockContent:v8 dueToDesire:v10 sandboxExtension:v12 sandboxExtensionPath:v14 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }

    else
    {
      [v15 _failedLockContent:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }
  }
}

- (void)lockContent:(id)content withUsagePolicy:(id)policy withTimeout:(int64_t)timeout reportingProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  if (progressCopy)
  {
    v15 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke;
    v19[3] = &unk_1E74CACC0;
    v7 = &v20;
    v20 = progressCopy;
  }

  else
  {
    v15 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke_3;
  v17[3] = &unk_1E74CAD10;
  v17[4] = self;
  v16 = completionCopy;
  v18 = v16;
  [(MAAutoAsset *)self _lockContent:content withUsagePolicy:policy withTimeout:timeout reportingProgress:v15 isSynchronous:0 completion:v17];

  if (progressCopy)
  {
  }
}

void __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke_3(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [*(a1 + 32) completionDispatchQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke_4;
  v22[3] = &unk_1E74CACE8;
  v17 = *(a1 + 40);
  v26 = v14;
  v27 = v17;
  v28 = a3;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  dispatch_async(v16, v22);
}

uint64_t __84__MAAutoAsset_lockContent_withUsagePolicy_withTimeout_reportingProgress_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 72), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  return result;
}

- (id)lockContentSync:(id)sync withUsagePolicy:(id)policy withTimeout:(int64_t)timeout lockedAssetSelector:(id *)selector newerInProgress:(id *)progress error:(id *)error reportingProgress:(id)reportingProgress
{
  syncCopy = sync;
  policyCopy = policy;
  reportingProgressCopy = reportingProgress;
  v14 = reportingProgressCopy;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__5;
  v49 = __Block_byref_object_dispose__5;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5;
  v37 = __Block_byref_object_dispose__5;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  if (reportingProgressCopy)
  {
    v15 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __119__MAAutoAsset_lockContentSync_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error_reportingProgress___block_invoke;
    v25[3] = &unk_1E74CABF8;
    v25[4] = self;
    v18 = &v26;
    v26 = reportingProgressCopy;
  }

  else
  {
    v15 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __119__MAAutoAsset_lockContentSync_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error_reportingProgress___block_invoke_3;
  v24[3] = &unk_1E74CAD38;
  v24[4] = &v45;
  v24[5] = &v39;
  v24[6] = &v33;
  v24[7] = &v27;
  [(MAAutoAsset *)self _lockContent:syncCopy withUsagePolicy:policyCopy withTimeout:timeout reportingProgress:v15 isSynchronous:1 completion:v24, v18];
  if (selector)
  {
    *selector = v46[5];
  }

  if (progress)
  {
    *progress = v34[5];
  }

  if (error)
  {
    *error = v28[5];
  }

  v16 = v40[5];
  if (v14)
  {
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v16;
}

void __119__MAAutoAsset_lockContentSync_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error_reportingProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__MAAutoAsset_lockContentSync_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error_reportingProgress___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __119__MAAutoAsset_lockContentSync_withUsagePolicy_withTimeout_lockedAssetSelector_newerInProgress_error_reportingProgress___block_invoke_3(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v25 = v10;

  v17 = *(a1[5] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v11;
  v19 = v11;

  v20 = *(a1[6] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v12;
  v22 = v12;

  v23 = *(a1[7] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v13;
}

- (void)mapLockedContent:(id)content completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MAAutoAsset_mapLockedContent_completion___block_invoke;
  v8[3] = &unk_1E74CAA68;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MAAutoAsset *)self _mapLockedContent:content isSynchronous:0 completion:v8];
}

void __43__MAAutoAsset_mapLockedContent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MAAutoAsset_mapLockedContent_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __43__MAAutoAsset_mapLockedContent_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_mapLockedContent:(id)content isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_197AD5000, "MAAuto:_mapLockedContent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__MAAutoAsset__mapLockedContent_isSynchronous_completion___block_invoke;
    v15[3] = &unk_1E74C9840;
    v15[4] = self;
    v16 = contentCopy;
    synchronousCopy = synchronous;
    v17 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v15];
  }

  else
  {
    v12 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"mapLockedContent"];
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto{mapLockedContent} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v14 = *MEMORY[0x1E69E9840];
}

void __58__MAAutoAsset__mapLockedContent_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__MAAutoAsset__mapLockedContent_isSynchronous_completion___block_invoke_3;
    v20[3] = &unk_1E74C97C8;
    v20[4] = *(a1 + 32);
    v21 = v3;
    v23 = *(a1 + 56);
    v22 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v20);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [MAAutoAssetInfoDesire alloc];
    v10 = [*(a1 + 32) updateCategoryDesiredByClient];
    v11 = [(MAAutoAssetInfoDesire *)v9 initWithDesiredCategory:v10 forClientAssetPolicy:0 reasonDesired:*(a1 + 40) withCheckWaitTimeout:0 withLockWaitTimeout:0 desiringProgress:0];

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = +[MAAutoAsset frameworkInstanceUUID];
    v14 = [v13 UUIDString];

    v15 = [*(a1 + 32) infoInstance];
    [v12 setSafeObject:v15 forKey:@"instance"];

    [v12 setSafeObject:v11 forKey:@"desire"];
    v16 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:MAP_LOCKED_CONTENT_TO_EXCLAVE" clientID:v14 version:0 message:v12];
    v17 = __maConnectionClient;
    v18 = +[MAAutoAsset _privateStateQueue];
    v19 = *(a1 + 56);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__MAAutoAsset__mapLockedContent_isSynchronous_completion___block_invoke_2;
    v24[3] = &unk_1E74C97A0;
    v24[4] = *(a1 + 32);
    v26 = v19;
    v25 = *(a1 + 48);
    [v17 connectClientSendServerMessage:v16 proxyObject:0 replyQueue:v18 isSynchronous:v19 withReply:v24];
  }
}

void __58__MAAutoAsset__mapLockedContent_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
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

    [*(a1 + 32) _failedMapLockedContent:v13 withResponseError:v14 description:v12 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v15 message];
    v8 = [v7 safeObjectForKey:@"found" ofClass:objc_opt_class()];

    v9 = [v15 message];
    v10 = [v9 safeObjectForKey:@"desire" ofClass:objc_opt_class()];

    v11 = *(a1 + 32);
    if (v8)
    {
      [v11 _successMapLockedContent:v8 dueToDesire:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v11 _failedMapLockedContent:6104 withResponseError:0 description:@"no found-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

- (id)mapLockedContentSync:(id)sync error:(id *)error
{
  syncCopy = sync;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MAAutoAsset_mapLockedContentSync_error___block_invoke;
  v9[3] = &unk_1E74CAA90;
  v9[4] = &v16;
  v9[5] = &v10;
  [(MAAutoAsset *)self _mapLockedContent:syncCopy isSynchronous:1 completion:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __42__MAAutoAsset_mapLockedContentSync_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)continueLockUsage:(id)usage withUsagePolicy:(id)policy completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MAAutoAsset_continueLockUsage_withUsagePolicy_completion___block_invoke;
  v10[3] = &unk_1E74CAA68;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MAAutoAsset *)self _continueLockUsage:usage withUsagePolicy:policy isSynchronous:0 completion:v10];
}

void __60__MAAutoAsset_continueLockUsage_withUsagePolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MAAutoAsset_continueLockUsage_withUsagePolicy_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __60__MAAutoAsset_continueLockUsage_withUsagePolicy_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_continueLockUsage:(id)usage withUsagePolicy:(id)policy isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  policyCopy = policy;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_197AD5000, "MAAuto:_continueLockUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__MAAutoAsset__continueLockUsage_withUsagePolicy_isSynchronous_completion___block_invoke;
    v18[3] = &unk_1E74C97F0;
    v18[4] = self;
    v19 = policyCopy;
    v20 = usageCopy;
    synchronousCopy = synchronous;
    v21 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v18];
  }

  else
  {
    v15 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"continueLockUsage"];
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto{continueLockUsage} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v17 = *MEMORY[0x1E69E9840];
}

void __75__MAAutoAsset__continueLockUsage_withUsagePolicy_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__MAAutoAsset__continueLockUsage_withUsagePolicy_isSynchronous_completion___block_invoke_3;
    v20[3] = &unk_1E74C97C8;
    v20[4] = *(a1 + 32);
    v21 = v3;
    v23 = *(a1 + 64);
    v22 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v20);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [MAAutoAssetInfoDesire alloc];
    v10 = [*(a1 + 32) updateCategoryDesiredByClient];
    v11 = [(MAAutoAssetInfoDesire *)v9 initWithDesiredCategory:v10 forClientAssetPolicy:*(a1 + 40) reasonDesired:*(a1 + 48) withCheckWaitTimeout:-101 withLockWaitTimeout:-101 desiringProgress:0];

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = +[MAAutoAsset frameworkInstanceUUID];
    v14 = [v13 UUIDString];

    v15 = [*(a1 + 32) lockedInfoInstance];
    [v12 setSafeObject:v15 forKey:@"instance"];

    [v12 setSafeObject:v11 forKey:@"desire"];
    v16 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:CONTINUE_LOCK_USAGE" clientID:v14 version:0 message:v12];
    v17 = __maConnectionClient;
    v18 = +[MAAutoAsset _privateStateQueue];
    v19 = *(a1 + 64);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__MAAutoAsset__continueLockUsage_withUsagePolicy_isSynchronous_completion___block_invoke_2;
    v24[3] = &unk_1E74C97A0;
    v24[4] = *(a1 + 32);
    v26 = v19;
    v25 = *(a1 + 56);
    [v17 connectClientSendServerMessage:v16 proxyObject:0 replyQueue:v18 isSynchronous:v19 withReply:v24];
  }
}

void __75__MAAutoAsset__continueLockUsage_withUsagePolicy_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v11)
  {
    if (v11)
    {
      v8 = @"failure reported by server";
      v9 = *(a1 + 32);
      v10 = 0;
    }

    else
    {
      v8 = @"no response message from server";
      v9 = *(a1 + 32);
      v10 = 6104;
    }

    [v9 _failedContinueLockUsage:v10 withResponseError:v11 description:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) assetSelector];
    [v6 _successContinueLockUsage:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (id)continueLockUsageSync:(id)sync withUsagePolicy:(id)policy
{
  syncCopy = sync;
  policyCopy = policy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MAAutoAsset_continueLockUsageSync_withUsagePolicy___block_invoke;
  v10[3] = &unk_1E74CAD60;
  v10[4] = &v11;
  [(MAAutoAsset *)self _continueLockUsage:syncCopy withUsagePolicy:policyCopy isSynchronous:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __53__MAAutoAsset_continueLockUsageSync_withUsagePolicy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (void)endLockUsage:(id)usage completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MAAutoAsset_endLockUsage_completion___block_invoke;
  v8[3] = &unk_1E74CAA68;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MAAutoAsset *)self _endLockUsage:usage isSynchronous:0 completion:v8];
}

void __39__MAAutoAsset_endLockUsage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MAAutoAsset_endLockUsage_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __39__MAAutoAsset_endLockUsage_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)_endLockUsage:(id)usage isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_197AD5000, "MAAuto:_endLockUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__MAAutoAsset__endLockUsage_isSynchronous_completion___block_invoke;
    v15[3] = &unk_1E74C9840;
    v16 = usageCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v18 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v15];

    v12 = v16;
  }

  else
  {
    v12 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"endLockUsage"];
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto{endLockUsage} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

void __54__MAAutoAsset__endLockUsage_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__MAAutoAsset__endLockUsage_isSynchronous_completion___block_invoke_3;
    v19[3] = &unk_1E74C97C8;
    v19[4] = *(a1 + 40);
    v20 = v3;
    v22 = *(a1 + 56);
    v21 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v19);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [[MAAutoAssetInfoEnd alloc] initWithLockReason:*(a1 + 32) endingLockCount:1];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 40) lockedInfoInstance];
    [v10 setSafeObject:v13 forKey:@"instance"];

    [v10 setSafeObject:v9 forKey:@"end"];
    v14 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:END_LOCK_USAGE" clientID:v12 version:0 message:v10];
    v15 = __maConnectionClient;
    v16 = +[MAAutoAsset _privateStateQueue];
    v17 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__MAAutoAsset__endLockUsage_isSynchronous_completion___block_invoke_2;
    v23[3] = &unk_1E74C97A0;
    v18 = *(a1 + 48);
    v23[4] = *(a1 + 40);
    v25 = v17;
    v24 = v18;
    [v15 connectClientSendServerMessage:v14 proxyObject:0 replyQueue:v16 isSynchronous:v17 withReply:v23];
  }
}

void __54__MAAutoAsset__endLockUsage_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v11)
  {
    if (v11)
    {
      v8 = @"failure reported by server";
      v9 = *(a1 + 32);
      v10 = 0;
    }

    else
    {
      v8 = @"no response message from server";
      v9 = *(a1 + 32);
      v10 = 6104;
    }

    [v9 _failedEndLockUsage:v10 withResponseError:v11 description:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) assetSelector];
    [v6 _successEndLockUsage:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (id)endLockUsageSync:(id)sync
{
  syncCopy = sync;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MAAutoAsset_endLockUsageSync___block_invoke;
  v7[3] = &unk_1E74CAD60;
  v7[4] = &v8;
  [(MAAutoAsset *)self _endLockUsage:syncCopy isSynchronous:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __32__MAAutoAsset_endLockUsageSync___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

- (id)assetAttribute:(id)attribute
{
  attributeCopy = attribute;
  if (attributeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    assetAttributes = [(MAAutoAsset *)self assetAttributes];
    v6 = [assetAttributes objectForKey:attributeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  summary = [(MAAutoAsset *)self summary];
  assetAttributes = [(MAAutoAsset *)self assetAttributes];
  v6 = [v3 stringWithFormat:@"%@|attribs:%@", summary, assetAttributes];

  return v6;
}

- (id)summary
{
  updateCategoryDesiredByClient = [(MAAutoAsset *)self updateCategoryDesiredByClient];

  if (updateCategoryDesiredByClient)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    updateCategoryDesiredByClient2 = [(MAAutoAsset *)self updateCategoryDesiredByClient];
    v6 = [v4 initWithFormat:@"desired:%@", updateCategoryDesiredByClient2];
  }

  else
  {
    v6 = @"byPolicy";
  }

  contentLockedSelector = [(MAAutoAsset *)self contentLockedSelector];
  if (contentLockedSelector || ([(MAAutoAsset *)self contentLockedReason], (contentLockedSelector = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_7:
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    contentLockedSelector2 = [(MAAutoAsset *)self contentLockedSelector];
    summary = [contentLockedSelector2 summary];
    contentLockedReason = [(MAAutoAsset *)self contentLockedReason];
    localContentURL = [(MAAutoAsset *)self localContentURL];
    path = [localContentURL path];
    v14 = [v8 initWithFormat:@"locked:%@(%@)|URL:%@", summary, contentLockedReason, path];

    goto LABEL_8;
  }

  localContentURL2 = [(MAAutoAsset *)self localContentURL];

  if (localContentURL2)
  {
    goto LABEL_7;
  }

  v14 = @"unlocked";
LABEL_8:
  v15 = MEMORY[0x1E696AEC0];
  autoAssetClientName = [(MAAutoAsset *)self autoAssetClientName];
  assetSelector = [(MAAutoAsset *)self assetSelector];
  summary2 = [assetSelector summary];
  assetAttributes = [(MAAutoAsset *)self assetAttributes];
  v20 = @"(w/attribs)";
  if (!assetAttributes)
  {
    v20 = &stru_1F0C1B388;
  }

  v21 = [v15 stringWithFormat:@"%@(%@)|%@|%@%@", autoAssetClientName, summary2, v6, v14, v20];

  return v21;
}

- (void)connectToServerFrameworkCompletion:(id)completion
{
  completionCopy = completion;
  setupConnectionState = [(MAAutoAsset *)self setupConnectionState];
  (*(completion + 2))(completionCopy, setupConnectionState);
}

- (id)setupConnectionState
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MAAutoAsset_setupConnectionState__block_invoke;
  block[3] = &unk_1E74CA8F0;
  block[4] = self;
  if (setupConnectionState___maAutoAssetSharedDispatchOnce != -1)
  {
    dispatch_once(&setupConnectionState___maAutoAssetSharedDispatchOnce, block);
  }

  return setupConnectionState_error;
}

void __35__MAAutoAsset_setupConnectionState__block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v1 = +[MAAutoAsset frameworkInstanceUUID];
  v34 = [v1 UUIDString];

  v32 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v32 setWithObjects:{v31, v30, v29, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v14 = __maAutoAssetSharedClientProcessName;
  __maAutoAssetSharedClientProcessName = v13;

  __maAutoAssetSharedClientProcessID = getpid();
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:INTEREST_IN_CONTENT"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:CHECK_FOR_NEWER"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:DETERMINE_IF_AVAILABLE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:CURRENT_STATUS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:LOCK_CONTENT"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:MAP_LOCKED_CONTENT_TO_EXCLAVE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:CONTINUE_LOCK_USAGE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:END_LOCK_USAGE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:END_PREVIOUS_LOCKS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:CANCEL_ACTIVITY_FOR_SELECTOR"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:ELIMINATE_ALL_FOR_SELECTOR"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:ELIMINATE_ALL_FOR_ASSET_TYPE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO:ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:DOWNLOAD_ALL"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:CANCEL_OPERATION"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:PURGE_ALL"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE:ERASE_ALL"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU:EVICTABLE_BYTES"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU:SUSPEND"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU:RESUME"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU:STATUS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):INTEREST_IN_CONTENT"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):CHECK_FOR_NEWER"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):DETERMINE_IF_AVAILABLE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):CURRENT_STATUS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):LOCK_CONTENT"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):MAP_LOCKED_CONTENT_TO_EXCLAVE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):CONTINUE_LOCK_USAGE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):END_LOCK_USAGE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):END_PREVIOUS_LOCKS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):END_ALL_PREVIOUS_LOCKS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):CANCEL_ACTIVITY_FOR_SELECTOR"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):ELIMINATE_ALL_FOR_SELECTOR"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):ELIMINATE_ALL_FOR_ASSET_TYPE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO(REPLY):ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):DETERMINE_ALL_AVAILABLE_FOR_UPDATE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):DETERMINE_ALL_AVAILABLE"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):DOWNLOAD_GROUPS"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):DOWNLOAD_ALL"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):CANCEL_OPERATION"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):PURGE_ALL"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-STAGE(REPLY):ERASE_ALL"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU(REPLY):EVICTABLE_BYTES"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU(REPLY):SUSPEND"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU(REPLY):RESUME"];
  [MEMORY[0x1E69D3868] setAllowlistedClasses:v12 forKey:@"MA-AUTO-SUSPEND-RESUME-SU(REPLY):STATUS"];
  v15 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "MA-auto{connectToServerFrameworkCompletion} set all the allowlisted classes for the client policy for all delegate callbacks", buf, 2u);
  }

  v16 = [objc_alloc(MEMORY[0x1E69D3868]) initForServiceName:@"com.apple.mobileasset.autoasset" delegate:*(a1 + 32) clientID:v34];
  v17 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v19 = [v17 setWithArray:v18];
  [v16 setProxyObjectClasses:v19];

  v20 = [objc_alloc(MEMORY[0x1E69D3860]) initWithClientPolicy:v16];
  v21 = __maConnectionClient;
  __maConnectionClient = v20;

  if (__maConnectionClient)
  {
    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "MA-auto{connectToServerFrameworkCompletion} connection client initialized for server connection";
      v24 = v22;
      v25 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_197AD5000, v24, v25, v23, buf, 2u);
    }
  }

  else
  {
    v26 = [MAAutoAssetError buildError:6104 fromOperation:@"auto(connectToServerFrameworkCompletion)" underlyingError:0 withDescription:@"unable to create shared SUCoreConnectClient for the client process"];
    v27 = setupConnectionState_error;
    setupConnectionState_error = v26;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "MA-auto{connectToServerFrameworkCompletion} unable to create shared SUCoreConnectClient for the client process";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_newProxyObjectForLockProgressBlock:(id)block
{
  blockCopy = block;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3042000000;
  v15[3] = __Block_byref_object_copy__708;
  v15[4] = __Block_byref_object_dispose__709;
  objc_initWeak(&v16, self);
  v5 = objc_alloc(MEMORY[0x1E69D3870]);
  v6 = +[MAAutoAsset frameworkInstanceUUID];
  uUIDString = [v6 UUIDString];
  v8 = +[MAAutoAsset _privateStateQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__MAAutoAsset__newProxyObjectForLockProgressBlock___block_invoke;
  v12[3] = &unk_1E74CAD88;
  v14 = v15;
  v9 = blockCopy;
  v13 = v9;
  v10 = [v5 initWithClientID:uUIDString completionQueue:v8 genericBlock:v12];

  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&v16);

  return v10;
}

void __51__MAAutoAsset__newProxyObjectForLockProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (!WeakRetained)
  {
    v6 = _MAClientLog(@"Auto");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v7 = "MA-auto{_newProxyObjectForLockProgressBlock} | Unable to capture retained strong self reference";
    v8 = &v11;
LABEL_11:
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = _MAClientLog(@"Auto");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 0;
    v7 = "MA-auto{_newProxyObjectForLockProgressBlock} | no progress provided | no progress reported to client at this time";
    v8 = &v10;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = "MA-auto{_newProxyObjectForLockProgressBlock} | no progress provided | unexpected type for statusWithProgress";
      v8 = &v9;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  [WeakRetained _lockContentStatusProgress:v3 lockForUseError:0 progressBlock:*(a1 + 32)];
LABEL_13:
}

- (id)_newProxyObjectForStageProgressBlock:(id)block
{
  blockCopy = block;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3042000000;
  v15[3] = __Block_byref_object_copy__708;
  v15[4] = __Block_byref_object_dispose__709;
  objc_initWeak(&v16, self);
  v5 = objc_alloc(MEMORY[0x1E69D3870]);
  v6 = +[MAAutoAsset frameworkInstanceUUID];
  uUIDString = [v6 UUIDString];
  v8 = +[MAAutoAsset _privateStateQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__MAAutoAsset__newProxyObjectForStageProgressBlock___block_invoke;
  v12[3] = &unk_1E74CAD88;
  v14 = v15;
  v9 = blockCopy;
  v13 = v9;
  v10 = [v5 initWithClientID:uUIDString completionQueue:v8 genericBlock:v12];

  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&v16);

  return v10;
}

void __52__MAAutoAsset__newProxyObjectForStageProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (!WeakRetained)
  {
    v6 = _MAClientLog(@"Auto");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v7 = "MA-auto(staging-client){_newProxyObjectForStageProgressBlock} | Unable to capture retained strong self reference";
    v8 = &v11;
LABEL_11:
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_12;
  }

  if (!v3)
  {
    v6 = _MAClientLog(@"Auto");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 0;
    v7 = "MA-auto(staging-client){_newProxyObjectForStageProgressBlock} | no progress provided | no progress reported to staging-client at this time";
    v8 = &v10;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = "MA-auto(staging-client){_newProxyObjectForStageProgressBlock} | no progress provided | unexpected type for statusWithProgress";
      v8 = &v9;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  [WeakRetained _stageDownloadAllStatusProgress:v3 stageProgressError:0 progressBlock:*(a1 + 32)];
LABEL_13:
}

- (void)_successInterestInContent:(id)content isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  v10 = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [contentCopy summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "MA-auto{_successInterestInContent} | %{public}@ | SUCCESS", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, contentCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      summary2 = [contentCopy summary];
      v14 = 138543362;
      v15 = summary2;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto{_successInterestInContent} | no client completion block | %{public}@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedInterestInContent:(int64_t)content withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (content && !v14)
    {
      v15 = [MAAutoAssetError buildError:content fromOperation:@"auto(interestInContent)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{_failedInterestInContent} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedInterestInContent} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:content fromOperation:@"interestInContent"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto{_failedInterestInContent} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successCheckForNewer:(id)newer isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  newerCopy = newer;
  completionCopy = completion;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  if (completionCopy)
  {
    localContentURL = [(MAAutoAsset *)self localContentURL];

    if (!localContentURL)
    {
      currentStatus = [newerCopy currentStatus];
      newerVersionAttributes = [currentStatus newerVersionAttributes];
      [(MAAutoAsset *)self setAssetAttributes:newerVersionAttributes];
    }

    currentStatus2 = [newerCopy currentStatus];
    newerVersionAttributes2 = [currentStatus2 newerVersionAttributes];

    v15 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      summary = [newerCopy summary];
      v22 = 138543362;
      v23 = summary;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "MA-auto{_successCheckForNewer} | %{public}@ | SUCCESS", &v22, 0xCu);
    }

    v17 = newerVersionAttributes2 != 0;

    fullAssetSelector = [newerCopy fullAssetSelector];
    currentStatus3 = [newerCopy currentStatus];
    newerVersionAttributes3 = [currentStatus3 newerVersionAttributes];
    completionCopy[2](completionCopy, fullAssetSelector, v17, newerVersionAttributes3, 0);

    goto LABEL_9;
  }

  fullAssetSelector = _MAClientLog(@"Auto");
  if (os_log_type_enabled(fullAssetSelector, OS_LOG_TYPE_ERROR))
  {
    currentStatus3 = [newerCopy summary];
    v22 = 138543362;
    v23 = currentStatus3;
    _os_log_impl(&dword_197AD5000, fullAssetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_successCheckForNewer} | no client completion block | %{public}@", &v22, 0xCu);
LABEL_9:
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_failedCheckForNewer:(int64_t)newer withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    assetSelector = [(MAAutoAsset *)self assetSelector];
    v16 = errorCopy;
    v17 = v16;
    if (newer && !v16)
    {
      v17 = [MAAutoAssetError buildError:newer fromOperation:@"auto(checkForNewer)" underlyingError:0 withDescription:descriptionCopy];
    }

    v18 = _MAClientLog(@"Auto");
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v17 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto{_failedCheckForNewer} | %{public}@ | error:%{public}@", buf, 0x16u);
      }

      v19 = assetSelector;
      assetSelector = 0;
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedCheckForNewer} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, assetSelector, 0, 0, v17);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:newer fromOperation:@"checkForNewer"];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    assetSelector = v23;

    v17 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = assetSelector;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{_failedCheckForNewer} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successDetermineIfAvailable:(id)available isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  completionCopy = completion;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  localContentURL = [(MAAutoAsset *)self localContentURL];

  if (!localContentURL)
  {
    assetAttributes = [availableCopy assetAttributes];
    [(MAAutoAsset *)self setAssetAttributes:assetAttributes];

    localContentURL2 = [availableCopy localContentURL];
    [(MAAutoAsset *)self setLocalContentURL:localContentURL2];
  }

  v13 = _MAClientLog(@"Auto");
  fullAssetSelector = v13;
  if (completionCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      summary = [availableCopy summary];
      v18 = 138543362;
      v19 = summary;
      _os_log_impl(&dword_197AD5000, fullAssetSelector, OS_LOG_TYPE_DEFAULT, "MA-auto{_successDetermineIfAvailable} | %{public}@ | SUCCESS", &v18, 0xCu);
    }

    fullAssetSelector = [availableCopy fullAssetSelector];
    assetAttributes2 = [availableCopy assetAttributes];
    completionCopy[2](completionCopy, fullAssetSelector, assetAttributes2, 0);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    assetAttributes2 = [availableCopy summary];
    v18 = 138543362;
    v19 = assetAttributes2;
    _os_log_impl(&dword_197AD5000, fullAssetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_successDetermineIfAvailable} | no client completion block | %{public}@", &v18, 0xCu);
LABEL_9:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_failedDetermineIfAvailable:(int64_t)available withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    assetSelector = [(MAAutoAsset *)self assetSelector];
    v16 = errorCopy;
    v17 = v16;
    if (available && !v16)
    {
      v17 = [MAAutoAssetError buildError:available fromOperation:@"auto(determineIfAvailable)" underlyingError:0 withDescription:descriptionCopy];
    }

    v18 = _MAClientLog(@"Auto");
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v17 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto{_failedDetermineIfAvailable} | %{public}@ | error:%{public}@", buf, 0x16u);
      }

      v19 = assetSelector;
      assetSelector = 0;
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedDetermineIfAvailable} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, assetSelector, 0, v17);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:available fromOperation:@"determineIfAvailable"];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    assetSelector = v23;

    v17 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = assetSelector;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{_failedDetermineIfAvailable} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successCurrentStatus:(id)status isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  if (completionCopy)
  {
    currentStatus = [statusCopy currentStatus];
    completionCopy[2](completionCopy, currentStatus, 0);
  }

  else
  {
    currentStatus = _MAClientLog(@"Auto");
    if (os_log_type_enabled(currentStatus, OS_LOG_TYPE_ERROR))
    {
      summary = [statusCopy summary];
      v12 = 138543362;
      v13 = summary;
      _os_log_impl(&dword_197AD5000, currentStatus, OS_LOG_TYPE_ERROR, "MA-auto{_successCurrentStatus} | no client completion block | %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_failedCurrentStatus:(int64_t)status withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (status && !v14)
    {
      v15 = [MAAutoAssetError buildError:status fromOperation:@"auto(currentStatus)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{_failedCurrentStatus} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedCurrentStatus} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:status fromOperation:@"currentStatus"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto{_failedCurrentStatus} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_lockContentStatusProgress:(id)progress lockForUseError:(id)error progressBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  blockCopy = block;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  if (blockCopy)
  {
    blockCopy[2](blockCopy, progressCopy, 0);
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [progressCopy summary];
      v12 = 138543362;
      v13 = summary;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "MA-auto{_lockContentStatusProgress} | no client progress block | %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_successLockContent:(id)content dueToDesire:(id)desire sandboxExtension:(id)extension sandboxExtensionPath:(id)path isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  extensionCopy = extension;
  pathCopy = path;
  completionCopy = completion;
  desireCopy = desire;
  v18 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v18);

  currentStatus = [contentCopy currentStatus];
  newerVersionAttributes = [currentStatus newerVersionAttributes];
  [(MAAutoAsset *)self setAssetAttributes:newerVersionAttributes];

  fullAssetSelector = [contentCopy fullAssetSelector];
  [(MAAutoAsset *)self setContentLockedSelector:fullAssetSelector];

  desireReason = [desireCopy desireReason];

  [(MAAutoAsset *)self setContentLockedReason:desireReason];
  localContentURL = [contentCopy localContentURL];
  [(MAAutoAsset *)self setLocalContentURL:localContentURL];

  [(MAAutoAsset *)self setLocksOfContent:[(MAAutoAsset *)self locksOfContent]+ 1];
  if (completionCopy)
  {
    [MAAutoAssetAuthorizationPolicy consumeSandboxExtension:extensionCopy forPath:pathCopy];
    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      summary = [contentCopy summary];
      v29 = 138543362;
      v30 = summary;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_DEFAULT, "MA-auto{_successLockContent} | %{public}@ | SUCCESS", &v29, 0xCu);
    }

    fullAssetSelector2 = [contentCopy fullAssetSelector];
    localContentURL2 = [contentCopy localContentURL];
    (*(completionCopy + 2))(completionCopy, fullAssetSelector2, 1, localContentURL2, 0, 0);
    goto LABEL_7;
  }

  fullAssetSelector2 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(fullAssetSelector2, OS_LOG_TYPE_ERROR))
  {
    localContentURL2 = [contentCopy summary];
    v29 = 138543362;
    v30 = localContentURL2;
    _os_log_impl(&dword_197AD5000, fullAssetSelector2, OS_LOG_TYPE_ERROR, "MA-auto{_successLockContent} | no client completion block | %{public}@", &v29, 0xCu);
LABEL_7:
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_failedLockContent:(int64_t)content withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    v15 = errorCopy;
    v16 = v15;
    if (content && !v15)
    {
      v16 = [MAAutoAssetError buildError:content fromOperation:@"auto(lockContent)" underlyingError:0 withDescription:descriptionCopy];
    }

    v17 = _MAClientLog(@"Auto");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v16 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "MA-auto{_failedLockContent} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedLockContent} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    assetSelector = [(MAAutoAsset *)self assetSelector];
    (*(completionCopy + 2))(completionCopy, assetSelector, 0, 0, 0, v16);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v22 = [v20 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:content fromOperation:@"lockContent"];
      v22 = [v20 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v16 = v22;

    assetSelector = _MAClientLog(@"Auto");
    if (os_log_type_enabled(assetSelector, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_197AD5000, assetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_failedLockContent} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successMapLockedContent:(id)content dueToDesire:(id)desire isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  completionCopy = completion;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = _MAClientLog(@"Auto");
  fullAssetSelector = v10;
  if (completionCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      summary = [contentCopy summary];
      v15 = 138543362;
      v16 = summary;
      _os_log_impl(&dword_197AD5000, fullAssetSelector, OS_LOG_TYPE_DEFAULT, "MA-auto{_successMapLockedContent} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    fullAssetSelector = [contentCopy fullAssetSelector];
    completionCopy[2](completionCopy, fullAssetSelector, 0);
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    summary2 = [contentCopy summary];
    v15 = 138543362;
    v16 = summary2;
    _os_log_impl(&dword_197AD5000, fullAssetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_successMapLockedContent} | no client completion block | %{public}@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedMapLockedContent:(int64_t)content withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (content && !v14)
    {
      v15 = [MAAutoAssetError buildError:content fromOperation:@"auto(lockContent)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{_failedMapLockedContent} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedMapLockedContent} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:content fromOperation:@"mapLockedContent"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto{_failedMapLockedContent} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successContinueLockUsage:(id)usage isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  v10 = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [usageCopy summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "MA-auto{_successContinueLockUsage} | %{public}@ | SUCCESS", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, usageCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      summary2 = [usageCopy summary];
      v14 = 138543362;
      v15 = summary2;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto{_successContinueLockUsage} | no client completion block | %{public}@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedContinueLockUsage:(int64_t)usage withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    v15 = errorCopy;
    v16 = v15;
    if (usage && !v15)
    {
      v16 = [MAAutoAssetError buildError:usage fromOperation:@"auto(continueLockUsage)" underlyingError:0 withDescription:descriptionCopy];
    }

    v17 = _MAClientLog(@"Auto");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v16 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "MA-auto{_failedContinueLockUsage} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedContinueLockUsage} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    assetSelector = [(MAAutoAsset *)self assetSelector];
    completionCopy[2](completionCopy, assetSelector, v16);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v22 = [v20 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:usage fromOperation:@"continueLockUsage"];
      v22 = [v20 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v16 = v22;

    assetSelector = _MAClientLog(@"Auto");
    if (os_log_type_enabled(assetSelector, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_197AD5000, assetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_failedContinueLockUsage} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successEndLockUsage:(id)usage isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  usageCopy = usage;
  completionCopy = completion;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  if (completionCopy)
  {
    locksOfContent = [(MAAutoAsset *)self locksOfContent];
    locksOfContent2 = [(MAAutoAsset *)self locksOfContent];
    if (locksOfContent < 1)
    {
      if (!locksOfContent2)
      {
LABEL_12:
        if ([(MAAutoAsset *)self locksOfContent]<= 0)
        {
          [(MAAutoAsset *)self setLocalContentURL:0];
          [(MAAutoAsset *)self setContentLockedSelector:0];
          [(MAAutoAsset *)self setContentLockedReason:0];
        }

        v18 = _MAClientLog(@"Auto");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          summary = [usageCopy summary];
          v21 = 138543362;
          v22 = summary;
          _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto{_successEndLockUsage} | %{public}@ | SUCCESS", &v21, 0xCu);
        }

        completionCopy[2](completionCopy, usageCopy, 0);
        goto LABEL_17;
      }

      v16 = _MAClientLog(@"Auto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        summary2 = [usageCopy summary];
        v21 = 138543618;
        v22 = summary2;
        v23 = 1024;
        locksOfContent3 = [(MAAutoAsset *)self locksOfContent];
        _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_ERROR, "MA-auto{_successEndLockUsage} | %{public}@ | end lock when locksOfContent=%d | cleared locksOfContent", &v21, 0x12u);
      }

      selfCopy2 = self;
      v12 = 0;
    }

    else
    {
      v12 = (locksOfContent2 - 1);
      selfCopy2 = self;
    }

    [(MAAutoAsset *)selfCopy2 setLocksOfContent:v12];
    goto LABEL_12;
  }

  v14 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    summary3 = [usageCopy summary];
    v21 = 138543362;
    v22 = summary3;
    _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto{_successEndLockUsage} | no client completion block | %{public}@", &v21, 0xCu);
  }

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_failedEndLockUsage:(int64_t)usage withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    v15 = errorCopy;
    v16 = v15;
    if (usage && !v15)
    {
      v16 = [MAAutoAssetError buildError:usage fromOperation:@"auto(endLockUsage)" underlyingError:0 withDescription:descriptionCopy];
    }

    v17 = _MAClientLog(@"Auto");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v16 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "MA-auto{_failedEndLockUsage} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedEndLockUsage} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    assetSelector = [(MAAutoAsset *)self assetSelector];
    completionCopy[2](completionCopy, assetSelector, v16);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v22 = [v20 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:usage fromOperation:@"endLockUsage"];
      v22 = [v20 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v16 = v22;

    assetSelector = _MAClientLog(@"Auto");
    if (os_log_type_enabled(assetSelector, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_197AD5000, assetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_failedEndLockUsage} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successCancelActivityIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MAClientLog(@"Auto");
  assetSelector2 = v7;
  if (completionCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assetSelector = [(MAAutoAsset *)self assetSelector];
      summary = [assetSelector summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, assetSelector2, OS_LOG_TYPE_DEFAULT, "MA-auto{_successCancelActivity} | %{public}@ | SUCCESS", &v14, 0xCu);
    }

    assetSelector2 = [(MAAutoAsset *)self assetSelector];
    completionCopy[2](completionCopy, assetSelector2, 0);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    assetSelector3 = [(MAAutoAsset *)self assetSelector];
    summary2 = [assetSelector3 summary];
    v14 = 138543362;
    v15 = summary2;
    _os_log_impl(&dword_197AD5000, assetSelector2, OS_LOG_TYPE_ERROR, "MA-auto{_successCancelActivity} | no client completion block | %{public}@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedCancelActivity:(int64_t)activity withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    v15 = errorCopy;
    v16 = v15;
    if (activity && !v15)
    {
      v16 = [MAAutoAssetError buildError:activity fromOperation:@"auto(cancelActivity)" underlyingError:0 withDescription:descriptionCopy];
    }

    v17 = _MAClientLog(@"Auto");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v16 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "MA-auto{_failedCancelActivity} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedCancelActivity} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    assetSelector = [(MAAutoAsset *)self assetSelector];
    completionCopy[2](completionCopy, assetSelector, v16);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v22 = [v20 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:activity fromOperation:@"cancelActivity"];
      v22 = [v20 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v16 = v22;

    assetSelector = _MAClientLog(@"Auto");
    if (os_log_type_enabled(assetSelector, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_197AD5000, assetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_failedCancelActivity} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successEliminateIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MAClientLog(@"Auto");
  assetSelector2 = v7;
  if (completionCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assetSelector = [(MAAutoAsset *)self assetSelector];
      summary = [assetSelector summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, assetSelector2, OS_LOG_TYPE_DEFAULT, "MA-auto{_successEliminate} | %{public}@ | SUCCESS", &v14, 0xCu);
    }

    assetSelector2 = [(MAAutoAsset *)self assetSelector];
    completionCopy[2](completionCopy, assetSelector2, 0);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    assetSelector3 = [(MAAutoAsset *)self assetSelector];
    summary2 = [assetSelector3 summary];
    v14 = 138543362;
    v15 = summary2;
    _os_log_impl(&dword_197AD5000, assetSelector2, OS_LOG_TYPE_ERROR, "MA-auto{_successEliminate} | no client completion block | %{public}@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedEliminate:(int64_t)eliminate withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v14 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v14);

  if (completionCopy)
  {
    v15 = errorCopy;
    v16 = v15;
    if (eliminate && !v15)
    {
      v16 = [MAAutoAssetError buildError:eliminate fromOperation:@"auto(eliminateAll)" underlyingError:0 withDescription:descriptionCopy];
    }

    v17 = _MAClientLog(@"Auto");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v16 checkedSummary];
        *buf = 138543618;
        v26 = descriptionCopy;
        v27 = 2114;
        v28 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "MA-auto{_failedEliminate} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "MA-auto{_failedEliminate} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    assetSelector = [(MAAutoAsset *)self assetSelector];
    completionCopy[2](completionCopy, assetSelector, v16);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v22 = [v20 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:eliminate fromOperation:@"eliminateAll"];
      v22 = [v20 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v16 = v22;

    assetSelector = _MAClientLog(@"Auto");
    if (os_log_type_enabled(assetSelector, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_197AD5000, assetSelector, OS_LOG_TYPE_ERROR, "MA-auto{_failedEliminate} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_successStageDetermineGroupsAvailableForUpdate:(id)update isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  byGroupAvailableForStagingAttributes = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [updateCopy summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, byGroupAvailableForStagingAttributes, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStageDetermineGroupsAvailableForUpdate} | staging:%{public}@ | SUCCESS", &v14, 0xCu);
    }

    byGroupAvailableForStagingAttributes = [updateCopy byGroupAvailableForStagingAttributes];
    byGroupTotalExpectedBytes = [updateCopy byGroupTotalExpectedBytes];
    completionCopy[2](completionCopy, byGroupAvailableForStagingAttributes, byGroupTotalExpectedBytes, 0);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    byGroupTotalExpectedBytes = [updateCopy summary];
    v14 = 138543362;
    v15 = byGroupTotalExpectedBytes;
    _os_log_impl(&dword_197AD5000, byGroupAvailableForStagingAttributes, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStageDetermineGroupsAvailableForUpdate} | no client completion block | staging:%{public}@", &v14, 0xCu);
LABEL_7:
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedStageDetermineGroupsAvailableForUpdate:(int64_t)update withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (update && !v14)
    {
      v15 = [MAAutoAssetError buildError:update fromOperation:@"auto(stageDetermineAllAvailable)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDetermineGroupsAvailableForUpdate} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStageDetermineGroupsAvailableForUpdate} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:update fromOperation:@"stageDetermineGroupsAvailableForStaging"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDetermineGroupsAvailableForUpdate} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successStageDetermineAllAvailable:(id)available isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  allAvailableForStagingAttributes = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [availableCopy summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, allAvailableForStagingAttributes, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStageDetermineAllAvailable} | staging:%{public}@ | SUCCESS", &v14, 0xCu);
    }

    allAvailableForStagingAttributes = [availableCopy allAvailableForStagingAttributes];
    completionCopy[2](completionCopy, allAvailableForStagingAttributes, [availableCopy totalExpectedBytes], 0);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    summary2 = [availableCopy summary];
    v14 = 138543362;
    v15 = summary2;
    _os_log_impl(&dword_197AD5000, allAvailableForStagingAttributes, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStageDetermineAllAvailable} | no client completion block | staging:%{public}@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedStageDetermineAllAvailable:(int64_t)available withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (available && !v14)
    {
      v15 = [MAAutoAssetError buildError:available fromOperation:@"auto(stageDetermineAllAvailable)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDetermineAllAvailable} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStageDetermineAllAvailable} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:available fromOperation:@"stageDetermineAllAvailable"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDetermineAllAvailable} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_stageDownloadAllStatusProgress:(id)progress stageProgressError:(id)error progressBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  blockCopy = block;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  if (blockCopy)
  {
    blockCopy[2](blockCopy, progressCopy, 0);
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [progressCopy summary];
      v12 = 138543362;
      v13 = summary;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_stageDownloadAllStatusProgress} | no client progress block | %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_successStageDownloadGroups:(id)groups isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  byGroupTotalStagedBytes = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [groupsCopy summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, byGroupTotalStagedBytes, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStageDownloadGroups} | staged:%{public}@ | SUCCESS", &v14, 0xCu);
    }

    byGroupTotalStagedBytes = [groupsCopy byGroupTotalStagedBytes];
    byGroupAssetsSuccessfullyStaged = [groupsCopy byGroupAssetsSuccessfullyStaged];
    completionCopy[2](completionCopy, byGroupTotalStagedBytes, byGroupAssetsSuccessfullyStaged, 0);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    byGroupAssetsSuccessfullyStaged = [groupsCopy summary];
    v14 = 138543362;
    v15 = byGroupAssetsSuccessfullyStaged;
    _os_log_impl(&dword_197AD5000, byGroupTotalStagedBytes, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStageDownloadGroups} | no client completion block | staged:%{public}@", &v14, 0xCu);
LABEL_7:
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedStageDownloadGroups:(int64_t)groups withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (groups && !v14)
    {
      v15 = [MAAutoAssetError buildError:groups fromOperation:@"auto(stageDownloadGroups)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDownloadGroups} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStageDownloadGroups} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:groups fromOperation:@"stageDownloadGroups"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDownloadGroups} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successStageDownloadAll:(id)all isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  allCopy = all;
  completionCopy = completion;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  v10 = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      summary = [allCopy summary];
      v14 = 138543362;
      v15 = summary;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStageDownloadAll} | staged:%{public}@ | SUCCESS", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, [allCopy totalStagedBytes], objc_msgSend(allCopy, "assetsSuccessfullyStaged"), 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      summary2 = [allCopy summary];
      v14 = 138543362;
      v15 = summary2;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStageDownloadAll} | no client completion block | staged:%{public}@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedStageDownloadAll:(int64_t)all withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (all && !v14)
    {
      v15 = [MAAutoAssetError buildError:all fromOperation:@"auto(stageDownloadAll)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDownloadAll} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStageDownloadAll} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:all fromOperation:@"stageDownloadAll"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageDownloadAll} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successStageCancelOperationIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  completionCopy = completion;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MAClientLog(@"Auto");
  v7 = v6;
  if (completionCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStageCancelOperation} | SUCCESS", v8, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStageCancelOperation} | no client completion block", buf, 2u);
    }
  }
}

- (void)_failedStageCancelOperation:(int64_t)operation withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (operation && !v14)
    {
      v15 = [MAAutoAssetError buildError:operation fromOperation:@"auto(stageCancelOperation)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageCancelOperation} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStageCancelOperation} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:operation fromOperation:@"stageCancelOperation"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageCancelOperation} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successStagePurgeAllIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  completionCopy = completion;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MAClientLog(@"Auto");
  v7 = v6;
  if (completionCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStagePurgeAll} | SUCCESS", v8, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStagePurgeAll} | no client completion block", buf, 2u);
    }
  }
}

- (void)_failedStagePurgeAll:(int64_t)all withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (all && !v14)
    {
      v15 = [MAAutoAssetError buildError:all fromOperation:@"auto(stagePurgeAll)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStagePurgeAll} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStagePurgeAll} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:all fromOperation:@"stagePurgeAll"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStagePurgeAll} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_successStageEraseAllIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  completionCopy = completion;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MAClientLog(@"Auto");
  v7 = v6;
  if (completionCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_successStageEraseAll} | SUCCESS", v8, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_successStageEraseAll} | no client completion block", buf, 2u);
    }
  }
}

- (void)_failedStageEraseAll:(int64_t)all withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v13);

  if (completionCopy)
  {
    v14 = errorCopy;
    v15 = v14;
    if (all && !v14)
    {
      v15 = [MAAutoAssetError buildError:all fromOperation:@"auto(stageEraseAll)" underlyingError:0 withDescription:descriptionCopy];
    }

    v16 = _MAClientLog(@"Auto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        checkedSummary = [v15 checkedSummary];
        *buf = 138543618;
        v25 = descriptionCopy;
        v26 = 2114;
        v27 = checkedSummary;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageEraseAll} | %{public}@ | error:%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = descriptionCopy;
      _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "MA-auto(staging-client){_failedStageEraseAll} | %{public}@ | SUCCESS", buf, 0xCu);
    }

    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v21 = [v19 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:all fromOperation:@"stageEraseAll"];
      v21 = [v19 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v15 = v21;

    v22 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){_failedStageEraseEraseAll} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

+ (void)interestInContent:(id)content forAssetSelector:(id)selector withInterestPolicy:(id)policy completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  selectorCopy = selector;
  policyCopy = policy;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  if (completionCopy)
  {
    v25 = 0;
    v14 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+interestInContent}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v25];
    v15 = v25;
    if (v15)
    {
      v16 = +[MAAutoAsset _privateStateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__MAAutoAsset_interestInContent_forAssetSelector_withInterestPolicy_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v17 = &v22;
      v22 = completionCopy;
      v20 = selectorCopy;
      v21 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __80__MAAutoAsset_interestInContent_forAssetSelector_withInterestPolicy_completion___block_invoke;
      v23[3] = &unk_1E74CADB0;
      v17 = &v24;
      v24 = completionCopy;
      [v14 _interestInContent:contentCopy withInterestPolicy:policyCopy isSynchronous:0 completion:v23];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v15 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+interestInContent"];
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto{+interestInContent} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __80__MAAutoAsset_interestInContent_forAssetSelector_withInterestPolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MAAutoAsset_interestInContent_forAssetSelector_withInterestPolicy_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __80__MAAutoAsset_interestInContent_forAssetSelector_withInterestPolicy_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

+ (id)interestInContentSync:(id)sync forAssetSelector:(id)selector withInterestPolicy:(id)policy
{
  syncCopy = sync;
  policyCopy = policy;
  selectorCopy = selector;
  v13 = 0;
  v10 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+interestInContentSync}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v13];

  v11 = v13;
  if (!v11)
  {
    v11 = [v10 interestInContentSync:syncCopy withInterestPolicy:policyCopy];
  }

  return v11;
}

+ (void)determineIfAvailable:(id)available forAssetSelector:(id)selector completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  selectorCopy = selector;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (completionCopy)
  {
    v22 = 0;
    v11 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+determineIfAvailable}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v22];
    v12 = v22;
    if (v12)
    {
      v13 = +[MAAutoAsset _privateStateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__MAAutoAsset_determineIfAvailable_forAssetSelector_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v14 = &v19;
      v19 = completionCopy;
      v17 = selectorCopy;
      v18 = v12;
      dispatch_async(v13, block);
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __64__MAAutoAsset_determineIfAvailable_forAssetSelector_completion___block_invoke;
      v20[3] = &unk_1E74CADD8;
      v14 = &v21;
      v21 = completionCopy;
      [v11 _determineIfAvailable:availableCopy withTimeout:-2 isSynchronous:0 completion:v20];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v12 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v11 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+determineIfAvailable"];
    *buf = 138543362;
    v24 = v11;
    _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto{+determineIfAvailable} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __64__MAAutoAsset_determineIfAvailable_forAssetSelector_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[MAAutoAsset defaultDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__MAAutoAsset_determineIfAvailable_forAssetSelector_completion___block_invoke_2;
  v16[3] = &unk_1E74CAB58;
  v12 = *(a1 + 32);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

uint64_t __64__MAAutoAsset_determineIfAvailable_forAssetSelector_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

+ (id)determineIfAvailableSync:(id)sync forAssetSelector:(id)selector discoveredAttributes:(id *)attributes error:(id *)error
{
  syncCopy = sync;
  selectorCopy = selector;
  v18 = 0;
  v11 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+determineIfAvailableSync}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v18];

  v12 = v18;
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  v14 = [v11 determineIfAvailableSync:syncCopy withTimeout:-2 discoveredAttributes:attributes error:&v17];
  v13 = v17;
  if (error)
  {
LABEL_3:
    v15 = v13;
    *error = v13;
  }

LABEL_4:

  return v14;
}

+ (void)endPreviousLocksOfReason:(id)reason forClientName:(id)name forAssetSelector:(id)selector removingLockCount:(int64_t)count completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  nameCopy = name;
  selectorCopy = selector;
  completionCopy = completion;
  v15 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v15);

  if (completionCopy)
  {
    v27 = 0;
    v16 = [[MAAutoAsset alloc] initForClientName:nameCopy selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v27];
    v17 = v27;
    if (v17)
    {
      v18 = +[MAAutoAsset _privateStateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__MAAutoAsset_endPreviousLocksOfReason_forClientName_forAssetSelector_removingLockCount_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v19 = &v24;
      v24 = completionCopy;
      v22 = selectorCopy;
      v23 = v17;
      dispatch_async(v18, block);
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __100__MAAutoAsset_endPreviousLocksOfReason_forClientName_forAssetSelector_removingLockCount_completion___block_invoke;
      v25[3] = &unk_1E74CADB0;
      v19 = &v26;
      v26 = completionCopy;
      [v16 _endPreviousLocksOfReason:reasonCopy removingLockCount:count isSynchronous:0 completion:v25];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v17 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+endPreviousLocksOfReason"];
    *buf = 138543362;
    v29 = v16;
    _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_ERROR, "MA-auto{+endPreviousLocksOfReason} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __100__MAAutoAsset_endPreviousLocksOfReason_forClientName_forAssetSelector_removingLockCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__MAAutoAsset_endPreviousLocksOfReason_forClientName_forAssetSelector_removingLockCount_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_endPreviousLocksOfReason:(id)reason removingLockCount:(int64_t)count isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  v12 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_197AD5000, "MAAuto:_endPreviousLocksOfReason", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__MAAutoAsset__endPreviousLocksOfReason_removingLockCount_isSynchronous_completion___block_invoke;
    v17[3] = &unk_1E74CABA8;
    countCopy = count;
    v18 = reasonCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v20 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v17];

    v14 = v18;
  }

  else
  {
    v14 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_endPreviousLocksOfReason"];
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto{_endPreviousLocksOfReason} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

void __84__MAAutoAsset__endPreviousLocksOfReason_removingLockCount_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__MAAutoAsset__endPreviousLocksOfReason_removingLockCount_isSynchronous_completion___block_invoke_3;
    v19[3] = &unk_1E74C97C8;
    v19[4] = *(a1 + 40);
    v20 = v3;
    v22 = *(a1 + 64);
    v21 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v19);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [[MAAutoAssetInfoEnd alloc] initWithLockReason:*(a1 + 32) endingLockCount:*(a1 + 56)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 40) infoInstance];
    [v10 setSafeObject:v13 forKey:@"instance"];

    [v10 setSafeObject:v9 forKey:@"end"];
    v14 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:END_PREVIOUS_LOCKS" clientID:v12 version:0 message:v10];
    v15 = __maConnectionClient;
    v16 = +[MAAutoAsset _privateStateQueue];
    v17 = *(a1 + 64);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__MAAutoAsset__endPreviousLocksOfReason_removingLockCount_isSynchronous_completion___block_invoke_2;
    v23[3] = &unk_1E74C97A0;
    v18 = *(a1 + 48);
    v23[4] = *(a1 + 40);
    v25 = v17;
    v24 = v18;
    [v15 connectClientSendServerMessage:v14 proxyObject:0 replyQueue:v16 isSynchronous:v17 withReply:v23];
  }
}

void __84__MAAutoAsset__endPreviousLocksOfReason_removingLockCount_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v11)
  {
    if (v11)
    {
      v8 = @"failure reported by server";
      v9 = *(a1 + 32);
      v10 = 0;
    }

    else
    {
      v8 = @"no response message from server";
      v9 = *(a1 + 32);
      v10 = 6104;
    }

    [v9 _failedEndLockUsage:v10 withResponseError:v11 description:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) assetSelector];
    [v6 _successEndLockUsage:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)endPreviousLocksOfReasonSync:(id)sync forClientName:(id)name forAssetSelector:(id)selector removingLockCount:(int64_t)count
{
  syncCopy = sync;
  selectorCopy = selector;
  nameCopy = name;
  v12 = [MAAutoAsset alloc];
  if (nameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = @"Unknown Client";
  }

  v17 = 0;
  v14 = [(MAAutoAsset *)v12 initForClientName:v13 selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v17];

  v15 = v17;
  if (!v15)
  {
    v15 = [v14 _endPreviousLocksOfReasonSync:syncCopy removingLockCount:count];
  }

  return v15;
}

- (id)_endPreviousLocksOfReasonSync:(id)sync removingLockCount:(int64_t)count
{
  syncCopy = sync;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__MAAutoAsset__endPreviousLocksOfReasonSync_removingLockCount___block_invoke;
  v9[3] = &unk_1E74CAD60;
  v9[4] = &v10;
  [(MAAutoAsset *)self _endPreviousLocksOfReason:syncCopy removingLockCount:count isSynchronous:1 completion:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __63__MAAutoAsset__endPreviousLocksOfReasonSync_removingLockCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

+ (void)endAllPreviousLocksOfReason:(id)reason forClientName:(id)name forAssetSelector:(id)selector completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  nameCopy = name;
  selectorCopy = selector;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  if (completionCopy)
  {
    v25 = 0;
    v14 = [[MAAutoAsset alloc] initForClientName:nameCopy selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v25];
    v15 = v25;
    if (v15)
    {
      v16 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__MAAutoAsset_endAllPreviousLocksOfReason_forClientName_forAssetSelector_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v17 = &v22;
      v22 = completionCopy;
      v20 = selectorCopy;
      v21 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __85__MAAutoAsset_endAllPreviousLocksOfReason_forClientName_forAssetSelector_completion___block_invoke;
      v23[3] = &unk_1E74CADB0;
      v17 = &v24;
      v24 = completionCopy;
      [v14 _endAllPreviousLocksOfReason:reasonCopy isSynchronous:0 completion:v23];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v15 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+endAllPreviousLocksOfReason"];
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto{+endAllPreviousLocksOfReason} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __85__MAAutoAsset_endAllPreviousLocksOfReason_forClientName_forAssetSelector_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MAAutoAsset_endAllPreviousLocksOfReason_forClientName_forAssetSelector_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_endAllPreviousLocksOfReason:(id)reason isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_197AD5000, "MAAuto:_endAllPreviousLocksOfReason", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__MAAutoAsset__endAllPreviousLocksOfReason_isSynchronous_completion___block_invoke;
    v15[3] = &unk_1E74C9840;
    v16 = reasonCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v18 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v15];

    v12 = v16;
  }

  else
  {
    v12 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_endAllPreviousLocksOfReason"];
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto{_endAllPreviousLocksOfReason} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

void __69__MAAutoAsset__endAllPreviousLocksOfReason_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__MAAutoAsset__endAllPreviousLocksOfReason_isSynchronous_completion___block_invoke_3;
    v19[3] = &unk_1E74C97C8;
    v19[4] = *(a1 + 40);
    v20 = v3;
    v22 = *(a1 + 56);
    v21 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v19);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [[MAAutoAssetInfoEnd alloc] initWithLockReason:*(a1 + 32) endingLockCount:-1];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 40) infoInstance];
    [v10 setSafeObject:v13 forKey:@"instance"];

    [v10 setSafeObject:v9 forKey:@"end"];
    v14 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS" clientID:v12 version:0 message:v10];
    v15 = __maConnectionClient;
    v16 = +[MAAutoAsset _privateStateQueue];
    v17 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__MAAutoAsset__endAllPreviousLocksOfReason_isSynchronous_completion___block_invoke_2;
    v23[3] = &unk_1E74C97A0;
    v18 = *(a1 + 48);
    v23[4] = *(a1 + 40);
    v25 = v17;
    v24 = v18;
    [v15 connectClientSendServerMessage:v14 proxyObject:0 replyQueue:v16 isSynchronous:v17 withReply:v23];
  }
}

void __69__MAAutoAsset__endAllPreviousLocksOfReason_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v11)
  {
    if (v11)
    {
      v8 = @"failure reported by server";
      v9 = *(a1 + 32);
      v10 = 0;
    }

    else
    {
      v8 = @"no response message from server";
      v9 = *(a1 + 32);
      v10 = 6104;
    }

    [v9 _failedEndLockUsage:v10 withResponseError:v11 description:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) assetSelector];
    [v6 _successEndLockUsage:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)endAllPreviousLocksOfReasonSync:(id)sync forClientName:(id)name forAssetSelector:(id)selector
{
  syncCopy = sync;
  selectorCopy = selector;
  nameCopy = name;
  v10 = [MAAutoAsset alloc];
  if (nameCopy)
  {
    v11 = nameCopy;
  }

  else
  {
    v11 = @"Unknown Client";
  }

  v15 = 0;
  v12 = [(MAAutoAsset *)v10 initForClientName:v11 selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v15];

  v13 = v15;
  if (!v13)
  {
    v13 = [v12 _endAllPreviousLocksOfReasonSync:syncCopy];
  }

  return v13;
}

- (id)_endAllPreviousLocksOfReasonSync:(id)sync
{
  syncCopy = sync;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MAAutoAsset__endAllPreviousLocksOfReasonSync___block_invoke;
  v7[3] = &unk_1E74CAD60;
  v7[4] = &v8;
  [(MAAutoAsset *)self _endAllPreviousLocksOfReason:syncCopy isSynchronous:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __48__MAAutoAsset__endAllPreviousLocksOfReasonSync___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

+ (void)endAllPreviousLocksOfSelector:(id)selector completion:(id)completion
{
  selectorCopy = selector;
  completionCopy = completion;
  v7 = +[MAAutoAsset defaultDispatchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MAAutoAsset_endAllPreviousLocksOfSelector_completion___block_invoke;
  v10[3] = &unk_1E74C9888;
  v11 = selectorCopy;
  v12 = completionCopy;
  v8 = selectorCopy;
  v9 = completionCopy;
  dispatch_async(v7, v10);
}

void __56__MAAutoAsset_endAllPreviousLocksOfSelector_completion___block_invoke(uint64_t a1)
{
  v3 = [MAAutoAssetError buildError:6801 fromOperation:@"auto(endAllPreviousLocksOfSelector:completion:)" underlyingError:0 withDescription:@"method was never implemented [marked as deprecated] use endAllPreviousLocksOfSelector:forClientName:completion: instead"];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

+ (void)endAllPreviousLocksOfSelector:(id)selector forClientName:(id)name completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  nameCopy = name;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (completionCopy)
  {
    v22 = 0;
    v11 = [[MAAutoAsset alloc] initForClientName:nameCopy selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v22];
    v12 = v22;
    if (v12)
    {
      v13 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__MAAutoAsset_endAllPreviousLocksOfSelector_forClientName_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v14 = &v19;
      v19 = completionCopy;
      v17 = selectorCopy;
      v18 = v12;
      dispatch_async(v13, block);
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __70__MAAutoAsset_endAllPreviousLocksOfSelector_forClientName_completion___block_invoke;
      v20[3] = &unk_1E74CADB0;
      v14 = &v21;
      v21 = completionCopy;
      [v11 _endAllPreviousLocksOfReason:0 isSynchronous:0 completion:v20];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v12 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v11 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+endAllPreviousLocksOfSelector"];
    *buf = 138543362;
    v24 = v11;
    _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto{+endAllPreviousLocksOfSelector} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __70__MAAutoAsset_endAllPreviousLocksOfSelector_forClientName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MAAutoAsset_endAllPreviousLocksOfSelector_forClientName_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

+ (id)endAllPreviousLocksOfSelectorSync:(id)sync forClientName:(id)name
{
  nameCopy = name;
  syncCopy = sync;
  v10 = 0;
  v7 = [[MAAutoAsset alloc] initForClientName:nameCopy selectingAsset:syncCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v10];

  v8 = v10;
  if (!v8)
  {
    v8 = [v7 _endAllPreviousLocksOfReasonSync:0];
  }

  return v8;
}

+ (void)cancelActivityForSelector:(id)selector completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  completionCopy = completion;
  if (completionCopy)
  {
    v18 = 0;
    v7 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+cancelActivityForSelector}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v18];
    v8 = v18;
    if (v8)
    {
      v9 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__MAAutoAsset_cancelActivityForSelector_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v10 = &v15;
      v15 = completionCopy;
      v13 = selectorCopy;
      v14 = v8;
      dispatch_async(v9, block);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __52__MAAutoAsset_cancelActivityForSelector_completion___block_invoke;
      v16[3] = &unk_1E74CADB0;
      v10 = &v17;
      v17 = completionCopy;
      [v7 _cancelActivityForSelectorIsSynchronous:0 completion:v16];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v8 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+cancelActivityForSelector"];
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "MA-auto{+cancelActivityForSelector} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __52__MAAutoAsset_cancelActivityForSelector_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MAAutoAsset_cancelActivityForSelector_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_cancelActivityForSelectorIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_cancelActivityForSelectorIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__MAAutoAsset__cancelActivityForSelectorIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_cancelActivityForSelector"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{_cancelActivityForSelector} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __66__MAAutoAsset__cancelActivityForSelectorIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__MAAutoAsset__cancelActivityForSelectorIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:CANCEL_ACTIVITY_FOR_SELECTOR" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __66__MAAutoAsset__cancelActivityForSelectorIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __66__MAAutoAsset__cancelActivityForSelectorIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedCancelActivity:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successCancelActivityIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)cancelActivityForSelectorSync:(id)sync
{
  syncCopy = sync;
  v7 = 0;
  v4 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+cancelActivityForSelectorSync}" selectingAsset:syncCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v7];

  _cancelActivityForSelectorSync = v7;
  if (!_cancelActivityForSelectorSync)
  {
    _cancelActivityForSelectorSync = [v4 _cancelActivityForSelectorSync];
  }

  return _cancelActivityForSelectorSync;
}

- (id)_cancelActivityForSelectorSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MAAutoAsset__cancelActivityForSelectorSync__block_invoke;
  v4[3] = &unk_1E74CAD60;
  v4[4] = &v5;
  [(MAAutoAsset *)self _cancelActivityForSelectorIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __45__MAAutoAsset__cancelActivityForSelectorSync__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

+ (void)eliminateAllForSelector:(id)selector completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  if (completionCopy)
  {
    v19 = 0;
    v8 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+eliminateAllForSelector}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v19];
    v9 = v19;
    if (v9)
    {
      v10 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__MAAutoAsset_eliminateAllForSelector_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v11 = &v16;
      v16 = completionCopy;
      v14 = selectorCopy;
      v15 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __50__MAAutoAsset_eliminateAllForSelector_completion___block_invoke;
      v17[3] = &unk_1E74CADB0;
      v11 = &v18;
      v18 = completionCopy;
      [v8 _eliminateAllForSelectorIsSynchronous:0 completion:v17];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v9 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+eliminateAllForSelector"];
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{+eliminateAllForSelector} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __50__MAAutoAsset_eliminateAllForSelector_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MAAutoAsset_eliminateAllForSelector_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_eliminateAllForSelectorIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_eliminateAllForSelectorIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__MAAutoAsset__eliminateAllForSelectorIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_eliminateAllForSelector"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{_eliminateAllForSelector} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __64__MAAutoAsset__eliminateAllForSelectorIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__MAAutoAsset__eliminateAllForSelectorIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:ELIMINATE_ALL_FOR_SELECTOR" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__MAAutoAsset__eliminateAllForSelectorIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __64__MAAutoAsset__eliminateAllForSelectorIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedEliminate:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successEliminateIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)eliminateAllForSelectorSync:(id)sync
{
  syncCopy = sync;
  v7 = 0;
  v4 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+eliminateAllForSelectorSync}" selectingAsset:syncCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v7];

  _eliminateAllForSelectorSync = v7;
  if (!_eliminateAllForSelectorSync)
  {
    _eliminateAllForSelectorSync = [v4 _eliminateAllForSelectorSync];
  }

  return _eliminateAllForSelectorSync;
}

- (id)_eliminateAllForSelectorSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__MAAutoAsset__eliminateAllForSelectorSync__block_invoke;
  v4[3] = &unk_1E74CAD60;
  v4[4] = &v5;
  [(MAAutoAsset *)self _eliminateAllForSelectorIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __43__MAAutoAsset__eliminateAllForSelectorSync__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

+ (void)eliminateAllForAssetType:(id)type completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  if (completionCopy)
  {
    v8 = [[MAAutoAssetSelector alloc] initForAssetType:typeCopy withAssetSpecifier:@"MAAutoAsset-all-asset-specifiers"];
    v20 = 0;
    v9 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+eliminateAllForAssetType}" selectingAsset:v8 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v20];
    v10 = v20;
    if (v10)
    {
      v11 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__MAAutoAsset_eliminateAllForAssetType_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v12 = &v17;
      v17 = completionCopy;
      v15 = v8;
      v16 = v10;
      dispatch_async(v11, block);
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__MAAutoAsset_eliminateAllForAssetType_completion___block_invoke;
      v18[3] = &unk_1E74CADB0;
      v12 = &v19;
      v19 = completionCopy;
      [v9 _eliminateAllForAssetTypeIsSynchronous:0 completion:v18];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v10 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+eliminateAllForAssetType"];
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto{+eliminateAllForAssetType} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __51__MAAutoAsset_eliminateAllForAssetType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MAAutoAsset_eliminateAllForAssetType_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_eliminateAllForAssetTypeIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_eliminateAllForAssetTypeIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__MAAutoAsset__eliminateAllForAssetTypeIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_eliminateAllForAssetType"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{_eliminateAllForAssetType} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __65__MAAutoAsset__eliminateAllForAssetTypeIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__MAAutoAsset__eliminateAllForAssetTypeIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:ELIMINATE_ALL_FOR_ASSET_TYPE" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__MAAutoAsset__eliminateAllForAssetTypeIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __65__MAAutoAsset__eliminateAllForAssetTypeIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedEliminate:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successEliminateIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)eliminateAllForAssetTypeSync:(id)sync
{
  syncCopy = sync;
  v4 = [[MAAutoAssetSelector alloc] initForAssetType:syncCopy withAssetSpecifier:@"MAAutoAsset-all-asset-specifiers"];

  v8 = 0;
  v5 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+eliminateAllForAssetTypeSync}" selectingAsset:v4 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v8];
  _eliminateAllForAssetTypeSync = v8;
  if (!_eliminateAllForAssetTypeSync)
  {
    _eliminateAllForAssetTypeSync = [v5 _eliminateAllForAssetTypeSync];
  }

  return _eliminateAllForAssetTypeSync;
}

- (id)_eliminateAllForAssetTypeSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__MAAutoAsset__eliminateAllForAssetTypeSync__block_invoke;
  v4[3] = &unk_1E74CAD60;
  v4[4] = &v5;
  [(MAAutoAsset *)self _eliminateAllForAssetTypeIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__MAAutoAsset__eliminateAllForAssetTypeSync__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

+ (void)eliminatePromotedNeverLockedForSelector:(id)selector completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  if (completionCopy)
  {
    v19 = 0;
    v8 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+eliminatePromotedNeverLockedForSelector}" selectingAsset:selectorCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v19];
    v9 = v19;
    if (v9)
    {
      v10 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__MAAutoAsset_eliminatePromotedNeverLockedForSelector_completion___block_invoke_3;
      block[3] = &unk_1E74CAA40;
      v11 = &v16;
      v16 = completionCopy;
      v14 = selectorCopy;
      v15 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__MAAutoAsset_eliminatePromotedNeverLockedForSelector_completion___block_invoke;
      v17[3] = &unk_1E74CADB0;
      v11 = &v18;
      v18 = completionCopy;
      [v8 _eliminatePromotedNeverLockedForSelectorIsSynchronous:0 completion:v17];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v9 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+eliminatePromotedNeverLockedForSelector"];
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{+eliminatePromotedNeverLockedForSelector} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __66__MAAutoAsset_eliminatePromotedNeverLockedForSelector_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MAAutoAsset_eliminatePromotedNeverLockedForSelector_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)_eliminatePromotedNeverLockedForSelectorIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_eliminatePromotedNeverLockedForSelectorIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__MAAutoAsset__eliminatePromotedNeverLockedForSelectorIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"_eliminatePromotedNeverLockedForSelector"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto{_eliminatePromotedNeverLockedForSelector} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __80__MAAutoAsset__eliminatePromotedNeverLockedForSelectorIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__MAAutoAsset__eliminatePromotedNeverLockedForSelectorIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO:ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__MAAutoAsset__eliminatePromotedNeverLockedForSelectorIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __80__MAAutoAsset__eliminatePromotedNeverLockedForSelectorIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedEliminate:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successEliminateIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)eliminatePromotedNeverLockedForSelectorSync:(id)sync
{
  syncCopy = sync;
  v7 = 0;
  v4 = [[MAAutoAsset alloc] initForClientName:@"MA-auto{+eliminatePromotedNeverLockedForSelectorSync}" selectingAsset:syncCopy usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v7];

  _eliminatePromotedNeverLockedForSelectorSync = v7;
  if (!_eliminatePromotedNeverLockedForSelectorSync)
  {
    _eliminatePromotedNeverLockedForSelectorSync = [v4 _eliminatePromotedNeverLockedForSelectorSync];
  }

  return _eliminatePromotedNeverLockedForSelectorSync;
}

- (id)_eliminatePromotedNeverLockedForSelectorSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MAAutoAsset__eliminatePromotedNeverLockedForSelectorSync__block_invoke;
  v4[3] = &unk_1E74CAD60;
  v4[4] = &v5;
  [(MAAutoAsset *)self _eliminatePromotedNeverLockedForSelectorIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __59__MAAutoAsset__eliminatePromotedNeverLockedForSelectorSync__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

+ (void)stageDetermineGroupsAvailableForUpdate:(id)update completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  if (completionCopy)
  {
    v8 = [updateCopy safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
    v9 = [updateCopy safeObjectForKey:@"Build" ofClass:objc_opt_class()];
    v10 = [updateCopy safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
    v11 = [updateCopy safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
    v12 = [updateCopy safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];
    v13 = v12;
    if (v8 && v9 && v12 && v10 && v11)
    {
      v25 = v10;
      v14 = [MAAutoAsset alloc];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
      v16 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:v8 forTargetBuildVersion:v9];
      v31 = 0;
      v24 = [(MAAutoAsset *)v14 initForClientName:v15 selectingAsset:v16 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v31];
      v17 = v31;

      if (v17)
      {
        v18 = +[MAAutoAsset defaultDispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke_3;
        block[3] = &unk_1E74C9888;
        v19 = &v28;
        v28 = completionCopy;
        v27 = v17;
        dispatch_async(v18, block);

        v20 = v24;
      }

      else
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke_917;
        v29[3] = &unk_1E74CAE28;
        v19 = &v30;
        v30 = completionCopy;
        v20 = v24;
        [v24 _stageDetermineGroupsAvailableForUpdate:updateCopy isSynchronous:0 completion:v29];
      }

      v10 = v25;
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke;
      v32[3] = &unk_1E74CAE00;
      v33 = v8;
      v34 = v9;
      v35 = v10;
      v36 = v11;
      v37 = v13;
      v38 = completionCopy;
      v21 = MEMORY[0x19A8EC5D0](v32);
      v22 = +[MAAutoAsset defaultDispatchQueue];
      dispatch_async(v22, v21);

      v17 = v33;
    }

    goto LABEL_15;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v8 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageDetermineGroupsAvailableForUpdate"];
    *buf = 138543362;
    v40 = v9;
    _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageDetermineGroupsAvailableForUpdate} | no client completion block | %{public}@", buf, 0xCu);
LABEL_15:
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = @"MISSING";
  v4 = a1[4];
  v5 = a1[5];
  if (!v4)
  {
    v4 = @"MISSING";
  }

  if (!v5)
  {
    v5 = @"MISSING";
  }

  v6 = a1[6];
  v7 = a1[7];
  if (!v6)
  {
    v6 = @"MISSING";
  }

  if (!v7)
  {
    v7 = @"MISSING";
  }

  if (a1[8])
  {
    v3 = @"Y";
  }

  v8 = [v2 initWithFormat:@"pre-SU-staging by group with missing required updateAttributes | assetTargetOSVersion:%@ | assetTargetBuildVersion:%@ | assetTrainName:%@ | assetRestoreVersion:%@ | assetGroupNames:%@", v4, v5, v6, v7, v3];
  v9 = [MAAutoAssetError buildError:6102 fromOperation:@"auto(stageDetermineGroupsAvailableForUpdate)" underlyingError:0 withDescription:v8];
  v10 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v9 checkedDescription];
    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDetermineGroupsAvailableForUpdate} | MISSING required information | failureReason:%{public}@ | returnedError:%{public}@", buf, 0x16u);
  }

  (*(a1[9] + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

void __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke_917(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[MAAutoAsset defaultDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke_2;
  v16[3] = &unk_1E74CAB58;
  v12 = *(a1 + 32);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

uint64_t __65__MAAutoAsset_stageDetermineGroupsAvailableForUpdate_completion___block_invoke_2(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)_stageDetermineGroupsAvailableForUpdate:(id)update isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageDetermineGroupsAvailableForUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__MAAutoAsset__stageDetermineGroupsAvailableForUpdate_isSynchronous_completion___block_invoke;
    v15[3] = &unk_1E74C9840;
    v16 = updateCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v18 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v15];

    v12 = v16;
  }

  else
  {
    v12 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageDetermineGroupsAvailableForUpdate"];
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDetermineGroupsAvailableForUpdate} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

void __80__MAAutoAsset__stageDetermineGroupsAvailableForUpdate_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__MAAutoAsset__stageDetermineGroupsAvailableForUpdate_isSynchronous_completion___block_invoke_3;
    v19[3] = &unk_1E74C97C8;
    v19[4] = *(a1 + 40);
    v20 = v3;
    v22 = *(a1 + 56);
    v21 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v19);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [[MAAutoAssetInfoStaging alloc] initWithUpdateAttributes:*(a1 + 32) withByGroupAvailableForStaging:0 withByGroupTotalExpectedBytes:0];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 40) infoInstance];
    [v10 setSafeObject:v13 forKey:@"instance"];

    [v10 setSafeObject:v9 forKey:@"staging"];
    v14 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE" clientID:v12 version:0 message:v10];
    v15 = __maConnectionClient;
    v16 = +[MAAutoAsset _privateStateQueue];
    v17 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__MAAutoAsset__stageDetermineGroupsAvailableForUpdate_isSynchronous_completion___block_invoke_2;
    v23[3] = &unk_1E74C97A0;
    v18 = *(a1 + 48);
    v23[4] = *(a1 + 40);
    v25 = v17;
    v24 = v18;
    [v15 connectClientSendServerMessage:v14 proxyObject:0 replyQueue:v16 isSynchronous:v17 withReply:v23];
  }
}

void __80__MAAutoAsset__stageDetermineGroupsAvailableForUpdate_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedStageDetermineGroupsAvailableForUpdate:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"staging" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successStageDetermineGroupsAvailableForUpdate:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedStageDetermineGroupsAvailableForUpdate:6104 withResponseError:0 description:@"no staging-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)stageDetermineGroupsAvailableForUpdateSync:(id)sync totalExpectedBytes:(id *)bytes error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v8 = [syncCopy safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
  v9 = [syncCopy safeObjectForKey:@"Build" ofClass:objc_opt_class()];
  v10 = [syncCopy safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
  v11 = [syncCopy safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
  v12 = [syncCopy safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];
  v13 = v12;
  v34 = v10;
  if (v8 && v9 && v12)
  {
    bytesCopy = bytes;
    errorCopy = error;
    v14 = [MAAutoAsset alloc];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v16 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:v8 forTargetBuildVersion:v9];
    v36 = 0;
    v17 = [(MAAutoAsset *)v14 initForClientName:v15 selectingAsset:v16 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v36];
    v18 = v36;

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v35 = 0;
      v19 = [v17 _stageDetermineGroupsAvailableForUpdateSync:syncCopy totalExpectedBytes:bytesCopy error:&v35];
      v18 = v35;
    }

    error = errorCopy;
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = @"MISSING";
    if (v8)
    {
      v22 = v8;
    }

    else
    {
      v22 = @"MISSING";
    }

    if (v9)
    {
      v23 = v9;
    }

    else
    {
      v23 = @"MISSING";
    }

    if (v10)
    {
      v24 = v10;
    }

    else
    {
      v24 = @"MISSING";
    }

    if (v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = @"MISSING";
    }

    if (v13)
    {
      v21 = @"present";
    }

    v17 = [v20 initWithFormat:@"pre-SU-staging by group with missing required updateAttributes | assetTargetOSVersion:%@ | assetTargetBuildVersion:%@ | assetTrainName:%@ | assetRestoreVersion:%@ | assetGroupNames:%@", v22, v23, v24, v25, v21];
    v18 = [MAAutoAssetError buildError:6102 fromOperation:@"auto(stageDetermineGroupsAvailableForUpdateSync)" underlyingError:0 withDescription:v17];
    v26 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [v18 checkedDescription];
      v28 = v27 = error;
      *buf = 138543618;
      v38 = v17;
      v39 = 2114;
      v40 = v28;
      _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDetermineGroupsAvailableForUpdateSync} | MISSING required information | failureReason:%{public}@ | returnedError:%{public}@", buf, 0x16u);

      error = v27;
    }

    v19 = 0;
  }

  if (error)
  {
    v29 = v18;
    *error = v18;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_stageDetermineGroupsAvailableForUpdateSync:(id)sync totalExpectedBytes:(id *)bytes error:(id *)error
{
  syncCopy = sync;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__MAAutoAsset__stageDetermineGroupsAvailableForUpdateSync_totalExpectedBytes_error___block_invoke;
  v11[3] = &unk_1E74CAE50;
  v11[4] = &v24;
  v11[5] = &v18;
  v11[6] = &v12;
  [(MAAutoAsset *)self _stageDetermineGroupsAvailableForUpdate:syncCopy isSynchronous:1 completion:v11];
  if (bytes)
  {
    *bytes = v19[5];
  }

  if (error)
  {
    *error = v13[5];
  }

  v9 = v25[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

void __84__MAAutoAsset__stageDetermineGroupsAvailableForUpdateSync_totalExpectedBytes_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
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

+ (void)stageDetermineAllAvailableForUpdate:(id)update completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  if (completionCopy)
  {
    v8 = [updateCopy safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
    v9 = [updateCopy safeObjectForKey:@"Build" ofClass:objc_opt_class()];
    if (!v8)
    {
      v8 = @"STAGE_GENERAL";
    }

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"STAGE_GENERAL";
    }

    v11 = [MAAutoAsset alloc];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v13 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:v8 forTargetBuildVersion:v10];
    v24 = 0;
    v14 = [(MAAutoAsset *)v11 initForClientName:v12 selectingAsset:v13 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v24];
    v15 = v24;

    if (v15)
    {
      v16 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__MAAutoAsset_stageDetermineAllAvailableForUpdate_completion___block_invoke_3;
      block[3] = &unk_1E74C9888;
      v17 = &v21;
      v21 = completionCopy;
      v20 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __62__MAAutoAsset_stageDetermineAllAvailableForUpdate_completion___block_invoke;
      v22[3] = &unk_1E74CAEA0;
      v17 = &v23;
      v23 = completionCopy;
      [v14 _stageDetermineAllAvailableForUpdate:updateCopy isSynchronous:0 completion:v22];
    }

    goto LABEL_13;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v15 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageDetermineAllAvailableForUpdate"];
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageDetermineAllAvailableForUpdate} | no client completion block | %{public}@", buf, 0xCu);
LABEL_13:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __62__MAAutoAsset_stageDetermineAllAvailableForUpdate_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = +[MAAutoAsset defaultDispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__MAAutoAsset_stageDetermineAllAvailableForUpdate_completion___block_invoke_2;
  v13[3] = &unk_1E74CAE78;
  v16 = *(a1 + 32);
  v17 = a3;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v13);
}

- (void)_stageDetermineAllAvailableForUpdate:(id)update isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageDetermineAllAvailableForUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__MAAutoAsset__stageDetermineAllAvailableForUpdate_isSynchronous_completion___block_invoke;
    v15[3] = &unk_1E74C9840;
    v16 = updateCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v18 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v15];

    v12 = v16;
  }

  else
  {
    v12 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageDetermineAllAvailable"];
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDetermineAllAvailable} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

void __77__MAAutoAsset__stageDetermineAllAvailableForUpdate_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__MAAutoAsset__stageDetermineAllAvailableForUpdate_isSynchronous_completion___block_invoke_3;
    v19[3] = &unk_1E74C97C8;
    v19[4] = *(a1 + 40);
    v20 = v3;
    v22 = *(a1 + 56);
    v21 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v19);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = [[MAAutoAssetInfoStaging alloc] initWithAvailableForStaging:*(a1 + 32) withTotalExpectedBytes:0];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 40) infoInstance];
    [v10 setSafeObject:v13 forKey:@"instance"];

    [v10 setSafeObject:v9 forKey:@"staging"];
    v14 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE" clientID:v12 version:0 message:v10];
    v15 = __maConnectionClient;
    v16 = +[MAAutoAsset _privateStateQueue];
    v17 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__MAAutoAsset__stageDetermineAllAvailableForUpdate_isSynchronous_completion___block_invoke_2;
    v23[3] = &unk_1E74C97A0;
    v18 = *(a1 + 48);
    v23[4] = *(a1 + 40);
    v25 = v17;
    v24 = v18;
    [v15 connectClientSendServerMessage:v14 proxyObject:0 replyQueue:v16 isSynchronous:v17 withReply:v23];
  }
}

void __77__MAAutoAsset__stageDetermineAllAvailableForUpdate_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedStageDetermineAllAvailable:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"staging" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successStageDetermineAllAvailable:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedStageDetermineAllAvailable:6104 withResponseError:0 description:@"no staging-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)stageDetermineAllAvailableForUpdateSync:(id)sync totalExpectedBytes:(unint64_t *)bytes error:(id *)error
{
  syncCopy = sync;
  v8 = [syncCopy safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
  v9 = [syncCopy safeObjectForKey:@"Build" ofClass:objc_opt_class()];
  if (!v8)
  {
    v8 = @"TargetOSVersion";
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"TargetBuildVersion";
  }

  v11 = [MAAutoAsset alloc];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v13 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:v8 forTargetBuildVersion:v10];
  v20 = 0;
  v14 = [(MAAutoAsset *)v11 initForClientName:v12 selectingAsset:v13 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v20];
  v15 = v20;

  if (v15)
  {
    v16 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = 0;
  v16 = [v14 _stageDetermineAllAvailableForUpdateSync:syncCopy totalExpectedBytes:bytes error:&v19];
  v15 = v19;
  if (error)
  {
LABEL_8:
    v17 = v15;
    *error = v15;
  }

LABEL_9:

  return v16;
}

- (id)_stageDetermineAllAvailableForUpdateSync:(id)sync totalExpectedBytes:(unint64_t *)bytes error:(id *)error
{
  syncCopy = sync;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__MAAutoAsset__stageDetermineAllAvailableForUpdateSync_totalExpectedBytes_error___block_invoke;
  v11[3] = &unk_1E74CAEC8;
  v11[4] = &v22;
  v11[5] = &v18;
  v11[6] = &v12;
  [(MAAutoAsset *)self _stageDetermineAllAvailableForUpdate:syncCopy isSynchronous:1 completion:v11];
  if (bytes)
  {
    *bytes = v19[3];
  }

  if (error)
  {
    *error = v13[5];
  }

  v9 = v23[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __81__MAAutoAsset__stageDetermineAllAvailableForUpdateSync_totalExpectedBytes_error___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v14 = v7;

  *(*(a1[5] + 8) + 24) = a3;
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
}

+ (void)stageDetermineAllAvailable:(id)available forTargetBuildVersion:(id)version completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  versionCopy = version;
  completionCopy = completion;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (completionCopy)
  {
    v11 = [MAAutoAsset alloc];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v13 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:availableCopy forTargetBuildVersion:versionCopy];
    v24 = 0;
    v14 = [(MAAutoAsset *)v11 initForClientName:v12 selectingAsset:v13 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v24];
    v15 = v24;

    if (v15)
    {
      v16 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__MAAutoAsset_stageDetermineAllAvailable_forTargetBuildVersion_completion___block_invoke_3;
      block[3] = &unk_1E74C9888;
      v17 = &v21;
      v21 = completionCopy;
      v20 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __75__MAAutoAsset_stageDetermineAllAvailable_forTargetBuildVersion_completion___block_invoke;
      v22[3] = &unk_1E74CAEA0;
      v17 = &v23;
      v23 = completionCopy;
      [v14 _stageDetermineAllAvailable:availableCopy forTargetBuildVersion:versionCopy isSynchronous:0 completion:v22];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v15 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageDetermineAllAvailable"];
    *buf = 138543362;
    v26 = v14;
    _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageDetermineAllAvailable} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __75__MAAutoAsset_stageDetermineAllAvailable_forTargetBuildVersion_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = +[MAAutoAsset defaultDispatchQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__MAAutoAsset_stageDetermineAllAvailable_forTargetBuildVersion_completion___block_invoke_2;
  v13[3] = &unk_1E74CAE78;
  v16 = *(a1 + 32);
  v17 = a3;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v13);
}

- (void)_stageDetermineAllAvailable:(id)available forTargetBuildVersion:(id)version isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  versionCopy = version;
  completionCopy = completion;
  v13 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageDetermineAllAvailable", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__MAAutoAsset__stageDetermineAllAvailable_forTargetBuildVersion_isSynchronous_completion___block_invoke;
    v18[3] = &unk_1E74CAC20;
    v18[4] = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v18];
  }

  else
  {
    v15 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageDetermineAllAvailable"];
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDetermineAllAvailable} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v17 = *MEMORY[0x1E69E9840];
}

void __90__MAAutoAsset__stageDetermineAllAvailable_forTargetBuildVersion_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__MAAutoAsset__stageDetermineAllAvailable_forTargetBuildVersion_isSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __90__MAAutoAsset__stageDetermineAllAvailable_forTargetBuildVersion_isSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __90__MAAutoAsset__stageDetermineAllAvailable_forTargetBuildVersion_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedStageDetermineAllAvailable:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"staging" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successStageDetermineAllAvailable:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedStageDetermineAllAvailable:6104 withResponseError:0 description:@"no staging-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)stageDetermineAllAvailableSync:(id)sync forTargetBuildVersion:(id)version totalExpectedBytes:(unint64_t *)bytes error:(id *)error
{
  syncCopy = sync;
  versionCopy = version;
  v11 = [MAAutoAsset alloc];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v13 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:syncCopy forTargetBuildVersion:versionCopy];
  v20 = 0;
  v14 = [(MAAutoAsset *)v11 initForClientName:v12 selectingAsset:v13 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v20];
  v15 = v20;

  if (v15)
  {
    v16 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = 0;
  v16 = [v14 _stageDetermineAllAvailableSync:syncCopy forTargetBuildVersion:versionCopy totalExpectedBytes:bytes error:&v19];
  v15 = v19;
  if (error)
  {
LABEL_3:
    v17 = v15;
    *error = v15;
  }

LABEL_4:

  return v16;
}

- (id)_stageDetermineAllAvailableSync:(id)sync forTargetBuildVersion:(id)version totalExpectedBytes:(unint64_t *)bytes error:(id *)error
{
  syncCopy = sync;
  versionCopy = version;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__MAAutoAsset__stageDetermineAllAvailableSync_forTargetBuildVersion_totalExpectedBytes_error___block_invoke;
  v14[3] = &unk_1E74CAEC8;
  v14[4] = &v25;
  v14[5] = &v21;
  v14[6] = &v15;
  [(MAAutoAsset *)self _stageDetermineAllAvailable:syncCopy forTargetBuildVersion:versionCopy isSynchronous:1 completion:v14];
  if (bytes)
  {
    *bytes = v22[3];
  }

  if (error)
  {
    *error = v16[5];
  }

  v12 = v26[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __94__MAAutoAsset__stageDetermineAllAvailableSync_forTargetBuildVersion_totalExpectedBytes_error___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v14 = v7;

  *(*(a1[5] + 8) + 24) = a3;
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
}

+ (void)stageDownloadGroups:(id)groups awaitingAllGroups:(BOOL)allGroups withStagingTimeout:(int64_t)timeout reportingProgress:(id)progress completion:(id)completion
{
  allGroupsCopy = allGroups;
  v56 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  progressCopy = progress;
  completionCopy = completion;
  v14 = 0x1E74C9000;
  v15 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v15);

  if (completionCopy)
  {
    v37 = allGroupsCopy;
    v38 = progressCopy;
    v16 = [groupsCopy safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
    v17 = [groupsCopy safeObjectForKey:@"Build" ofClass:objc_opt_class()];
    v18 = [groupsCopy safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
    v19 = [groupsCopy safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
    v20 = [groupsCopy safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];
    v21 = v20;
    if (!v16 || !v17 || !v20 || !v18 || !v19)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke;
      v47[3] = &unk_1E74CAE00;
      v48 = v16;
      v49 = v17;
      v50 = v18;
      v51 = v19;
      v52 = v21;
      v53 = completionCopy;
      v29 = MEMORY[0x19A8EC5D0](v47);
      +[MAAutoAsset defaultDispatchQueue];
      v31 = v30 = v18;
      dispatch_async(v31, v29);

      v25 = v48;
LABEL_18:

      goto LABEL_19;
    }

    timeoutCopy = timeout;
    v35 = v18;
    v22 = [MAAutoAsset alloc];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v24 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:v16 forTargetBuildVersion:v17];
    v46 = 0;
    v36 = [(MAAutoAsset *)v22 initForClientName:v23 selectingAsset:v24 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v46];
    v25 = v46;

    if (v25)
    {
      v26 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_5;
      block[3] = &unk_1E74C9888;
      v14 = &v41;
      v41 = completionCopy;
      v40 = v25;
      dispatch_async(v26, block);

      progressCopy = v38;
    }

    else
    {
      progressCopy = v38;
      if (v38)
      {
        v32 = v44;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_947;
        v44[3] = &unk_1E74CACC0;
        v14 = &v45;
        v45 = v38;
      }

      else
      {
        v32 = 0;
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_3;
      v42[3] = &unk_1E74CAE28;
      v43 = completionCopy;
      [v36 _stageDownloadGroups:groupsCopy awaitingAllGroups:v37 withStagingTimeout:timeoutCopy reportingProgress:v32 isSynchronous:0 completion:v42];

      if (!v38)
      {
        goto LABEL_17;
      }
    }

LABEL_17:
    v30 = v35;
    goto LABEL_18;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v16 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageDownloadGroups"];
    v28 = v27 = progressCopy;
    *buf = 138543362;
    v55 = v28;
    _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageDownloadGroups} | no client completion block | %{public}@", buf, 0xCu);

    progressCopy = v27;
  }

LABEL_19:

  v33 = *MEMORY[0x1E69E9840];
}

void __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = @"MISSING";
  v4 = a1[4];
  v5 = a1[5];
  if (!v4)
  {
    v4 = @"MISSING";
  }

  if (!v5)
  {
    v5 = @"MISSING";
  }

  v6 = a1[6];
  v7 = a1[7];
  if (!v6)
  {
    v6 = @"MISSING";
  }

  if (!v7)
  {
    v7 = @"MISSING";
  }

  if (a1[8])
  {
    v3 = @"present";
  }

  v8 = [v2 initWithFormat:@"pre-SU-staging by group with missing required updateAttributes | assetTargetOSVersion:%@ | assetTargetBuildVersion:%@ | assetTrainName:%@ | assetRestoreVersion:%@ | assetGroupNames:%@", v4, v5, v6, v7, v3];
  v9 = [MAAutoAssetError buildError:6102 fromOperation:@"auto(stageDownloadGroups)" underlyingError:0 withDescription:v8];
  v10 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v9 checkedDescription];
    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDownloadGroups} | MISSING required information | failureReason:%{public}@ | returnedError:%{public}@", buf, 0x16u);
  }

  (*(a1[9] + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

void __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_947(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[MAAutoAsset defaultDispatchQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__MAAutoAsset_stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_completion___block_invoke_4;
  v16[3] = &unk_1E74CAB58;
  v12 = *(a1 + 32);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v16);
}

- (void)_stageDownloadGroups:(id)groups awaitingAllGroups:(BOOL)allGroups withStagingTimeout:(int64_t)timeout reportingProgress:(id)progress isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  progressCopy = progress;
  completionCopy = completion;
  v17 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v17);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v18 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageDownloadGroups", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v18, &state);

  if (completionCopy)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __116__MAAutoAsset__stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_isSynchronous_completion___block_invoke;
    v22[3] = &unk_1E74CAEF0;
    allGroupsCopy = allGroups;
    timeoutCopy = timeout;
    v25 = progressCopy;
    v23 = groupsCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v26 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v22];

    v19 = v25;
  }

  else
  {
    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageDownloadGroups"];
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDownloadGroups} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v21 = *MEMORY[0x1E69E9840];
}

void __116__MAAutoAsset__stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __116__MAAutoAsset__stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 73);
    v27 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 73);
    v7 = +[MAAutoAsset _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }

    v23 = v26;
  }

  else
  {
    v9 = [MAAutoAssetInfoDesire alloc];
    if (*(a1 + 72))
    {
      v10 = -1;
    }

    else
    {
      v10 = -2;
    }

    v24 = [(MAAutoAssetInfoDesire *)v9 initWithDesiredCategory:0 forClientAssetPolicy:0 reasonDesired:0 withCheckWaitTimeout:v10 withLockWaitTimeout:*(a1 + 64) desiringProgress:*(a1 + 48) != 0];
    v11 = [[MAAutoAssetInfoStaging alloc] initWithUpdateAttributes:*(a1 + 32) withByGroupAvailableForStaging:0 withByGroupTotalExpectedBytes:0];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = +[MAAutoAsset frameworkInstanceUUID];
    v14 = [v13 UUIDString];

    v15 = [*(a1 + 40) infoInstance];
    [v12 setSafeObject:v15 forKey:@"instance"];

    [v12 setSafeObject:v24 forKey:@"desire"];
    [v12 setSafeObject:v11 forKey:@"staging"];
    v16 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS" clientID:v14 version:0 message:v12];
    v17 = [*(a1 + 40) _newProxyObjectForStageProgressBlock:*(a1 + 48)];
    v18 = __maConnectionClient;
    v19 = +[MAAutoAsset _privateStateQueue];
    v20 = *(a1 + 73);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __116__MAAutoAsset__stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74CAC70;
    v21 = *(a1 + 40);
    v30 = v17;
    v31 = v21;
    v33 = v20;
    v32 = *(a1 + 56);
    v22 = v17;
    [v18 connectClientSendServerMessage:v16 proxyObject:v22 replyQueue:v19 isSynchronous:v20 withReply:v29];

    v23 = v24;
  }
}

void __116__MAAutoAsset__stageDownloadGroups_awaitingAllGroups_withStagingTimeout_reportingProgress_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 40) _failedStageDownloadGroups:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"staged" ofClass:objc_opt_class()];

    v9 = *(a1 + 40);
    if (v8)
    {
      [v9 _successStageDownloadGroups:v8 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }

    else
    {
      [v9 _failedStageDownloadGroups:6104 withResponseError:0 description:@"no staged-information provided by server" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }
  }
}

+ (id)stageDownloadGroupsSync:(id)sync awaitingAllGroups:(BOOL)groups withStagingTimeout:(int64_t)timeout byGroupAssetsStaged:(id *)staged error:(id *)error reportingProgress:(id)progress
{
  groupsCopy = groups;
  v52 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  progressCopy = progress;
  v13 = [syncCopy safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];
  v14 = [syncCopy safeObjectForKey:@"Build" ofClass:objc_opt_class()];
  v15 = [syncCopy safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];
  v16 = [syncCopy safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];
  v17 = [syncCopy safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];
  v18 = v17;
  v42 = v16;
  v43 = v15;
  if (!v13 || !v14 || !v17)
  {
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    v27 = @"MISSING";
    if (v13)
    {
      v28 = v13;
    }

    else
    {
      v28 = @"MISSING";
    }

    if (v14)
    {
      v29 = v14;
    }

    else
    {
      v29 = @"MISSING";
    }

    if (v15)
    {
      v30 = v15;
    }

    else
    {
      v30 = @"MISSING";
    }

    if (v16)
    {
      v31 = v16;
    }

    else
    {
      v31 = @"MISSING";
    }

    if (v18)
    {
      v27 = @"present";
    }

    v23 = [v26 initWithFormat:@"pre-SU-staging by group with missing required updateAttributes | assetTargetOSVersion:%@ | assetTargetBuildVersion:%@ | assetTrainName:%@ | assetRestoreVersion:%@ | assetGroupNames:%@", v28, v29, v30, v31, v27];
    v24 = [MAAutoAssetError buildError:6102 fromOperation:@"auto(stageDownloadGroupsSync)" underlyingError:0 withDescription:v23];
    v32 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      checkedDescription = [v24 checkedDescription];
      *buf = 138543618;
      v49 = v23;
      v50 = 2114;
      v51 = checkedDescription;
      _os_log_impl(&dword_197AD5000, v32, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDownloadGroupsSync} | MISSING required information | failureReason:%{public}@ | returnedError:%{public}@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_23;
  }

  stagedCopy = staged;
  errorCopy = error;
  v19 = progressCopy;
  v20 = [MAAutoAsset alloc];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v22 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:v13 forTargetBuildVersion:v14];
  v47 = 0;
  v23 = [(MAAutoAsset *)v20 initForClientName:v21 selectingAsset:v22 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v47];
  v24 = v47;

  if (v24)
  {
    v25 = 0;
    progressCopy = v19;
    error = errorCopy;
    goto LABEL_24;
  }

  v46 = 0;
  progressCopy = v19;
  if (v19)
  {
    v37 = v44;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __120__MAAutoAsset_stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke;
    v44[3] = &unk_1E74CACC0;
    v21 = &v45;
    v45 = v19;
  }

  else
  {
    v37 = 0;
  }

  error = errorCopy;
  v25 = [v23 _stageDownloadGroupsSync:syncCopy awaitingAllGroups:groupsCopy withStagingTimeout:timeout byGroupAssetsStaged:stagedCopy error:&v46 reportingProgress:v37];
  v24 = v46;
  if (progressCopy)
  {
    v32 = *v21;
LABEL_23:
  }

LABEL_24:

  if (error)
  {
    v34 = v24;
    *error = v24;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v25;
}

void __120__MAAutoAsset_stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__MAAutoAsset_stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (id)_stageDownloadGroupsSync:(id)sync awaitingAllGroups:(BOOL)groups withStagingTimeout:(int64_t)timeout byGroupAssetsStaged:(id *)staged error:(id *)error reportingProgress:(id)progress
{
  groupsCopy = groups;
  syncCopy = sync;
  progressCopy = progress;
  v14 = progressCopy;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5;
  v41 = __Block_byref_object_dispose__5;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5;
  v35 = __Block_byref_object_dispose__5;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  if (progressCopy)
  {
    v15 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __121__MAAutoAsset__stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke;
    v23[3] = &unk_1E74CACC0;
    v18 = &v24;
    v24 = progressCopy;
  }

  else
  {
    v15 = 0;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __121__MAAutoAsset__stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke_2;
  v22[3] = &unk_1E74CAE50;
  v22[4] = &v37;
  v22[5] = &v31;
  v22[6] = &v25;
  [(MAAutoAsset *)self _stageDownloadGroups:syncCopy awaitingAllGroups:groupsCopy withStagingTimeout:timeout reportingProgress:v15 isSynchronous:1 completion:v22, v18];
  if (staged)
  {
    *staged = v32[5];
  }

  if (error)
  {
    *error = v26[5];
  }

  v16 = v38[5];
  if (v14)
  {
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v16;
}

void __121__MAAutoAsset__stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  (*(*(a1 + 32) + 16))();
}

void __121__MAAutoAsset__stageDownloadGroupsSync_awaitingAllGroups_withStagingTimeout_byGroupAssetsStaged_error_reportingProgress___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MAAutoAsset _privateStateQueue];
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

+ (void)stageDownloadAll:(int64_t)all reportingProgress:(id)progress completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  completionCopy = completion;
  v9 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v9);

  if (completionCopy)
  {
    v10 = [MAAutoAsset alloc];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v12 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
    v26 = 0;
    v13 = [(MAAutoAsset *)v10 initForClientName:v11 selectingAsset:v12 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v26];
    v14 = v26;

    if (v14)
    {
      v15 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke_5;
      block[3] = &unk_1E74C9888;
      v12 = &v21;
      v21 = completionCopy;
      v20 = v14;
      dispatch_async(v15, block);
    }

    else
    {
      if (progressCopy)
      {
        v17 = v24;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke;
        v24[3] = &unk_1E74CACC0;
        v12 = &v25;
        v25 = progressCopy;
      }

      else
      {
        v17 = 0;
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke_3;
      v22[3] = &unk_1E74CAF40;
      v23 = completionCopy;
      [v13 _stageDownloadAll:all reportingProgress:v17 isSynchronous:0 completion:v22];

      if (!progressCopy)
      {
        goto LABEL_11;
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v14 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageDownloadAll"];
    *buf = 138543362;
    v28 = v16;
    _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageDownloadAll} | no client completion block | %{public}@", buf, 0xCu);
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

void __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[MAAutoAsset defaultDispatchQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MAAutoAsset_stageDownloadAll_reportingProgress_completion___block_invoke_4;
  v12[3] = &unk_1E74CAF18;
  v10 = *(a1 + 32);
  v15 = a2;
  v16 = a3;
  v13 = v7;
  v14 = v10;
  v11 = v7;
  dispatch_async(v9, v12);
}

- (void)_stageDownloadAll:(int64_t)all reportingProgress:(id)progress isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  progressCopy = progress;
  completionCopy = completion;
  v12 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageDownloadAll", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  if (completionCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__MAAutoAsset__stageDownloadAll_reportingProgress_isSynchronous_completion___block_invoke;
    v17[3] = &unk_1E74CAF68;
    allCopy = all;
    v17[4] = self;
    v18 = progressCopy;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v17];

    v14 = v18;
  }

  else
  {
    v14 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageDownloadAll"];
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageDownloadAll} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

void __76__MAAutoAsset__stageDownloadAll_reportingProgress_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __76__MAAutoAsset__stageDownloadAll_reportingProgress_isSynchronous_completion___block_invoke_3;
    v24 = &unk_1E74C97C8;
    v25 = *(a1 + 32);
    v26 = v3;
    v28 = *(a1 + 64);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](&v21);
    v6 = *(a1 + 64);
    v7 = [MAAutoAsset _privateStateQueue:v21];
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
    v9 = [[MAAutoAssetInfoDesire alloc] initWithDesiredCategory:0 forClientAssetPolicy:0 reasonDesired:0 withCheckWaitTimeout:-2 withLockWaitTimeout:*(a1 + 56) desiringProgress:*(a1 + 40) != 0];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 32) infoInstance];
    [v10 setSafeObject:v13 forKey:@"instance"];

    [v10 setSafeObject:v9 forKey:@"desire"];
    v14 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:DOWNLOAD_ALL" clientID:v12 version:0 message:v10];
    v15 = [*(a1 + 32) _newProxyObjectForStageProgressBlock:*(a1 + 40)];
    v16 = __maConnectionClient;
    v17 = +[MAAutoAsset _privateStateQueue];
    v18 = *(a1 + 64);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __76__MAAutoAsset__stageDownloadAll_reportingProgress_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74CAC70;
    v19 = *(a1 + 32);
    v30 = v15;
    v31 = v19;
    v33 = v18;
    v32 = *(a1 + 48);
    v20 = v15;
    [v16 connectClientSendServerMessage:v14 proxyObject:v20 replyQueue:v17 isSynchronous:v18 withReply:v29];
  }
}

void __76__MAAutoAsset__stageDownloadAll_reportingProgress_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 40) _failedStageDownloadAll:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"staged" ofClass:objc_opt_class()];

    v9 = *(a1 + 40);
    if (v8)
    {
      [v9 _successStageDownloadAll:v8 isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }

    else
    {
      [v9 _failedStageDownloadAll:6104 withResponseError:0 description:@"no staged-information provided by server" isSynchronous:*(a1 + 56) completion:*(a1 + 48)];
    }
  }
}

+ (unint64_t)stageDownloadAllSync:(int64_t)sync assetsSuccessfullyStaged:(int64_t *)staged error:(id *)error reportingProgress:(id)progress
{
  progressCopy = progress;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v10 = [MAAutoAsset alloc];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v12 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
  v13 = (v23 + 5);
  obj = v23[5];
  v14 = [(MAAutoAsset *)v10 initForClientName:v11 selectingAsset:v12 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&obj];
  objc_storeStrong(v13, obj);

  if (!v23[5])
  {
    if (progressCopy)
    {
      v15 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __85__MAAutoAsset_stageDownloadAllSync_assetsSuccessfullyStaged_error_reportingProgress___block_invoke;
      v19[3] = &unk_1E74CACC0;
      v12 = &v20;
      v20 = progressCopy;
    }

    else
    {
      v15 = 0;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__MAAutoAsset_stageDownloadAllSync_assetsSuccessfullyStaged_error_reportingProgress___block_invoke_3;
    v18[3] = &unk_1E74CAF90;
    v18[4] = &v32;
    v18[5] = &v28;
    v18[6] = &v22;
    [v14 _stageDownloadAll:sync reportingProgress:v15 isSynchronous:1 completion:v18];
    if (progressCopy)
    {
    }
  }

  if (staged)
  {
    *staged = v29[3];
  }

  if (error)
  {
    *error = v23[5];
  }

  v16 = v33[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v16;
}

void __85__MAAutoAsset_stageDownloadAllSync_assetsSuccessfullyStaged_error_reportingProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = +[MAAutoAsset defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MAAutoAsset_stageDownloadAllSync_assetsSuccessfullyStaged_error_reportingProgress___block_invoke_2;
  block[3] = &unk_1E74CAA40;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __85__MAAutoAsset_stageDownloadAllSync_assetsSuccessfullyStaged_error_reportingProgress___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

+ (void)stageCancelOperation:(id)operation
{
  v21 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v4);

  if (operationCopy)
  {
    v5 = [MAAutoAsset alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v7 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
    v18 = 0;
    v8 = [(MAAutoAsset *)v5 initForClientName:v6 selectingAsset:v7 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v18];
    v9 = v18;

    if (v9)
    {
      v10 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__MAAutoAsset_stageCancelOperation___block_invoke_3;
      block[3] = &unk_1E74C9888;
      v11 = &v15;
      v15 = operationCopy;
      v14 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __36__MAAutoAsset_stageCancelOperation___block_invoke;
      v16[3] = &unk_1E74CAFB8;
      v11 = &v17;
      v17 = operationCopy;
      [v8 _stageCancelOperationIsSynchronous:0 completion:v16];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v9 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageCancelOperation"];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageCancelOperation} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __36__MAAutoAsset_stageCancelOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[MAAutoAsset defaultDispatchQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MAAutoAsset_stageCancelOperation___block_invoke_2;
  v8[3] = &unk_1E74C9888;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)_stageCancelOperationIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageCancelOperationIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__MAAutoAsset__stageCancelOperationIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageCancelOperation"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageCancelOperation} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__MAAutoAsset__stageCancelOperationIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__MAAutoAsset__stageCancelOperationIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:CANCEL_OPERATION" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__MAAutoAsset__stageCancelOperationIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __61__MAAutoAsset__stageCancelOperationIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedStageCancelOperation:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successStageCancelOperationIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)stageCancelOperationSync
{
  v2 = [MAAutoAsset alloc];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v4 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
  v8 = 0;
  v5 = [(MAAutoAsset *)v2 initForClientName:v3 selectingAsset:v4 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v8];
  _stageCancelOperationSync = v8;

  if (!_stageCancelOperationSync)
  {
    _stageCancelOperationSync = [v5 _stageCancelOperationSync];
  }

  return _stageCancelOperationSync;
}

- (id)_stageCancelOperationSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MAAutoAsset__stageCancelOperationSync__block_invoke;
  v4[3] = &unk_1E74CAA18;
  v4[4] = &v5;
  [(MAAutoAsset *)self _stageCancelOperationIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__MAAutoAsset__stageCancelOperationSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

+ (void)stagePurgeAll:(id)all
{
  v21 = *MEMORY[0x1E69E9840];
  allCopy = all;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v4);

  if (allCopy)
  {
    v5 = [MAAutoAsset alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v7 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
    v18 = 0;
    v8 = [(MAAutoAsset *)v5 initForClientName:v6 selectingAsset:v7 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v18];
    v9 = v18;

    if (v9)
    {
      v10 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__MAAutoAsset_stagePurgeAll___block_invoke_3;
      block[3] = &unk_1E74C9888;
      v11 = &v15;
      v15 = allCopy;
      v14 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __29__MAAutoAsset_stagePurgeAll___block_invoke;
      v16[3] = &unk_1E74CAFB8;
      v11 = &v17;
      v17 = allCopy;
      [v8 _stagePurgeAllIsSynchronous:0 completion:v16];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v9 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stagePurgeAll"];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stagePurgeAll} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __29__MAAutoAsset_stagePurgeAll___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[MAAutoAsset defaultDispatchQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__MAAutoAsset_stagePurgeAll___block_invoke_2;
  v8[3] = &unk_1E74C9888;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)_stagePurgeAllIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_stagePurgeAllIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__MAAutoAsset__stagePurgeAllIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stagePurgeAll"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stagePurgeAll} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __54__MAAutoAsset__stagePurgeAllIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__MAAutoAsset__stagePurgeAllIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:PURGE_ALL" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__MAAutoAsset__stagePurgeAllIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __54__MAAutoAsset__stagePurgeAllIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedStagePurgeAll:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successStagePurgeAllIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)stagePurgeAllSync
{
  v2 = [MAAutoAsset alloc];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v4 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
  v8 = 0;
  v5 = [(MAAutoAsset *)v2 initForClientName:v3 selectingAsset:v4 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v8];
  _stagePurgeAllSync = v8;

  if (!_stagePurgeAllSync)
  {
    _stagePurgeAllSync = [v5 _stagePurgeAllSync];
  }

  return _stagePurgeAllSync;
}

- (id)_stagePurgeAllSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__MAAutoAsset__stagePurgeAllSync__block_invoke;
  v4[3] = &unk_1E74CAA18;
  v4[4] = &v5;
  [(MAAutoAsset *)self _stagePurgeAllIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __33__MAAutoAsset__stagePurgeAllSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

+ (void)stageEraseAll:(id)all
{
  v21 = *MEMORY[0x1E69E9840];
  allCopy = all;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v4);

  if (allCopy)
  {
    v5 = [MAAutoAsset alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    v7 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
    v18 = 0;
    v8 = [(MAAutoAsset *)v5 initForClientName:v6 selectingAsset:v7 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v18];
    v9 = v18;

    if (v9)
    {
      v10 = +[MAAutoAsset defaultDispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__MAAutoAsset_stageEraseAll___block_invoke_3;
      block[3] = &unk_1E74C9888;
      v11 = &v15;
      v15 = allCopy;
      v14 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __29__MAAutoAsset_stageEraseAll___block_invoke;
      v16[3] = &unk_1E74CAFB8;
      v11 = &v17;
      v17 = allCopy;
      [v8 _stageEraseAllIsSynchronous:0 completion:v16];
    }

    goto LABEL_8;
  }

  +[MAAutoAsset frameworkInstanceSetLogDomain];
  v9 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v8 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"+stageEraseAll"];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){+stageEraseAll} | no client completion block | %{public}@", buf, 0xCu);
LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __29__MAAutoAsset_stageEraseAll___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[MAAutoAsset defaultDispatchQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__MAAutoAsset_stageEraseAll___block_invoke_2;
  v8[3] = &unk_1E74C9888;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)_stageEraseAllIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_197AD5000, "MAAuto:_stageEraseAllIsSynchronous", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__MAAutoAsset__stageEraseAllIsSynchronous_completion___block_invoke;
    v12[3] = &unk_1E74CAC20;
    v12[4] = self;
    synchronousCopy = synchronous;
    v13 = completionCopy;
    [(MAAutoAsset *)self connectToServerFrameworkCompletion:v12];
  }

  else
  {
    v9 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stageEraseAll"];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_ERROR, "MA-auto(staging-client){stageEraseAll} | no staging-client completion block | %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&state);

  v11 = *MEMORY[0x1E69E9840];
}

void __54__MAAutoAsset__stageEraseAllIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__MAAutoAsset__stageEraseAllIsSynchronous_completion___block_invoke_3;
    v18[3] = &unk_1E74C97C8;
    v18[4] = *(a1 + 32);
    v19 = v3;
    v21 = *(a1 + 48);
    v20 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v18);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAsset _privateStateQueue];
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
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v11 = [v10 UUIDString];

    v12 = [*(a1 + 32) infoInstance];
    [v9 setSafeObject:v12 forKey:@"instance"];

    v13 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-STAGE:ERASE_ALL" clientID:v11 version:0 message:v9];
    v14 = __maConnectionClient;
    v15 = +[MAAutoAsset _privateStateQueue];
    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__MAAutoAsset__stageEraseAllIsSynchronous_completion___block_invoke_2;
    v22[3] = &unk_1E74C97A0;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v24 = v16;
    v23 = v17;
    [v14 connectClientSendServerMessage:v13 proxyObject:0 replyQueue:v15 isSynchronous:v16 withReply:v22];
  }
}

void __54__MAAutoAsset__stageEraseAllIsSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (!a2 || v9)
  {
    if (v9)
    {
      [v7 _failedStageEraseAll:0 withResponseError:v9 description:@"failure reported by server" isSynchronous:v6 completion:v8];
    }

    else
    {
      [v7 _failedStagePurgeAll:6104 withResponseError:0 description:@"no response message from server" isSynchronous:v6 completion:v8];
    }
  }

  else
  {
    [v7 _successStageEraseAllIsSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)stageEraseAllSync
{
  v2 = [MAAutoAsset alloc];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v4 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
  v8 = 0;
  v5 = [(MAAutoAsset *)v2 initForClientName:v3 selectingAsset:v4 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v8];
  _stageEraseAllSync = v8;

  if (!_stageEraseAllSync)
  {
    _stageEraseAllSync = [v5 _stageEraseAllSync];
  }

  return _stageEraseAllSync;
}

- (id)_stageEraseAllSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__MAAutoAsset__stageEraseAllSync__block_invoke;
  v4[3] = &unk_1E74CAA18;
  v4[4] = &v5;
  [(MAAutoAsset *)self _stageEraseAllIsSynchronous:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __33__MAAutoAsset__stageEraseAllSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAsset _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (MAAutoAssetInfoInstance)infoInstance
{
  setupConnectionState = [(MAAutoAsset *)self setupConnectionState];

  if (setupConnectionState)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MAAutoAssetInfoInstance alloc];
    autoAssetClientName = [(MAAutoAsset *)self autoAssetClientName];
    v7 = __maAutoAssetSharedClientProcessName;
    v8 = __maAutoAssetSharedClientProcessID;
    assetSelector = [(MAAutoAsset *)self assetSelector];
    v10 = +[MAAutoAsset frameworkInstanceUUID];
    v4 = [(MAAutoAssetInfoInstance *)v5 initForClientName:autoAssetClientName withProcessName:v7 withProcessID:v8 usingAssetSelector:assetSelector associatingFrameworkUUID:v10];
  }

  return v4;
}

- (MAAutoAssetInfoInstance)lockedInfoInstance
{
  setupConnectionState = [(MAAutoAsset *)self setupConnectionState];

  if (setupConnectionState)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MAAutoAssetInfoInstance alloc];
    autoAssetClientName = [(MAAutoAsset *)self autoAssetClientName];
    v7 = __maAutoAssetSharedClientProcessName;
    v8 = __maAutoAssetSharedClientProcessID;
    contentLockedSelector = [(MAAutoAsset *)self contentLockedSelector];
    if (contentLockedSelector)
    {
      [(MAAutoAsset *)self contentLockedSelector];
    }

    else
    {
      [(MAAutoAsset *)self assetSelector];
    }
    v10 = ;
    v11 = +[MAAutoAsset frameworkInstanceUUID];
    v4 = [(MAAutoAssetInfoInstance *)v5 initForClientName:autoAssetClientName withProcessName:v7 withProcessID:v8 usingAssetSelector:v10 associatingFrameworkUUID:v11];
  }

  return v4;
}

- (SUCoreConnectClient)maAutoAssetSharedConnectionClient
{
  setupConnectionState = [(MAAutoAsset *)self setupConnectionState];

  if (setupConnectionState)
  {
    v3 = 0;
  }

  else
  {
    v3 = __maConnectionClient;
  }

  return v3;
}

+ (id)assetSelectorForAssetTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  if (versionCopy)
  {
    v7 = versionCopy;
  }

  else
  {
    v7 = @"MAAutoAssetStage-target-os-version-specifier";
  }

  if (buildVersionCopy)
  {
    v8 = buildVersionCopy;
  }

  else
  {
    v8 = @"MAAutoAssetControl-target-build-version-version";
  }

  v9 = [[MAAutoAssetSelector alloc] initForAssetType:@"MAAutoAssetStage-target-all-asset-types" withAssetSpecifier:v7 matchingAssetVersion:v8];

  return v9;
}

+ (void)frameworkInstanceSetLogDomain
{
  if (frameworkInstanceSetLogDomain_frameworkLogDomainOnce_0 != -1)
  {
    +[MAAutoAsset frameworkInstanceSetLogDomain];
  }
}

void __44__MAAutoAsset_frameworkInstanceSetLogDomain__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%s", @"com.apple.MAAutoClient", getprogname()];
  v0 = [MEMORY[0x1E69D3880] sharedCore];
  [v0 useDomain:v1];
}

+ (id)defaultDispatchQueue
{
  if (defaultDispatchQueue_defaultQueueOnce_1 != -1)
  {
    +[MAAutoAsset defaultDispatchQueue];
  }

  v3 = defaultDispatchQueue_defaultQueue_1;

  return v3;
}

void __35__MAAutoAsset_defaultDispatchQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoasset.client" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = defaultDispatchQueue_defaultQueue_1;
  defaultDispatchQueue_defaultQueue_1 = v1;
}

+ (id)_privateStateQueue
{
  if (_privateStateQueue_frameworkQueueOnce_0 != -1)
  {
    +[MAAutoAsset _privateStateQueue];
  }

  v3 = _privateStateQueue_frameworkQueue_0;

  return v3;
}

void __33__MAAutoAsset__privateStateQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoasset.framework" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = _privateStateQueue_frameworkQueue_0;
  _privateStateQueue_frameworkQueue_0 = v1;
}

+ (id)frameworkInstanceUUID
{
  if (frameworkInstanceUUID_frameworkUUIDOnce_0 != -1)
  {
    +[MAAutoAsset frameworkInstanceUUID];
  }

  v3 = frameworkInstanceUUID_frameworkUUID_0;

  return v3;
}

uint64_t __36__MAAutoAsset_frameworkInstanceUUID__block_invoke()
{
  frameworkInstanceUUID_frameworkUUID_0 = objc_alloc_init(MEMORY[0x1E696AFB0]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)logMAAutoAssetVersion
{
  if (logMAAutoAssetVersion___maAutoAssetLogVersionDispatchOnce != -1)
  {
    +[MAAutoAsset logMAAutoAssetVersion];
  }
}

void __36__MAAutoAsset_logMAAutoAssetVersion__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0C1B388];
  [v0 appendString:@"|TARGET_OS_MAC"];
  [v0 appendString:@"|TARGET_OS_IPHONE"];
  if ([MEMORY[0x1E69D3880] stringIsEqual:v0 to:&stru_1F0C1B388])
  {
    v1 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"(NO_TARGETS_DEFINED)"];

    v0 = v1;
  }

  else
  {
    [v0 appendString:@"|"];
  }

  v2 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = @"2.1.2";
    v6 = 2114;
    v7 = v0;
    _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "MA-auto(FRAMEWORK_VERSION:%{public}@) | build environment:%{public}@", &v4, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (void)estimateEvictableBytesForSoftwareUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__MAAutoAsset_SoftwareUpdateSuspendResume__estimateEvictableBytesForSoftwareUpdateWithCompletion___block_invoke;
  v6[3] = &unk_1E74CB638;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _estimateEvictableBytesForSoftwareUpdateIsSynchronous:0 completion:v6];
}

void __98__MAAutoAsset_SoftwareUpdateSuspendResume__estimateEvictableBytesForSoftwareUpdateWithCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [*(a1 + 40) defaultDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__MAAutoAsset_SoftwareUpdateSuspendResume__estimateEvictableBytesForSoftwareUpdateWithCompletion___block_invoke_2;
  v11[3] = &unk_1E74CB610;
  v9 = *(a1 + 32);
  v15 = a2;
  v13 = v9;
  v14 = a3;
  v12 = v7;
  v10 = v7;
  dispatch_async(v8, v11);
}

+ (void)suspendForSoftwareUpdateWithNeededBytes:(unint64_t)bytes completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__MAAutoAsset_SoftwareUpdateSuspendResume__suspendForSoftwareUpdateWithNeededBytes_completion___block_invoke;
  v8[3] = &unk_1E74CB688;
  v9 = completionCopy;
  selfCopy = self;
  v7 = completionCopy;
  [self _suspendForSoftwareUpdateIsSynchronous:0 neededBytes:bytes completion:v8];
}

void __95__MAAutoAsset_SoftwareUpdateSuspendResume__suspendForSoftwareUpdateWithNeededBytes_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 40) defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__MAAutoAsset_SoftwareUpdateSuspendResume__suspendForSoftwareUpdateWithNeededBytes_completion___block_invoke_2;
  block[3] = &unk_1E74CB660;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

+ (void)resumeFromSoftwareUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__MAAutoAsset_SoftwareUpdateSuspendResume__resumeFromSoftwareUpdateWithCompletion___block_invoke;
  v6[3] = &unk_1E74CB688;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _resumeFromSoftwareUpdateIsSynchronous:0 completion:v6];
}

void __83__MAAutoAsset_SoftwareUpdateSuspendResume__resumeFromSoftwareUpdateWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 40) defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MAAutoAsset_SoftwareUpdateSuspendResume__resumeFromSoftwareUpdateWithCompletion___block_invoke_2;
  block[3] = &unk_1E74CB660;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

+ (void)suspendResumeStatusForSoftwareUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__MAAutoAsset_SoftwareUpdateSuspendResume__suspendResumeStatusForSoftwareUpdateWithCompletion___block_invoke;
  v6[3] = &unk_1E74CB6D8;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [self _suspendResumeStatusForSoftwareUpdateIsSynchronous:0 completion:v6];
}

void __95__MAAutoAsset_SoftwareUpdateSuspendResume__suspendResumeStatusForSoftwareUpdateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 40) defaultDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__MAAutoAsset_SoftwareUpdateSuspendResume__suspendResumeStatusForSoftwareUpdateWithCompletion___block_invoke_2;
  block[3] = &unk_1E74CB6B0;
  v10 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

+ (BOOL)estimateEvictableBytesForSoftwareUpdateSyncWithReturnEvictableBytesPtr:(unint64_t *)ptr returnEstimateEvictableBytesErrorPtr:(id *)errorPtr
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __152__MAAutoAsset_SoftwareUpdateSuspendResume__estimateEvictableBytesForSoftwareUpdateSyncWithReturnEvictableBytesPtr_returnEstimateEvictableBytesErrorPtr___block_invoke;
  v8[3] = &unk_1E74CB700;
  v8[4] = &v19;
  v8[5] = &v15;
  v8[6] = &v9;
  [self _estimateEvictableBytesForSoftwareUpdateIsSynchronous:1 completion:v8];
  if (ptr)
  {
    *ptr = v16[3];
  }

  if (errorPtr)
  {
    *errorPtr = v10[5];
  }

  v6 = *(v20 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v6;
}

void __152__MAAutoAsset_SoftwareUpdateSuspendResume__estimateEvictableBytesForSoftwareUpdateSyncWithReturnEvictableBytesPtr_returnEstimateEvictableBytesErrorPtr___block_invoke(void *a1, char a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

+ (BOOL)suspendForSoftwareUpdateSyncWithNeededBytes:(unint64_t)bytes returnSuspendErrorPtr:(id *)ptr
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__MAAutoAsset_SoftwareUpdateSuspendResume__suspendForSoftwareUpdateSyncWithNeededBytes_returnSuspendErrorPtr___block_invoke;
  v7[3] = &unk_1E74CB728;
  v7[4] = &v14;
  v7[5] = &v8;
  [self _suspendForSoftwareUpdateIsSynchronous:1 neededBytes:bytes completion:v7];
  if (ptr)
  {
    *ptr = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

+ (BOOL)resumeFromSoftwareUpdateSyncWithReturnResumeErrorPtr:(id *)ptr
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__MAAutoAsset_SoftwareUpdateSuspendResume__resumeFromSoftwareUpdateSyncWithReturnResumeErrorPtr___block_invoke;
  v6[3] = &unk_1E74CB728;
  v6[4] = &v13;
  v6[5] = &v7;
  [self _resumeFromSoftwareUpdateIsSynchronous:1 completion:v6];
  if (ptr)
  {
    *ptr = v8[5];
  }

  v4 = *(v14 + 24);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

+ (int64_t)suspendResumeStatusForSoftwareUpdateSyncWithReturnStatusErrorPtr:(id *)ptr
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __109__MAAutoAsset_SoftwareUpdateSuspendResume__suspendResumeStatusForSoftwareUpdateSyncWithReturnStatusErrorPtr___block_invoke;
  v6[3] = &unk_1E74CB080;
  v6[4] = &v13;
  v6[5] = &v7;
  [self _suspendResumeStatusForSoftwareUpdateIsSynchronous:1 completion:v6];
  if (ptr)
  {
    *ptr = v8[5];
  }

  v4 = v14[3];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

+ (void)_sendRequestIsSynchronous:(BOOL)synchronous fromOperation:(id)operation messageName:(id)name requestInfo:(id)info completion:(id)completion
{
  synchronousCopy = synchronous;
  operationCopy = operation;
  nameCopy = name;
  infoCopy = info;
  completionCopy = completion;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __119__MAAutoAsset_SoftwareUpdateSuspendResume___sendRequestIsSynchronous_fromOperation_messageName_requestInfo_completion___block_invoke;
  v50[3] = &unk_1E74CB750;
  v14 = operationCopy;
  v51 = v14;
  v15 = completionCopy;
  v52 = v15;
  v16 = MEMORY[0x19A8EC5D0](v50);
  v17 = [MAAutoAsset alloc];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
  v19 = [MAAutoAsset assetSelectorForAssetTargetOSVersion:0 forTargetBuildVersion:0];
  v49 = 0;
  v20 = [(MAAutoAsset *)v17 initForClientName:v18 selectingAsset:v19 usingDesiredPolicyCategory:0 completingFromQueue:0 error:&v49];
  v21 = v49;

  if (!v20 || v21)
  {
    (v16)[2](v16, 0, v21);
  }

  else
  {
    setupConnectionState = [v20 setupConnectionState];
    if (setupConnectionState)
    {
      v23 = setupConnectionState;
      v16[2](v16, 0, setupConnectionState);
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (v25)
      {
        v43 = v25;
        v26 = +[MAAutoAsset frameworkInstanceUUID];
        uUIDString = [v26 UUIDString];

        if (uUIDString)
        {
          v28 = uUIDString;
          infoInstance = [v20 infoInstance];
          v24 = nameCopy;
          if (infoInstance)
          {
            v30 = infoInstance;
            [v43 setSafeObject:infoInstance forKey:@"instance"];
            v42 = v28;
            if (!infoCopy)
            {
              v39 = [MAAutoAssetError buildError:6101 fromOperation:v14 underlyingError:0 withDescription:@"missing request info"];
              (v16)[2](v16, 0, v39);

              goto LABEL_7;
            }

            v41 = v30;
            [v43 setSafeObject:infoCopy forKey:@"suspendResumeForSU"];
            v31 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:v24 clientID:v28 version:0 message:v43];
            if (!v31)
            {
              v40 = [MAAutoAssetError buildError:6101 fromOperation:v14 underlyingError:0 withDescription:@"failed to alloc/init message"];
              (v16)[2](v16, 0, v40);

              goto LABEL_7;
            }

            v32 = v31;
            maAutoAssetSharedConnectionClient = [v20 maAutoAssetSharedConnectionClient];
            if (maAutoAssetSharedConnectionClient)
            {
              v34 = maAutoAssetSharedConnectionClient;
              _privateStateQueue = [self _privateStateQueue];
              v46[0] = MEMORY[0x1E69E9820];
              v46[1] = 3221225472;
              v46[2] = __119__MAAutoAsset_SoftwareUpdateSuspendResume___sendRequestIsSynchronous_fromOperation_messageName_requestInfo_completion___block_invoke_415;
              v46[3] = &unk_1E74CB778;
              v48 = v16;
              v47 = v14;
              [v34 connectClientSendServerMessage:v32 proxyObject:0 replyQueue:_privateStateQueue isSynchronous:synchronousCopy withReply:v46];
            }

            else
            {
              v34 = [MAAutoAssetError buildError:6101 fromOperation:v14 underlyingError:0 withDescription:@"missing connect client"];
              (v16)[2](v16, 0, v34);
            }
          }

          else
          {
            v38 = [MAAutoAssetError buildError:6101 fromOperation:v14 underlyingError:0 withDescription:@"failed to derive info"];
            (v16)[2](v16, 0, v38);
          }

          goto LABEL_7;
        }

        v37 = [MAAutoAssetError buildError:6101 fromOperation:v14 underlyingError:0 withDescription:@"failed to alloc/init clientID"];
        (v16)[2](v16, 0, v37);
      }

      else
      {
        v36 = [MAAutoAssetError buildError:6101 fromOperation:v14 underlyingError:0 withDescription:@"failed to alloc/init messageInfo"];
        (v16)[2](v16, 0, v36);
      }
    }
  }

  v24 = nameCopy;
LABEL_7:
}

void __119__MAAutoAsset_SoftwareUpdateSuspendResume___sendRequestIsSynchronous_fromOperation_messageName_requestInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MAClientLog(@"Auto");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v5 summary];
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v11 = "MA-auto(%@) | SUCCESS | %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_197AD5000, v12, v13, v11, &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v10 = [v6 checkedSummary];
    v17 = 138412546;
    v18 = v14;
    v19 = 2114;
    v20 = v10;
    v11 = "MA-auto(%@)| error:%{public}@";
    v12 = v8;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v15);
  v16 = *MEMORY[0x1E69E9840];
}

void __119__MAAutoAsset_SoftwareUpdateSuspendResume___sendRequestIsSynchronous_fromOperation_messageName_requestInfo_completion___block_invoke_415(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v13)
  {
    v6 = [v13 message];
    if (v6)
    {
      v7 = [v6 safeObjectForKey:@"suspendResumeForSU" ofClass:objc_opt_class()];
      v8 = *(a1 + 40);
      if (v7)
      {
        v9 = v7;
        (*(v8 + 16))(*(a1 + 40), v7, 0);
      }

      else
      {
        v9 = [MAAutoAssetError buildError:6104 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to find responseInfo"];
        (*(v8 + 16))(v8, 0, v9);
      }
    }

    else
    {
      v12 = *(a1 + 40);
      v9 = [MAAutoAssetError buildError:6104 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"missing response.message"];
      (*(v12 + 16))(v12, 0, v9);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MAAutoAssetError buildError:6104 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"missing response"];
    (*(v10 + 16))(v10, 0, v11);
  }
}

void __109__MAAutoAsset_SoftwareUpdateSuspendResume___estimateEvictableBytesForSoftwareUpdateIsSynchronous_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 40);
    if (isKindOfClass)
    {
      v8 = v9;
      (*(v7 + 16))(v7, 1, [v8 estimatedEvictableBytes], 0);
    }

    else
    {
      v8 = [MAAutoAssetError buildError:6104 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unexpected responseMessage"];
      (*(v7 + 16))(v7, 0, 0, v8);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __106__MAAutoAsset_SoftwareUpdateSuspendResume___suspendResumeStatusForSoftwareUpdateIsSynchronous_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      v8 = v9;
      (*(v7 + 16))(v7, [v8 status], 0);
    }

    else
    {
      v8 = [MAAutoAssetError buildError:6104 fromOperation:@"auto(suspend-resume-su-status)" underlyingError:0 withDescription:@"unexpected responseMessage"];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end
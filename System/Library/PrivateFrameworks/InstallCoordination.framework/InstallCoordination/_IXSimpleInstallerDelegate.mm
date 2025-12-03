@interface _IXSimpleInstallerDelegate
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record;
@end

@implementation _IXSimpleInstallerDelegate

- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record
{
  successfullyCopy = successfully;
  v6 = sAppInstallCoordinatorQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___IXSimpleInstallerDelegate_coordinatorDidCompleteSuccessfully_forApplicationRecord___block_invoke;
  v8[3] = &unk_1E85C5BF0;
  v8[4] = self;
  v9 = successfullyCopy;
  v7 = successfullyCopy;
  dispatch_async(v6, v8);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  v7 = sAppInstallCoordinatorQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___IXSimpleInstallerDelegate_coordinator_canceledWithReason_client___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = reasonCopy;
  v8 = reasonCopy;
  dispatch_async(v7, v9);
}

- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (phase == 1)
  {
    v8 = [(_IXSimpleInstallerDelegate *)self progressBlock:coordinator];

    if (v8)
    {
      progressBlock = [(_IXSimpleInstallerDelegate *)self progressBlock];
      v14[0] = @"Status";
      v10 = IXStatusForInstallationProgress(progress);
      v14[1] = @"PercentComplete";
      v15[0] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:progress];
      v15[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      (progressBlock)[2](progressBlock, v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end
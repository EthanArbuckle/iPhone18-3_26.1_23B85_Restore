@interface _IXSimpleInstallerDelegate
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
@end

@implementation _IXSimpleInstallerDelegate

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v5 = a3;
  v6 = sAppInstallCoordinatorQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___IXSimpleInstallerDelegate_coordinatorDidCompleteSuccessfully_forApplicationRecord___block_invoke;
  v8[3] = &unk_1E85C5BF0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v6 = a4;
  v7 = sAppInstallCoordinatorQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___IXSimpleInstallerDelegate_coordinator_canceledWithReason_client___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a5 == 1)
  {
    v8 = [(_IXSimpleInstallerDelegate *)self progressBlock:a3];

    if (v8)
    {
      v9 = [(_IXSimpleInstallerDelegate *)self progressBlock];
      v14[0] = @"Status";
      v10 = IXStatusForInstallationProgress(a4);
      v14[1] = @"PercentComplete";
      v15[0] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
      v15[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      (v9)[2](v9, v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end
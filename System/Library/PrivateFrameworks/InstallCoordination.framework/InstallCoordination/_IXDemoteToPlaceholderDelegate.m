@interface _IXDemoteToPlaceholderDelegate
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
@end

@implementation _IXDemoteToPlaceholderDelegate

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90___IXDemoteToPlaceholderDelegate_coordinatorDidCompleteSuccessfully_forApplicationRecord___block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(sAppInstallCoordinatorQueue_0, block);
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v6 = a4;
  v7 = sAppInstallCoordinatorQueue_0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___IXDemoteToPlaceholderDelegate_coordinator_canceledWithReason_client___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

@end
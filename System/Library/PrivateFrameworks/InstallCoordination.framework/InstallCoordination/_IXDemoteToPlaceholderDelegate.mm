@interface _IXDemoteToPlaceholderDelegate
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record;
@end

@implementation _IXDemoteToPlaceholderDelegate

- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90___IXDemoteToPlaceholderDelegate_coordinatorDidCompleteSuccessfully_forApplicationRecord___block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(sAppInstallCoordinatorQueue_0, block);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  v7 = sAppInstallCoordinatorQueue_0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___IXDemoteToPlaceholderDelegate_coordinator_canceledWithReason_client___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = reasonCopy;
  v8 = reasonCopy;
  dispatch_async(v7, v9);
}

@end
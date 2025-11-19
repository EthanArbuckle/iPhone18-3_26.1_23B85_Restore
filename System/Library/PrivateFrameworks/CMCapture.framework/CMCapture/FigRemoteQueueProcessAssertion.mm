@interface FigRemoteQueueProcessAssertion
@end

@implementation FigRemoteQueueProcessAssertion

void __FigRemoteQueueProcessAssertion_awakeClientAndRunCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v8 = 0;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RemoteQueue.%d.isReleasingResourcesProcessAssertion", *(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x1E69C7548]);
  v5 = [MEMORY[0x1E69C7640] targetWithPid:*(a1 + 40)];
  v7 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.cameracapture" name:@"HoldingBuffer"];
  v6 = [v4 initWithExplanation:v3 target:v5 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v7, 1)}];
  [v6 acquireWithError:&v8];
  (*(*(a1 + 32) + 16))();
  [v6 invalidate];

  objc_autoreleasePoolPop(v2);
}

@end
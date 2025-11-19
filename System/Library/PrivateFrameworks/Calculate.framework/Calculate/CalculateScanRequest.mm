@interface CalculateScanRequest
+ (id)concurrentQueue;
+ (void)_lock;
- (void)cancel;
- (void)update;
@end

@implementation CalculateScanRequest

- (void)cancel
{
  +[CalculateScanRequest _lock];
  [(CalculateScanRequest *)self setIsCanceled:1];

  +[CalculateScanRequest _unlock];
}

- (void)update
{
  v3 = +[CalculateScanRequest concurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CalculateScanRequest_update__block_invoke;
  block[3] = &unk_1E815C940;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __30__CalculateScanRequest_update__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) string];
  v3 = [*(a1 + 32) options];
  v7 = [Calculate scan:v2 options:v3 stop:*(a1 + 32) + 8];

  +[CalculateScanRequest _lock];
  if ([*(a1 + 32) isCanceled])
  {

    v7 = MEMORY[0x1E695E0F0];
  }

  +[CalculateScanRequest _unlock];
  v4 = [*(a1 + 32) resultHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) resultHandler];
    (v5)[2](v5, v7);
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (id)concurrentQueue
{
  if (concurrentQueue_onceToken[0] != -1)
  {
    dispatch_once(concurrentQueue_onceToken, &__block_literal_global_18);
  }

  v3 = concurrentQueue_queue;

  return v3;
}

uint64_t __39__CalculateScanRequest_concurrentQueue__block_invoke()
{
  concurrentQueue_queue = dispatch_queue_create("com.apple.framework.calculate.scan", MEMORY[0x1E69E96A8]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_lock
{
  if (_lock_onceToken_640[0] != -1)
  {
    dispatch_once(_lock_onceToken_640, &__block_literal_global_641);
  }

  v3 = calculateScanRequestLock;

  [v3 lock];
}

uint64_t __29__CalculateScanRequest__lock__block_invoke()
{
  calculateScanRequestLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

@end
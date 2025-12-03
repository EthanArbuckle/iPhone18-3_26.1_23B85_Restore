@interface MTExpiringFuture
- (MTExpiringFuture)initWithTimeout:(double)timeout;
@end

@implementation MTExpiringFuture

- (MTExpiringFuture)initWithTimeout:(double)timeout
{
  v12.receiver = self;
  v12.super_class = MTExpiringFuture;
  v4 = [(MTExpiringFuture *)&v12 init];
  v5 = v4;
  if (timeout > 0.0 && v4 != 0)
  {
    v7 = dispatch_time(0, (timeout * 1000000000.0));
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__MTExpiringFuture_initWithTimeout___block_invoke;
    block[3] = &unk_1E7B0C9D8;
    v11 = v5;
    dispatch_after(v7, v8, block);
  }

  return v5;
}

void __36__MTExpiringFuture_initWithTimeout___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696ABC0] na_timeoutError];
    [v2 finishWithError:v3];
  }
}

@end
@interface _CNInlineScheduler
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _CNInlineScheduler

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v4 = objc_autoreleasePoolPush();
  blockCopy[2]();
  objc_autoreleasePoolPop(v4);
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v5 = objc_alloc_init(CNInlineSchedulerCancelationToken);
  v6 = objc_autoreleasePoolPush();
  blockCopy[2](blockCopy, v5);
  objc_autoreleasePoolPop(v6);

  return v5;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___CNInlineScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  aBlock[3] = &unk_1E6ED8148;
  v7 = blockCopy;
  v19 = v7;
  v8 = _Block_copy(aBlock);
  Current = CFAbsoluteTimeGetCurrent();
  v10 = CFRunLoopTimerCreateWithHandler(0, Current + delay, 0.0, 0, 0, v8);
  v11 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v11, v10, *MEMORY[0x1E695E8D0]);
  v12 = v10;
  v13 = objc_alloc_init(CNInlineSchedulerCancelationToken);
  objc_initWeak(&location, v12);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63___CNInlineScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v15[3] = &unk_1E6ED6498;
  objc_copyWeak(&v16, &location);
  [(CNCancelationToken *)v13 addCancelationBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v13;
}

@end
@interface FCOperationDelayedRetrySignal
- (FCOperationDelayedRetrySignal)initWithDelay:(double)delay;
- (void)onQueue:(id)queue signal:(id)signal;
@end

@implementation FCOperationDelayedRetrySignal

- (FCOperationDelayedRetrySignal)initWithDelay:(double)delay
{
  v7.receiver = self;
  v7.super_class = FCOperationDelayedRetrySignal;
  v4 = [(FCOperationDelayedRetrySignal *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delay = delay;
    v4->_signalTime = dispatch_time(0, (delay * 1000000000.0));
  }

  return v5;
}

- (void)onQueue:(id)queue signal:(id)signal
{
  signalCopy = signal;
  signalTime = self->_signalTime;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FCOperationDelayedRetrySignal_onQueue_signal___block_invoke;
  block[3] = &unk_1E7C379C8;
  v10 = signalCopy;
  v8 = signalCopy;
  dispatch_after(signalTime, queue, block);
}

@end
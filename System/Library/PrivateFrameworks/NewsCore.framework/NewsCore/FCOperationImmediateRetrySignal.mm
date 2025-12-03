@interface FCOperationImmediateRetrySignal
- (void)onQueue:(id)queue signal:(id)signal;
@end

@implementation FCOperationImmediateRetrySignal

- (void)onQueue:(id)queue signal:(id)signal
{
  signalCopy = signal;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FCOperationImmediateRetrySignal_onQueue_signal___block_invoke;
  block[3] = &unk_1E7C379C8;
  v8 = signalCopy;
  v6 = signalCopy;
  dispatch_async(queue, block);
}

@end
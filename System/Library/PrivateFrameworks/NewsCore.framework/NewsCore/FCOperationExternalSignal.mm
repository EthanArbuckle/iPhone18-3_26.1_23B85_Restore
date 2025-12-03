@interface FCOperationExternalSignal
- (FCOperationExternalSignal)init;
- (void)onQueue:(id)queue signal:(id)signal;
@end

@implementation FCOperationExternalSignal

- (FCOperationExternalSignal)init
{
  v6.receiver = self;
  v6.super_class = FCOperationExternalSignal;
  v2 = [(FCOperationExternalSignal *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    dispatch_group_enter(*(v2 + 2));
  }

  return v2;
}

- (void)onQueue:(id)queue signal:(id)signal
{
  signalCopy = signal;
  group = self->_group;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__FCOperationExternalSignal_onQueue_signal___block_invoke;
  v9[3] = &unk_1E7C37778;
  v9[4] = self;
  v10 = signalCopy;
  v8 = signalCopy;
  dispatch_group_notify(group, queue, v9);
}

@end
@interface CHUISContentConfirmationAction
- (CHUISContentConfirmationAction)initWithTimeout:(double)timeout queue:(id)queue completion:(id)completion;
@end

@implementation CHUISContentConfirmationAction

- (CHUISContentConfirmationAction)initWithTimeout:(double)timeout queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = MEMORY[0x1E698E5F8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__CHUISContentConfirmationAction_initWithTimeout_queue_completion___block_invoke;
  v16[3] = &unk_1E8575460;
  v11 = completionCopy;
  v17 = v11;
  v12 = [v10 responderWithHandler:v16];
  [v12 setQueue:queueCopy];
  [v12 setTimeout:{dispatch_time(0, (timeout * 1000000000.0))}];
  v15.receiver = self;
  v15.super_class = CHUISContentConfirmationAction;
  v13 = [(CHUISContentConfirmationAction *)&v15 initWithInfo:0 responder:v12];

  return v13;
}

void __67__CHUISContentConfirmationAction_initWithTimeout_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

@end
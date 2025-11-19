@interface GTTransportMessageReplyContinuation_replayer
- (void)dispatchError:(id)a3;
@end

@implementation GTTransportMessageReplyContinuation_replayer

- (void)dispatchError:(id)a3
{
  queue = self->super.queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__GTTransportMessageReplyContinuation_dispatchError___block_invoke;
  v4[3] = &unk_279657D20;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

@end
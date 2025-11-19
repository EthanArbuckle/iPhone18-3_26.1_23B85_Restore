@interface DYTransportMessageReplyContinuation
- (void)dispatchError:(id)a3;
@end

@implementation DYTransportMessageReplyContinuation

- (void)dispatchError:(id)a3
{
  queue = self->super.queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__DYTransportMessageReplyContinuation_dispatchError___block_invoke;
  v4[3] = &unk_27930C170;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

uint64_t __53__DYTransportMessageReplyContinuation_dispatchError___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 40);
    result = (*(*(v1 + 16) + 16))();
    *(*(v2 + 32) + 24) = 1;
  }

  return result;
}

@end
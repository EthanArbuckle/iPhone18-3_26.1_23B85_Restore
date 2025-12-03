@interface DYSocketTransport
- (DYSocketTransport)init;
- (DYSocketTransport)initWithSocketDescriptor:(int)descriptor;
- (id)connect;
@end

@implementation DYSocketTransport

- (DYSocketTransport)init
{
  [(DYSocketTransport *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYSocketTransport)initWithSocketDescriptor:(int)descriptor
{
  v5.receiver = self;
  v5.super_class = DYSocketTransport;
  result = [(DYBaseSocketTransport *)&v5 init];
  if (result)
  {
    *(&result->super._scheduledReadOnWritableSocket + 3) = descriptor;
  }

  return result;
}

- (id)connect
{
  v3 = +[DYFuture future];
  queue = self->super.super.super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__DYSocketTransport_connect__block_invoke;
  v6[3] = &unk_27930C170;
  v6[4] = self;
  v6[5] = v3;
  dispatch_async(queue, v6);
  return v3;
}

uint64_t __28__DYSocketTransport_connect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[52] == 1)
  {
    v3 = [DYError errorWithDomain:@"DYErrorDomain" code:32 userInfo:0];
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    [v5 setError:v3];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  }

  else
  {
    if (![v2 connected])
    {
      [*(a1 + 32) runWithSocket:*(*(a1 + 32) + 268)];
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v4 = (a1 + 40);
  }

  v7 = *v4;

  return [v7 setResult:v6];
}

@end
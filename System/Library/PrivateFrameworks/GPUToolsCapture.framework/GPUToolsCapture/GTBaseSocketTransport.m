@interface GTBaseSocketTransport
@end

@implementation GTBaseSocketTransport

_BYTE *__63__GTBaseSocketTransport_createNewSharedMemoryTransportWithURL___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[52] & 1) == 0)
  {
    [result _destroySharedMemoryTransport];
    v3 = [GTSharedMemoryTransport_capture alloc];
    v4 = atomic_load((*(a1 + 32) + 40));
    *(*(a1 + 32) + 248) = [(GTSharedMemoryTransport_capture *)v3 initWithMode:2 initialMessageSerial:v4];
    if (*(a1 + 40))
    {
      [*(*(a1 + 32) + 248) setUrl:?];
    }

    [*(*(a1 + 32) + 248) setRelayTransport:?];
    [*(*(a1 + 32) + 248) setPrioritizeOutgoingMessages:*(*(a1 + 32) + 53)];
    if ([*(a1 + 32) connected])
    {
      [objc_msgSend(*(*(a1 + 32) + 248) "connect")];
    }

    result = [*(*(a1 + 32) + 248) url];
    *(*(*(a1 + 48) + 8) + 40) = result;
  }

  return result;
}

void __39__GTBaseSocketTransport_runWithSocket___block_invoke(uint64_t a1)
{
  [*(a1 + 32) closeSocketDescriptor];
  dispatch_release(*(*(a1 + 32) + 232));
  *(*(a1 + 32) + 232) = 0;
}

void __39__GTBaseSocketTransport_runWithSocket___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 232));
  dispatch_release(*(*(a1 + 32) + 240));
  *(*(a1 + 32) + 240) = 0;
}

_BYTE *__39__GTBaseSocketTransport_runWithSocket___block_invoke_4(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 240));
  *(*(a1 + 32) + 256) = 1;
  result = *(a1 + 32);
  if (result[257] == 1)
  {

    return [result _readAndAccumulateLoop];
  }

  return result;
}

@end
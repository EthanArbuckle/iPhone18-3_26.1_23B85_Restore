@interface GTTransportSource
@end

@implementation GTTransportSource

uint64_t __31__GTTransportSource__dispatch___block_invoke(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 56));
  if ((v1 & 1) == 0)
  {
    v2 = *(*(result + 32) + 8);
    if (v2)
    {
      return (*(v2 + 16))(*(*(result + 32) + 8), *(result + 40));
    }
  }

  return result;
}

void __44__GTTransportSource_setRegistrationHandler___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 24))
    {
      v4 = atomic_load((v3 + 56));
      v3 = *(a1 + 32);
      if ((v4 & 2) != 0)
      {
        v5 = *(v3 + 40);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __44__GTTransportSource_setRegistrationHandler___block_invoke_2;
        block[3] = &unk_2F2508;
        block[4] = v3;
        dispatch_async(v5, block);
        v3 = *(a1 + 32);
      }
    }

    *(*(a1 + 32) + 24) = *(a1 + 40);
    dispatch_resume(*(*(a1 + 32) + 40));
  }
}

void __44__GTTransportSource_setCancellationHandler___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 1) == 0)
  {

    *(*(a1 + 32) + 16) = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);

    dispatch_resume(v3);
  }
}

void __39__GTTransportSource_setMessageHandler___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 1) == 0)
  {

    *(*(a1 + 32) + 8) = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);

    dispatch_resume(v3);
  }
}

void __27__GTTransportSource_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancel];
  v2 = *(*(a1 + 32) + 40);

  dispatch_resume(v2);
}

void __46__GTTransportSource__initWithQueue_transport___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _register];
  v2 = *(*(a1 + 32) + 40);

  dispatch_resume(v2);
}

@end
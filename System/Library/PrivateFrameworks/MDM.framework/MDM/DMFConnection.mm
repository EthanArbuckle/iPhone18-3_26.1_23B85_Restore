@interface DMFConnection
@end

@implementation DMFConnection

void __52__DMFConnection_MDMUtilities__performRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(a1 + 48))
    {
      v8 = v6;
      **(a1 + 48) = v7;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end
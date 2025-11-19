@interface OSBatchingQueue
@end

@implementation OSBatchingQueue

void __47___OSBatchingQueue_unprotectedExecuteWorkItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) workHandler];
  v2[2](v2, *(a1 + 48));
}

void __32___OSBatchingQueue_addWorkItem___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 48) count];
  v3 = *(a1 + 32);
  if (v2 >= *(v3 + 16))
  {

    [v3 unprotectedExecuteWorkItems];
  }

  else if (v2 == 1)
  {
    v4 = *(v3 + 56);
    v5 = dispatch_time(0, (*(v3 + 8) * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 32) + 8) / 10.0 * 1000000000.0));
    v6 = *(*(a1 + 32) + 56);

    dispatch_resume(v6);
  }
}

@end
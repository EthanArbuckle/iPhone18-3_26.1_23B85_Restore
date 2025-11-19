@interface GTFuture
@end

@implementation GTFuture

id __40__GTFuture__addDependency_REQUIRESLOCK___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) lock];
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 16) broadcast];
  v2 = *(*(a1 + 32) + 16);

  return [v2 unlock];
}

void __24__GTFuture_notifyGroup___block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void __34__GTFuture_notifyOnQueue_handler___block_invoke(uint64_t a1)
{
  dispatch_async(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void __30__GTFuture_resolveWithFuture___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  [*(v2 + 16) unlock];
  [*(a1 + 40) _setResult:v3 error:v4 notify_NOLOCK:1];
  v5 = *(a1 + 32);
}

id __31__GTFuture_timeoutAfter_label___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  result = [*(v2 + 16) unlock];
  if ((v3 & 1) == 0)
  {
    v5 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:5 userInfo:0];
    v6 = *(a1 + 32);

    return [v6 _setResult:0 error:v5 notify_NOLOCK:1];
  }

  return result;
}

void __29__GTFuture_addResultHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[6] + 16))();
  v4 = a1[6];
}

void __29__GTFuture_addResultHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  [*(v2 + 16) unlock];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __29__GTFuture_addResultHandler___block_invoke_3;
  block[3] = &unk_2F1498;
  v6 = *(a1 + 40);
  block[5] = v4;
  block[6] = v6;
  block[4] = v3;
  dispatch_async(global_queue, block);
}

void __29__GTFuture_addResultHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[6] + 16))();
  v4 = a1[6];
}

@end
@interface GTFuture
@end

@implementation GTFuture

uint64_t __40__GTFuture__addDependency_REQUIRESLOCK___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  [*(*(a1 + 32) + 296) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 256) broadcast];
  v2 = *(*(a1 + 32) + 256);

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
  [*(*(a1 + 32) + 256) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  v4 = *(v2 + 280);
  [*(v2 + 256) unlock];
  [*(a1 + 40) _setResult:v3 error:v4 notify_NOLOCK:1];
  v5 = *(a1 + 32);
}

uint64_t __31__GTFuture_timeoutAfter_label___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 264);
  result = [*(v2 + 256) unlock];
  if ((v3 & 1) == 0)
  {
    v5 = [GTError_replayer errorWithDomain:@"DYErrorDomain" code:5 userInfo:0];
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
  [*(*(a1 + 32) + 256) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  v4 = *(v2 + 280);
  [*(v2 + 256) unlock];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__GTFuture_addResultHandler___block_invoke_3;
  block[3] = &unk_279657CD0;
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

uint64_t __26__GTFuture_logPerformance__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  +[GTFuture logPerformance]::log = result;
  return result;
}

@end
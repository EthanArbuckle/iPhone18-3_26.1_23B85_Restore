@interface CNBlockFutureImpl
@end

@implementation CNBlockFutureImpl

uint64_t __43___CNBlockFutureImpl_implicitlyResumeQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) workBlockScheduled];
  if (result)
  {
    result = [*(a1 + 32) nts_mayResumeQueue];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

uint64_t __25___CNBlockFutureImpl_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "futures");
  v1 = log_cn_once_object_1_0;
  log_cn_once_object_1_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __54___CNBlockFutureImpl_implWithSchedulerProvider_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

void __58___CNBlockFutureImpl_lazyImplWithSchedulerProvider_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = (*(v2 + 16))();
  v4 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishWithResult:v3 error:v4];
}

void __37___CNBlockFutureImpl_addWriterBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __73___CNBlockFutureImpl_futureResultFromAsynchronousLookupBeforeDate_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = +[_CNBlockFutureImpl log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __73___CNBlockFutureImpl_futureResultFromAsynchronousLookupBeforeDate_error___block_invoke_cold_1();
    }

    goto LABEL_6;
  }

  v4 = [WeakRetained stateLock];
  *(*(*(a1 + 48) + 8) + 24) = [v4 lockWhenCondition:1 beforeDate:*(a1 + 40)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v5 = [v3 futureResultFromImmediateLookup];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v3 stateLock];
    [v8 unlock];
LABEL_6:
  }

  dispatch_group_leave(*(a1 + 32));
}

void __38___CNBlockFutureImpl_addSuccessBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained futureResult];
    v5 = [v4 result];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v4 result];
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    v4 = +[_CNBlockFutureImpl log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __38___CNBlockFutureImpl_addSuccessBlock___block_invoke_cold_1();
    }
  }
}

void __38___CNBlockFutureImpl_addFailureBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained futureResult];
    v5 = [v4 result];

    if (!v5)
    {
      v6 = *(a1 + 32);
      v7 = [v4 error];
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    v4 = +[_CNBlockFutureImpl log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __38___CNBlockFutureImpl_addFailureBlock___block_invoke_cold_1();
    }
  }
}

@end
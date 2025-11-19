@interface ENDownloadTask
+ (id)taskWithEndpointState:(id)a3 date:(id)a4 group:(id)a5 scheduler:(id)a6;
- (BOOL)shouldDefer;
- (void)finishDeferred:(BOOL)a3 error:(id)a4;
@end

@implementation ENDownloadTask

+ (id)taskWithEndpointState:(id)a3 date:(id)a4 group:(id)a5 scheduler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(a1);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 4, a3);
    v17 = [v12 copy];
    v18 = v16[5];
    v16[5] = v17;

    objc_storeStrong(v16 + 1, a5);
    objc_storeStrong(v16 + 2, a6);
  }

  return v16;
}

- (BOOL)shouldDefer
{
  scheduler = self->_scheduler;
  if (scheduler)
  {
    LOBYTE(scheduler) = [(NSBackgroundActivityScheduler *)scheduler shouldDefer];
  }

  return scheduler;
}

- (void)finishDeferred:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if (!self->_finished)
  {
    v9 = v6;
    [(NSDate *)self->_date timeIntervalSinceNow];
    if (v9)
    {
      if (gLogCategory_ENDownloadManager > 90 || gLogCategory_ENDownloadManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      [(ENDownloadTask *)self finishDeferred:v9 error:&v10];
      v7 = v10;
    }

    else
    {
      if (gLogCategory_ENDownloadManager > 50 || gLogCategory_ENDownloadManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v7 = [(ENDownloadTask *)self shortIdentifier];
      downloadCount = self->_downloadCount;
      LogPrintF_safe();
    }

LABEL_12:
    self->_finished = 1;
    self->_didDefer = a3;
    dispatch_group_leave(self->_group);
    v6 = v9;
  }
}

- (void)finishDeferred:(uint64_t *)a3 error:.cold.1(void *a1, uint64_t a2, uint64_t *a3)
{
  *a3 = [a1 shortIdentifier];
  v5 = a1[6];
  v6 = CUPrintNSError();
  LogPrintF_safe();
}

@end
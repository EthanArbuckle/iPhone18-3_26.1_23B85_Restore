@interface ENDownloadTask
+ (id)taskWithEndpointState:(id)state date:(id)date group:(id)group scheduler:(id)scheduler;
- (BOOL)shouldDefer;
- (void)finishDeferred:(BOOL)deferred error:(id)error;
@end

@implementation ENDownloadTask

+ (id)taskWithEndpointState:(id)state date:(id)date group:(id)group scheduler:(id)scheduler
{
  stateCopy = state;
  dateCopy = date;
  groupCopy = group;
  schedulerCopy = scheduler;
  v15 = objc_alloc_init(self);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 4, state);
    v17 = [dateCopy copy];
    v18 = v16[5];
    v16[5] = v17;

    objc_storeStrong(v16 + 1, group);
    objc_storeStrong(v16 + 2, scheduler);
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

- (void)finishDeferred:(BOOL)deferred error:(id)error
{
  errorCopy = error;
  if (!self->_finished)
  {
    v9 = errorCopy;
    [(NSDate *)self->_date timeIntervalSinceNow];
    if (v9)
    {
      if (gLogCategory_ENDownloadManager > 90 || gLogCategory_ENDownloadManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      [(ENDownloadTask *)self finishDeferred:v9 error:&v10];
      shortIdentifier = v10;
    }

    else
    {
      if (gLogCategory_ENDownloadManager > 50 || gLogCategory_ENDownloadManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      shortIdentifier = [(ENDownloadTask *)self shortIdentifier];
      downloadCount = self->_downloadCount;
      LogPrintF_safe();
    }

LABEL_12:
    self->_finished = 1;
    self->_didDefer = deferred;
    dispatch_group_leave(self->_group);
    errorCopy = v9;
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
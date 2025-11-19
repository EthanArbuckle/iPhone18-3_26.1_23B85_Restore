@interface FCAssetHandleDownloadRequest
- (void)cancel;
- (void)setRelativePriority:(int64_t)a3;
@end

@implementation FCAssetHandleDownloadRequest

- (void)cancel
{
  if (self)
  {
    cancelHandler = self->_cancelHandler;
    if (cancelHandler)
    {
      cancelHandler[2]();
    }
  }
}

- (void)setRelativePriority:(int64_t)a3
{
  self->_relativePriority = a3;
  priorityHandler = self->_priorityHandler;
  if (priorityHandler)
  {
    priorityHandler[2]();
  }
}

@end
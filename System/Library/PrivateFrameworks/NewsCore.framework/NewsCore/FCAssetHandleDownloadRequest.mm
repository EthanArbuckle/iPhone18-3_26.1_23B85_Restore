@interface FCAssetHandleDownloadRequest
- (void)cancel;
- (void)setRelativePriority:(int64_t)priority;
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

- (void)setRelativePriority:(int64_t)priority
{
  self->_relativePriority = priority;
  priorityHandler = self->_priorityHandler;
  if (priorityHandler)
  {
    priorityHandler[2]();
  }
}

@end
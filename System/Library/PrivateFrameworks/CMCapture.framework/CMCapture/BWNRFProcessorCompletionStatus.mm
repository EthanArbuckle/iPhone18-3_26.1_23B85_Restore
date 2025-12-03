@interface BWNRFProcessorCompletionStatus
- (void)dealloc;
- (void)initWithCompletionStatus:(void *)status;
@end

@implementation BWNRFProcessorCompletionStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNRFProcessorCompletionStatus;
  [(BWNRFProcessorCompletionStatus *)&v3 dealloc];
}

- (void)initWithCompletionStatus:(void *)status
{
  if (!status)
  {
    return 0;
  }

  v5.receiver = status;
  v5.super_class = BWNRFProcessorCompletionStatus;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

@end
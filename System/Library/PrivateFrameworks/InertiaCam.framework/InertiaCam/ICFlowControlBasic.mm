@interface ICFlowControlBasic
- (BOOL)ICShouldBeCanceled;
- (ICFlowControlBasic)initWithCancel:(id)cancel;
- (ICFlowControlBasic)initWithProgress:(id)progress;
- (void)ICReportProgress:(float)progress;
@end

@implementation ICFlowControlBasic

- (ICFlowControlBasic)initWithCancel:(id)cancel
{
  cancelCopy = cancel;
  v8.receiver = self;
  v8.super_class = ICFlowControlBasic;
  v5 = [(ICFlowControlBasic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICFlowControlBasic *)v5 setShouldBeCanceled:cancelCopy];
  }

  return v6;
}

- (ICFlowControlBasic)initWithProgress:(id)progress
{
  progressCopy = progress;
  v8.receiver = self;
  v8.super_class = ICFlowControlBasic;
  v5 = [(ICFlowControlBasic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICFlowControlBasic *)v5 setReportProgress:progressCopy];
  }

  return v6;
}

- (void)ICReportProgress:(float)progress
{
  reportProgress = [(ICFlowControlBasic *)self reportProgress];

  if (reportProgress)
  {
    reportProgress2 = [(ICFlowControlBasic *)self reportProgress];
    reportProgress2[2](progress);
  }
}

- (BOOL)ICShouldBeCanceled
{
  shouldBeCanceled = [(ICFlowControlBasic *)self shouldBeCanceled];

  if (shouldBeCanceled)
  {
    shouldBeCanceled2 = [(ICFlowControlBasic *)self shouldBeCanceled];
    LOBYTE(shouldBeCanceled) = shouldBeCanceled2[2]();
  }

  return shouldBeCanceled;
}

@end
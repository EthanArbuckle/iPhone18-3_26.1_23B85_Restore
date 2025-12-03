@interface CoreDAVOptionsTask
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVOptionsTask

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  delegate = [(CoreDAVTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CoreDAVTask *)self delegate];
    [delegate2 optionsTask:self error:errorCopy];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v8.receiver = self;
  v8.super_class = CoreDAVOptionsTask;
  [(CoreDAVTask *)&v8 finishCoreDAVTaskWithError:errorCopy];
}

@end
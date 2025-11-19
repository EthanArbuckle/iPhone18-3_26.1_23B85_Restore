@interface CoreDAVOptionsTask
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVOptionsTask

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CoreDAVTask *)self delegate];
    [v7 optionsTask:self error:v4];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v8.receiver = self;
  v8.super_class = CoreDAVOptionsTask;
  [(CoreDAVTask *)&v8 finishCoreDAVTaskWithError:v4];
}

@end
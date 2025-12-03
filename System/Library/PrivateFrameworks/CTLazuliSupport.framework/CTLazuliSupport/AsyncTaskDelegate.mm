@interface AsyncTaskDelegate
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation AsyncTaskDelegate

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_242718640(taskCopy, error);
}

@end
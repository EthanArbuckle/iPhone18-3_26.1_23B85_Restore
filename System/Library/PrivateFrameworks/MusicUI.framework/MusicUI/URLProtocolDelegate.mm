@interface URLProtocolDelegate
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
@end

@implementation URLProtocolDelegate

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_216AF18DC(sessionCopy, taskCopy, requestCopy, selfCopy, v10);
  _Block_release(v10);
}

@end
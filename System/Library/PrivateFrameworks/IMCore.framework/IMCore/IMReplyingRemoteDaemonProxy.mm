@interface IMReplyingRemoteDaemonProxy
- (IMDaemonController)daemonController;
- (IMReplyingRemoteDaemonProxy)initWithDaemonController:(id)controller synchronousReplies:(BOOL)replies;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IMReplyingRemoteDaemonProxy

- (IMReplyingRemoteDaemonProxy)initWithDaemonController:(id)controller synchronousReplies:(BOOL)replies
{
  if (self)
  {
    objc_storeWeak(&self->_daemonController, controller);
    self->_synchronousReplies = replies;
  }

  return self;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = objc_msgSend_daemonController(self, a2, selector);
  v6 = objc_msgSend_methodSignatureForSelector_(v4, v5, selector);

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v7 = objc_msgSend_daemonController(self, v5, v6);
  v10 = objc_msgSend_synchronousReplies(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A8359910;
  v13[3] = &unk_1E7810140;
  v14 = invocationCopy;
  selfCopy = self;
  v11 = invocationCopy;
  objc_msgSend_sendQueryWithReply_query_(v7, v12, v10, v13);
}

- (IMDaemonController)daemonController
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonController);

  return WeakRetained;
}

@end
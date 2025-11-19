@interface IMReplyingRemoteDaemonProxy
- (IMDaemonController)daemonController;
- (IMReplyingRemoteDaemonProxy)initWithDaemonController:(id)a3 synchronousReplies:(BOOL)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMReplyingRemoteDaemonProxy

- (IMReplyingRemoteDaemonProxy)initWithDaemonController:(id)a3 synchronousReplies:(BOOL)a4
{
  if (self)
  {
    objc_storeWeak(&self->_daemonController, a3);
    self->_synchronousReplies = a4;
  }

  return self;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = objc_msgSend_daemonController(self, a2, a3);
  v6 = objc_msgSend_methodSignatureForSelector_(v4, v5, a3);

  return v6;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_daemonController(self, v5, v6);
  v10 = objc_msgSend_synchronousReplies(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A8359910;
  v13[3] = &unk_1E7810140;
  v14 = v4;
  v15 = self;
  v11 = v4;
  objc_msgSend_sendQueryWithReply_query_(v7, v12, v10, v13);
}

- (IMDaemonController)daemonController
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonController);

  return WeakRetained;
}

@end
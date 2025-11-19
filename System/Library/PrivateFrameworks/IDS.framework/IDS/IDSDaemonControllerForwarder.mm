@interface IDSDaemonControllerForwarder
- (IDSDaemonControllerForwarder)initWithProtocol:(id)a3 ivarQueue:(id)a4 remoteMessageQueue:(id)a5 completion:(id)a6;
- (void)forwardInvocation:(id)a3;
@end

@implementation IDSDaemonControllerForwarder

- (IDSDaemonControllerForwarder)initWithProtocol:(id)a3 ivarQueue:(id)a4 remoteMessageQueue:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (self)
  {
    objc_storeStrong(&self->_protocol, a3);
    v14 = a6;
    objc_storeStrong(&self->_ivarQueue, a4);
    objc_storeStrong(&self->_remoteMessageQueue, a5);
    v15 = [v14 copy];

    completion = self->_completion;
    self->_completion = v15;
  }

  return self;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  priority = self->_priority;
  self->_priority = 0;
  v6 = MEMORY[0x19A8BBEF0](self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  v8 = +[IDSDaemonController sharedInstance];
  v9 = [v8 consumeQueryContext:@"QueryWithReplySync"];
  v10 = [v8 consumeQueryContext:@"QueryWithReply"];
  v11 = [v8 consumeQueryContext:@"QueryWithBoost"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A14ED0;
  v16[3] = &unk_1E743EB20;
  v16[4] = self;
  v12 = v8;
  v20 = priority;
  v17 = v12;
  v18 = v4;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v19 = v6;
  v13 = v6;
  v14 = v4;
  v15 = MEMORY[0x19A8BBEF0](v16);
  if (_os_feature_enabled_impl())
  {
    v15[2](v15);
  }

  else
  {
    [v12 _performBlock:v15 wait:1];
  }
}

@end
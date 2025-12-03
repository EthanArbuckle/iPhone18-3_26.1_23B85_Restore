@interface IDSDaemonControllerForwarder
- (IDSDaemonControllerForwarder)initWithProtocol:(id)protocol ivarQueue:(id)queue remoteMessageQueue:(id)messageQueue completion:(id)completion;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IDSDaemonControllerForwarder

- (IDSDaemonControllerForwarder)initWithProtocol:(id)protocol ivarQueue:(id)queue remoteMessageQueue:(id)messageQueue completion:(id)completion
{
  protocolCopy = protocol;
  queueCopy = queue;
  messageQueueCopy = messageQueue;
  if (self)
  {
    objc_storeStrong(&self->_protocol, protocol);
    completionCopy = completion;
    objc_storeStrong(&self->_ivarQueue, queue);
    objc_storeStrong(&self->_remoteMessageQueue, messageQueue);
    v15 = [completionCopy copy];

    completion = self->_completion;
    self->_completion = v15;
  }

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
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
  v18 = invocationCopy;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v19 = v6;
  v13 = v6;
  v14 = invocationCopy;
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
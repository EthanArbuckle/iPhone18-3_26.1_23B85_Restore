@interface GTTransportSource_capture
- (GTTransportSource_capture)init;
- (id)_initWithQueue:(id)queue transport:(id)transport;
- (void)_callCancellationHandler;
- (void)_callRegistrationHandler;
- (void)_cancel;
- (void)_dispatch:(id)_dispatch;
- (void)_register;
- (void)cancel;
- (void)dealloc;
- (void)setCancellationHandler:(id)handler;
- (void)setMessageHandler:(id)handler;
- (void)setRegistrationHandler:(id)handler;
@end

@implementation GTTransportSource_capture

- (void)_dispatch:(id)_dispatch
{
  mqueue = self->_mqueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __31__GTTransportSource__dispatch___block_invoke;
  v4[3] = &unk_2F2550;
  v4[4] = self;
  v4[5] = _dispatch;
  dispatch_async(mqueue, v4);
}

- (void)_cancel
{
  [(GTTransport_capture *)self->_transport _cancelSource:self];

  self->_messageHandler = 0;
  self->_registrationHandler = 0;
  mqueue = self->_mqueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__GTTransportSource__cancel__block_invoke;
  block[3] = &unk_2F2508;
  block[4] = self;
  dispatch_async(mqueue, block);
}

- (void)_callCancellationHandler
{
  cancellationHandler = self->_cancellationHandler;
  if (cancellationHandler)
  {
    cancellationHandler[2](cancellationHandler, a2);

    self->_cancellationHandler = 0;
  }

  self->_transport = 0;
}

- (void)_register
{
  v2 = atomic_load(&self->_state);
  if ((v2 & 1) == 0)
  {
    if ([(GTTransport_capture *)self->_transport _activateSource:self])
    {
      atomic_fetch_or(&self->_state.__a_.__a_value, 2u);
      mqueue = self->_mqueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __30__GTTransportSource__register__block_invoke;
      block[3] = &unk_2F2508;
      block[4] = self;
      dispatch_async(mqueue, block);
    }

    else
    {

      [(GTTransportSource_capture *)self cancel];
    }
  }
}

- (void)_callRegistrationHandler
{
  v2 = atomic_load(&self->_state);
  if ((v2 & 1) == 0)
  {
    registrationHandler = self->_registrationHandler;
    if (registrationHandler)
    {
      registrationHandler[2](registrationHandler, a2);

      self->_registrationHandler = 0;
    }
  }
}

- (void)setRegistrationHandler:(id)handler
{
  v4 = [handler copy];
  dispatch_suspend(self->_mqueue);
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __44__GTTransportSource_setRegistrationHandler___block_invoke;
  v6[3] = &unk_2F14C0;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

- (void)setCancellationHandler:(id)handler
{
  v4 = [handler copy];
  dispatch_suspend(self->_mqueue);
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __44__GTTransportSource_setCancellationHandler___block_invoke;
  v6[3] = &unk_2F14C0;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

- (void)setMessageHandler:(id)handler
{
  v4 = [handler copy];
  dispatch_suspend(self->_mqueue);
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __39__GTTransportSource_setMessageHandler___block_invoke;
  v6[3] = &unk_2F14C0;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

- (void)cancel
{
  if ((atomic_fetch_or(&self->_state.__a_.__a_value, 1u) & 1) == 0)
  {
    dispatch_suspend(self->_mqueue);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __27__GTTransportSource_cancel__block_invoke;
    block[3] = &unk_2F2508;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)dealloc
{
  mqueue = self->_mqueue;
  if (mqueue)
  {
    dispatch_release(mqueue);
    self->_mqueue = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = GTTransportSource_capture;
  [(GTTransportSource_capture *)&v5 dealloc];
}

- (id)_initWithQueue:(id)queue transport:(id)transport
{
  if (!queue)
  {
    if (s_logUsingOsLog == 1)
    {
      v13 = gt_tagged_log(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v14 = "fail: queue cannot be NULL";
        goto LABEL_12;
      }

LABEL_16:
      abort();
    }

    v15 = __stderrp;
    v16 = @"fail: queue cannot be NULL";
LABEL_15:
    fprintf(v15, "%s\n", [[NSString stringWithFormat:?];
    goto LABEL_16;
  }

  if (!transport)
  {
    if (s_logUsingOsLog == 1)
    {
      v13 = gt_tagged_log(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v14 = "fail: transport cannot be nil";
LABEL_12:
        _os_log_fault_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, v14, buf, 2u);
        abort();
      }

      goto LABEL_16;
    }

    v15 = __stderrp;
    v16 = @"fail: transport cannot be nil";
    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = GTTransportSource_capture;
  v6 = [(GTTransportSource_capture *)&v18 init];
  if (v6)
  {
    v6->_transport = transport;
    v7 = [+[NSString stringWithFormat:](NSString UTF8String:@"gputools.%@.%p.%@"];
    v8 = dispatch_queue_create_with_target_V2(v7, 0, queue);
    v6->_queue = v8;
    dispatch_suspend(v8);
    v9 = [+[NSString stringWithFormat:](NSString UTF8String:@"gputools.%@.%p.%@"];
    v10 = dispatch_queue_create_with_target_V2(v9, 0, queue);
    v6->_mqueue = v10;
    dispatch_suspend(v10);
    queue = v6->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __46__GTTransportSource__initWithQueue_transport___block_invoke;
    block[3] = &unk_2F2508;
    block[4] = v6;
    dispatch_async(queue, block);
  }

  return v6;
}

- (GTTransportSource_capture)init
{
  [(GTTransportSource_capture *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end
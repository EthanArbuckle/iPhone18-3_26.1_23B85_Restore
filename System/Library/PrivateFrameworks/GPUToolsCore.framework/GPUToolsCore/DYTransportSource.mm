@interface DYTransportSource
- (BOOL)cancelled;
- (DYTransportSource)init;
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

@implementation DYTransportSource

- (DYTransportSource)init
{
  [(DYTransportSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_initWithQueue:(id)queue transport:(id)transport
{
  if (!queue)
  {
    [DYContinuation initWithQueue:block:];
  }

  if (!transport)
  {
    [DYTransportSource _initWithQueue:transport:];
  }

  v14.receiver = self;
  v14.super_class = DYTransportSource;
  v6 = [(DYTransportSource *)&v14 init];
  if (v6)
  {
    v6->_transport = transport;
    v7 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p.%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v6)), v6, @"manager", "UTF8String"];
    v8 = dispatch_queue_create_with_target_V2(v7, 0, queue);
    v6->_queue = v8;
    dispatch_suspend(v8);
    v9 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p.%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v6)), v6, @"message", "UTF8String"];
    v10 = dispatch_queue_create_with_target_V2(v9, 0, queue);
    v6->_mqueue = v10;
    dispatch_suspend(v10);
    queue = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__DYTransportSource__initWithQueue_transport___block_invoke;
    block[3] = &unk_27930C1E8;
    block[4] = v6;
    dispatch_async(queue, block);
  }

  return v6;
}

void __46__DYTransportSource__initWithQueue_transport___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _register];
  v2 = *(*(a1 + 32) + 40);

  dispatch_resume(v2);
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
  v5.super_class = DYTransportSource;
  [(DYTransportSource *)&v5 dealloc];
}

void __27__DYTransportSource_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancel];
  v2 = *(*(a1 + 32) + 40);

  dispatch_resume(v2);
}

- (BOOL)cancelled
{
  __dmb(0xBu);
  v2 = atomic_load(&self->_state);
  return v2 & 1;
}

- (void)setMessageHandler:(id)handler
{
  v4 = [handler copy];
  dispatch_suspend(self->_mqueue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__DYTransportSource_setMessageHandler___block_invoke;
  v6[3] = &unk_27930C948;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

- (void)setCancellationHandler:(id)handler
{
  v4 = [handler copy];
  dispatch_suspend(self->_mqueue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DYTransportSource_setCancellationHandler___block_invoke;
  v6[3] = &unk_27930C948;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

- (void)setRegistrationHandler:(id)handler
{
  v4 = [handler copy];
  dispatch_suspend(self->_mqueue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DYTransportSource_setRegistrationHandler___block_invoke;
  v6[3] = &unk_27930C948;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
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

- (void)_cancel
{
  [(DYTransport *)self->_transport _cancelSource:self];

  self->_messageHandler = 0;
  self->_registrationHandler = 0;
  mqueue = self->_mqueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__DYTransportSource__cancel__block_invoke;
  block[3] = &unk_27930C1E8;
  block[4] = self;
  dispatch_async(mqueue, block);
}

- (void)_dispatch:(id)_dispatch
{
  mqueue = self->_mqueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DYTransportSource__dispatch___block_invoke;
  v4[3] = &unk_27930C170;
  v4[4] = self;
  v4[5] = _dispatch;
  dispatch_async(mqueue, v4);
}

- (void)cancel
{
  if ((atomic_fetch_or(&self->_state, 1u) & 1) == 0)
  {
    dispatch_suspend(self->_mqueue);
    queue = self->_queue;
    OUTLINED_FUNCTION_0_0();
    v6 = 3221225472;
    v7 = __27__DYTransportSource_cancel__block_invoke;
    v8 = &unk_27930C1E8;
    selfCopy = self;
    dispatch_async(v4, block);
  }
}

void __39__DYTransportSource_setMessageHandler___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 1) == 0)
  {

    *(*(a1 + 32) + 8) = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);

    dispatch_resume(v3);
  }
}

void __44__DYTransportSource_setCancellationHandler___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 1) == 0)
  {

    *(*(a1 + 32) + 16) = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);

    dispatch_resume(v3);
  }
}

void __44__DYTransportSource_setRegistrationHandler___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if ((v1 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 24))
    {
      v4 = atomic_load((v3 + 56));
      v3 = *(a1 + 32);
      if ((v4 & 2) != 0)
      {
        v5 = *(v3 + 40);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __44__DYTransportSource_setRegistrationHandler___block_invoke_2;
        block[3] = &unk_27930C1E8;
        block[4] = v3;
        dispatch_async(v5, block);
        v3 = *(a1 + 32);
      }
    }

    *(*(a1 + 32) + 24) = *(a1 + 40);
    dispatch_resume(*(*(a1 + 32) + 40));
  }
}

- (void)_register
{
  v2 = atomic_load(&self->_state);
  if ((v2 & 1) == 0)
  {
    if ([(DYTransport *)self->_transport _activateSource:self])
    {
      atomic_fetch_or(&self->_state, 2u);
      mqueue = self->_mqueue;
      OUTLINED_FUNCTION_0_0();
      v7 = 3221225472;
      v8 = __30__DYTransportSource__register__block_invoke;
      v9 = &unk_27930C1E8;
      selfCopy = self;
      dispatch_async(v5, block);
    }

    else
    {

      [(DYTransportSource *)self cancel];
    }
  }
}

uint64_t __31__DYTransportSource__dispatch___block_invoke(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 56));
  if ((v1 & 1) == 0)
  {
    v2 = *(*(result + 32) + 8);
    if (v2)
    {
      return (*(v2 + 16))(*(*(result + 32) + 8), *(result + 40));
    }
  }

  return result;
}

@end
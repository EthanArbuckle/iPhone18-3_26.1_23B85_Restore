@interface NPKButtonListener
- (NPKButtonListener)initWithHandlerQueue:(id)queue;
- (id)_handlerQueue_buttonHandler;
- (void)setButtonHandler:(id)handler;
@end

@implementation NPKButtonListener

- (NPKButtonListener)initWithHandlerQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = NPKButtonListener;
  v6 = [(NPKButtonListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handlerQueue, queue);
  }

  return v7;
}

- (void)setButtonHandler:(id)handler
{
  handlerCopy = handler;
  handlerQueue = [(NPKButtonListener *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__NPKButtonListener_setButtonHandler___block_invoke;
  v7[3] = &unk_279945530;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(handlerQueue, v7);
}

void __38__NPKButtonListener_setButtonHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

- (id)_handlerQueue_buttonHandler
{
  dispatch_assert_queue_V2(self->_handlerQueue);
  v3 = _Block_copy(self->_buttonHandler);

  return v3;
}

@end
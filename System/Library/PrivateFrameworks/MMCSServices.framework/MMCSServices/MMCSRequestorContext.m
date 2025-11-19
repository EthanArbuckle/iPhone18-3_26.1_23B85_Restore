@interface MMCSRequestorContext
- (MMCSRequestorContext)initWithController:(id)a3 transferID:(id)a4;
- (void)_removeFromController;
- (void)dealloc;
@end

@implementation MMCSRequestorContext

- (MMCSRequestorContext)initWithController:(id)a3 transferID:(id)a4
{
  v8.receiver = self;
  v8.super_class = MMCSRequestorContext;
  v6 = [(MMCSRequestorContext *)&v8 init];
  v6->_controller = a3;
  v6->_transferID = a4;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MMCSRequestorContext;
  [(MMCSRequestorContext *)&v3 dealloc];
}

- (void)_removeFromController
{
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  transferID = self->_transferID;
  if (transferID)
  {
    controller = self->_controller;
    if (controller)
    {

      MEMORY[0x2821F9670](controller, sel__removeRequestorContext_transferID_, self, transferID, v7);
    }
  }
}

@end
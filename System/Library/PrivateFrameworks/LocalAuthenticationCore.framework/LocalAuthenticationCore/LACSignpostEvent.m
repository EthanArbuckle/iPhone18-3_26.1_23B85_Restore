@interface LACSignpostEvent
- (LACSignpostEvent)initWithSendBlock:(id)a3;
- (void)send;
@end

@implementation LACSignpostEvent

- (LACSignpostEvent)initWithSendBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LACSignpostEvent;
  v5 = [(LACSignpostEvent *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    sendBlock = v5->_sendBlock;
    v5->_sendBlock = v6;
  }

  return v5;
}

- (void)send
{
  sendBlock = self->_sendBlock;
  if (sendBlock)
  {
    sendBlock[2]();
  }
}

@end
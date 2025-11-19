@interface FigCaptureMachPortSendRight
- (FigCaptureMachPortSendRight)initWithPort:(unsigned int)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FigCaptureMachPortSendRight

- (void)dealloc
{
  [(FigCaptureMachPortSendRight *)self invalidate];
  v3.receiver = self;
  v3.super_class = FigCaptureMachPortSendRight;
  [(FigCaptureMachPortSendRight *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalid && self->_port + 1 >= 2)
  {
    FigMachPortReleaseSendRight_();
    self->_port = 0;
    self->_invalid = 1;
  }
}

- (FigCaptureMachPortSendRight)initWithPort:(unsigned int)a3
{
  if (a3 - 1 >= 0xFFFFFFFE)
  {

    return 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = FigCaptureMachPortSendRight;
    result = [(FigCaptureMachPortSendRight *)&v5 init];
    if (result)
    {
      result->_port = a3;
    }
  }

  return result;
}

@end
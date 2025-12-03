@interface SUUIBlockAnimationDelegate
- (SUUIBlockAnimationDelegate)initWithCompletionHandler:(id)handler;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation SUUIBlockAnimationDelegate

- (SUUIBlockAnimationDelegate)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = SUUIBlockAnimationDelegate;
  v5 = [(SUUIBlockAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  block = self->_block;
  if (block)
  {
    block[2](block, stop, finished);
    v6 = self->_block;
    self->_block = 0;
  }
}

@end
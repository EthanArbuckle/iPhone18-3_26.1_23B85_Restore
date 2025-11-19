@interface SUUIBlockAnimationDelegate
- (SUUIBlockAnimationDelegate)initWithCompletionHandler:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation SUUIBlockAnimationDelegate

- (SUUIBlockAnimationDelegate)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIBlockAnimationDelegate;
  v5 = [(SUUIBlockAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  block = self->_block;
  if (block)
  {
    block[2](block, a3, a4);
    v6 = self->_block;
    self->_block = 0;
  }
}

@end
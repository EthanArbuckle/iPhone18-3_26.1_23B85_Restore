@interface LAUIAnimationDelegate
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)setDidStopHandler:(id)a3;
@end

@implementation LAUIAnimationDelegate

- (void)dealloc
{
  didStopHandler = self->_didStopHandler;
  if (didStopHandler)
  {
    v4 = MEMORY[0x259C5AE60](didStopHandler, a2);
    v5 = self->_didStopHandler;
    self->_didStopHandler = 0;

    v4[2](v4, 0);
  }

  v6.receiver = self;
  v6.super_class = LAUIAnimationDelegate;
  [(LAUIAnimationDelegate *)&v6 dealloc];
}

- (void)animationDidStart:(id)a3
{
  didStartHandler = self->_didStartHandler;
  if (didStartHandler)
  {
    v6 = MEMORY[0x259C5AE60](didStartHandler, a2, a3);
    v5 = self->_didStartHandler;
    self->_didStartHandler = 0;

    v6[2]();
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  didStopHandler = self->_didStopHandler;
  if (didStopHandler)
  {
    v6 = a4;
    v8 = MEMORY[0x259C5AE60](didStopHandler, a2, a3);
    v7 = self->_didStopHandler;
    self->_didStopHandler = 0;

    v8[2](v8, v6);
  }
}

- (void)setDidStopHandler:(id)a3
{
  v4 = a3;
  if (self->_didStopHandler != v4)
  {
    v8 = v4;
    v5 = MEMORY[0x259C5AE60]();
    v6 = [v8 copy];
    didStopHandler = self->_didStopHandler;
    self->_didStopHandler = v6;

    if (v5)
    {
      v5[2](v5, 0);
    }

    v4 = v8;
  }
}

@end
@interface LAUIAnimationDelegate
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)setDidStopHandler:(id)handler;
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

- (void)animationDidStart:(id)start
{
  didStartHandler = self->_didStartHandler;
  if (didStartHandler)
  {
    v6 = MEMORY[0x259C5AE60](didStartHandler, a2, start);
    v5 = self->_didStartHandler;
    self->_didStartHandler = 0;

    v6[2]();
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  didStopHandler = self->_didStopHandler;
  if (didStopHandler)
  {
    finishedCopy = finished;
    v8 = MEMORY[0x259C5AE60](didStopHandler, a2, stop);
    v7 = self->_didStopHandler;
    self->_didStopHandler = 0;

    v8[2](v8, finishedCopy);
  }
}

- (void)setDidStopHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_didStopHandler != handlerCopy)
  {
    v8 = handlerCopy;
    v5 = MEMORY[0x259C5AE60]();
    v6 = [v8 copy];
    didStopHandler = self->_didStopHandler;
    self->_didStopHandler = v6;

    if (v5)
    {
      v5[2](v5, 0);
    }

    handlerCopy = v8;
  }
}

@end
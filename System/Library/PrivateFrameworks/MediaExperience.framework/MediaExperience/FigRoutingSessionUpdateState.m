@interface FigRoutingSessionUpdateState
- (FigRoutingSessionUpdateState)initWithNewSession:(OpaqueFigRoutingSession *)a3;
- (void)dealloc;
@end

@implementation FigRoutingSessionUpdateState

- (FigRoutingSessionUpdateState)initWithNewSession:(OpaqueFigRoutingSession *)a3
{
  v7.receiver = self;
  v7.super_class = FigRoutingSessionUpdateState;
  v4 = [(FigRoutingSessionUpdateState *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_newSession = v5;
  }

  return v4;
}

- (void)dealloc
{
  newSession = self->_newSession;
  if (newSession)
  {
    CFRelease(newSession);
  }

  v4.receiver = self;
  v4.super_class = FigRoutingSessionUpdateState;
  [(FigRoutingSessionUpdateState *)&v4 dealloc];
}

@end
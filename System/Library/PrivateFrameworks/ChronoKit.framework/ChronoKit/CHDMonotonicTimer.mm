@interface CHDMonotonicTimer
- (void)activateWithTime:(unint64_t)time repeat:(int64_t)repeat block:(id)block;
- (void)invalidate;
@end

@implementation CHDMonotonicTimer

- (void)invalidate
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"CHDMonotonicTimer.m" lineNumber:65 description:@"must have called activate"];

  *v0 = *v1;
}

- (void)activateWithTime:(unint64_t)time repeat:(int64_t)repeat block:(id)block
{
  blockCopy = block;
  _CHDMonotonicNSEC(time);
  if (repeat < 0)
  {
    [CHDMonotonicTimer activateWithTime:repeat:block:];
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_3;
  }

  [CHDMonotonicTimer activateWithTime:repeat:block:];
LABEL_3:
  if (self->_timer)
  {
    [CHDMonotonicTimer activateWithTime:repeat:block:];
  }

  v9 = dispatch_get_global_queue(17, 0);
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
  timer = self->_timer;
  self->_timer = v10;

  if (repeat <= 0)
  {
    repeatCopy = -1;
  }

  else
  {
    repeatCopy = repeat;
  }

  dispatch_source_set_timer(self->_timer, time, repeatCopy, 0);
  dispatch_source_set_event_handler(self->_timer, blockCopy);

  v13 = self->_timer;

  dispatch_activate(v13);
}

- (void)activateWithTime:repeat:block:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CHDMonotonicTimer.m" lineNumber:55 description:@"invalid interval"];
}

- (void)activateWithTime:repeat:block:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CHDMonotonicTimer.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)activateWithTime:repeat:block:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CHDMonotonicTimer.m" lineNumber:57 description:@"already have a timer"];
}

@end
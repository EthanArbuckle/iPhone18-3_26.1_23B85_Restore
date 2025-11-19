@interface CHDMonotonicTimer
- (void)activateWithTime:(unint64_t)a3 repeat:(int64_t)a4 block:(id)a5;
- (void)invalidate;
@end

@implementation CHDMonotonicTimer

- (void)invalidate
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CHDMonotonicTimer.m" lineNumber:65 description:@"must have called activate"];

  *v0 = *v1;
}

- (void)activateWithTime:(unint64_t)a3 repeat:(int64_t)a4 block:(id)a5
{
  v8 = a5;
  _CHDMonotonicNSEC(a3);
  if (a4 < 0)
  {
    [CHDMonotonicTimer activateWithTime:repeat:block:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v8)
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

  if (a4 <= 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = a4;
  }

  dispatch_source_set_timer(self->_timer, a3, v12, 0);
  dispatch_source_set_event_handler(self->_timer, v8);

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
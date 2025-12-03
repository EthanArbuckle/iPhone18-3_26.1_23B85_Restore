@interface LSSDisplayLink
- (LSSDisplayLink)initWithDisplay:(id)display updateInterval:(double)interval target:(id)target action:(SEL)action;
- (void)_thread_displayLinkFired;
- (void)_thread_invalidate;
- (void)_thread_setPaused:(id)paused;
- (void)_thread_startRunLoop;
- (void)dealloc;
- (void)invalidate;
- (void)setPaused:(BOOL)paused;
@end

@implementation LSSDisplayLink

- (LSSDisplayLink)initWithDisplay:(id)display updateInterval:(double)interval target:(id)target action:(SEL)action
{
  v26[1] = *MEMORY[0x277D85DE8];
  displayCopy = display;
  targetCopy = target;
  v25.receiver = self;
  v25.super_class = LSSDisplayLink;
  v13 = [(LSSDisplayLink *)&v25 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_display, display);
    objc_storeStrong(&v14->_target, target);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v14->_action = actionCopy;
    v14->_updateInterval = interval;
    v14->_paused = 1;
    v16 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:v14 selector:sel__thread_startRunLoop object:0];
    thread = v14->_thread;
    v14->_thread = v16;

    [(NSThread *)v14->_thread start];
    v18 = MEMORY[0x277CCACA8];
    uniqueId = [displayCopy uniqueId];
    v20 = [v18 stringWithFormat:@"LSSDisplayLink:%p for %@", v14, uniqueId];

    [(NSThread *)v14->_thread setName:v20];
    v21 = v14->_thread;
    v26[0] = *MEMORY[0x277CBE738];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [(LSSDisplayLink *)v14 performSelector:sel_description onThread:v21 withObject:0 waitUntilDone:0 modes:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LSSDisplayLink;
  [(LSSDisplayLink *)&v2 dealloc];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_280D2F4D0 != -1)
  {
    [LSSDisplayLink invalidate];
  }

  v3 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_255E8B000, v3, OS_LOG_TYPE_DEFAULT, "LSSDisplayLink %p invalidate start ", &v6, 0xCu);
  }

  [(LSSDisplayLink *)self performSelector:sel__thread_invalidate onThread:self->_thread withObject:0 waitUntilDone:0];
  if (qword_280D2F4D0 != -1)
  {
    [LSSDisplayLink invalidate];
    v4 = _MergedGlobals_1;
    if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    v6 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_255E8B000, v4, OS_LOG_TYPE_DEFAULT, "LSSDisplayLink %p invalidate finish", &v6, 0xCu);
  }

LABEL_8:
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    thread = self->_thread;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [(LSSDisplayLink *)self performSelector:sel__thread_setPaused_ onThread:thread withObject:v6 waitUntilDone:0];
  }
}

- (void)_thread_setPaused:(id)paused
{
  thread_displayLink = self->_thread_displayLink;
  bOOLValue = [paused BOOLValue];

  [(CADisplayLink *)thread_displayLink setPaused:bOOLValue];
}

- (void)_thread_invalidate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_255E8B000, a2, OS_LOG_TYPE_ERROR, "LSSDisplayLink %p _thread_invalidate already invalid", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_thread_displayLinkFired
{
  if (!self->_thread_invalid)
  {
    action = self->_action;
    target = self->_target;
    if (action)
    {
      [target action];
    }

    else
    {
      [target 0];
    }
  }
}

- (void)_thread_startRunLoop
{
  v12 = *MEMORY[0x277D85DE8];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  runLoop = self->_runLoop;
  self->_runLoop = currentRunLoop;

  if (qword_280D2F4D0 == -1)
  {
    v5 = _MergedGlobals_1;
    if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [LSSDisplayLink invalidate];
  v5 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEFAULT))
  {
LABEL_3:
    v10 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_255E8B000, v5, OS_LOG_TYPE_DEFAULT, "LSSDisplayLink %p _thread_startRunLoop", &v10, 0xCu);
  }

LABEL_4:
  v6 = [MEMORY[0x277CD9E48] displayLinkWithDisplay:self->_display target:self selector:sel__thread_displayLinkFired];
  thread_displayLink = self->_thread_displayLink;
  self->_thread_displayLink = v6;

  [(CADisplayLink *)self->_thread_displayLink setPaused:1];
  updateInterval = self->_updateInterval;
  if (updateInterval > 0.0)
  {
    [(CADisplayLink *)self->_thread_displayLink setPreferredFramesPerSecond:(1.0 / updateInterval)];
  }

  [(CADisplayLink *)self->_thread_displayLink addToRunLoop:self->_runLoop forMode:*MEMORY[0x277CBE738]];
  CFRunLoopRun();
  v9 = *MEMORY[0x277D85DE8];
}

@end
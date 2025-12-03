@interface LAUIRenderLoop
- (BOOL)attachToScreen:(id)screen;
- (CAFrameRateRange)preferredFrameRateRange;
- (LAUIRenderLoop)init;
- (LAUIRenderLoopDelegate)delegate;
- (UIScreen)screen;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_drawAtTime:(uint64_t)time;
- (void)_drawWithDisplayLink:(uint64_t)link;
- (void)_setNeedsForcingPauseUpdate;
- (void)_updateApplicationState;
- (void)_updateEffectivePausedState;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setInApplicationContext:(BOOL)context;
- (void)setPaused:(BOOL)paused;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)range;
@end

@implementation LAUIRenderLoop

- (void)_drawWithDisplayLink:(uint64_t)link
{
  v4 = a2;
  if (link && v4 && *(link + 24) == v4)
  {
    [v4 targetTimestamp];
    [(LAUIRenderLoop *)link _drawAtTime:v3];
  }
}

- (LAUIRenderLoop)init
{
  v6.receiver = self;
  v6.super_class = LAUIRenderLoop;
  v2 = [(LAUIRenderLoop *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_paused = 1;
    *&v2->_in_application_context = 256;
    v4 = MEMORY[0x277CD9DD0];
    *&v2->_preferred_fps_range.minimum = *MEMORY[0x277CD9DD0];
    v2->_preferred_fps_range.preferred = *(v4 + 8);
    [(LAUIRenderLoop *)v2 _updateApplicationState];
  }

  return v3;
}

- (void)_updateApplicationState
{
  if (self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = defaultCenter;
    if (*(self + 36) == 1)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      *(self + 33) = [mEMORY[0x277D75128] applicationState] == 2;

      [v4 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
      [v4 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
      [v4 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];
      [v4 removeObserver:self name:*MEMORY[0x277D76758] object:0];
      [v4 removeObserver:self name:*MEMORY[0x277D76648] object:0];
    }

    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(LAUIRenderLoop *)self invalidate];
  v4.receiver = self;
  v4.super_class = LAUIRenderLoop;
  [(LAUIRenderLoop *)&v4 dealloc];
}

- (BOOL)attachToScreen:(id)screen
{
  screenCopy = screen;
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_screen);
    if (WeakRetained == screenCopy)
    {
      p_display_link = &self->_display_link;
      display_link = self->_display_link;
      if (screenCopy)
      {
        if (display_link)
        {
          runnable = 1;
          goto LABEL_11;
        }

        objc_storeWeak(&self->_screen, screenCopy);
        goto LABEL_7;
      }

      if (!display_link)
      {
        runnable = 0;
        goto LABEL_11;
      }
    }

    else
    {
      p_display_link = &self->_display_link;
      display_link = self->_display_link;
      if (!display_link)
      {
        goto LABEL_6;
      }
    }

    [(CADisplayLink *)display_link invalidate];
    v9 = *p_display_link;
    *p_display_link = 0;

LABEL_6:
    objc_storeWeak(&self->_screen, screenCopy);
    if (!screenCopy)
    {
LABEL_10:
      [(LAUIRenderLoop *)self _updateEffectivePausedState];
      runnable = self->_runnable;
LABEL_11:

      goto LABEL_12;
    }

LABEL_7:
    v10 = [[LAUIDisplayLinkTargetProxy alloc] initWithTarget:?];
    v11 = [screenCopy displayLinkWithTarget:v10 selector:sel_drawWithDisplayLink_];
    v12 = self->_display_link;
    self->_display_link = v11;

    [(CADisplayLink *)self->_display_link setPaused:self->_effective_paused];
    *&v13 = self->_preferred_fps_range.minimum;
    *&v14 = self->_preferred_fps_range.maximum;
    *&v15 = self->_preferred_fps_range.preferred;
    [(CADisplayLink *)self->_display_link setPreferredFrameRateRange:v13, v14, v15];
    if (self->_has_high_fps_reason)
    {
      [(CADisplayLink *)self->_display_link setHighFrameRateReason:self->_high_fps_reason];
    }

    v16 = *p_display_link;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v16 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    goto LABEL_10;
  }

  runnable = 0;
LABEL_12:

  return runnable;
}

- (void)_updateEffectivePausedState
{
  if (self)
  {
    if (*(self + 17) & 1) != 0 || !*(self + 24) || !CAFrameRateRangeIsEqualToRange(*(self + 56), *MEMORY[0x277CD9DD0]) && *(self + 60) <= 0.0 || *(self + 36) == 1 && (*(self + 33))
    {
      _isForcingPause = 1;
    }

    else
    {
      _isForcingPause = [self _isForcingPause];
    }

    v3 = _isForcingPause ^ 1;
    v4 = *(self + 39);
    if (v4 != (_isForcingPause ^ 1))
    {
      *(self + 39) = v3;
    }

    WeakRetained = objc_loadWeakRetained((self + 8));
    if (_isForcingPause)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(self + 38);
    }

    if (*(self + 37) == (v5 & 1))
    {
      if (v4 != v3 && *(self + 35) == 1)
      {
        [WeakRetained renderLoop:self didChangeRunnable:*(self + 39)];
      }
    }

    else
    {
      *(self + 37) = v5 & 1;
      [*(self + 24) setPaused:?];
      if (v4 != v3 && *(self + 35) == 1)
      {
        [WeakRetained renderLoop:self didChangeRunnable:*(self + 39)];
      }

      if (*(self + 34) == 1)
      {
        [WeakRetained renderLoop:self didChangeEffectivePaused:*(self + 37)];
      }
    }
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(LAUIRenderLoop *)self _didInvalidate];
    objc_storeWeak(&self->_screen, 0);
    display_link = self->_display_link;
    if (display_link)
    {
      [(CADisplayLink *)display_link invalidate];
      v5 = self->_display_link;
      self->_display_link = 0;
    }

    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_drawAtTime:(uint64_t)time
{
  if (time && (*(time + 37) & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained((time + 8));
    if (WeakRetained)
    {
      *(time + 16) = 1;
      [time _willDraw];
      [WeakRetained renderLoop:time drawAtTime:a2];
      *(time + 16) = 0;
      [time _didDraw];
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)setInApplicationContext:(BOOL)context
{
  if (self->_in_application_context != context)
  {
    self->_in_application_context = context;
    [(LAUIRenderLoop *)self _updateApplicationState];
  }
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)range
{
  preferred = range.preferred;
  maximum = range.maximum;
  minimum = range.minimum;
  if (!CAFrameRateRangeIsEqualToRange(self->_preferred_fps_range, range))
  {
    self->_preferred_fps_range.minimum = minimum;
    self->_preferred_fps_range.maximum = maximum;
    self->_preferred_fps_range.preferred = preferred;
    *&v7 = minimum;
    *&v8 = maximum;
    *&v9 = preferred;
    [(CADisplayLink *)self->_display_link setPreferredFrameRateRange:v7, v8, v9];

    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  self->_has_high_fps_reason = 1;
  self->_high_fps_reason = reason;
  [(CADisplayLink *)self->_display_link setHighFrameRateReason:?];
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (delegateCopy)
  {
    self->_delegate_observes_effective_paused = objc_opt_respondsToSelector() & 1;
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
    self->_delegate_observes_effective_paused = 0;
  }

  self->_delegate_observes_runnable = v4 & 1;

  MEMORY[0x2821F9730]();
}

- (void)_applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] applicationState] != 2)
  {
    __assert_rtn("[LAUIRenderLoop _applicationDidEnterBackground:]", "LAUIRenderLoop.mm", 447, "[[UIApplication sharedApplication] applicationState] == UIApplicationStateBackground");
  }

  if (!self->_background)
  {
    self->_background = 1;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  if (self->_background)
  {
    self->_background = 0;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] applicationState] == 2)
  {
    __assert_rtn("[LAUIRenderLoop _applicationDidBecomeActive:]", "LAUIRenderLoop.mm", 466, "[[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground");
  }

  if (self->_background)
  {
    self->_background = 0;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (CAFrameRateRange)preferredFrameRateRange
{
  minimum = self->_preferred_fps_range.minimum;
  maximum = self->_preferred_fps_range.maximum;
  preferred = self->_preferred_fps_range.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (LAUIRenderLoopDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setNeedsForcingPauseUpdate
{
  if (self)
  {
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

@end
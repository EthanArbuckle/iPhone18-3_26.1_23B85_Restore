@interface LAUIRenderLoop
- (BOOL)attachToScreen:(id)a3;
- (CAFrameRateRange)preferredFrameRateRange;
- (LAUIRenderLoop)init;
- (LAUIRenderLoopDelegate)delegate;
- (UIScreen)screen;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_drawAtTime:(uint64_t)a1;
- (void)_drawWithDisplayLink:(uint64_t)a1;
- (void)_setNeedsForcingPauseUpdate;
- (void)_updateApplicationState;
- (void)_updateEffectivePausedState;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)a3;
- (void)setHighFrameRateReason:(unsigned int)a3;
- (void)setInApplicationContext:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3;
@end

@implementation LAUIRenderLoop

- (void)_drawWithDisplayLink:(uint64_t)a1
{
  v4 = a2;
  if (a1 && v4 && *(a1 + 24) == v4)
  {
    [v4 targetTimestamp];
    [(LAUIRenderLoop *)a1 _drawAtTime:v3];
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
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = v2;
    if (*(a1 + 36) == 1)
    {
      v3 = [MEMORY[0x277D75128] sharedApplication];
      *(a1 + 33) = [v3 applicationState] == 2;

      [v4 addObserver:a1 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
      [v4 addObserver:a1 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
      [v4 addObserver:a1 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    }

    else
    {
      [v2 removeObserver:a1 name:*MEMORY[0x277D76660] object:0];
      [v4 removeObserver:a1 name:*MEMORY[0x277D76758] object:0];
      [v4 removeObserver:a1 name:*MEMORY[0x277D76648] object:0];
    }

    [(LAUIRenderLoop *)a1 _updateEffectivePausedState];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(LAUIRenderLoop *)self invalidate];
  v4.receiver = self;
  v4.super_class = LAUIRenderLoop;
  [(LAUIRenderLoop *)&v4 dealloc];
}

- (BOOL)attachToScreen:(id)a3
{
  v4 = a3;
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_screen);
    if (WeakRetained == v4)
    {
      p_display_link = &self->_display_link;
      display_link = self->_display_link;
      if (v4)
      {
        if (display_link)
        {
          runnable = 1;
          goto LABEL_11;
        }

        objc_storeWeak(&self->_screen, v4);
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
    objc_storeWeak(&self->_screen, v4);
    if (!v4)
    {
LABEL_10:
      [(LAUIRenderLoop *)self _updateEffectivePausedState];
      runnable = self->_runnable;
LABEL_11:

      goto LABEL_12;
    }

LABEL_7:
    v10 = [[LAUIDisplayLinkTargetProxy alloc] initWithTarget:?];
    v11 = [v4 displayLinkWithTarget:v10 selector:sel_drawWithDisplayLink_];
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
    v17 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v16 addToRunLoop:v17 forMode:*MEMORY[0x277CBE738]];

    goto LABEL_10;
  }

  runnable = 0;
LABEL_12:

  return runnable;
}

- (void)_updateEffectivePausedState
{
  if (a1)
  {
    if (*(a1 + 17) & 1) != 0 || !*(a1 + 24) || !CAFrameRateRangeIsEqualToRange(*(a1 + 56), *MEMORY[0x277CD9DD0]) && *(a1 + 60) <= 0.0 || *(a1 + 36) == 1 && (*(a1 + 33))
    {
      v2 = 1;
    }

    else
    {
      v2 = [a1 _isForcingPause];
    }

    v3 = v2 ^ 1;
    v4 = *(a1 + 39);
    if (v4 != (v2 ^ 1))
    {
      *(a1 + 39) = v3;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (v2)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a1 + 38);
    }

    if (*(a1 + 37) == (v5 & 1))
    {
      if (v4 != v3 && *(a1 + 35) == 1)
      {
        [WeakRetained renderLoop:a1 didChangeRunnable:*(a1 + 39)];
      }
    }

    else
    {
      *(a1 + 37) = v5 & 1;
      [*(a1 + 24) setPaused:?];
      if (v4 != v3 && *(a1 + 35) == 1)
      {
        [WeakRetained renderLoop:a1 didChangeRunnable:*(a1 + 39)];
      }

      if (*(a1 + 34) == 1)
      {
        [WeakRetained renderLoop:a1 didChangeEffectivePaused:*(a1 + 37)];
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

- (void)_drawAtTime:(uint64_t)a1
{
  if (a1 && (*(a1 + 37) & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      *(a1 + 16) = 1;
      [a1 _willDraw];
      [WeakRetained renderLoop:a1 drawAtTime:a2];
      *(a1 + 16) = 0;
      [a1 _didDraw];
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)setInApplicationContext:(BOOL)a3
{
  if (self->_in_application_context != a3)
  {
    self->_in_application_context = a3;
    [(LAUIRenderLoop *)self _updateApplicationState];
  }
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  if (!CAFrameRateRangeIsEqualToRange(self->_preferred_fps_range, a3))
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

- (void)setHighFrameRateReason:(unsigned int)a3
{
  self->_has_high_fps_reason = 1;
  self->_high_fps_reason = a3;
  [(CADisplayLink *)self->_display_link setHighFrameRateReason:?];
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_delegate, v5);
  if (v5)
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

- (void)_applicationDidEnterBackground:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  if ([v4 applicationState] != 2)
  {
    __assert_rtn("[LAUIRenderLoop _applicationDidEnterBackground:]", "LAUIRenderLoop.mm", 447, "[[UIApplication sharedApplication] applicationState] == UIApplicationStateBackground");
  }

  if (!self->_background)
  {
    self->_background = 1;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  if (self->_background)
  {
    self->_background = 0;
    [(LAUIRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  if ([v4 applicationState] == 2)
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
  if (a1)
  {
    [(LAUIRenderLoop *)a1 _updateEffectivePausedState];
  }
}

@end
@interface SUUIDynamicBarAnimator
- (BOOL)canTransitionToState:(int64_t)state;
- (SUUIDynamicBarAnimator)init;
- (SUUIDynamicBarAnimatorDelegate)delegate;
- (double)_constrainTopBarHeight:(double)height;
- (void)_displayLinkFired:(id)fired;
- (void)_moveBarsWithDelta:(double)delta;
- (void)_setInSteadyState:(BOOL)state;
- (void)_transitionToSteadyState;
- (void)_updateDisplayLink;
- (void)_updateOutputs;
- (void)attemptTransitionToState:(int64_t)state animated:(BOOL)animated;
- (void)beginDraggingWithOffset:(double)offset;
- (void)dealloc;
- (void)endDraggingWithTargetOffset:(double)offset velocity:(double)velocity;
- (void)setBottomBarOffset:(double)offset forState:(int64_t)state;
- (void)setMaximumBottomBarOffset:(double)offset;
- (void)setMinimumTopBarHeight:(double)height;
- (void)setTopBarHeight:(double)height forState:(int64_t)state;
- (void)updateDraggingWithOffset:(double)offset;
@end

@implementation SUUIDynamicBarAnimator

- (SUUIDynamicBarAnimator)init
{
  v3.receiver = self;
  v3.super_class = SUUIDynamicBarAnimator;
  result = [(SUUIDynamicBarAnimator *)&v3 init];
  if (result)
  {
    result->_state = 1;
    result->_inSteadyState = 1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_displayLink)
  {
    [SUUIDynamicBarAnimator dealloc];
  }

  v2.receiver = self;
  v2.super_class = SUUIDynamicBarAnimator;
  [(SUUIDynamicBarAnimator *)&v2 dealloc];
}

- (void)_moveBarsWithDelta:(double)delta
{
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  v6 = self->_targetTopBarHeight - delta;
  self->_targetTopBarHeight = v6;
  v7 = self->_topBarHeightForState[1] - self->_topBarHeightForState[0];
  v8 = vabdd_f64(unroundedTopBarHeight, v6);
  self->_unroundedTopBarHeight = unroundedTopBarHeight - exp(-(v8 * 3.0 / v7 * (v8 * 3.0 / v7))) * delta;

  [(SUUIDynamicBarAnimator *)self _updateOutputs];
}

- (void)attemptTransitionToState:(int64_t)state animated:(BOOL)animated
{
  if (state >= 2)
  {
    [SUUIDynamicBarAnimator attemptTransitionToState:animated:];
  }

  if ([(SUUIDynamicBarAnimator *)self canTransitionToState:?])
  {
    self->_didHideOrShowBarsExplicitly = 1;
    v7 = self->_topBarHeightForState[state];
    self->_targetTopBarHeight = v7;
    if (!animated)
    {
      self->_unroundedTopBarHeight = v7;
    }

    [(SUUIDynamicBarAnimator *)self _updateOutputs];
  }
}

- (void)_transitionToSteadyState
{
  if (self->_topBarHeight >= self->_topBarHeightForState[1] * 0.9 || (v3 = [(SUUIDynamicBarAnimator *)self canTransitionToState:0], v4 = 0, !v3))
  {
    v4 = 1;
  }

  [(SUUIDynamicBarAnimator *)self attemptTransitionToState:v4 animated:1];
}

- (void)_updateOutputs
{
  [(SUUIDynamicBarAnimator *)self _constrainTopBarHeight:self->_unroundedTopBarHeight];
  self->_unroundedTopBarHeight = v3;
  [(SUUIDynamicBarAnimator *)self _constrainTopBarHeight:self->_targetTopBarHeight];
  self->_targetTopBarHeight = v4;
  if (!self->_dragging && v4 != self->_topBarHeightForState[0])
  {
    self->_targetTopBarHeight = self->_topBarHeightForState[1];
  }

  [(SUUIDynamicBarAnimator *)self _updateDisplayLink];
  v5 = __40__SUUIDynamicBarAnimator__updateOutputs__block_invoke(self->_unroundedTopBarHeight);
  [(SUUIDynamicBarAnimator *)self _bottomBarOffsetForTopBarHeight:self->_unroundedTopBarHeight];
  v7 = __40__SUUIDynamicBarAnimator__updateOutputs__block_invoke(v6);
  v8 = v7 == self->_bottomBarOffsetForState[0] && v5 == self->_topBarHeightForState[0];
  v9 = v7 == self->_bottomBarOffsetForState[1] && v5 == self->_topBarHeightForState[1];
  v10 = v8 || v9;
  v11 = (v8 || v9) && self->_displayLink == 0;
  [(SUUIDynamicBarAnimator *)self _setInSteadyState:v11];
  v12 = !v8;
  if (v5 != self->_topBarHeight || v7 != self->_bottomBarOffset || self->_state != v12)
  {
    self->_state = v12;
    self->_topBarHeight = v5;
    self->_bottomBarOffset = v7;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicBarAnimatorDidUpdate:self];

    if (!v10 && !self->_dragging && !self->_displayLink)
    {

      [(SUUIDynamicBarAnimator *)self _transitionToSteadyState];
    }
  }
}

double __40__SUUIDynamicBarAnimator__updateOutputs__block_invoke(double a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return round(v4 * a1) / v4;
}

- (void)_setInSteadyState:(BOOL)state
{
  if (self->_inSteadyState != state)
  {
    stateCopy = state;
    self->_inSteadyState = state;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (stateCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dynamicBarAnimatorWillEnterSteadyState:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [WeakRetained dynamicBarAnimatorWillLeaveSteadyState:self];
    }
  }
}

- (BOOL)canTransitionToState:(int64_t)state
{
  if (state >= 2)
  {
    [SUUIDynamicBarAnimator canTransitionToState:];
  }

  v3 = (&self->super.isa + state);
  [(SUUIDynamicBarAnimator *)self _constrainTopBarHeight:v3[1]];
  return v4 == v3[1];
}

- (double)_constrainTopBarHeight:(double)height
{
  minimumTopBarHeight = self->_minimumTopBarHeight;
  [(SUUIDynamicBarAnimator *)self _topBarHeightForBottomBarOffset:self->_maximumBottomBarOffset];
  if (minimumTopBarHeight >= result)
  {
    result = minimumTopBarHeight;
  }

  if (result < self->_topBarHeightForState[0])
  {
    result = self->_topBarHeightForState[0];
  }

  if (result <= height)
  {
    result = height;
  }

  if (result >= self->_topBarHeightForState[1])
  {
    return self->_topBarHeightForState[1];
  }

  return result;
}

- (void)_displayLinkFired:(id)fired
{
  [fired duration];
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  self->_unroundedTopBarHeight = unroundedTopBarHeight - ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 + ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 * -50.0 + (unroundedTopBarHeight - self->_targetTopBarHeight) * 900.0) * v5) * v5;
  self->_lastUnroundedTopBarHeight = unroundedTopBarHeight;

  [(SUUIDynamicBarAnimator *)self _updateOutputs];
}

- (void)_updateDisplayLink
{
  if (vabdd_f64(self->_topBarHeight, self->_targetTopBarHeight) >= 0.1 || vabdd_f64(self->_lastUnroundedTopBarHeight, self->_unroundedTopBarHeight) >= 10.0)
  {
    if (!self->_displayLink)
    {
      v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
      displayLink = self->_displayLink;
      self->_displayLink = v6;

      v8 = self->_displayLink;
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [(CADisplayLink *)v8 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

      self->_lastUnroundedTopBarHeight = self->_unroundedTopBarHeight;
    }
  }

  else
  {
    v3 = self->_displayLink;
    if (v3)
    {
      [(CADisplayLink *)v3 invalidate];
      v4 = self->_displayLink;
      self->_displayLink = 0;

      topBarHeight = self->_topBarHeight;
      self->_targetTopBarHeight = topBarHeight;
      self->_unroundedTopBarHeight = topBarHeight;
      self->_lastUnroundedTopBarHeight = topBarHeight;

      [(SUUIDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)beginDraggingWithOffset:(double)offset
{
  self->_dragging = 1;
  *&self->_didHideBarsByMoving = 0;
  self->_lastOffset = offset;
}

- (void)updateDraggingWithOffset:(double)offset
{
  if (self->_state == 1 && !self->_didHideOrShowBarsExplicitly)
  {
    v5 = offset - self->_lastOffset;
    v6 = fmax(self->_topBarHeight - self->_topBarHeightForState[0] - v5, 0.0);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained dynamicBarAnimator:self canHideBarsByDraggingWithOffset:v6];

    if (v8)
    {
      [(SUUIDynamicBarAnimator *)self _moveBarsWithDelta:v5];
      if (!self->_state)
      {
        self->_didHideBarsByMoving = 1;
      }
    }
  }

  self->_lastOffset = offset;
}

- (void)endDraggingWithTargetOffset:(double)offset velocity:(double)velocity
{
  self->_dragging = 0;
  if (self->_didHideOrShowBarsExplicitly)
  {
    if (![(SUUIDynamicBarAnimator *)self targetState:offset]&& [(SUUIDynamicBarAnimator *)self canTransitionToState:0])
    {
      selfCopy2 = self;
      v6 = 0;
LABEL_7:

      [(SUUIDynamicBarAnimator *)selfCopy2 attemptTransitionToState:v6 animated:1];
      return;
    }

LABEL_6:
    selfCopy2 = self;
    v6 = 1;
    goto LABEL_7;
  }

  if (velocity < -250.0)
  {
    goto LABEL_6;
  }

  [(SUUIDynamicBarAnimator *)self _transitionToSteadyState];
}

- (void)setTopBarHeight:(double)height forState:(int64_t)state
{
  if (state >= 2)
  {
    [SUUIDynamicBarAnimator setTopBarHeight:forState:];
  }

  if (self->_topBarHeightForState[state] != height)
  {
    self->_topBarHeightForState[state] = height;
    if (self->_state == state)
    {
      self->_targetTopBarHeight = height;
      self->_unroundedTopBarHeight = height;

      [(SUUIDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setBottomBarOffset:(double)offset forState:(int64_t)state
{
  if (state >= 2)
  {
    [SUUIDynamicBarAnimator setBottomBarOffset:forState:];
  }

  if (self->_bottomBarOffsetForState[state] != offset)
  {
    self->_bottomBarOffsetForState[state] = offset;
    if (self->_state == state)
    {

      [(SUUIDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setMinimumTopBarHeight:(double)height
{
  if (self->_minimumTopBarHeight != height)
  {
    self->_minimumTopBarHeight = height;
    [(SUUIDynamicBarAnimator *)self _updateOutputs];
  }
}

- (void)setMaximumBottomBarOffset:(double)offset
{
  if (self->_maximumBottomBarOffset != offset)
  {
    self->_maximumBottomBarOffset = offset;
    [(SUUIDynamicBarAnimator *)self _updateOutputs];
  }
}

- (SUUIDynamicBarAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
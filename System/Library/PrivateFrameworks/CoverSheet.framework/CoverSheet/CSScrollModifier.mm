@interface CSScrollModifier
- (CGPoint)scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CSScrollModifier)initWithView:(id)view;
- (double)_horizontalProgressSubtractionFromVertical:(CGPoint)vertical;
- (void)_loadFromSettings:(id)settings;
- (void)_updateScrollParameters;
- (void)dealloc;
- (void)reset;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAccumulatedDragThresholdPercentage:(double)percentage;
@end

@implementation CSScrollModifier

- (CSScrollModifier)initWithView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = CSScrollModifier;
  v5 = [(CSScrollModifier *)&v11 init];
  v6 = v5;
  if (v5)
  {
    if (!viewCopy)
    {
      v9 = 0;
      goto LABEL_6;
    }

    objc_storeWeak(&v5->_targetView, viewCopy);
    v7 = +[CSLockScreenDomain rootSettings];
    dashBoardScrollModifierSettings = [v7 dashBoardScrollModifierSettings];

    [dashBoardScrollModifierSettings addKeyObserver:v6];
    [(CSScrollModifier *)v6 _loadFromSettings:dashBoardScrollModifierSettings];
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (void)dealloc
{
  v3 = +[CSLockScreenDomain rootSettings];
  dashBoardScrollModifierSettings = [v3 dashBoardScrollModifierSettings];
  [dashBoardScrollModifierSettings removeKeyObserver:self];

  v5.receiver = self;
  v5.super_class = CSScrollModifier;
  [(CSScrollModifier *)&v5 dealloc];
}

- (void)reset
{
  *&self->_hasDraggedSinceReset = 0;
  self->_recognized = 0;
  v2 = *MEMORY[0x277CBF348];
  self->_firstLocation = *MEMORY[0x277CBF348];
  self->_lastLocation = v2;
  self->_minSwipePercentageOfScreen = 100.0;
  self->_inertialMultiplier = 0.0;
  self->_initialScrollViewOffsetX = 0.0;
  self->_accumulatedDrag = 0.0;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (!self->_hasDraggedSinceReset)
  {
    v15 = draggingCopy;
    panGestureRecognizer = [draggingCopy panGestureRecognizer];
    WeakRetained = objc_loadWeakRetained(&self->_targetView);
    [panGestureRecognizer locationInView:WeakRetained];
    self->_firstLocation.x = v7;
    self->_firstLocation.y = v8;

    self->_lastLocation = self->_firstLocation;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      [v15 contentSize];
      v10 = v9;
      [v15 frame];
      v12 = v10 - v11;
      [v15 contentOffset];
      v14 = v12 - v13;
    }

    else
    {
      [v15 contentOffset];
    }

    self->_initialScrollViewOffsetX = v14;
    self->_hasDraggedSinceReset = 1;
    draggingCopy = v15;
  }
}

- (CGPoint)scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  if (!viewCopy)
  {
    [CSScrollModifier scrollView:a2 adjustedOffsetForOffset:self translation:? startPoint:? locationInView:? horizontalVelocity:? verticalVelocity:?];
  }

  if (!self->_cancelled)
  {
    panGestureRecognizer = [viewCopy panGestureRecognizer];
    WeakRetained = objc_loadWeakRetained(&self->_targetView);
    [panGestureRecognizer locationInView:WeakRetained];
    v17 = v16;
    v19 = v18;

    [(CSScrollModifier *)self _horizontalProgressSubtractionFromVertical:v17, v19];
    if (self->_cancelScrollingIfTooMuchDrag)
    {
      maxAccumulatedDragThreshold = self->_maxAccumulatedDragThreshold;
      v22 = v20 + self->_accumulatedDrag;
      self->_accumulatedDrag = v22;
      if (v22 > maxAccumulatedDragThreshold)
      {
        self->_cancelled = 1;
        [viewCopy _forcePanGestureToEndImmediately];
      }
    }

    self->_lastLocation.x = v17;
    self->_lastLocation.y = v19;
  }

  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  if (self->_cancelled)
  {
    self->_recognized = 0;
  }

  else
  {
    v24 = draggingCopy;
    [(CSScrollModifier *)self _updateScrollParameters];
    scrollFromRightToLeft = [(CSScrollModifier *)self scrollFromRightToLeft];
    v9 = MEMORY[0x277D76620];
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    if ([*v9 userInterfaceLayoutDirection] == 1)
    {
      [v24 contentSize];
      v12 = v11;
      [v24 frame];
      v14 = v12 - v13;
      [v24 contentOffset];
      v16 = v14 - v15;
    }

    else
    {
      [v24 contentOffset];
    }

    v17 = v16 - self->_initialScrollViewOffsetX;
    if (userInterfaceLayoutDirection == 1)
    {
      v17 = -v17;
    }

    if (scrollFromRightToLeft)
    {
      v18 = v17 + self->_inertialMultiplier * x;
    }

    else
    {
      v18 = -(v17 + self->_inertialMultiplier * x);
    }

    maxScrollDistance = self->_maxScrollDistance;
    v20 = self->_minSwipePercentageOfScreen / 100.0;
    WeakRetained = objc_loadWeakRetained(&self->_targetView);
    [WeakRetained bounds];
    v22 = fmin(maxScrollDistance, v20 * CGRectGetWidth(v26));

    v23 = v18 > v22;
    if (vabdd_f64(v18, v22) < 0.00000011920929)
    {
      v23 = 1;
    }

    self->_recognized = v23;
    draggingCopy = v24;
  }
}

- (double)_horizontalProgressSubtractionFromVertical:(CGPoint)vertical
{
  v4 = vertical.y - self->_lastLocation.y;
  v5 = vertical.x - self->_lastLocation.x;
  v6 = v4 * v4 + v5 * v5;
  v7 = sqrtf(v6);
  v8 = atan2(v4, v5);
  v9 = sinf(v8);
  result = pow(v9 * v9, self->_powerOfVerticalDirectionSine2) * v7;
  if (result > self->_maxDragFromVerticalPerFrame)
  {
    return self->_maxDragFromVerticalPerFrame;
  }

  return result;
}

- (void)_updateScrollParameters
{
  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    self->_minSwipePercentageOfScreen = self->_minPercentageSigmoidBase;
    inertialMultiplierSigmoidRange = self->_inertialMultiplierSigmoidRange;
    v8 = 64;
    goto LABEL_9;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ([(CSScrollModifier *)self scrollFromRightToLeft])
  {
    WeakRetained = objc_loadWeakRetained(&self->_targetView);
    [WeakRetained bounds];
    x = CGRectGetWidth(v13) - self->_firstLocation.x;
  }

  else
  {
    x = self->_firstLocation.x;
  }

  inertialMultiplierSigmoidBase = self->_inertialMultiplierSigmoidBase;
  v10 = self->_inertialMultiplierSigmoidRange;
  self->_inertialMultiplier = inertialMultiplierSigmoidBase + v10 / (exp(-(self->_inertialMultiplierSigmoidAlpha * (x - self->_inertialMultiplierSigmoidPivot))) + 1.0);
  minPercentageSigmoidBase = self->_minPercentageSigmoidBase;
  minPercentageSigmoidRange = self->_minPercentageSigmoidRange;
  inertialMultiplierSigmoidRange = minPercentageSigmoidBase + minPercentageSigmoidRange / (exp(-(self->_minPercentageSigmoidAlpha * (x - self->_minPercentageSigmoidPivot))) + 1.0);
  v8 = 56;
LABEL_9:
  *(&self->super.isa + v8) = inertialMultiplierSigmoidRange;
}

- (void)setAccumulatedDragThresholdPercentage:(double)percentage
{
  self->_accumulatedDragThresholdPercentage = percentage;
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  [WeakRetained bounds];
  self->_maxAccumulatedDragThreshold = CGRectGetWidth(v6) * (self->_accumulatedDragThresholdPercentage / 100.0);
}

- (void)_loadFromSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy maxScrollDistance];
  [(CSScrollModifier *)self setMaxScrollDistance:?];
  -[CSScrollModifier setCancelScrollingIfTooMuchDrag:](self, "setCancelScrollingIfTooMuchDrag:", [settingsCopy cancelScrollingIfTooMuchDrag]);
  [settingsCopy accumulatedDragThresholdPercentage];
  [(CSScrollModifier *)self setAccumulatedDragThresholdPercentage:?];
  [settingsCopy maxDragFromVerticalPerFrame];
  [(CSScrollModifier *)self setMaxDragFromVerticalPerFrame:?];
  [settingsCopy powerOfVerticalDirectionSine2];
  [(CSScrollModifier *)self setPowerOfVerticalDirectionSine2:?];
  [settingsCopy inertialMultiplierSigmoidBase];
  [(CSScrollModifier *)self setInertialMultiplierSigmoidBase:?];
  [settingsCopy inertialMultiplierSigmoidRange];
  [(CSScrollModifier *)self setInertialMultiplierSigmoidRange:?];
  [settingsCopy inertialMultiplierSigmoidPivot];
  [(CSScrollModifier *)self setInertialMultiplierSigmoidPivot:?];
  [settingsCopy inertialMultiplierSigmoidAlpha];
  [(CSScrollModifier *)self setInertialMultiplierSigmoidAlpha:?];
  [settingsCopy minPercentageSigmoidBase];
  [(CSScrollModifier *)self setMinPercentageSigmoidBase:?];
  [settingsCopy minPercentageSigmoidRange];
  [(CSScrollModifier *)self setMinPercentageSigmoidRange:?];
  [settingsCopy minPercentageSigmoidPivot];
  [(CSScrollModifier *)self setMinPercentageSigmoidPivot:?];
  [settingsCopy minPercentageSigmoidAlpha];
  v6 = v5;

  [(CSScrollModifier *)self setMinPercentageSigmoidAlpha:v6];
}

- (void)scrollView:(uint64_t)a1 adjustedOffsetForOffset:(uint64_t)a2 translation:startPoint:locationInView:horizontalVelocity:verticalVelocity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSScrollModifier.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"scrollView != nil"}];
}

@end
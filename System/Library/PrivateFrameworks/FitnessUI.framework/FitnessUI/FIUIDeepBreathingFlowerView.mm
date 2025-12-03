@interface FIUIDeepBreathingFlowerView
- (CGPoint)_originalRingCenterForWindType:(int64_t)type;
- (FIUIDeepBreathingFlowerView)initWithFrame:(CGRect)frame petalColor:(int64_t)color congratulationsText:(id)text;
- (double)_curveEaseInValue:(double)value;
- (double)_petalCountForMinutesRemaining:(double)remaining;
- (float)_interpolateWithKeyFrames:(id)frames keyValues:(id)values value:(float)value;
- (id)_petalRingWithNumberOfShaderPetals:(int64_t)petals showBlurTrails:(BOOL)trails;
- (void)_createCongratulationsLabelIfNeeded;
- (void)_preloadPetalRings;
- (void)_setNumberOfVisiblePetals:(int64_t)petals showBlurTrails:(BOOL)trails;
- (void)_setState:(int64_t)state;
- (void)_setWindFraction:(double)fraction smallRadius:(double)radius largeRadius:(double)largeRadius windType:(int64_t)type showBlurTrails:(BOOL)trails;
- (void)_updateForBreathWithPetalCount:(int64_t)count petalRadius:(double)radius inhaleDuration:(double)duration exhaleDuration:(double)exhaleDuration timeInCurrentBreath:(double)breath showBlurTrails:(BOOL)trails shouldSpin:(BOOL)spin;
- (void)_updateForCongratulationsWithTimeInState:(double)state fractionComplete:(double)complete;
- (void)_updateForGuidingWithTimeInState:(double)state;
- (void)_updateForOnRampWithTimeInState:(double)state;
- (void)_updateForUnwindToCompletedWithFractionComplete:(double)complete;
- (void)_updatePetalsInRange:(_NSRange)range radius:(double)radius radialDistance:(double)distance angleOffset:(double)offset clockwise:(BOOL)clockwise alpha:(float)alpha;
- (void)_updateShaderForNumberOfPetals:(int64_t)petals showBlurTrails:(BOOL)trails;
- (void)petalRingViewDisplayLinkDidFire:(id)fire;
- (void)setNumberOfConfigurationPetals:(double)petals;
- (void)setWelcomeWindFraction:(double)fraction;
- (void)startOnRampAtDate:(id)date sessionDuration:(double)duration;
- (void)transitionToConfigurationAnimated:(BOOL)animated;
@end

@implementation FIUIDeepBreathingFlowerView

- (FIUIDeepBreathingFlowerView)initWithFrame:(CGRect)frame petalColor:(int64_t)color congratulationsText:(id)text
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  textCopy = text;
  v19.receiver = self;
  v19.super_class = FIUIDeepBreathingFlowerView;
  height = [(FIUIDeepBreathingFlowerView *)&v19 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    height->_petalColor = color;
    layer = [(FIUIDeepBreathingFlowerView *)height layer];
    [layer setAllowsGroupOpacity:0];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    petalRingsByNumberOfPetals = v14->_petalRingsByNumberOfPetals;
    v14->_petalRingsByNumberOfPetals = dictionary;

    [(FIUIDeepBreathingFlowerView *)v14 _preloadPetalRings];
    objc_storeStrong(&v14->_congratulationsText, text);
  }

  return v14;
}

- (void)_setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    self->_stateStartTime = CFAbsoluteTimeGetCurrent();
  }
}

- (void)_preloadPetalRings
{
  if (FIUIDeepBreathingShouldOptimizePetalCount())
  {
    v3 = [(FIUIDeepBreathingFlowerView *)self _petalRingWithNumberOfShaderPetals:6 showBlurTrails:0];
    v4 = [(FIUIDeepBreathingFlowerView *)self _petalRingWithNumberOfShaderPetals:10 showBlurTrails:0];
    for (i = 1; i != 6; ++i)
    {
      if ((FIUIDeepBreathingPetalCountForMinutesRemaining(i) & 1) == 0)
      {
        v6 = [FIUIDeepBreathingFlowerView _petalRingWithNumberOfShaderPetals:"_petalRingWithNumberOfShaderPetals:showBlurTrails:" showBlurTrails:?];
      }
    }
  }

  [(FIUIDeepBreathingFlowerView *)self _updateShaderForNumberOfPetals:10 showBlurTrails:0];

  [(FIUIDeepBreathingFlowerView *)self _setNumberOfVisiblePetals:10 showBlurTrails:0];
}

- (id)_petalRingWithNumberOfShaderPetals:(int64_t)petals showBlurTrails:(BOOL)trails
{
  trailsCopy = trails;
  v31 = *MEMORY[0x1E69E9840];
  v7 = 100;
  if (!trails)
  {
    v7 = 0;
  }

  petals = [MEMORY[0x1E696AD98] numberWithInteger:v7 + petals];
  v9 = [(NSMutableDictionary *)self->_petalRingsByNumberOfPetals objectForKeyedSubscript:petals];
  if (!v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x1E696B938];
    if (os_log_type_enabled(*MEMORY[0x1E696B938], OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = v10;
      v13 = [v11 numberWithInteger:petals];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:trailsCopy];
      v27 = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_1E5D0F000, v12, OS_LOG_TYPE_DEFAULT, "creating petal ring with %@ petals (blur trails = %@)", &v27, 0x16u);
    }

    v15 = [FIUIBreathingPetalRingMetalView alloc];
    [(FIUIDeepBreathingFlowerView *)self bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    petalColor = self->_petalColor;
    if (_defaultMetalDevice_onceToken != -1)
    {
      [FIUIDeepBreathingFlowerView _petalRingWithNumberOfShaderPetals:showBlurTrails:];
    }

    v9 = [(FIUIBreathingPetalRingMetalView *)v15 initWithFrame:petalColor petalColor:petals numberOfPetals:trailsCopy showBlurTrails:_defaultMetalDevice_metalDevice device:v17, v19, v21, v23];
    if (FIUIDeepBreathingShouldOptimizePetalCount())
    {
      LODWORD(v25) = 30.0;
      [(FIUIBreathingPetalRingMetalView *)v9 setPreferredFramesPerSecond:v25];
    }

    [(FIUIBreathingPetalRingMetalView *)v9 setPetalRingDelegate:self];
    [(NSMutableDictionary *)self->_petalRingsByNumberOfPetals setObject:v9 forKeyedSubscript:petals];
  }

  return v9;
}

- (void)_setNumberOfVisiblePetals:(int64_t)petals showBlurTrails:(BOOL)trails
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (self->_numberOfVisiblePetals != petals || self->_showBlurTrails != trails)
  {
    self->_numberOfVisiblePetals = petals;
    self->_showBlurTrails = trails;
    trailsCopy = trails;
    if (trails)
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:petals];
      trailAlphaKeyFrames = self->_trailAlphaKeyFrames;
      self->_trailAlphaKeyFrames = v5;

      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:petals];
      trailAlphaKeyValues = self->_trailAlphaKeyValues;
      self->_trailAlphaKeyValues = v7;

      if (self->_numberOfVisiblePetals >= 1)
      {
        v9 = 0;
        do
        {
          v10 = self->_trailAlphaKeyFrames;
          v17[0] = &unk_1F5F9B4C0;
          v11 = [MEMORY[0x1E696AD98] numberWithDouble:{FIUIRandomInteger(59, 95) / 306.0}];
          v17[1] = v11;
          v12 = [MEMORY[0x1E696AD98] numberWithDouble:{FIUIRandomInteger(154, 267) / 306.0}];
          v17[2] = v12;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
          [(NSMutableArray *)v10 addObject:v13];

          [(NSMutableArray *)self->_trailAlphaKeyValues addObject:&unk_1F5F9B1A8];
          ++v9;
        }

        while (v9 < self->_numberOfVisiblePetals);
      }
    }

    _currentPetalRing = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
    [_currentPetalRing setNumberOfVisiblePetals:petals showBlurTrails:trailsCopy];
  }
}

- (void)_updateShaderForNumberOfPetals:(int64_t)petals showBlurTrails:(BOOL)trails
{
  trailsCopy = trails;
  v27 = *MEMORY[0x1E69E9840];
  ShouldOptimizePetalCount = FIUIDeepBreathingShouldOptimizePetalCount();
  petalsCopy = 6;
  if (petals > 6)
  {
    petalsCopy = petals;
  }

  v9 = (petalsCopy & 1) + petalsCopy;
  if (ShouldOptimizePetalCount)
  {
    v10 = v9;
  }

  else
  {
    v10 = 10;
  }

  v11 = ShouldOptimizePetalCount ^ 1 | trailsCopy;
  if ([(FIUIBreathingPetalRingViewDrawable *)self->_currentPetalRing numberOfPetals]!= v10 || v11 != [(FIUIBreathingPetalRingViewDrawable *)self->_currentPetalRing showBlurTrails])
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B938];
    if (os_log_type_enabled(*MEMORY[0x1E696B938], OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = v12;
      v15 = [v13 numberWithInteger:petals];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v11];
      v23 = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_1E5D0F000, v14, OS_LOG_TYPE_DEFAULT, "update to shader with %@ petals, showBlurTrails = %@", &v23, 0x16u);
    }

    v17 = [(FIUIDeepBreathingFlowerView *)self _petalRingWithNumberOfShaderPetals:v10 showBlurTrails:v11];
    currentPetalRing = self->_currentPetalRing;
    self->_currentPetalRing = v17;
    v19 = v17;
    v20 = currentPetalRing;

    view = [(FIUIBreathingPetalRingViewDrawable *)self->_currentPetalRing view];
    [(FIUIDeepBreathingFlowerView *)self insertSubview:view atIndex:0];

    [(FIUIBreathingPetalRingViewDrawable *)self->_currentPetalRing importDataFromPetalRing:v20];
    view2 = [(FIUIBreathingPetalRingViewDrawable *)v20 view];

    [view2 removeFromSuperview];
  }
}

- (void)petalRingViewDisplayLinkDidFire:(id)fire
{
  v4 = (CFAbsoluteTimeGetCurrent() - self->_stateStartTime) / (self->_stateEndTime - self->_stateStartTime);
  v5 = v4 >= 1.0;
  state = self->_state;
  v8 = state == 8 || state == 3;
  v9 = v5 && v8;
  if (v5 && v8)
  {
    v4 = 1.0;
  }

  if (state > 5)
  {
    switch(state)
    {
      case 6:
        [FIUIDeepBreathingFlowerView _updateForCongratulationsWithTimeInState:"_updateForCongratulationsWithTimeInState:fractionComplete:" fractionComplete:?];
        if (!v9)
        {
          return;
        }

        goto LABEL_26;
      case 7:
        [(FIUIDeepBreathingFlowerView *)self _updateForUnwindToCompletedWithFractionComplete:v4];
        if (!v9)
        {
          return;
        }

        goto LABEL_26;
      case 8:
        [(FIUIDeepBreathingFlowerView *)self _updateForWindToConfigurationWithFractionComplete:v4];
        if (!v9)
        {
          return;
        }

        goto LABEL_26;
    }
  }

  else
  {
    switch(state)
    {
      case 3:
        [(FIUIDeepBreathingFlowerView *)self _updateForShrinkToOnRampWithFractionComplete:v4];
        if (!v9)
        {
          return;
        }

        goto LABEL_26;
      case 4:
        [(FIUIDeepBreathingFlowerView *)self _updateForOnRampWithTimeInState:?];
        break;
      case 5:
        [(FIUIDeepBreathingFlowerView *)self _updateForGuidingWithTimeInState:?];
        if (!v9)
        {
          return;
        }

        goto LABEL_26;
    }
  }

  if (!v9)
  {
    return;
  }

LABEL_26:
  v10 = self->_state;
  if (v10 == 8)
  {
    v11 = 2;
  }

  else
  {
    v11 = 4 * (v10 == 3);
  }

  [(FIUIDeepBreathingFlowerView *)self _setState:v11];
}

- (void)setWelcomeWindFraction:(double)fraction
{
  if (self->_state != 1)
  {
    [(FIUIDeepBreathingFlowerView *)self _setState:1];
  }

  if (fraction >= 2.22044605e-16)
  {
    v7 = 38.75;
    v6 = 16.0;
    selfCopy2 = self;
    fractionCopy = fraction;
  }

  else
  {
    fractionCopy = 0.0;
    v6 = 16.0;
    v7 = 16.0;
    selfCopy2 = self;
  }

  [(FIUIDeepBreathingFlowerView *)selfCopy2 _setWindFraction:1 smallRadius:0 largeRadius:fractionCopy windType:v6 showBlurTrails:v7];
}

- (void)transitionToConfigurationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _currentPetalRing = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  LODWORD(v6) = 1078530011;
  [_currentPetalRing setGradientRotationAngle:v6];

  superview = [(FIUIDeepBreathingFlowerView *)self superview];
  superview2 = [(FIUIDeepBreathingFlowerView *)self superview];
  [superview2 center];
  v10 = v9;
  v12 = v11;
  superview3 = [(FIUIDeepBreathingFlowerView *)self superview];
  v13Superview = [superview3 superview];
  [superview convertPoint:v13Superview fromView:{v10, v12}];
  v16 = v15;

  [(FIUIDeepBreathingFlowerView *)self center];
  self->_centerVerticalOffsetBeforeTransitionToConfiguration = v16 - v17;
  if (animatedCopy)
  {
    [(FIUIDeepBreathingFlowerView *)self _setState:8];
    self->_stateEndTime = self->_stateStartTime + 0.5;
  }

  else
  {
    _currentPetalRing2 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
    [(FIUIDeepBreathingFlowerView *)self bounds];
    [_currentPetalRing2 setRingCenter:{FIUIMidpointOfBounds(v19, v20, v21)}];

    [(FIUIDeepBreathingFlowerView *)self _setState:2];
  }

  congratulationsLabel = self->_congratulationsLabel;

  [(UILabel *)congratulationsLabel setAlpha:0.0];
}

- (void)setNumberOfConfigurationPetals:(double)petals
{
  v4 = FIUIRoundToNearest(petals, 0.01);
  [(FIUIDeepBreathingFlowerView *)self _updateShaderForNumberOfPetals:10 showBlurTrails:0];
  v5 = ceil(v4);
  [(FIUIDeepBreathingFlowerView *)self _setNumberOfVisiblePetals:fmin(v5 showBlurTrails:10.0), 0];
  if (self->_numberOfVisiblePetals >= 1)
  {
    v8 = 0;
    *v6.i64 = v4 - trunc(v4);
    *v6.i32 = *v6.i64;
    *v7.i32 = v4;
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v19 = vbslq_s8(v9, v6, v7).u64[0];
    v10 = v5 + -1.0;
    do
    {
      v11 = FIUIDeepBreathingPetalCenter(v8, 1, v4, 38.75, -0.523598776);
      v13 = v12;
      v14 = 1.0;
      if (v10 == v8)
      {
        if (FIUIIsEqual(v4, self->_numberOfVisiblePetals))
        {
          v14 = 1.0;
        }

        else
        {
          v14 = *&v19;
        }
      }

      _currentPetalRing = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
      LODWORD(v16) = 1109065728;
      *&v17 = v14;
      [_currentPetalRing setPetalAtIndex:v8 center:v11 radius:v13 alpha:{v16, v17}];

      ++v8;
    }

    while (v8 < self->_numberOfVisiblePetals);
  }

  _currentPetalRing2 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  LODWORD(v18) = 1117454336;
  [_currentPetalRing2 setRingRadius:v18];
}

- (void)startOnRampAtDate:(id)date sessionDuration:(double)duration
{
  self->_sessionDuration = duration;
  [date timeIntervalSinceReferenceDate];
  self->_stateEndTime = v5;
  [(FIUIDeepBreathingFlowerView *)self _createCongratulationsLabelIfNeeded];

  [(FIUIDeepBreathingFlowerView *)self _setState:3];
}

- (void)_updateForOnRampWithTimeInState:(double)state
{
  v5 = FIUIDeepBreathingOnRampNumberOfBreaths();
  v6 = fmin(fmax(state, 0.0), FIUIDeepBreathingOnRampFullBreathDuration() * v5);
  [(FIUIDeepBreathingFlowerView *)self _petalCountForMinutesRemaining:ceil(self->_sessionDuration / 60.0)];
  v8 = v7;
  v9 = FIUIDeepBreathingOnRampInhaleDuration();
  v10 = FIUIDeepBreathingOnRampExhaleDuration();
  v11 = v6 - floor(v6 / (v9 + v10)) * (v9 + v10);

  [(FIUIDeepBreathingFlowerView *)self _updateForBreathWithPetalCount:v8 petalRadius:0 inhaleDuration:1 exhaleDuration:16.0 timeInCurrentBreath:v9 showBlurTrails:v10 shouldSpin:v11];
}

- (void)_updateForGuidingWithTimeInState:(double)state
{
  sessionDuration = self->_sessionDuration;
  v5 = fmin(fmax(state, 0.0), sessionDuration);
  [(FIUIDeepBreathingFlowerView *)self _petalCountForMinutesRemaining:ceil((sessionDuration - v5) / 60.0)];
  v7 = v6;
  v8 = FIUIDeepBreathingInhaleDuration(self->_breathsPerMinute);
  v9 = FIUIDeepBreathingExhaleDuration(self->_breathsPerMinute);
  v10 = v5 - floor(v5 / (v8 + v9)) * (v8 + v9) > v8;

  [(FIUIDeepBreathingFlowerView *)self _updateForBreathWithPetalCount:v7 petalRadius:v10 inhaleDuration:1 exhaleDuration:38.75 timeInCurrentBreath:v8 showBlurTrails:v9 shouldSpin:?];
}

- (void)_updateForCongratulationsWithTimeInState:(double)state fractionComplete:(double)complete
{
  v5 = fmin(fmax(state, 0.0), self->_stateEndTime - self->_stateStartTime);
  [(UILabel *)self->_congratulationsLabel setAlpha:complete];
  v6 = self->_stateEndTime - self->_stateStartTime;

  [(FIUIDeepBreathingFlowerView *)self _updateForBreathWithPetalCount:6 petalRadius:0 inhaleDuration:0 exhaleDuration:24.0 timeInCurrentBreath:v6 showBlurTrails:0.0 shouldSpin:v5];
}

- (void)_createCongratulationsLabelIfNeeded
{
  if (!self->_congratulationsLabel)
  {
    [(FIUIDeepBreathingFlowerView *)self frame];
    v4 = v3;
    v6 = v5;
    v9 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v3, v5}];
    congratulationsLabel = self->_congratulationsLabel;
    self->_congratulationsLabel = v9;

    v11 = self->_congratulationsLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    v13 = self->_congratulationsLabel;
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [(UILabel *)v13 setFont:v14];

    v15 = self->_congratulationsLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v15 setTextColor:whiteColor];

    [(UILabel *)self->_congratulationsLabel setTextAlignment:1];
    [(UILabel *)self->_congratulationsLabel setText:self->_congratulationsText];
    [(UILabel *)self->_congratulationsLabel setNumberOfLines:0];
    [(UILabel *)self->_congratulationsLabel setAlpha:0.0];
    [(FIUIDeepBreathingFlowerView *)self addSubview:self->_congratulationsLabel];
    [(UILabel *)self->_congratulationsLabel sizeToFit];
    [(UILabel *)self->_congratulationsLabel frame];
    v18 = v17;
    [(UILabel *)self->_congratulationsLabel _lastLineBaseline];
    [(UILabel *)self->_congratulationsLabel setFrame:0.0, v6 + -20.0 - v19, v4, v18];
    v20 = self->_congratulationsLabel;

    [(UILabel *)v20 _setLastLineBaselineFrameOriginY:v6 + -19.5];
  }
}

- (CGPoint)_originalRingCenterForWindType:(int64_t)type
{
  [(FIUIDeepBreathingFlowerView *)self bounds];
  Height = CGRectGetHeight(v16);
  [(FIUIDeepBreathingFlowerView *)self bounds];
  Width = CGRectGetWidth(v17);
  if (type)
  {
    if (type == 1)
    {
      [(FIUIDeepBreathingFlowerView *)self bounds];
      v11 = FIUIMidpointOfBounds(v8, v9, v10);
      v12 = Height + -7.0 + -55.0;
      goto LABEL_11;
    }

    if (type != 2)
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      goto LABEL_11;
    }

    v7 = self->_centerVerticalOffsetBeforeTransitionToConfiguration + -14.0;
  }

  else
  {
    v7 = -14.0;
  }

  v12 = Height + v7 + -40.0;
  IsRightToLeft = FIUILocaleIsRightToLeft();
  v11 = Width + -44.0;
  if (!IsRightToLeft)
  {
    v11 = 44.0;
  }

LABEL_11:
  v14 = v12;
  result.y = v14;
  result.x = v11;
  return result;
}

- (void)_updateForUnwindToCompletedWithFractionComplete:(double)complete
{
  [(UILabel *)self->_congratulationsLabel setAlpha:fmin(fmax(complete * -2.0 + 1.0, 0.0), 1.0)];

  [(FIUIDeepBreathingFlowerView *)self _setWindFraction:0 smallRadius:1 largeRadius:1.0 - complete windType:8.0 showBlurTrails:24.0];
}

- (double)_curveEaseInValue:(double)value
{
  valueCopy = value;
  if (_curveEaseInValue__onceToken != -1)
  {
    [FIUIDeepBreathingFlowerView _curveEaseInValue:];
  }

  *&value = valueCopy;
  [_curveEaseInValue____timingFunction _solveForInput:value];
  return v4;
}

uint64_t __49__FIUIDeepBreathingFlowerView__curveEaseInValue___block_invoke()
{
  _curveEaseInValue____timingFunction = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setWindFraction:(double)fraction smallRadius:(double)radius largeRadius:(double)largeRadius windType:(int64_t)type showBlurTrails:(BOOL)trails
{
  trailsCopy = trails;
  v12 = fmin(fmax(fraction, 0.0), 1.0);
  [(FIUIDeepBreathingFlowerView *)self _curveEaseInValue:v12];
  v14 = v13;
  if (type)
  {
    v15 = v13 * -2.0943951 + 1.57079633;
    [(FIUIDeepBreathingFlowerView *)self _curveEaseInValue:v12];
    v17 = v16;
    if (type <= 2)
    {
      v18 = FIUIDeepBreathingSessionMinutesDefault();
      v19 = FIUIDeepBreathingPetalCountForMinutesRemaining(v18);
      goto LABEL_9;
    }
  }

  else
  {
    v15 = v12 * -2.0943951 + 1.57079633;
    if (v12 <= 1.0 - 0.33)
    {
      v12 = v12 / (1.0 - 0.33);
    }

    else
    {
      v12 = 1.0;
    }

    [(FIUIDeepBreathingFlowerView *)self _curveEaseInValue:v12];
    v17 = v20;
  }

  v19 = 6;
LABEL_9:
  v21 = radius + v14 * (largeRadius - radius);
  v22 = v21;
  [(FIUIDeepBreathingFlowerView *)self _updateShaderForNumberOfPetals:v19 showBlurTrails:0];
  [(FIUIDeepBreathingFlowerView *)self _setNumberOfVisiblePetals:v19 showBlurTrails:trailsCopy];
  [(FIUIDeepBreathingFlowerView *)self _originalRingCenterForWindType:type];
  v24 = v23;
  v26 = v25;
  [(FIUIDeepBreathingFlowerView *)self bounds];
  v30 = FIUIMidpointOfBounds(v27, v28, v29);
  if (type == 2)
  {
    v32 = v12;
  }

  else
  {
    v32 = v17;
  }

  v33 = v24 + v32 * (v30 - v24);
  v34 = v26 + v17 * (v31 - v26);
  _currentPetalRing = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  [_currentPetalRing setRingCenter:{v33, v34}];

  LODWORD(v36) = 1.0;
  [(FIUIDeepBreathingFlowerView *)self _updatePetalsInRange:0 radius:self->_numberOfVisiblePetals radialDistance:1 angleOffset:v22 clockwise:v21 alpha:v15, v36];
  _currentPetalRing2 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  v37 = v21 + v22;
  *&v37 = v37;
  [_currentPetalRing2 setRingRadius:v37];
}

- (double)_petalCountForMinutesRemaining:(double)remaining
{
  if (self->_petalCountOverride == 0.0)
  {
    return FIUIDeepBreathingPetalCountForMinutesRemaining(remaining);
  }

  else
  {
    return self->_petalCountOverride;
  }
}

- (void)_updateForBreathWithPetalCount:(int64_t)count petalRadius:(double)radius inhaleDuration:(double)duration exhaleDuration:(double)exhaleDuration timeInCurrentBreath:(double)breath showBlurTrails:(BOOL)trails shouldSpin:(BOOL)spin
{
  spinCopy = spin;
  trailsCopy = trails;
  _currentPetalRing = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  [(FIUIDeepBreathingFlowerView *)self bounds];
  [_currentPetalRing setRingCenter:{FIUIMidpointOfBounds(v18, v19, v20)}];

  [(FIUIDeepBreathingFlowerView *)self _updateShaderForNumberOfPetals:count showBlurTrails:1];
  [(FIUIDeepBreathingFlowerView *)self _setNumberOfVisiblePetals:count showBlurTrails:trailsCopy];
  if (breath <= duration)
  {
    v21 = 1.0;
    if (duration + -0.5 >= breath)
    {
      v21 = (duration + -0.5) * (breath / (duration + -0.5) * (breath / (duration + -0.5) * (breath / (duration + -0.5) * -2.0 + 3.0))) / (duration + -0.5);
    }
  }

  else
  {
    v21 = 0.0;
    if (exhaleDuration + -0.5 + duration >= breath)
    {
      v21 = 1.0 - (exhaleDuration + -0.5) * ((breath - duration) / (exhaleDuration + -0.5) * ((breath - duration) / (exhaleDuration + -0.5) * ((breath - duration) / (exhaleDuration + -0.5) * -2.0 + 3.0))) / (exhaleDuration + -0.5);
    }
  }

  v22 = v21 * 0.5 + 0.5;
  v23 = v21 * 1.57079633;
  if (!spinCopy)
  {
    v23 = -0.523598776;
  }

  v24 = v21 * radius + 0.0 + v21 * (radius + -12.5) + 12.5;
  v53 = v23;
  [FIUIDeepBreathingFlowerView _updatePetalsInRange:"_updatePetalsInRange:radius:radialDistance:angleOffset:clockwise:alpha:" radius:0 radialDistance:self->_numberOfVisiblePetals angleOffset:0 clockwise:? alpha:?];
  if (trailsCopy)
  {
    v54 = v21;
    if (_BlurrinessKeyFrames_onceToken != -1)
    {
      [FIUIDeepBreathingFlowerView _updateForBreathWithPetalCount:petalRadius:inhaleDuration:exhaleDuration:timeInCurrentBreath:showBlurTrails:shouldSpin:];
    }

    v25 = _BlurrinessKeyValues_onceToken;
    v26 = _BlurrinessKeyFrames___blurrinessKeyFrames;
    if (v25 != -1)
    {
      [FIUIDeepBreathingFlowerView _updateForBreathWithPetalCount:petalRadius:inhaleDuration:exhaleDuration:timeInCurrentBreath:showBlurTrails:shouldSpin:];
    }

    v52 = 1.0 - v21;
    v27 = 1.0 - v21;
    v56 = _InterpolateWithKeyFrames(v26, _BlurrinessKeyValues___blurrinessKeyValues, v27);

    if (self->_numberOfVisiblePetals >= 1)
    {
      durationCopy = duration;
      breathCopy = breath;
      v28 = 0;
      v29 = v22 * (radius + -12.5) + 12.5;
      v55 = v22 * radius + 0.0;
      v30 = v55 + v29 + v56 * 0.05;
      v31 = v29;
      do
      {
        v32 = [(NSMutableArray *)self->_trailAlphaKeyFrames objectAtIndexedSubscript:v28, *&durationCopy, *&breathCopy];
        v33 = [(NSMutableArray *)self->_trailAlphaKeyValues objectAtIndexedSubscript:v28];
        v34 = _InterpolateWithKeyFrames(v32, v33, v27);

        if (v24 < v30 && v34 > 0.05)
        {
          v24 = v30;
        }

        v36 = v27;
        v37 = FIUIDeepBreathingPetalCenter(v28, 0, self->_numberOfVisiblePetals, v55, v53);
        v39 = v38;
        _currentPetalRing2 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
        v41 = v37;
        v27 = v36;
        *&v42 = v31;
        *&v43 = v56;
        *&v44 = v34;
        [_currentPetalRing2 setBlurTrailAtIndex:v28 center:v41 radius:v39 blurriness:v42 alpha:{v43, v44}];

        ++v28;
      }

      while (v28 < self->_numberOfVisiblePetals);
      duration = durationCopy;
      breath = breathCopy;
    }

    v21 = v54;
    v45 = v52;
  }

  else
  {
    v45 = 1.0 - v21;
  }

  _currentPetalRing3 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  *&v47 = v24;
  [_currentPetalRing3 setRingRadius:v47];

  if (breath >= duration)
  {
    v48 = v45 * 3.14159265 + 3.14159265;
  }

  else
  {
    v48 = v21 * 3.14159265;
  }

  _currentPetalRing4 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
  *&v49 = v48;
  [_currentPetalRing4 setGradientRotationAngle:v49];
}

- (void)_updatePetalsInRange:(_NSRange)range radius:(double)radius radialDistance:(double)distance angleOffset:(double)offset clockwise:(BOOL)clockwise alpha:(float)alpha
{
  if (range.location < range.location + range.length)
  {
    clockwiseCopy = clockwise;
    length = range.length;
    location = range.location;
    do
    {
      v17 = FIUIDeepBreathingPetalCenter(location, clockwiseCopy, self->_numberOfVisiblePetals, distance, offset);
      v19 = v18;
      _currentPetalRing = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing];
      radiusCopy = radius;
      *&v21 = radiusCopy;
      *&v22 = alpha;
      [_currentPetalRing setPetalAtIndex:location center:v17 radius:v19 alpha:{v21, v22}];

      ++location;
      --length;
    }

    while (length);
  }

  v24 = [(FIUIDeepBreathingFlowerView *)self _currentPetalRing:radius];
  v23 = radius + distance;
  *&v23 = radius + distance;
  [v24 setRingRadius:v23];
}

- (float)_interpolateWithKeyFrames:(id)frames keyValues:(id)values value:(float)value
{
  framesCopy = frames;
  valuesCopy = values;
  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v9 >= [framesCopy count] - 1)
    {
      break;
    }

    ++v9;
    v11 = [framesCopy objectAtIndexedSubscript:v10 + 1];
    [v11 floatValue];
    v13 = v12;

    if (v13 > value || v10 == [framesCopy count] - 2)
    {
      v14 = [framesCopy objectAtIndexedSubscript:v10];
      [v14 floatValue];
      v16 = v15;

      v17 = [valuesCopy objectAtIndexedSubscript:v10];
      [v17 floatValue];
      v19 = v18;
      v20 = [valuesCopy objectAtIndexedSubscript:v9];
      [v20 floatValue];
      v22 = v19 + ((value - v16) / (v13 - v16)) * (v21 - v19);

      goto LABEL_7;
    }
  }

  v22 = 0.0;
LABEL_7:

  return v22;
}

@end
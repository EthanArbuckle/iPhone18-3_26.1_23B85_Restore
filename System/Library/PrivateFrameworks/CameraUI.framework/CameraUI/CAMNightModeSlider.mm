@interface CAMNightModeSlider
- ($F24F406B2B787EFB06265DBA3D28CBD5)durationMapping;
- (CAMNightModeSlider)initWithFrame:(CGRect)frame;
- (id)_valueTextForDuration:(double)duration;
- (id)_valueTextForDuration:(double)duration format:(id)format;
- (id)valueText;
- (unint64_t)nightMode;
- (void)_handleValueLabelUpdateTimerWithStartTime:(double)time duration:(double)duration;
- (void)_startValueLabelUpdateTimerWithDuration:(double)duration;
- (void)_stopValueLabelUpdateTimer;
- (void)dealloc;
- (void)endCaptureAnimationAnimated:(BOOL)animated;
- (void)performCaptureAnimationWithDuration:(double)duration completion:(id)completion;
- (void)setDurationMapping:(id)mapping;
- (void)setNightMode:(unint64_t)mode;
- (void)setNightModeActive:(BOOL)active;
@end

@implementation CAMNightModeSlider

- (CAMNightModeSlider)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CAMNightModeSlider;
  v3 = [(CEKDiscreteSlider *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKDiscreteSlider *)v3 setIndexCount:3];
    v5 = CAMLocalizedFrameworkString(@"LOW_LIGHT_SLIDER_TITLE", 0);
    [(CEKDiscreteSlider *)v4 setTitleText:v5];

    [(CEKDiscreteSlider *)v4 tickMarksHeight];
    v4->__inactiveTickMarkHeight = v6;
    tickMarksConfiguration = [(CEKDiscreteSlider *)v4 tickMarksConfiguration];
    [tickMarksConfiguration setMainTickMarkInterval:6];

    [(CEKDiscreteSlider *)v4 setTickMarkCountBetweenIndexes:5];
  }

  return v4;
}

- (void)dealloc
{
  [(NSTimer *)self->__valueLabelUpdateTimer invalidate];
  v3.receiver = self;
  v3.super_class = CAMNightModeSlider;
  [(CAMNightModeSlider *)&v3 dealloc];
}

- (void)setDurationMapping:(id)mapping
{
  if (mapping.var0 != self->_durationMapping.minimumDuration || mapping.var1 != self->_durationMapping.maximumDuration)
  {
    self->_durationMapping = mapping;
    if ([(CAMNightModeSlider *)self nightMode])
    {

      [(CEKDiscreteSlider *)self updateValueLabel];
    }
  }
}

- (void)setNightModeActive:(BOOL)active
{
  if (self->_nightModeActive != active)
  {
    self->_nightModeActive = active;
    [(CEKDiscreteSlider *)self updateValueLabel];
  }
}

- (void)setNightMode:(unint64_t)mode
{
  if ([(CAMNightModeSlider *)self nightMode]!= mode && mode <= 2)
  {

    [(CEKDiscreteSlider *)self setSelectedIndex:mode];
  }
}

- (unint64_t)nightMode
{
  if ([(CAMNightModeSlider *)self _isPerformingCaptureAnimation])
  {
    result = [(CAMNightModeSlider *)self _selectedIndexBeforeCaptureAnimation];
  }

  else
  {
    result = [(CEKDiscreteSlider *)self selectedIndex];
  }

  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)valueText
{
  nightMode = [(CAMNightModeSlider *)self nightMode];
  if (![(CAMNightModeSlider *)self _isPerformingCaptureAnimation])
  {
    [(CAMNightModeSlider *)self durationMapping];
    if (nightMode == 2)
    {
      v12 = v6;
      v9 = CAMLocalizedFrameworkString(@"LOW_LIGHT_MAX_DURATION_TEXT", 0);
      selfCopy2 = self;
      v11 = v12;
    }

    else
    {
      if (nightMode != 1)
      {
        if (nightMode)
        {
          v13 = 0;
          goto LABEL_15;
        }

        v7 = @"LOW_LIGHT_OFF_TEXT";
        goto LABEL_13;
      }

      v8 = v5;
      if (![(CAMNightModeSlider *)self isNightModeActive])
      {
        v7 = @"LOW_LIGHT_AUTO_TEXT";
LABEL_13:
        v4 = CAMLocalizedFrameworkString(v7, 0);
        goto LABEL_14;
      }

      v9 = CAMLocalizedFrameworkString(@"LOW_LIGHT_AUTO_DURATION_TEXT", 0);
      selfCopy2 = self;
      v11 = v8;
    }

    v13 = [(CAMNightModeSlider *)selfCopy2 _valueTextForDuration:v9 format:v11];

    goto LABEL_15;
  }

  [(CAMNightModeSlider *)self _remainingCaptureAnimationTime];
  v4 = [(CAMNightModeSlider *)self _valueTextForDuration:?];
LABEL_14:
  v13 = v4;
LABEL_15:

  return v13;
}

- (id)_valueTextForDuration:(double)duration
{
  v5 = CAMLocalizedFrameworkString(@"LOW_LIGHT_DURATION_TEXT", 0);
  v6 = [(CAMNightModeSlider *)self _valueTextForDuration:v5 format:duration];

  return v6;
}

- (id)_valueTextForDuration:(double)duration format:(id)format
{
  v5 = round(duration);
  v6 = llround(duration);
  formatCopy = format;
  _isPerformingCaptureAnimation = [(CAMNightModeSlider *)self _isPerformingCaptureAnimation];
  v9 = fmax(v5, 1.0);
  if (_isPerformingCaptureAnimation)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [v11 initWithFormat:@"%li" locale:currentLocale, v10];

  v14 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:formatCopy validFormatSpecifiers:@"%@" error:0, v13];

  return v14;
}

- (void)performCaptureAnimationWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  if ([(CAMNightModeSlider *)self _isPerformingCaptureAnimation])
  {
    [(CAMNightModeSlider *)self endCaptureAnimationAnimated:0];
  }

  [(CAMNightModeSlider *)self _setSelectedIndexBeforeCaptureAnimation:[(CEKDiscreteSlider *)self selectedIndex]];
  [(CAMNightModeSlider *)self _setRemainingCaptureAnimationTime:duration];
  [(CAMNightModeSlider *)self _setPerformingCaptureAnimation:1];
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [tickMarksConfiguration setMainTickMarkColor:systemYellowColor];

  systemYellowColor2 = [MEMORY[0x1E69DC888] systemYellowColor];
  tickMarksConfiguration2 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [tickMarksConfiguration2 setSecondaryTickMarkColor:systemYellowColor2];

  [(CEKDiscreteSlider *)self setColorHighlight:2 animated:1];
  [(CEKDiscreteSlider *)self setTickMarksHeight:1 animated:15.0];
  [(CAMNightModeSlider *)self _startValueLabelUpdateTimerWithDuration:duration];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CAMNightModeSlider_performCaptureAnimationWithDuration_completion___block_invoke;
  v12[3] = &unk_1E76FBAE0;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [(CEKDiscreteSlider *)self setSelectedIndex:0 animatedDuration:0 animatedCurve:v12 completion:duration];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __69__CAMNightModeSlider_performCaptureAnimationWithDuration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _stopValueLabelUpdateTimer];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)endCaptureAnimationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CAMNightModeSlider *)self _isPerformingCaptureAnimation])
  {
    [(CAMNightModeSlider *)self _stopValueLabelUpdateTimer];
    [(CAMNightModeSlider *)self _setPerformingCaptureAnimation:0];
    [(CAMNightModeSlider *)self _inactiveTickMarkHeight];
    [(CEKDiscreteSlider *)self setTickMarksHeight:animatedCopy animated:?];
    [(CEKDiscreteSlider *)self setColorHighlight:1 animated:1];
    tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
    [tickMarksConfiguration setMainTickMarkColor:0];

    tickMarksConfiguration2 = [(CEKDiscreteSlider *)self tickMarksConfiguration];
    [tickMarksConfiguration2 setSecondaryTickMarkColor:0];

    v8 = 0;
    v9 = 0.5;
    if (animatedCopy)
    {
      v10 = 0.5;
    }

    else
    {
      v10 = 0.0;
    }

    if (animatedCopy)
    {
      LODWORD(v9) = 1058642330;
      LODWORD(v7) = 1.0;
      v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:COERCE_DOUBLE(1045220557) :v9 :0.0 :v7];
    }

    v11 = v8;
    [(CEKDiscreteSlider *)self setSelectedIndex:[(CAMNightModeSlider *)self _selectedIndexBeforeCaptureAnimation] animatedDuration:v8 animatedCurve:0 completion:v10];
  }
}

- (void)_startValueLabelUpdateTimerWithDuration:(double)duration
{
  [(CAMNightModeSlider *)self _stopValueLabelUpdateTimer];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E695DFF0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __62__CAMNightModeSlider__startValueLabelUpdateTimerWithDuration___block_invoke;
  v13 = &unk_1E76FE7E0;
  objc_copyWeak(v14, &location);
  v14[1] = v6;
  v14[2] = *&duration;
  v8 = [v7 timerWithTimeInterval:1 repeats:&v10 block:0.2];
  [v8 setTolerance:{0.1, v10, v11, v12, v13}];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:v8 forMode:*MEMORY[0x1E695DA28]];

  [(CAMNightModeSlider *)self _setValueLabelUpdateTimer:v8];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __62__CAMNightModeSlider__startValueLabelUpdateTimerWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleValueLabelUpdateTimerWithStartTime:*(a1 + 40) duration:*(a1 + 48)];
}

- (void)_stopValueLabelUpdateTimer
{
  _valueLabelUpdateTimer = [(CAMNightModeSlider *)self _valueLabelUpdateTimer];
  [_valueLabelUpdateTimer invalidate];

  [(CAMNightModeSlider *)self _setValueLabelUpdateTimer:0];
}

- (void)_handleValueLabelUpdateTimerWithStartTime:(double)time duration:(double)duration
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(CAMNightModeSlider *)self _setRemainingCaptureAnimationTime:duration - (v7 - time)];

  [(CEKDiscreteSlider *)self updateValueLabel];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)durationMapping
{
  minimumDuration = self->_durationMapping.minimumDuration;
  maximumDuration = self->_durationMapping.maximumDuration;
  result.var1 = maximumDuration;
  result.var0 = minimumDuration;
  return result;
}

@end
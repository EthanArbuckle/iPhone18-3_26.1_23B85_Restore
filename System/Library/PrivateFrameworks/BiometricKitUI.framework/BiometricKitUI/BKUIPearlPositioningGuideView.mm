@interface BKUIPearlPositioningGuideView
- (BKUIPearlPositioningGuideView)initWithFrame:(CGRect)frame;
- (BOOL)needsMaskedNeedsPositionStyleEnrollment;
- (CGPoint)portalCenter;
- (CGPoint)startPortalCenter;
- (CGPoint)targetPortalCenter;
- (double)_maxDistance;
- (double)_minDistance;
- (double)_updatedFloatWithTarget:(double)target current:(double)current start:(double)start progress:(double)progress;
- (double)maximumMaskLayerDistanceFromCenter;
- (double)minimumMaskLayerDistanceFromCenter;
- (id)_roundedRectMaskForMaskDistance:(double)distance portalCenter:(CGPoint)center cornerRadius:(double)radius;
- (void)_displayTick;
- (void)_startAnimationWithDuration:(double)duration completion:(id)completion;
- (void)_startDisplay;
- (void)_stopDisplay;
- (void)_updateTargetValuesForAnimation:(int64_t)animation animationCurve:(int64_t)curve;
- (void)animateToBreatheOutValuesOverDuration:(double)duration completion:(id)completion;
- (void)animateToFinishedValuesOverDuration:(double)duration center:(CGPoint)center completion:(id)completion;
- (void)animateToOpenValuesOverDuration:(double)duration curve:(int64_t)curve completion:(id)completion;
- (void)animateToPopOutValuesOverDuration:(double)duration completion:(id)completion;
- (void)breathe;
- (void)drawRect:(CGRect)rect;
- (void)prepareMaskLayerForReducedMotionOpenTransition;
- (void)prepareMaskLayerForStartToOpenTransition;
- (void)resetValuesToStart;
@end

@implementation BKUIPearlPositioningGuideView

- (BKUIPearlPositioningGuideView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BKUIPearlPositioningGuideView;
  v3 = [(BKUIPearlPositioningGuideView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKUIPearlPositioningGuideView *)v3 setOpaque:0];
    [(BKUIPearlPositioningGuideView *)v4 setHidden:1];
    [(BKUIPearlPositioningGuideView *)v4 center];
    [(BKUIPearlPositioningGuideView *)v4 setPortalCenter:?];
    v4->_startMaskFromCenter = 0;
  }

  return v4;
}

- (void)_startDisplay
{
  if (self->_displayLink)
  {
    [BKUIPearlPositioningGuideView _startDisplay];
  }

  [0 invalidate];
  v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayTick];
  displayLink = self->_displayLink;
  self->_displayLink = v3;

  [(CADisplayLink *)self->_displayLink bkui_enableHighFrameRate];
  v5 = self->_displayLink;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)_stopDisplay
{
  [(BKUIPearlPositioningGuideView *)self setAnimationCompletion:0];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)resetValuesToStart
{
  [(BKUIPearlPositioningGuideView *)self setLineWidth:4.33333333];
  [(BKUIPearlPositioningGuideView *)self bounds];
  v4 = v3 * 0.5;
  [(BKUIPearlPositioningGuideView *)self lineWidth];
  [(BKUIPearlPositioningGuideView *)self setEdgeDistance:v4 - v5];
  [(BKUIPearlPositioningGuideView *)self setCornerRadius:17.6666667];
  [(BKUIPearlPositioningGuideView *)self setPostCornerLength:19.0];
  [(BKUIPearlPositioningGuideView *)self setLineAlpha:0.0];
  [(BKUIPearlPositioningGuideView *)self center];
  [(BKUIPearlPositioningGuideView *)self setPortalCenter:?];

  [(BKUIPearlPositioningGuideView *)self setNeedsDisplay];
}

- (void)_startAnimationWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  if ([(BKUIPearlPositioningGuideView *)self isHidden])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else if (UIAccessibilityIsReduceMotionEnabled())
  {
    [(BKUIPearlPositioningGuideView *)self alpha];
    v7 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke;
    v17[3] = &unk_278D09978;
    v17[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_2;
    v14[3] = &unk_278D0A308;
    v14[4] = self;
    v16 = v8;
    v15 = completionCopy;
    [(UIView *)v7 bkui_animateWithDuration:v17 animations:v14 completion:0.2];
  }

  else
  {
    self->_animationDuration = duration;
    self->_lastAnimationTickProgres = 0.0;
    date = [MEMORY[0x277CBEAA8] date];
    animationStart = self->_animationStart;
    self->_animationStart = date;

    self->_startLineWidth = self->_lineWidth;
    self->_startEdgeDistance = self->_edgeDistance;
    self->_startCornerRadius = self->_cornerRadius;
    self->_startPostCornerLength = self->_postCornerLength;
    self->_startLineAlpha = self->_lineAlpha;
    self->_startPortalCenter = self->_portalCenter;
    animationCompletion = [(BKUIPearlPositioningGuideView *)self animationCompletion];

    if (animationCompletion)
    {
      animationCompletion2 = [(BKUIPearlPositioningGuideView *)self animationCompletion];
      animationCompletion2[2](animationCompletion2, 0);
    }

    v13 = [completionCopy copy];
    [(BKUIPearlPositioningGuideView *)self setAnimationCompletion:v13];
  }
}

void __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_2(id *a1)
{
  *(a1[4] + 61) = 0;
  *(a1[4] + 74) = 0;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = a1[4];
  v4 = v3[60];
  v3[60] = v2;

  objc_initWeak(&location, a1[4]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_3;
  v5[3] = &unk_278D0A2E0;
  objc_copyWeak(v7, &location);
  v7[1] = a1[6];
  v6 = a1[5];
  [a1[4] setAnimationCompletion:v5];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_3(id *a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_4;
    v7[3] = &unk_278D0A290;
    objc_copyWeak(v8, a1 + 5);
    v8[1] = a1[6];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_5;
    v4[3] = &unk_278D0A2B8;
    v5 = a1[4];
    v6 = 1;
    [(UIView *)v3 bkui_animateWithDuration:v7 animations:v4 completion:0.2];

    objc_destroyWeak(v8);
  }
}

void __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:*(a1 + 40)];
}

uint64_t __72__BKUIPearlPositioningGuideView__startAnimationWithDuration_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_updateTargetValuesForAnimation:(int64_t)animation animationCurve:(int64_t)curve
{
  if (animation > 1)
  {
    if (animation == 2)
    {
      self->_targetLineWidth = 4.33333333;
      self->_targetEdgeDistance = 142.0;
      self->_targetCornerRadius = 14.0;
      self->_targetPostCornerLength = 24.0;
      self->_targetLineAlpha = 1.0;
      p_targetPortalCenter = &self->_targetPortalCenter;
      [(BKUIPearlPositioningGuideView *)self center];
      p_targetPortalCenter->x = v22;
      self->_targetPortalCenter.y = v23;
      self->_animationCurve = curve;
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        return;
      }

      self->_targetLineWidth = 6.0;
      [(BKUIPearlPositioningGuideView *)self _maxDistance];
      self->_targetEdgeDistance = v26 + self->_targetLineWidth * -0.5;
      self->_targetCornerRadius = 28.0;
      goto LABEL_16;
    }

    if (animation == 3)
    {
      self->_targetLineWidth = 3.5;
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if (userInterfaceIdiom2 == 1)
      {
        self->_targetLineWidth = 6.0;
      }

      [(BKUIPearlPositioningGuideView *)self ringRadius];
      v15 = v14 + self->_targetLineWidth * 0.5;
      self->_targetEdgeDistance = v15;
      self->_targetCornerRadius = v15;
      self->_targetPostCornerLength = 0.0;
      self->_targetLineAlpha = 0.85;
    }
  }

  else
  {
    if (!animation)
    {
      self->_targetLineWidth = 4.33333333;
      self->_targetEdgeDistance = 128.0;
      self->_targetCornerRadius = 14.0;
      self->_targetPostCornerLength = 24.0;
      self->_targetLineAlpha = 1.0;
      v16 = &self->_targetPortalCenter;
      [(BKUIPearlPositioningGuideView *)self center];
      v16->x = v17;
      self->_targetPortalCenter.y = v18;
      self->_animationCurve = curve;
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

      if (userInterfaceIdiom3 != 1)
      {
        return;
      }

      self->_targetLineWidth = 6.0;
      [(BKUIPearlPositioningGuideView *)self _minDistance];
      goto LABEL_13;
    }

    if (animation == 1)
    {
      self->_targetLineWidth = 4.33333333;
      self->_targetEdgeDistance = 132.0;
      self->_targetCornerRadius = 14.0;
      self->_targetPostCornerLength = 24.0;
      self->_targetLineAlpha = 1.0;
      v6 = &self->_targetPortalCenter;
      [(BKUIPearlPositioningGuideView *)self center];
      v6->x = v7;
      self->_targetPortalCenter.y = v8;
      self->_animationCurve = curve;
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

      if (userInterfaceIdiom4 == 1)
      {
        self->_targetLineWidth = 6.0;
        [(BKUIPearlPositioningGuideView *)self _maxDistance];
LABEL_13:
        self->_targetEdgeDistance = v11 - self->_targetLineWidth * 0.5;
        self->_targetCornerRadius = 30.0 - self->_targetLineWidth * 0.5;
LABEL_16:
        self->_targetPostCornerLength = 26.0;
      }
    }
  }
}

- (void)animateToOpenValuesOverDuration:(double)duration curve:(int64_t)curve completion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:0 animationCurve:curve];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__BKUIPearlPositioningGuideView_animateToOpenValuesOverDuration_curve_completion___block_invoke;
  v10[3] = &unk_278D0A330;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:v10 completion:duration];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __82__BKUIPearlPositioningGuideView_animateToOpenValuesOverDuration_curve_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  *(objc_loadWeakRetained((a1 + 40)) + 416) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)animateToBreatheOutValuesOverDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:1 animationCurve:0];
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:completionCopy completion:duration];
}

- (void)animateToPopOutValuesOverDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:2 animationCurve:1];
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:completionCopy completion:duration];
}

- (double)minimumMaskLayerDistanceFromCenter
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    return 0.0;
  }

  [(BKUIPearlPositioningGuideView *)self _minDistance];
  return result;
}

- (double)maximumMaskLayerDistanceFromCenter
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    return 0.0;
  }

  [(BKUIPearlPositioningGuideView *)self _maxDistance];
  return result;
}

- (void)breathe
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__BKUIPearlPositioningGuideView_breathe__block_invoke;
  v2[3] = &unk_278D099C0;
  v2[4] = self;
  [(BKUIPearlPositioningGuideView *)self animateToBreatheOutValuesOverDuration:v2 completion:1.5];
}

uint64_t __40__BKUIPearlPositioningGuideView_breathe__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __40__BKUIPearlPositioningGuideView_breathe__block_invoke_2;
    v3[3] = &unk_278D099C0;
    v3[4] = v2;
    return [v2 animateToOpenValuesOverDuration:0 curve:v3 completion:1.5];
  }

  return result;
}

uint64_t __40__BKUIPearlPositioningGuideView_breathe__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) breathe];
  }

  return result;
}

- (void)animateToFinishedValuesOverDuration:(double)duration center:(CGPoint)center completion:(id)completion
{
  y = center.y;
  x = center.x;
  completionCopy = completion;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:3 animationCurve:[(BKUIPearlPositioningGuideView *)self animationCurve]];
  self->_targetPortalCenter.x = x;
  self->_targetPortalCenter.y = y;
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:completionCopy completion:duration];
}

- (id)_roundedRectMaskForMaskDistance:(double)distance portalCenter:(CGPoint)center cornerRadius:(double)radius
{
  y = center.y;
  x = center.x;
  v9 = MEMORY[0x277D75208];
  [(BKUIPearlPositioningGuideView *)self bounds];
  v10 = [v9 bezierPathWithRect:?];
  v11 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:x - distance cornerRadius:{y - distance, distance + distance, distance + distance, radius}];
  [v10 appendPath:v11];

  return v10;
}

- (void)prepareMaskLayerForStartToOpenTransition
{
  if ([(BKUIPearlPositioningGuideView *)self needsMaskedNeedsPositionStyleEnrollment])
  {
    roundedRectMaskLayer = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];

    if (roundedRectMaskLayer)
    {
      [(BKUIPearlPositioningGuideView *)self portalCenter];
      v8 = [(BKUIPearlPositioningGuideView *)self _roundedRectMaskForMaskDistance:0.0 portalCenter:v4 cornerRadius:v5, 0.0];
      roundedRectMaskLayer2 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];
      v7 = v8;
      [roundedRectMaskLayer2 setPath:{objc_msgSend(v8, "CGPath")}];

      self->_startMaskFromCenter = 1;
    }
  }
}

- (void)prepareMaskLayerForReducedMotionOpenTransition
{
  if ([(BKUIPearlPositioningGuideView *)self needsMaskedNeedsPositionStyleEnrollment])
  {
    roundedRectMaskLayer = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];

    if (roundedRectMaskLayer)
    {
      [(BKUIPearlPositioningGuideView *)self _minDistance];
      v5 = v4;
      [(BKUIPearlPositioningGuideView *)self portalCenter];
      v10 = [(BKUIPearlPositioningGuideView *)self _roundedRectMaskForMaskDistance:v5 portalCenter:v6 cornerRadius:v7, 30.0];
      roundedRectMaskLayer2 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];
      v9 = v10;
      [roundedRectMaskLayer2 setPath:{objc_msgSend(v10, "CGPath")}];
    }
  }
}

- (double)_updatedFloatWithTarget:(double)target current:(double)current start:(double)start progress:(double)progress
{
  animationCurve = self->_animationCurve;
  switch(animationCurve)
  {
    case 0:
      v9 = timingEaseInOut_block_invoke(progress);
      goto LABEL_7;
    case 2:
      v9 = timingEaseOut_block_invoke_2(progress);
      goto LABEL_7;
    case 1:
      v9 = timingEaseIn_block_invoke_3(progress);
LABEL_7:
      progress = v9;
      break;
  }

  return start + (target - start) * progress;
}

- (void)_displayTick
{
  if (self->_animationStart)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_animationStart];
    v5 = v4;

    [(BKUIPearlPositioningGuideView *)self animationDuration];
    if (v6 <= 0.0 || ([(BKUIPearlPositioningGuideView *)self animationDuration], v8 = v5 / v7, v8 >= 1.0))
    {
      animationStart = self->_animationStart;
      self->_animationStart = 0;

      v8 = 1.0;
    }

    targetLineWidth = self->_targetLineWidth;
    [(BKUIPearlPositioningGuideView *)self lineWidth];
    [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetLineWidth current:v11 start:self->_startLineWidth progress:v8];
    [(BKUIPearlPositioningGuideView *)self setLineWidth:?];
    targetEdgeDistance = self->_targetEdgeDistance;
    [(BKUIPearlPositioningGuideView *)self edgeDistance];
    [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetEdgeDistance current:v13 start:self->_startEdgeDistance progress:v8];
    [(BKUIPearlPositioningGuideView *)self setEdgeDistance:?];
    targetCornerRadius = self->_targetCornerRadius;
    [(BKUIPearlPositioningGuideView *)self cornerRadius];
    [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetCornerRadius current:v15 start:self->_startCornerRadius progress:v8];
    [(BKUIPearlPositioningGuideView *)self setCornerRadius:?];
    targetPostCornerLength = self->_targetPostCornerLength;
    [(BKUIPearlPositioningGuideView *)self postCornerLength];
    [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetPostCornerLength current:v17 start:self->_startPostCornerLength progress:v8];
    [(BKUIPearlPositioningGuideView *)self setPostCornerLength:?];
    targetLineAlpha = self->_targetLineAlpha;
    [(BKUIPearlPositioningGuideView *)self lineAlpha];
    [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:targetLineAlpha current:v19 start:self->_startLineAlpha progress:v8];
    [(BKUIPearlPositioningGuideView *)self setLineAlpha:?];
    x = self->_targetPortalCenter.x;
    [(BKUIPearlPositioningGuideView *)self portalCenter];
    [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:x current:v21 start:self->_startPortalCenter.x progress:v8];
    v23 = v22;
    y = self->_targetPortalCenter.y;
    [(BKUIPearlPositioningGuideView *)self portalCenter];
    v25 = self->_startPortalCenter.y;
    [BKUIPearlPositioningGuideView _updatedFloatWithTarget:"_updatedFloatWithTarget:current:start:progress:" current:y start:? progress:?];
    [(BKUIPearlPositioningGuideView *)self setPortalCenter:v23, v26];
    if ([(BKUIPearlPositioningGuideView *)self needsMaskedNeedsPositionStyleEnrollment])
    {
      roundedRectMaskLayer = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];

      if (roundedRectMaskLayer)
      {
        if (self->_startMaskFromCenter)
        {
          [(BKUIPearlPositioningGuideView *)self _updatedFloatWithTarget:self->_targetEdgeDistance current:0.0 start:0.0 progress:v8];
        }

        else
        {
          [(BKUIPearlPositioningGuideView *)self edgeDistance];
        }

        v29 = v28;
        [(BKUIPearlPositioningGuideView *)self lineWidth];
        v31 = v29 + v30 * 0.5;
        [(BKUIPearlPositioningGuideView *)self cornerRadius];
        v33 = v32;
        [(BKUIPearlPositioningGuideView *)self lineWidth];
        v35 = v33 + v34 * 0.5;
        [(BKUIPearlPositioningGuideView *)self portalCenter];
        v38 = [(BKUIPearlPositioningGuideView *)self _roundedRectMaskForMaskDistance:v31 portalCenter:v36 cornerRadius:v37, v35];
        roundedRectMaskLayer2 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];
        [roundedRectMaskLayer2 setPath:{objc_msgSend(v38, "CGPath")}];
      }
    }

    self->_lastAnimationTickProgres = v8;
    [(BKUIPearlPositioningGuideView *)self _updateChildrenValuesForDisplayTickProgress:v8];
    [(BKUIPearlPositioningGuideView *)self setNeedsDisplay];
    if (v8 >= 1.0)
    {
      animationCompletion = [(BKUIPearlPositioningGuideView *)self animationCompletion];

      if (animationCompletion)
      {
        animationCompletion2 = [(BKUIPearlPositioningGuideView *)self animationCompletion];
        [(BKUIPearlPositioningGuideView *)self setAnimationCompletion:0];
        animationCompletion2[2](animationCompletion2, 1);
      }
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  [(BKUIPearlPositioningGuideView *)self portalCenter:rect.origin.x];
  v5 = v4;
  v7 = v6;
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [(BKUIPearlPositioningGuideView *)self edgeDistance];
  v9 = v8;
  [(BKUIPearlPositioningGuideView *)self cornerRadius];
  v11 = v10;
  [(BKUIPearlPositioningGuideView *)self postCornerLength];
  v13 = v12;
  [(BKUIPearlPositioningGuideView *)self lineWidth];
  v30 = v5 + v9;
  v31 = v14;
  [bezierPath moveToPoint:{v5 + v9, v7 + v9 - v11 - v13}];
  v15 = v13 + v7 + v9 - v11 - v13;
  [bezierPath addLineToPoint:{v5 + v9, v15}];
  v29 = v5 + v9 - v11;
  [bezierPath addArcWithCenter:1 radius:v29 startAngle:v15 endAngle:v11 clockwise:{0.0, 1.57079633}];
  v28 = v29 - v13;
  [bezierPath addLineToPoint:?];
  v16 = v5 - v9;
  v27 = v16 + v11 + v13;
  [bezierPath moveToPoint:?];
  [bezierPath addLineToPoint:{v16 + v11, v7 + v9}];
  v17 = v7 + v9 - v11;
  [bezierPath addArcWithCenter:1 radius:v16 + v11 startAngle:v17 endAngle:v11 clockwise:{1.57079633, 3.14159265}];
  [bezierPath addLineToPoint:{v16, v17 - v13}];
  v18 = v7 - v9;
  v19 = v7 - v9 + v11;
  v20 = v19 + v13;
  [bezierPath moveToPoint:{v16, v20}];
  [bezierPath addLineToPoint:{v16, v19}];
  [bezierPath addArcWithCenter:1 radius:v16 + v11 startAngle:v19 endAngle:v11 clockwise:{3.14159265, 4.71238898}];
  [bezierPath addLineToPoint:{v27, v18}];
  [bezierPath moveToPoint:{v28, v18}];
  [bezierPath addLineToPoint:{v29, v18}];
  [bezierPath addArcWithCenter:1 radius:v29 startAngle:v19 endAngle:v11 clockwise:{4.71238898, 0.0}];
  [bezierPath addLineToPoint:{v30, v20}];
  [bezierPath setLineCapStyle:1];
  [bezierPath setLineWidth:v31 + 1.0];
  v21 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v23 = [v21 colorWithWhite:0.0 alpha:v22 * 0.25];
  [v23 setStroke];

  [bezierPath stroke];
  [bezierPath setLineWidth:v31];
  v24 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v26 = [v24 colorWithWhite:1.0 alpha:v25];
  [v26 setStroke];

  [bezierPath stroke];
}

- (BOOL)needsMaskedNeedsPositionStyleEnrollment
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (double)_maxDistance
{
  inSheet = [(BKUIPearlPositioningGuideView *)self inSheet];
  result = 246.0;
  if (inSheet)
  {
    return 209.1;
  }

  return result;
}

- (double)_minDistance
{
  inSheet = [(BKUIPearlPositioningGuideView *)self inSheet];
  result = 198.0;
  if (inSheet)
  {
    return 168.3;
  }

  return result;
}

- (CGPoint)portalCenter
{
  x = self->_portalCenter.x;
  y = self->_portalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)startPortalCenter
{
  x = self->_startPortalCenter.x;
  y = self->_startPortalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)targetPortalCenter
{
  x = self->_targetPortalCenter.x;
  y = self->_targetPortalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
@interface BKUIPearlPositioningGuideView
- (BKUIPearlPositioningGuideView)initWithFrame:(CGRect)a3;
- (BOOL)needsMaskedNeedsPositionStyleEnrollment;
- (CGPoint)portalCenter;
- (CGPoint)startPortalCenter;
- (CGPoint)targetPortalCenter;
- (double)_maxDistance;
- (double)_minDistance;
- (double)_updatedFloatWithTarget:(double)a3 current:(double)a4 start:(double)a5 progress:(double)a6;
- (double)maximumMaskLayerDistanceFromCenter;
- (double)minimumMaskLayerDistanceFromCenter;
- (id)_roundedRectMaskForMaskDistance:(double)a3 portalCenter:(CGPoint)a4 cornerRadius:(double)a5;
- (void)_displayTick;
- (void)_startAnimationWithDuration:(double)a3 completion:(id)a4;
- (void)_startDisplay;
- (void)_stopDisplay;
- (void)_updateTargetValuesForAnimation:(int64_t)a3 animationCurve:(int64_t)a4;
- (void)animateToBreatheOutValuesOverDuration:(double)a3 completion:(id)a4;
- (void)animateToFinishedValuesOverDuration:(double)a3 center:(CGPoint)a4 completion:(id)a5;
- (void)animateToOpenValuesOverDuration:(double)a3 curve:(int64_t)a4 completion:(id)a5;
- (void)animateToPopOutValuesOverDuration:(double)a3 completion:(id)a4;
- (void)breathe;
- (void)drawRect:(CGRect)a3;
- (void)prepareMaskLayerForReducedMotionOpenTransition;
- (void)prepareMaskLayerForStartToOpenTransition;
- (void)resetValuesToStart;
@end

@implementation BKUIPearlPositioningGuideView

- (BKUIPearlPositioningGuideView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BKUIPearlPositioningGuideView;
  v3 = [(BKUIPearlPositioningGuideView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v6 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];
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

- (void)_startAnimationWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  if ([(BKUIPearlPositioningGuideView *)self isHidden])
  {
    if (v6)
    {
      v6[2](v6, 0);
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
    v15 = v6;
    [(UIView *)v7 bkui_animateWithDuration:v17 animations:v14 completion:0.2];
  }

  else
  {
    self->_animationDuration = a3;
    self->_lastAnimationTickProgres = 0.0;
    v9 = [MEMORY[0x277CBEAA8] date];
    animationStart = self->_animationStart;
    self->_animationStart = v9;

    self->_startLineWidth = self->_lineWidth;
    self->_startEdgeDistance = self->_edgeDistance;
    self->_startCornerRadius = self->_cornerRadius;
    self->_startPostCornerLength = self->_postCornerLength;
    self->_startLineAlpha = self->_lineAlpha;
    self->_startPortalCenter = self->_portalCenter;
    v11 = [(BKUIPearlPositioningGuideView *)self animationCompletion];

    if (v11)
    {
      v12 = [(BKUIPearlPositioningGuideView *)self animationCompletion];
      v12[2](v12, 0);
    }

    v13 = [v6 copy];
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

- (void)_updateTargetValuesForAnimation:(int64_t)a3 animationCurve:(int64_t)a4
{
  if (a3 > 1)
  {
    if (a3 == 2)
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
      self->_animationCurve = a4;
      v24 = [MEMORY[0x277D75418] currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if (v25 != 1)
      {
        return;
      }

      self->_targetLineWidth = 6.0;
      [(BKUIPearlPositioningGuideView *)self _maxDistance];
      self->_targetEdgeDistance = v26 + self->_targetLineWidth * -0.5;
      self->_targetCornerRadius = 28.0;
      goto LABEL_16;
    }

    if (a3 == 3)
    {
      self->_targetLineWidth = 3.5;
      v12 = [MEMORY[0x277D75418] currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == 1)
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
    if (!a3)
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
      self->_animationCurve = a4;
      v19 = [MEMORY[0x277D75418] currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if (v20 != 1)
      {
        return;
      }

      self->_targetLineWidth = 6.0;
      [(BKUIPearlPositioningGuideView *)self _minDistance];
      goto LABEL_13;
    }

    if (a3 == 1)
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
      self->_animationCurve = a4;
      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 1)
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

- (void)animateToOpenValuesOverDuration:(double)a3 curve:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:0 animationCurve:a4];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__BKUIPearlPositioningGuideView_animateToOpenValuesOverDuration_curve_completion___block_invoke;
  v10[3] = &unk_278D0A330;
  objc_copyWeak(&v12, &location);
  v9 = v8;
  v11 = v9;
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:v10 completion:a3];

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

- (void)animateToBreatheOutValuesOverDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:1 animationCurve:0];
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:v6 completion:a3];
}

- (void)animateToPopOutValuesOverDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:2 animationCurve:1];
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:v6 completion:a3];
}

- (double)minimumMaskLayerDistanceFromCenter
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    return 0.0;
  }

  [(BKUIPearlPositioningGuideView *)self _minDistance];
  return result;
}

- (double)maximumMaskLayerDistanceFromCenter
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
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

- (void)animateToFinishedValuesOverDuration:(double)a3 center:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  [(BKUIPearlPositioningGuideView *)self _updateTargetValuesForAnimation:3 animationCurve:[(BKUIPearlPositioningGuideView *)self animationCurve]];
  self->_targetPortalCenter.x = x;
  self->_targetPortalCenter.y = y;
  [(BKUIPearlPositioningGuideView *)self _startAnimationWithDuration:v9 completion:a3];
}

- (id)_roundedRectMaskForMaskDistance:(double)a3 portalCenter:(CGPoint)a4 cornerRadius:(double)a5
{
  y = a4.y;
  x = a4.x;
  v9 = MEMORY[0x277D75208];
  [(BKUIPearlPositioningGuideView *)self bounds];
  v10 = [v9 bezierPathWithRect:?];
  v11 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:x - a3 cornerRadius:{y - a3, a3 + a3, a3 + a3, a5}];
  [v10 appendPath:v11];

  return v10;
}

- (void)prepareMaskLayerForStartToOpenTransition
{
  if ([(BKUIPearlPositioningGuideView *)self needsMaskedNeedsPositionStyleEnrollment])
  {
    v3 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];

    if (v3)
    {
      [(BKUIPearlPositioningGuideView *)self portalCenter];
      v8 = [(BKUIPearlPositioningGuideView *)self _roundedRectMaskForMaskDistance:0.0 portalCenter:v4 cornerRadius:v5, 0.0];
      v6 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];
      v7 = v8;
      [v6 setPath:{objc_msgSend(v8, "CGPath")}];

      self->_startMaskFromCenter = 1;
    }
  }
}

- (void)prepareMaskLayerForReducedMotionOpenTransition
{
  if ([(BKUIPearlPositioningGuideView *)self needsMaskedNeedsPositionStyleEnrollment])
  {
    v3 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];

    if (v3)
    {
      [(BKUIPearlPositioningGuideView *)self _minDistance];
      v5 = v4;
      [(BKUIPearlPositioningGuideView *)self portalCenter];
      v10 = [(BKUIPearlPositioningGuideView *)self _roundedRectMaskForMaskDistance:v5 portalCenter:v6 cornerRadius:v7, 30.0];
      v8 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];
      v9 = v10;
      [v8 setPath:{objc_msgSend(v10, "CGPath")}];
    }
  }
}

- (double)_updatedFloatWithTarget:(double)a3 current:(double)a4 start:(double)a5 progress:(double)a6
{
  animationCurve = self->_animationCurve;
  switch(animationCurve)
  {
    case 0:
      v9 = timingEaseInOut_block_invoke(a6);
      goto LABEL_7;
    case 2:
      v9 = timingEaseOut_block_invoke_2(a6);
      goto LABEL_7;
    case 1:
      v9 = timingEaseIn_block_invoke_3(a6);
LABEL_7:
      a6 = v9;
      break;
  }

  return a5 + (a3 - a5) * a6;
}

- (void)_displayTick
{
  if (self->_animationStart)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:self->_animationStart];
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
      v27 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];

      if (v27)
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
        v39 = [(BKUIPearlPositioningGuideView *)self roundedRectMaskLayer];
        [v39 setPath:{objc_msgSend(v38, "CGPath")}];
      }
    }

    self->_lastAnimationTickProgres = v8;
    [(BKUIPearlPositioningGuideView *)self _updateChildrenValuesForDisplayTickProgress:v8];
    [(BKUIPearlPositioningGuideView *)self setNeedsDisplay];
    if (v8 >= 1.0)
    {
      v40 = [(BKUIPearlPositioningGuideView *)self animationCompletion];

      if (v40)
      {
        v41 = [(BKUIPearlPositioningGuideView *)self animationCompletion];
        [(BKUIPearlPositioningGuideView *)self setAnimationCompletion:0];
        v41[2](v41, 1);
      }
    }
  }
}

- (void)drawRect:(CGRect)a3
{
  [(BKUIPearlPositioningGuideView *)self portalCenter:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v32 = [MEMORY[0x277D75208] bezierPath];
  [(BKUIPearlPositioningGuideView *)self edgeDistance];
  v9 = v8;
  [(BKUIPearlPositioningGuideView *)self cornerRadius];
  v11 = v10;
  [(BKUIPearlPositioningGuideView *)self postCornerLength];
  v13 = v12;
  [(BKUIPearlPositioningGuideView *)self lineWidth];
  v30 = v5 + v9;
  v31 = v14;
  [v32 moveToPoint:{v5 + v9, v7 + v9 - v11 - v13}];
  v15 = v13 + v7 + v9 - v11 - v13;
  [v32 addLineToPoint:{v5 + v9, v15}];
  v29 = v5 + v9 - v11;
  [v32 addArcWithCenter:1 radius:v29 startAngle:v15 endAngle:v11 clockwise:{0.0, 1.57079633}];
  v28 = v29 - v13;
  [v32 addLineToPoint:?];
  v16 = v5 - v9;
  v27 = v16 + v11 + v13;
  [v32 moveToPoint:?];
  [v32 addLineToPoint:{v16 + v11, v7 + v9}];
  v17 = v7 + v9 - v11;
  [v32 addArcWithCenter:1 radius:v16 + v11 startAngle:v17 endAngle:v11 clockwise:{1.57079633, 3.14159265}];
  [v32 addLineToPoint:{v16, v17 - v13}];
  v18 = v7 - v9;
  v19 = v7 - v9 + v11;
  v20 = v19 + v13;
  [v32 moveToPoint:{v16, v20}];
  [v32 addLineToPoint:{v16, v19}];
  [v32 addArcWithCenter:1 radius:v16 + v11 startAngle:v19 endAngle:v11 clockwise:{3.14159265, 4.71238898}];
  [v32 addLineToPoint:{v27, v18}];
  [v32 moveToPoint:{v28, v18}];
  [v32 addLineToPoint:{v29, v18}];
  [v32 addArcWithCenter:1 radius:v29 startAngle:v19 endAngle:v11 clockwise:{4.71238898, 0.0}];
  [v32 addLineToPoint:{v30, v20}];
  [v32 setLineCapStyle:1];
  [v32 setLineWidth:v31 + 1.0];
  v21 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v23 = [v21 colorWithWhite:0.0 alpha:v22 * 0.25];
  [v23 setStroke];

  [v32 stroke];
  [v32 setLineWidth:v31];
  v24 = MEMORY[0x277D75348];
  [(BKUIPearlPositioningGuideView *)self lineAlpha];
  v26 = [v24 colorWithWhite:1.0 alpha:v25];
  [v26 setStroke];

  [v32 stroke];
}

- (BOOL)needsMaskedNeedsPositionStyleEnrollment
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (double)_maxDistance
{
  v2 = [(BKUIPearlPositioningGuideView *)self inSheet];
  result = 246.0;
  if (v2)
  {
    return 209.1;
  }

  return result;
}

- (double)_minDistance
{
  v2 = [(BKUIPearlPositioningGuideView *)self inSheet];
  result = 198.0;
  if (v2)
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
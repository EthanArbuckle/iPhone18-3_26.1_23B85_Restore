@interface EDLensView
- (BOOL)_isScreenScaleEven;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)_lensViewLocalCenter;
- (CGPoint)centerOffsetAtTouchDown;
- (CGPoint)lastPosition;
- (EDLensView)initWithFrame:(CGRect)a3;
- (EDLensViewDelegate)delegate;
- (id)_colorAtCenterForHeadroomMode:(unint64_t)a3;
- (id)dragItemsForInteraction:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (int64_t)_lensPosition;
- (unint64_t)accessibilityTraits;
- (void)_displayLinkFired;
- (void)_layoutStaticElements;
- (void)layoutSubviews;
- (void)presentAtLocation:(CGPoint)a3;
- (void)selectColor;
- (void)setActive:(BOOL)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)updateCenterOffsetAtTouchDown:(CGPoint)a3;
- (void)updateLensViewWithEvent:(id)a3;
@end

@implementation EDLensView

- (id)dragItemsForInteraction:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75348];
  v4 = [a3 view];
  v5 = [v4 layer];
  v6 = [v3 colorWithCGColor:{objc_msgSend(v5, "backgroundColor")}];

  v7 = objc_alloc(MEMORY[0x277CCAA88]);
  v8 = [MEMORY[0x277CBF730] colorWithCGColor:{objc_msgSend(v6, "CGColor")}];
  v9 = [v8 stringRepresentation];
  v10 = [v7 initWithObject:v9];

  v11 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v10];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v12;
}

- (EDLensView)initWithFrame:(CGRect)a3
{
  v47.receiver = self;
  v47.super_class = EDLensView;
  v3 = [(EDLensView *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    v5 = [v4 CGColor];
    v6 = [(EDLensView *)v3 layer];
    [v6 setShadowColor:v5];

    v7 = [(EDLensView *)v3 layer];
    LODWORD(v8) = 1050253722;
    [v7 setShadowOpacity:v8];

    v9 = [(EDLensView *)v3 layer];
    [v9 setShadowRadius:20.0];

    v10 = [(EDLensView *)v3 layer];
    [v10 setShadowOffset:{0.0, 1.0}];

    v11 = [(EDLensView *)v3 layer];
    [v11 setDisableUpdateMask:2];

    v12 = [(EDLensView *)v3 layer];
    [v12 setWantsExtendedDynamicRangeContent:1];

    v13 = *MEMORY[0x277CD9DD8];
    v14 = [(EDLensView *)v3 layer];
    [v14 setToneMapMode:v13];

    v15 = objc_opt_new();
    hoverColorRingView = v3->_hoverColorRingView;
    v3->_hoverColorRingView = v15;

    v17 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_hoverColorRingView setBackgroundColor:v17];

    v18 = [MEMORY[0x277D75348] whiteColor];
    v19 = [v18 CGColor];
    v20 = [(UIView *)v3->_hoverColorRingView layer];
    [v20 setBorderColor:v19];

    v21 = [(UIView *)v3->_hoverColorRingView layer];
    [v21 setBorderWidth:3.0];

    [(UIView *)v3->_hoverColorRingView setUserInteractionEnabled:0];
    [(EDLensView *)v3 addSubview:v3->_hoverColorRingView];
    v22 = objc_opt_new();
    ringBorderView = v3->_ringBorderView;
    v3->_ringBorderView = v22;

    [(UIView *)v3->_ringBorderView setClipsToBounds:1];
    v24 = [(UIView *)v3->_ringBorderView layer];
    [v24 setBorderWidth:13.0];

    v25 = [(UIView *)v3->_ringBorderView layer];
    [v25 setWantsExtendedDynamicRangeContent:1];

    [(EDLensView *)v3 addSubview:v3->_ringBorderView];
    v26 = objc_opt_new();
    screenshotSurfaceView = v3->_screenshotSurfaceView;
    v3->_screenshotSurfaceView = v26;

    [(UIView *)v3->_screenshotSurfaceView setClipsToBounds:1];
    v28 = *MEMORY[0x277CDA5B8];
    v29 = [(UIView *)v3->_screenshotSurfaceView layer];
    [v29 setMagnificationFilter:v28];

    [(UIView *)v3->_screenshotSurfaceView setUserInteractionEnabled:0];
    [(EDLensView *)v3 addSubview:v3->_screenshotSurfaceView];
    v30 = [[EDGridView alloc] initWithWithCellCount:9];
    gridView = v3->_gridView;
    v3->_gridView = v30;

    [(EDGridView *)v3->_gridView setClipsToBounds:1];
    v32 = [(EDGridView *)v3->_gridView layer];
    [v32 setBorderWidth:5.0];

    v33 = [MEMORY[0x277D75348] clearColor];
    [(EDGridView *)v3->_gridView setBackgroundColor:v33];

    v34 = [(EDGridView *)v3->_gridView layer];
    [v34 setMagnificationFilter:v28];

    [(EDGridView *)v3->_gridView setUserInteractionEnabled:0];
    [(EDLensView *)v3 addSubview:v3->_gridView];
    v35 = objc_opt_new();
    hoverColorCenterView = v3->_hoverColorCenterView;
    v3->_hoverColorCenterView = v35;

    v37 = [(UIView *)v3->_hoverColorCenterView layer];
    [v37 setBorderWidth:4.0];

    [(UIView *)v3->_hoverColorCenterView _setContinuousCornerRadius:2.0];
    [(EDLensView *)v3 addSubview:v3->_hoverColorCenterView];
    v38 = objc_opt_new();
    colorAnalyzer = v3->_colorAnalyzer;
    v3->_colorAnalyzer = v38;

    v40 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v3 selector:sel__displayLinkFired];
    displayLink = v3->_displayLink;
    v3->_displayLink = v40;

    v42 = v3->_displayLink;
    v43 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v42 addToRunLoop:v43 forMode:*MEMORY[0x277CBE738]];

    [(CADisplayLink *)v3->_displayLink setPaused:1];
    v44 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
    pointerInteraction = v3->_pointerInteraction;
    v3->_pointerInteraction = v44;

    [(EDLensView *)v3 addInteraction:v3->_pointerInteraction];
  }

  return v3;
}

- (void)_layoutStaticElements
{
  [(EDLensView *)self bounds];
  v25 = CGRectInset(v24, 70.0, 70.0);
  [(UIView *)self->_ringBorderView setFrame:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
  [(UIView *)self->_ringBorderView bounds];
  v3 = CGRectGetWidth(v26) * 0.5;
  v4 = [(UIView *)self->_ringBorderView layer];
  [v4 setCornerRadius:v3];

  [(EDLensView *)self bounds];
  v28 = CGRectInset(v27, 83.0, 83.0);
  [(UIView *)self->_screenshotSurfaceView setFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
  [(UIView *)self->_screenshotSurfaceView bounds];
  v5 = CGRectGetWidth(v29) * 0.5;
  v6 = [(UIView *)self->_screenshotSurfaceView layer];
  [v6 setCornerRadius:v5];

  [(EDLensView *)self bounds];
  v31 = CGRectInset(v30, 82.0, 82.0);
  [(EDGridView *)self->_gridView setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
  [(UIView *)self->_screenshotSurfaceView bounds];
  v7 = CGRectGetWidth(v32) * 0.5;
  v8 = [(EDGridView *)self->_gridView layer];
  [v8 setCornerRadius:v7];

  [(UIView *)self->_screenshotSurfaceView bounds];
  v9 = CGRectGetWidth(v33) / 9.0;
  v10 = [(UIView *)self->_hoverColorCenterView layer];
  [v10 borderWidth];
  v12 = v11;

  [(UIView *)self->_hoverColorCenterView setFrame:-v12, -v12, v9 + v12, v9 + v12];
  [(UIView *)self->_ringBorderView center];
  [(UIView *)self->_hoverColorCenterView setCenter:?];
  v13 = 0.4;
  if (self->_hoverColorBrightness <= 0.9)
  {
    v13 = 1.0;
  }

  v22 = [MEMORY[0x277D75348] colorWithWhite:v13 alpha:0.7];
  v14 = 0.6;
  if (self->_hoverColorBrightness <= 0.9)
  {
    v14 = 1.0;
  }

  v15 = [MEMORY[0x277D75348] colorWithWhite:v14 alpha:1.0];
  v16 = [(UIColor *)self->_hoverColor CGColor];
  v17 = [(UIView *)self->_ringBorderView layer];
  [v17 setBorderColor:v16];

  v18 = [v15 CGColor];
  v19 = [(UIView *)self->_hoverColorCenterView layer];
  [v19 setBorderColor:v18];

  [(EDGridView *)self->_gridView setStrokeColor:v22];
  v20 = [v15 CGColor];
  v21 = [(EDGridView *)self->_gridView layer];
  [v21 setBorderColor:v20];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = EDLensView;
  [(EDLensView *)&v3 layoutSubviews];
  [(EDLensView *)self _layoutStaticElements];
  [(EDLensView *)self setCenter:self->_lastPosition.x, self->_lastPosition.y];
  [(EDLensView *)self setAlpha:[(EDLensView *)self isActive]];
}

- (CGPoint)_lensViewLocalCenter
{
  [(UIView *)self->_screenshotSurfaceView center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (unint64_t)accessibilityTraits
{
  if (*MEMORY[0x277D765D0])
  {
    v2 = *MEMORY[0x277D76548] == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  if (self->_interfaceOrientation != a3)
  {
    self->_interfaceOrientation = a3;
  }
}

- (void)updateCenterOffsetAtTouchDown:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(EDLensView *)self floatingMode])
  {
    p_centerOffsetAtTouchDown = &self->_centerOffsetAtTouchDown;
LABEL_6:
    p_centerOffsetAtTouchDown->x = 0.0;
    p_centerOffsetAtTouchDown->y = 0.0;
    return;
  }

  [(UIView *)self->_hoverColorCenterView convertPoint:0 fromView:x, y];
  p_centerOffsetAtTouchDown = &self->_centerOffsetAtTouchDown;
  self->_centerOffsetAtTouchDown.x = v7;
  self->_centerOffsetAtTouchDown.y = v8;
  [(EDLensView *)self size];
  if (fabs(self->_centerOffsetAtTouchDown.x) >= v10 * 0.5 || fabs(self->_centerOffsetAtTouchDown.y) >= v9 * 0.5)
  {
    goto LABEL_6;
  }
}

- (void)presentAtLocation:(CGPoint)a3
{
  [(EDLensView *)self _updateLastPosition:a3.x, a3.y];
  [(EDLensView *)self layoutIfNeeded];
  [(CADisplayLink *)self->_displayLink setPaused:0];

  [(EDLensView *)self setNeedsLayout];
}

- (void)selectColor
{
  v3 = [(EDLensView *)self delegate];
  [v3 lensView:self didSelectColorsBySamplingMode:self->_hoverColorsBySamplingMode];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_active = a3;
    displayLink = self->_displayLink;
    if (a3)
    {
      [(CADisplayLink *)displayLink setPaused:0];
      v7 = [(EDLensView *)self delegate];
      [v7 lensViewDidActivate:self];
    }

    else
    {
      [(CADisplayLink *)displayLink setPaused:1];
    }

    [(EDLensView *)self setNeedsLayout];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __24__EDLensView_setActive___block_invoke;
    v8[3] = &unk_278FD8448;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:1.0 completion:0.0];
  }
}

- (void)updateLensViewWithEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(EDLensView *)self window];
        [v9 locationInView:v10];
        v12 = v11;
        v14 = v13;

        [(EDLensView *)self _updateLastPosition:v12 - self->_centerOffsetAtTouchDown.x, v14 - self->_centerOffsetAtTouchDown.y];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isScreenScaleEven
{
  v2 = [(EDLensView *)self window];
  v3 = [v2 screen];
  [v3 scale];
  v5 = (v4 & 1) == 0;

  return v5;
}

- (id)_colorAtCenterForHeadroomMode:(unint64_t)a3
{
  v49[8] = *MEMORY[0x277D85DE8];
  v5 = [(EDLensView *)self window];
  v6 = [v5 screen];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
  }

  v9 = v8;

  [v9 scale];
  v11 = v10;
  v12 = [(EDLensView *)self layer];
  v13 = [v12 presentationLayer];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v51.origin.x = v15;
  v51.origin.y = v17;
  v51.size.width = v19;
  v51.size.height = v21;
  MidX = CGRectGetMidX(v51);
  v52.origin.x = v15;
  v52.origin.y = v17;
  v52.size.width = v19;
  v52.size.height = v21;
  MidY = CGRectGetMidY(v52);
  v24 = *MEMORY[0x277D77728];
  v49[0] = v9;
  v25 = *MEMORY[0x277D776F0];
  v48[0] = v24;
  v48[1] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "gamut")}];
  v49[1] = v26;
  v27 = *MEMORY[0x277D77700];
  v49[2] = MEMORY[0x277CBEC38];
  v28 = *MEMORY[0x277D77708];
  v48[2] = v27;
  v48[3] = v28;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v30 = 9.0 / v11 * 0.5;
  v49[3] = v29;
  v31 = *MEMORY[0x277D77710];
  v48[4] = *MEMORY[0x277D77718];
  v48[5] = v31;
  v49[4] = &unk_285D70B18;
  v49[5] = MEMORY[0x277CBEC28];
  v48[6] = *MEMORY[0x277D77720];
  v47[0] = MidX - v30;
  v47[1] = MidY - v30;
  v47[2] = 9.0 / v11;
  v47[3] = 9.0 / v11;
  v32 = [MEMORY[0x277CCAE60] valueWithBytes:v47 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v49[6] = v32;
  v48[7] = *MEMORY[0x277D776F8];
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v49[7] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:8];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42 = MEMORY[0x277D85DD0];
  v35 = _UIRenderDisplay();
  if (*(v44 + 24) == 1)
  {
    SDRBuffer = _UIRenderingMultiBufferGetSDRBuffer();
    HDRBuffer = _UIRenderingMultiBufferGetHDRBuffer();
    v38 = [(UIView *)self->_screenshotSurfaceView layer:v42];
    [v38 setContents:HDRBuffer];

    IOSurfaceLock(SDRBuffer, 1u, 0);
    IOSurfaceLock(HDRBuffer, 1u, 0);
    v39 = [(EDColorAnalyzer *)self->_colorAnalyzer colorAtCenterOfHDRSurface:HDRBuffer SDRSurface:SDRBuffer offset:0.0, 0.0];
    IOSurfaceUnlock(SDRBuffer, 1u, 0);
    IOSurfaceUnlock(HDRBuffer, 1u, 0);
  }

  else
  {
    v40 = [(UIView *)self->_screenshotSurfaceView layer:v42];
    [v40 setContents:v35];

    IOSurfaceLock(v35, 1u, 0);
    v39 = [(EDColorAnalyzer *)self->_colorAnalyzer colorAtCenterOfSurface:v35 offset:0.0, 0.0];
    IOSurfaceUnlock(v35, 1u, 0);
  }

  _Block_object_dispose(&v43, 8);

  return v39;
}

uint64_t __44__EDLensView__colorAtCenterForHeadroomMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D776F8];
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v7 = _UIRenderingMultiBufferCreate();
  }

  else
  {
    v7 = _UIRenderingBufferCreate();
  }

  v8 = v7;

  return v8;
}

- (void)_displayLinkFired
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(EDLensView *)self delegate];
  v5 = [v4 lensViewDynamicRangeSamplingModes:self];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __31__EDLensView__displayLinkFired__block_invoke;
  v20 = &unk_278FD85F0;
  v21 = self;
  v6 = v3;
  v22 = v6;
  [v5 enumerateIndexesUsingBlock:&v17];
  v7 = [v6 copy];
  hoverColorsBySamplingMode = self->_hoverColorsBySamplingMode;
  self->_hoverColorsBySamplingMode = v7;

  v9 = [v6 objectForKeyedSubscript:&unk_285D70B30];
  if (!v9)
  {
    v9 = [v6 objectForKeyedSubscript:&unk_285D70B48];
    if (!v9)
    {
      v9 = [v6 objectForKeyedSubscript:&unk_285D70B60];
    }
  }

  hoverColor = self->_hoverColor;
  self->_hoverColor = v9;
  v11 = v9;

  v12 = ColorMakeWithColor(self->_hoverColor);
  v14 = v13;
  v16 = v15;

  self->_hoverColorBrightness = v14 * 0.59 + v12 * 0.3 + v16 * 0.11;
  [(EDLensView *)self setNeedsLayout];
}

void __31__EDLensView__displayLinkFired__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _colorAtCenterForHeadroomMode:a2];
  if (v4)
  {
    v5 = *(a1 + 40);
    v7 = v4;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v5 setObject:v7 forKey:v6];

    v4 = v7;
  }
}

- (int64_t)_lensPosition
{
  [(EDLensView *)self frame];
  MinY = CGRectGetMinY(v17);
  v4 = [(EDLensView *)self superview];
  [v4 bounds];
  v5 = CGRectGetMinY(v18);

  [(EDLensView *)self frame];
  MaxY = CGRectGetMaxY(v19);
  v7 = [(EDLensView *)self superview];
  [v7 bounds];
  v8 = CGRectGetMaxY(v20);

  [(EDLensView *)self frame];
  MinX = CGRectGetMinX(v21);
  v10 = [(EDLensView *)self superview];
  [v10 bounds];
  v11 = CGRectGetMinX(v22);

  [(EDLensView *)self frame];
  MaxX = CGRectGetMaxX(v23);
  v13 = [(EDLensView *)self superview];
  [v13 bounds];
  v14 = CGRectGetMaxX(v24);

  if (MinY >= v5)
  {
    if (MaxY <= v8)
    {
      if (MinX >= v11)
      {
        return 2 * (MaxX > v14);
      }

      else
      {
        return 1;
      }
    }

    else if (MinX >= v11)
    {
      if (MaxX <= v14)
      {
        return 4;
      }

      else
      {
        return 8;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v15 = 3;
    if (MaxX > v14)
    {
      v15 = 6;
    }

    if (MinX >= v11)
    {
      return v15;
    }

    else
    {
      return 5;
    }
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_ringBorderView frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [(UIView *)self->_hoverColorCenterView frame:a3];
  v9 = CGRectInset(v8, -10.0, -10.0);
  v5 = MEMORY[0x277D75880];

  return [v5 regionWithRect:@"CenterView" identifier:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

- (EDLensViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastPosition
{
  x = self->_lastPosition.x;
  y = self->_lastPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)centerOffsetAtTouchDown
{
  x = self->_centerOffsetAtTouchDown.x;
  y = self->_centerOffsetAtTouchDown.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
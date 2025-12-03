@interface EDLensView
- (BOOL)_isScreenScaleEven;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)_lensViewLocalCenter;
- (CGPoint)centerOffsetAtTouchDown;
- (CGPoint)lastPosition;
- (EDLensView)initWithFrame:(CGRect)frame;
- (EDLensViewDelegate)delegate;
- (id)_colorAtCenterForHeadroomMode:(unint64_t)mode;
- (id)dragItemsForInteraction:(id)interaction;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (int64_t)_lensPosition;
- (unint64_t)accessibilityTraits;
- (void)_displayLinkFired;
- (void)_layoutStaticElements;
- (void)layoutSubviews;
- (void)presentAtLocation:(CGPoint)location;
- (void)selectColor;
- (void)setActive:(BOOL)active;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)updateCenterOffsetAtTouchDown:(CGPoint)down;
- (void)updateLensViewWithEvent:(id)event;
@end

@implementation EDLensView

- (id)dragItemsForInteraction:(id)interaction
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75348];
  view = [interaction view];
  layer = [view layer];
  v6 = [v3 colorWithCGColor:{objc_msgSend(layer, "backgroundColor")}];

  v7 = objc_alloc(MEMORY[0x277CCAA88]);
  v8 = [MEMORY[0x277CBF730] colorWithCGColor:{objc_msgSend(v6, "CGColor")}];
  stringRepresentation = [v8 stringRepresentation];
  v10 = [v7 initWithObject:stringRepresentation];

  v11 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v10];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v12;
}

- (EDLensView)initWithFrame:(CGRect)frame
{
  v47.receiver = self;
  v47.super_class = EDLensView;
  v3 = [(EDLensView *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(EDLensView *)v3 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(EDLensView *)v3 layer];
    LODWORD(v8) = 1050253722;
    [layer2 setShadowOpacity:v8];

    layer3 = [(EDLensView *)v3 layer];
    [layer3 setShadowRadius:20.0];

    layer4 = [(EDLensView *)v3 layer];
    [layer4 setShadowOffset:{0.0, 1.0}];

    layer5 = [(EDLensView *)v3 layer];
    [layer5 setDisableUpdateMask:2];

    layer6 = [(EDLensView *)v3 layer];
    [layer6 setWantsExtendedDynamicRangeContent:1];

    v13 = *MEMORY[0x277CD9DD8];
    layer7 = [(EDLensView *)v3 layer];
    [layer7 setToneMapMode:v13];

    v15 = objc_opt_new();
    hoverColorRingView = v3->_hoverColorRingView;
    v3->_hoverColorRingView = v15;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_hoverColorRingView setBackgroundColor:clearColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    cGColor2 = [whiteColor CGColor];
    layer8 = [(UIView *)v3->_hoverColorRingView layer];
    [layer8 setBorderColor:cGColor2];

    layer9 = [(UIView *)v3->_hoverColorRingView layer];
    [layer9 setBorderWidth:3.0];

    [(UIView *)v3->_hoverColorRingView setUserInteractionEnabled:0];
    [(EDLensView *)v3 addSubview:v3->_hoverColorRingView];
    v22 = objc_opt_new();
    ringBorderView = v3->_ringBorderView;
    v3->_ringBorderView = v22;

    [(UIView *)v3->_ringBorderView setClipsToBounds:1];
    layer10 = [(UIView *)v3->_ringBorderView layer];
    [layer10 setBorderWidth:13.0];

    layer11 = [(UIView *)v3->_ringBorderView layer];
    [layer11 setWantsExtendedDynamicRangeContent:1];

    [(EDLensView *)v3 addSubview:v3->_ringBorderView];
    v26 = objc_opt_new();
    screenshotSurfaceView = v3->_screenshotSurfaceView;
    v3->_screenshotSurfaceView = v26;

    [(UIView *)v3->_screenshotSurfaceView setClipsToBounds:1];
    v28 = *MEMORY[0x277CDA5B8];
    layer12 = [(UIView *)v3->_screenshotSurfaceView layer];
    [layer12 setMagnificationFilter:v28];

    [(UIView *)v3->_screenshotSurfaceView setUserInteractionEnabled:0];
    [(EDLensView *)v3 addSubview:v3->_screenshotSurfaceView];
    v30 = [[EDGridView alloc] initWithWithCellCount:9];
    gridView = v3->_gridView;
    v3->_gridView = v30;

    [(EDGridView *)v3->_gridView setClipsToBounds:1];
    layer13 = [(EDGridView *)v3->_gridView layer];
    [layer13 setBorderWidth:5.0];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(EDGridView *)v3->_gridView setBackgroundColor:clearColor2];

    layer14 = [(EDGridView *)v3->_gridView layer];
    [layer14 setMagnificationFilter:v28];

    [(EDGridView *)v3->_gridView setUserInteractionEnabled:0];
    [(EDLensView *)v3 addSubview:v3->_gridView];
    v35 = objc_opt_new();
    hoverColorCenterView = v3->_hoverColorCenterView;
    v3->_hoverColorCenterView = v35;

    layer15 = [(UIView *)v3->_hoverColorCenterView layer];
    [layer15 setBorderWidth:4.0];

    [(UIView *)v3->_hoverColorCenterView _setContinuousCornerRadius:2.0];
    [(EDLensView *)v3 addSubview:v3->_hoverColorCenterView];
    v38 = objc_opt_new();
    colorAnalyzer = v3->_colorAnalyzer;
    v3->_colorAnalyzer = v38;

    v40 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v3 selector:sel__displayLinkFired];
    displayLink = v3->_displayLink;
    v3->_displayLink = v40;

    v42 = v3->_displayLink;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v42 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

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
  layer = [(UIView *)self->_ringBorderView layer];
  [layer setCornerRadius:v3];

  [(EDLensView *)self bounds];
  v28 = CGRectInset(v27, 83.0, 83.0);
  [(UIView *)self->_screenshotSurfaceView setFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
  [(UIView *)self->_screenshotSurfaceView bounds];
  v5 = CGRectGetWidth(v29) * 0.5;
  layer2 = [(UIView *)self->_screenshotSurfaceView layer];
  [layer2 setCornerRadius:v5];

  [(EDLensView *)self bounds];
  v31 = CGRectInset(v30, 82.0, 82.0);
  [(EDGridView *)self->_gridView setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
  [(UIView *)self->_screenshotSurfaceView bounds];
  v7 = CGRectGetWidth(v32) * 0.5;
  layer3 = [(EDGridView *)self->_gridView layer];
  [layer3 setCornerRadius:v7];

  [(UIView *)self->_screenshotSurfaceView bounds];
  v9 = CGRectGetWidth(v33) / 9.0;
  layer4 = [(UIView *)self->_hoverColorCenterView layer];
  [layer4 borderWidth];
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
  cGColor = [(UIColor *)self->_hoverColor CGColor];
  layer5 = [(UIView *)self->_ringBorderView layer];
  [layer5 setBorderColor:cGColor];

  cGColor2 = [v15 CGColor];
  layer6 = [(UIView *)self->_hoverColorCenterView layer];
  [layer6 setBorderColor:cGColor2];

  [(EDGridView *)self->_gridView setStrokeColor:v22];
  cGColor3 = [v15 CGColor];
  layer7 = [(EDGridView *)self->_gridView layer];
  [layer7 setBorderColor:cGColor3];
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

- (void)setInterfaceOrientation:(int64_t)orientation
{
  if (self->_interfaceOrientation != orientation)
  {
    self->_interfaceOrientation = orientation;
  }
}

- (void)updateCenterOffsetAtTouchDown:(CGPoint)down
{
  y = down.y;
  x = down.x;
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

- (void)presentAtLocation:(CGPoint)location
{
  [(EDLensView *)self _updateLastPosition:location.x, location.y];
  [(EDLensView *)self layoutIfNeeded];
  [(CADisplayLink *)self->_displayLink setPaused:0];

  [(EDLensView *)self setNeedsLayout];
}

- (void)selectColor
{
  delegate = [(EDLensView *)self delegate];
  [delegate lensView:self didSelectColorsBySamplingMode:self->_hoverColorsBySamplingMode];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_active = active;
    displayLink = self->_displayLink;
    if (active)
    {
      [(CADisplayLink *)displayLink setPaused:0];
      delegate = [(EDLensView *)self delegate];
      [delegate lensViewDidActivate:self];
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

- (void)updateLensViewWithEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [eventCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(eventCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        window = [(EDLensView *)self window];
        [v9 locationInView:window];
        v12 = v11;
        v14 = v13;

        [(EDLensView *)self _updateLastPosition:v12 - self->_centerOffsetAtTouchDown.x, v14 - self->_centerOffsetAtTouchDown.y];
        ++v8;
      }

      while (v6 != v8);
      v6 = [eventCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isScreenScaleEven
{
  window = [(EDLensView *)self window];
  screen = [window screen];
  [screen scale];
  v5 = (v4 & 1) == 0;

  return v5;
}

- (id)_colorAtCenterForHeadroomMode:(unint64_t)mode
{
  v49[8] = *MEMORY[0x277D85DE8];
  window = [(EDLensView *)self window];
  screen = [window screen];
  v7 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
  }

  v9 = mainScreen;

  [v9 scale];
  v11 = v10;
  layer = [(EDLensView *)self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
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
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  delegate = [(EDLensView *)self delegate];
  v5 = [delegate lensViewDynamicRangeSamplingModes:self];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __31__EDLensView__displayLinkFired__block_invoke;
  v20 = &unk_278FD85F0;
  selfCopy = self;
  v6 = dictionary;
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
  superview = [(EDLensView *)self superview];
  [superview bounds];
  v5 = CGRectGetMinY(v18);

  [(EDLensView *)self frame];
  MaxY = CGRectGetMaxY(v19);
  superview2 = [(EDLensView *)self superview];
  [superview2 bounds];
  v8 = CGRectGetMaxY(v20);

  [(EDLensView *)self frame];
  MinX = CGRectGetMinX(v21);
  superview3 = [(EDLensView *)self superview];
  [superview3 bounds];
  v11 = CGRectGetMinX(v22);

  [(EDLensView *)self frame];
  MaxX = CGRectGetMaxX(v23);
  superview4 = [(EDLensView *)self superview];
  [superview4 bounds];
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(UIView *)self->_ringBorderView frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [(UIView *)self->_hoverColorCenterView frame:interaction];
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
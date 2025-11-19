@interface DKInkView
+ (CGVector)normalizeVector:(CGVector)a3;
+ (double)windowBackingScaleFactor:(id)a3;
- (BOOL)_deviceSupportsGL;
- (BOOL)canvasHasInk;
- (CGPoint)_velocityForTouch:(id)a3;
- (CGPoint)strokeLastLocation;
- (CGPoint)strokeStartLocation;
- (CGRect)aggregateInvalid;
- (CGRect)inkBounds;
- (CGRect)unionDrawingRect;
- (DKInkView)initWithCoder:(id)a3;
- (DKInkView)initWithFrame:(CGRect)a3;
- (DKInkViewRenderDelegate)renderPreviewDelegate;
- (__n128)_vector4ForTouchSettingWeightAndVelocity:(void *)a3 average:(uint64_t)a4;
- (__n128)lastVectorPoint;
- (double)weightForTouch:(id)a3;
- (double)weightForValue:(double)a3;
- (int64_t)countOfCurrentStroke;
- (void)_addUninterpolatedPoints:(DKInkView *)self controlPoint:(SEL)a2 count:flushing:;
- (void)_commonInit;
- (void)_computeAnimationFramesFittingInMaxDuration:(double)a3;
- (void)_display;
- (void)_notifyRenderDelegate;
- (void)_postTouchesBeganNotification:(CGPoint)a3;
- (void)_postTouchesEndedNotification:(CGPoint)a3;
- (void)_renderEmittedPoints:(DKInkView *)self count:(SEL)a2;
- (void)_replayAnimationTick:(id)a3;
- (void)_setDrawingOnRenderer:(id)a3;
- (void)_setDrawingOnRendererWithBleedAnimation:(id)a3;
- (void)_setDrawingOnRendererWithReplayAnimation:(id)a3;
- (void)_startDisplayLink;
- (void)_stopDisplayLink;
- (void)_undoLastStroke:(id)a3;
- (void)_updateVelocityWithTouch:(id)a3 average:(BOOL)a4;
- (void)clear;
- (void)continueStroke:(DKInkView *)self;
- (void)continueStrokeWithoutSmoothing:(DKInkView *)self;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)handleCoalescedTouches:(id)a3 forTouch:(id)a4 average:(BOOL)a5;
- (void)inkDidCompleteRender:(id)a3;
- (void)inkDidRender:(id)a3;
- (void)layoutSubviews;
- (void)pauseRendering;
- (void)resumeRendering;
- (void)setCurrentDrawing:(id)a3 scaleDrawingToFitBounds:(BOOL)a4 withAnimationType:(unint64_t)a5 animationCompletionHandler:(id)a6;
- (void)setDrawingScale:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLastVectorPoint:(DKInkView *)self;
- (void)setRenderer:(id)a3;
- (void)setStrokeColor:(id)a3;
- (void)setupRenderer;
- (void)startStroke:(DKInkView *)self;
- (void)teardown;
- (void)terminateStroke;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)undoLastStroke;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation DKInkView

- (DKInkView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DKInkView;
  v3 = [(DKInkView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DKInkView *)v3 _commonInit];
  }

  return v4;
}

- (DKInkView)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DKInkView;
  v5 = [(DKInkView *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(DKInkView *)v5 _commonInit];
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_renderPreviewDelegate, 0);
  [(DKInkRenderer *)self->_renderer setDelegate:0];
  v3.receiver = self;
  v3.super_class = DKInkView;
  [(DKInkView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = DKInkView;
  [(DKInkView *)&v27 layoutSubviews];
  if (!self->_isRenderingPaused)
  {
    strokeColor = self->_strokeColor;
    v4 = [(DKInkView *)self renderer];
    [v4 setInkColor:strokeColor];

    if (!self->_scaleDrawingToFitCanvas || !self->_currentDrawing || ([(DKInkView *)self bounds], (CGRectIsUnrepresentable(v5, v6, v7, v8) & 1) != 0) || ([(DKDrawing *)self->_currentDrawing canvasBounds], (CGRectIsUnrepresentable(v9, v10, v11, v12) & 1) != 0) || ([(DKDrawing *)self->_currentDrawing strokesFrame], (CGRectIsUnrepresentable(v13, v14, v15, v16) & 1) != 0))
    {
      if (([(DKInkRenderer *)self->_renderer initialized]& 1) == 0)
      {
        [(DKInkRenderer *)self->_renderer setNeedsLayout];
      }

      [(DKInkView *)self bounds];
      renderer = self->_renderer;
    }

    else
    {
      [(DKDrawing *)self->_currentDrawing canvasBounds];
      [(DKInkRenderer *)self->_renderer setFrame:?];
      [(DKInkView *)self bounds];
      if (CGRectGetWidth(v28) <= 0.0)
      {
        goto LABEL_11;
      }

      [(DKInkView *)self bounds];
      if (CGRectGetHeight(v29) <= 0.0)
      {
        goto LABEL_11;
      }

      [(DKDrawing *)self->_currentDrawing strokesFrame];
      v19 = v18;
      v21 = v20;
      [(DKInkView *)self bounds];
      v24 = v23 / v19;
      memset(&v26.c, 0, 32);
      if (v23 / v19 >= v22 / v21)
      {
        v24 = v22 / v21;
      }

      *&v26.a = 0uLL;
      CGAffineTransformMakeScale(&v26, v24, v24);
      v25 = v26;
      [(DKInkRenderer *)self->_renderer setTransform:&v25];
      [(DKInkRenderer *)self->_renderer frame];
      renderer = self->_renderer;
    }

    [(DKInkRenderer *)renderer setFrame:?];
LABEL_11:
    [(DKInkView *)self _startDisplayLink];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = DKInkView;
  [(DKInkView *)&v5 willMoveToSuperview:v4];
  if (!v4)
  {
    [(DKInkView *)self _stopDisplayLink];
  }
}

- (void)didMoveToSuperview
{
  v7.receiver = self;
  v7.super_class = DKInkView;
  [(DKInkView *)&v7 didMoveToSuperview];
  v3 = [(DKInkView *)self superview];
  if (v3)
  {
    v4 = v3;
    v5 = [(DKInkView *)self window];
    if (v5)
    {
      v6 = [(DKInkRenderer *)self->_renderer initialized];

      if (v6)
      {
        [(DKInkView *)self _startDisplayLink];
      }
    }

    else
    {
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = DKInkView;
  [(DKInkView *)&v5 willMoveToWindow:v4];
  if (!v4)
  {
    [(DKInkView *)self _stopDisplayLink];
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = DKInkView;
  [(DKInkView *)&v6 didMoveToWindow];
  v3 = [(DKInkView *)self superview];
  if (v3)
  {
    v4 = v3;
    v5 = [(DKInkRenderer *)self->_renderer initialized];

    if (v5)
    {
      [(DKInkView *)self _startDisplayLink];
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = DKInkView;
  [(DKInkView *)&v6 setHidden:?];
  [(CADisplayLink *)self->_displayLink setPaused:v3];
  v5 = [(DKInkView *)self renderer];
  [v5 setHidden:v3];
}

- (void)setupRenderer
{
  v3 = [(DKInkView *)self renderer];

  if (v3)
  {
    v4 = [(DKInkView *)self renderer];
    [v4 removeFromSuperview];

    v5 = [(DKInkView *)self renderer];
    [v5 setDelegate:0];

    [(DKInkView *)self setRenderer:0];
  }

  if ([(DKInkView *)self _deviceSupportsGL]&& +[DKGLUtilities gpuAvailable])
  {
    v6 = [DKInkRendererGL alloc];
    [(DKInkView *)self bounds];
    v7 = [(DKInkRendererGL *)v6 initWithFrame:?];
    [(DKInkView *)self setRenderer:v7];
  }

  else
  {
    v8 = [DKInkRendererCG alloc];
    [(DKInkView *)self bounds];
    v7 = [(DKInkRendererCG *)v8 initWithFrame:?];
    [(DKInkView *)self setRenderer:v7];
  }

  v9 = [MEMORY[0x277D75348] systemBackgroundColor];
  v10 = [(DKInkView *)self renderer];
  [v10 setBackgroundColor:v9];

  [(DKInkView *)self setMode:0];
  [(DKInkView *)self setScaleDrawingToFitCanvas:0];
  [(DKInkView *)self setAllowInput:1];
  v11 = [(DKInkView *)self renderer];
  [v11 setDelegate:self];

  v12 = [(DKInkView *)self renderer];
  v13 = [(DKInkView *)self strokeColor];
  [v12 setInkColor:v13];

  v14 = [(DKInkView *)self renderer];
  [(DKInkView *)self addSubview:v14];

  [(DKInkView *)self layoutIfNeeded];
}

- (BOOL)_deviceSupportsGL
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 dk_deviceSupportsGL];

  return v3;
}

- (void)_commonInit
{
  [(DKInkView *)self setExclusiveTouch:1];
  [(DKInkView *)self setDrawingScale:1.0];
  [(DKInkView *)self setupRenderer];
  v3 = [MEMORY[0x277D75348] blackColor];
  [(DKInkView *)self setStrokeColor:v3];

  [(DKInkView *)self setCurrentWeight:2.0];
  [(DKInkView *)self setRenderPreviewMode:0];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_unionDrawingRect.origin = *MEMORY[0x277CBF398];
  self->_unionDrawingRect.size = v4;
  v5 = objc_alloc_init(DKDrawing);
  [(DKInkView *)self setCurrentDrawing:v5];

  v6 = objc_alloc_init(MEMORY[0x277CCAD90]);
  [(DKInkView *)self setStrokeUndoManager:v6];

  [(DKInkView *)self setMinPressure:0.0];
  [(DKInkView *)self setMaxPressure:0.2];
  [(DKInkView *)self setMinThickness:0.2];
  [(DKInkView *)self setMaxThickness:3.0];
  v7 = [DKPointSmoothing alloc];
  LODWORD(v8) = 1068149978;
  v9 = [(DKPointSmoothing *)v7 initWithWidth:3 spacing:v8];
  inputFIFO = self->_inputFIFO;
  self->_inputFIFO = v9;

  [(DKPointSmoothing *)self->_inputFIFO setEmitInterpolatedPoints:0];
  LODWORD(v11) = 1059761370;
  [(DKPointSmoothing *)self->_inputFIFO setUnitScale:v11];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__DKInkView__commonInit__block_invoke;
  v12[3] = &unk_278FB7718;
  objc_copyWeak(&v13, &location);
  [(DKPointSmoothing *)self->_inputFIFO setEmissionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __24__DKInkView__commonInit__block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (a3)
  {
    v11 = *a2;
    v12 = *a2;
    v19 = *a2;
    if (a3 != 1)
    {
      v11 = *a2;
      v12 = *a2;
      if (a4)
      {
        v12 = *a4;
        v11 = a2[1];
      }
    }

    [WeakRetained _addUninterpolatedPoints:a2 controlPoint:a4 count:a3 flushing:{a5, v11, v12}];
    v13 = [v10 inputFIFO];
    [v13 unitScale];
    v15 = v14;

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __24__DKInkView__commonInit__block_invoke_2;
    v20[3] = &unk_278FB76F0;
    v21 = v10;
    LODWORD(v16) = v15;
    [DKPointSmoothing _interpolateFromPoint:v20 toPoint:*&v19 withControlPoint:v17 atUnitScale:v18 emissionHandler:v16];
  }
}

- (void)_addUninterpolatedPoints:(DKInkView *)self controlPoint:(SEL)a2 count:flushing:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v20 = [(DKDrawingStroke *)self->_currentBrushStroke strokePoints];
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = *v9;
      v17 = *v9;
      if (v8)
      {
        v10 = *v8;
      }

      v15 = v10;
      v11 = objc_opt_new();
      [v11 setLocation:vcvtq_f64_f32(*&v17)];
      [v11 setForce:*(&v17 + 3)];
      [v11 setVelocity:*(&v17 + 2)];
      v12 = objc_opt_new();
      [v12 setLocation:vcvtq_f64_f32(*&v15)];
      [v12 setForce:*(&v15 + 3)];
      [v12 setVelocity:*(&v15 + 2)];
    }

    else
    {
      v13 = *v9;
      v18 = *v9;
      if (v8)
      {
        v13 = *v8;
      }

      v16 = v13;
      v11 = objc_opt_new();
      [v11 setLocation:vcvtq_f64_f32(*&v18)];
      [v11 setForce:*(&v18 + 3)];
      [v11 setVelocity:*(&v18 + 2)];
      v12 = objc_opt_new();
      [v12 setLocation:vcvtq_f64_f32(*&v16)];
      [v12 setForce:*(&v16 + 3)];
      [v12 setVelocity:*(&v16 + 2)];
      [v20 addObject:v11];
      [v20 addObject:v12];
      if (v6)
      {
        v19 = *v9;
        v14 = objc_opt_new();
        [v14 setLocation:vcvtq_f64_f32(*&v19)];
        [v14 setForce:*(&v19 + 3)];
        [v14 setVelocity:*(&v19 + 2)];
        [v20 addObject:v14];
      }
    }
  }
}

- (void)_renderEmittedPoints:(DKInkView *)self count:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  v29 = *&self->_lastVectorPoint[16];
  v30 = *self->_lastVectorPoint;
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v32 = *(MEMORY[0x277CBF398] + 24);
  v33 = *MEMORY[0x277CBF398];
  p_currentInterpolatedBrushStroke = &self->_currentInterpolatedBrushStroke;
  v10 = self->_currentInterpolatedBrushStroke;
  [(DKInkView *)self interfaceScale];
  if (v4)
  {
    v12 = v11;
    v13 = 1.0;
    v14 = v4;
    while (1)
    {
      v15 = *v5;
      LODWORD(v16) = HIDWORD(*v5);
      v17 = (vmuls_lane_f32(v16 + v13, *v5, 2) * v12);
      if (v17 > 0.00001)
      {
        break;
      }

LABEL_12:
      ++v5;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v18 = v16;
    v31 = vcvtq_f64_f32(*v15.f32);
    v34 = v31;
    v19 = (fminf(v15.f32[2], 3.0) / 3.0);
    v35 = v17;
    v36 = v19;
    v37 = v16;
    v20 = [MEMORY[0x277CCAE60] dk_valueWithRenderPoint:&v34];
    animationType = self->_animationType;
    p_cachedInterpolatedAnimationPoints = p_currentInterpolatedBrushStroke;
    if (animationType != 1)
    {
      if (animationType != 2)
      {
        renderer = self->_renderer;
        v34 = v31;
        v35 = v17;
        v36 = v19;
        v37 = v18;
        [(DKInkRenderer *)renderer addPoint:&v34];
        goto LABEL_9;
      }

      p_cachedInterpolatedAnimationPoints = &self->_cachedInterpolatedAnimationPoints;
    }

    [(NSMutableArray *)*p_cachedInterpolatedAnimationPoints addObject:v20, v29, v30];
LABEL_9:
    [(NSMutableArray *)v10 addObject:v20, v29, v30];
    v38.origin.x = v31.f64[0] - v17 * 0.5;
    v38.origin.y = v31.f64[1] - v17 * 0.5;
    v38.size.width = v17;
    v38.size.height = v17;
    v39 = CGRectInset(v38, -5.0, -5.0);
    v40 = NSIntegralRectWithOptions(v39, 0xF00uLL);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    v40.size.height = v32;
    v40.origin.x = v33;
    v40.origin.y = v7;
    v40.size.width = v8;
    if (!CGRectIsNull(v40))
    {
      v41.size.height = v32;
      v41.origin.x = v33;
      v41.origin.y = v7;
      v41.size.width = v8;
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v42 = CGRectUnion(v41, v46);
      x = v42.origin.x;
      y = v42.origin.y;
      width = v42.size.width;
      height = v42.size.height;
    }

    v32 = height;
    v33 = x;
    v7 = y;
    v8 = width;
    v13 = 1.0;
    goto LABEL_12;
  }

LABEL_13:
  self->_totalPointsAdded += v4;
  *self->_lastVectorPoint = v30;
  *&self->_lastVectorPoint[16] = v29;
  v43.size.height = v32;
  v43.origin.x = v33;
  v43.origin.y = v7;
  v43.size.width = v8;
  if (!CGRectIsNull(v43))
  {
    p_unionDrawingRect = &self->_unionDrawingRect;
    if (!CGRectIsNull(self->_unionDrawingRect))
    {
      v44.origin.x = p_unionDrawingRect->origin.x;
      v44.origin.y = self->_unionDrawingRect.origin.y;
      v44.size.width = self->_unionDrawingRect.size.width;
      v44.size.height = self->_unionDrawingRect.size.height;
      v47.size.height = v32;
      v47.origin.x = v33;
      v47.origin.y = v7;
      v47.size.width = v8;
      v45 = CGRectUnion(v44, v47);
      v32 = v45.size.height;
      v33 = v45.origin.x;
      v7 = v45.origin.y;
      v8 = v45.size.width;
    }

    p_unionDrawingRect->origin.x = v33;
    self->_unionDrawingRect.origin.y = v7;
    self->_unionDrawingRect.size.width = v8;
    self->_unionDrawingRect.size.height = v32;
    [(DKDrawing *)self->_currentDrawing setStrokesFrame:v29, v30];
  }
}

- (void)teardown
{
  animationCompletionHandler = self->_animationCompletionHandler;
  self->_animationCompletionHandler = 0;

  v4 = [(DKInkView *)self inputFIFO];
  [v4 setEmissionHandler:0];

  [(DKInkView *)self setInputFIFO:0];
  objc_storeWeak(&self->_renderPreviewDelegate, 0);
  [(DKInkView *)self _stopDisplayLink];
  v5 = [(DKInkView *)self renderer];
  [v5 teardown];

  v6 = [(DKInkView *)self renderer];
  [v6 setDelegate:0];

  [(DKInkView *)self setRenderer:0];
}

- (void)pauseRendering
{
  self->_isRenderingPaused = 1;
  [(CADisplayLink *)self->_displayLink setPaused:1];
  if (+[DKGLUtilities gpuAvailable])
  {
    renderer = self->_renderer;

    [(DKInkRenderer *)renderer flush];
  }
}

- (void)resumeRendering
{
  self->_isRenderingPaused = 0;
  [(CADisplayLink *)self->_displayLink setPaused:0];

  [(DKInkView *)self setNeedsLayout];
}

- (void)setCurrentDrawing:(id)a3 scaleDrawingToFitBounds:(BOOL)a4 withAnimationType:(unint64_t)a5 animationCompletionHandler:(id)a6
{
  v8 = a4;
  v34 = a3;
  v10 = a6;
  v11 = [(DKInkRenderer *)self->_renderer supportsBleedAnimation];
  if (a5 == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    a5 = 0;
  }

  animationCompletionHandler = self->_animationCompletionHandler;
  self->_animationCompletionHandler = 0;

  if (a5)
  {
    v14 = MEMORY[0x24C202DE0](v10);
    v15 = self->_animationCompletionHandler;
    self->_animationCompletionHandler = v14;
  }

  [(DKInkView *)self setAnimationType:a5];
  [(DKInkView *)self setScaleDrawingToFitCanvas:v8];
  if (self->_currentDrawing != v34)
  {
    [(DKInkView *)self clear];
    if (v8)
    {
      [(DKInkView *)self bounds];
      v17 = v16;
      [(DKDrawing *)v34 strokesFrame];
      v19 = v18;
      [(DKInkView *)self bounds];
      v21 = v20;
      [(DKDrawing *)v34 strokesFrame];
      if (v17 / v19 >= v21 / v22)
      {
        v23 = v21 / v22;
      }

      else
      {
        v23 = v17 / v19;
      }

      [(DKInkView *)self bounds];
      v24 = [DKDrawing copyOfDrawing:v34 toFitInBounds:?];

      [(DKInkView *)self setDrawingScale:v23];
      v25 = v24;
      v34 = v25;
    }

    else
    {
      [(DKInkView *)self setDrawingScale:1.0];
      v25 = [(DKDrawing *)v34 copy];
    }

    currentDrawing = self->_currentDrawing;
    self->_currentDrawing = v25;

    if (!self->_cachedInterpolatedBrushStrokes)
    {
      v27 = [MEMORY[0x277CBEB18] array];
      cachedInterpolatedBrushStrokes = self->_cachedInterpolatedBrushStrokes;
      self->_cachedInterpolatedBrushStrokes = v27;
    }

    if (!self->_cachedInterpolatedAnimationPoints)
    {
      v29 = [MEMORY[0x277CBEB18] array];
      cachedInterpolatedAnimationPoints = self->_cachedInterpolatedAnimationPoints;
      self->_cachedInterpolatedAnimationPoints = v29;
    }

    if (!self->_cachedInterpolatedAnimationStrokes)
    {
      v31 = [MEMORY[0x277CBEB18] array];
      cachedInterpolatedAnimationStrokes = self->_cachedInterpolatedAnimationStrokes;
      self->_cachedInterpolatedAnimationStrokes = v31;
    }

    v33 = self->_currentDrawing;
    if (a5 == 2)
    {
      [(DKInkView *)self _setDrawingOnRendererWithBleedAnimation:v33];
    }

    else if (a5 == 1)
    {
      [(DKInkView *)self _setDrawingOnRendererWithReplayAnimation:v33];
    }

    else
    {
      [(DKInkView *)self _setDrawingOnRenderer:v33];
    }
  }
}

- (void)setRenderer:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_renderer, a3);
  [(DKInkRenderer *)self->_renderer setDrawingScale:self->_drawingScale];
  [(DKInkRenderer *)self->_renderer setMode:self->_mode];
  [(DKInkRenderer *)self->_renderer setScaleDrawingToFitCanvas:self->_scaleDrawingToFitCanvas];
}

- (void)setDrawingScale:(double)a3
{
  self->_drawingScale = a3;
  [(DKInkRenderer *)self->_renderer setDrawingScale:?];
  drawingScale = self->_drawingScale;
  inputFIFO = self->_inputFIFO;
  LODWORD(drawingScale) = dword_249D9D820[drawingScale < 1.0];

  [(DKPointSmoothing *)inputFIFO setUnitScale:drawingScale];
}

- (CGRect)inkBounds
{
  currentDrawing = self->_currentDrawing;
  if (currentDrawing)
  {
    [(DKDrawing *)currentDrawing strokesFrame];
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_notifyRenderDelegate
{
  v4 = [(DKInkView *)self renderPreviewDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [(DKInkView *)self renderPreviewDelegate];
    [v5 performSelector:sel_inkViewDidRender_ withObject:self afterDelay:0.0];
  }
}

- (void)_postTouchesBeganNotification:(CGPoint)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(a3);
  v5 = MEMORY[0x277CCAB88];
  v6 = DKInkViewTouchesBeganNotification;
  v10 = DKInkViewTouchesEndedLocationInViewUserInfoKey;
  v11[0] = DictionaryRepresentation;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 notificationWithName:v6 object:self userInfo:v7];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotification:v8];
}

- (void)_postTouchesEndedNotification:(CGPoint)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(a3);
  v5 = MEMORY[0x277CCAB88];
  v6 = DKInkViewTouchesEndedNotification;
  v10 = DKInkViewTouchesEndedLocationInViewUserInfoKey;
  v11[0] = DictionaryRepresentation;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 notificationWithName:v6 object:self userInfo:v7];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotification:v8];
}

+ (double)windowBackingScaleFactor:(id)a3
{
  v3 = a3;
  v4 = [v3 screen];

  if (v4)
  {
    [v3 screen];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v5 = ;
  [v5 scale];
  v7 = v6;

  return v7;
}

- (void)setStrokeColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_strokeColor, a3);
  v5 = [(DKInkView *)self renderer];
  [v5 setInkColor:v6];
}

- (void)clear
{
  v3 = [(DKInkView *)self renderer];
  [v3 completeAnimationsImmediately];

  v4 = [(DKInkView *)self renderer];
  [v4 resetRendererState];

  v5 = [(DKInkView *)self renderer];
  [v5 clear];

  [(DKPointSmoothing *)self->_inputFIFO clear];
  v6 = *(MEMORY[0x277CBF398] + 16);
  self->_unionDrawingRect.origin = *MEMORY[0x277CBF398];
  self->_unionDrawingRect.size = v6;
  [(NSMutableArray *)self->_cachedInterpolatedBrushStrokes removeAllObjects];
  [(NSMutableArray *)self->_cachedInterpolatedAnimationPoints removeAllObjects];
  [(NSMutableArray *)self->_cachedInterpolatedAnimationStrokes removeAllObjects];
  [(NSMutableArray *)self->_computedAnimationFrames removeAllObjects];
  v7 = [(DKInkView *)self currentDrawing];
  [v7 reset];

  v8 = [(DKInkView *)self strokeUndoManager];
  [v8 removeAllActions];

  memset(v9, 0, sizeof(v9));
  [(DKInkView *)self setLastVectorPoint:v9];
  [(DKInkView *)self bounds];
  [(DKInkView *)self setNeedsDisplayInRect:?];
  [(DKInkView *)self _notifyRenderDelegate];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(DKInkView *)self frame];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = DKInkView;
  [(DKInkView *)&v16 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    if (self->_scaleDrawingToFitCanvas)
    {
      currentDrawing = self->_currentDrawing;
      self->_currentDrawing = 0;
      v14 = currentDrawing;

      [(DKInkView *)self setCurrentDrawing:v14];
    }

    v15 = [(DKInkView *)self renderer];
    [(DKInkView *)self bounds];
    [v15 setNeedsDisplayInRect:?];
  }
}

- (int64_t)countOfCurrentStroke
{
  v2 = [(DKDrawingStroke *)self->_currentBrushStroke strokePoints];
  v3 = [v2 count];

  return v3;
}

- (BOOL)canvasHasInk
{
  v3 = [(DKInkView *)self currentDrawing];
  v4 = [v3 totalPoints];
  v5 = [(DKDrawingStroke *)self->_currentBrushStroke strokePoints];
  v6 = [v5 count] + v4;

  return v6 > 0;
}

- (void)_startDisplayLink
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__display];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:60];
    v5 = self->_displayLink;
    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE640]];

    v7 = [(DKInkView *)self isHidden];
    v8 = self->_displayLink;

    [(CADisplayLink *)v8 setPaused:v7];
  }
}

- (void)_stopDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)_display
{
  if (+[DKInkView gpuAvailable])
  {
    if ([(NSMutableArray *)self->_computedAnimationFrames count])
    {
      [(DKInkView *)self _replayAnimationTick:self];
    }

    v3 = [(DKInkView *)self renderer];
    [v3 display];
  }

  else
  {
    v3 = [(DKInkView *)self renderer];
    [(DKInkView *)self bounds];
    [v3 setNeedsDisplayInRect:?];
  }
}

- (void)_setDrawingOnRenderer:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v39 = a3;
  v4 = [v39 strokes];
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v5)
  {
    v41 = *v52;
    v40 = v4;
    do
    {
      v6 = 0;
      v42 = v5;
      do
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [*(*(&v51 + 1) + 8 * v6) strokePoints];
        if ([v7 count] >= 3)
        {
          v8 = [MEMORY[0x277CBEB18] array];
          currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
          self->_currentInterpolatedBrushStroke = v8;

          v10 = 0;
          *self->_lastVectorPoint = 0u;
          *&self->_lastVectorPoint[16] = 0u;
          while (v10 < [v7 count] - 2)
          {
            v11 = [v7 objectAtIndexedSubscript:v10];
            v12 = v10 + 1;
            v13 = [v7 objectAtIndexedSubscript:v10 + 1];
            v10 += 2;
            v14 = [v7 objectAtIndexedSubscript:v12 + 1];
            [v11 location];
            v16 = v15;
            [v11 location];
            v18 = v17;
            [v11 velocity];
            [v11 force];
            [v13 location];
            v20 = v19;
            [v13 location];
            v22 = v21;
            [v13 velocity];
            [v13 force];
            [v14 location];
            v47 = v23;
            [v14 location];
            v46 = v24;
            [v14 velocity];
            v45 = v25;
            [v14 force];
            v44 = v26;
            objc_initWeak(&location, self);
            [(DKPointSmoothing *)self->_inputFIFO unitScale];
            v43 = v27;
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __35__DKInkView__setDrawingOnRenderer___block_invoke;
            v48[3] = &unk_278FB7740;
            objc_copyWeak(&v49, &location);
            *&v28 = v16;
            v29 = v18;
            *(&v28 + 1) = v29;
            *&v30 = v20;
            v31 = v22;
            *(&v30 + 1) = v31;
            v32.f64[0] = v45;
            v32.f64[1] = v44;
            v33.f64[0] = v47;
            v33.f64[1] = v46;
            v48[4] = &v55;
            [DKPointSmoothing _interpolateFromPoint:v48 toPoint:v28 withControlPoint:*vcvt_hight_f32_f64(vcvt_f32_f64(v33) atUnitScale:v32).i64 emissionHandler:v30, COERCE_DOUBLE(__PAIR64__(HIDWORD(v46), v43))];
            objc_destroyWeak(&v49);
            objc_destroyWeak(&location);
          }

          [(NSMutableArray *)self->_cachedInterpolatedBrushStrokes addObject:self->_currentInterpolatedBrushStroke];
          v34 = self->_currentInterpolatedBrushStroke;
          self->_currentInterpolatedBrushStroke = 0;
        }

        ++v6;
        v4 = v40;
      }

      while (v6 != v42);
      v5 = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v5);
  }

  if (*(v56 + 24) == 1)
  {
    v35 = [(DKInkView *)self renderer];
    [v35 endStroke];
  }

  v36 = [v39 strokes];
  v37 = [v36 count] == 0;

  if (!v37)
  {
    v38 = [(DKInkView *)self renderer];
    [v38 force];
  }

  _Block_object_dispose(&v55, 8);
}

void __35__DKInkView__setDrawingOnRenderer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (a3)
  {
    v7 = *(*(a1 + 32) + 8);
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      v8 = [WeakRetained renderer];
      [v8 beginStroke];

      WeakRetained = v9;
    }
  }

  [WeakRetained _renderEmittedPoints:a2 count:a3];
}

- (void)_setDrawingOnRendererWithBleedAnimation:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v56 = a3;
  if ([(DKInkRenderer *)self->_renderer supportsBleedAnimation])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = [v56 strokes];
    v4 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v4)
    {
      v58 = *v82;
      do
      {
        v59 = v4;
        for (i = 0; i != v59; ++i)
        {
          if (*v82 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [*(*(&v81 + 1) + 8 * i) strokePoints];
          if ([v6 count] >= 3)
          {
            v7 = [MEMORY[0x277CBEB18] array];
            currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
            self->_currentInterpolatedBrushStroke = v7;

            v9 = 0;
            *self->_lastVectorPoint = 0u;
            *&self->_lastVectorPoint[16] = 0u;
            while (v9 < [v6 count] - 2)
            {
              v10 = [v6 objectAtIndexedSubscript:v9];
              v11 = v9 + 1;
              v12 = [v6 objectAtIndexedSubscript:v9 + 1];
              v9 += 2;
              v13 = [v6 objectAtIndexedSubscript:v11 + 1];
              [v10 location];
              v15 = v14;
              [v10 location];
              v17 = v16;
              [v10 velocity];
              [v10 force];
              [v12 location];
              v19 = v18;
              [v12 location];
              v21 = v20;
              [v12 velocity];
              [v12 force];
              [v13 location];
              v64 = v22;
              [v13 location];
              v63 = v23;
              [v13 velocity];
              v62 = v24;
              [v13 force];
              v61 = v25;
              objc_initWeak(location, self);
              [(DKPointSmoothing *)self->_inputFIFO unitScale];
              v60 = v26;
              v79[0] = MEMORY[0x277D85DD0];
              v79[1] = 3221225472;
              v79[2] = __53__DKInkView__setDrawingOnRendererWithBleedAnimation___block_invoke;
              v79[3] = &unk_278FB7768;
              objc_copyWeak(&v80, location);
              *&v27 = v15;
              v28 = v17;
              *(&v27 + 1) = v28;
              *&v29 = v19;
              v30 = v21;
              *(&v29 + 1) = v30;
              v31.f64[0] = v62;
              v31.f64[1] = v61;
              v32.f64[0] = v64;
              v32.f64[1] = v63;
              [DKPointSmoothing _interpolateFromPoint:v79 toPoint:v27 withControlPoint:*vcvt_hight_f32_f64(vcvt_f32_f64(v32) atUnitScale:v31).i64 emissionHandler:v29, COERCE_DOUBLE(__PAIR64__(HIDWORD(v63), v60))];
              objc_destroyWeak(&v80);
              objc_destroyWeak(location);
            }

            [(NSMutableArray *)self->_cachedInterpolatedBrushStrokes addObject:self->_currentInterpolatedBrushStroke];
            v33 = self->_currentInterpolatedBrushStroke;
            self->_currentInterpolatedBrushStroke = 0;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v4);
    }

    v34 = [(DKInkRenderer *)self->_renderer maximumPointsForBleedAnimation];
    if ([(NSMutableArray *)self->_cachedInterpolatedAnimationPoints count])
    {
      v35 = v34 < 1;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      v36 = [(NSMutableArray *)self->_cachedInterpolatedAnimationPoints count];
      v37 = [(NSMutableArray *)self->_cachedInterpolatedAnimationPoints count];
      v38 = (v36 - v34) & ~((v36 - v34) >> 63);
      v39 = [(NSMutableArray *)self->_cachedInterpolatedAnimationPoints subarrayWithRange:0, v38];
      v40 = [(NSMutableArray *)self->_cachedInterpolatedAnimationPoints subarrayWithRange:v38, v37 - v38];
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v41 = v39;
      v42 = [v41 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (v42)
      {
        v43 = 0;
        v44 = *v76;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v76 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v75 + 1) + 8 * j);
            v74 = 0;
            *location = 0u;
            v73 = 0u;
            if (v46)
            {
              [v46 dk_renderPointValue];
            }

            if ((v43 & 1) == 0)
            {
              [(DKInkRenderer *)self->_renderer beginStroke];
            }

            renderer = self->_renderer;
            v69 = *location;
            v70 = v73;
            v71 = v74;
            [(DKInkRenderer *)renderer addPoint:&v69];
            v43 = 1;
          }

          v42 = [v41 countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v42);

        [(DKInkRenderer *)self->_renderer endStroke];
        [(DKInkRenderer *)self->_renderer force];
      }

      else
      {
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v48 = v40;
      v49 = [v48 countByEnumeratingWithState:&v65 objects:v85 count:16];
      if (v49)
      {
        v50 = 0;
        v51 = *v66;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v66 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v65 + 1) + 8 * k);
            v74 = 0;
            *location = 0u;
            v73 = 0u;
            if (v53)
            {
              [v53 dk_renderPointValue];
            }

            if ((v50 & 1) == 0)
            {
              [(DKInkRenderer *)self->_renderer beginStroke];
            }

            v54 = self->_renderer;
            v69 = *location;
            v70 = v73;
            v71 = v74;
            [(DKInkRenderer *)v54 addPoint:&v69];
            v50 = 1;
          }

          v49 = [v48 countByEnumeratingWithState:&v65 objects:v85 count:16];
        }

        while (v49);

        [(DKInkRenderer *)self->_renderer endStroke];
      }

      else
      {
      }

      cachedInterpolatedAnimationPoints = self->_cachedInterpolatedAnimationPoints;
      self->_cachedInterpolatedAnimationPoints = 0;

      self->_animationType = 0;
    }
  }

  else
  {
    [(DKInkView *)self _setDrawingOnRenderer:v56];
  }
}

void __53__DKInkView__setDrawingOnRendererWithBleedAnimation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renderEmittedPoints:a2 count:a3];
}

- (void)_setDrawingOnRendererWithReplayAnimation:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v4 = [MEMORY[0x277CBEB18] array];
  computedAnimationFrames = self->_computedAnimationFrames;
  self->_computedAnimationFrames = v4;

  v6 = MEMORY[0x277CBEB18];
  v7 = [v45 strokes];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];
  cachedInterpolatedAnimationStrokes = self->_cachedInterpolatedAnimationStrokes;
  self->_cachedInterpolatedAnimationStrokes = v8;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = [v45 strokes];
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v11)
  {
    v47 = *v58;
    v46 = v10;
    do
    {
      v12 = 0;
      v48 = v11;
      do
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(v10);
        }

        v13 = [*(*(&v57 + 1) + 8 * v12) strokePoints];
        if ([v13 count] >= 3)
        {
          v14 = [MEMORY[0x277CBEB18] array];
          currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
          self->_currentInterpolatedBrushStroke = v14;

          v16 = 0;
          *self->_lastVectorPoint = 0u;
          *&self->_lastVectorPoint[16] = 0u;
          while (v16 < [v13 count] - 2)
          {
            v17 = [v13 objectAtIndexedSubscript:v16];
            v18 = v16 + 1;
            v19 = [v13 objectAtIndexedSubscript:v16 + 1];
            v16 += 2;
            v20 = [v13 objectAtIndexedSubscript:v18 + 1];
            [v17 location];
            v22 = v21;
            [v17 location];
            v24 = v23;
            [v17 velocity];
            [v17 force];
            [v19 location];
            v26 = v25;
            [v19 location];
            v28 = v27;
            [v19 velocity];
            [v19 force];
            [v20 location];
            v53 = v29;
            [v20 location];
            v52 = v30;
            [v20 velocity];
            v51 = v31;
            [v20 force];
            v50 = v32;
            objc_initWeak(&location, self);
            [(DKPointSmoothing *)self->_inputFIFO unitScale];
            v49 = v33;
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __54__DKInkView__setDrawingOnRendererWithReplayAnimation___block_invoke;
            v54[3] = &unk_278FB7740;
            objc_copyWeak(&v55, &location);
            *&v34 = v22;
            v35 = v24;
            *(&v34 + 1) = v35;
            *&v36 = v26;
            v37 = v28;
            *(&v36 + 1) = v37;
            v38.f64[0] = v51;
            v38.f64[1] = v50;
            v39.f64[0] = v53;
            v39.f64[1] = v52;
            v54[4] = &v61;
            [DKPointSmoothing _interpolateFromPoint:v54 toPoint:v34 withControlPoint:*vcvt_hight_f32_f64(vcvt_f32_f64(v39) atUnitScale:v38).i64 emissionHandler:v36, COERCE_DOUBLE(__PAIR64__(HIDWORD(v52), v49))];
            objc_destroyWeak(&v55);
            objc_destroyWeak(&location);
          }

          [(NSMutableArray *)self->_cachedInterpolatedAnimationStrokes addObject:self->_currentInterpolatedBrushStroke];
          v40 = self->_currentInterpolatedBrushStroke;
          self->_currentInterpolatedBrushStroke = 0;
        }

        ++v12;
        v10 = v46;
      }

      while (v12 != v48);
      v11 = [v46 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v11);
  }

  if (*(v62 + 24) == 1)
  {
    v41 = [(DKInkView *)self renderer];
    [v41 endStroke];
  }

  v42 = [(NSMutableArray *)self->_cachedInterpolatedAnimationStrokes firstObject];
  v43 = [v42 mutableCopy];
  cachedInterpolatedAnimationPoints = self->_cachedInterpolatedAnimationPoints;
  self->_cachedInterpolatedAnimationPoints = v43;

  [(DKInkView *)self _computeAnimationFramesFittingInMaxDuration:15.0];
  _Block_object_dispose(&v61, 8);
}

void __54__DKInkView__setDrawingOnRendererWithReplayAnimation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (a3)
  {
    v7 = *(*(a1 + 32) + 8);
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      v8 = [WeakRetained renderer];
      [v8 beginStroke];

      WeakRetained = v9;
    }
  }

  [WeakRetained _renderEmittedPoints:a2 count:a3];
}

- (void)_computeAnimationFramesFittingInMaxDuration:(double)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_cachedInterpolatedAnimationStrokes;
  v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v24)
  {
    v4 = MEMORY[0x277CBF348];
    v23 = *v28;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = *v4;
        v7 = v4[1];
        v8 = [MEMORY[0x277CBEB18] array];
        v9 = 0;
        v10 = 0.0;
        while (v9 < [v5 count])
        {
          v11 = [v5 objectAtIndex:v9];
          v12 = v11;
          if (v11)
          {
            [v11 dk_renderPointValue];
          }

          if (v6 != *v4 || v7 != v4[1])
          {
            v10 = v10 + DKDistanceBetweenPoints(0.0, 0.0, v6, v7);
          }

          v7 = 0.0;
          v6 = 0.0;
          [v8 addObject:v12];
          if (v10 > 7.0 && v9 > 2 || v9 == [v5 count] - 1)
          {
            computedAnimationFrames = self->_computedAnimationFrames;
            v15 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
            [(NSMutableArray *)computedAnimationFrames addObject:v15];

            v10 = 0.0;
            [v8 removeAllObjects];
          }

          ++v9;
        }

        v16 = [(NSMutableArray *)self->_cachedInterpolatedAnimationStrokes indexOfObject:v5]+ 1;
        if (v16 < [(NSMutableArray *)self->_cachedInterpolatedAnimationStrokes count])
        {
          v25 = [v5 lastObject];
          v17 = [(NSMutableArray *)self->_cachedInterpolatedAnimationStrokes objectAtIndex:v16];
          v18 = [v17 firstObject];

          if (v25 && v18)
          {
            v19 = arc4random_uniform(0x14u) + 10;
            do
            {
              v20 = self->_computedAnimationFrames;
              v21 = [MEMORY[0x277CBEA60] array];
              [(NSMutableArray *)v20 addObject:v21];

              --v19;
            }

            while (v19);
          }
        }
      }

      v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v24);
  }
}

- (void)_replayAnimationTick:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_computedAnimationFrames firstObject];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
        if (v8)
        {
          [v8 dk_renderPointValue];
        }

        v9 = [(DKInkView *)self renderer];
        v10[0] = v12;
        v10[1] = v13;
        v11 = v14;
        [v9 addPoint:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_computedAnimationFrames removeObjectAtIndex:0];
}

- (void)inkDidRender:(id)a3
{
  v5 = a3;
  renderPreviewMode = self->_renderPreviewMode;
  if (renderPreviewMode == 1 || renderPreviewMode == 2 && ![(DKInkView *)self countOfCurrentStroke])
  {
    [(DKInkView *)self _notifyRenderDelegate];
  }
}

- (void)inkDidCompleteRender:(id)a3
{
  animationCompletionHandler = self->_animationCompletionHandler;
  if (animationCompletionHandler)
  {
    animationCompletionHandler[2](animationCompletionHandler, a2, a3);
    v5 = self->_animationCompletionHandler;
    self->_animationCompletionHandler = 0;
  }
}

- (void)undoLastStroke
{
  strokeUndoManager = self->_strokeUndoManager;
  if (strokeUndoManager)
  {
    [(NSUndoManager *)strokeUndoManager undo];
    if (![(NSUndoManager *)self->_strokeUndoManager canUndo])
    {
      v4 = self->_strokeUndoManager;

      [(NSUndoManager *)v4 removeAllActions];
    }
  }
}

- (void)_undoLastStroke:(id)a3
{
  [a3 getValue:v10 size:104];
  v4 = [(DKDrawing *)self->_currentDrawing mutableStrokes];
  [v4 count];
  [v4 removeLastObject];
  [(DKDrawing *)self->_currentDrawing setStrokesFrame:v10[0], v10[1], v10[2], v10[3]];
  self->_totalPointsAdded = v13;
  [(NSMutableArray *)self->_cachedInterpolatedBrushStrokes removeLastObject];
  v5 = v12;
  self->_unionDrawingRect.origin = v11;
  self->_unionDrawingRect.size = v5;
  LODWORD(v5.width) = v15;
  v9[0] = v14;
  v9[1] = v5;
  [(DKInkView *)self setLastVectorPoint:v9];
  v6 = [(DKInkView *)self renderer];
  [v6 removeLastStroke];

  v7 = [(DKInkView *)self renderer];
  v8 = [(DKInkView *)self renderer];
  [v8 bounds];
  [v7 setNeedsDisplayInRect:?];

  [(DKInkView *)self _notifyRenderDelegate];
}

- (void)startStroke:(DKInkView *)self
{
  v21 = v2;
  v4 = [(DKInkView *)self currentDrawing];
  v5 = [v4 strokes];
  v26 = [v5 count];

  v6 = [(DKInkView *)self currentDrawing];
  [v6 strokesFrame];
  v23[0] = v7;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;

  totalPointsAdded = self->_totalPointsAdded;
  size = self->_unionDrawingRect.size;
  origin = self->_unionDrawingRect.origin;
  v25 = size;
  v28 = *self->_lastVectorPoint;
  v29 = *&self->_lastVectorPoint[16];
  v12 = [MEMORY[0x277CCAE60] valueWithBytes:v23 objCType:"{?={CGRect={CGPoint=dd}{CGSize=dd}}{CGRect={CGPoint=dd}{CGSize=dd}}qQfffff}"];
  v13 = [(DKInkView *)self strokeUndoManager];
  [v13 registerUndoWithTarget:self selector:sel__undoLastStroke_ object:v12];

  [(DKInkView *)self setStrokeStartTime:CFAbsoluteTimeGetCurrent()];
  [(DKInkView *)self setStrokeLastLocation:vcvtq_f64_f32(v21)];
  [(DKInkView *)self strokeLastLocation];
  [(DKInkView *)self setStrokeStartLocation:?];
  [(DKInkView *)self setTotalPointsAdded:0];
  memset(v22, 0, sizeof(v22));
  [(DKInkView *)self setLastVectorPoint:v22];
  if (!self->_cachedInterpolatedBrushStrokes)
  {
    v14 = [MEMORY[0x277CBEB18] array];
    cachedInterpolatedBrushStrokes = self->_cachedInterpolatedBrushStrokes;
    self->_cachedInterpolatedBrushStrokes = v14;
  }

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:2000];
  currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
  self->_currentInterpolatedBrushStroke = v16;

  v18 = objc_opt_new();
  currentBrushStroke = self->_currentBrushStroke;
  self->_currentBrushStroke = v18;

  [(DKPointSmoothing *)self->_inputFIFO clear];
  v20 = [(DKInkView *)self renderer];
  [v20 beginStroke];
}

- (void)continueStroke:(DKInkView *)self
{
  v5 = *&v2;
  [(DKInkView *)self setStrokeLastLocation:vcvtq_f64_f32(v2)];
  inputFIFO = self->_inputFIFO;

  [(DKPointSmoothing *)inputFIFO addPoint:v5];
}

- (void)continueStrokeWithoutSmoothing:(DKInkView *)self
{
  [(DKInkView *)self setIsAddingPointWithoutSmoothing:1, v2];
  v4 = [(DKPointSmoothing *)self->_inputFIFO emissionHandler];
  (v4)[2](v4, &v5, 1, 0, 0);

  [(DKInkView *)self setIsAddingPointWithoutSmoothing:0];
}

- (void)terminateStroke
{
  [(DKPointSmoothing *)self->_inputFIFO flush];
  Current = CFAbsoluteTimeGetCurrent();
  [(DKInkView *)self strokeStartTime];
  v5 = v4;
  if ([(DKInkView *)self totalPointsAdded])
  {
    if ([(DKInkView *)self totalPointsAdded]<= 9)
    {
      v6 = Current - v5;
      if (Current - v5 > 0.0 && v6 < 0.2)
      {
        [(DKInkView *)self strokeStartLocation];
        v8 = v7;
        *v24 = v9;
        [(DKInkView *)self strokeLastLocation];
        v11 = v10;
        v13 = v12;
        v14 = DKDistanceBetweenPoints(v8, *v24, v10, v12);
        v6 = 15.0;
        if (v14 < 15.0)
        {
          if (v14 > 0.0)
          {
            [objc_opt_class() normalizeVectorPoint:{v11 - v8, v13 - *v24}];
            v8 = v8 + v14 * v15 * 0.5;
            *(&v17 + 1) = v24[1];
            *&v17 = *v24 + v14 * v16 * 0.5;
            *v24 = v17;
          }

          [(DKInkView *)self currentWeight];
          *&v18 = v8;
          v20.f64[0] = v25;
          v20.f64[1] = fmax(v19, 2.4);
          *v21.i8 = vcvt_f32_f64(v20);
          [(DKInkView *)self continueStrokeWithoutSmoothing:*vtrn1q_s32(v18, vzip1q_s32(v21, v21)).i64];
        }
      }
    }
  }

  if (self->_currentInterpolatedBrushStroke)
  {
    [(NSMutableArray *)self->_cachedInterpolatedBrushStrokes addObject:v6];
  }

  if (self->_currentBrushStroke)
  {
    [(DKDrawing *)self->_currentDrawing addBrushStroke:v6];
    currentBrushStroke = self->_currentBrushStroke;
  }

  else
  {
    currentBrushStroke = 0;
  }

  self->_currentBrushStroke = 0;

  currentInterpolatedBrushStroke = self->_currentInterpolatedBrushStroke;
  self->_currentInterpolatedBrushStroke = 0;

  v26 = [(DKInkView *)self renderer];
  [v26 endStroke];
}

- (double)weightForValue:(double)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__DKInkView_weightForValue___block_invoke;
  block[3] = &unk_278FB7790;
  block[4] = self;
  if ([DKInkView weightForValue:]::onceToken != -1)
  {
    dispatch_once(&[DKInkView weightForValue:]::onceToken, block);
  }

  v4 = a3;
  v5 = fminf(fmaxf((v4 + -0.3) + (v4 + -0.3), 0.0), 1.0);
  v6 = (v5 * v5) * ((v5 * -2.0) + 3.0);
  v7 = *&[DKInkView weightForValue:]::MIN_PRESSURE;
  v8 = *&[DKInkView weightForValue:]::MAX_PRESSURE;
  if (v6 <= v8)
  {
    v8 = v6;
  }

  if (v6 >= v7)
  {
    return v8;
  }

  return v7;
}

uint64_t __28__DKInkView_weightForValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) minPressure];
  [DKInkView weightForValue:]::MIN_PRESSURE = v2;
  result = [*(a1 + 32) maxPressure];
  [DKInkView weightForValue:]::MAX_PRESSURE = v4;
  return result;
}

- (double)weightForTouch:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([(DKInkView *)self ak_forceAvailableForTouch:v4])
  {
    [v4 force];
    v7 = v6;
    [v4 maximumPossibleForce];
    [(DKInkView *)self weightForValue:v7 / v8];
    v5 = v9;
  }

  return v5;
}

- (CGPoint)_velocityForTouch:(id)a3
{
  v4 = a3;
  [v4 previousLocationInView:0];
  v6 = v5;
  v8 = v7;
  [v4 locationInView:0];
  v10 = v9;
  v12 = v11;
  [v4 timestamp];
  v14 = v13 - self->_lastTouchTime;
  if (v14 >= 0.001)
  {
    v16 = (v10 - v6) / v14;
    v15 = (v12 - v8) / v14;
  }

  else
  {
    v16 = *MEMORY[0x277CBF348];
    v15 = *(MEMORY[0x277CBF348] + 8);
  }

  v17 = v16;
  v18 = v15;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_allowInput)
  {
    self->_lastTouchTime = 0.0;
    self->_trackingTouches = 1;
    v8 = [v6 anyObject];
    [(DKInkView *)self _vector4ForTouchSettingWeightAndVelocity:v8 average:0];
    [(DKInkView *)self startStroke:?];
    [v8 locationInView:self];
    [(DKInkView *)self _postTouchesBeganNotification:?];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DKInkView;
    [(DKInkView *)&v9 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_allowInput)
  {
    self->_trackingTouches = 1;
    v8 = [v6 anyObject];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v7 coalescedTouchesForTouch:v8];
      [(DKInkView *)self handleCoalescedTouches:v9 forTouch:v8 average:1];
    }

    else
    {
      [(DKInkView *)self _vector4ForTouchSettingWeightAndVelocity:v8 average:0];
      [(DKInkView *)self continueStroke:?];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DKInkView;
    [(DKInkView *)&v10 touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_allowInput)
  {
    v8 = [v6 anyObject];
    [(DKInkView *)self _vector4ForTouchSettingWeightAndVelocity:v8 average:1];
    [(DKInkView *)self continueStroke:?];
    [(DKInkView *)self terminateStroke];
    self->_trackingTouches = 0;
    [v8 locationInView:self];
    [(DKInkView *)self _postTouchesEndedNotification:?];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DKInkView;
    [(DKInkView *)&v9 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_allowInput)
  {
    v8 = [(DKDrawingStroke *)self->_currentBrushStroke strokePoints];
    v9 = [v8 count];

    [(DKInkView *)self terminateStroke];
    if (v9 <= 4)
    {
      [(NSUndoManager *)self->_strokeUndoManager undo];
    }

    self->_trackingTouches = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DKInkView;
    [(DKInkView *)&v10 touchesCancelled:v6 withEvent:v7];
  }
}

- (void)handleCoalescedTouches:(id)a3 forTouch:(id)a4 average:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(DKInkView *)self _vector4ForTouchSettingWeightAndVelocity:*(*(&v11 + 1) + 8 * v10) average:v5, v11];
        [(DKInkView *)self continueStroke:?];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (__n128)_vector4ForTouchSettingWeightAndVelocity:(void *)a3 average:(uint64_t)a4
{
  v6 = a3;
  [v6 locationInView:a1];
  v25 = v8;
  v26 = v7;
  [a1 weightForTouch:v6];
  v10 = v9;
  [a1 setCurrentWeight:?];
  [a1 _updateVelocityWithTouch:v6 average:a4];
  v24 = *(a1 + 440);
  [a1 minThickness];
  v12 = v11;
  [a1 maxThickness];
  v14 = vcvt_f32_f64(v24);
  v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  if (v15 >= *&MaxVelocityValue)
  {
    v15 = *&MaxVelocityValue;
  }

  v16 = fminf(fmaxf(v15 / (*&MaxVelocityValue * 0.5), 0.0), 1.0);
  v17 = 1.0 - ((v16 * v16) * ((v16 * -2.0) + 3.0));
  v18 = v13;
  v19 = (v17 * v17) * v18;
  if (v19 <= v18)
  {
    v18 = v19;
  }

  v20 = v12;
  if (v19 < v20)
  {
    v18 = v12;
  }

  v21.f64[0] = v26;
  v21.f64[1] = v25;
  *&v21.f64[0] = vcvt_f32_f64(v21);
  *&v21.f64[1] = v18;
  v22 = v10;
  *(&v21.f64[1] + 1) = v22;
  v27 = v21;

  return v27;
}

- (void)_updateVelocityWithTouch:(id)a3 average:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  x = self->_velocityInWindow.x;
  y = self->_velocityInWindow.y;
  v12 = v6;
  [(DKInkView *)self _velocityForTouch:?];
  if (v4)
  {
    v10 = y * 0.15 + v10 * 0.85;
    v9 = x * 0.15 + v9 * 0.85;
  }

  self->_velocityInWindow.x = v9;
  self->_velocityInWindow.y = v10;
  [v12 timestamp];
  self->_lastTouchTime = v11;
}

+ (CGVector)normalizeVector:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  [a1 lengthOfVector:?];
  v6 = dy / v5;
  v7 = dx / v5;
  result.dy = v6;
  result.dx = v7;
  return result;
}

- (CGPoint)strokeStartLocation
{
  objc_copyStruct(v4, &self->_strokeStartLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)strokeLastLocation
{
  objc_copyStruct(v4, &self->_strokeLastLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (__n128)lastVectorPoint
{
  result = *(a1 + 704);
  v3 = *(a1 + 720);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (void)setLastVectorPoint:(DKInkView *)self
{
  v3 = v2[1];
  *self->_lastVectorPoint = *v2;
  *&self->_lastVectorPoint[16] = v3;
}

- (CGRect)aggregateInvalid
{
  x = self->_aggregateInvalid.origin.x;
  y = self->_aggregateInvalid.origin.y;
  width = self->_aggregateInvalid.size.width;
  height = self->_aggregateInvalid.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)unionDrawingRect
{
  x = self->_unionDrawingRect.origin.x;
  y = self->_unionDrawingRect.origin.y;
  width = self->_unionDrawingRect.size.width;
  height = self->_unionDrawingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (DKInkViewRenderDelegate)renderPreviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_renderPreviewDelegate);

  return WeakRetained;
}

@end
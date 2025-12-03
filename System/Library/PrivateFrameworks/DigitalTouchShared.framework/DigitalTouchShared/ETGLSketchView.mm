@interface ETGLSketchView
- (BOOL)_doesPoint:(id *)point predateTime:(double)time;
- (BOOL)_getCurrentSketchPoint:(id *)point;
- (CGImage)createImageForTime:(double)time;
- (CGImage)createRenderedFrameImage;
- (ETGLSketchView)initWithFrame:(CGRect)frame;
- (char)setControlBatches:(char *)batches;
- (id).cxx_construct;
- (uint64_t)controlBatches;
- (vector<std::vector<float)vertexBatches;
- (vector<unsigned)secondaryVertexBatchCount;
- (vector<unsigned)vertexBatchCount;
- (void)_drawCurrentPointAdvancingPlayback;
- (void)_endPlayback;
- (void)animateOutWithCompletion:(id)completion;
- (void)beginStrokeWithColor:(id)color;
- (void)clear;
- (void)clearAllPoints;
- (void)didCompleteStroke;
- (void)drawFrameBeforeWisp;
- (void)drawView:(id)view;
- (void)handleSketchAtPosition:(CGPoint)position;
- (void)handleTapAtPosition:(CGPoint)position;
- (void)layoutSubviews;
- (void)setMessageData:(id)data;
- (void)setPaused:(BOOL)paused;
- (void)setPlaying:(BOOL)playing;
- (void)setSecondaryVertexBatchCount:(vector<unsigned)long;
- (void)setVertexBatchCount:(vector<unsigned)long;
- (void)setVertexBatches:(vector<std::vector<float)__attribute__((ext_vector_type(2;
- (void)updateRendererWithPoints:(ETGLSketchView *)self count:(SEL)count controlPoint:flush:;
- (void)updateRendererWithSecondaryPoints:(ETGLSketchView *)self count:(SEL)count controlPoint:flush:;
@end

@implementation ETGLSketchView

- (ETGLSketchView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v60[2] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = ETGLSketchView;
  v5 = [(ETGLSketchView *)&v58 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = v5;
  if (v5)
  {
    layer = [(ETGLSketchView *)v5 layer];
    [layer setOpaque:0];
    v59[0] = *MEMORY[0x277CD93C0];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v59[1] = *MEMORY[0x277CD93B8];
    v60[0] = v8;
    v60[1] = *MEMORY[0x277CD93A0];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    [layer setDrawableProperties:v9];

    [layer setAsynchronous:0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v12 = v11 > 1.0;

    if (v12)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      [(ETGLSketchView *)v6 setContentScaleFactor:?];
    }

    v14 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
    context = v6->_context;
    v6->_context = v14;

    if (v6->_context)
    {
      [(ETGLSketchView *)v6 setGLContextAsCurrent];
      v16 = [ETGLSketchRenderer alloc];
      v17 = v6->_context;
      layer2 = [(ETGLSketchView *)v6 layer];
      v19 = [(ETGLSketchRenderer *)v16 initWithContext:v17 andDrawable:layer2];
      renderer = v6->_renderer;
      v6->_renderer = v19;

      v21 = v6->_renderer;
      if (v21)
      {
        [(ETGLSketchRenderer *)v21 setDelegate:v6];
        [(ETGLSketchRenderer *)v6->_renderer setUseFastVerticalWisp:v6->_useFastVerticalWisp];
        v22 = fmax(width / 156.0, 1.0);
        if (v22 > 3.0)
        {
          v22 = 3.0;
        }

        [(ETGLSketchRenderer *)v6->_renderer setLineWidthScaleFactor:v22];
        v6->_paused = 1;
        [(ETGLSketchView *)v6 contentScaleFactor];
        v24 = v23;
        [(ETGLSketchView *)v6 contentScaleFactor];
        v25 = 2.0 / (width * v24);
        v27 = 2.0 / (height * v26);
        if (v25 >= v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = 2.0 / (width * v24);
        }

        v6->_unitSize = v28;
        v29 = [[ETPointFIFO alloc] initWithFIFO:0];
        pointFIFO = v6->_pointFIFO;
        v6->_pointFIFO = v29;

        v31 = [ETBoxcarFilterPointFIFO alloc];
        *&v32 = v6->_unitSize * 5.0;
        v33 = [(ETBoxcarFilterPointFIFO *)v31 initWithFIFO:v6->_pointFIFO width:2 spacing:v32];
        smoothingFIFO = v6->_smoothingFIFO;
        v6->_smoothingFIFO = v33;

        v35 = [[ETQuadCurvePointFIFO alloc] initWithFIFO:v6->_smoothingFIFO];
        interpolatingFIFO = v6->_interpolatingFIFO;
        v6->_interpolatingFIFO = v35;

        *&v37 = v28;
        [(ETQuadCurvePointFIFO *)v6->_interpolatingFIFO setUnitSize:v37];
        objc_initWeak(&location, v6);
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __32__ETGLSketchView_initWithFrame___block_invoke;
        v55[3] = &unk_278F7A0A8;
        objc_copyWeak(&v56, &location);
        [(ETQuadCurvePointFIFO *)v6->_interpolatingFIFO setEmissionHandler:v55];
        [(ETQuadCurvePointFIFO *)v6->_interpolatingFIFO setEmitInterpolatedPoints:0];
        v38 = [[ETPointFIFO alloc] initWithFIFO:0];
        secondaryPointFIFO = v6->_secondaryPointFIFO;
        v6->_secondaryPointFIFO = v38;

        v40 = [ETBoxcarFilterPointFIFO alloc];
        *&v41 = v6->_unitSize * 5.0;
        v42 = [(ETBoxcarFilterPointFIFO *)v40 initWithFIFO:v6->_secondaryPointFIFO width:3 spacing:v41];
        secondarySmoothingFIFO = v6->_secondarySmoothingFIFO;
        v6->_secondarySmoothingFIFO = v42;

        v44 = [[ETQuadCurvePointFIFO alloc] initWithFIFO:v6->_secondarySmoothingFIFO];
        secondaryInterpolatingFIFO = v6->_secondaryInterpolatingFIFO;
        v6->_secondaryInterpolatingFIFO = v44;

        *&v46 = v28;
        [(ETQuadCurvePointFIFO *)v6->_secondaryInterpolatingFIFO setUnitSize:v46];
        v50 = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __32__ETGLSketchView_initWithFrame___block_invoke_2;
        v53 = &unk_278F7A0A8;
        objc_copyWeak(&v54, &location);
        [(ETQuadCurvePointFIFO *)v6->_secondaryInterpolatingFIFO setEmissionHandler:&v50];
        [(ETQuadCurvePointFIFO *)v6->_secondaryInterpolatingFIFO setEmitInterpolatedPoints:0, v50, v51, v52, v53];
        [(ETGLSketchView *)v6 setUserInteractionEnabled:0];
        objc_destroyWeak(&v54);
        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);

        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          LOWORD(location) = 0;
          _os_log_impl(&dword_248D00000, v48, OS_LOG_TYPE_INFO, "ERROR: Couldn't allocate ETGLSketchRenderer", &location, 2u);
        }

LABEL_20:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        LOWORD(location) = 0;
        _os_log_impl(&dword_248D00000, v48, OS_LOG_TYPE_INFO, "ERROR: Couldn't allocate EAGLContext", &location, 2u);
      }

      goto LABEL_20;
    }

    v47 = 0;
    goto LABEL_22;
  }

LABEL_12:
  v47 = v6;
LABEL_22:

  return v47;
}

void __32__ETGLSketchView_initWithFrame___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateRendererWithPoints:a2 count:a3 controlPoint:a4 flush:a5];
}

void __32__ETGLSketchView_initWithFrame___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateRendererWithSecondaryPoints:a2 count:a3 controlPoint:a4 flush:a5];
}

- (void)setMessageData:(id)data
{
  dataCopy = data;
  objc_storeStrong(&self->_messageData, data);
  isRenderingOffscreen = [dataCopy isRenderingOffscreen];
  self->_renderingOffscreen = isRenderingOffscreen;
  [(ETGLSketchRenderer *)self->_renderer setRenderingOffscreen:isRenderingOffscreen];
}

- (void)animateOutWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_initWeak(&location, self);
  messageData = [(ETGLSketchView *)self messageData];
  objc_initWeak(&from, messageData);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__ETGLSketchView_animateOutWithCompletion___block_invoke;
  v9[3] = &unk_278F7A0D0;
  objc_copyWeak(&v11, &from);
  objc_copyWeak(&v12, &location);
  v7 = completionCopy;
  v10 = v7;
  v8 = MEMORY[0x24C1E9BB0](v9);
  if ([(ETGLSketchView *)self isPaused])
  {
    v8[2](v8);
  }

  else
  {
    [(ETGLSketchRenderer *)self->_renderer animateOutWithCompletion:v8];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

uint64_t __43__ETGLSketchView_animateOutWithCompletion___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_248D00000, v2, OS_LOG_TYPE_INFO, "Completed animation. Stopping displaylink and removing view", v8, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained didEndWisping];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 didEndWisp];
  }

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 clear];

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)beginStrokeWithColor:(id)color
{
  colorCopy = color;
  if (!self->_playing)
  {
    messageData = [(ETGLSketchView *)self messageData];
    [messageData addStrokeWithColor:colorCopy];
  }

  if (!CGColorEqualToColor(-[UIColor CGColor](self->_currentStrokeColor, "CGColor"), [colorCopy CGColor]))
  {
    objc_storeStrong(&self->_currentStrokeColor, color);
    v26 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    [colorCopy getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
    v7.f64[0] = v26;
    v7.f64[1] = v25;
    v8.f64[0] = v24;
    v8.f64[1] = v23;
    v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v8);
    renderer = [(ETGLSketchView *)self renderer];
    [renderer setFinalDrawingColor:&v22];

    v20 = 0.0;
    v21 = 0.0;
    v19 = 0.0;
    [colorCopy getHue:&v21 saturation:&v20 brightness:&v19 alpha:&v23];
    v10.i64[0] = 1.0;
    *v11.i64 = v21 + -0.05 + 1.0;
    *v11.i32 = *v11.i64;
    *v10.i32 = *v11.i32 - truncf(*v11.i32);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v13 = v20 + -0.05;
    v20 = fmaxf(fminf(v13, 1.0), 0.0);
    v21 = *vbslq_s8(v12, v10, v11).i32;
    v14 = v19 + 0.2;
    v19 = fmaxf(fminf(v14, 1.0), 0.0);
    v15 = [MEMORY[0x277D75348] colorWithHue:? saturation:? brightness:? alpha:?];
    [v15 getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
    v16.f64[0] = v26;
    v16.f64[1] = v25;
    v17.f64[0] = v24;
    v17.f64[1] = v23;
    v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v17);
    renderer2 = [(ETGLSketchView *)self renderer];
    [renderer2 setInitialDrawingColor:&v22];
  }
}

- (void)_drawCurrentPointAdvancingPlayback
{
  strokes = [(ETSketchMessage *)self->_messageData strokes];
  currentStrokeIndex = self->_currentStrokeIndex;
  if (currentStrokeIndex < [strokes count])
  {
    v5 = [strokes objectAtIndexedSubscript:self->_currentStrokeIndex];
    currentPointIndex = self->_currentPointIndex;
    if (currentPointIndex >= [v5 count])
    {
      self->_currentPointIndex = 0;
      ++self->_currentStrokeIndex;
      ++self->_numberOfDrawnStrokes;
      v7 = self->_currentStrokeIndex;
      if (v7 >= [strokes count])
      {
        self->_playbackCompleted = 1;
LABEL_21:

        goto LABEL_22;
      }

      v8 = [strokes objectAtIndexedSubscript:self->_currentStrokeIndex];

      v5 = v8;
    }

    v9 = [v5 objectAtIndexedSubscript:self->_currentPointIndex];
    [v9 getValue:&v23];

    LOWORD(v10) = v24;
    self->_timestampForLastDrawnPoint = v10 / 1000.0;
    v11 = v23;
    v12 = [v5 count];
    v13 = v11 / 32767.0 + -1.0;
    v14 = HIWORD(v11) / 32767.0 + -1.0;
    if (!self->_currentPointIndex)
    {
      hasMultipleColors = [(ETSketchMessage *)self->_messageData hasMultipleColors];
      messageData = self->_messageData;
      if (hasMultipleColors)
      {
        colorsInMessage = [(ETSketchMessage *)messageData colorsInMessage];
        color = [colorsInMessage objectAtIndex:self->_numberOfDrawnStrokes];
      }

      else
      {
        color = [(ETMessage *)messageData color];
      }

      [(ETGLSketchView *)self beginStrokeWithColor:color];
      if (v12 == 1)
      {
        [(ETGLSketchView *)self handleTapAtPosition:v13, v14];
        self->_renderingDelay = 0.1;
      }
    }

    [(ETGLSketchView *)self handleSketchAtPosition:v13, v14];
    v19 = self->_currentPointIndex + 1;
    self->_currentPointIndex = v19;
    if (v19 == [v5 count])
    {
      [(ETGLSketchView *)self didCompleteStroke];
      ++self->_currentStrokeIndex;
      ++self->_numberOfDrawnStrokes;
      self->_currentPointIndex = 0;
      if (v12 != 1)
      {
        self->_renderingDelay = 0.3;
      }
    }

    v20 = self->_currentStrokeIndex;
    if (v20 == [strokes count])
    {
      self->_playbackCompleted = 1;
      [(ETGLSketchView *)self setPlaying:0];
      if ([(ETMessage *)self->_messageData isRenderingOffscreen])
      {
        [(ETGLSketchView *)self _endPlayback];
      }

      else
      {
        v21 = dispatch_time(0, 300000000);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __52__ETGLSketchView__drawCurrentPointAdvancingPlayback__block_invoke;
        v22[3] = &unk_278F7A0F8;
        v22[4] = self;
        dispatch_after(v21, MEMORY[0x277D85CD0], v22);
      }
    }

    goto LABEL_21;
  }

  self->_playbackCompleted = 1;
LABEL_22:
}

- (void)drawFrameBeforeWisp
{
  [(ETGLSketchView *)self setGLContextAsCurrent];
  [(ETGLSketchView *)self setPlaying:1];
  do
  {
    [(ETGLSketchView *)self _drawCurrentPointAdvancingPlayback];
    [(ETGLSketchRenderer *)self->_renderer render];
    messageData = [(ETGLSketchView *)self messageData];
    didDrawPoints = [messageData didDrawPoints];
  }

  while (!didDrawPoints);
  v5 = 18;
  do
  {
    [(ETGLSketchView *)self _drawCurrentPointAdvancingPlayback];
    [(ETGLSketchRenderer *)self->_renderer render];
    --v5;
  }

  while (v5);
}

- (BOOL)_doesPoint:(id *)point predateTime:(double)time
{
  renderingStartTime = self->_renderingStartTime;
  v5 = time - renderingStartTime;
  LOWORD(renderingStartTime) = point->var1.var0;
  return v5 >= *&renderingStartTime / 1000.0;
}

- (void)drawView:(id)view
{
  viewCopy = view;
  [(ETGLSketchView *)self setGLContextAsCurrent];
  if (self->_playing)
  {
    [viewCopy timestamp];
    v6 = v5;
    if (self->_renderingStartTime == 0.0)
    {
      self->_renderingStartTime = v5;
    }

    if ([(ETMessage *)self->_messageData supportsPlaybackTimeOffset])
    {
      v7 = [(ETGLSketchView *)self _getCurrentSketchPoint:v12];
      v8 = -601;
      while (self->_playing)
      {
        if (!v7)
        {
          break;
        }

        if (![(ETGLSketchView *)self _doesPoint:v12 predateTime:v6])
        {
          break;
        }

        if (__CFADD__(v8++, 1))
        {
          break;
        }

        [(ETGLSketchView *)self _drawCurrentPointAdvancingPlayback];
        v7 = [(ETGLSketchView *)self _getCurrentSketchPoint:v12];
      }

      if ([(ETSketchMessage *)self->_messageData hideComet]&& self->_playbackCompleted)
      {
        v10 = v6 + 1000.0;
        *&v10 = v6 + 1000.0;
        [(ETGLSketchRenderer *)self->_renderer updateGLWithTime:v10];
      }
    }

    else
    {
      self->_renderingDelay = fmax(self->_renderingDelay - (v6 - self->_lastDisplayLinkTime), 0.0);
      self->_lastDisplayLinkTime = v6;
      if (self->_renderingDelay == 0.0)
      {
        [(ETGLSketchView *)self _drawCurrentPointAdvancingPlayback];
      }
    }
  }

  renderer = [(ETGLSketchView *)self renderer];
  [renderer render];
}

- (BOOL)_getCurrentSketchPoint:(id *)point
{
  strokes = [(ETSketchMessage *)self->_messageData strokes];
  currentStrokeIndex = self->_currentStrokeIndex;
  if (currentStrokeIndex >= [strokes count])
  {
    v11 = 0;
  }

  else
  {
    v7 = [strokes objectAtIndexedSubscript:self->_currentStrokeIndex];
    currentPointIndex = self->_currentPointIndex;
    v9 = [v7 count];
    v10 = currentPointIndex >= v9;
    v11 = currentPointIndex < v9;
    if (!v10)
    {
      v12 = [v7 objectAtIndexedSubscript:self->_currentPointIndex];
      [v12 getValue:point];
    }
  }

  return v11;
}

- (CGImage)createRenderedFrameImage
{
  renderer = [(ETGLSketchView *)self renderer];
  v3 = [renderer createRenderedFrameImageUsingAlpha:0];

  return v3;
}

- (CGImage)createImageForTime:(double)time
{
  [(ETGLSketchView *)self setGLContextAsCurrent];
  self->_playing = 1;
  if (self->_playbackCompleted)
  {
LABEL_4:
    if (![(ETMessage *)self->_messageData delayWisp])
    {
      renderer = [(ETGLSketchView *)self renderer];
      [renderer setIsDying:1];
    }
  }

  else
  {
    while (self->_timestampForLastDrawnPoint <= time)
    {
      [(ETGLSketchView *)self _drawCurrentPointAdvancingPlayback];
      if (self->_playbackCompleted)
      {
        goto LABEL_4;
      }
    }
  }

  renderer2 = [(ETGLSketchView *)self renderer];
  *&v7 = time;
  [renderer2 updateGLWithTime:v7];

  renderer3 = [(ETGLSketchView *)self renderer];
  [renderer3 render];

  self->_playing = 0;
  renderer4 = [(ETGLSketchView *)self renderer];
  v10 = [renderer4 createRenderedFrameImageUsingAlpha:{-[ETMessage isRenderingOffscreenOpaque](self->_messageData, "isRenderingOffscreenOpaque") ^ 1}];

  return v10;
}

- (void)_endPlayback
{
  [(ETGLSketchView *)self setPlaying:0];
  [(ETSketchMessage *)self->_messageData willBeginWisp];
  if (![(ETMessage *)self->_messageData delayWisp]&& ![(ETMessage *)self->_messageData isRenderingOffscreen])
  {

    [(ETGLSketchView *)self animateOutWithCompletion:0];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    if (!self->_renderingOffscreen)
    {
      if (paused)
      {
        self->_pauseTime = CFAbsoluteTimeGetCurrent();
        [(CADisplayLink *)self->_displayLink invalidate];
        displayLink = self->_displayLink;
        self->_displayLink = 0;

        if ([(ETSketchMessage *)self->_messageData didDrawPoints]&& ![(ETSketchMessage *)self->_messageData didEndWisping]&& ![(ETMessage *)self->_messageData delayWisp])
        {

          [(ETGLSketchView *)self animateOutWithCompletion:0];
        }
      }

      else
      {
        v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_drawView_];
        v6 = self->_displayLink;
        self->_displayLink = v5;

        [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:60];
        if (self->_pauseTime != 0.0)
        {
          self->_renderingStartTime = CFAbsoluteTimeGetCurrent() - self->_pauseTime + self->_renderingStartTime;
          self->_pauseTime = 0.0;
        }

        v7 = self->_displayLink;
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        [CADisplayLink addToRunLoop:v7 forMode:"addToRunLoop:forMode:"];
      }
    }
  }
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    if (playing)
    {
      currentStrokeColor = self->_currentStrokeColor;
      self->_currentStrokeColor = 0;

      self->_currentPointIndex = 0;
      self->_numberOfDrawnStrokes = 0;
      self->_renderingStartTime = 0.0;
      self->_renderingDelay = 0.0;
      messageData = [(ETGLSketchView *)self messageData];
      [messageData setDidDrawPoints:0];
      [messageData setDidEndWisping:0];
      color = [messageData color];
      [(ETGLSketchView *)self beginStrokeWithColor:color];

      [(ETGLSketchView *)self setPaused:0];
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "message playback mode has begun", v8, 2u);
        }
      }
    }
  }
}

- (void)clear
{
  [(ETGLSketchView *)self setPlaying:0];
  [(ETGLSketchView *)self setPaused:1];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_248D00000, v3, OS_LOG_TYPE_INFO, "Clearing Renderer", v6, 2u);
    }
  }

  [(ETGLSketchView *)self setGLContextAsCurrent];
  [(ETGLSketchRenderer *)self->_renderer erase];
  [(ETGLSketchRenderer *)self->_renderer reset];
  renderer = self->_renderer;
  self->_renderer = 0;

  [(ETGLSketchView *)self clearAllPoints];
  context = self->_context;
  self->_context = 0;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = ETGLSketchView;
  [(ETGLSketchView *)&v20 layoutSubviews];
  [(ETGLSketchView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(ETGLSketchView *)self contentScaleFactor];
  v8 = 2.0 / (v7 * v4);
  [(ETGLSketchView *)self contentScaleFactor];
  v10 = 2.0 / (v6 * v9);
  if (v8 < v10)
  {
    v10 = v8;
  }

  v11 = v4 / 156.0;
  v12 = fmax(v11 * 0.7, 1.0) * v10;
  self->_unitSize = v12;
  renderer = self->_renderer;
  layer = [(ETGLSketchView *)self layer];
  [(ETGLSketchRenderer *)renderer resizeFromLayer:layer];

  [(ETGLSketchRenderer *)self->_renderer setUseFastVerticalWisp:self->_useFastVerticalWisp];
  v15 = fmax(v11, 1.0);
  if (v15 > 3.0)
  {
    v15 = 3.0;
  }

  [(ETGLSketchRenderer *)self->_renderer setLineWidthScaleFactor:v15];
  *&v16 = self->_unitSize * 5.0;
  [(ETBoxcarFilterPointFIFO *)self->_smoothingFIFO setSpacing:v16];
  *&v17 = self->_unitSize;
  [(ETQuadCurvePointFIFO *)self->_interpolatingFIFO setUnitSize:v17];
  *&v18 = self->_unitSize * 5.0;
  [(ETBoxcarFilterPointFIFO *)self->_secondarySmoothingFIFO setSpacing:v18];
  *&v19 = self->_unitSize;
  [(ETQuadCurvePointFIFO *)self->_secondaryInterpolatingFIFO setUnitSize:v19];
}

- (void)handleTapAtPosition:(CGPoint)position
{
  if (!self->_playing)
  {
    x = position.x;
    y = position.y;
    [(ETSketchMessage *)self->_messageData addSketchPoint:position.x, position.y];
    position.x = x;
    position.y = y;
  }

  v4 = position.y;
  v7 = vcvt_f32_f64(position);
  [(ETGLSketchRenderer *)self->_renderer appendPointArray:&v7 length:1];
}

- (void)updateRendererWithPoints:(ETGLSketchView *)self count:(SEL)count controlPoint:flush:
{
  v5 = v4;
  v12 = 0;
  v13 = v3;
  __p = 0;
  v11 = 0;
  if (v3)
  {
    v7 = v3;
    v8 = v2;
    for (i = 0; i < v7; ++i)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&__p, v8++);
    }
  }

  _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE9push_backB8ne200100ERKS4_(&self->_vertexBatches, &__p);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self->_anon_270, v5);
  std::vector<unsigned long>::push_back[abi:ne200100](&self->_vertexBatchCount.__begin_, &v13);
  self->_vertexOffset += v13;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

- (void)updateRendererWithSecondaryPoints:(ETGLSketchView *)self count:(SEL)count controlPoint:flush:
{
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v23 = v3;
  [(ETGLSketchView *)self setGLContextAsCurrent];
  std::vector<unsigned long>::push_back[abi:ne200100](&self->_secondaryVertexBatchCount.__begin_, &v23);
  if (v6)
  {
    begin = self->_vertexBatchCount.__begin_;
    v12 = self->_vertexBatchCount.__end_ - begin;
    v13 = self->_secondaryVertexBatchCount.__end_ - self->_secondaryVertexBatchCount.__begin_;
    v14 = v13 >> 3;
    v15 = (v13 >> 3) - 1;
    if (v15 < v12 >> 3)
    {
      v16 = 0;
      v22 = (v12 >> 3) - (v13 >> 3);
      v20 = 624;
      v21 = 600;
      v17 = 24 * v14 - 24;
      v18 = 8 * v14 - 8;
      do
      {
        *&v10 = self->_unitSize;
        [(ETGLSketchRenderer *)self->_renderer appendDualPointArray:*(*(&self->super.super.super.isa + v21) + v17) length:*(&begin[v16] + v18) controlPoint:v8 alternatePoints:v23 alternateLength:v16 alternateControlPoint:v22 + 2 unitSize:*(*(&self->super.super.super.isa + v20) + 8 * v16 + v18) segmentIndex:*v7 segmentCount:v10, v20, v21, v22];
        ++v16;
        begin = self->_vertexBatchCount.__begin_;
        v17 += 24;
      }

      while (v15 + v16 < self->_vertexBatchCount.__end_ - begin);
    }
  }

  else
  {
    v19 = self->_secondaryVertexBatchCount.__end_ - self->_secondaryVertexBatchCount.__begin_;
    if (v19 >= 2)
    {
      *&v10 = self->_unitSize;
      [ETGLSketchRenderer appendDualPointArray:"appendDualPointArray:length:controlPoint:alternatePoints:alternateLength:alternateControlPoint:unitSize:segmentIndex:segmentCount:" length:*(*self->_anon_270 + 8 * (v19 - 1)) controlPoint:*v7 alternatePoints:v10 alternateLength:? alternateControlPoint:? unitSize:? segmentIndex:? segmentCount:?];
    }
  }
}

- (void)handleSketchAtPosition:(CGPoint)position
{
  x = position.x;
  y = position.y;
  [(ETGLSketchView *)self setGLContextAsCurrent];
  if (!self->_playing)
  {
    [(ETSketchMessage *)self->_messageData addSketchPoint:x, y];
  }

  v4.f64[0] = x;
  v4.f64[1] = y;
  v7 = vcvt_f32_f64(v4);
  [(ETPointFIFO *)self->_pointFIFO addPoints:&v7 count:1];
  [(ETPointFIFO *)self->_secondaryPointFIFO addPoints:&v7 count:1];
}

- (void)didCompleteStroke
{
  [(ETPointFIFO *)self->_pointFIFO flush];
  [(ETPointFIFO *)self->_secondaryPointFIFO flush];
  _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE5clearB8ne200100Ev(&self->_vertexBatches);
  *&self->_anon_270[8] = *self->_anon_270;
  self->_vertexBatchCount.__end_ = self->_vertexBatchCount.__begin_;
  self->_secondaryVertexBatchCount.__end_ = self->_secondaryVertexBatchCount.__begin_;
}

- (void)clearAllPoints
{
  [(ETPointFIFO *)self->_pointFIFO clear];
  [(ETPointFIFO *)self->_secondaryPointFIFO clear];
  _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE5clearB8ne200100Ev(&self->_vertexBatches);
  *&self->_anon_270[8] = *self->_anon_270;
  self->_vertexBatchCount.__end_ = self->_vertexBatchCount.__begin_;
  self->_secondaryVertexBatchCount.__end_ = self->_secondaryVertexBatchCount.__begin_;
}

- (vector<std::vector<float)vertexBatches
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE16__init_with_sizeB8ne200100IPS4_S8_EEvT_T0_m(retstr, self->_vertexBatches.__begin_, self->_vertexBatches.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_vertexBatches.__end_ - self->_vertexBatches.__begin_) >> 3));
}

- (void)setVertexBatches:(vector<std::vector<float)__attribute__((ext_vector_type(2
{
  p_vertexBatches = &self->_vertexBatches;
  if (p_vertexBatches != a3)
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE18__assign_with_sizeB8ne200100IPS4_S8_EEvT_T0_l(p_vertexBatches, a3->__begin_, a3->__end_, 0xAAAAAAAAAAAAAAABLL * ((a3->__end_ - a3->__begin_) >> 3));
  }
}

- (uint64_t)controlBatches
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a2, *(self + 624), *(self + 632), (*(self + 632) - *(self + 624)) >> 3);
}

- (char)setControlBatches:(char *)batches
{
  result = (self + 624);
  if (result != batches)
  {
    return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(result, *batches, batches[1], (batches[1] - *batches) >> 3);
  }

  return result;
}

- (vector<unsigned)vertexBatchCount
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(retstr, self->_vertexBatchCount.__begin_, self->_vertexBatchCount.__end_, self->_vertexBatchCount.__end_ - self->_vertexBatchCount.__begin_);
}

- (void)setVertexBatchCount:(vector<unsigned)long
{
  p_vertexBatchCount = &self->_vertexBatchCount;
  if (p_vertexBatchCount != a3)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(p_vertexBatchCount, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (vector<unsigned)secondaryVertexBatchCount
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(retstr, self->_secondaryVertexBatchCount.__begin_, self->_secondaryVertexBatchCount.__end_, self->_secondaryVertexBatchCount.__end_ - self->_secondaryVertexBatchCount.__begin_);
}

- (void)setSecondaryVertexBatchCount:(vector<unsigned)long
{
  p_secondaryVertexBatchCount = &self->_secondaryVertexBatchCount;
  if (p_secondaryVertexBatchCount != a3)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(p_secondaryVertexBatchCount, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 76) = 0;
  *(self + 77) = 0;
  *(self + 75) = 0;
  *(self + 79) = 0;
  *(self + 80) = 0;
  *(self + 78) = 0;
  *(self + 82) = 0;
  *(self + 83) = 0;
  *(self + 81) = 0;
  *(self + 85) = 0;
  *(self + 86) = 0;
  *(self + 84) = 0;
  return self;
}

@end
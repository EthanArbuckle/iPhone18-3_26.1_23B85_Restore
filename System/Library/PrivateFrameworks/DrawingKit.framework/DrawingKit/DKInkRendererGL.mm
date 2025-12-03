@interface DKInkRendererGL
- (DKInkRendererDelegate)delegate;
- (DKInkRendererGL)initWithFrame:(CGRect)frame;
- (id)snapshotImage;
- (void)_commonInit;
- (void)addPoint:(id *)point;
- (void)addPointsFromBrushPointQueueWithSegmentLength:(unint64_t)length;
- (void)beginStroke;
- (void)clear;
- (void)completeAnimationsImmediately;
- (void)dealloc;
- (void)display;
- (void)displayForcefully;
- (void)drawRect:(CGRect)rect;
- (void)endStroke;
- (void)flush;
- (void)force;
- (void)layoutSubviews;
- (void)removeLastStroke;
- (void)rendererDidFinishAnimatingDrawing:(id)drawing;
- (void)resetRendererState;
- (void)setInkColor:(id)color;
- (void)setMode:(unint64_t)mode;
- (void)teardown;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DKInkRendererGL

- (DKInkRendererGL)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
  v13.receiver = self;
  v13.super_class = DKInkRendererGL;
  height = [(GLKView *)&v13 initWithFrame:v8 context:x, y, width, height];
  if (height)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DKInkRendererGL *)height setBackgroundColor:systemBackgroundColor];

    [(GLKView *)height setDrawableColorFormat:0];
    [(GLKView *)height setDrawableDepthFormat:0];
    [(GLKView *)height setDrawableStencilFormat:0];
    [(GLKView *)height setDrawableMultisample:0];
    [(GLKView *)height setEnableSetNeedsDisplay:0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [(GLKView *)height setContentScaleFactor:?];

    [(DKInkRendererGL *)height _commonInit];
  }

  return height;
}

- (void)_commonInit
{
  array = [MEMORY[0x277CBEB18] array];
  brushStrokes = self->_brushStrokes;
  self->_brushStrokes = array;

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1000];
  brushPointQueue = self->_brushPointQueue;
  self->_brushPointQueue = v5;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = DKInkRendererGL;
  [(GLKView *)&v20 layoutSubviews];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  if (self->_initialized || ([(DKInkRendererGL *)self window], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    +[DKGLUtilities setCurrentClearColor];
    glClear(0x4000u);
    inkRenderer = self->_inkRenderer;
    [(DKInkRendererGL *)self bounds];
    [(DKOpenGLRenderer *)inkRenderer setBounds:?];
  }

  else
  {
    self->_initialized = 1;
    +[DKGLUtilities setCurrentClearColor];
    glEnable(0xBE2u);
    glBlendFunc(0x302u, 0x303u);
    if (!self->_inkRenderer)
    {
      v6 = [DKOpenGLRenderer alloc];
      [(DKInkRendererGL *)self bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v17 = [(DKOpenGLRenderer *)v6 initWithBounds:v8 scale:v10, v12, v14, v16];
      v18 = self->_inkRenderer;
      self->_inkRenderer = v17;

      [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:self->_inkColor];
      [(DKOpenGLRenderer *)self->_inkRenderer setLineWidthScale:self->_drawingScale];
      [(DKOpenGLRenderer *)self->_inkRenderer setUndoEnabled:self->_mode == 0];
      [(DKOpenGLRenderer *)self->_inkRenderer setDelegate:self];
    }

    glClear(0x4000u);
  }

  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:self->_inkColor];
}

- (id)snapshotImage
{
  if (+[DKGLUtilities gpuAvailable])
  {
    v5.receiver = self;
    v5.super_class = DKInkRendererGL;
    snapshot = [(GLKView *)&v5 snapshot];
  }

  else
  {
    snapshot = 0;
  }

  return snapshot;
}

- (void)dealloc
{
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  [(DKInkRendererGL *)self setDelegate:0];
  inkRenderer = self->_inkRenderer;
  self->_inkRenderer = 0;

  currentContext = [MEMORY[0x277CD9388] currentContext];
  context2 = [(GLKView *)self context];

  if (currentContext == context2)
  {
    [MEMORY[0x277CD9388] setCurrentContext:0];
  }

  v8.receiver = self;
  v8.super_class = DKInkRendererGL;
  [(GLKView *)&v8 dealloc];
}

- (void)beginStroke
{
  array = [MEMORY[0x277CBEB18] array];
  currentBrushStroke = self->_currentBrushStroke;
  self->_currentBrushStroke = array;

  inkRenderer = self->_inkRenderer;

  [(DKOpenGLRenderer *)inkRenderer didBeginNewStroke];
}

- (void)addPoint:(id *)point
{
  v4 = *&point->var1;
  v6[0] = point->var0;
  v6[1] = v4;
  var3 = point->var3;
  v5 = [MEMORY[0x277CCAE60] dk_valueWithRenderPoint:v6];
  [(NSMutableArray *)self->_currentBrushStroke addObject:v5];
  [(NSMutableArray *)self->_brushPointQueue addObject:v5];
}

- (void)endStroke
{
  if (self->_currentBrushStroke)
  {
    [(NSMutableArray *)self->_brushStrokes addObject:?];
  }

  inkRenderer = self->_inkRenderer;

  [(DKOpenGLRenderer *)inkRenderer didCompleteStroke];
}

- (void)clear
{
  [(NSMutableArray *)self->_brushPointQueue removeAllObjects];
  [(NSMutableArray *)self->_currentBrushStroke removeAllObjects];
  brushStrokes = self->_brushStrokes;

  [(NSMutableArray *)brushStrokes removeAllObjects];
}

- (void)resetRendererState
{
  currentContext = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  [(DKOpenGLRenderer *)self->_inkRenderer resetRendererState];
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
}

- (void)completeAnimationsImmediately
{
  currentContext = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  [(DKOpenGLRenderer *)self->_inkRenderer updateDryForcefully];
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
}

- (void)removeLastStroke
{
  currentContext = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  [(NSMutableArray *)self->_brushStrokes removeLastObject];
  [(DKOpenGLRenderer *)self->_inkRenderer undo];
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
}

- (void)setInkColor:(id)color
{
  objc_storeStrong(&self->_inkColor, color);
  colorCopy = color;
  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:?];
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(DKOpenGLRenderer *)self->_inkRenderer setUndoEnabled:mode != 1];
  }
}

- (void)force
{
  currentContext = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  [(DKOpenGLRenderer *)self->_inkRenderer setIgnoreFirstUndoItem:1];
  [(DKOpenGLRenderer *)self->_inkRenderer didBeginNewStroke];
  [(DKInkRendererGL *)self displayForcefully];
  [(DKOpenGLRenderer *)self->_inkRenderer didCompleteStroke];
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
}

- (void)flush
{
  currentContext = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  glFlush();
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
}

- (void)display
{
  v4.receiver = self;
  v4.super_class = DKInkRendererGL;
  [(GLKView *)&v4 display];
  if (self->_needToNotify)
  {
    delegate = [(DKInkRendererGL *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate performSelector:sel_inkDidRender_ withObject:self afterDelay:0.0];
    }

    self->_needToNotify = 0;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = DKInkRendererGL;
  [(DKInkRendererGL *)&v8 traitCollectionDidChange:changeCopy];
  traitCollection = [(DKInkRendererGL *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(DKInkRendererGL *)self force];
  }
}

- (void)drawRect:(CGRect)rect
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = MEMORY[0x277D75C80];
  traitCollection = [(DKInkRendererGL *)self traitCollection];
  v6 = [v4 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [v4 setCurrentTraitCollection:v6];

  +[DKGLUtilities setCurrentClearColor];
  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:self->_inkColor];
  glClear(0x4000u);
  v7 = [(NSMutableArray *)self->_brushPointQueue count];
  [(DKInkRendererGL *)self addPointsFromBrushPointQueueWithSegmentLength:[(NSMutableArray *)self->_brushPointQueue count]];
  [(DKOpenGLRenderer *)self->_inkRenderer update];
  [(DKOpenGLRenderer *)self->_inkRenderer draw];
  [MEMORY[0x277D75C80] setCurrentTraitCollection:currentTraitCollection];
  if (v7)
  {
    self->_needToNotify = 1;
  }
}

- (void)displayForcefully
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v3 = MEMORY[0x277D75C80];
  traitCollection = [(DKInkRendererGL *)self traitCollection];
  v5 = [v3 traitCollectionWithUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [v3 setCurrentTraitCollection:v5];

  currentContext = [MEMORY[0x277CD9388] currentContext];
  v7 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v7 setCurrentContext:context];

  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:self->_inkColor];
  [(DKOpenGLRenderer *)self->_inkRenderer setDrawingEnabled:0];
  [(DKInkRendererGL *)self addPointsFromBrushPointQueueWithSegmentLength:25];
  [(DKOpenGLRenderer *)self->_inkRenderer setDrawingEnabled:1];
  [(DKOpenGLRenderer *)self->_inkRenderer redrawEntireDrawingImmediatelyWithLayeredBlending:1];
  self->_needToNotify = 1;
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
  [MEMORY[0x277D75C80] setCurrentTraitCollection:currentTraitCollection];
}

- (void)addPointsFromBrushPointQueueWithSegmentLength:(unint64_t)length
{
  if ([(NSMutableArray *)self->_brushPointQueue count])
  {
    inkRenderer = self->_inkRenderer;
    if (inkRenderer)
    {
      [(DKOpenGLRenderer *)inkRenderer addPoints:self->_brushPointQueue withSegmentLength:length];
      brushPointQueue = self->_brushPointQueue;

      [(NSMutableArray *)brushPointQueue removeAllObjects];
    }
  }
}

- (void)teardown
{
  currentContext = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  context = [(GLKView *)self context];
  [v3 setCurrentContext:context];

  [(DKOpenGLRenderer *)self->_inkRenderer teardown];
  [(DKInkRendererGL *)self setDelegate:0];
  [MEMORY[0x277CD9388] setCurrentContext:currentContext];
}

- (void)rendererDidFinishAnimatingDrawing:(id)drawing
{
  delegate = [(DKInkRendererGL *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate inkDidCompleteRender:self];
  }
}

- (DKInkRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
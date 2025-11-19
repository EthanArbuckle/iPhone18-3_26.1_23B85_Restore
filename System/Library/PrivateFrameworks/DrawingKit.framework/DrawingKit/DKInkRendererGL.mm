@interface DKInkRendererGL
- (DKInkRendererDelegate)delegate;
- (DKInkRendererGL)initWithFrame:(CGRect)a3;
- (id)snapshotImage;
- (void)_commonInit;
- (void)addPoint:(id *)a3;
- (void)addPointsFromBrushPointQueueWithSegmentLength:(unint64_t)a3;
- (void)beginStroke;
- (void)clear;
- (void)completeAnimationsImmediately;
- (void)dealloc;
- (void)display;
- (void)displayForcefully;
- (void)drawRect:(CGRect)a3;
- (void)endStroke;
- (void)flush;
- (void)force;
- (void)layoutSubviews;
- (void)removeLastStroke;
- (void)rendererDidFinishAnimatingDrawing:(id)a3;
- (void)resetRendererState;
- (void)setInkColor:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)teardown;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DKInkRendererGL

- (DKInkRendererGL)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2];
  v13.receiver = self;
  v13.super_class = DKInkRendererGL;
  v9 = [(GLKView *)&v13 initWithFrame:v8 context:x, y, width, height];
  if (v9)
  {
    v10 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DKInkRendererGL *)v9 setBackgroundColor:v10];

    [(GLKView *)v9 setDrawableColorFormat:0];
    [(GLKView *)v9 setDrawableDepthFormat:0];
    [(GLKView *)v9 setDrawableStencilFormat:0];
    [(GLKView *)v9 setDrawableMultisample:0];
    [(GLKView *)v9 setEnableSetNeedsDisplay:0];
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    [(GLKView *)v9 setContentScaleFactor:?];

    [(DKInkRendererGL *)v9 _commonInit];
  }

  return v9;
}

- (void)_commonInit
{
  v3 = [MEMORY[0x277CBEB18] array];
  brushStrokes = self->_brushStrokes;
  self->_brushStrokes = v3;

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
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

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
      v15 = [MEMORY[0x277D759A0] mainScreen];
      [v15 scale];
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
    v3 = [(GLKView *)&v5 snapshot];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  [(DKInkRendererGL *)self setDelegate:0];
  inkRenderer = self->_inkRenderer;
  self->_inkRenderer = 0;

  v6 = [MEMORY[0x277CD9388] currentContext];
  v7 = [(GLKView *)self context];

  if (v6 == v7)
  {
    [MEMORY[0x277CD9388] setCurrentContext:0];
  }

  v8.receiver = self;
  v8.super_class = DKInkRendererGL;
  [(GLKView *)&v8 dealloc];
}

- (void)beginStroke
{
  v3 = [MEMORY[0x277CBEB18] array];
  currentBrushStroke = self->_currentBrushStroke;
  self->_currentBrushStroke = v3;

  inkRenderer = self->_inkRenderer;

  [(DKOpenGLRenderer *)inkRenderer didBeginNewStroke];
}

- (void)addPoint:(id *)a3
{
  v4 = *&a3->var1;
  v6[0] = a3->var0;
  v6[1] = v4;
  var3 = a3->var3;
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
  v5 = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  [(DKOpenGLRenderer *)self->_inkRenderer resetRendererState];
  [MEMORY[0x277CD9388] setCurrentContext:v5];
}

- (void)completeAnimationsImmediately
{
  v5 = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  [(DKOpenGLRenderer *)self->_inkRenderer updateDryForcefully];
  [MEMORY[0x277CD9388] setCurrentContext:v5];
}

- (void)removeLastStroke
{
  v5 = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  [(NSMutableArray *)self->_brushStrokes removeLastObject];
  [(DKOpenGLRenderer *)self->_inkRenderer undo];
  [MEMORY[0x277CD9388] setCurrentContext:v5];
}

- (void)setInkColor:(id)a3
{
  objc_storeStrong(&self->_inkColor, a3);
  v5 = a3;
  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:?];
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(DKOpenGLRenderer *)self->_inkRenderer setUndoEnabled:a3 != 1];
  }
}

- (void)force
{
  v5 = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  [(DKOpenGLRenderer *)self->_inkRenderer setIgnoreFirstUndoItem:1];
  [(DKOpenGLRenderer *)self->_inkRenderer didBeginNewStroke];
  [(DKInkRendererGL *)self displayForcefully];
  [(DKOpenGLRenderer *)self->_inkRenderer didCompleteStroke];
  [MEMORY[0x277CD9388] setCurrentContext:v5];
}

- (void)flush
{
  v5 = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  glFlush();
  [MEMORY[0x277CD9388] setCurrentContext:v5];
}

- (void)display
{
  v4.receiver = self;
  v4.super_class = DKInkRendererGL;
  [(GLKView *)&v4 display];
  if (self->_needToNotify)
  {
    v3 = [(DKInkRendererGL *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 performSelector:sel_inkDidRender_ withObject:self afterDelay:0.0];
    }

    self->_needToNotify = 0;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DKInkRendererGL;
  [(DKInkRendererGL *)&v8 traitCollectionDidChange:v4];
  v5 = [(DKInkRendererGL *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(DKInkRendererGL *)self force];
  }
}

- (void)drawRect:(CGRect)a3
{
  v8 = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = MEMORY[0x277D75C80];
  v5 = [(DKInkRendererGL *)self traitCollection];
  v6 = [v4 traitCollectionWithUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];
  [v4 setCurrentTraitCollection:v6];

  +[DKGLUtilities setCurrentClearColor];
  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:self->_inkColor];
  glClear(0x4000u);
  v7 = [(NSMutableArray *)self->_brushPointQueue count];
  [(DKInkRendererGL *)self addPointsFromBrushPointQueueWithSegmentLength:[(NSMutableArray *)self->_brushPointQueue count]];
  [(DKOpenGLRenderer *)self->_inkRenderer update];
  [(DKOpenGLRenderer *)self->_inkRenderer draw];
  [MEMORY[0x277D75C80] setCurrentTraitCollection:v8];
  if (v7)
  {
    self->_needToNotify = 1;
  }
}

- (void)displayForcefully
{
  v9 = [MEMORY[0x277D75C80] currentTraitCollection];
  v3 = MEMORY[0x277D75C80];
  v4 = [(DKInkRendererGL *)self traitCollection];
  v5 = [v3 traitCollectionWithUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];
  [v3 setCurrentTraitCollection:v5];

  v6 = [MEMORY[0x277CD9388] currentContext];
  v7 = MEMORY[0x277CD9388];
  v8 = [(GLKView *)self context];
  [v7 setCurrentContext:v8];

  [(DKOpenGLRenderer *)self->_inkRenderer setInkColor:self->_inkColor];
  [(DKOpenGLRenderer *)self->_inkRenderer setDrawingEnabled:0];
  [(DKInkRendererGL *)self addPointsFromBrushPointQueueWithSegmentLength:25];
  [(DKOpenGLRenderer *)self->_inkRenderer setDrawingEnabled:1];
  [(DKOpenGLRenderer *)self->_inkRenderer redrawEntireDrawingImmediatelyWithLayeredBlending:1];
  self->_needToNotify = 1;
  [MEMORY[0x277CD9388] setCurrentContext:v6];
  [MEMORY[0x277D75C80] setCurrentTraitCollection:v9];
}

- (void)addPointsFromBrushPointQueueWithSegmentLength:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_brushPointQueue count])
  {
    inkRenderer = self->_inkRenderer;
    if (inkRenderer)
    {
      [(DKOpenGLRenderer *)inkRenderer addPoints:self->_brushPointQueue withSegmentLength:a3];
      brushPointQueue = self->_brushPointQueue;

      [(NSMutableArray *)brushPointQueue removeAllObjects];
    }
  }
}

- (void)teardown
{
  v5 = [MEMORY[0x277CD9388] currentContext];
  v3 = MEMORY[0x277CD9388];
  v4 = [(GLKView *)self context];
  [v3 setCurrentContext:v4];

  [(DKOpenGLRenderer *)self->_inkRenderer teardown];
  [(DKInkRendererGL *)self setDelegate:0];
  [MEMORY[0x277CD9388] setCurrentContext:v5];
}

- (void)rendererDidFinishAnimatingDrawing:(id)a3
{
  v4 = [(DKInkRendererGL *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 inkDidCompleteRender:self];
  }
}

- (DKInkRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
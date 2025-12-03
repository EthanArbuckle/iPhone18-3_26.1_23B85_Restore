@interface HKGraphTile
- (BOOL)hidden;
- (HKGraphTile)initWithParentView:(id)view graphViewTileThread:(id)thread;
- (HKGraphTileDrawingDelegate)drawingDelegate;
- (HKGraphViewTileThread)graphViewTileThread;
- (UIView)parentView;
- (id)_imageRendererForSize:(CGSize)size;
- (void)_handlePostRenderOperations;
- (void)configureTileWithScreenRect:(CGRect)rect column:(int64_t)column;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)prepareTileForReuse;
- (void)refreshTileContent;
- (void)renderTileInBackgroundWithRenderer:(id)renderer tileSize:(CGSize)size configurationChangedCounter:(int64_t)counter;
- (void)setHidden:(BOOL)hidden;
@end

@implementation HKGraphTile

- (HKGraphTile)initWithParentView:(id)view graphViewTileThread:(id)thread
{
  v21[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  threadCopy = thread;
  v19.receiver = self;
  v19.super_class = HKGraphTile;
  v8 = [(HKGraphTile *)&v19 init];
  if (v8)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v11 = v10;

    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    caLayer = v8->_caLayer;
    v8->_caLayer = v12;

    [(CALayer *)v8->_caLayer setContentsScale:v11];
    [(CALayer *)v8->_caLayer setAnchorPoint:0.0, 0.0];
    [(CALayer *)v8->_caLayer setOpaque:1];
    [(CALayer *)v8->_caLayer setDrawsAsynchronously:1];
    [(CALayer *)v8->_caLayer setDelegate:v8];
    [(CALayer *)v8->_caLayer setContents:0];
    [(CALayer *)v8->_caLayer setContentsFormat:*MEMORY[0x1E6979650]];
    v20 = @"contents";
    null = [MEMORY[0x1E695DFB0] null];
    v21[0] = null;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [(CALayer *)v8->_caLayer setActions:v15];

    layer = [viewCopy layer];
    [layer addSublayer:v8->_caLayer];

    objc_storeWeak(&v8->_graphViewTileThread, threadCopy);
    v8->_currentColumn = -1;
    v8->_tileDisplayedSinceSetNeedsDisplay = 0;
    v8->_configurationChangedCounter = 0;
    objc_storeWeak(&v8->_parentView, viewCopy);
    currentImageRenderer = v8->_currentImageRenderer;
    v8->_currentImageRenderer = 0;

    v8->_lastImageAssignmentTime = 0.0;
  }

  return v8;
}

- (void)dealloc
{
  currentImageRenderer = [(HKGraphTile *)self currentImageRenderer];
  [(HKGraphTile *)self lastImageAssignmentTime];
  [_HKGraphTileDelayedRendererReleaseManager handleDelayedRendererRelease:currentImageRenderer lastAssignmentTime:?];

  caLayer = [(HKGraphTile *)self caLayer];
  [caLayer setDelegate:0];

  v5.receiver = self;
  v5.super_class = HKGraphTile;
  [(HKGraphTile *)&v5 dealloc];
}

- (void)configureTileWithScreenRect:(CGRect)rect column:(int64_t)column
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  self->_currentColumn = column;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  [(CALayer *)self->_caLayer setBounds:0.0, 0.0, width, height];
  [(CALayer *)self->_caLayer setPosition:x, y];
  [MEMORY[0x1E6979518] commit];
  ++self->_configurationChangedCounter;

  [(HKGraphTile *)self refreshTileContent];
}

- (void)prepareTileForReuse
{
  self->_currentColumn = -1;
  [(HKGraphTile *)self setDrawingDelegate:0];
  ++self->_configurationChangedCounter;
}

- (BOOL)hidden
{
  caLayer = [(HKGraphTile *)self caLayer];
  isHidden = [caLayer isHidden];

  return isHidden;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  caLayer = [(HKGraphTile *)self caLayer];
  [caLayer setHidden:hiddenCopy];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (void)refreshTileContent
{
  self->_tileDisplayedSinceSetNeedsDisplay = 0;
  graphViewTileThread = [(HKGraphTile *)self graphViewTileThread];

  if (graphViewTileThread)
  {
    drawingDelegate = [(HKGraphTile *)self drawingDelegate];
    caLayer = [(HKGraphTile *)self caLayer];
    [caLayer frame];
    caLayer3 = [drawingDelegate createTileRendererWithTileRect:-[HKGraphTile currentColumn](self column:{"currentColumn"), v6, v7, v8, v9}];

    v10 = [_HKGraphTileBackgroundRenderingContext alloc];
    caLayer2 = [(HKGraphTile *)self caLayer];
    [caLayer2 bounds];
    v14 = [(_HKGraphTileBackgroundRenderingContext *)v10 initWithGraphTile:self graphViewRenderer:caLayer3 tileSize:[(HKGraphTile *)self configurationChangedCounter] configurationChangedCounter:v12, v13];

    graphViewTileThread2 = [(HKGraphTile *)self graphViewTileThread];
    [graphViewTileThread2 scheduleRedrawUsingRenderer:v14];
  }

  else
  {
    caLayer3 = [(HKGraphTile *)self caLayer];
    [caLayer3 setNeedsDisplay];
  }
}

- (id)_imageRendererForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  currentImageRenderer = [(HKGraphTile *)self currentImageRenderer];
  if (currentImageRenderer)
  {
    v7 = currentImageRenderer;
    currentImageRenderer2 = [(HKGraphTile *)self currentImageRenderer];
    [currentImageRenderer2 sizeInPoints];
    if (vabdd_f64(width, v9) <= 0.01)
    {
      currentImageRenderer3 = [(HKGraphTile *)self currentImageRenderer];
      [currentImageRenderer3 sizeInPoints];
      v12 = vabdd_f64(height, v11);

      if (v12 <= 0.01)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  currentImageRenderer4 = [(HKGraphTile *)self currentImageRenderer];

  if (currentImageRenderer4)
  {
    currentImageRenderer5 = [(HKGraphTile *)self currentImageRenderer];
    [(HKGraphTile *)self lastImageAssignmentTime];
    [_HKGraphTileDelayedRendererReleaseManager handleDelayedRendererRelease:currentImageRenderer5 lastAssignmentTime:?];

    [(HKGraphTile *)self setCurrentImageRenderer:0];
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v17 = v16;

  v18 = [[_HKGraphTileRenderToImage alloc] initWithSize:1 scale:width invertedYAxis:height, v17];
  [(HKGraphTile *)self setCurrentImageRenderer:v18];

LABEL_8:

  return [(HKGraphTile *)self currentImageRenderer];
}

- (void)renderTileInBackgroundWithRenderer:(id)renderer tileSize:(CGSize)size configurationChangedCounter:(int64_t)counter
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [HKGraphTile renderTileInBackgroundWithRenderer:a2 tileSize:self configurationChangedCounter:?];
  }

  if (height != 0.0 && width != 0.0)
  {
    height = [(HKGraphTile *)self _imageRendererForSize:width, height];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__HKGraphTile_renderTileInBackgroundWithRenderer_tileSize_configurationChangedCounter___block_invoke;
    v14[3] = &unk_1E81B5D10;
    v15 = rendererCopy;
    v12 = CFRetain([height drawToImage:v14]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__HKGraphTile_renderTileInBackgroundWithRenderer_tileSize_configurationChangedCounter___block_invoke_2;
    v13[3] = &unk_1E81B5D38;
    v13[4] = self;
    v13[5] = counter;
    v13[6] = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

uint64_t __87__HKGraphTile_renderTileInBackgroundWithRenderer_tileSize_configurationChangedCounter___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) configurationChangedCounter];
  if (result == *(a1 + 40))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) caLayer];
    [v4 setContents:v3];

    [*(a1 + 32) setLastImageAssignmentTime:CACurrentMediaTime()];
    CFRelease(*(a1 + 48));
    v5 = *(a1 + 32);

    return [v5 _handlePostRenderOperations];
  }

  return result;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [HKGraphTile drawLayer:a2 inContext:self];
  }

  drawingDelegate = [(HKGraphTile *)self drawingDelegate];
  caLayer = [(HKGraphTile *)self caLayer];
  [caLayer frame];
  v13 = [drawingDelegate createTileRendererWithTileRect:-[HKGraphTile currentColumn](self column:{"currentColumn"), v9, v10, v11, v12}];

  [v13 renderContentToContext:context];
  [(HKGraphTile *)self _handlePostRenderOperations];
}

- (void)_handlePostRenderOperations
{
  self->_tileDisplayedSinceSetNeedsDisplay = 1;
  drawingDelegate = [(HKGraphTile *)self drawingDelegate];
  [drawingDelegate tileRenderDidFinish];
}

- (HKGraphTileDrawingDelegate)drawingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingDelegate);

  return WeakRetained;
}

- (HKGraphViewTileThread)graphViewTileThread
{
  WeakRetained = objc_loadWeakRetained(&self->_graphViewTileThread);

  return WeakRetained;
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (void)renderTileInBackgroundWithRenderer:(uint64_t)a1 tileSize:(uint64_t)a2 configurationChangedCounter:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKGraphTile.m" lineNumber:191 description:@"HKGraphTile renderTileInBackgroundWithRenderer: is expected to be called from the background thread only"];
}

- (void)drawLayer:(uint64_t)a1 inContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKGraphTile.m" lineNumber:230 description:@"HKGraphTile drawLayer:inContext: should only be called from the main thread"];
}

@end
@interface CLKUIQuadView
+ (id)quadViewWithFrame:(CGRect)frame identifier:(id)identifier options:(unint64_t)options colorSpace:(int64_t)space;
- (BOOL)_sync_prepareAndRenderForTime:(double)time inGroup:(id)group checkForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity completion:(id)completion;
- (BOOL)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group completion:(id)completion;
- (CGSize)drawableSize;
- (CLKUIQuadView)initWithFrame:(CGRect)frame identifier:(id)identifier options:(unint64_t)options asyncRenderQueue:(id)queue;
- (CLKUIQuadViewDelegate)delegate;
- (void)_async_prepareAndRenderForTime:(double)time inGroup:(id)group checkForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity completion:(id)completion;
- (void)_prepareAndRenderForTime:(double)time inGroup:(id)group checkForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity completion:(id)completion;
- (void)_prerenderForTime:(double)time;
- (void)_runOnRenderQueueIfNeeded:(id)needed;
- (void)addQuad:(id)quad;
- (void)addQuadsFromArray:(id)array;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enumerateHierarchyObserversFromView:(id)view withBlock:(id)block;
- (void)removeAllQuads;
- (void)removeQuad:(id)quad;
- (void)setDebugIdentifier:(id)identifier;
- (void)setDelegate:(id)delegate;
- (void)willMoveToWindow:(id)window;
@end

@implementation CLKUIQuadView

+ (id)quadViewWithFrame:(CGRect)frame identifier:(id)identifier options:(unint64_t)options colorSpace:(int64_t)space
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  height = [[CLKUIMetalQuadView alloc] initWithFrame:identifierCopy identifier:options options:space colorSpace:x, y, width, height];

  return height;
}

- (void)_runOnRenderQueueIfNeeded:(id)needed
{
  asyncRenderQueue = self->_asyncRenderQueue;
  if (asyncRenderQueue)
  {
    neededCopy = needed;
    dispatch_assert_queue_not_V2(asyncRenderQueue);
    dispatch_sync(self->_asyncRenderQueue, neededCopy);
  }

  else
  {
    (*(needed + 2))(needed);
  }
}

- (BOOL)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group completion:(id)completion
{
  discardCopy = discard;
  v25 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  completionCopy = completion;
  [(NSCountedSet *)self->_disabledRenderingReasons count];
  kdebug_trace();
  if ([(NSCountedSet *)self->_disabledRenderingReasons count])
  {
    v10 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      debugIdentifier = self->_debugIdentifier;
      disabledRenderingReasons = self->_disabledRenderingReasons;
      *buf = 138412546;
      *&buf[4] = debugIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = disabledRenderingReasons;
      _os_log_impl(&dword_1E49C8000, v10, OS_LOG_TYPE_DEFAULT, "CLKUIQuadView (%@): Rendering disabled for reasons: %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    v13 = 0;
  }

  else
  {
    if (discardCopy)
    {
      [(CLKUIQuadView *)self discardContents];
    }

    v14 = CACurrentMediaTime();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    asyncRenderQueue = self->_asyncRenderQueue;
    if (asyncRenderQueue)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__CLKUIQuadView_renderSynchronouslyWithImageQueueDiscard_inGroup_completion___block_invoke;
      v17[3] = &unk_1E87626C0;
      v20 = buf;
      v17[4] = self;
      v21 = v14;
      v18 = groupCopy;
      v22 = discardCopy;
      v19 = completionCopy;
      dispatch_sync(asyncRenderQueue, v17);

      v13 = *(*&buf[8] + 24);
    }

    else
    {
      v13 = [(CLKUIQuadView *)self _sync_prepareAndRenderForTime:groupCopy inGroup:!discardCopy checkForDrawable:1 renderDiscontinuity:completionCopy completion:v14];
      *(*&buf[8] + 24) = v13;
    }

    _Block_object_dispose(buf, 8);
  }

  return v13 & 1;
}

uint64_t __77__CLKUIQuadView_renderSynchronouslyWithImageQueueDiscard_inGroup_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _sync_prepareAndRenderForTime:*(a1 + 40) inGroup:(*(a1 + 72) & 1) == 0 checkForDrawable:1 renderDiscontinuity:*(a1 + 48) completion:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (CLKUIQuadView)initWithFrame:(CGRect)frame identifier:(id)identifier options:(unint64_t)options asyncRenderQueue:(id)queue
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = CLKUIQuadView;
  height = [(CLKUIQuadView *)&v26 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = dispatch_semaphore_create(3);
    asyncSemaphore = height->_asyncSemaphore;
    height->_asyncSemaphore = v17;

    v19 = [[CLKUIQuadViewRenderCoordinator alloc] initWithQuadView:height synchronizeWithClockTimer:(options >> 2) & 1];
    renderCoordinator = height->_renderCoordinator;
    height->_renderCoordinator = v19;

    array = [MEMORY[0x1E695DF70] array];
    mutableQuads = height->_mutableQuads;
    height->_mutableQuads = array;

    v23 = objc_opt_new();
    disabledRenderingReasons = height->_disabledRenderingReasons;
    height->_disabledRenderingReasons = v23;

    objc_storeStrong(&height->_asyncRenderQueue, queue);
    objc_storeStrong(&height->_debugIdentifier, identifier);
  }

  return height;
}

- (void)dealloc
{
  [(CLKUIQuadViewRenderCoordinator *)self->_renderCoordinator invalidate];
  renderCoordinator = self->_renderCoordinator;
  self->_renderCoordinator = 0;

  [(CLKUIQuadView *)self removeAllQuads];
  v4.receiver = self;
  v4.super_class = CLKUIQuadView;
  [(CLKUIQuadView *)&v4 dealloc];
}

- (void)_prepareAndRenderForTime:(double)time inGroup:(id)group checkForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity completion:(id)completion
{
  if (self->_asyncRenderQueue)
  {
    [(CLKUIQuadView *)self _async_prepareAndRenderForTime:group inGroup:drawable checkForDrawable:discontinuity renderDiscontinuity:completion completion:time];
  }

  else
  {
    [(CLKUIQuadView *)self _sync_prepareAndRenderForTime:group inGroup:drawable checkForDrawable:discontinuity renderDiscontinuity:completion completion:time];
  }
}

- (void)_async_prepareAndRenderForTime:(double)time inGroup:(id)group checkForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  if (dispatch_semaphore_wait(self->_asyncSemaphore, 0))
  {
    asyncRenderQueue = self->_asyncRenderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__CLKUIQuadView__async_prepareAndRenderForTime_inGroup_checkForDrawable_renderDiscontinuity_completion___block_invoke_2;
    block[3] = &unk_1E8762710;
    block[4] = self;
    v20 = completionCopy;
    v15 = completionCopy;
    dispatch_async(asyncRenderQueue, block);
    v16 = v20;
  }

  else
  {
    v17 = self->_asyncRenderQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __104__CLKUIQuadView__async_prepareAndRenderForTime_inGroup_checkForDrawable_renderDiscontinuity_completion___block_invoke;
    v21[3] = &unk_1E87626E8;
    v21[4] = self;
    timeCopy = time;
    drawableCopy = drawable;
    discontinuityCopy = discontinuity;
    v22 = groupCopy;
    v23 = completionCopy;
    v18 = completionCopy;
    dispatch_async(v17, v21);

    v16 = v22;
  }
}

intptr_t __104__CLKUIQuadView__async_prepareAndRenderForTime_inGroup_checkForDrawable_renderDiscontinuity_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sync_prepareAndRenderForTime:*(a1 + 40) inGroup:*(a1 + 64) checkForDrawable:*(a1 + 65) renderDiscontinuity:*(a1 + 48) completion:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 464);

  return dispatch_semaphore_signal(v2);
}

intptr_t __104__CLKUIQuadView__async_prepareAndRenderForTime_inGroup_checkForDrawable_renderDiscontinuity_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 32) + 464);

  return dispatch_semaphore_signal(v3);
}

- (BOOL)_sync_prepareAndRenderForTime:(double)time inGroup:(id)group checkForDrawable:(BOOL)drawable renderDiscontinuity:(BOOL)discontinuity completion:(id)completion
{
  discontinuityCopy = discontinuity;
  drawableCopy = drawable;
  groupCopy = group;
  completionCopy = completion;
  asyncRenderQueue = self->_asyncRenderQueue;
  if (asyncRenderQueue)
  {
    dispatch_assert_queue_V2(asyncRenderQueue);
  }

  frameNum = self->_frameNum;
  if (groupCopy)
  {
    dispatch_group_enter(groupCopy);
  }

  debugId = self->_debugId;
  kdebug_trace();
  [(CLKUIQuadView *)self _prerenderForTime:time];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __103__CLKUIQuadView__sync_prepareAndRenderForTime_inGroup_checkForDrawable_renderDiscontinuity_completion___block_invoke;
  v21[3] = &unk_1E8762738;
  v22 = groupCopy;
  v23 = completionCopy;
  v24 = frameNum;
  v25 = debugId;
  v17 = groupCopy;
  v18 = completionCopy;
  v19 = [(CLKUIQuadView *)self _displayAndCheckForDrawable:drawableCopy renderDiscontinuity:discontinuityCopy withCompletion:v21];
  kdebug_trace();
  ++self->_frameNum;

  return v19;
}

uint64_t __103__CLKUIQuadView__sync_prepareAndRenderForTime_inGroup_checkForDrawable_renderDiscontinuity_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_group_leave(v3);
  }

  return kdebug_trace();
}

- (void)enumerateHierarchyObserversFromView:(id)view withBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v9 = viewCopy;
  v7 = v9;
  do
  {
    if (objc_opt_respondsToSelector())
    {
      blockCopy[2](blockCopy, v7);
    }

    superview = [v7 superview];

    v7 = superview;
  }

  while (superview);
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = CLKUIQuadView;
  [(CLKUIQuadView *)&v7 willMoveToWindow:window];
  superview = [(CLKUIQuadView *)self superview];

  if (superview)
  {
    superview2 = [(CLKUIQuadView *)self superview];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__CLKUIQuadView_willMoveToWindow___block_invoke;
    v6[3] = &unk_1E8762760;
    v6[4] = self;
    [(CLKUIQuadView *)self enumerateHierarchyObserversFromView:superview2 withBlock:v6];
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CLKUIQuadView;
  [(CLKUIQuadView *)&v6 didMoveToWindow];
  superview = [(CLKUIQuadView *)self superview];

  if (superview)
  {
    superview2 = [(CLKUIQuadView *)self superview];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__CLKUIQuadView_didMoveToWindow__block_invoke;
    v5[3] = &unk_1E8762760;
    v5[4] = self;
    [(CLKUIQuadView *)self enumerateHierarchyObserversFromView:superview2 withBlock:v5];
  }
}

- (CGSize)drawableSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)addQuad:(id)quad
{
  quadCopy = quad;
  [quadCopy setQuadView:self];
  [quadCopy setupForQuadView:self];
  [(NSMutableArray *)self->_mutableQuads addObject:quadCopy];

  mutableQuads = self->_mutableQuads;

  [(CLKUIQuadView *)self _handleQuadArrayChange:mutableQuads];
}

- (void)addQuadsFromArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setQuadView:self];
        [v9 setupForQuadView:self];
      }

      v6 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_mutableQuads addObjectsFromArray:arrayCopy];
  [(CLKUIQuadView *)self _handleQuadArrayChange:self->_mutableQuads];
}

- (void)removeQuad:(id)quad
{
  quadCopy = quad;
  [quadCopy purge];
  [quadCopy setQuadView:0];
  [(NSMutableArray *)self->_mutableQuads removeObject:quadCopy];

  mutableQuads = self->_mutableQuads;

  [(CLKUIQuadView *)self _handleQuadArrayChange:mutableQuads];
}

- (void)removeAllQuads
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_mutableQuads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 purge];
        [v8 setQuadView:0];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_mutableQuads removeAllObjects];
  [(CLKUIQuadView *)self _handleQuadArrayChange:self->_mutableQuads];
}

- (void)_prerenderForTime:(double)time
{
  if (*&self->_delegateRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained quadViewWillDisplay:self forTime:time];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)setDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy length];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (v5 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v5;
    }

    do
    {
      v8 |= [identifierCopy characterAtIndex:v7++] << v6;
      v6 += 8;
    }

    while (v9 != v7);
  }

  else
  {
    v8 = 0;
  }

  self->_debugId = v8;
  debugIdentifier = self->_debugIdentifier;
  self->_debugIdentifier = identifierCopy;
}

- (CLKUIQuadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
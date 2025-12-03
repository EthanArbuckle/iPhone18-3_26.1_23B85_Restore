@interface HKGraphViewTileThread
- (BOOL)_laterRenderingExists:(id)exists;
- (HKGraphView)graphView;
- (HKGraphViewTileThread)initWithGraphView:(id)view;
- (void)cancel;
- (void)main;
- (void)scheduleRedrawUsingRenderer:(id)renderer;
@end

@implementation HKGraphViewTileThread

- (HKGraphViewTileThread)initWithGraphView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = HKGraphViewTileThread;
  v5 = [(HKGraphViewTileThread *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    queueLock = v5->_queueLock;
    v5->_queueLock = v6;

    [(NSLock *)v5->_queueLock setName:@"HKGraphViewTileThreadLock"];
    v8 = dispatch_semaphore_create(0);
    queueSemaphore = v5->_queueSemaphore;
    v5->_queueSemaphore = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rendererQueue = v5->_rendererQueue;
    v5->_rendererQueue = v10;

    objc_storeWeak(&v5->_graphView, viewCopy);
  }

  return v5;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if (([(HKGraphViewTileThread *)self isCancelled]& 1) == 0)
  {
    do
    {
      v4 = objc_autoreleasePoolPush();
      queueSemaphore = [(HKGraphViewTileThread *)self queueSemaphore];
      dispatch_semaphore_wait(queueSemaphore, 0xFFFFFFFFFFFFFFFFLL);

      [(NSLock *)self->_queueLock lock];
      rendererQueue = [(HKGraphViewTileThread *)self rendererQueue];
      firstObject = [rendererQueue firstObject];

      if (firstObject)
      {
        rendererQueue2 = [(HKGraphViewTileThread *)self rendererQueue];
        [rendererQueue2 removeObjectAtIndex:0];

        if (![(HKGraphViewTileThread *)self _laterRenderingExists:firstObject])
        {
          [(NSLock *)self->_queueLock unlock];
          graphView = [(HKGraphViewTileThread *)self graphView];
          if (graphView)
          {
            [firstObject renderTileContent];
          }

          goto LABEL_9;
        }
      }

      [(NSLock *)self->_queueLock unlock];
LABEL_9:
      objc_autoreleasePoolPop(v4);
    }

    while (![(HKGraphViewTileThread *)self isCancelled]);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)_laterRenderingExists:(id)exists
{
  v15 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  rendererQueue = [(HKGraphViewTileThread *)self rendererQueue];
  v6 = [rendererQueue countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(rendererQueue);
        }

        if ([*(*(&v10 + 1) + 8 * i) sameForRendering:existsCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [rendererQueue countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)scheduleRedrawUsingRenderer:(id)renderer
{
  queueLock = self->_queueLock;
  rendererCopy = renderer;
  [(NSLock *)queueLock lock];
  rendererQueue = [(HKGraphViewTileThread *)self rendererQueue];
  [rendererQueue addObject:rendererCopy];

  [(NSLock *)self->_queueLock unlock];
  queueSemaphore = [(HKGraphViewTileThread *)self queueSemaphore];
  dispatch_semaphore_signal(queueSemaphore);
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = HKGraphViewTileThread;
  [(HKGraphViewTileThread *)&v4 cancel];
  queueSemaphore = [(HKGraphViewTileThread *)self queueSemaphore];
  dispatch_semaphore_signal(queueSemaphore);
}

- (HKGraphView)graphView
{
  WeakRetained = objc_loadWeakRetained(&self->_graphView);

  return WeakRetained;
}

@end
@interface HKGraphViewTileThread
- (BOOL)_laterRenderingExists:(id)a3;
- (HKGraphView)graphView;
- (HKGraphViewTileThread)initWithGraphView:(id)a3;
- (void)cancel;
- (void)main;
- (void)scheduleRedrawUsingRenderer:(id)a3;
@end

@implementation HKGraphViewTileThread

- (HKGraphViewTileThread)initWithGraphView:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_graphView, v4);
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
      v5 = [(HKGraphViewTileThread *)self queueSemaphore];
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

      [(NSLock *)self->_queueLock lock];
      v6 = [(HKGraphViewTileThread *)self rendererQueue];
      v7 = [v6 firstObject];

      if (v7)
      {
        v8 = [(HKGraphViewTileThread *)self rendererQueue];
        [v8 removeObjectAtIndex:0];

        if (![(HKGraphViewTileThread *)self _laterRenderingExists:v7])
        {
          [(NSLock *)self->_queueLock unlock];
          v9 = [(HKGraphViewTileThread *)self graphView];
          if (v9)
          {
            [v7 renderTileContent];
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

- (BOOL)_laterRenderingExists:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HKGraphViewTileThread *)self rendererQueue];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) sameForRendering:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)scheduleRedrawUsingRenderer:(id)a3
{
  queueLock = self->_queueLock;
  v5 = a3;
  [(NSLock *)queueLock lock];
  v6 = [(HKGraphViewTileThread *)self rendererQueue];
  [v6 addObject:v5];

  [(NSLock *)self->_queueLock unlock];
  v7 = [(HKGraphViewTileThread *)self queueSemaphore];
  dispatch_semaphore_signal(v7);
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = HKGraphViewTileThread;
  [(HKGraphViewTileThread *)&v4 cancel];
  v3 = [(HKGraphViewTileThread *)self queueSemaphore];
  dispatch_semaphore_signal(v3);
}

- (HKGraphView)graphView
{
  WeakRetained = objc_loadWeakRetained(&self->_graphView);

  return WeakRetained;
}

@end
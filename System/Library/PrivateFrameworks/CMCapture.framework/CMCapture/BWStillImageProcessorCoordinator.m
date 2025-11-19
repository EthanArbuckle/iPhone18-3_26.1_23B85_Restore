@interface BWStillImageProcessorCoordinator
- (BWStillImageProcessorCoordinator)initWithProcessorControllers:(id)a3;
- (NSSet)processorControllerNames;
- (id)controllerForType:(unint64_t)a3;
- (void)addController:(id)a3;
- (void)dealloc;
- (void)releaseControllers;
@end

@implementation BWStillImageProcessorCoordinator

- (BWStillImageProcessorCoordinator)initWithProcessorControllers:(id)a3
{
  v15.receiver = self;
  v15.super_class = BWStillImageProcessorCoordinator;
  v4 = [(BWStillImageProcessorCoordinator *)&v15 init];
  if (v4)
  {
    v4->_processorControllersByType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_processorControllersLock._os_unfair_lock_opaque = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(a3);
          }

          -[NSMutableDictionary setObject:forKeyedSubscript:](v4->_processorControllersByType, "setObject:forKeyedSubscript:", *(*(&v11 + 1) + 8 * v8), [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v11 + 1) + 8 * v8), "type")}]);
          ++v8;
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BWStillImageProcessorCoordinator *)self releaseControllers];
  v3.receiver = self;
  v3.super_class = BWStillImageProcessorCoordinator;
  [(BWStillImageProcessorCoordinator *)&v3 dealloc];
}

- (id)controllerForType:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_processorControllersLock);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_processorControllersByType, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]);
  os_unfair_lock_unlock(&self->_processorControllersLock);
  return v5;
}

- (void)addController:(id)a3
{
  os_unfair_lock_lock(&self->_processorControllersLock);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_processorControllersByType, "setObject:forKeyedSubscript:", a3, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "type")}]);

  os_unfair_lock_unlock(&self->_processorControllersLock);
}

- (NSSet)processorControllerNames
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_processorControllersLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableDictionary *)self->_processorControllersByType allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = objc_opt_class();
        [v3 addObject:NSStringFromClass(v10)];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_processorControllersLock);
  objc_autoreleasePoolPop(v4);
  return [v3 copy];
}

- (void)releaseControllers
{
  os_unfair_lock_lock(&self->_processorControllersLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_processorControllersByType allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_processorControllersByType objectForKeyedSubscript:v8];
        [objc_opt_class() description];
        FigCaptureCurrentProcessIsDeferredmediad();
        FigGetUpTimeNanoseconds();
        [(NSMutableDictionary *)self->_processorControllersByType removeObjectForKey:v8];
        FigGetUpTimeNanoseconds();
        FigCaptureCurrentProcessIsDeferredmediad();
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  self->_processorControllersByType = 0;
  os_unfair_lock_unlock(&self->_processorControllersLock);
}

@end
@interface IMStateCaptureRecentsBuffer
- (IMStateCaptureRecentsBuffer)initWithTitle:(id)title maximumNumberOfTrackedObjects:(unint64_t)objects queue:(id)queue;
- (void)dealloc;
- (void)promoteRecentObject:(id)object;
- (void)registerStateCaptureBlockWithQueue:(id)queue;
@end

@implementation IMStateCaptureRecentsBuffer

- (IMStateCaptureRecentsBuffer)initWithTitle:(id)title maximumNumberOfTrackedObjects:(unint64_t)objects queue:(id)queue
{
  titleCopy = title;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = IMStateCaptureRecentsBuffer;
  v10 = [(IMStateCaptureRecentsBuffer *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objectsCopy = 5;
    if (objects < 5)
    {
      objectsCopy = objects;
    }

    v10->_maximumNumberOfTrackedObjects = objectsCopy;
    v13 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    trackedObjects = v11->_trackedObjects;
    v11->_trackedObjects = v13;

    v11->_handles = malloc_type_calloc(v11->_maximumNumberOfTrackedObjects, 8uLL, 0x100004000313F17uLL);
    v15 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v15;

    [(IMStateCaptureRecentsBuffer *)v11 registerStateCaptureBlockWithQueue:queueCopy];
  }

  return v11;
}

- (void)dealloc
{
  handles = self->_handles;
  if (handles)
  {
    maximumNumberOfTrackedObjects = self->_maximumNumberOfTrackedObjects;
    if (maximumNumberOfTrackedObjects)
    {
      for (i = 0; i < maximumNumberOfTrackedObjects; ++i)
      {
        if (self->_handles[i])
        {
          os_state_remove_handler();
          maximumNumberOfTrackedObjects = self->_maximumNumberOfTrackedObjects;
        }
      }

      handles = self->_handles;
    }

    free(handles);
  }

  v6.receiver = self;
  v6.super_class = IMStateCaptureRecentsBuffer;
  [(IMStateCaptureRecentsBuffer *)&v6 dealloc];
}

- (void)promoteRecentObject:(id)object
{
  [(NSPointerArray *)self->_trackedObjects insertPointer:object atIndex:self->_nextInsertionIndex];
  nextInsertionIndex = self->_nextInsertionIndex;
  if (self->_maximumNumberOfTrackedObjects != 1)
  {
    ++nextInsertionIndex;
  }

  self->_nextInsertionIndex = nextInsertionIndex;
}

- (void)registerStateCaptureBlockWithQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy || (dispatch_get_global_queue(-32768, 0), (queueCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = queueCopy;
    objc_initWeak(&location, self);
    if (self->_maximumNumberOfTrackedObjects)
    {
      v6 = 0;
      do
      {
        objc_copyWeak(&v7, &location);
        v8 = v6;
        self->_handles[v6] = os_state_add_handler();
        objc_destroyWeak(&v7);
        ++v6;
      }

      while (self->_maximumNumberOfTrackedObjects > v6);
    }

    objc_destroyWeak(&location);
  }
}

@end
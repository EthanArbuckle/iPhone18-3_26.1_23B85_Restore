@interface IMStateCaptureRecentsBuffer
- (IMStateCaptureRecentsBuffer)initWithTitle:(id)a3 maximumNumberOfTrackedObjects:(unint64_t)a4 queue:(id)a5;
- (void)dealloc;
- (void)promoteRecentObject:(id)a3;
- (void)registerStateCaptureBlockWithQueue:(id)a3;
@end

@implementation IMStateCaptureRecentsBuffer

- (IMStateCaptureRecentsBuffer)initWithTitle:(id)a3 maximumNumberOfTrackedObjects:(unint64_t)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = IMStateCaptureRecentsBuffer;
  v10 = [(IMStateCaptureRecentsBuffer *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v12 = 5;
    if (a4 < 5)
    {
      v12 = a4;
    }

    v10->_maximumNumberOfTrackedObjects = v12;
    v13 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    trackedObjects = v11->_trackedObjects;
    v11->_trackedObjects = v13;

    v11->_handles = malloc_type_calloc(v11->_maximumNumberOfTrackedObjects, 8uLL, 0x100004000313F17uLL);
    v15 = [v8 copy];
    title = v11->_title;
    v11->_title = v15;

    [(IMStateCaptureRecentsBuffer *)v11 registerStateCaptureBlockWithQueue:v9];
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

- (void)promoteRecentObject:(id)a3
{
  [(NSPointerArray *)self->_trackedObjects insertPointer:a3 atIndex:self->_nextInsertionIndex];
  nextInsertionIndex = self->_nextInsertionIndex;
  if (self->_maximumNumberOfTrackedObjects != 1)
  {
    ++nextInsertionIndex;
  }

  self->_nextInsertionIndex = nextInsertionIndex;
}

- (void)registerStateCaptureBlockWithQueue:(id)a3
{
  v4 = a3;
  if (v4 || (dispatch_get_global_queue(-32768, 0), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
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
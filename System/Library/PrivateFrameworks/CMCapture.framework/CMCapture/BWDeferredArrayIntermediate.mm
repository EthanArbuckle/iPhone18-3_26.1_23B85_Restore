@interface BWDeferredArrayIntermediate
- (BWDeferredArrayIntermediate)initWithArray:(id)array tag:(id)tag URL:(id)l;
- (BWDeferredArrayIntermediate)initWithCoder:(id)coder;
- (id)archive:(int *)archive;
- (id)description;
- (id)fetchWithCustomClassesAndRetain:(id)retain err:(int *)err;
- (int)flush;
- (int)setArchive:(id)archive;
- (int)setURL:(id)l prefetchQueue:(id)queue;
- (uint64_t)flush;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredArrayIntermediate

- (BWDeferredArrayIntermediate)initWithArray:(id)array tag:(id)tag URL:(id)l
{
  if (array)
  {
    v8.receiver = self;
    v8.super_class = BWDeferredArrayIntermediate;
    v6 = [(BWDeferredIntermediate *)&v8 initWithTag:tag URL:l];
    if (v6)
    {
      v6->_array = array;
    }
  }

  else
  {
    [BWDeferredArrayIntermediate initWithArray:? tag:? URL:?];
    return 0;
  }

  return v6;
}

- (BWDeferredArrayIntermediate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BWDeferredArrayIntermediate;
  return [(BWDeferredIntermediate *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BWDeferredArrayIntermediate;
  [(BWDeferredIntermediate *)&v3 encodeWithCoder:coder];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredArrayIntermediate;
  [(BWDeferredDataIntermediate *)&v3 dealloc];
}

- (int)setURL:(id)l prefetchQueue:(id)queue
{
  pthread_mutex_lock(&self->super.super._lock);
  if (self->_array)
  {
    [BWDeferredArrayIntermediate setURL:prefetchQueue:];
    v7 = -16135;
  }

  else
  {
    [(BWDeferredDataIntermediate *)self _setURL:l prefetchQueue:queue];
    v7 = 0;
  }

  pthread_mutex_unlock(&self->super.super._lock);
  return v7;
}

- (int)setArchive:(id)archive
{
  pthread_mutex_lock(&self->super.super._lock);
  if (self->_array)
  {
    [BWDeferredArrayIntermediate setArchive:];
LABEL_9:
    v6 = -16135;
    goto LABEL_5;
  }

  if (self->super._archive)
  {
    [BWDeferredArrayIntermediate setArchive:];
    goto LABEL_9;
  }

  if (self->super.super._URL)
  {
    [BWDeferredArrayIntermediate setArchive:];
    goto LABEL_9;
  }

  v5 = [archive copy];
  v6 = 0;
  self->super._archive = v5;
LABEL_5:
  pthread_mutex_unlock(&self->super.super._lock);
  return v6;
}

- (id)fetchWithCustomClassesAndRetain:(id)retain err:(int *)err
{
  v13 = 0;
  pthread_mutex_lock(&self->super.super._lock);
  if (self->_array)
  {
    goto LABEL_7;
  }

  if (self->super.super._prefetching)
  {
    pthread_cond_wait(&self->super.super._cv, &self->super.super._lock);
  }

  v7 = [BWDeferredContainer buildArchiveClasses:retain];
  archive = self->super._archive;
  if (archive)
  {
    self->_array = [BWDeferredContainer unarchiveObject:archive classes:v7 error:&v13];

    self->super._archive = 0;
  }

  else
  {
    URL = self->super.super._URL;
    if (URL)
    {
      v12 = [BWDeferredContainer unarchiveObjectWithURL:URL classes:v7 error:&v13];
      self->_array = v12;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  if (self->_array)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

LABEL_13:
  if (v13)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@" due to error: %@", objc_msgSend(v13, "description")];
  }

  v9 = -16134;
LABEL_8:
  pthread_mutex_unlock(&self->super.super._lock);
  if (err)
  {
    *err = v9;
  }

  return self->_array;
}

- (id)archive:(int *)archive
{
  v10 = 0;
  pthread_mutex_lock(&self->super.super._lock);
  array = self->_array;
  if (array)
  {
    if ([BWDeferredContainer archiveObject:array error:&v10])
    {
      v6 = _CFXPCCreateXPCObjectFromCFObject();
      v7 = v6;
      if (v6)
      {
        CFAutorelease(v6);
        v8 = 0;
      }

      else
      {
        [BWDeferredArrayIntermediate archive:];
        v8 = -16133;
      }
    }

    else
    {
      [(BWDeferredArrayIntermediate *)&v10 archive:?];
      v7 = 0;
      v8 = v11;
    }
  }

  else
  {
    [BWDeferredArrayIntermediate archive:];
    v7 = 0;
    v8 = -16136;
  }

  pthread_mutex_unlock(&self->super.super._lock);
  if (archive)
  {
    *archive = v8;
  }

  return v7;
}

- (int)flush
{
  v5 = 0;
  pthread_mutex_lock(&self->super.super._lock);
  if (!self->super.super._URL)
  {
    [BWDeferredArrayIntermediate flush];
    goto LABEL_11;
  }

  if (!self->_array)
  {
    if (!self->super.super._dirty)
    {
      goto LABEL_7;
    }

    [BWDeferredArrayIntermediate flush];
LABEL_11:
    v3 = -16136;
    goto LABEL_8;
  }

  if (!self->super.super._dirty)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if ([BWDeferredContainer archiveObjectWithURL:"archiveObjectWithURL:object:error:" object:v5 error:?])
  {

    v3 = 0;
    self->_array = 0;
    self->super.super._dirty = 0;
  }

  else
  {
    [(BWDeferredArrayIntermediate *)&v5 flush];
    v3 = v6;
  }

LABEL_8:
  pthread_mutex_unlock(&self->super.super._lock);
  return v3;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSArray *)self->_array description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@..."], -[NSString substringToIndex:](v5, "substringToIndex:", 512));
  }

  [string appendFormat:@"<%@ %p>: tag:%@ array:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), v5];
  objc_autoreleasePoolPop(v4);
  v6 = [string copy];

  return v6;
}

- (void)initWithArray:(void *)a1 tag:URL:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

- (uint64_t)archive:(id *)a1 .cold.2(id *a1, _DWORD *a2)
{
  LODWORD(v6) = 0;
  FigDebugAssert3();
  [*a1 code];
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

- (uint64_t)flush
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = [*self code];
  *a2 = result;
  return result;
}

@end
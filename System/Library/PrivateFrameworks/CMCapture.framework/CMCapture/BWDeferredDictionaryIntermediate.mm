@interface BWDeferredDictionaryIntermediate
- (BWDeferredDictionaryIntermediate)initWithCoder:(id)coder;
- (BWDeferredDictionaryIntermediate)initWithDictionary:(id)dictionary tag:(id)tag URL:(id)l;
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

@implementation BWDeferredDictionaryIntermediate

- (BWDeferredDictionaryIntermediate)initWithDictionary:(id)dictionary tag:(id)tag URL:(id)l
{
  if (dictionary)
  {
    v8.receiver = self;
    v8.super_class = BWDeferredDictionaryIntermediate;
    v6 = [(BWDeferredIntermediate *)&v8 initWithTag:tag URL:l];
    if (v6)
    {
      v6->_dictionary = dictionary;
    }
  }

  else
  {
    [BWDeferredDictionaryIntermediate initWithDictionary:? tag:? URL:?];
    return 0;
  }

  return v6;
}

- (BWDeferredDictionaryIntermediate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BWDeferredDictionaryIntermediate;
  return [(BWDeferredIntermediate *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BWDeferredDictionaryIntermediate;
  [(BWDeferredIntermediate *)&v3 encodeWithCoder:coder];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredDictionaryIntermediate;
  [(BWDeferredDataIntermediate *)&v3 dealloc];
}

- (int)setURL:(id)l prefetchQueue:(id)queue
{
  pthread_mutex_lock(&self->super.super._lock);
  if (self->_dictionary)
  {
    [BWDeferredDictionaryIntermediate setURL:prefetchQueue:];
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
  if (self->_dictionary)
  {
    [BWDeferredDictionaryIntermediate setArchive:];
LABEL_9:
    v6 = -16135;
    goto LABEL_5;
  }

  if (self->super._archive)
  {
    [BWDeferredDictionaryIntermediate setArchive:];
    goto LABEL_9;
  }

  if (self->super.super._URL)
  {
    [BWDeferredDictionaryIntermediate setArchive:];
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
  if (self->_dictionary)
  {
    goto LABEL_7;
  }

  v7 = [BWDeferredContainer buildArchiveClasses:retain];
  if (self->super.super._prefetching)
  {
    pthread_cond_wait(&self->super.super._cv, &self->super.super._lock);
  }

  archive = self->super._archive;
  if (archive)
  {
    self->_dictionary = [BWDeferredContainer unarchiveObject:archive classes:v7 error:&v13];

    self->super._archive = 0;
  }

  else
  {
    URL = self->super.super._URL;
    if (URL)
    {
      v12 = [BWDeferredContainer unarchiveObjectWithURL:URL classes:v7 error:&v13];
      self->_dictionary = v12;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  if (self->_dictionary)
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

  return self->_dictionary;
}

- (id)archive:(int *)archive
{
  v10 = 0;
  pthread_mutex_lock(&self->super.super._lock);
  dictionary = self->_dictionary;
  if (dictionary)
  {
    if ([BWDeferredContainer archiveObject:dictionary error:&v10])
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
        [BWDeferredDictionaryIntermediate archive:];
        v8 = -16133;
      }
    }

    else
    {
      [(BWDeferredDictionaryIntermediate *)&v10 archive:?];
      v7 = 0;
      v8 = v11;
    }
  }

  else
  {
    [BWDeferredDictionaryIntermediate archive:];
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
    [BWDeferredDictionaryIntermediate flush];
    goto LABEL_11;
  }

  if (!self->_dictionary)
  {
    if (!self->super.super._dirty)
    {
      goto LABEL_7;
    }

    [BWDeferredDictionaryIntermediate flush];
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
    self->_dictionary = 0;
    self->super.super._dirty = 0;
  }

  else
  {
    [(BWDeferredDictionaryIntermediate *)&v5 flush];
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
  v5 = [(NSDictionary *)self->_dictionary description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...}", -[NSString substringToIndex:](v5, "substringToIndex:", 512)];
  }

  [string appendFormat:@"<%@ %p>: tag:%@ dictionary:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), v5];
  objc_autoreleasePoolPop(v4);
  v6 = [string copy];

  return v6;
}

- (void)initWithDictionary:(void *)a1 tag:URL:.cold.1(void *a1)
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
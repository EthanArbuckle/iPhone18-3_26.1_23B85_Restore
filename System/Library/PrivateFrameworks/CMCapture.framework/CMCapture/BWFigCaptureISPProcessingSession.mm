@interface BWFigCaptureISPProcessingSession
+ (void)initialize;
- (BWFigCaptureISPProcessingSession)initWithFigCaptureISPProcessingSession:(OpaqueFigCaptureISPProcessingSession *)a3 type:(int)a4;
- (id)copyProperty:(__CFString *)a3 error:(int *)a4;
- (id)getProperty:(__CFString *)a3 error:(int *)a4;
- (int)flush;
- (int)invalidate;
- (int)prepareWithHandler:(id)a3;
- (int)processBuffer:(__CVBuffer *)a3 refCon:(void *)a4 outputDescriptors:(id *)a5 numOutputDescriptors:(int)a6 parameters:(id)a7;
- (int)setProperty:(__CFString *)a3 value:(id)a4;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation BWFigCaptureISPProcessingSession

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = *off_1E798A2C8;
    sCacheableProperties_0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v2 count:1];
  }
}

- (BWFigCaptureISPProcessingSession)initWithFigCaptureISPProcessingSession:(OpaqueFigCaptureISPProcessingSession *)a3 type:(int)a4
{
  v4 = self;
  v10 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

  v9.receiver = self;
  v9.super_class = BWFigCaptureISPProcessingSession;
  v7 = [(BWFigCaptureISPProcessingSession *)&v9 init];
  v4 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_cachedProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_session = CFRetain(a3);
    v4->_type = a4;
    v4->_supportedProperties = [(BWFigCaptureISPProcessingSession *)v4 copyProperty:*off_1E798A2C8 error:&v10];
    if (v10)
    {
      [BWFigCaptureISPProcessingSession initWithFigCaptureISPProcessingSession:type:];
LABEL_6:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BWFigCaptureISPProcessingSession *)self invalidate];
  session = self->_session;
  if (session)
  {
    CFRelease(session);
  }

  v4.receiver = self;
  v4.super_class = BWFigCaptureISPProcessingSession;
  [(BWFigCaptureISPProcessingSession *)&v4 dealloc];
}

- (int)setProperty:(__CFString *)a3 value:(id)a4
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v7 = -12785;
    goto LABEL_10;
  }

  if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_cachedProperties objectForKeyedSubscript:{a3), "isEqual:", a4}])
  {
LABEL_4:
    v7 = 0;
    goto LABEL_10;
  }

  session = self->_session;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    v7 = -12782;
    goto LABEL_10;
  }

  v7 = v9(session, a3, a4);
  if (!v7)
  {
    if ([sCacheableProperties_0 containsObject:a3])
    {
      [(NSMutableDictionary *)self->_cachedProperties setObject:a4 forKeyedSubscript:a3];
    }

    goto LABEL_4;
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)copyProperty:(__CFString *)a3 error:(int *)a4
{
  v11 = 0;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v7 = -12785;
    goto LABEL_10;
  }

  v11 = [(NSMutableDictionary *)self->_cachedProperties objectForKeyedSubscript:a3];
  if (v11)
  {
    goto LABEL_4;
  }

  session = self->_session;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v7 = v9(session, a3, *MEMORY[0x1E695E480], &v11);
    if (!v7)
    {
      if ([sCacheableProperties_0 containsObject:a3])
      {
        [(NSMutableDictionary *)self->_cachedProperties setObject:v11 forKeyedSubscript:a3];
      }

LABEL_4:
      v7 = 0;
    }
  }

  else
  {
    v7 = -12782;
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  if (a4)
  {
    *a4 = v7;
  }

  return v11;
}

- (id)getProperty:(__CFString *)a3 error:(int *)a4
{
  v4 = [(BWFigCaptureISPProcessingSession *)self copyProperty:a3 error:a4];

  return v4;
}

- (int)prepareWithHandler:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v5 = -12785;
  }

  else
  {
    session = self->_session;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v5 = v7(session, a3);
    }

    else
    {
      v5 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int)processBuffer:(__CVBuffer *)a3 refCon:(void *)a4 outputDescriptors:(id *)a5 numOutputDescriptors:(int)a6 parameters:(id)a7
{
  v8 = *&a6;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v13 = -12785;
  }

  else
  {
    session = self->_session;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      v13 = v15(session, a4, a3, v8, a5, a7);
    }

    else
    {
      v13 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v13;
}

- (int)flush
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v3 = -12785;
  }

  else
  {
    session = self->_session;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v3 = v5(session);
    }

    else
    {
      v3 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    return 0;
  }

  else
  {
    session = self->_session;
    if (session)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v3 = v5(session);
      }

      else
      {
        v3 = -12782;
      }
    }

    else
    {
      v3 = -12780;
    }

    self->_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
    [(BWFigCaptureISPProcessingSessionDelegate *)self->_delegate processingSessionHasBeenInvalidated:self];
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_delegate = a3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end
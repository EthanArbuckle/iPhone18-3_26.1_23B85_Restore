@interface BWFigCaptureISPProcessingSession
+ (void)initialize;
- (BWFigCaptureISPProcessingSession)initWithFigCaptureISPProcessingSession:(OpaqueFigCaptureISPProcessingSession *)session type:(int)type;
- (id)copyProperty:(__CFString *)property error:(int *)error;
- (id)getProperty:(__CFString *)property error:(int *)error;
- (int)flush;
- (int)invalidate;
- (int)prepareWithHandler:(id)handler;
- (int)processBuffer:(__CVBuffer *)buffer refCon:(void *)con outputDescriptors:(id *)descriptors numOutputDescriptors:(int)outputDescriptors parameters:(id)parameters;
- (int)setProperty:(__CFString *)property value:(id)value;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation BWFigCaptureISPProcessingSession

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = *off_1E798A2C8;
    sCacheableProperties_0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v2 count:1];
  }
}

- (BWFigCaptureISPProcessingSession)initWithFigCaptureISPProcessingSession:(OpaqueFigCaptureISPProcessingSession *)session type:(int)type
{
  selfCopy = self;
  v10 = 0;
  if (!session)
  {
    goto LABEL_6;
  }

  v9.receiver = self;
  v9.super_class = BWFigCaptureISPProcessingSession;
  v7 = [(BWFigCaptureISPProcessingSession *)&v9 init];
  selfCopy = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_cachedProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_session = CFRetain(session);
    selfCopy->_type = type;
    selfCopy->_supportedProperties = [(BWFigCaptureISPProcessingSession *)selfCopy copyProperty:*off_1E798A2C8 error:&v10];
    if (v10)
    {
      [BWFigCaptureISPProcessingSession initWithFigCaptureISPProcessingSession:type:];
LABEL_6:

      return 0;
    }
  }

  return selfCopy;
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

- (int)setProperty:(__CFString *)property value:(id)value
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v7 = -12785;
    goto LABEL_10;
  }

  if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_cachedProperties objectForKeyedSubscript:{property), "isEqual:", value}])
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

  v7 = v9(session, property, value);
  if (!v7)
  {
    if ([sCacheableProperties_0 containsObject:property])
    {
      [(NSMutableDictionary *)self->_cachedProperties setObject:value forKeyedSubscript:property];
    }

    goto LABEL_4;
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)copyProperty:(__CFString *)property error:(int *)error
{
  v11 = 0;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v7 = -12785;
    goto LABEL_10;
  }

  v11 = [(NSMutableDictionary *)self->_cachedProperties objectForKeyedSubscript:property];
  if (v11)
  {
    goto LABEL_4;
  }

  session = self->_session;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v7 = v9(session, property, *MEMORY[0x1E695E480], &v11);
    if (!v7)
    {
      if ([sCacheableProperties_0 containsObject:property])
      {
        [(NSMutableDictionary *)self->_cachedProperties setObject:v11 forKeyedSubscript:property];
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
  if (error)
  {
    *error = v7;
  }

  return v11;
}

- (id)getProperty:(__CFString *)property error:(int *)error
{
  v4 = [(BWFigCaptureISPProcessingSession *)self copyProperty:property error:error];

  return v4;
}

- (int)prepareWithHandler:(id)handler
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
      v5 = v7(session, handler);
    }

    else
    {
      v5 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int)processBuffer:(__CVBuffer *)buffer refCon:(void *)con outputDescriptors:(id *)descriptors numOutputDescriptors:(int)outputDescriptors parameters:(id)parameters
{
  v8 = *&outputDescriptors;
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
      v13 = v15(session, con, buffer, v8, descriptors, parameters);
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

- (void)setDelegate:(id)delegate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_delegate = delegate;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end
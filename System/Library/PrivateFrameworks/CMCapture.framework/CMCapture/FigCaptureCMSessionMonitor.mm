@interface FigCaptureCMSessionMonitor
- (FigCaptureCMSessionMonitor)initWithCMSession:(opaqueCMSession *)session clientPID:(int)d observer:(id)observer;
- (id)_initWithFigCaptureCMSession:(id)session clientPID:(int)d observer:(id)observer;
- (id)description;
- (uint64_t)_beginMonitoring;
- (uint64_t)_endMonitoring;
- (void)_handleBKSApplicationStateChange:(uint64_t)change;
- (void)_handleCMSessionNotification:(uint64_t)notification;
- (void)_updateApplicationState;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FigCaptureCMSessionMonitor

- (id)_initWithFigCaptureCMSession:(id)session clientPID:(int)d observer:(id)observer
{
  v6 = *&d;
  v11.receiver = self;
  v11.super_class = FigCaptureCMSessionMonitor;
  v8 = [(FigCaptureCMSessionMonitor *)&v11 init];
  if (v8)
  {
    v8->_lock = FigSimpleMutexCreate();
    sessionCopy = session;
    v8->_session = sessionCopy;
    v8->_clientPID = v6;
    if (-[FigCaptureCMSession setProperty:value:](sessionCopy, "setProperty:value:", *MEMORY[0x1E69AFD90], [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", v6]))
    {
      [FigCaptureCMSessionMonitor _initWithFigCaptureCMSession:clientPID:observer:];
    }

    else
    {
      if (!-[FigCaptureCMSession setProperty:value:](v8->_session, "setProperty:value:", *MEMORY[0x1E69AFDA8], [MEMORY[0x1E696AD98] numberWithInt:v8->_clientPID]))
      {
        v8->_observer = observer;
        [(FigCaptureCMSessionMonitor *)v8 _beginMonitoring];
        return v8;
      }

      [FigCaptureCMSessionMonitor _initWithFigCaptureCMSession:clientPID:observer:];
    }

    return 0;
  }

  return v8;
}

- (FigCaptureCMSessionMonitor)initWithCMSession:(opaqueCMSession *)session clientPID:(int)d observer:(id)observer
{
  v6 = *&d;
  if (!session && CMSessionCreate())
  {
    [FigCaptureCMSessionMonitor initWithCMSession:clientPID:observer:];
    v10 = 0;
  }

  else
  {
    v9 = [[FigCaptureCMSession alloc] initWithCMSession:session];
    self = [(FigCaptureCMSessionMonitor *)self _initWithFigCaptureCMSession:v9 clientPID:v6 observer:observer];

    if (session)
    {
      return self;
    }

    v10 = 1;
  }

  if (session)
  {
    CFRelease(session);
  }

  if ((v10 & 1) == 0)
  {

    return 0;
  }

  return self;
}

- (void)invalidate
{
  FigSimpleMutexLock();
  if (!self->_invalidated)
  {
    [(FigCaptureCMSessionMonitor *)self _endMonitoring];
    self->_invalidated = 1;
  }

  FigSimpleMutexUnlock();
}

- (void)dealloc
{
  [(FigCaptureCMSessionMonitor *)self invalidate];

  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigCaptureCMSessionMonitor;
  [(FigCaptureCMSessionMonitor *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureCMSessionMonitor debugDescription](self, "debugDescription")];
}

void __46__FigCaptureCMSessionMonitor__beginMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  [(FigCaptureCMSessionMonitor *)v5 _handleCMSessionNotification:a2];

  objc_autoreleasePoolPop(v4);
}

- (uint64_t)_beginMonitoring
{
  if (result)
  {
    v1 = result;
    [FigWeakReference weakReferenceToObject:result];
    [MEMORY[0x1E696AD88] defaultCenter];
    cmsession = [*(v1 + 16) cmsession];
    *(v1 + 40) = OUTLINED_FUNCTION_2_17(cmsession, v3);
    [(FigCaptureCMSessionMonitor *)v1 _updateApplicationState];
    [MEMORY[0x1E696AD88] defaultCenter];
    cmsession2 = [*(v1 + 16) cmsession];
    result = OUTLINED_FUNCTION_2_17(cmsession2, v5);
    *(v1 + 48) = result;
  }

  return result;
}

- (uint64_t)_endMonitoring
{
  if (result)
  {
    v1 = result;
    if (*(result + 40))
    {
      result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      *(v1 + 40) = 0;
    }

    if (*(v1 + 48))
    {
      result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      *(v1 + 48) = 0;
    }
  }

  return result;
}

- (void)_handleCMSessionNotification:(uint64_t)notification
{
  if (!notification)
  {
    return;
  }

  FigSimpleMutexLock();
  v4 = *(notification + 56);
  FigSimpleMutexUnlock();
  if (v4 == 1)
  {
    goto LABEL_18;
  }

  name = [a2 name];
  if ([name isEqualToString:*MEMORY[0x1E69AFB80]])
  {
    userInfo = [a2 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69AF9E0]];
    if (v7)
    {
      intValue = [v7 intValue];
      if (intValue == 1)
      {
        v14 = *(notification + 32);

        [v14 cmsessionMonitorDidEndAudioInterruption:notification];
      }

      else if (!intValue)
      {
        v9 = *(notification + 32);

        [v9 cmsessionMonitorDidBeginAudioInterruption:notification];
      }

      return;
    }

LABEL_18:
    OUTLINED_FUNCTION_0_3();
    FigDebugAssert3();
    return;
  }

  name2 = [a2 name];
  if (![name2 isEqualToString:*MEMORY[0x1E69AFB00]])
  {
    return;
  }

  userInfo2 = [a2 userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69AFA50]];
  if (!v12)
  {
    goto LABEL_18;
  }

  unsignedIntValue = [v12 unsignedIntValue];

  [(FigCaptureCMSessionMonitor *)notification _handleBKSApplicationStateChange:unsignedIntValue];
}

- (void)_updateApplicationState
{
  if (self)
  {
    v4 = 0;
    v2 = [*(self + 16) copyProperty:*MEMORY[0x1E69AFCA0] error:&v4];
    v3 = v2;
    if (v4)
    {
      FigDebugAssert3();
    }

    else
    {
      -[FigCaptureCMSessionMonitor _handleBKSApplicationStateChange:](self, [v2 unsignedIntValue]);
    }
  }
}

- (void)_handleBKSApplicationStateChange:(uint64_t)change
{
  if (change)
  {
    v6 = 0;
    v4 = [*(change + 16) copyProperty:*MEMORY[0x1E69B0190] error:&v6];
    v5 = v4;
    if (v6)
    {
      FigDebugAssert3();
    }

    else
    {
      [*(change + 32) cmsessionMonitor:change didUpdateApplicationState:a2 pidToInheritApplicationStateFrom:{objc_msgSend(v4, "intValue")}];
    }
  }
}

@end
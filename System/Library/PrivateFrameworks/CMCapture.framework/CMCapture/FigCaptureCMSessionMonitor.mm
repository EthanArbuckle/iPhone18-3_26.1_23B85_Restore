@interface FigCaptureCMSessionMonitor
- (FigCaptureCMSessionMonitor)initWithCMSession:(opaqueCMSession *)a3 clientPID:(int)a4 observer:(id)a5;
- (id)_initWithFigCaptureCMSession:(id)a3 clientPID:(int)a4 observer:(id)a5;
- (id)description;
- (uint64_t)_beginMonitoring;
- (uint64_t)_endMonitoring;
- (void)_handleBKSApplicationStateChange:(uint64_t)a1;
- (void)_handleCMSessionNotification:(uint64_t)a1;
- (void)_updateApplicationState;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FigCaptureCMSessionMonitor

- (id)_initWithFigCaptureCMSession:(id)a3 clientPID:(int)a4 observer:(id)a5
{
  v6 = *&a4;
  v11.receiver = self;
  v11.super_class = FigCaptureCMSessionMonitor;
  v8 = [(FigCaptureCMSessionMonitor *)&v11 init];
  if (v8)
  {
    v8->_lock = FigSimpleMutexCreate();
    v10 = a3;
    v8->_session = v10;
    v8->_clientPID = v6;
    if (-[FigCaptureCMSession setProperty:value:](v10, "setProperty:value:", *MEMORY[0x1E69AFD90], [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureClient-%d", v6]))
    {
      [FigCaptureCMSessionMonitor _initWithFigCaptureCMSession:clientPID:observer:];
    }

    else
    {
      if (!-[FigCaptureCMSession setProperty:value:](v8->_session, "setProperty:value:", *MEMORY[0x1E69AFDA8], [MEMORY[0x1E696AD98] numberWithInt:v8->_clientPID]))
      {
        v8->_observer = a5;
        [(FigCaptureCMSessionMonitor *)v8 _beginMonitoring];
        return v8;
      }

      [FigCaptureCMSessionMonitor _initWithFigCaptureCMSession:clientPID:observer:];
    }

    return 0;
  }

  return v8;
}

- (FigCaptureCMSessionMonitor)initWithCMSession:(opaqueCMSession *)a3 clientPID:(int)a4 observer:(id)a5
{
  v6 = *&a4;
  if (!a3 && CMSessionCreate())
  {
    [FigCaptureCMSessionMonitor initWithCMSession:clientPID:observer:];
    v10 = 0;
  }

  else
  {
    v9 = [[FigCaptureCMSession alloc] initWithCMSession:a3];
    self = [(FigCaptureCMSessionMonitor *)self _initWithFigCaptureCMSession:v9 clientPID:v6 observer:a5];

    if (a3)
    {
      return self;
    }

    v10 = 1;
  }

  if (a3)
  {
    CFRelease(a3);
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
    v2 = [*(v1 + 16) cmsession];
    *(v1 + 40) = OUTLINED_FUNCTION_2_17(v2, v3);
    [(FigCaptureCMSessionMonitor *)v1 _updateApplicationState];
    [MEMORY[0x1E696AD88] defaultCenter];
    v4 = [*(v1 + 16) cmsession];
    result = OUTLINED_FUNCTION_2_17(v4, v5);
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

- (void)_handleCMSessionNotification:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 56);
  FigSimpleMutexUnlock();
  if (v4 == 1)
  {
    goto LABEL_18;
  }

  v5 = [a2 name];
  if ([v5 isEqualToString:*MEMORY[0x1E69AFB80]])
  {
    v6 = [a2 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69AF9E0]];
    if (v7)
    {
      v8 = [v7 intValue];
      if (v8 == 1)
      {
        v14 = *(a1 + 32);

        [v14 cmsessionMonitorDidEndAudioInterruption:a1];
      }

      else if (!v8)
      {
        v9 = *(a1 + 32);

        [v9 cmsessionMonitorDidBeginAudioInterruption:a1];
      }

      return;
    }

LABEL_18:
    OUTLINED_FUNCTION_0_3();
    FigDebugAssert3();
    return;
  }

  v10 = [a2 name];
  if (![v10 isEqualToString:*MEMORY[0x1E69AFB00]])
  {
    return;
  }

  v11 = [a2 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69AFA50]];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = [v12 unsignedIntValue];

  [(FigCaptureCMSessionMonitor *)a1 _handleBKSApplicationStateChange:v13];
}

- (void)_updateApplicationState
{
  if (a1)
  {
    v4 = 0;
    v2 = [*(a1 + 16) copyProperty:*MEMORY[0x1E69AFCA0] error:&v4];
    v3 = v2;
    if (v4)
    {
      FigDebugAssert3();
    }

    else
    {
      -[FigCaptureCMSessionMonitor _handleBKSApplicationStateChange:](a1, [v2 unsignedIntValue]);
    }
  }
}

- (void)_handleBKSApplicationStateChange:(uint64_t)a1
{
  if (a1)
  {
    v6 = 0;
    v4 = [*(a1 + 16) copyProperty:*MEMORY[0x1E69B0190] error:&v6];
    v5 = v4;
    if (v6)
    {
      FigDebugAssert3();
    }

    else
    {
      [*(a1 + 32) cmsessionMonitor:a1 didUpdateApplicationState:a2 pidToInheritApplicationStateFrom:{objc_msgSend(v4, "intValue")}];
    }
  }
}

@end
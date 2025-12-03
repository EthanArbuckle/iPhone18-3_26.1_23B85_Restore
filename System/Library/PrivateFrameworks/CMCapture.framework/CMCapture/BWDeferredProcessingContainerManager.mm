@interface BWDeferredProcessingContainerManager
+ (id)sharedInstance;
- (BWDeferredProcessingContainer)_copyRemoteContainer:(uint64_t)container captureRequestIdentifier:(uint64_t)identifier baseFolderURL:(int *)l err:;
- (BWDeferredProcessingContainerManager)init;
- (id)createProcessingContainerWithApplicationID:(id)d captureRequestIdentifier:(id)identifier openForPeeking:(BOOL)peeking err:(int *)err;
- (id)manifestsForApplicationID:(id)d err:(int *)err;
- (int)deleteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier;
- (int)waitForShaderCompilation;
- (uint64_t)_copyXPCContainerManager;
- (uint64_t)_queryContainerStatus:(uint64_t)status captureRequestIdentifier:(_DWORD *)identifier status:;
- (void)_releaseRemoteContainer:captureRequestIdentifier:;
- (void)_setXPCContainerManager:(uint64_t)manager;
- (void)releaseProcessingContainer:(id)container;
@end

@implementation BWDeferredProcessingContainerManager

+ (id)sharedInstance
{
  if (sharedInstance_once_183 != -1)
  {
    +[BWDeferredProcessingContainerManager sharedInstance];
  }

  return sharedInstance_sharedInstance_182;
}

BWDeferredProcessingContainerManager *__54__BWDeferredProcessingContainerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWDeferredProcessingContainerManager);
  sharedInstance_sharedInstance_182 = result;
  return result;
}

- (BWDeferredProcessingContainerManager)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredProcessingContainerManager;
  v2 = [(BWDeferredContainerManagerBase *)&v5 initWithQueuePriority:39];
  if (v2)
  {
    v4 = FigCaptureDeferredContainerManagerRemoteCopyContainerManager();
    [(BWDeferredProcessingContainerManager *)v2 _setXPCContainerManager:v4];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

- (id)manifestsForApplicationID:(id)d err:(int *)err
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (d)
  {
    _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
    if (_copyXPCContainerManager)
    {
      v9 = _copyXPCContainerManager;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10 && (v11 = v10(v9, d)) != 0)
      {
        d = v11;
        v12 = 0;
      }

      else
      {
        [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
        d = 0;
        v12 = -16134;
      }

      CFRelease(v9);
    }

    else
    {
      [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
      d = 0;
      v12 = -16137;
    }
  }

  else
  {
    [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
    v12 = -16134;
  }

  if (err)
  {
    *err = v12;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return d;
}

- (id)createProcessingContainerWithApplicationID:(id)d captureRequestIdentifier:(id)identifier openForPeeking:(BOOL)peeking err:(int *)err
{
  peekingCopy = peeking;
  v19 = 0;
  v18 = 0;
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!d)
  {
    [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:? captureRequestIdentifier:? openForPeeking:? err:?];
    goto LABEL_23;
  }

  if (!identifier)
  {
    [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:? captureRequestIdentifier:? openForPeeking:? err:?];
    goto LABEL_23;
  }

  v12 = [(BWDeferredProcessingContainerManager *)self _queryContainerStatus:d captureRequestIdentifier:identifier status:&v19];
  v20 = v12;
  if ((v12 + 16157) < 5 || v12 == -16159)
  {
    v13 = 0;
    v20 = -16138;
    goto LABEL_7;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  if (v12 == -16138)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_7;
  }

  [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:];
LABEL_14:
  v17 = 0;
  v15 = [(BWDeferredContainerManagerBase *)self _containerURLForApplicationID:d captureRequestIdentifier:identifier processingContainer:1 exists:&v17 + 1 isDirectory:&v17 resolvedApplicationID:&v18];
  if (v19 != 1 || (v13 = [(BWDeferredProcessingContainerManager *)self _copyRemoteContainer:v18 captureRequestIdentifier:identifier baseFolderURL:v15 err:&v20]) == 0)
  {
    if (HIBYTE(v17) == 1 && v17 == 1)
    {
      v16 = [BWDeferredProcessingContainer alloc];
      v13 = [(BWDeferredProcessingContainer *)v16 initWithApplicationID:v18 captureRequestIdentifier:identifier baseFolderURL:v15 openForPeeking:peekingCopy err:&v20];
    }

    else
    {
      v13 = 0;
      v20 = FigSignalErrorAtGM();
    }
  }

LABEL_7:

  if (err)
  {
    *err = v20;
  }

  if (*v11 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

- (void)releaseProcessingContainer:(id)container
{
  if (container)
  {
    [container applicationID];
    [container captureRequestIdentifier];
    isRemote = [container isRemote];

    if (isRemote)
    {

      [BWDeferredProcessingContainerManager _releaseRemoteContainer:captureRequestIdentifier:];
    }
  }

  else
  {
    [BWDeferredProcessingContainerManager releaseProcessingContainer:];
  }
}

- (void)_setXPCContainerManager:(uint64_t)manager
{
  if (manager)
  {
    v4 = *(manager + 224);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
        *(manager + 224) = 0;
      }

      if (cf)
      {
        *(manager + 224) = CFRetain(cf);
      }
    }
  }
}

- (uint64_t)_copyXPCContainerManager
{
  if (result)
  {
    v1 = result;
    pthread_rwlock_wrlock((result + 8));
    if (FigCaptureDeferredContainerManagerRemoteIsConnectionValid(*(v1 + 224)))
    {
      v2 = *(v1 + 224);
      if (v2)
      {
        CFRetain(v2);
      }
    }

    else
    {
      v3 = FigCaptureDeferredContainerManagerRemoteCopyContainerManager();
      [(BWDeferredProcessingContainerManager *)v1 _setXPCContainerManager:v3];
    }

    pthread_rwlock_unlock((v1 + 8));
    return *(v1 + 224);
  }

  return result;
}

- (uint64_t)_queryContainerStatus:(uint64_t)status captureRequestIdentifier:(_DWORD *)identifier status:
{
  if (!self)
  {
    return 0;
  }

  v14 = 0;
  OUTLINED_FUNCTION_19_2();
  if (v8)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  if (FigCaptureCurrentProcessIsDeferredmediad())
  {
    _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
    if (_copyXPCContainerManager)
    {
      v12 = _copyXPCContainerManager;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v9 = v13(v12, a2, status, &v14);
      }

      else
      {
        v9 = 4294954514;
      }

      CFRelease(v12);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v9 = 4294951159;
    }
  }

  else
  {
    v9 = [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager queryContainerStatusForApplicationID:"queryContainerStatusForApplicationID:captureRequestIdentifier:status:" captureRequestIdentifier:a2 status:status, &v14];
  }

  if (identifier)
  {
    *identifier = v14;
  }

  OUTLINED_FUNCTION_19_2();
  if (v8)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (BWDeferredProcessingContainer)_copyRemoteContainer:(uint64_t)container captureRequestIdentifier:(uint64_t)identifier baseFolderURL:(int *)l err:
{
  if (!self)
  {
    return 0;
  }

  v18 = 0;
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
  if (_copyXPCContainerManager)
  {
    v12 = _copyXPCContainerManager;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v13 && (v14 = v13(v12, a2, container)) != 0)
    {
      v15 = v14;
      v16 = [[BWDeferredProcessingContainer alloc] initWithXPCEncoding:v14 applicationID:a2 captureRequestIdentifier:container baseFolderURL:identifier err:&v18];
      if (!v16)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v18 = -16133;
      }

      CFRelease(v12);
      xpc_release(v15);
      if (!l)
      {
        goto LABEL_13;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v18 = -16132;
      CFRelease(v12);
      v16 = 0;
      if (!l)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v16 = 0;
  v18 = -16137;
  if (l)
  {
LABEL_12:
    *l = v18;
  }

LABEL_13:
  if (*v10 == 1)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v16;
}

- (void)_releaseRemoteContainer:captureRequestIdentifier:
{
  OUTLINED_FUNCTION_25_10();
  if (v0)
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    OUTLINED_FUNCTION_10_27();
    if (v6)
    {
      OUTLINED_FUNCTION_14_19();
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }

    _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)v5 _copyXPCContainerManager];
    if (_copyXPCContainerManager)
    {
      v8 = _copyXPCContainerManager;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v9)
      {
        v9(v8, v4, v3);
      }

      CFRelease(v8);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_10_27();
    if (v6)
    {
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }
  }

  OUTLINED_FUNCTION_24_12();
}

- (int)deleteContainerForApplicationID:(id)d captureRequestIdentifier:(id)identifier
{
  OUTLINED_FUNCTION_25_10();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_10_27();
  if (v10)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)v9 _copyXPCContainerManager];
  if (_copyXPCContainerManager)
  {
    v12 = _copyXPCContainerManager;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v13)
    {
      v13(v12, v7, v5);
    }

    CFRelease(v12);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  OUTLINED_FUNCTION_10_27();
  if (v10)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_24_12();
  return result;
}

- (int)waitForShaderCompilation
{
  OUTLINED_FUNCTION_13_23();
  if (v3)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
  if (_copyXPCContainerManager)
  {
    v5 = _copyXPCContainerManager;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v7 = v6(v5);
    }

    else
    {
      v7 = -12782;
    }

    CFRelease(v5);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v7 = -16137;
  }

  OUTLINED_FUNCTION_13_23();
  if (v3)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v7;
}

- (uint64_t)createProcessingContainerWithApplicationID:(_DWORD *)a1 captureRequestIdentifier:openForPeeking:err:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -16134;
  return result;
}

- (uint64_t)createProcessingContainerWithApplicationID:(_DWORD *)a1 captureRequestIdentifier:openForPeeking:err:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -16134;
  return result;
}

@end
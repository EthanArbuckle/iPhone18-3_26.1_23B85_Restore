@interface BWDeferredProcessingContainerManager
+ (id)sharedInstance;
- (BWDeferredProcessingContainer)_copyRemoteContainer:(uint64_t)a3 captureRequestIdentifier:(uint64_t)a4 baseFolderURL:(int *)a5 err:;
- (BWDeferredProcessingContainerManager)init;
- (id)createProcessingContainerWithApplicationID:(id)a3 captureRequestIdentifier:(id)a4 openForPeeking:(BOOL)a5 err:(int *)a6;
- (id)manifestsForApplicationID:(id)a3 err:(int *)a4;
- (int)deleteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4;
- (int)waitForShaderCompilation;
- (uint64_t)_copyXPCContainerManager;
- (uint64_t)_queryContainerStatus:(uint64_t)a3 captureRequestIdentifier:(_DWORD *)a4 status:;
- (void)_releaseRemoteContainer:captureRequestIdentifier:;
- (void)_setXPCContainerManager:(uint64_t)a1;
- (void)releaseProcessingContainer:(id)a3;
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

- (id)manifestsForApplicationID:(id)a3 err:(int *)a4
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a3)
  {
    v8 = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
    if (v8)
    {
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10 && (v11 = v10(v9, a3)) != 0)
      {
        a3 = v11;
        v12 = 0;
      }

      else
      {
        [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
        a3 = 0;
        v12 = -16134;
      }

      CFRelease(v9);
    }

    else
    {
      [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
      a3 = 0;
      v12 = -16137;
    }
  }

  else
  {
    [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
    v12 = -16134;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return a3;
}

- (id)createProcessingContainerWithApplicationID:(id)a3 captureRequestIdentifier:(id)a4 openForPeeking:(BOOL)a5 err:(int *)a6
{
  v7 = a5;
  v19 = 0;
  v18 = 0;
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a3)
  {
    [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:? captureRequestIdentifier:? openForPeeking:? err:?];
    goto LABEL_23;
  }

  if (!a4)
  {
    [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:? captureRequestIdentifier:? openForPeeking:? err:?];
    goto LABEL_23;
  }

  v12 = [(BWDeferredProcessingContainerManager *)self _queryContainerStatus:a3 captureRequestIdentifier:a4 status:&v19];
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
  v15 = [(BWDeferredContainerManagerBase *)self _containerURLForApplicationID:a3 captureRequestIdentifier:a4 processingContainer:1 exists:&v17 + 1 isDirectory:&v17 resolvedApplicationID:&v18];
  if (v19 != 1 || (v13 = [(BWDeferredProcessingContainerManager *)self _copyRemoteContainer:v18 captureRequestIdentifier:a4 baseFolderURL:v15 err:&v20]) == 0)
  {
    if (HIBYTE(v17) == 1 && v17 == 1)
    {
      v16 = [BWDeferredProcessingContainer alloc];
      v13 = [(BWDeferredProcessingContainer *)v16 initWithApplicationID:v18 captureRequestIdentifier:a4 baseFolderURL:v15 openForPeeking:v7 err:&v20];
    }

    else
    {
      v13 = 0;
      v20 = FigSignalErrorAtGM();
    }
  }

LABEL_7:

  if (a6)
  {
    *a6 = v20;
  }

  if (*v11 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

- (void)releaseProcessingContainer:(id)a3
{
  if (a3)
  {
    [a3 applicationID];
    [a3 captureRequestIdentifier];
    v4 = [a3 isRemote];

    if (v4)
    {

      [BWDeferredProcessingContainerManager _releaseRemoteContainer:captureRequestIdentifier:];
    }
  }

  else
  {
    [BWDeferredProcessingContainerManager releaseProcessingContainer:];
  }
}

- (void)_setXPCContainerManager:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 224);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 224) = 0;
      }

      if (cf)
      {
        *(a1 + 224) = CFRetain(cf);
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

- (uint64_t)_queryContainerStatus:(uint64_t)a3 captureRequestIdentifier:(_DWORD *)a4 status:
{
  if (!a1)
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
    v11 = [(BWDeferredProcessingContainerManager *)a1 _copyXPCContainerManager];
    if (v11)
    {
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v9 = v13(v12, a2, a3, &v14);
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
    v9 = [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager queryContainerStatusForApplicationID:"queryContainerStatusForApplicationID:captureRequestIdentifier:status:" captureRequestIdentifier:a2 status:a3, &v14];
  }

  if (a4)
  {
    *a4 = v14;
  }

  OUTLINED_FUNCTION_19_2();
  if (v8)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (BWDeferredProcessingContainer)_copyRemoteContainer:(uint64_t)a3 captureRequestIdentifier:(uint64_t)a4 baseFolderURL:(int *)a5 err:
{
  if (!a1)
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

  v11 = [(BWDeferredProcessingContainerManager *)a1 _copyXPCContainerManager];
  if (v11)
  {
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v13 && (v14 = v13(v12, a2, a3)) != 0)
    {
      v15 = v14;
      v16 = [[BWDeferredProcessingContainer alloc] initWithXPCEncoding:v14 applicationID:a2 captureRequestIdentifier:a3 baseFolderURL:a4 err:&v18];
      if (!v16)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v18 = -16133;
      }

      CFRelease(v12);
      xpc_release(v15);
      if (!a5)
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
      if (!a5)
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
  if (a5)
  {
LABEL_12:
    *a5 = v18;
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

    v7 = [(BWDeferredProcessingContainerManager *)v5 _copyXPCContainerManager];
    if (v7)
    {
      v8 = v7;
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

- (int)deleteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4
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

  v11 = [(BWDeferredProcessingContainerManager *)v9 _copyXPCContainerManager];
  if (v11)
  {
    v12 = v11;
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

  v4 = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
  if (v4)
  {
    v5 = v4;
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
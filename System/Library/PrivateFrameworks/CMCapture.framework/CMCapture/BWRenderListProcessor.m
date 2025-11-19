@interface BWRenderListProcessor
+ (id)filterRendererResultToString:(unint64_t)a3;
- (BOOL)alwaysEmitsOriginalResult;
- (BWRenderListProcessor)initWithRenderingPool:(id)a3;
- (void)_continueRenderingUsingRenderList:(void *)a3 parameterListProvider:(uint64_t)a4 result:(uint64_t)a5 resultError:(uint64_t *)a6 fromRendererNode:(uint64_t *)a7 parameterNode:(opaqueCMSampleBuffer *)a8 inputSampleBuffer:(__CVBuffer *)a9 inputPixelBuffer:(uint64_t)a10 finalResultHandler:;
- (void)_emitProcessedSampleBufferFromRenderList:(uint64_t)a3 result:(int)a4 resultError:(opaqueCMSampleBuffer *)cf inputSampleBuffer:(__CVBuffer *)a6 processedPixelBuffer:(uint64_t)a7 finalResultHandler:;
- (void)_finishRenderingUsingRenderList:(void *)a3 parameterListProvider:(uint64_t)a4 result:(int)a5 resultError:(opaqueCMSampleBuffer *)a6 inputSampleBuffer:(__CVBuffer *)a7 processedPixelBuffer:(uint64_t)a8 finalResultHandler:;
- (void)_processRenderList:(void *)a3 parameterListProvider:(void *)a4 inputPixelBuffer:(void *)a5 inputSampleBuffer:(uint64_t)a6 resultHandler:;
- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)a3 usingRenderList:(id)a4;
- (void)dealloc;
- (void)processRenderList:(id)a3 withParameters:(id)a4 inputPixelBuffer:(__CVBuffer *)a5 inputSampleBuffer:(opaqueCMSampleBuffer *)a6 resultHandler:(id)a7;
- (void)setAlwaysEmitsOriginalResult:(BOOL)a3;
@end

@implementation BWRenderListProcessor

- (BOOL)alwaysEmitsOriginalResult
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  configurationMutexQueue = self->_configurationMutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__BWRenderListProcessor_alwaysEmitsOriginalResult__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(configurationMutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BWRenderListProcessor)initWithRenderingPool:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWRenderListProcessor;
  v4 = [(BWRenderListProcessor *)&v6 init];
  if (v4)
  {
    v4->_configurationMutexQueue = dispatch_queue_create("com.apple.bwgraph.render-list-processor.configuration-queue", 0);
    v4->_renderingPool = a3;
    v4->_renderingGroup = dispatch_group_create();
  }

  return v4;
}

- (void)dealloc
{
  mostRecentFormatDescription = self->_mostRecentFormatDescription;
  if (mostRecentFormatDescription)
  {
    CFRelease(mostRecentFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWRenderListProcessor;
  [(BWRenderListProcessor *)&v4 dealloc];
}

- (void)setAlwaysEmitsOriginalResult:(BOOL)a3
{
  configurationMutexQueue = self->_configurationMutexQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__BWRenderListProcessor_setAlwaysEmitsOriginalResult___block_invoke;
  v4[3] = &unk_1E7990078;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(configurationMutexQueue, v4);
}

- (void)_continueRenderingUsingRenderList:(void *)a3 parameterListProvider:(uint64_t)a4 result:(uint64_t)a5 resultError:(uint64_t *)a6 fromRendererNode:(uint64_t *)a7 parameterNode:(opaqueCMSampleBuffer *)a8 inputSampleBuffer:(__CVBuffer *)a9 inputPixelBuffer:(uint64_t)a10 finalResultHandler:
{
  if (a1 && a6 && a7 && a9)
  {
    v17 = [*(a1 + 24) newPixelBuffer];
    if (v17)
    {
      v18 = v17;
      CVBufferPropagateAttachments(a9, v17);
      v19 = [a2 shouldAllowOriginalRenderFromNode:a6];
      if (v19)
      {
        v24 = v19;
        v20 = [*(a1 + 24) newPixelBuffer];
        if (v20)
        {
          CVBufferPropagateAttachments(a9, v20);
        }

        LOBYTE(v19) = v24;
      }

      else
      {
        v20 = 0;
      }

      v21 = *a6;
      v22 = *a7;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x3052000000;
      v30[3] = __Block_byref_object_copy__37;
      v30[4] = __Block_byref_object_dispose__37;
      v30[5] = a1;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v29[3] = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __185__BWRenderListProcessor__continueRenderingUsingRenderList_parameterListProvider_result_resultError_fromRendererNode_parameterNode_inputSampleBuffer_inputPixelBuffer_finalResultHandler___block_invoke;
      v27[3] = &unk_1E799B978;
      v28 = v19;
      v27[4] = a1;
      v27[5] = a2;
      v27[10] = v20;
      v27[11] = a8;
      v27[12] = v18;
      v27[13] = a9;
      v27[14] = a4;
      v27[15] = v21;
      v27[8] = v29;
      v27[9] = v30;
      v27[6] = a3;
      v27[7] = a10;
      v27[16] = v22;
      [a6[1] renderUsingParameters:a7[1] inputPixelBuffer:a9 inputSampleBuffer:a8 originalPixelBuffer:v20 processedPixelBuffer:v18 completionHandler:v27];
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v30, 8);
    }

    else
    {
      v23 = *MEMORY[0x1E696A768];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"Failed to allocate pixel buffer for processed render";
      -[BWRenderListProcessor _finishRenderingUsingRenderList:parameterListProvider:result:resultError:inputSampleBuffer:processedPixelBuffer:finalResultHandler:](a1, a2, a3, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v23 code:-12786 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v26, &v25, 1)}], a8, a9, a10);
    }
  }
}

- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)a3 usingRenderList:(id)a4
{
  if ([a4 affectsMetadata])
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v5 = a4;
    for (i = *[a4 rendererList]; i; i = *i)
    {
      v7 = i[1];
      if ([v7 adjustsMetadata])
      {
        [v7 adjustMetadataOfSampleBuffer:a3];
      }
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }
}

void __185__BWRenderListProcessor__continueRenderingUsingRenderList_parameterListProvider_result_resultError_fromRendererNode_parameterNode_inputSampleBuffer_inputPixelBuffer_finalResultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 80);
  if (v8 && (a2 & 1) != 0 && (*(a1 + 136) & 1) != 0)
  {
    [(BWRenderListProcessor *)*(a1 + 32) _emitProcessedSampleBufferFromRenderList:a2 result:1 resultError:a3 inputSampleBuffer:*(a1 + 88) processedPixelBuffer:v8 finalResultHandler:*(a1 + 56)];
  }

  v9 = 96;
  if ((a2 & 2) != 0)
  {
    v10 = 96;
  }

  else
  {
    v10 = 104;
  }

  v11 = *(a1 + v10);
  if ((a2 & 2) != 0)
  {
    v9 = 104;
  }

  v12 = *(a1 + v9);
  if (v12)
  {
    CFRelease(v12);
  }

  *(*(*(a1 + 64) + 8) + 24) = *(a1 + 112) | a2;
  v13 = *(*(*(a1 + 72) + 8) + 40);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(*(*(a1 + 64) + 8) + 24);
  if (a3 || (v17 = *(a1 + 120)) == 0)
  {
    v18 = *(a1 + 88);
    v19 = *(a1 + 56);

    [(BWRenderListProcessor *)v13 _finishRenderingUsingRenderList:v14 parameterListProvider:v15 result:v16 resultError:a3 inputSampleBuffer:v18 processedPixelBuffer:v11 finalResultHandler:v19];
  }

  else
  {
    [(BWRenderListProcessor *)v13 _continueRenderingUsingRenderList:v14 parameterListProvider:v15 result:v16 resultError:a5 fromRendererNode:v17 parameterNode:*(a1 + 128) inputSampleBuffer:*(a1 + 88) inputPixelBuffer:v11 finalResultHandler:*(a1 + 56)];
  }
}

+ (id)filterRendererResultToString:(unint64_t)a3
{
  v3 = @"Passthrough";
  if (a3 == 1)
  {
    v3 = @"Original";
  }

  if (a3 == 2)
  {
    return @"Processed";
  }

  else
  {
    return v3;
  }
}

- (void)_processRenderList:(void *)a3 parameterListProvider:(void *)a4 inputPixelBuffer:(void *)a5 inputSampleBuffer:(uint64_t)a6 resultHandler:
{
  if (!a1)
  {
    return;
  }

  dispatch_group_wait(a1[4], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(a1[4]);
  if (a5)
  {
    CFRetain(a5);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v12 = a2;
  v13 = a3;
  if (a6 && -[dispatch_group_t alwaysEmitsOriginalResult](a1, "alwaysEmitsOriginalResult") && ([a2 producesOriginalRender] & 1) == 0)
  {
    (*(a6 + 16))(a6, 1, a5, 0);
  }

  if (a2)
  {
    v14 = *[a2 rendererList];
    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v15 = [a3 parameterList];
    if (v14 && *v15)
    {
      v16 = OUTLINED_FUNCTION_0_103();
      [(BWRenderListProcessor *)v16 _continueRenderingUsingRenderList:v17 parameterListProvider:v18 result:v19 resultError:v20 fromRendererNode:v14 parameterNode:v21 inputSampleBuffer:a5 inputPixelBuffer:a4 finalResultHandler:a6];
      return;
    }

    goto LABEL_18;
  }

  v14 = 0;
  if (a3)
  {
    goto LABEL_14;
  }

LABEL_18:
  v22 = OUTLINED_FUNCTION_0_103();

  [(BWRenderListProcessor *)v22 _finishRenderingUsingRenderList:v23 parameterListProvider:v24 result:v25 resultError:0 inputSampleBuffer:a5 processedPixelBuffer:a4 finalResultHandler:a6];
}

- (void)processRenderList:(id)a3 withParameters:(id)a4 inputPixelBuffer:(__CVBuffer *)a5 inputSampleBuffer:(opaqueCMSampleBuffer *)a6 resultHandler:(id)a7
{
  v7 = a3;
  if (a4)
  {
    a3 = a4;
  }

  [(BWRenderListProcessor *)self _processRenderList:v7 parameterListProvider:a3 inputPixelBuffer:a5 inputSampleBuffer:a6 resultHandler:a7];
}

- (void)_finishRenderingUsingRenderList:(void *)a3 parameterListProvider:(uint64_t)a4 result:(int)a5 resultError:(opaqueCMSampleBuffer *)a6 inputSampleBuffer:(__CVBuffer *)a7 processedPixelBuffer:(uint64_t)a8 finalResultHandler:
{
  if (a1)
  {
    [(BWRenderListProcessor *)a1 _emitProcessedSampleBufferFromRenderList:a2 result:a4 resultError:a5 inputSampleBuffer:a6 processedPixelBuffer:a7 finalResultHandler:a8];
    if (a6)
    {
      CFRelease(a6);
    }

    v12 = *(a1 + 32);

    dispatch_group_leave(v12);
  }
}

- (void)_emitProcessedSampleBufferFromRenderList:(uint64_t)a3 result:(int)a4 resultError:(opaqueCMSampleBuffer *)cf inputSampleBuffer:(__CVBuffer *)a6 processedPixelBuffer:(uint64_t)a7 finalResultHandler:
{
  if (a1)
  {
    cfa = 0;
    if ((a3 & 3) != 0)
    {
      if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(cf, a6, (a1 + 40), &cfa) && cfa)
      {
LABEL_5:
        if (a7)
        {
          (*(a7 + 16))(a7, a3);
        }

        if (!a6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else
    {
      if (cf)
      {
        v10 = CFRetain(cf);
      }

      else
      {
        v10 = 0;
      }

      cfa = v10;
      if (v10)
      {
        goto LABEL_5;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3();
    if (!a6)
    {
LABEL_9:
      if (cfa)
      {
        CFRelease(cfa);
      }

      return;
    }

LABEL_8:
    CFRelease(a6);
    goto LABEL_9;
  }
}

@end
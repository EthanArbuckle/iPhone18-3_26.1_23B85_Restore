@interface BWRenderListProcessor
+ (id)filterRendererResultToString:(unint64_t)string;
- (BOOL)alwaysEmitsOriginalResult;
- (BWRenderListProcessor)initWithRenderingPool:(id)pool;
- (void)_continueRenderingUsingRenderList:(void *)list parameterListProvider:(uint64_t)provider result:(uint64_t)result resultError:(uint64_t *)error fromRendererNode:(uint64_t *)node parameterNode:(opaqueCMSampleBuffer *)parameterNode inputSampleBuffer:(__CVBuffer *)buffer inputPixelBuffer:(uint64_t)self0 finalResultHandler:;
- (void)_emitProcessedSampleBufferFromRenderList:(uint64_t)list result:(int)result resultError:(opaqueCMSampleBuffer *)cf inputSampleBuffer:(__CVBuffer *)buffer processedPixelBuffer:(uint64_t)pixelBuffer finalResultHandler:;
- (void)_finishRenderingUsingRenderList:(void *)list parameterListProvider:(uint64_t)provider result:(int)result resultError:(opaqueCMSampleBuffer *)error inputSampleBuffer:(__CVBuffer *)buffer processedPixelBuffer:(uint64_t)pixelBuffer finalResultHandler:;
- (void)_processRenderList:(void *)list parameterListProvider:(void *)provider inputPixelBuffer:(void *)buffer inputSampleBuffer:(uint64_t)sampleBuffer resultHandler:;
- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)buffer usingRenderList:(id)list;
- (void)dealloc;
- (void)processRenderList:(id)list withParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer resultHandler:(id)handler;
- (void)setAlwaysEmitsOriginalResult:(BOOL)result;
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

- (BWRenderListProcessor)initWithRenderingPool:(id)pool
{
  v6.receiver = self;
  v6.super_class = BWRenderListProcessor;
  v4 = [(BWRenderListProcessor *)&v6 init];
  if (v4)
  {
    v4->_configurationMutexQueue = dispatch_queue_create("com.apple.bwgraph.render-list-processor.configuration-queue", 0);
    v4->_renderingPool = pool;
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

- (void)setAlwaysEmitsOriginalResult:(BOOL)result
{
  configurationMutexQueue = self->_configurationMutexQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__BWRenderListProcessor_setAlwaysEmitsOriginalResult___block_invoke;
  v4[3] = &unk_1E7990078;
  v4[4] = self;
  resultCopy = result;
  dispatch_sync(configurationMutexQueue, v4);
}

- (void)_continueRenderingUsingRenderList:(void *)list parameterListProvider:(uint64_t)provider result:(uint64_t)result resultError:(uint64_t *)error fromRendererNode:(uint64_t *)node parameterNode:(opaqueCMSampleBuffer *)parameterNode inputSampleBuffer:(__CVBuffer *)buffer inputPixelBuffer:(uint64_t)self0 finalResultHandler:
{
  if (self && error && node && buffer)
  {
    newPixelBuffer = [*(self + 24) newPixelBuffer];
    if (newPixelBuffer)
    {
      v18 = newPixelBuffer;
      CVBufferPropagateAttachments(buffer, newPixelBuffer);
      v19 = [a2 shouldAllowOriginalRenderFromNode:error];
      if (v19)
      {
        v24 = v19;
        newPixelBuffer2 = [*(self + 24) newPixelBuffer];
        if (newPixelBuffer2)
        {
          CVBufferPropagateAttachments(buffer, newPixelBuffer2);
        }

        LOBYTE(v19) = v24;
      }

      else
      {
        newPixelBuffer2 = 0;
      }

      v21 = *error;
      v22 = *node;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x3052000000;
      v30[3] = __Block_byref_object_copy__37;
      v30[4] = __Block_byref_object_dispose__37;
      v30[5] = self;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v29[3] = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __185__BWRenderListProcessor__continueRenderingUsingRenderList_parameterListProvider_result_resultError_fromRendererNode_parameterNode_inputSampleBuffer_inputPixelBuffer_finalResultHandler___block_invoke;
      v27[3] = &unk_1E799B978;
      v28 = v19;
      v27[4] = self;
      v27[5] = a2;
      v27[10] = newPixelBuffer2;
      v27[11] = parameterNode;
      v27[12] = v18;
      v27[13] = buffer;
      v27[14] = provider;
      v27[15] = v21;
      v27[8] = v29;
      v27[9] = v30;
      v27[6] = list;
      v27[7] = pixelBuffer;
      v27[16] = v22;
      [error[1] renderUsingParameters:node[1] inputPixelBuffer:buffer inputSampleBuffer:parameterNode originalPixelBuffer:newPixelBuffer2 processedPixelBuffer:v18 completionHandler:v27];
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v30, 8);
    }

    else
    {
      v23 = *MEMORY[0x1E696A768];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"Failed to allocate pixel buffer for processed render";
      -[BWRenderListProcessor _finishRenderingUsingRenderList:parameterListProvider:result:resultError:inputSampleBuffer:processedPixelBuffer:finalResultHandler:](self, a2, list, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v23 code:-12786 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v26, &v25, 1)}], parameterNode, buffer, pixelBuffer);
    }
  }
}

- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)buffer usingRenderList:(id)list
{
  if ([list affectsMetadata])
  {
    if (buffer)
    {
      CFRetain(buffer);
    }

    listCopy = list;
    for (i = *[list rendererList]; i; i = *i)
    {
      v7 = i[1];
      if ([v7 adjustsMetadata])
      {
        [v7 adjustMetadataOfSampleBuffer:buffer];
      }
    }

    if (buffer)
    {
      CFRelease(buffer);
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

+ (id)filterRendererResultToString:(unint64_t)string
{
  v3 = @"Passthrough";
  if (string == 1)
  {
    v3 = @"Original";
  }

  if (string == 2)
  {
    return @"Processed";
  }

  else
  {
    return v3;
  }
}

- (void)_processRenderList:(void *)list parameterListProvider:(void *)provider inputPixelBuffer:(void *)buffer inputSampleBuffer:(uint64_t)sampleBuffer resultHandler:
{
  if (!self)
  {
    return;
  }

  dispatch_group_wait(self[4], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(self[4]);
  if (buffer)
  {
    CFRetain(buffer);
  }

  if (provider)
  {
    CFRetain(provider);
  }

  v12 = a2;
  listCopy = list;
  if (sampleBuffer && -[dispatch_group_t alwaysEmitsOriginalResult](self, "alwaysEmitsOriginalResult") && ([a2 producesOriginalRender] & 1) == 0)
  {
    (*(sampleBuffer + 16))(sampleBuffer, 1, buffer, 0);
  }

  if (a2)
  {
    v14 = *[a2 rendererList];
    if (!list)
    {
      goto LABEL_18;
    }

LABEL_14:
    parameterList = [list parameterList];
    if (v14 && *parameterList)
    {
      v16 = OUTLINED_FUNCTION_0_103();
      [(BWRenderListProcessor *)v16 _continueRenderingUsingRenderList:v17 parameterListProvider:v18 result:v19 resultError:v20 fromRendererNode:v14 parameterNode:v21 inputSampleBuffer:buffer inputPixelBuffer:provider finalResultHandler:sampleBuffer];
      return;
    }

    goto LABEL_18;
  }

  v14 = 0;
  if (list)
  {
    goto LABEL_14;
  }

LABEL_18:
  v22 = OUTLINED_FUNCTION_0_103();

  [(BWRenderListProcessor *)v22 _finishRenderingUsingRenderList:v23 parameterListProvider:v24 result:v25 resultError:0 inputSampleBuffer:buffer processedPixelBuffer:provider finalResultHandler:sampleBuffer];
}

- (void)processRenderList:(id)list withParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer resultHandler:(id)handler
{
  listCopy = list;
  if (parameters)
  {
    list = parameters;
  }

  [(BWRenderListProcessor *)self _processRenderList:listCopy parameterListProvider:list inputPixelBuffer:buffer inputSampleBuffer:sampleBuffer resultHandler:handler];
}

- (void)_finishRenderingUsingRenderList:(void *)list parameterListProvider:(uint64_t)provider result:(int)result resultError:(opaqueCMSampleBuffer *)error inputSampleBuffer:(__CVBuffer *)buffer processedPixelBuffer:(uint64_t)pixelBuffer finalResultHandler:
{
  if (self)
  {
    [(BWRenderListProcessor *)self _emitProcessedSampleBufferFromRenderList:a2 result:provider resultError:result inputSampleBuffer:error processedPixelBuffer:buffer finalResultHandler:pixelBuffer];
    if (error)
    {
      CFRelease(error);
    }

    v12 = *(self + 32);

    dispatch_group_leave(v12);
  }
}

- (void)_emitProcessedSampleBufferFromRenderList:(uint64_t)list result:(int)result resultError:(opaqueCMSampleBuffer *)cf inputSampleBuffer:(__CVBuffer *)buffer processedPixelBuffer:(uint64_t)pixelBuffer finalResultHandler:
{
  if (self)
  {
    cfa = 0;
    if ((list & 3) != 0)
    {
      if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(cf, buffer, (self + 40), &cfa) && cfa)
      {
LABEL_5:
        if (pixelBuffer)
        {
          (*(pixelBuffer + 16))(pixelBuffer, list);
        }

        if (!buffer)
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
    if (!buffer)
    {
LABEL_9:
      if (cfa)
      {
        CFRelease(cfa);
      }

      return;
    }

LABEL_8:
    CFRelease(buffer);
    goto LABEL_9;
  }
}

@end
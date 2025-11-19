@interface BWRedEyeReductionController
+ (id)_newRedEyeRepairSessionWithMetalCommandQueue:(uint64_t)a1;
+ (void)initialize;
+ (void)prewarm;
- (BOOL)_receivedRequiredFramesForRequest:(uint64_t)a1;
- (BWRedEyeReductionController)initWithConfiguration:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4;
- (uint64_t)_clearRequest:(uint64_t)result;
- (uint64_t)_configureRedEyeReductionSessionWithConfiguration:(void *)a1;
- (uint64_t)_processRedEyeReductionWhenNecessaryForRequest:(int)a3 skipProcessing:;
- (uint64_t)_serviceRequests;
- (void)_propagateSensorInterfaceRawFromAuxImage:(uint64_t)a1 toPrimaryImage:(const void *)a2;
- (void)_requestForInput:(uint64_t)a1;
- (void)cancelProcessing;
- (void)dealloc;
- (void)didReceiveAllFramesForInput:(id)a3;
- (void)didReceiveFrameForInput:(id)a3;
@end

@implementation BWRedEyeReductionController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWRedEyeReductionController)initWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = BWRedEyeReductionController;
  v4 = [(BWRedEyeReductionController *)&v7 init];
  v5 = v4;
  if (v4 && [(BWRedEyeReductionController *)v4 _configureRedEyeReductionSessionWithConfiguration:a3])
  {

    return 0;
  }

  return v5;
}

+ (id)_newRedEyeRepairSessionWithMetalCommandQueue:(uint64_t)a1
{
  objc_opt_self();
  v3 = MEMORY[0x1E695F620];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{*MEMORY[0x1E695F920], *MEMORY[0x1E695F870]}];
  v5 = *MEMORY[0x1E695F7F0];
  v12[0] = v4;
  v12[1] = MEMORY[0x1E695E110];
  v11[1] = v5;
  v11[2] = @"kCIContextIOSurfaceMemoryPoolID";
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v6 = [v3 contextWithMTLCommandQueue:a2 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E695F640]);
    v9 = v8;
    if (v8)
    {
      [v8 setContext:v7];
    }

    else
    {
      +[BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:];
    }
  }

  else
  {
    +[BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:];
    return 0;
  }

  return v9;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWRedEyeReductionController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4
{
  v7 = [[BWRedEyeReductionRequest alloc] initWithInput:a3 delegate:a4];
  [(BWRedEyeReductionRequest *)v7 setMode:0];
  [a3 setInputDelegate:self];
  [a3 setProcessorControllerDelegate:a4];
  [(NSMutableArray *)self->_requestQueue addObject:v7];

  [(BWRedEyeReductionController *)self _serviceRequests];
  return 0;
}

- (void)cancelProcessing
{
  for (i = self->_requestQueue; [(NSMutableArray *)i count]; i = self->_requestQueue)
  {
    [(BWRedEyeReductionController *)self _processRedEyeReductionWhenNecessaryForRequest:1 skipProcessing:?];
  }
}

+ (void)prewarm
{
  v2 = [MEMORY[0x1E6991778] metalDevice];
  if (!v2)
  {
    +[BWRedEyeReductionController prewarm];
LABEL_11:
    v5 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v3 = [v2 newCommandQueue];
  if (!v3)
  {
    +[BWRedEyeReductionController prewarm];
    goto LABEL_11;
  }

  v6 = v3;
  v4 = [BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:v3];
  v5 = v4;
  if (v4)
  {
    if (([v4 prewarm] & 1) == 0)
    {
      +[BWRedEyeReductionController prewarm];
    }
  }

  else
  {
    +[BWRedEyeReductionController prewarm];
  }

LABEL_6:
}

- (void)didReceiveFrameForInput:(id)a3
{
  v4 = [(BWRedEyeReductionController *)self _requestForInput:a3];
  if (self && v4 && v4 == [(NSMutableArray *)self->_requestQueue firstObject])
  {

    [(BWRedEyeReductionController *)self _serviceRequests];
  }
}

- (uint64_t)_configureRedEyeReductionSessionWithConfiguration:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(objc_msgSend(a2, "sensorConfigurationsByPortType"), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a2 sensorConfigurationsByPortType];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *off_1E798A0C8;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([v11 isEqualToString:v9] & 1) == 0)
        {
          [v4 setObject:objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a2 forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", v11), "sensorIDDictionary"), "objectForKeyedSubscript:", @"RedEyeReductionParameters", v11}];
          if (![v4 objectForKeyedSubscript:v11])
          {
            v14 = 4294954516;
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  a1[8] = v4;
  v12 = +[BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:](BWRedEyeReductionController, [a2 metalCommandQueue]);
  a1[9] = v12;
  if (v12 && ([v12 prepareRepair] & 1) != 0 && (v13 = objc_alloc_init(MEMORY[0x1E695DF70]), (a1[11] = v13) != 0))
  {
    v14 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    v14 = FigSignalErrorAtGM();
  }

LABEL_15:

  return v14;
}

- (uint64_t)_serviceRequests
{
  if (result)
  {
    v1 = result;
    result = [*(result + 88) firstObject];
    if (result)
    {
      v2 = result;
      do
      {
        if (![objc_msgSend(v2 "input")])
        {
          result = [objc_msgSend(v2 "input")];
          if (!result)
          {
            break;
          }
        }

        v3 = OUTLINED_FUNCTION_3_19();
        [(BWRedEyeReductionController *)v3 _processRedEyeReductionWhenNecessaryForRequest:v4 skipProcessing:0];
        result = [*(v1 + 88) firstObject];
        v5 = result == v2;
        v2 = result;
      }

      while (!v5);
    }
  }

  return result;
}

- (uint64_t)_processRedEyeReductionWhenNecessaryForRequest:(int)a3 skipProcessing:
{
  if (result)
  {
    v5 = result;
    v6 = [a2 input];
    v7 = [v6 primaryImage];
    v8 = *off_1E798A3C8;
    v9 = CMGetAttachment(v7, *off_1E798A3C8, 0);
    v10 = [v6 auxImage];
    if (a3)
    {
LABEL_26:
      v30 = 0;
LABEL_27:
      v31 = 1;
      goto LABEL_28;
    }

    v11 = v10;
    if (v7 && ![a2 mode])
    {
      v47 = v11;
      ImageBuffer = CMSampleBufferGetImageBuffer(v7);
      v12 = [v9 objectForKeyedSubscript:*off_1E798B540];
      if (!v12 || (v13 = v12, (v14 = [v9 objectForKeyedSubscript:*off_1E798A5B0]) == 0))
      {
        OUTLINED_FUNCTION_1_30();
        v30 = FigSignalErrorAtGM();
        goto LABEL_27;
      }

      v43 = v14;
      v44 = v8;
      v15 = [v9 objectForKeyedSubscript:*off_1E798B510];
      if (v15)
      {
        v16 = v15;
        v42 = v7;
        v17 = [objc_msgSend(v6 "captureSettings")];
        ModelSpecificName = FigCaptureGetModelSpecificName();
        if (ModelSpecificName)
        {
          v19 = ModelSpecificName;
          v46 = a3;
          v41 = v9;
          v20 = [*(v5 + 64) objectForKeyedSubscript:v13];
          if (v20)
          {
            v50 = v13;
            v51 = v20;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          }

          else
          {
            v21 = 0;
          }

          v22 = [v6 faceObservations];
          v23 = MEMORY[0x1E695DF20];
          v24 = [MEMORY[0x1E696AD98] numberWithBool:(v17 >> 5) & 1];
          if ([*(v5 + 72) setPrimary:ImageBuffer observations:v22 metadata:{objc_msgSend(v23, "dictionaryWithObjectsAndKeys:", v24, *MEMORY[0x1E695F5F0], v43, *MEMORY[0x1E695F5D0], v13, *MEMORY[0x1E695F5E0], v16, *MEMORY[0x1E695F5D8], v19, *MEMORY[0x1E695F5C8], v21, *MEMORY[0x1E695F5E8], 0)}])
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          [a2 setMode:v25];
          v9 = v41;
          v7 = v42;
          v8 = v44;
          a3 = v46;
          v11 = v47;
          if (dword_1EB58E000)
          {
            v49 = 0;
            v48 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a3 = v46;
            v11 = v47;
          }

          goto LABEL_17;
        }

        v30 = FigSignalErrorAtGM();
        v31 = 1;
        v7 = v42;
      }

      else
      {
        OUTLINED_FUNCTION_1_30();
        v30 = FigSignalErrorAtGM();
        v31 = 1;
      }

      v8 = v44;
      goto LABEL_28;
    }

LABEL_17:
    v27 = OUTLINED_FUNCTION_3_19();
    if ([(BWRedEyeReductionController *)v27 _receivedRequiredFramesForRequest:v28])
    {
      v29 = [a2 mode];
      if (v29 == 1)
      {
        if ([v6 requiresSensorInterfaceRawPropagation])
        {
          [BWRedEyeReductionController _propagateSensorInterfaceRawFromAuxImage:v5 toPrimaryImage:v11];
        }
      }

      else if (v29 == 2)
      {
        if ([v6 requiresSensorInterfaceRawPropagation])
        {
          [BWRedEyeReductionController _propagateSensorInterfaceRawFromAuxImage:v5 toPrimaryImage:v11];
        }

        if ([*(v5 + 72) repairPrimaryWithSecondary:CMSampleBufferGetImageBuffer(v11)])
        {
          v30 = 0;
          v31 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_1_30();
          v30 = FigSignalErrorAtGM();
          v31 = 2;
        }

LABEL_28:
        v32 = OUTLINED_FUNCTION_3_19();
        if (![(BWRedEyeReductionController *)v32 _receivedRequiredFramesForRequest:v33]&& !v30 && !a3)
        {
          result = [a2 mode];
          if (result == 2)
          {
            return [objc_msgSend(a2 "delegate")];
          }

          return result;
        }

        if (v30)
        {
          if (!v7)
          {
            goto LABEL_40;
          }
        }

        else if (!v7 || (a3 & 1) == 0)
        {
LABEL_40:
          if (((v7 == 0) & a3) != 0)
          {
            v34 = 4294954516;
          }

          else
          {
            v34 = v30;
          }

          v35 = 17;
          goto LABEL_44;
        }

        v34 = 0;
        v35 = 18;
LABEL_44:
        v36 = [v9 mutableCopy];
        [v36 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v31), *off_1E798A828}];
        CMSetAttachment(v7, v8, v36, 1u);

        [objc_msgSend(a2 "delegate")];
        v37 = OUTLINED_FUNCTION_3_19();
        return [(BWRedEyeReductionController *)v37 _clearRequest:v38];
      }
    }

    goto LABEL_26;
  }

  return result;
}

- (void)_requestForInput:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v3 = *(a1 + 88);
  v4 = OUTLINED_FUNCTION_4_23(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = MEMORY[0];
LABEL_5:
  v7 = 0;
  while (1)
  {
    if (MEMORY[0] != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(8 * v7);
    v9 = [v8 input];
    if (v9 == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = OUTLINED_FUNCTION_4_23(v9, v10);
      if (v5)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

- (void)didReceiveAllFramesForInput:(id)a3
{
  v5 = [(BWRedEyeReductionController *)self _requestForInput:a3];
  if (![a3 primaryImage] || !objc_msgSend(a3, "auxImage") && objc_msgSend(v5, "mode") != 1)
  {
    [(BWRedEyeReductionController *)self _processRedEyeReductionWhenNecessaryForRequest:v5 skipProcessing:1];
  }

  v6 = [a3 processorControllerDelegate];

  [v6 processorController:self didFinishProcessingInput:a3 err:0];
}

- (uint64_t)_clearRequest:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 88) containsObject:a2];
    if (result)
    {
      if (([objc_msgSend(objc_msgSend(objc_msgSend(a2 "input")] & 8) != 0 && objc_msgSend(a2, "mode") == 1)
      {
        [v3 didReceiveAllFramesForInput:{objc_msgSend(a2, "input")}];
      }

      v4 = v3[11];

      return [v4 removeObject:a2];
    }
  }

  return result;
}

- (BOOL)_receivedRequiredFramesForRequest:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a2 input];
  v4 = [a2 mode];
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (![v3 requiresSensorInterfaceRawPropagation])
      {
        return 1;
      }
    }

    else if (v4)
    {
      return v5;
    }
  }

  return [v3 primaryImage] && objc_msgSend(v3, "auxImage") != 0;
}

- (void)_propagateSensorInterfaceRawFromAuxImage:(uint64_t)a1 toPrimaryImage:(const void *)a2
{
  if (a1 && BWSampleBufferGetAttachedMedia(a2, 0x1F21AAAF0))
  {
    v2 = OUTLINED_FUNCTION_3_19();

    BWSampleBufferSetAttachedMedia(v2, v3, v4);
  }
}

@end
@interface BWEspressoInferenceStorage
- (BWEspressoInferenceStorage)initWithBindingNameByRequirement:(id)requirement requirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools requirementsNeedingTensors:(id)tensors;
- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)requirement withPropagationSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)clear;
- (void)dealloc;
@end

@implementation BWEspressoInferenceStorage

- (BWEspressoInferenceStorage)initWithBindingNameByRequirement:(id)requirement requirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools requirementsNeedingTensors:(id)tensors
{
  v23.receiver = self;
  v23.super_class = BWEspressoInferenceStorage;
  v8 = [(BWInferenceProviderStorage *)&v23 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  if (v8)
  {
    v8->_bindingNameByRequirement = [requirement copy];
    v9 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v10 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:259];
    v8->_tensorByRequirement = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v9 valuePointerFunctions:v10 capacity:{objc_msgSend(tensors, "count")}];
    v8->_requirementsUsingTensors = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8->_requirementsUsingPixelBuffers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [tensors countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(tensors);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v16 = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
          *v16 = 0u;
          v16[1] = 0u;
          v16[2] = 0u;
          v16[3] = 0u;
          v16[4] = 0u;
          v16[5] = 0u;
          v16[6] = 0u;
          v16[7] = 0u;
          v16[8] = 0u;
          v16[9] = 0u;
          *(v16 + 20) = 0;
          [(NSMapTable *)v8->_tensorByRequirement setObject:v16 forKey:v15];
          ++v14;
        }

        while (v12 != v14);
        v12 = [tensors countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v12);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (void)clear
{
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 clear];
  [(NSMutableSet *)self->_requirementsUsingTensors removeAllObjects];
  [(NSMutableSet *)self->_requirementsUsingPixelBuffers removeAllObjects];
}

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)requirement withPropagationSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v51 = 0;
  v7 = [(NSMutableSet *)self->_requirementsUsingTensors containsObject:?];
  v8 = [(NSMutableSet *)self->_requirementsUsingPixelBuffers containsObject:requirement];
  if ((v7 & 1) == 0 && !v8)
  {
    return v51;
  }

  videoFormat = [requirement videoFormat];
  if (!videoFormat)
  {
    return v51;
  }

  v10 = videoFormat;
  v11 = [(BWInferenceProviderStorage *)self pixelBufferForRequirement:requirement];
  if (!v11)
  {
    return v51;
  }

  v12 = v11;
  if (v7)
  {
    v13 = [(BWEspressoInferenceStorage *)self tensorForRequirement:requirement];
    if (!v13)
    {
      return v51;
    }

    v14 = v13;
    Height = CVPixelBufferGetHeight(v12);
    v16 = CVPixelBufferGetBytesPerRow(v12) * Height;
    var14 = v14->var14;
    if (var14 == 262152)
    {
      goto LABEL_15;
    }

    v18 = 4;
    if (var14 == 65568)
    {
      goto LABEL_16;
    }

    if (var14 == 131080)
    {
LABEL_15:
      v18 = 1;
    }

    else
    {
      v19 = 2;
      if (var14 != 65552)
      {
        v19 = 0;
      }

      if (var14 != 131104)
      {
        v18 = v19;
      }
    }

LABEL_16:
    if (v16 == v14->var4 * v18 * v14->var5)
    {
      if ([v10 deviceOriented] && objc_msgSend(v10, "pixelFormat") == 1278226534 && ((v20 = CMGetAttachment(buffer, @"UprightExifOrientation", 0)) != 0 || (v20 = objc_msgSend(CMGetAttachment(buffer, *off_1E798A3C8, 0), "objectForKeyedSubscript:", *off_1E798A5B0)) != 0) && (LOBYTE(v49) = 0, (v21 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(objc_msgSend(v20, "intValue"), &v49)) != 0))
      {
        v22 = v21;
        v23 = OUTLINED_FUNCTION_1_74();
        CVPixelBufferLockBaseAddress(v23, v24);
        if (v22 != 360)
        {
          var0 = v14->var0;
          var4 = v14->var4;
          var5 = v14->var5;
          var10 = v14->var10;
          v27 = 4 * var10;
          Width = CVPixelBufferGetWidth(v12);
          v29 = CVPixelBufferGetHeight(v12);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v12);
          BaseAddress = CVPixelBufferGetBaseAddress(v12);
          switch(v22)
          {
            case 90:
              v33 = var0 + 4 * var4 - 4;
              v34 = -4;
              v32 = 4 * var10;
              break;
            case 180:
              v33 = var0 + 4 * var4 + v27 * (var5 - 1) - 4;
              v34 = -4 * var10;
              v32 = -4;
              break;
            case 270:
              v32 = -4 * var10;
              v33 = var0 + v27 * (var5 - 1);
              v34 = 4;
              break;
            default:
              v45 = OUTLINED_FUNCTION_1_74();
              CVPixelBufferUnlockBaseAddress(v45, v46);
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_45();
LABEL_45:
              FigDebugAssert3();
              return v51;
          }

          if (v29)
          {
            for (i = 0; i != v29; ++i)
            {
              if (Width)
              {
                v43 = 0;
                v44 = v33;
                do
                {
                  *&BaseAddress[4 * v43++] = *v44;
                  v44 = (v44 + v32);
                }

                while (Width != v43);
              }

              BaseAddress += BytesPerRow;
              v33 += v34;
            }
          }

          goto LABEL_29;
        }
      }

      else
      {
        v35 = OUTLINED_FUNCTION_1_74();
        CVPixelBufferLockBaseAddress(v35, v36);
      }

      v37 = CVPixelBufferGetBaseAddress(v12);
      memcpy(v37, v14->var0, v16);
LABEL_29:
      v38 = OUTLINED_FUNCTION_1_74();
      CVPixelBufferUnlockBaseAddress(v38, v39);
      goto LABEL_30;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    goto LABEL_45;
  }

LABEL_30:
  v40 = [objc_msgSend(v10 "underlyingVideoFormat")];
  if (v40)
  {
    v40 = CFRetain(v40);
  }

  cf = v40;
  v49 = *MEMORY[0x1E6960C70];
  v50 = *(MEMORY[0x1E6960C70] + 16);
  BWSampleBufferCreateFromPixelBuffer(v12, &v49, &cf, &v51);
  if (cf)
  {
    CFRelease(cf);
  }

  return v51;
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  metadataKeys = [requirement metadataKeys];
  v7 = [(BWEspressoInferenceStorage *)self tensorForRequirement:requirement];
  if (!v7 || (v8 = v7, !v7->var0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    FigDebugAssert3();
    return v5;
  }

  v9 = v7->var5 * v7->var4 * v7->var6 * v7->var7 * v7->var8;
  mappingOption = [requirement mappingOption];
  v11 = mappingOption;
  if (!mappingOption || mappingOption == 2)
  {
    v18 = [metadataKeys count];
    if (v18 >= v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = v18;
      for (i = 0; i != v19; ++i)
      {
        v22 = [metadataKeys objectAtIndexedSubscript:i];
        LODWORD(v23) = *(v8->var0 + i);
        [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), v22}];
      }

      if (v11 == 2 && v20 < v9)
      {
        v25 = [metadataKeys objectAtIndexedSubscript:v19 - 1];
        v26 = [v5 objectForKeyedSubscript:v25];
        v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v26, 0}];
        do
        {
          LODWORD(v27) = *(v8->var0 + v19);
          [v12 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v27)}];
          ++v19;
        }

        while (v9 != v19);
        v16 = v5;
        v17 = v12;
        firstObject = v25;
LABEL_23:
        [v16 setObject:v17 forKeyedSubscript:firstObject];
      }
    }
  }

  else if (mappingOption == 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    if (v9)
    {
      for (j = 0; j != v9; ++j)
      {
        LODWORD(v13) = *(v8->var0 + j);
        [v12 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13)}];
      }
    }

    firstObject = [metadataKeys firstObject];
    v16 = v5;
    v17 = v12;
    goto LABEL_23;
  }

  return v5;
}

@end
@interface BWTiledInferenceProvider
+ (id)videoFormatWithPixelFormat:(unsigned int)a3 size:(unsigned int)a4 sliceCount:(BOOL)a5 includesInvalidContent:(BOOL)a6 appliesFinalCropRect:;
- (BWTiledInferenceProvider)initWithConfiguration:(id)a3 inputVideoRequirements:(id)a4 outputVideoRequirements:(id)a5 resourceProvider:(id)a6;
- (CVMetalTextureRef)_cachedTexturesFromPixelBuffer:(uint64_t)a3 usage:;
- (id)newStorage;
- (int)loadNetworkWithURL:(id)a3 configName:(id)a4 inferenceType:(int)a5 maxTileCount:(id)a6 inputFormatsByBindingName:(id)a7 outputFormatsByBindingName:(id)a8 additionalVideoRequirements:;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7 currentTileCount:;
- (uint64_t)_metalTextureFormatFromPixelBufferFormat:(int)a3 forPlane:;
- (uint64_t)newStorage;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWTiledInferenceProvider

+ (id)videoFormatWithPixelFormat:(unsigned int)a3 size:(unsigned int)a4 sliceCount:(BOOL)a5 includesInvalidContent:(BOOL)a6 appliesFinalCropRect:
{
  v7 = v6;
  v8 = a6;
  v9 = a5;
  v11 = *&a3;
  v12 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v12 setWidth:a4];
  [(BWVideoFormatRequirements *)v12 setHeight:HIWORD(a4)];
  [(BWVideoFormatRequirements *)v12 setSliceCount:v9];
  if (v7)
  {
    v13 = [BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:@"TiledEspresso"];
  }

  else
  {
    v13 = 0;
  }

  [(BWInferenceVideoFormatRequirements *)v12 setCropDescriptor:v13];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v12, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]);
  [(BWInferenceVideoFormatRequirements *)v12 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v12 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v12 setIncludesInvalidContent:v8];
  v15 = v12;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
}

- (BWTiledInferenceProvider)initWithConfiguration:(id)a3 inputVideoRequirements:(id)a4 outputVideoRequirements:(id)a5 resourceProvider:(id)a6
{
  v12.receiver = self;
  v12.super_class = BWTiledInferenceProvider;
  v10 = [(BWTiledInferenceProvider *)&v12 init];
  if (v10)
  {
    v10->_configuration = a3;
    objc_storeWeak(&v10->_resourceProvider, a6);
    v10->_inputVideoRequirements = a4;
    v10->_outputVideoRequirements = a5;
    *v10->_maxTileCount = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledInferenceProvider;
  [(BWTiledInferenceProvider *)&v3 dealloc];
}

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
  }
}

- (int)loadNetworkWithURL:(id)a3 configName:(id)a4 inferenceType:(int)a5 maxTileCount:(id)a6 inputFormatsByBindingName:(id)a7 outputFormatsByBindingName:(id)a8 additionalVideoRequirements:
{
  if (self->_espressoProvider)
  {
    return 0;
  }

  v52 = v8;
  v53 = v9;
  v13 = a6;
  v14 = *&a5;
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v40 = [MEMORY[0x1E695DF70] array];
  v39 = [MEMORY[0x1E695DF70] array];
  if (![(NSArray *)self->_inputVideoRequirements count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (![(NSArray *)self->_outputVideoRequirements count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (![a7 count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (![a8 count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  v38 = a8;
  v20 = [objc_loadWeak(&self->_resourceProvider) espressoContextForExecutionTarget:3];
  *self->_maxTileCount = v13;
  v21 = [BWEspressoInferenceProvider alloc];
  v22 = v14;
  v23 = [(BWInferenceConfiguration *)self->_configuration priority];
  LOBYTE(v37) = 0;
  LODWORD(v36) = 0;
  v24 = -[BWEspressoInferenceProvider initWithType:networkURL:networkConfiguration:context:executionTarget:schedulerPriority:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:updateMetadataWithCropRect:](v21, "initWithType:networkURL:networkConfiguration:context:executionTarget:schedulerPriority:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:updateMetadataWithCropRect:", v22, a3, a4, v20, 3, v23, [MEMORY[0x1E695DFD8] set], objc_loadWeak(&self->_resourceProvider), v36, 2, v37);
  self->_espressoProvider = v24;
  if (!v24)
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = [a7 countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(a7);
        }

        v29 = *(*(&v47 + 1) + 8 * i);
        [v40 addObject:v29];
        [v18 addObject:{-[BWEspressoInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", v29, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileInput_%@", v29), objc_msgSend(a7, "objectForKeyedSubscript:", v29))}];
        if (![v18 lastObject])
        {
          [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v51[0];
        }
      }

      v26 = [a7 countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  self->_tileInputBindingNames = v40;
  self->_tileInputVideoRequirements = v18;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = [v38 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v38);
        }

        v34 = *(*(&v42 + 1) + 8 * j);
        [v39 addObject:v34];
        [v19 addObject:{-[BWEspressoInferenceProvider bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:", v34, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileOutput_%@", v34), objc_msgSend(v38, "objectForKeyedSubscript:", v34))}];
        if (![v19 lastObject])
        {
          [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v51[0];
        }
      }

      v31 = [v38 countByEnumeratingWithState:&v42 objects:v41 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  self->_tileOutputBindingNames = v39;
  self->_tileOutputVideoRequirements = v19;
  v35 = v54;
  result = 0;
  self->_additionalVideoRequirements = v35;
  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7 currentTileCount:
{
  v8 = v7;
  v12 = [(NSArray *)self->_inputVideoRequirements count:a3];
  v96 = [(NSArray *)self->_tileInputVideoRequirements count];
  v13 = [(NSArray *)self->_outputVideoRequirements count];
  v14 = [(NSArray *)self->_tileOutputVideoRequirements count];
  if ([objc_msgSend(a4 "espressoStorages")] != 2)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
LABEL_125:
    v99 = 0;
    v55 = 0;
    v15 = 0;
    v101 = 0;
    v16 = 0;
    v103 = 0;
    v17 = 0;
    v53 = v108;
    v54 = 1;
    goto LABEL_64;
  }

  if (v8 > *self->_maxTileCount)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    goto LABEL_125;
  }

  v91 = HIWORD(v8);
  if (HIWORD(v8) > *&self->_maxTileCount[2])
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    goto LABEL_125;
  }

  count = v13;
  v85 = a7;
  v100 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  v102 = malloc_type_calloc(2 * (v96 & 0x7FFFFFFF), 8uLL, 0x2004093837F09uLL);
  if (!v102)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v99 = 0;
    v55 = 0;
    v15 = 0;
    v101 = 0;
    v16 = 0;
    v103 = 0;
    v53 = v108;
    v54 = 1;
    v17 = v100;
    goto LABEL_64;
  }

  v83 = v8;
  v15 = malloc_type_calloc(2 * (v96 & 0x7FFFFFFF), 8uLL, 0x80040B8603338uLL);
  if (!v15)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v99 = 0;
    v55 = 0;
    v101 = 0;
    v16 = 0;
    v103 = 0;
LABEL_129:
    v53 = v108;
    v54 = 1;
    v17 = v100;
    goto LABEL_53;
  }

  v82 = v8;
  v103 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_additionalVideoRequirements, "count")}];
  v88 = v14;
  v101 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v86 = malloc_type_calloc(v13, 8uLL, 0x2004093837F09uLL);
  if (!v86)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v99 = 0;
    v55 = 0;
    goto LABEL_129;
  }

  v17 = v100;
  v99 = malloc_type_calloc(v13, 8uLL, 0x80040B8603338uLL);
  if (!v99)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v99 = 0;
    goto LABEL_131;
  }

  v97 = v16;
  if (v12)
  {
    v18 = 0;
    while (1)
    {
      v19 = [(NSArray *)self->_inputVideoRequirements objectAtIndexedSubscript:v18];
      v20 = [-[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements objectAtIndexedSubscript:{v18), "attachedMediaKey"}];
      v21 = [v19 videoStorageType];
      if (v21 == 1)
      {
        break;
      }

      if (!v21)
      {
        v22 = -[BWTiledInferenceProvider _cachedTexturesFromPixelBuffer:usage:](self, [a4 pixelBufferForRequirement:v19], 17);
LABEL_14:
        [v100 setObject:v22 forKeyedSubscript:v20];
      }

      if (![v100 objectForKeyedSubscript:v20])
      {
        [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
        v53 = v108;
        v54 = 1;
        goto LABEL_51;
      }

      if (v12 == ++v18)
      {
        goto LABEL_17;
      }
    }

    v120 = *[objc_msgSend(a4 "textureStorage")];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:2];
    goto LABEL_14;
  }

LABEL_17:
  if (v96)
  {
    for (i = 0; i != v96; ++i)
    {
      v24 = [(NSArray *)self->_tileInputVideoRequirements objectAtIndexedSubscript:i];
      v25 = 0;
      v26 = 2 * i;
      v27 = 1;
      do
      {
        v28 = v27;
        v29 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{v24), "newPixelBuffer"}];
        if (!v29)
        {
          [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
          v53 = v108;
          v54 = 1;
          a7 = v85;
          v17 = v100;
          goto LABEL_51;
        }

        v30 = v29;
        v102[v25 | v26] = v29;
        v15[v25 | v26] = [(BWTiledInferenceProvider *)self _cachedTexturesFromPixelBuffer:v29 usage:23];
        [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
        v27 = 0;
        v25 = 1;
      }

      while ((v28 & 1) != 0);
    }
  }

  v92 = v15;
  v31 = 0;
  v32 = 1;
  do
  {
    v33 = v32;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    tileOutputVideoRequirements = self->_tileOutputVideoRequirements;
    v35 = [(NSArray *)tileOutputVideoRequirements countByEnumeratingWithState:&v116 objects:v115 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v117;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v117 != v37)
          {
            objc_enumerationMutation(tileOutputVideoRequirements);
          }

          [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
        }

        v36 = [(NSArray *)tileOutputVideoRequirements countByEnumeratingWithState:&v116 objects:v115 count:16];
      }

      while (v36);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    additionalVideoRequirements = self->_additionalVideoRequirements;
    v40 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v111 objects:v110 count:16];
    if (v40)
    {
      v42 = v40;
      v43 = *v112;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v112 != v43)
          {
            objc_enumerationMutation(additionalVideoRequirements);
          }

          v45 = *(*(&v111 + 1) + 8 * k);
          v46 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{v45), "newPixelBuffer"}];
          if (!v46)
          {
            [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
            v53 = v108;
LABEL_49:
            v54 = 1;
            a7 = v85;
            v17 = v100;
            goto LABEL_50;
          }

          v47 = v46;
          [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
          CFRelease(v47);
        }

        v42 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v111 objects:v110 count:16];
      }

      while (v42);
    }

    v32 = 0;
    v31 = 1;
  }

  while ((v33 & 1) != 0);
  v17 = v100;
  v15 = v92;
  v16 = v97;
  if (count)
  {
    for (m = 0; count != m; ++m)
    {
      v49 = [(NSArray *)self->_outputVideoRequirements objectAtIndexedSubscript:m];
      v50 = [v49 videoStorageType];
      if (v50)
      {
        if (v50 == 1)
        {
          fig_log_get_emitter();
          v53 = FigSignalErrorAtGM();
          goto LABEL_103;
        }
      }

      else
      {
        v52 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{v49), "newPixelBuffer"}];
        if (!v52)
        {
          [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
LABEL_131:
          v53 = v108;
LABEL_103:
          v54 = 1;
LABEL_114:
          a7 = v85;
          goto LABEL_52;
        }

        *&v86[8 * m] = v52;
        v99[m] = [(BWTiledInferenceProvider *)self _cachedTexturesFromPixelBuffer:v52 usage:22];
      }

      v51 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
      -[BWTiledInferenceProvider preProcessOutputTexture:forMediaKey:encodeToCmdBuffer:](self, "preProcessOutputTexture:forMediaKey:encodeToCmdBuffer:", v99[m], [-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements objectAtIndexedSubscript:{m), "attachedMediaKey"}], v51);
      [v51 commit];
    }
  }

  if (!v83)
  {
    v61 = 0;
LABEL_106:
    [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
    [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
    v15 = v92;
    if (count)
    {
      for (n = 0; n != count; ++n)
      {
        [a4 setPixelBuffer:*&v86[8 * n] forRequirement:{-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements, "objectAtIndexedSubscript:", n)}];
      }
    }

    v54 = v61 == 0;
    if (v61)
    {
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __127__BWTiledInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2;
      v106[3] = &unk_1E798FB70;
      v107 = 0;
      v106[4] = self;
      v106[5] = v85;
      [v61 addScheduledHandler:v106];
      [v61 commit];
    }

    textureCache = self->_textureCache;
    if (textureCache)
    {
      CVMetalTextureCacheFlush(textureCache, 0);
    }

    [(BWTiledInferenceProvider *)self purgeIntermediateResources];
    v53 = 0;
    goto LABEL_114;
  }

  v61 = 0;
  v87 = 0;
  v98 = 0;
  while (v82 < 0x10000)
  {
LABEL_100:
    if (++v87 == v83)
    {
      goto LABEL_106;
    }
  }

  v62 = 0;
  v41.i32[0] = v87;
  v84 = vmovl_u16(v41).u32[0];
  while (1)
  {
    v93 = v62;
    v94 = __PAIR64__(v62, v84);
    if (v96)
    {
      v63 = 0;
      HIWORD(v105) = v62;
      LOWORD(v105) = v84;
      v64 = &v92[v98];
      while (1)
      {
        v65 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
        v66 = [(BWTiledInferenceProvider *)self createInputTileFor:[(NSArray *)self->_tileInputBindingNames objectAtIndexedSubscript:v63] to:*v64 withInputs:v100 atPosition:v105 encodeToCmdBuffer:v65];
        if (v66)
        {
          break;
        }

        [v103 setObject:*v64 forKeyedSubscript:{-[NSArray objectAtIndexedSubscript:](self->_tileInputBindingNames, "objectAtIndexedSubscript:", v63)}];
        [v65 commit];
        if (v96 - 1 == v63)
        {
          [v65 waitUntilScheduled];
        }

        ++v63;
        v64 += 2;
        if (v96 == v63)
        {
          goto LABEL_78;
        }
      }

      v53 = v66;
      [BWTiledInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
      goto LABEL_49;
    }

LABEL_78:
    v67 = [(BWTiledEspressoInferenceConfiguration *)self->_configuration forceSynchronousInference];
    espressoProvider = self->_espressoProvider;
    v69 = [objc_msgSend(a4 "espressoStorages")];
    if (v67)
    {
      v108 = *&a5->var0;
      var3 = a5->var3;
      v70 = [(BWEspressoInferenceProvider *)espressoProvider executeOnSampleBuffer:a3 usingStorage:v69 withExecutionTime:&v108 completionHandler:0];
    }

    else
    {
      espressoWorkQueue = self->_espressoWorkQueue;
      v108 = *&a5->var0;
      var3 = a5->var3;
      v70 = [(BWEspressoInferenceProvider *)espressoProvider submitForSampleBuffer:a3 usingStorage:v69 withSubmissionTime:&v108 workQueue:espressoWorkQueue completionHandler:0];
    }

    v53 = v70;
    v17 = v100;
    v16 = v97;
    if (v70)
    {
      [BWTiledInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
LABEL_117:
      v54 = 1;
      a7 = v85;
      v15 = v92;
      goto LABEL_52;
    }

    if (v88)
    {
      v72 = 0;
      while (1)
      {
        v73 = [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
        if (!v73)
        {
          break;
        }

        [v101 setObject:-[BWTiledInferenceProvider _cachedTexturesFromPixelBuffer:usage:](self forKeyedSubscript:{v73, 17), -[NSArray objectAtIndexedSubscript:](self->_tileOutputBindingNames, "objectAtIndexedSubscript:", v72++)}];
        if (v88 == v72)
        {
          goto LABEL_86;
        }
      }

      [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
      v53 = v108;
      goto LABEL_117;
    }

LABEL_86:
    if ([(NSArray *)self->_additionalVideoRequirements count])
    {
      break;
    }

LABEL_90:
    if (count)
    {
      v77 = 0;
      HIWORD(v104) = WORD2(v94);
      LOWORD(v104) = v94;
      while (1)
      {
        v61 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
        LODWORD(v81) = v104;
        v78 = -[BWTiledInferenceProvider writeOutputFor:to:fromNetworkOutputTiles:withAdditionalTextures:withInputTileTextures:withInputFullTextures:atPosition:encodeToCmdBuffer:](self, "writeOutputFor:to:fromNetworkOutputTiles:withAdditionalTextures:withInputTileTextures:withInputFullTextures:atPosition:encodeToCmdBuffer:", [-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements objectAtIndexedSubscript:{v77), "attachedMediaKey"}], v99[v77], v101, v16, v103, v100, v81, v61);
        if (v78)
        {
          break;
        }

        if (count - 1 != v77)
        {
          [v61 commit];
        }

        if (count == ++v77)
        {
          goto LABEL_96;
        }
      }

      v53 = v78;
      [BWTiledInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
      goto LABEL_117;
    }

LABEL_96:
    [v61 addCompletedHandler:&__block_literal_global_37];
    if (v83 - 1 != v87 || v91 - 1 != v93)
    {
      [v61 commit];
    }

    v98 = !v98;
    [v103 removeAllObjects];
    [v16 removeAllObjects];
    [v101 removeAllObjects];
    v62 = v93 + 1;
    if (v93 + 1 == v91)
    {
      goto LABEL_100;
    }
  }

  v74 = 0;
  while (1)
  {
    v75 = [-[NSArray objectAtIndexedSubscript:](self->_additionalVideoRequirements objectAtIndexedSubscript:{v74), "attachedMediaKey"}];
    v76 = [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
    if (!v76)
    {
      break;
    }

    v16 = v97;
    [v97 setObject:-[BWTiledInferenceProvider _cachedTexturesFromPixelBuffer:usage:](self forKeyedSubscript:{v76, 23), v75}];
    if ([(NSArray *)self->_additionalVideoRequirements count]<= ++v74)
    {
      goto LABEL_90;
    }
  }

  [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
  v53 = v108;
  v54 = 1;
  a7 = v85;
LABEL_50:
  v15 = v92;
LABEL_51:
  v16 = v97;
LABEL_52:
  v55 = v86;
LABEL_53:
  v56 = (2 * v96);
  if (v56)
  {
    v57 = v102;
    do
    {
      if (*v57)
      {
        CFRelease(*v57);
      }

      ++v57;
      --v56;
    }

    while (v56);
  }

  free(v102);
  if (v55 && count)
  {
    v58 = 0;
    do
    {
      v59 = *&v55[v58];
      if (v59)
      {
        CFRelease(v59);
      }

      v58 += 8;
    }

    while (8 * count != v58);
  }

LABEL_64:
  free(v55);
  free(v99);
  free(v15);

  if (a7 && v54)
  {
    (*(a7 + 2))(a7, v53, self);
  }

  return v53;
}

uint64_t __127__BWTiledInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v7 = *self->_maxTileCount;
  v9 = *a5;
  return [(BWTiledInferenceProvider *)self submitForSampleBuffer:a3 usingStorage:a4 withSubmissionTime:&v9 workQueue:a6 completionHandler:a7 currentTileCount:v7];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  outputVideoRequirements = self->_outputVideoRequirements;
  v10 = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(outputVideoRequirements);
        }

        [(BWTiledInferenceProvider *)self propagateInferenceResultForOutputRequirement:*(*(&v15 + 1) + 8 * i) storage:a4 propagationSampleBuffer:a6];
      }

      v11 = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v11);
  }
}

- (id)newStorage
{
  if (self->_espressoProvider)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_inputVideoRequirements count])
    {
      v5 = 0;
      do
      {
        v6 = [(NSArray *)self->_inputVideoRequirements objectAtIndexedSubscript:v5];
        if (![v6 videoStorageType])
        {
          [v4 addObject:v6];
        }

        ++v5;
      }

      while (v5 < [(NSArray *)self->_inputVideoRequirements count]);
    }

    v7 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_outputVideoRequirements count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_outputVideoRequirements objectAtIndexedSubscript:v8];
        if (![v9 videoStorageType])
        {
          [v7 addObject:v9];
        }

        ++v8;
      }

      while (v8 < [(NSArray *)self->_outputVideoRequirements count]);
    }

    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      [v3 addObject:{-[BWEspressoInferenceProvider newStorage](self->_espressoProvider, "newStorage")}];
      [v7 addObjectsFromArray:{objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", v10), "requirementsNeedingPixelBuffers")}];
      [v7 addObjectsFromArray:{objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", v10), "requirementsNeedingPixelBufferPools")}];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      additionalVideoRequirements = self->_additionalVideoRequirements;
      v14 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(additionalVideoRequirements);
            }

            [v7 addObject:*(*(&v20 + 1) + 8 * i)];
          }

          v15 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v15);
      }

      v11 = 0;
      v10 = 1;
    }

    while ((v12 & 1) != 0);
    return [[BWTiledInferenceStorage alloc] initWithRequirementsNeedingPixelBuffers:v4 requirementsNeedingPixelBufferPools:v7 espressoStorages:v3];
  }

  else
  {
    [BWTiledInferenceProvider newStorage];
    return 0;
  }
}

- (CVMetalTextureRef)_cachedTexturesFromPixelBuffer:(uint64_t)a3 usage:
{
  if (result)
  {
    v4 = result;
    image = 0;
    result = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (result)
    {
      v5 = result;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      PlaneCount = CVPixelBufferGetPlaneCount(a2);
      v8 = 0;
      v9 = 0;
      if (PlaneCount <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = PlaneCount;
      }

      v15 = v10;
      v17 = *MEMORY[0x1E6966010];
      allocator = *MEMORY[0x1E695E480];
      while (1)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v8);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v8);
        v13 = [(BWTiledInferenceProvider *)v4 _metalTextureFormatFromPixelBufferFormat:v9 forPlane:?];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v19 = v17;
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        if (CVMetalTextureCacheCreateTextureFromImage(allocator, *(v4 + 120), a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1], v14, WidthOfPlane >> (PixelFormatType == 1647719528), HeightOfPlane >> (PixelFormatType == 1647719528), v8, &image))
        {
          break;
        }

        [(__CVBuffer *)v5 setObject:CVMetalTextureGetTexture(image) atIndexedSubscript:v8];
        if (![(__CVBuffer *)v5 objectAtIndexedSubscript:v8])
        {
          break;
        }

        if (image)
        {
          CFRelease(image);
        }

        v8 = ++v9;
        if (v15 <= v9)
        {
          return v5;
        }
      }

      result = image;
      if (image)
      {
        CFRelease(image);
        return 0;
      }
    }
  }

  return result;
}

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  if (!self->_espressoProvider)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x1E6991778]);
  v6 = [v5 initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), -[BWTiledEspressoInferenceConfiguration metalCommandQueue](self->_configuration, "metalCommandQueue")}];
  self->_metalContext = v6;
  if (!v6)
  {
    return -12786;
  }

  v10 = *MEMORY[0x1E6966000];
  v11 = &unk_1F2243150;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  if (CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], v7, [(FigMetalContext *)self->_metalContext device], 0, &self->_textureCache))
  {
    return 0;
  }

  v8 = [(BWEspressoInferenceProvider *)self->_espressoProvider prepareForSubmissionWithWorkQueue:a3];
  if (v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
  }

  else
  {
    self->_espressoWorkQueue = a3;
  }

  return v8;
}

- (uint64_t)_metalTextureFormatFromPixelBufferFormat:(int)a3 forPlane:
{
  if (result)
  {
    if (a2 != 641230384)
    {
      switch(a2)
      {
        case 645424688:
          goto LABEL_32;
        case 758670896:
          goto LABEL_28;
        case 762865200:
          goto LABEL_32;
        case 792225328:
          goto LABEL_28;
        case 796419632:
LABEL_32:
          if (a3)
          {
            return 589;
          }

          else
          {
            return 588;
          }

        case 843264056:
          return 30;
        case 843264104:
          return 65;
      }

      if (a2 != 875704422 && a2 != 875704438)
      {
        if (a2 == 1111970369)
        {
          return 80;
        }

        if (a2 != 2088265264)
        {
          switch(a2)
          {
            case 1278226534:
              return 55;
            case 1278226536:
              return 25;
            case 1380411457:
            case 1647719528:
              return 115;
            case 1751527984:
              v5 = a3 == 0;
              v6 = 65;
              v7 = 25;
              goto LABEL_29;
          }

          if (a2 != 1885745712)
          {
            if (a2 != 2019963440)
            {
              if (a2 != 2084070960)
              {
                if (a2 == 1278226488)
                {
                  return 10;
                }

                else
                {
                  return 0;
                }
              }

              goto LABEL_28;
            }

            v5 = a3 == 0;
            v6 = 60;
            v7 = 20;
LABEL_29:
            if (v5)
            {
              return v7;
            }

            else
            {
              return v6;
            }
          }
        }

        goto LABEL_32;
      }
    }

LABEL_28:
    v5 = a3 == 0;
    v6 = 30;
    v7 = 10;
    goto LABEL_29;
  }

  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)newStorage
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end
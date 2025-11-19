@interface BWTiledEspressoInferenceProvider
+ (id)videoFormatWithPixelFormat:(unsigned int)a3 size:(unsigned int)a4 sliceCount:(BOOL)a5 includesInvalidContent:(BOOL)a6 appliesFinalCropRect:;
- (BWTiledEspressoInferenceProvider)initWithConfiguration:(id)a3 inputVideoRequirements:(id)a4 outputVideoRequirements:(id)a5 resourceProvider:(id)a6;
- (id)newStorage;
- (int)loadNetworkWithURL:(id)a3 configName:(id)a4 inferenceType:(int)a5 maxTileCount:(id)a6 inputFormatsByBindingName:(id)a7 outputFormatsByBindingName:(id)a8 additionalVideoRequirements:;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)reconcileWithPlaceholderProvider:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7 currentTileCount:;
- (uint64_t)newStorage;
- (void)dealloc;
- (void)migrateInputVideoRequirements:(id)a3 outputVideoRequirements:(id)a4;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWTiledEspressoInferenceProvider

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

- (BWTiledEspressoInferenceProvider)initWithConfiguration:(id)a3 inputVideoRequirements:(id)a4 outputVideoRequirements:(id)a5 resourceProvider:(id)a6
{
  v12.receiver = self;
  v12.super_class = BWTiledEspressoInferenceProvider;
  v10 = [(BWTiledEspressoInferenceProvider *)&v12 init];
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

- (void)migrateInputVideoRequirements:(id)a3 outputVideoRequirements:(id)a4
{
  self->_inputVideoRequirements = a3;

  self->_outputVideoRequirements = a4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledEspressoInferenceProvider;
  [(BWTiledEspressoInferenceProvider *)&v3 dealloc];
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

  v57 = v8;
  v58 = v9;
  v13 = a6;
  v14 = *&a5;
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v45 = [MEMORY[0x1E695DF70] array];
  v44 = [MEMORY[0x1E695DF70] array];
  if (![(NSArray *)self->_inputVideoRequirements count])
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  if (![(NSArray *)self->_outputVideoRequirements count])
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  if (![a7 count])
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  if (![a8 count])
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  v20 = v19;
  v21 = a3;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  v41 = v20;
  v42 = a8;
  v22 = [objc_loadWeak(&self->_resourceProvider) espressoContextForExecutionTarget:3];
  *self->_maxTileCount = v13;
  v43 = [BWEspressoInferenceProvider alloc];
  v23 = [(BWInferenceConfiguration *)self->_configuration priority];
  v24 = v14;
  v25 = [MEMORY[0x1E695DFD8] set];
  Weak = objc_loadWeak(&self->_resourceProvider);
  LOBYTE(v40) = 0;
  LODWORD(v39) = [(BWTiledEspressoInferenceProvider *)self allowedPixelBufferCompressionDirection];
  v27 = [(BWEspressoInferenceProvider *)v43 initWithType:v24 networkURL:v21 networkConfiguration:a4 context:v22 executionTarget:3 schedulerPriority:v23 preventionReasons:v25 resourceProvider:Weak allowedCompressionDirection:v39 concurrentSubmissionLimit:2 updateMetadataWithCropRect:v40];
  self->_espressoProvider = v27;
  if (!v27)
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = [a7 countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(a7);
        }

        v32 = *(*(&v52 + 1) + 8 * i);
        [v45 addObject:v32];
        [v18 addObject:{-[BWEspressoInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", v32, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileInput_%i_%@", -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType"), v32), objc_msgSend(a7, "objectForKeyedSubscript:", v32))}];
        if (![v18 lastObject])
        {
          [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v56[0];
        }
      }

      v29 = [a7 countByEnumeratingWithState:&v52 objects:v51 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  self->_tileInputBindingNames = v45;
  self->_tileInputVideoRequirements = v18;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = [v42 countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v48;
    while (2)
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(v42);
        }

        v37 = *(*(&v47 + 1) + 8 * j);
        [v44 addObject:v37];
        [v41 addObject:{-[BWEspressoInferenceProvider bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:", v37, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileOutput_%i_%@", -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType"), v37), objc_msgSend(v42, "objectForKeyedSubscript:", v37))}];
        if (![v41 lastObject])
        {
          [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v56[0];
        }
      }

      v34 = [v42 countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  self->_tileOutputBindingNames = v44;
  self->_tileOutputVideoRequirements = v41;
  v38 = v59;
  result = 0;
  self->_additionalVideoRequirements = v38;
  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7 currentTileCount:
{
  v8 = v7;
  v12 = [(BWTiledEspressoInferenceProvider *)self outputRequirementsToProduceForInputSampleBuffer:a3, a4, a5, a6];
  v13 = [(NSArray *)self->_inputVideoRequirements count];
  v14 = [(NSArray *)self->_tileInputVideoRequirements count];
  count = [v12 count];
  v15 = [(NSArray *)self->_tileOutputVideoRequirements count];
  if ([objc_msgSend(a4 "espressoStorages")] != 2)
  {
    [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
LABEL_113:
    v17 = 0;
    v95 = 0;
    v70 = 0;
    v18 = 0;
    v16 = 0;
LABEL_115:
    v57 = v99;
    v65 = 1;
    goto LABEL_90;
  }

  if (v8 > *self->_maxTileCount)
  {
    [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    goto LABEL_113;
  }

  v83 = HIWORD(v8);
  if (HIWORD(v8) > *&self->_maxTileCount[2])
  {
    [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    goto LABEL_113;
  }

  v76 = v8;
  v92 = v12;
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v91 = malloc_type_calloc(2 * (v14 & 0x7FFFFFFF), 8uLL, 0x2004093837F09uLL);
  if (!v91)
  {
    [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v17 = 0;
    v95 = 0;
    v70 = 0;
    v18 = 0;
    goto LABEL_115;
  }

  v75 = v8;
  v87 = v14;
  v90 = v14;
  v84 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v85 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_additionalVideoRequirements, "count")}];
  v94 = v15;
  v95 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v17 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
  if (v17)
  {
    v18 = v84;
    if (v13)
    {
      v19 = 0;
      while (1)
      {
        v20 = [-[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements objectAtIndexedSubscript:{v19), "attachedMediaKey"}];
        [v16 setObject:objc_msgSend(a4 forKeyedSubscript:{"pixelBufferForRequirement:", -[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements, "objectAtIndexedSubscript:", v19)), v20}];
        if (![v16 objectForKeyedSubscript:v20])
        {
          break;
        }

        if (v13 == ++v19)
        {
          goto LABEL_10;
        }
      }

      [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    }

    else
    {
LABEL_10:
      v80 = v16;
      if (v87)
      {
        v21 = 0;
        while (2)
        {
          v22 = [(NSArray *)self->_tileInputVideoRequirements objectAtIndexedSubscript:v21];
          v23 = 0;
          v24 = 1;
          v25 = &v91[2 * v21];
          do
          {
            v26 = v24;
            v27 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{v22), "newPixelBuffer"}];
            v25[v23] = v27;
            if (!v27)
            {
              [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
              v57 = v99;
              v65 = 1;
              v16 = v80;
              goto LABEL_78;
            }

            [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
            v24 = 0;
            v23 = 1;
          }

          while ((v26 & 1) != 0);
          if (++v21 != v90)
          {
            continue;
          }

          break;
        }
      }

      v93 = v17;
      v78 = a7;
      v28 = 0;
      v29 = 1;
      do
      {
        v88 = v29;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        tileOutputVideoRequirements = self->_tileOutputVideoRequirements;
        v31 = [(NSArray *)tileOutputVideoRequirements countByEnumeratingWithState:&v108 objects:v107 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v109;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v109 != v33)
              {
                objc_enumerationMutation(tileOutputVideoRequirements);
              }

              [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
            }

            v32 = [(NSArray *)tileOutputVideoRequirements countByEnumeratingWithState:&v108 objects:v107 count:16];
          }

          while (v32);
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        additionalVideoRequirements = self->_additionalVideoRequirements;
        v36 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v103 objects:v102 count:16];
        if (v36)
        {
          v38 = v36;
          v39 = *v104;
          while (2)
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v104 != v39)
              {
                objc_enumerationMutation(additionalVideoRequirements);
              }

              v41 = *(*(&v103 + 1) + 8 * j);
              v42 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{v41), "newPixelBuffer"}];
              if (!v42)
              {
                [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
                v57 = v99;
                v65 = 1;
                a7 = v78;
                v16 = v80;
                v18 = v84;
                v17 = v93;
                goto LABEL_78;
              }

              v43 = v42;
              [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
              CFRelease(v43);
            }

            v38 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v103 objects:v102 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

        v29 = 0;
        v28 = 1;
      }

      while ((v88 & 1) != 0);
      a7 = v78;
      v16 = v80;
      v18 = v84;
      v44 = v92;
      v17 = v93;
      if (!count)
      {
LABEL_37:
        if (v76)
        {
          v79 = 0;
          v47 = 0;
          v74 = 0;
          while (v75 < 0x10000)
          {
LABEL_74:
            if (++v79 == v76)
            {
              goto LABEL_95;
            }
          }

          v89 = 0;
          v37.i32[0] = v79;
          v77 = vmovl_u16(v37).u16[0];
          while (1)
          {
            v101 = 0;
            if (v87)
            {
              v48 = 0;
              v49 = &v91[v47];
              do
              {
                v50 = *v49;
                v49 += 2;
                [v84 setObject:v50 forKeyedSubscript:{-[NSArray objectAtIndexedSubscript:](self->_tileInputBindingNames, "objectAtIndexedSubscript:", v48++)}];
              }

              while (v90 != v48);
            }

            HIWORD(v96) = v89;
            LOWORD(v96) = v77;
            v51 = [(BWTiledEspressoInferenceProvider *)self createInputTiles:v84 withInputs:v80 atPosition:v96 cmdBuffer:&v101];
            if (v51)
            {
              v57 = v51;
              [BWTiledEspressoInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
              goto LABEL_104;
            }

            [v101 commit];
            [v101 waitUntilScheduled];
            v52 = [(BWTiledEspressoInferenceConfiguration *)self->_configuration forceSynchronousInference];
            espressoProvider = self->_espressoProvider;
            v54 = [objc_msgSend(a4 "espressoStorages")];
            if (v52)
            {
              v99 = *&a5->var0;
              var3 = a5->var3;
              v55 = [(BWEspressoInferenceProvider *)espressoProvider executeOnSampleBuffer:a3 usingStorage:v54 withExecutionTime:&v99 completionHandler:0];
            }

            else
            {
              espressoWorkQueue = self->_espressoWorkQueue;
              v99 = *&a5->var0;
              var3 = a5->var3;
              v55 = [(BWEspressoInferenceProvider *)espressoProvider submitForSampleBuffer:a3 usingStorage:v54 withSubmissionTime:&v99 workQueue:espressoWorkQueue completionHandler:0];
            }

            v57 = v55;
            if (v55)
            {
              break;
            }

            if (v94)
            {
              v58 = 0;
              while (1)
              {
                [v95 setObject:objc_msgSend(objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"espressoStorages"), "objectAtIndexedSubscript:", v47), "pixelBufferForRequirement:", -[NSArray objectAtIndexedSubscript:](self->_tileOutputVideoRequirements, "objectAtIndexedSubscript:", v58)), -[NSArray objectAtIndexedSubscript:](self->_tileOutputBindingNames, "objectAtIndexedSubscript:", v58)}];
                if (![v95 objectForKeyedSubscript:{-[NSArray objectAtIndexedSubscript:](self->_tileOutputBindingNames, "objectAtIndexedSubscript:", v58)}])
                {
                  break;
                }

                if (v94 == ++v58)
                {
                  goto LABEL_53;
                }
              }

              [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
              goto LABEL_101;
            }

LABEL_53:
            if ([(NSArray *)self->_additionalVideoRequirements count])
            {
              v59 = 0;
              while (1)
              {
                v60 = [-[NSArray objectAtIndexedSubscript:](self->_additionalVideoRequirements objectAtIndexedSubscript:{v59), "attachedMediaKey"}];
                [v85 setObject:objc_msgSend(objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"espressoStorages"), "objectAtIndexedSubscript:", v47), "pixelBufferForRequirement:", -[NSArray objectAtIndexedSubscript:](self->_additionalVideoRequirements, "objectAtIndexedSubscript:", v59)), v60}];
                if (![v85 objectForKeyedSubscript:v60])
                {
                  break;
                }

                if ([(NSArray *)self->_additionalVideoRequirements count]<= ++v59)
                {
                  goto LABEL_57;
                }
              }

              [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
LABEL_101:
              v57 = v99;
LABEL_103:
              v17 = v93;
              goto LABEL_104;
            }

LABEL_57:
            if (count)
            {
              v61 = 0;
              v62 = 0;
              v44 = v92;
              while (1)
              {
                *&v99 = 0;
                LODWORD(v73) = v96;
                v63 = -[BWTiledEspressoInferenceProvider writeOutputFor:to:fromNetworkOutputTiles:withAdditionalPixelBuffers:withInputTilePixelBuffers:withInputFullPixelBuffers:atPosition:cmdBuffer:](self, "writeOutputFor:to:fromNetworkOutputTiles:withAdditionalPixelBuffers:withInputTilePixelBuffers:withInputFullPixelBuffers:atPosition:cmdBuffer:", [objc_msgSend(v44 objectAtIndexedSubscript:{v61), "attachedMediaKey"}], v93[v61], v95, v85, v84, v80, v73, &v99);
                if (v63)
                {
                  break;
                }

                v64 = v99;
                if (v99)
                {
                  v44 = v92;
                  if (v62)
                  {
                    [v62 commit];
                    v64 = v99;
                  }
                }

                else
                {
                  v44 = v92;
                }

                if (v64)
                {
                  v62 = v64;
                }

                if (count == ++v61)
                {
                  goto LABEL_69;
                }
              }

              v57 = v63;
              [BWTiledEspressoInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
              goto LABEL_103;
            }

            v62 = 0;
            v44 = v92;
LABEL_69:
            [v62 addCompletedHandler:&__block_literal_global_95];
            if (v76 - 1 == v79 && v83 - 1 == v89)
            {
              v74 = v62;
            }

            else
            {
              [v62 commit];
            }

            v47 = !v47;
            [v84 removeAllObjects];
            [v85 removeAllObjects];
            [v95 removeAllObjects];
            ++v89;
            v17 = v93;
            if (v89 == v83)
            {
              goto LABEL_74;
            }
          }

          [BWTiledEspressoInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
LABEL_104:
          v65 = 1;
          a7 = v78;
        }

        else
        {
          v74 = 0;
LABEL_95:
          [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
          [objc_msgSend(objc_msgSend(a4 "espressoStorages")];
          if (count)
          {
            for (k = 0; k != count; ++k)
            {
              [a4 setPixelBuffer:v17[k] forRequirement:{objc_msgSend(v44, "objectAtIndexedSubscript:", k)}];
            }
          }

          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __135__BWTiledEspressoInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2;
          v97[3] = &unk_1E798FB70;
          v98 = 0;
          a7 = v78;
          v97[4] = self;
          v97[5] = v78;
          [v74 addScheduledHandler:v97];
          [v74 commit];
          [(BWTiledEspressoInferenceProvider *)self purgeIntermediateResources];
          v65 = 0;
          v57 = 0;
        }

        goto LABEL_78;
      }

      v45 = 0;
      while (1)
      {
        v46 = [objc_msgSend(a4 pixelBufferPoolForRequirement:{objc_msgSend(v92, "objectAtIndexedSubscript:", v45)), "newPixelBuffer"}];
        v93[v45] = v46;
        if (!v46)
        {
          break;
        }

        -[BWTiledEspressoInferenceProvider preProcessOutputBuffer:forMediaKey:](self, "preProcessOutputBuffer:forMediaKey:", v46, [objc_msgSend(v92 objectAtIndexedSubscript:{v45++), "attachedMediaKey"}]);
        if (count == v45)
        {
          goto LABEL_37;
        }
      }

      [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    }

    v57 = v99;
    v65 = 1;
  }

  else
  {
    [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v57 = v99;
    v65 = 1;
    v18 = v84;
  }

LABEL_78:
  v66 = 2 * v87;
  if (v66)
  {
    v67 = v91;
    do
    {
      if (*v67)
      {
        CFRelease(*v67);
      }

      ++v67;
      --v66;
    }

    while (v66);
  }

  free(v91);
  if (v17 && count)
  {
    for (m = 0; m != count; ++m)
    {
      v69 = v17[m];
      if (v69)
      {
        CFRelease(v69);
      }
    }
  }

  v70 = v85;
LABEL_90:
  free(v17);

  if (a7 && v65)
  {
    (*(a7 + 2))(a7, v57, self);
  }

  return v57;
}

uint64_t __135__BWTiledEspressoInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2(uint64_t a1)
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
  return [(BWTiledEspressoInferenceProvider *)self submitForSampleBuffer:a3 usingStorage:a4 withSubmissionTime:&v9 workQueue:a6 completionHandler:a7 currentTileCount:v7];
}

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  espressoProvider = self->_espressoProvider;
  if (espressoProvider)
  {
    v6 = [(BWEspressoInferenceProvider *)espressoProvider prepareForSubmissionWithWorkQueue:?];
    if (v6)
    {
      [BWTiledEspressoInferenceProvider prepareForSubmissionWithWorkQueue:];
    }

    else
    {
      self->_espressoWorkQueue = a3;
    }
  }

  else
  {
    [BWTiledEspressoInferenceProvider prepareForSubmissionWithWorkQueue:];
    return 0;
  }

  return v6;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  v9 = [(BWTiledEspressoInferenceProvider *)self outputRequirementsToProduceForInputSampleBuffer:a5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BWTiledEspressoInferenceProvider *)self propagateInferenceResultForOutputRequirement:*(*(&v15 + 1) + 8 * v13++) storage:a4 propagationSampleBuffer:a6];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
        [v4 addObject:{-[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements, "objectAtIndexedSubscript:", v5++)}];
      }

      while (v5 < [(NSArray *)self->_inputVideoRequirements count]);
    }

    v6 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_outputVideoRequirements count])
    {
      v7 = 0;
      do
      {
        [v6 addObject:{-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements, "objectAtIndexedSubscript:", v7++)}];
      }

      while (v7 < [(NSArray *)self->_outputVideoRequirements count]);
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9;
      [v3 addObject:{-[BWEspressoInferenceProvider newStorage](self->_espressoProvider, "newStorage")}];
      [v6 addObjectsFromArray:{objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", v8), "requirementsNeedingPixelBuffers")}];
      [v6 addObjectsFromArray:{objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", v8), "requirementsNeedingPixelBufferPools")}];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      additionalVideoRequirements = self->_additionalVideoRequirements;
      v12 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(additionalVideoRequirements);
            }

            [v6 addObject:*(*(&v18 + 1) + 8 * i)];
          }

          v13 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v13);
      }

      v9 = 0;
      v8 = 1;
    }

    while ((v10 & 1) != 0);
    return [[BWTiledEspressoInferenceStorage alloc] initWithRequirementsNeedingPixelBuffers:v4 requirementsNeedingPixelBufferPools:v6 espressoStorages:v3];
  }

  else
  {
    [BWTiledEspressoInferenceProvider newStorage];
    return 0;
  }
}

- (int)reconcileWithPlaceholderProvider:(id)a3
{
  v5 = [(BWTiledEspressoInferenceProvider *)self type];
  if (v5 != [a3 type] || !-[NSString isEqualToString:](self->_customInferenceIdentifier, "isEqualToString:", objc_msgSend(a3, "customInferenceIdentifier")))
  {
    return -31783;
  }

  self->_inputVideoRequirements = [a3 inputVideoRequirements];
  v6 = [a3 outputVideoRequirements];
  result = 0;
  self->_outputVideoRequirements = v6;
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

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)newStorage
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end
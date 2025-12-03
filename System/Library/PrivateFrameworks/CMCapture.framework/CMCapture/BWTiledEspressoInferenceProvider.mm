@interface BWTiledEspressoInferenceProvider
+ (id)videoFormatWithPixelFormat:(unsigned int)format size:(unsigned int)size sliceCount:(BOOL)count includesInvalidContent:(BOOL)content appliesFinalCropRect:;
- (BWTiledEspressoInferenceProvider)initWithConfiguration:(id)configuration inputVideoRequirements:(id)requirements outputVideoRequirements:(id)videoRequirements resourceProvider:(id)provider;
- (id)newStorage;
- (int)loadNetworkWithURL:(id)l configName:(id)name inferenceType:(int)type maxTileCount:(id)count inputFormatsByBindingName:(id)bindingName outputFormatsByBindingName:(id)byBindingName additionalVideoRequirements:;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler currentTileCount:;
- (uint64_t)newStorage;
- (void)dealloc;
- (void)migrateInputVideoRequirements:(id)requirements outputVideoRequirements:(id)videoRequirements;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWTiledEspressoInferenceProvider

+ (id)videoFormatWithPixelFormat:(unsigned int)format size:(unsigned int)size sliceCount:(BOOL)count includesInvalidContent:(BOOL)content appliesFinalCropRect:
{
  v7 = v6;
  contentCopy = content;
  countCopy = count;
  v11 = *&format;
  v12 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v12 setWidth:size];
  [(BWVideoFormatRequirements *)v12 setHeight:HIWORD(size)];
  [(BWVideoFormatRequirements *)v12 setSliceCount:countCopy];
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
  [(BWInferenceVideoFormatRequirements *)v12 setIncludesInvalidContent:contentCopy];
  v15 = v12;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
}

- (BWTiledEspressoInferenceProvider)initWithConfiguration:(id)configuration inputVideoRequirements:(id)requirements outputVideoRequirements:(id)videoRequirements resourceProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = BWTiledEspressoInferenceProvider;
  v10 = [(BWTiledEspressoInferenceProvider *)&v12 init];
  if (v10)
  {
    v10->_configuration = configuration;
    objc_storeWeak(&v10->_resourceProvider, provider);
    v10->_inputVideoRequirements = requirements;
    v10->_outputVideoRequirements = videoRequirements;
    *v10->_maxTileCount = 0;
  }

  return v10;
}

- (void)migrateInputVideoRequirements:(id)requirements outputVideoRequirements:(id)videoRequirements
{
  self->_inputVideoRequirements = requirements;

  self->_outputVideoRequirements = videoRequirements;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledEspressoInferenceProvider;
  [(BWTiledEspressoInferenceProvider *)&v3 dealloc];
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (int)loadNetworkWithURL:(id)l configName:(id)name inferenceType:(int)type maxTileCount:(id)count inputFormatsByBindingName:(id)bindingName outputFormatsByBindingName:(id)byBindingName additionalVideoRequirements:
{
  if (self->_espressoProvider)
  {
    return 0;
  }

  v57 = v8;
  v58 = v9;
  countCopy = count;
  v14 = *&type;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
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

  if (![bindingName count])
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  if (![byBindingName count])
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  v20 = array2;
  lCopy = l;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v56[0];
  }

  v41 = v20;
  byBindingNameCopy = byBindingName;
  v22 = [objc_loadWeak(&self->_resourceProvider) espressoContextForExecutionTarget:3];
  *self->_maxTileCount = countCopy;
  v43 = [BWEspressoInferenceProvider alloc];
  priority = [(BWInferenceConfiguration *)self->_configuration priority];
  v24 = v14;
  v25 = [MEMORY[0x1E695DFD8] set];
  Weak = objc_loadWeak(&self->_resourceProvider);
  LOBYTE(v40) = 0;
  LODWORD(v39) = [(BWTiledEspressoInferenceProvider *)self allowedPixelBufferCompressionDirection];
  v27 = [(BWEspressoInferenceProvider *)v43 initWithType:v24 networkURL:lCopy networkConfiguration:name context:v22 executionTarget:3 schedulerPriority:priority preventionReasons:v25 resourceProvider:Weak allowedCompressionDirection:v39 concurrentSubmissionLimit:2 updateMetadataWithCropRect:v40];
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
  v28 = [bindingName countByEnumeratingWithState:&v52 objects:v51 count:16];
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
          objc_enumerationMutation(bindingName);
        }

        v32 = *(*(&v52 + 1) + 8 * i);
        [array3 addObject:v32];
        [array addObject:{-[BWEspressoInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", v32, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileInput_%i_%@", -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType"), v32), objc_msgSend(bindingName, "objectForKeyedSubscript:", v32))}];
        if (![array lastObject])
        {
          [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v56[0];
        }
      }

      v29 = [bindingName countByEnumeratingWithState:&v52 objects:v51 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  self->_tileInputBindingNames = array3;
  self->_tileInputVideoRequirements = array;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = [byBindingNameCopy countByEnumeratingWithState:&v47 objects:v46 count:16];
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
          objc_enumerationMutation(byBindingNameCopy);
        }

        v37 = *(*(&v47 + 1) + 8 * j);
        [array4 addObject:v37];
        [v41 addObject:{-[BWEspressoInferenceProvider bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:", v37, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileOutput_%i_%@", -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType"), v37), objc_msgSend(byBindingNameCopy, "objectForKeyedSubscript:", v37))}];
        if (![v41 lastObject])
        {
          [BWTiledEspressoInferenceProvider loadNetworkWithURL:v56 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v56[0];
        }
      }

      v34 = [byBindingNameCopy countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  self->_tileOutputBindingNames = array4;
  self->_tileOutputVideoRequirements = v41;
  v38 = v59;
  result = 0;
  self->_additionalVideoRequirements = v38;
  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler currentTileCount:
{
  v8 = v7;
  queue = [(BWTiledEspressoInferenceProvider *)self outputRequirementsToProduceForInputSampleBuffer:buffer, storage, time, queue];
  v13 = [(NSArray *)self->_inputVideoRequirements count];
  v14 = [(NSArray *)self->_tileInputVideoRequirements count];
  count = [queue count];
  v15 = [(NSArray *)self->_tileOutputVideoRequirements count];
  if ([objc_msgSend(storage "espressoStorages")] != 2)
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
  v92 = queue;
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
        [v16 setObject:objc_msgSend(storage forKeyedSubscript:{"pixelBufferForRequirement:", -[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements, "objectAtIndexedSubscript:", v19)), v20}];
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
            v27 = [objc_msgSend(storage pixelBufferPoolForRequirement:{v22), "newPixelBuffer"}];
            v25[v23] = v27;
            if (!v27)
            {
              [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
              v57 = v99;
              v65 = 1;
              v16 = v80;
              goto LABEL_78;
            }

            [objc_msgSend(objc_msgSend(storage "espressoStorages")];
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
      handlerCopy = handler;
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

              [objc_msgSend(objc_msgSend(storage "espressoStorages")];
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
              v42 = [objc_msgSend(storage pixelBufferPoolForRequirement:{v41), "newPixelBuffer"}];
              if (!v42)
              {
                [BWTiledEspressoInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
                v57 = v99;
                v65 = 1;
                handler = handlerCopy;
                v16 = v80;
                v18 = v84;
                v17 = v93;
                goto LABEL_78;
              }

              v43 = v42;
              [objc_msgSend(objc_msgSend(storage "espressoStorages")];
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
      handler = handlerCopy;
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
            forceSynchronousInference = [(BWTiledEspressoInferenceConfiguration *)self->_configuration forceSynchronousInference];
            espressoProvider = self->_espressoProvider;
            v54 = [objc_msgSend(storage "espressoStorages")];
            if (forceSynchronousInference)
            {
              v99 = *&time->var0;
              var3 = time->var3;
              v55 = [(BWEspressoInferenceProvider *)espressoProvider executeOnSampleBuffer:buffer usingStorage:v54 withExecutionTime:&v99 completionHandler:0];
            }

            else
            {
              espressoWorkQueue = self->_espressoWorkQueue;
              v99 = *&time->var0;
              var3 = time->var3;
              v55 = [(BWEspressoInferenceProvider *)espressoProvider submitForSampleBuffer:buffer usingStorage:v54 withSubmissionTime:&v99 workQueue:espressoWorkQueue completionHandler:0];
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
                [v95 setObject:objc_msgSend(objc_msgSend(objc_msgSend(storage forKeyedSubscript:{"espressoStorages"), "objectAtIndexedSubscript:", v47), "pixelBufferForRequirement:", -[NSArray objectAtIndexedSubscript:](self->_tileOutputVideoRequirements, "objectAtIndexedSubscript:", v58)), -[NSArray objectAtIndexedSubscript:](self->_tileOutputBindingNames, "objectAtIndexedSubscript:", v58)}];
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
                [v85 setObject:objc_msgSend(objc_msgSend(objc_msgSend(storage forKeyedSubscript:{"espressoStorages"), "objectAtIndexedSubscript:", v47), "pixelBufferForRequirement:", -[NSArray objectAtIndexedSubscript:](self->_additionalVideoRequirements, "objectAtIndexedSubscript:", v59)), v60}];
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
          handler = handlerCopy;
        }

        else
        {
          v74 = 0;
LABEL_95:
          [objc_msgSend(objc_msgSend(storage "espressoStorages")];
          [objc_msgSend(objc_msgSend(storage "espressoStorages")];
          if (count)
          {
            for (k = 0; k != count; ++k)
            {
              [storage setPixelBuffer:v17[k] forRequirement:{objc_msgSend(v44, "objectAtIndexedSubscript:", k)}];
            }
          }

          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __135__BWTiledEspressoInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2;
          v97[3] = &unk_1E798FB70;
          v98 = 0;
          handler = handlerCopy;
          v97[4] = self;
          v97[5] = handlerCopy;
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
        v46 = [objc_msgSend(storage pixelBufferPoolForRequirement:{objc_msgSend(v92, "objectAtIndexedSubscript:", v45)), "newPixelBuffer"}];
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

  if (handler && v65)
  {
    (*(handler + 2))(handler, v57, self);
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

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v7 = *self->_maxTileCount;
  v9 = *time;
  return [(BWTiledEspressoInferenceProvider *)self submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:&v9 workQueue:queue completionHandler:handler currentTileCount:v7];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
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
      self->_espressoWorkQueue = queue;
    }
  }

  else
  {
    [BWTiledEspressoInferenceProvider prepareForSubmissionWithWorkQueue:];
    return 0;
  }

  return v6;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v9 = [(BWTiledEspressoInferenceProvider *)self outputRequirementsToProduceForInputSampleBuffer:buffer];
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

        [(BWTiledEspressoInferenceProvider *)self propagateInferenceResultForOutputRequirement:*(*(&v15 + 1) + 8 * v13++) storage:storage propagationSampleBuffer:sampleBuffer];
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
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_inputVideoRequirements count])
    {
      v5 = 0;
      do
      {
        [array2 addObject:{-[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements, "objectAtIndexedSubscript:", v5++)}];
      }

      while (v5 < [(NSArray *)self->_inputVideoRequirements count]);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_outputVideoRequirements count])
    {
      v7 = 0;
      do
      {
        [array3 addObject:{-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements, "objectAtIndexedSubscript:", v7++)}];
      }

      while (v7 < [(NSArray *)self->_outputVideoRequirements count]);
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9;
      [array addObject:{-[BWEspressoInferenceProvider newStorage](self->_espressoProvider, "newStorage")}];
      [array3 addObjectsFromArray:{objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v8), "requirementsNeedingPixelBuffers")}];
      [array3 addObjectsFromArray:{objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v8), "requirementsNeedingPixelBufferPools")}];
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

            [array3 addObject:*(*(&v18 + 1) + 8 * i)];
          }

          v13 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v13);
      }

      v9 = 0;
      v8 = 1;
    }

    while ((v10 & 1) != 0);
    return [[BWTiledEspressoInferenceStorage alloc] initWithRequirementsNeedingPixelBuffers:array2 requirementsNeedingPixelBufferPools:array3 espressoStorages:array];
  }

  else
  {
    [BWTiledEspressoInferenceProvider newStorage];
    return 0;
  }
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  type = [(BWTiledEspressoInferenceProvider *)self type];
  if (type != [provider type] || !-[NSString isEqualToString:](self->_customInferenceIdentifier, "isEqualToString:", objc_msgSend(provider, "customInferenceIdentifier")))
  {
    return -31783;
  }

  self->_inputVideoRequirements = [provider inputVideoRequirements];
  outputVideoRequirements = [provider outputVideoRequirements];
  result = 0;
  self->_outputVideoRequirements = outputVideoRequirements;
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
@interface MTLLegacySVRenderPipelineState
- (MTLLegacySVBuffer)fragmentConstantsBuffer;
- (MTLLegacySVBuffer)meshConstantsBuffer;
- (MTLLegacySVBuffer)objectConstantsBuffer;
- (MTLLegacySVBuffer)tileConstantsBuffer;
- (MTLLegacySVBuffer)vertexConstantsBuffer;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state meshDescriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state tileDescriptor:(id)descriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state vertexBinaryFunctions:(id)functions fragmentBinaryFunctions:(id)binaryFunctions tileBinaryFunctions:(id)tileBinaryFunctions objectBinaryFunctions:(id)objectBinaryFunctions meshBinaryFunctions:(id)meshBinaryFunctions withState:(id)withState device:(id)self0 pipelineOptions:(unint64_t)self1;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)unwrapBinaryFunctions:(id)functions;
- (void)_initConstantsBuffer:(id)buffer device:(id)device;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLLegacySVRenderPipelineState

- (void)_initConstantsBuffer:(id)buffer device:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  -[MTLLegacySVImageData setConstantData:](self->_vertexFunctionData, "setConstantData:", [objc_msgSend(buffer "vertexDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_fragmentFunctionData, "setConstantData:", [objc_msgSend(buffer "fragmentDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_tileFunctionData, "setConstantData:", [objc_msgSend(buffer "tileDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_objectFunctionData, "setConstantData:", [objc_msgSend(buffer "objectDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_meshFunctionData, "setConstantData:", [objc_msgSend(buffer "meshDebugInstrumentationData")]);
  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v7 = [[MTLLegacySVPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v8 = [objc_msgSend(device "baseObject")];
    self->_indirectStateBuffer = -[MTLLegacySVBuffer initWithBuffer:device:offset:length:track:]([MTLLegacySVBuffer alloc], "initWithBuffer:device:offset:length:track:", v8, device, 0, [v8 length], 0);

    [(MTLLegacySVPipelineStateInfoEncoder *)v7 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLLegacySVPipelineStateInfoEncoder *)v7 setRenderPipelineState:self];

    if ([(MTLLegacySVRenderPipelineState *)self vertexConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self vertexConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(device + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self fragmentConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self fragmentConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(device + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self tileConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self tileConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(device + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self objectConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self objectConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(device + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self meshConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self meshConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(device + 552);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v10 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          if (*(*(*(&v16 + 1) + 8 * i) + 8))
          {
            LegacySVGlobalResidentBufferList::addBuffer(&self->super.super._device[4]._memorySize);
          }
        }

        v11 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    indirectStateBuffer = self->_indirectStateBuffer;
    LegacySVGlobalResidentBufferList::addBuffer(device + 552);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state descriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  deviceCopy = device;
  v72 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = MTLLegacySVRenderPipelineState;
  v14 = [(MTLToolsRenderPipelineState *)&v67 initWithBaseObject:state parent:device];
  if (v14)
  {
    if ((deviceCopy[292] & 2) != 0)
    {
      v14->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    }

    if ([descriptor vertexFunction])
    {
      v14->_vertexMaxCallStackDepth = [descriptor maxVertexCallStackDepth];
      vertexFunction = [descriptor vertexFunction];
      v14->_vertexFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", vertexFunction, [state vertexDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:vertexFunction];
    }

    if ([descriptor fragmentFunction])
    {
      v14->_fragmentMaxCallStackDepth = [descriptor maxFragmentCallStackDepth];
      fragmentFunction = [descriptor fragmentFunction];
      v14->_fragmentFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", fragmentFunction, [state fragmentDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:fragmentFunction];
    }

    reflectionCopy = reflection;
    if ([descriptor meshFunction])
    {
      v14->_meshMaxCallStackDepth = [descriptor maxMeshCallStackDepth];
      meshFunction = [descriptor meshFunction];
      v14->_meshFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", meshFunction, [state meshDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:meshFunction];
    }

    if ([descriptor objectFunction])
    {
      v14->_objectMaxCallStackDepth = [descriptor maxObjectCallStackDepth];
      objectFunction = [descriptor objectFunction];
      v14->_objectFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", objectFunction, [state objectDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:objectFunction];
    }

    v14->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers];
    optionsCopy = options;
    v19 = 1;
    if ((options & 0x800000000) == 0)
    {
      v19 = 2;
    }

    v14->_shaderValidation = v19;
    v14->_shaderValidationState = v19;
    v20 = [objc_msgSend(descriptor "vertexPreloadedLibraries")];
    v21 = [objc_msgSend(descriptor "fragmentPreloadedLibraries")];
    v22 = [objc_msgSend(objc_msgSend(descriptor "vertexLinkedFunctions")];
    v23 = v21 + v20 + v22 + [objc_msgSend(objc_msgSend(descriptor "fragmentLinkedFunctions")];
    if (v23)
    {
      v47 = deviceCopy;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = [objc_msgSend(descriptor "vertexLinkedFunctions")];
      v25 = [v24 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v64;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v64 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v63 + 1) + 8 * i) + 48)];
          }

          v26 = [v24 countByEnumeratingWithState:&v63 objects:v71 count:16];
        }

        while (v26);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v29 = [objc_msgSend(descriptor "fragmentLinkedFunctions")];
      v30 = [v29 countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v60;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v60 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v59 + 1) + 8 * j) + 48)];
          }

          v31 = [v29 countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v31);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      vertexPreloadedLibraries = [descriptor vertexPreloadedLibraries];
      v35 = [vertexPreloadedLibraries countByEnumeratingWithState:&v55 objects:v69 count:16];
      deviceCopy = v47;
      if (v35)
      {
        v36 = v35;
        v37 = *v56;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v56 != v37)
            {
              objc_enumerationMutation(vertexPreloadedLibraries);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v55 + 1) + 8 * k) imageData]);
          }

          v36 = [vertexPreloadedLibraries countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v36);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      fragmentPreloadedLibraries = [descriptor fragmentPreloadedLibraries];
      v40 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v51 objects:v68 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v52;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v52 != v42)
            {
              objc_enumerationMutation(fragmentPreloadedLibraries);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v51 + 1) + 8 * m) imageData]);
          }

          v41 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v51 objects:v68 count:16];
        }

        while (v41);
      }
    }

    v14->_internalReflection = reflectionCopy;
    if ([objc_msgSend(state "vertexDebugInstrumentationData")] || objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      v50 = 0;
      v44 = [unwrappedDescriptor newSerializedVertexDataWithFlags:28 options:optionsCopy error:&v50];
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithVertexData:objc_msgSend(objc_msgSend(state fragmentData:"vertexDebugInstrumentationData") serializedVertexDescriptor:"userReflectionData") device:objc_msgSend(objc_msgSend(state options:"fragmentDebugInstrumentationData") flags:{"userReflectionData"), v44, objc_msgSend(deviceCopy, "baseObject"), optionsCopy, 0}];
      dispatch_release(v44);
    }

    [(MTLRenderPipelineReflection *)v14->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v14->_internalReflection performanceStatistics]];
    [(MTLLegacySVRenderPipelineState *)v14 _initConstantsBuffer:state device:deviceCopy];
  }

  v45 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state vertexBinaryFunctions:(id)functions fragmentBinaryFunctions:(id)binaryFunctions tileBinaryFunctions:(id)tileBinaryFunctions objectBinaryFunctions:(id)objectBinaryFunctions meshBinaryFunctions:(id)meshBinaryFunctions withState:(id)withState device:(id)self0 pipelineOptions:(unint64_t)self1
{
  v75 = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = MTLLegacySVRenderPipelineState;
  v17 = [(MTLToolsRenderPipelineState *)&v69 initWithBaseObject:state parent:device];
  if (v17)
  {
    [functions count];
    [binaryFunctions count];
    [tileBinaryFunctions count];
    [objectBinaryFunctions count];
    [meshBinaryFunctions count];
    v17->_vertexFunctionData = *(withState + 8);
    v17->_fragmentFunctionData = *(withState + 9);
    v17->_tileFunctionData = *(withState + 10);
    v17->_objectFunctionData = *(withState + 11);
    v17->_meshFunctionData = *(withState + 12);
    meshBinaryFunctionsCopy = meshBinaryFunctions;
    v19 = [*(withState + 7) count];
    v20 = [functions count];
    v21 = v20 + [binaryFunctions count];
    v22 = v21 + [tileBinaryFunctions count];
    v23 = v22 + [objectBinaryFunctions count];
    v48 = meshBinaryFunctionsCopy;
    v24 = v23 + [meshBinaryFunctionsCopy count] + v19;
    if (v24)
    {
      v17->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v24];
    }

    if (*(withState + 7))
    {
      [(NSMutableArray *)v17->_binaryFunctionData addObjectsFromArray:?];
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v25 = [functions countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v66;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v66 != v27)
          {
            objc_enumerationMutation(functions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v65 + 1) + 8 * i) + 48)];
        }

        v26 = [functions countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v26);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v29 = [binaryFunctions countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v62;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v62 != v31)
          {
            objc_enumerationMutation(binaryFunctions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v61 + 1) + 8 * j) + 48)];
        }

        v30 = [binaryFunctions countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v30);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v33 = [tileBinaryFunctions countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v58;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v58 != v35)
          {
            objc_enumerationMutation(tileBinaryFunctions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v57 + 1) + 8 * k) + 48)];
        }

        v34 = [tileBinaryFunctions countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v34);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v37 = [objectBinaryFunctions countByEnumeratingWithState:&v53 objects:v71 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v54;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(objectBinaryFunctions);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v53 + 1) + 8 * m) + 48)];
        }

        v38 = [objectBinaryFunctions countByEnumeratingWithState:&v53 objects:v71 count:16];
      }

      while (v38);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = [v48 countByEnumeratingWithState:&v49 objects:v70 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v50;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v50 != v43)
          {
            objc_enumerationMutation(v48);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v49 + 1) + 8 * n) + 48)];
        }

        v42 = [v48 countByEnumeratingWithState:&v49 objects:v70 count:16];
      }

      while (v42);
    }

    v17->_userReflection = *(withState + 6);
    v17->_internalReflection = *(withState + 5);
    v17->_supportsIndirectCommandBuffers = [withState supportIndirectCommandBuffers];
    v45 = 1;
    if ((options & 0x800000000) == 0)
    {
      v45 = 2;
    }

    v17->_shaderValidation = v45;
    v17->_shaderValidationState = v45;
    [(MTLLegacySVRenderPipelineState *)v17 _initConstantsBuffer:state device:v17->super.super._device];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v17;
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state tileDescriptor:(id)descriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = MTLLegacySVRenderPipelineState;
  v12 = [(MTLToolsRenderPipelineState *)&v39 initWithBaseObject:state parent:device];
  if (v12)
  {
    if ((*(device + 292) & 2) != 0)
    {
      v12->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    }

    optionsCopy = options;
    if ([descriptor tileFunction])
    {
      v12->_tileMaxCallStackDepth = [descriptor maxCallStackDepth];
      tileFunction = [descriptor tileFunction];
      v12->_tileFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", tileFunction, [state tileDebugInstrumentationData]);
      [(NSMutableArray *)v12->_retainedFunctions addObject:tileFunction];
    }

    v14 = [objc_msgSend(objc_msgSend(descriptor "linkedFunctions")];
    v15 = [objc_msgSend(descriptor "preloadedLibraries")] + v14;
    if (v15)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = [objc_msgSend(descriptor "linkedFunctions")];
      v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v35 + 1) + 8 * i) + 48)];
          }

          v18 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v18);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      preloadedLibraries = [descriptor preloadedLibraries];
      v22 = [preloadedLibraries countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(preloadedLibraries);
            }

            -[NSMutableArray addObject:](v12->_binaryFunctionData, "addObject:", [*(*(&v31 + 1) + 8 * j) imageData]);
          }

          v23 = [preloadedLibraries countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v23);
      }
    }

    v12->_internalReflection = v29;
    v12->_supportsIndirectCommandBuffers = 0;
    v26 = 1;
    if ((optionsCopy & 0x800000000) == 0)
    {
      v26 = 2;
    }

    v12->_shaderValidation = v26;
    v12->_shaderValidationState = v26;
    v12->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithTileData:objc_msgSend(objc_msgSend(state functionType:"tileDebugInstrumentationData") device:"userReflectionData") options:objc_msgSend(objc_msgSend(descriptor flags:{"tileFunction"), "functionType"), objc_msgSend(device, "baseObject"), 3, 0}];
    [(MTLRenderPipelineReflection *)v12->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v12->_internalReflection performanceStatistics]];
    [(MTLLegacySVRenderPipelineState *)v12 _initConstantsBuffer:state device:device];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)state meshDescriptor:(id)descriptor unwrappedDescriptor:(id)unwrappedDescriptor reflection:(id)reflection device:(id)device pipelineOptions:(unint64_t)options
{
  v88 = *MEMORY[0x277D85DE8];
  v81.receiver = self;
  v81.super_class = MTLLegacySVRenderPipelineState;
  unwrappedDescriptor = [(MTLToolsRenderPipelineState *)&v81 initWithBaseObject:state parent:device, unwrappedDescriptor];
  if (unwrappedDescriptor)
  {
    reflectionCopy = reflection;
    if ((*(device + 292) & 2) != 0)
    {
      unwrappedDescriptor->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{2, reflection}];
    }

    if ([descriptor meshFunction])
    {
      unwrappedDescriptor->_meshMaxCallStackDepth = [descriptor maxMeshCallStackDepth];
      meshFunction = [descriptor meshFunction];
      unwrappedDescriptor->_meshFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", meshFunction, [state meshDebugInstrumentationData]);
      [(NSMutableArray *)unwrappedDescriptor->_retainedFunctions addObject:meshFunction];
    }

    if ([descriptor objectFunction])
    {
      unwrappedDescriptor->_objectMaxCallStackDepth = [descriptor maxObjectCallStackDepth];
      objectFunction = [descriptor objectFunction];
      unwrappedDescriptor->_objectFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", objectFunction, [state objectDebugInstrumentationData]);
      [(NSMutableArray *)unwrappedDescriptor->_retainedFunctions addObject:objectFunction];
    }

    optionsCopy = options;
    if ([descriptor fragmentFunction])
    {
      unwrappedDescriptor->_fragmentMaxCallStackDepth = [descriptor maxFragmentCallStackDepth];
      fragmentFunction = [descriptor fragmentFunction];
      unwrappedDescriptor->_fragmentFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", fragmentFunction, [state fragmentDebugInstrumentationData]);
      [(NSMutableArray *)unwrappedDescriptor->_retainedFunctions addObject:fragmentFunction];
    }

    v17 = [objc_msgSend(objc_msgSend(descriptor "meshLinkedFunctions")];
    v18 = [objc_msgSend(objc_msgSend(descriptor "objectLinkedFunctions")] + v17;
    v19 = [objc_msgSend(descriptor "meshPreloadedLibraries")];
    v20 = v18 + v19 + [objc_msgSend(descriptor "objectPreloadedLibraries")];
    if (v20)
    {
      unwrappedDescriptor->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v21 = [objc_msgSend(descriptor "meshLinkedFunctions")];
      v22 = [v21 countByEnumeratingWithState:&v77 objects:v87 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v78;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v78 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [(NSMutableArray *)unwrappedDescriptor->_binaryFunctionData addObject:*(*(*(&v77 + 1) + 8 * i) + 48)];
          }

          v23 = [v21 countByEnumeratingWithState:&v77 objects:v87 count:16];
        }

        while (v23);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v26 = [objc_msgSend(descriptor "objectLinkedFunctions")];
      v27 = [v26 countByEnumeratingWithState:&v73 objects:v86 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v74;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v74 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [(NSMutableArray *)unwrappedDescriptor->_binaryFunctionData addObject:*(*(*(&v73 + 1) + 8 * j) + 48)];
          }

          v28 = [v26 countByEnumeratingWithState:&v73 objects:v86 count:16];
        }

        while (v28);
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v31 = [objc_msgSend(descriptor "fragmentLinkedFunctions")];
      v32 = [v31 countByEnumeratingWithState:&v69 objects:v85 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v70;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v70 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [(NSMutableArray *)unwrappedDescriptor->_binaryFunctionData addObject:*(*(*(&v69 + 1) + 8 * k) + 48)];
          }

          v33 = [v31 countByEnumeratingWithState:&v69 objects:v85 count:16];
        }

        while (v33);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      meshPreloadedLibraries = [descriptor meshPreloadedLibraries];
      v37 = [meshPreloadedLibraries countByEnumeratingWithState:&v65 objects:v84 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v66;
        do
        {
          for (m = 0; m != v38; ++m)
          {
            if (*v66 != v39)
            {
              objc_enumerationMutation(meshPreloadedLibraries);
            }

            -[NSMutableArray addObject:](unwrappedDescriptor->_binaryFunctionData, "addObject:", [*(*(&v65 + 1) + 8 * m) imageData]);
          }

          v38 = [meshPreloadedLibraries countByEnumeratingWithState:&v65 objects:v84 count:16];
        }

        while (v38);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      objectPreloadedLibraries = [descriptor objectPreloadedLibraries];
      v42 = [objectPreloadedLibraries countByEnumeratingWithState:&v61 objects:v83 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v62;
        do
        {
          for (n = 0; n != v43; ++n)
          {
            if (*v62 != v44)
            {
              objc_enumerationMutation(objectPreloadedLibraries);
            }

            -[NSMutableArray addObject:](unwrappedDescriptor->_binaryFunctionData, "addObject:", [*(*(&v61 + 1) + 8 * n) imageData]);
          }

          v43 = [objectPreloadedLibraries countByEnumeratingWithState:&v61 objects:v83 count:16];
        }

        while (v43);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      fragmentPreloadedLibraries = [descriptor fragmentPreloadedLibraries];
      v47 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v57 objects:v82 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v58;
        do
        {
          for (ii = 0; ii != v48; ++ii)
          {
            if (*v58 != v49)
            {
              objc_enumerationMutation(fragmentPreloadedLibraries);
            }

            -[NSMutableArray addObject:](unwrappedDescriptor->_binaryFunctionData, "addObject:", [*(*(&v57 + 1) + 8 * ii) imageData]);
          }

          v48 = [fragmentPreloadedLibraries countByEnumeratingWithState:&v57 objects:v82 count:16];
        }

        while (v48);
      }
    }

    unwrappedDescriptor->_supportsIndirectCommandBuffers = [descriptor supportIndirectCommandBuffers];
    v51 = 1;
    if ((optionsCopy & 0x800000000) == 0)
    {
      v51 = 2;
    }

    unwrappedDescriptor->_shaderValidation = v51;
    unwrappedDescriptor->_shaderValidationState = v51;
    unwrappedDescriptor->_internalReflection = v55;
    if ([objc_msgSend(state "objectDebugInstrumentationData")] || objc_msgSend(objc_msgSend(state, "meshDebugInstrumentationData"), "userReflectionData") || objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      unwrappedDescriptor->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithObjectData:objc_msgSend(objc_msgSend(state meshData:"objectDebugInstrumentationData") fragmentData:"userReflectionData") device:objc_msgSend(objc_msgSend(state options:"meshDebugInstrumentationData") flags:{"userReflectionData"), objc_msgSend(objc_msgSend(state, "fragmentDebugInstrumentationData"), "userReflectionData"), objc_msgSend(device, "baseObject"), optionsCopy, 0}];
    }

    [(MTLRenderPipelineReflection *)unwrappedDescriptor->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)unwrappedDescriptor->_internalReflection performanceStatistics]];
    [(MTLLegacySVRenderPipelineState *)unwrappedDescriptor _initConstantsBuffer:state device:device];
  }

  v52 = *MEMORY[0x277D85DE8];
  return unwrappedDescriptor;
}

- (id)unwrapBinaryFunctions:(id)functions
{
  v17 = *MEMORY[0x277D85DE8];
  device = [(MTLToolsRenderPipelineState *)self device];
  if ([functions count])
  {
    [(MTLDevice *)device baseObject];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(functions, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [functions countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(functions);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "baseObject")}];
        }

        v7 = [functions countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __67__MTLLegacySVRenderPipelineState_functionHandleWithFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLLegacySVFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];

  return [(MTLLegacySVFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5 function:v6];
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions fragmentAdditionalBinaryFunctions:(id)binaryFunctions error:(id *)error
{
  v9 = objc_opt_new();
  [v9 setVertexAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", functions)}];
  [v9 setFragmentAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", binaryFunctions)}];
  v14 = 0;
  if (!error)
  {
    error = &v14;
  }

  v10 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (![v10 vertexDebugInstrumentationData])
  {
    [v10 setVertexDebugInstrumentationData:{-[MTLToolsRenderPipelineState vertexDebugInstrumentationData](self, "vertexDebugInstrumentationData")}];
  }

  if (![v10 fragmentDebugInstrumentationData])
  {
    [v10 setFragmentDebugInstrumentationData:{-[MTLToolsRenderPipelineState fragmentDebugInstrumentationData](self, "fragmentDebugInstrumentationData")}];
  }

  v11 = [MTLLegacySVRenderPipelineState alloc];
  v12 = [(MTLLegacySVRenderPipelineState *)v11 initWithRenderPipelineState:v10 vertexBinaryFunctions:functions fragmentBinaryFunctions:binaryFunctions tileBinaryFunctions:MEMORY[0x277CBEBF8] objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v14];

  return v12;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v6 = [(MTLLegacySVRenderPipelineState *)self unwrapBinaryFunctions:functions];
  v12 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v12;
  }

  v8 = [(MTLToolsObject *)self->super.super._baseObject newTileRenderPipelineStateWithAdditionalBinaryFunctions:v6 error:errorCopy];

  if (![v8 tileDebugInstrumentationData])
  {
    [v8 setTileDebugInstrumentationData:{objc_msgSend(v8, "tileDebugInstrumentationData")}];
  }

  v9 = [MTLLegacySVRenderPipelineState alloc];
  v10 = [(MTLLegacySVRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:MEMORY[0x277CBEBF8] fragmentBinaryFunctions:MEMORY[0x277CBEBF8] tileBinaryFunctions:v6 objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v12];

  return v10;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  v7 = objc_opt_new();
  [v7 setVertexAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "vertexAdditionalBinaryFunctions"))}];
  [v7 setFragmentAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "fragmentAdditionalBinaryFunctions"))}];
  [v7 setTileAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "tileAdditionalBinaryFunctions"))}];
  [v7 setObjectAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "objectAdditionalBinaryFunctions"))}];
  [v7 setMeshAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(functions, "meshAdditionalBinaryFunctions"))}];
  v17 = 0;
  if (!error)
  {
    error = &v17;
  }

  v8 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (![v8 vertexDebugInstrumentationData])
  {
    [v8 setVertexDebugInstrumentationData:{-[MTLToolsRenderPipelineState vertexDebugInstrumentationData](self, "vertexDebugInstrumentationData")}];
  }

  if (![v8 fragmentDebugInstrumentationData])
  {
    [v8 setFragmentDebugInstrumentationData:{-[MTLToolsRenderPipelineState fragmentDebugInstrumentationData](self, "fragmentDebugInstrumentationData")}];
  }

  if (![v8 tileDebugInstrumentationData])
  {
    [v8 setTileDebugInstrumentationData:{-[MTLToolsRenderPipelineState tileDebugInstrumentationData](self, "tileDebugInstrumentationData")}];
  }

  if (![v8 objectDebugInstrumentationData])
  {
    [v8 setObjectDebugInstrumentationData:{-[MTLToolsRenderPipelineState objectDebugInstrumentationData](self, "objectDebugInstrumentationData")}];
  }

  if (![v8 meshDebugInstrumentationData])
  {
    [v8 setMeshDebugInstrumentationData:{-[MTLToolsRenderPipelineState meshDebugInstrumentationData](self, "meshDebugInstrumentationData")}];
  }

  v9 = [MTLLegacySVRenderPipelineState alloc];
  vertexAdditionalBinaryFunctions = [functions vertexAdditionalBinaryFunctions];
  fragmentAdditionalBinaryFunctions = [functions fragmentAdditionalBinaryFunctions];
  tileAdditionalBinaryFunctions = [functions tileAdditionalBinaryFunctions];
  objectAdditionalBinaryFunctions = [functions objectAdditionalBinaryFunctions];
  meshAdditionalBinaryFunctions = [functions meshAdditionalBinaryFunctions];
  v15 = [(MTLLegacySVRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:vertexAdditionalBinaryFunctions fragmentBinaryFunctions:fragmentAdditionalBinaryFunctions tileBinaryFunctions:tileAdditionalBinaryFunctions objectBinaryFunctions:objectAdditionalBinaryFunctions meshBinaryFunctions:meshAdditionalBinaryFunctions withState:self device:self->super.super._device pipelineOptions:0, v17];

  return v15;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:descriptor renderPipeline:self stage:stage];

    return v9;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsRenderPipelineState *)self device] descriptor:descriptor renderPipelineState:self stage:stage];

    return v9;
  }

  return result;
}

- (void)releaseReflection
{
  self->_internalReflection = 0;

  self->_userReflection = 0;
}

- (MTLLegacySVBuffer)vertexConstantsBuffer
{
  vertexFunctionData = self->_vertexFunctionData;
  if (vertexFunctionData)
  {
    return *(vertexFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLLegacySVBuffer)fragmentConstantsBuffer
{
  fragmentFunctionData = self->_fragmentFunctionData;
  if (fragmentFunctionData)
  {
    return *(fragmentFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLLegacySVBuffer)tileConstantsBuffer
{
  tileFunctionData = self->_tileFunctionData;
  if (tileFunctionData)
  {
    return *(tileFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLLegacySVBuffer)objectConstantsBuffer
{
  objectFunctionData = self->_objectFunctionData;
  if (objectFunctionData)
  {
    return *(objectFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (MTLLegacySVBuffer)meshConstantsBuffer
{
  meshFunctionData = self->_meshFunctionData;
  if (meshFunctionData)
  {
    return *(meshFunctionData + 1);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_supportsIndirectCommandBuffers)
  {
    LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, self->_indirectStateBuffer);

    if ([(MTLLegacySVRenderPipelineState *)self vertexConstantsBuffer])
    {
      LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, [(MTLLegacySVRenderPipelineState *)self vertexConstantsBuffer]);
    }

    if ([(MTLLegacySVRenderPipelineState *)self fragmentConstantsBuffer])
    {
      LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, [(MTLLegacySVRenderPipelineState *)self fragmentConstantsBuffer]);
    }

    if ([(MTLLegacySVRenderPipelineState *)self tileConstantsBuffer])
    {
      LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, [(MTLLegacySVRenderPipelineState *)self tileConstantsBuffer]);
    }

    if ([(MTLLegacySVRenderPipelineState *)self objectConstantsBuffer])
    {
      LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, [(MTLLegacySVRenderPipelineState *)self objectConstantsBuffer]);
    }

    if ([(MTLLegacySVRenderPipelineState *)self meshConstantsBuffer])
    {
      LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, [(MTLLegacySVRenderPipelineState *)self meshConstantsBuffer]);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v4 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v8 = *(*(*(&v11 + 1) + 8 * i) + 8);
          if (v8)
          {
            LegacySVGlobalResidentBufferList::removeBuffer(&self->super.super._device[4]._memorySize, v8);
          }
        }

        v5 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10.receiver = self;
  v10.super_class = MTLLegacySVRenderPipelineState;
  [(MTLToolsRenderPipelineState *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

@end
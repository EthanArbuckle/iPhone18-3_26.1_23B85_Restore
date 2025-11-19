@interface MTLGPUDebugRenderPipelineState
- (MTLGPUDebugBuffer)fragmentConstantsBuffer;
- (MTLGPUDebugBuffer)meshConstantsBuffer;
- (MTLGPUDebugBuffer)objectConstantsBuffer;
- (MTLGPUDebugBuffer)tileConstantsBuffer;
- (MTLGPUDebugBuffer)vertexConstantsBuffer;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 descriptor:(id)a4 dynamicLinkingDescriptor:(id)a5 device:(id)a6;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 descriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 meshDescriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 originalObject:(id)a4 descriptor:(id)a5 device:(id)a6;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 tileDescriptor:(id)a4 reflection:(id)a5 device:(id)a6 pipelineOptions:(unint64_t)a7;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 vertexBinaryFunctions:(id)a4 fragmentBinaryFunctions:(id)a5 tileBinaryFunctions:(id)a6 objectBinaryFunctions:(id)a7 meshBinaryFunctions:(id)a8 withState:(id)a9 device:(id)a10;
- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 vertexBinaryFunctions:(id)a4 fragmentBinaryFunctions:(id)a5 tileBinaryFunctions:(id)a6 objectBinaryFunctions:(id)a7 meshBinaryFunctions:(id)a8 withState:(id)a9 device:(id)a10 pipelineOptions:(unint64_t)a11;
- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)unwrapBinaryFunctions:(id)a3;
- (void)_initConstantsBuffer:(id)a3;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLGPUDebugRenderPipelineState

- (void)_initConstantsBuffer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  -[MTLGPUDebugImageData setConstantData:](self->_vertexFunctionData, "setConstantData:", [objc_msgSend(a3 "vertexDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_fragmentFunctionData, "setConstantData:", [objc_msgSend(a3 "fragmentDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_tileFunctionData, "setConstantData:", [objc_msgSend(a3 "tileDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_objectFunctionData, "setConstantData:", [objc_msgSend(a3 "objectDebugInstrumentationData")]);
  -[MTLGPUDebugImageData setConstantData:](self->_meshFunctionData, "setConstantData:", [objc_msgSend(a3 "meshDebugInstrumentationData")]);
  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v5 = [[MTLGPUDebugPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v6 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];
    self->_indirectStateBuffer = -[MTLGPUDebugBuffer initWithBuffer:device:offset:length:track:]([MTLGPUDebugBuffer alloc], "initWithBuffer:device:offset:length:track:", v6, self->super.super._device, 0, [v6 length], 0);

    [(MTLGPUDebugPipelineStateInfoEncoder *)v5 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLGPUDebugPipelineStateInfoEncoder *)v5 setRenderPipelineState:self];

    if ([(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer])
    {
      GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer]);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    binaryFunctionData = self->_binaryFunctionData;
    v8 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v12 = *(*(*(&v14 + 1) + 8 * i) + 8);
          if (v12)
          {
            GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, v12);
          }
        }

        v9 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    GlobalResidentBufferList::addBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 descriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8
{
  v73 = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = MTLGPUDebugRenderPipelineState;
  v14 = [(MTLToolsRenderPipelineState *)&v68 initWithBaseObject:a3 parent:a7];
  if (v14)
  {
    if ((*(a7 + 292) & 2) != 0)
    {
      v14->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    }

    if ([a4 vertexFunction])
    {
      v14->_vertexMaxCallStackDepth = [a4 maxVertexCallStackDepth];
      v15 = [a4 vertexFunction];
      v14->_vertexFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v15, [a3 vertexDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v15];
    }

    if ([a4 fragmentFunction])
    {
      v14->_fragmentMaxCallStackDepth = [a4 maxFragmentCallStackDepth];
      v16 = [a4 fragmentFunction];
      v14->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v16, [a3 fragmentDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v16];
    }

    if ([a4 meshFunction])
    {
      v14->_meshMaxCallStackDepth = [a4 maxMeshCallStackDepth];
      v17 = [a4 meshFunction];
      v14->_meshFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v17, [a3 meshDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v17];
    }

    v49 = a7;
    if ([a4 objectFunction])
    {
      v14->_objectMaxCallStackDepth = [a4 maxObjectCallStackDepth];
      v18 = [a4 objectFunction];
      v14->_objectFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v18, [a3 objectDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v18];
    }

    v14->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers];
    v50 = a8;
    v19 = 1;
    if ((a8 & 0x800000000) == 0)
    {
      v19 = 2;
    }

    v14->_shaderValidation = v19;
    v14->_shaderValidationState = v19;
    v20 = [objc_msgSend(a4 "vertexPreloadedLibraries")];
    v21 = [objc_msgSend(a4 "fragmentPreloadedLibraries")];
    v22 = [objc_msgSend(objc_msgSend(a4 "vertexLinkedFunctions")];
    v23 = v21 + v20 + v22 + [objc_msgSend(objc_msgSend(a4 "fragmentLinkedFunctions")];
    if (v23)
    {
      v48 = a5;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v24 = [objc_msgSend(a4 "vertexLinkedFunctions")];
      v25 = [v24 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v65;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v65 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v64 + 1) + 8 * i) + 48)];
          }

          v26 = [v24 countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v26);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v29 = [objc_msgSend(a4 "fragmentLinkedFunctions")];
      v30 = [v29 countByEnumeratingWithState:&v60 objects:v71 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v61;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v61 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [(NSMutableArray *)v14->_binaryFunctionData addObject:*(*(*(&v60 + 1) + 8 * j) + 48)];
          }

          v31 = [v29 countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v31);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v34 = [a4 vertexPreloadedLibraries];
      v35 = [v34 countByEnumeratingWithState:&v56 objects:v70 count:16];
      a5 = v48;
      if (v35)
      {
        v36 = v35;
        v37 = *v57;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v57 != v37)
            {
              objc_enumerationMutation(v34);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v56 + 1) + 8 * k) imageData]);
          }

          v36 = [v34 countByEnumeratingWithState:&v56 objects:v70 count:16];
        }

        while (v36);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v39 = [a4 fragmentPreloadedLibraries];
      v40 = [v39 countByEnumeratingWithState:&v52 objects:v69 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v53;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(v39);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v52 + 1) + 8 * m) imageData]);
          }

          v41 = [v39 countByEnumeratingWithState:&v52 objects:v69 count:16];
        }

        while (v41);
      }
    }

    v14->_internalReflection = a6;
    v44 = 0x27DA5C000;
    if ([objc_msgSend(a3 "vertexDebugInstrumentationData")] || objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      v51 = 0;
      v45 = [a5 newSerializedVertexDataWithFlags:28 options:v50 error:&v51];
      v44 = 0x27DA5C000uLL;
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithVertexData:objc_msgSend(objc_msgSend(a3 vertexDynamicLibraries:"vertexDebugInstrumentationData") fragmentData:"userReflectionData") fragmentDynamicLibraries:objc_msgSend(objc_msgSend(a3 serializedVertexDescriptor:"vertexDebugInstrumentationData") device:"linkedDynamicLibraries") options:objc_msgSend(objc_msgSend(a3 flags:{"fragmentDebugInstrumentationData"), "userReflectionData"), objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "linkedDynamicLibraries"), v45, objc_msgSend(v49, "baseObject"), v50, 0}];
      [objc_msgSend(a3 "vertexDebugInstrumentationData")];
      [objc_msgSend(a3 "fragmentDebugInstrumentationData")];
      dispatch_release(v45);
    }

    [*(&v14->super.super.super.isa + *(v44 + 3064)) setPerformanceStatistics:{-[MTLRenderPipelineReflection performanceStatistics](v14->_internalReflection, "performanceStatistics")}];
    [(MTLGPUDebugRenderPipelineState *)v14 _initConstantsBuffer:a3];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 vertexBinaryFunctions:(id)a4 fragmentBinaryFunctions:(id)a5 tileBinaryFunctions:(id)a6 objectBinaryFunctions:(id)a7 meshBinaryFunctions:(id)a8 withState:(id)a9 device:(id)a10 pipelineOptions:(unint64_t)a11
{
  v75 = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = MTLGPUDebugRenderPipelineState;
  v17 = [(MTLToolsRenderPipelineState *)&v69 initWithBaseObject:a3 parent:a10];
  if (v17)
  {
    [a4 count];
    [a5 count];
    [a6 count];
    [a7 count];
    [a8 count];
    v17->_vertexFunctionData = *(a9 + 8);
    v17->_fragmentFunctionData = *(a9 + 9);
    v17->_tileFunctionData = *(a9 + 10);
    v17->_objectFunctionData = *(a9 + 11);
    v17->_meshFunctionData = *(a9 + 12);
    v18 = a8;
    v19 = [*(a9 + 7) count];
    v20 = [a4 count];
    v21 = v20 + [a5 count];
    v22 = v21 + [a6 count];
    v23 = v22 + [a7 count];
    v48 = v18;
    v24 = v23 + [v18 count] + v19;
    if (v24)
    {
      v17->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v24];
    }

    if (*(a9 + 7))
    {
      [(NSMutableArray *)v17->_binaryFunctionData addObjectsFromArray:?];
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v25 = [a4 countByEnumeratingWithState:&v65 objects:v74 count:16];
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
            objc_enumerationMutation(a4);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v65 + 1) + 8 * i) + 48)];
        }

        v26 = [a4 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v26);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v29 = [a5 countByEnumeratingWithState:&v61 objects:v73 count:16];
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
            objc_enumerationMutation(a5);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v61 + 1) + 8 * j) + 48)];
        }

        v30 = [a5 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v30);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v33 = [a6 countByEnumeratingWithState:&v57 objects:v72 count:16];
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
            objc_enumerationMutation(a6);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v57 + 1) + 8 * k) + 48)];
        }

        v34 = [a6 countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v34);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v37 = [a7 countByEnumeratingWithState:&v53 objects:v71 count:16];
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
            objc_enumerationMutation(a7);
          }

          [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v53 + 1) + 8 * m) + 48)];
        }

        v38 = [a7 countByEnumeratingWithState:&v53 objects:v71 count:16];
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

    v17->_userReflection = *(a9 + 6);
    v17->_internalReflection = *(a9 + 5);
    v17->_supportsIndirectCommandBuffers = [a9 supportIndirectCommandBuffers];
    v45 = 1;
    if ((a11 & 0x800000000) == 0)
    {
      v45 = 2;
    }

    v17->_shaderValidation = v45;
    v17->_shaderValidationState = v45;
    [(MTLGPUDebugRenderPipelineState *)v17 _initConstantsBuffer:a3];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v17;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 descriptor:(id)a4 dynamicLinkingDescriptor:(id)a5 device:(id)a6
{
  v32.receiver = self;
  v32.super_class = MTLGPUDebugRenderPipelineState;
  v9 = [(MTLToolsRenderPipelineState *)&v32 initWithBaseObject:a3 parent:a6];
  v10 = v9;
  if (v9)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v28 = __105__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_descriptor_dynamicLinkingDescriptor_device___block_invoke;
    v29 = &unk_2787B3DD8;
    v30 = v9;
    v31 = a5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10->_vertexFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 vertexFunctionDescriptor]), 1, objc_msgSend(a3, "vertexDebugInstrumentationData"), v10->super.super._device);
      v10->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 fragmentFunctionDescriptor]), 2, objc_msgSend(a3, "fragmentDebugInstrumentationData"), v10->super.super._device);
      if (a5)
      {
        v11 = [objc_msgSend(objc_msgSend(a5 "vertexLinkingDescriptor")];
        v12 = [objc_msgSend(objc_msgSend(a5 "fragmentLinkingDescriptor")] + v11;
        v13 = [objc_msgSend(objc_msgSend(a5 "vertexLinkingDescriptor")];
        v14 = v12 + v13 + [objc_msgSend(objc_msgSend(a5 "fragmentLinkingDescriptor")];
        v10->_vertexMaxCallStackDepth = [objc_msgSend(a5 "vertexLinkingDescriptor")];
        v10->_fragmentMaxCallStackDepth = [objc_msgSend(a5 "fragmentLinkingDescriptor")];
      }

      else
      {
        v14 = 0;
      }

      v28(v27, 1, v14);
      v28(v27, 2, v14);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10->_meshFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 meshFunctionDescriptor]), 7, -[MTLToolsObject meshDebugInstrumentationData](v10->super.super._baseObject, "meshDebugInstrumentationData"), v10->super.super._device);
        v10->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 fragmentFunctionDescriptor]), 2, -[MTLToolsObject fragmentDebugInstrumentationData](v10->super.super._baseObject, "fragmentDebugInstrumentationData"), v10->super.super._device);
        v10->_objectFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 objectFunctionDescriptor]), 8, -[MTLToolsObject objectDebugInstrumentationData](v10->super.super._baseObject, "objectDebugInstrumentationData"), v10->super.super._device);
        if (a5)
        {
          v15 = [objc_msgSend(objc_msgSend(a5 "meshLinkingDescriptor")];
          v16 = [objc_msgSend(objc_msgSend(a5 "fragmentLinkingDescriptor")] + v15;
          v17 = [objc_msgSend(objc_msgSend(a5 "objectLinkingDescriptor")];
          v18 = v16 + v17 + [objc_msgSend(objc_msgSend(a5 "meshLinkingDescriptor")];
          v19 = [objc_msgSend(objc_msgSend(a5 "fragmentLinkingDescriptor")];
          v20 = v18 + v19 + [objc_msgSend(objc_msgSend(a5 "objectLinkingDescriptor")];
          v10->_meshMaxCallStackDepth = [objc_msgSend(a5 "meshLinkingDescriptor")];
          v10->_fragmentMaxCallStackDepth = [objc_msgSend(a5 "fragmentLinkingDescriptor")];
          v10->_objectMaxCallStackDepth = [objc_msgSend(a5 "objectLinkingDescriptor")];
        }

        else
        {
          v20 = 0;
        }

        v28(v27, 16, v20);
        v28(v27, 2, v20);
        v28(v27, 8, v20);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10->_tileFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a4 tileFunctionDescriptor]), 3, -[MTLToolsObject tileDebugInstrumentationData](v10->super.super._baseObject, "tileDebugInstrumentationData"), v10->super.super._device);
          if (a5)
          {
            v21 = [objc_msgSend(objc_msgSend(a5 "tileLinkingDescriptor")];
            v22 = [objc_msgSend(objc_msgSend(a5 "tileLinkingDescriptor")] + v21;
            v10->_tileMaxCallStackDepth = [objc_msgSend(a5 "tileLinkingDescriptor")];
          }

          else
          {
            v22 = 0;
          }

          v28(v27, 4, v22);
        }
      }
    }

    v23 = [objc_msgSend(a4 "options")];
    if ([v23 enableBoundsChecking] & 1) != 0 || (objc_msgSend(v23, "enableThreadgroupMemoryChecks") & 1) != 0 || (objc_msgSend(v23, "enableTextureChecks") & 1) != 0 || (objc_msgSend(v23, "enableResourceUsageValidation"))
    {
      v24 = 1;
    }

    else
    {
      v26 = [v23 enableStackOverflow];
      v24 = 1;
      if (!v26)
      {
        v24 = 2;
      }
    }

    v10->_shaderValidation = v24;
    v10->_supportsIndirectCommandBuffers = [a3 supportIndirectCommandBuffers];
    [(MTLGPUDebugRenderPipelineState *)v10 _initConstantsBuffer:a3];
  }

  return v10;
}

uint64_t __105__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_descriptor_dynamicLinkingDescriptor_device___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_44;
  }

  v4 = result;
  *(*(result + 32) + 56) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(v4 + 40);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v6 = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v7 = [v5 vertexLinkingDescriptor];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_16;
      }

      v7 = [v5 fragmentLinkingDescriptor];
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v7 = [v5 tileLinkingDescriptor];
        break;
      case 8:
        v7 = [v5 objectLinkingDescriptor];
        break;
      case 16:
        v7 = [v5 meshLinkingDescriptor];
        break;
      default:
        goto LABEL_16;
    }
  }

  v6 = [v7 binaryLinkedFunctions];
LABEL_16:
  v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(v4 + 32) + 56) addObject:*(*(*(&v23 + 1) + 8 * i) + 48)];
      }

      v9 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(v4 + 40);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_37;
  }

  v13 = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v14 = [v12 vertexLinkingDescriptor];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_37;
      }

      v14 = [v12 fragmentLinkingDescriptor];
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        v14 = [v12 tileLinkingDescriptor];
        break;
      case 8:
        v14 = [v12 objectLinkingDescriptor];
        break;
      case 16:
        v14 = [v12 meshLinkingDescriptor];
        break;
      default:
        goto LABEL_37;
    }
  }

  v13 = [v14 preloadedLibraries];
LABEL_37:
  result = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (result)
  {
    v15 = result;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(v4 + 32) + 56) addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v17++), "imageData", v19)}];
      }

      while (v15 != v17);
      result = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v15 = result;
    }

    while (result);
  }

LABEL_44:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 originalObject:(id)a4 descriptor:(id)a5 device:(id)a6
{
  v18.receiver = self;
  v18.super_class = MTLGPUDebugRenderPipelineState;
  v9 = [(MTLToolsRenderPipelineState *)&v18 initWithBaseObject:a3 parent:a6];
  if (v9)
  {
    v9->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v14 = __95__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_originalObject_descriptor_device___block_invoke;
    v15 = &unk_2787B3E00;
    v16 = v9;
    v17 = a4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9->_vertexFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a5 vertexFunctionDescriptor]), 1, objc_msgSend(a3, "vertexDebugInstrumentationData"), v9->super.super._device);
      v9->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a5 fragmentFunctionDescriptor]), 2, objc_msgSend(a3, "fragmentDebugInstrumentationData"), v9->super.super._device);
      v9->_vertexMaxCallStackDepth = *(a4 + 36);
      v10 = &OBJC_IVAR___MTLGPUDebugRenderPipelineState__fragmentMaxCallStackDepth;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9->_meshFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a5 meshFunctionDescriptor]), 7, -[MTLToolsObject meshDebugInstrumentationData](v9->super.super._baseObject, "meshDebugInstrumentationData"), v9->super.super._device);
        v9->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a5 fragmentFunctionDescriptor]), 2, -[MTLToolsObject fragmentDebugInstrumentationData](v9->super.super._baseObject, "fragmentDebugInstrumentationData"), v9->super.super._device);
        v9->_objectFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a5 objectFunctionDescriptor]), 8, -[MTLToolsObject objectDebugInstrumentationData](v9->super.super._baseObject, "objectDebugInstrumentationData"), v9->super.super._device);
        v9->_meshMaxCallStackDepth = *(a4 + 38);
        v9->_fragmentMaxCallStackDepth = *(a4 + 37);
        v10 = &OBJC_IVAR___MTLGPUDebugRenderPipelineState__objectMaxCallStackDepth;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_9:
          v9->_shaderValidation = *(a4 + 16);
          [(MTLGPUDebugRenderPipelineState *)v9 _initConstantsBuffer:a3];
          return v9;
        }

        v9->_tileFunctionData = -[MTLGPUDebugImageData initWithFunctionName:functionType:debugInstrumentationData:device:]([MTLGPUDebugImageData alloc], "initWithFunctionName:functionType:debugInstrumentationData:device:", getFunctionDescriptorName([a5 tileFunctionDescriptor]), 3, -[MTLToolsObject tileDebugInstrumentationData](v9->super.super._baseObject, "tileDebugInstrumentationData"), v9->super.super._device);
        v10 = &OBJC_IVAR___MTLGPUDebugRenderPipelineState__tileMaxCallStackDepth;
      }
    }

    *(&v9->super.super.super.isa + *v10) = *(a4 + *v10);
    v11 = [*(a4 + 7) count];
    v14(v13, v11);
    goto LABEL_9;
  }

  return v9;
}

uint64_t __95__MTLGPUDebugRenderPipelineState_initWithRenderPipelineState_originalObject_descriptor_device___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
    *(*(v2 + 32) + 56) = result;
    if (*(*(v2 + 40) + 56))
    {
      v3 = *(*(v2 + 32) + 56);

      return [v3 addObjectsFromArray:?];
    }
  }

  return result;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 vertexBinaryFunctions:(id)a4 fragmentBinaryFunctions:(id)a5 tileBinaryFunctions:(id)a6 objectBinaryFunctions:(id)a7 meshBinaryFunctions:(id)a8 withState:(id)a9 device:(id)a10
{
  v48[5] = *MEMORY[0x277D85DE8];
  self->_supportsIndirectCommandBuffers = [a9 supportIndirectCommandBuffers];
  v45.receiver = self;
  v45.super_class = MTLGPUDebugRenderPipelineState;
  v17 = [(MTLToolsRenderPipelineState *)&v45 initWithBaseObject:a3 parent:a10];
  if (v17)
  {
    v35 = a3;
    [a4 count];
    [a5 count];
    [a6 count];
    [a7 count];
    [a8 count];
    v17->_vertexFunctionData = [a9 vertexFunctionData];
    v17->_fragmentFunctionData = [a9 fragmentFunctionData];
    v17->_tileFunctionData = [a9 tileFunctionData];
    v17->_objectFunctionData = [a9 objectFunctionData];
    v17->_meshFunctionData = [a9 meshFunctionData];
    v18 = [objc_msgSend(a9 "binaryFunctionData")];
    v19 = [a4 count];
    v20 = v19 + [a5 count];
    v21 = v20 + [a6 count];
    v22 = v21 + [a7 count];
    v23 = v22 + [a8 count] + v18;
    if (v23)
    {
      v17->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23];
    }

    if ([a9 binaryFunctionData])
    {
      -[NSMutableArray addObjectsFromArray:](v17->_binaryFunctionData, "addObjectsFromArray:", [a9 binaryFunctionData]);
    }

    v48[0] = a4;
    v48[1] = a5;
    v48[2] = a6;
    v48[3] = a7;
    v48[4] = a8;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
    v24 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v41 + 1) + 8 * i);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v29 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v38;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v38 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                [(NSMutableArray *)v17->_binaryFunctionData addObject:*(*(*(&v37 + 1) + 8 * j) + 48)];
              }

              v30 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v30);
          }
        }

        v25 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v25);
    }

    v17->_shaderValidation = [a9 shaderValidation];
    [(MTLGPUDebugRenderPipelineState *)v17 _initConstantsBuffer:v35];
  }

  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__MTLGPUDebugRenderPipelineState_functionHandleWithName_stage___block_invoke;
  v12 = &unk_2787B3E28;
  v13 = v6;
  v14 = self;
  v15 = a4;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

uint64_t __63__MTLGPUDebugRenderPipelineState_functionHandleWithName_stage___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5];
}

- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4
{
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __73__MTLGPUDebugRenderPipelineState_functionHandleWithBinaryFunction_stage___block_invoke;
  v12 = &unk_2787B3E28;
  v13 = v6;
  v14 = self;
  v15 = a4;
  return [MTLToolsObjectCache getCachedObjectForKey:"getCachedObjectForKey:onMiss:" onMiss:?];
}

uint64_t __73__MTLGPUDebugRenderPipelineState_functionHandleWithBinaryFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5];
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(MTLDevice *)[(MTLToolsRenderPipelineState *)self device] newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:a3];
  v20 = 0;
  if (!a4)
  {
    a4 = &v20;
  }

  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v21[0] = xmmword_22E27C140;
  v21[1] = unk_22E27C150;
  v22 = 16;
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v21, &v23, 5uLL);
  v8 = __p;
  v9 = v18;
  while (v8 != v9)
  {
    v10 = 0;
    v11 = *v8;
    if (*v8 <= 3)
    {
      if (v11 == 1)
      {
        v12 = [v7 vertexDebugInstrumentationData];
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_27;
        }

        v12 = [v7 fragmentDebugInstrumentationData];
      }
    }

    else
    {
      switch(v11)
      {
        case 4:
          v12 = [v7 tileDebugInstrumentationData];
          break;
        case 8:
          v12 = [v7 objectDebugInstrumentationData];
          break;
        case 16:
          v12 = [v7 meshDebugInstrumentationData];
          break;
        default:
          goto LABEL_27;
      }
    }

    if (v12)
    {
      goto LABEL_28;
    }

    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        v13 = [(MTLToolsRenderPipelineState *)self vertexDebugInstrumentationData];
      }

      else
      {
        v13 = [(MTLToolsRenderPipelineState *)self fragmentDebugInstrumentationData];
      }
    }

    else if (v11 == 4)
    {
      v13 = [(MTLToolsRenderPipelineState *)self tileDebugInstrumentationData];
    }

    else if (v11 == 8)
    {
      v13 = [(MTLToolsRenderPipelineState *)self objectDebugInstrumentationData];
    }

    else
    {
      v13 = [(MTLToolsRenderPipelineState *)self meshDebugInstrumentationData];
    }

    v10 = v13;
LABEL_27:
    [v7 setDebugInstrumentationDataForStage:v10 stage:v11];
LABEL_28:
    ++v8;
  }

  v14 = -[MTLGPUDebugRenderPipelineState initWithRenderPipelineState:vertexBinaryFunctions:fragmentBinaryFunctions:tileBinaryFunctions:objectBinaryFunctions:meshBinaryFunctions:withState:device:]([MTLGPUDebugRenderPipelineState alloc], "initWithRenderPipelineState:vertexBinaryFunctions:fragmentBinaryFunctions:tileBinaryFunctions:objectBinaryFunctions:meshBinaryFunctions:withState:device:", v7, [v6 vertexAdditionalBinaryFunctions], objc_msgSend(v6, "fragmentAdditionalBinaryFunctions"), objc_msgSend(v6, "tileAdditionalBinaryFunctions"), objc_msgSend(v6, "objectAdditionalBinaryFunctions"), objc_msgSend(v6, "meshAdditionalBinaryFunctions"), self, self->super.super._device);

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 tileDescriptor:(id)a4 reflection:(id)a5 device:(id)a6 pipelineOptions:(unint64_t)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = MTLGPUDebugRenderPipelineState;
  v12 = [(MTLToolsRenderPipelineState *)&v39 initWithBaseObject:a3 parent:a6];
  if (v12)
  {
    if ((*(a6 + 292) & 2) != 0)
    {
      v12->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    }

    v30 = a7;
    if ([a4 tileFunction])
    {
      v12->_tileMaxCallStackDepth = [a4 maxCallStackDepth];
      v13 = [a4 tileFunction];
      v12->_tileFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v13, [a3 tileDebugInstrumentationData]);
      [(NSMutableArray *)v12->_retainedFunctions addObject:v13];
    }

    v14 = [objc_msgSend(objc_msgSend(a4 "linkedFunctions")];
    v15 = [objc_msgSend(a4 "preloadedLibraries")] + v14;
    if (v15)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = [objc_msgSend(a4 "linkedFunctions")];
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
      v21 = [a4 preloadedLibraries];
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
              objc_enumerationMutation(v21);
            }

            -[NSMutableArray addObject:](v12->_binaryFunctionData, "addObject:", [*(*(&v31 + 1) + 8 * j) imageData]);
          }

          v23 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v23);
      }
    }

    v12->_internalReflection = v29;
    v12->_supportsIndirectCommandBuffers = 0;
    v26 = 1;
    if ((v30 & 0x800000000) == 0)
    {
      v26 = 2;
    }

    v12->_shaderValidation = v26;
    v12->_shaderValidationState = v26;
    v12->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithTileData:objc_msgSend(objc_msgSend(a3 tileDynamicLibraries:"tileDebugInstrumentationData") functionType:"userReflectionData") device:objc_msgSend(objc_msgSend(a3 options:"tileDebugInstrumentationData") flags:{"linkedDynamicLibraries"), objc_msgSend(objc_msgSend(a4, "tileFunction"), "functionType"), objc_msgSend(a6, "baseObject"), 3, 0}];
    [objc_msgSend(a3 "tileDebugInstrumentationData")];
    [(MTLRenderPipelineReflection *)v12->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v12->_internalReflection performanceStatistics]];
    [(MTLGPUDebugRenderPipelineState *)v12 _initConstantsBuffer:a3];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (MTLGPUDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 meshDescriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8
{
  v85 = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = MTLGPUDebugRenderPipelineState;
  v12 = [(MTLToolsRenderPipelineState *)&v78 initWithBaseObject:a3 parent:a7, a5];
  if (v12)
  {
    if ((*(a7 + 292) & 2) != 0)
    {
      v12->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    }

    if ([a4 meshFunction])
    {
      v12->_meshMaxCallStackDepth = [a4 maxMeshCallStackDepth];
      v13 = [a4 meshFunction];
      v12->_meshFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v13, [a3 meshDebugInstrumentationData]);
      [(NSMutableArray *)v12->_retainedFunctions addObject:v13];
    }

    if ([a4 objectFunction])
    {
      v12->_objectMaxCallStackDepth = [a4 maxObjectCallStackDepth];
      v14 = [a4 objectFunction];
      v12->_objectFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v14, [a3 objectDebugInstrumentationData]);
      [(NSMutableArray *)v12->_retainedFunctions addObject:v14];
    }

    if ([a4 fragmentFunction])
    {
      v12->_fragmentMaxCallStackDepth = [a4 maxFragmentCallStackDepth];
      v15 = [a4 fragmentFunction];
      v12->_fragmentFunctionData = -[MTLGPUDebugImageData initWithFunction:debugInstrumentationData:]([MTLGPUDebugImageData alloc], "initWithFunction:debugInstrumentationData:", v15, [a3 fragmentDebugInstrumentationData]);
      [(NSMutableArray *)v12->_retainedFunctions addObject:v15];
    }

    v16 = [objc_msgSend(objc_msgSend(a4 "meshLinkedFunctions")];
    v17 = [objc_msgSend(objc_msgSend(a4 "objectLinkedFunctions")] + v16;
    v18 = [objc_msgSend(a4 "meshPreloadedLibraries")];
    v19 = v17 + v18 + [objc_msgSend(a4 "objectPreloadedLibraries")];
    if (v19)
    {
      v12->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v20 = [objc_msgSend(a4 "meshLinkedFunctions")];
      v21 = [v20 countByEnumeratingWithState:&v74 objects:v84 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v75;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v75 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v74 + 1) + 8 * i) + 48)];
          }

          v22 = [v20 countByEnumeratingWithState:&v74 objects:v84 count:16];
        }

        while (v22);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v25 = [objc_msgSend(a4 "objectLinkedFunctions")];
      v26 = [v25 countByEnumeratingWithState:&v70 objects:v83 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v71;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v71 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v70 + 1) + 8 * j) + 48)];
          }

          v27 = [v25 countByEnumeratingWithState:&v70 objects:v83 count:16];
        }

        while (v27);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v30 = [objc_msgSend(a4 "fragmentLinkedFunctions")];
      v31 = [v30 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v67;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v67 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [(NSMutableArray *)v12->_binaryFunctionData addObject:*(*(*(&v66 + 1) + 8 * k) + 48)];
          }

          v32 = [v30 countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v32);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v35 = [a4 meshPreloadedLibraries];
      v36 = [v35 countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v63;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v63 != v38)
            {
              objc_enumerationMutation(v35);
            }

            -[NSMutableArray addObject:](v12->_binaryFunctionData, "addObject:", [*(*(&v62 + 1) + 8 * m) imageData]);
          }

          v37 = [v35 countByEnumeratingWithState:&v62 objects:v81 count:16];
        }

        while (v37);
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v40 = [a4 objectPreloadedLibraries];
      v41 = [v40 countByEnumeratingWithState:&v58 objects:v80 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v59;
        do
        {
          for (n = 0; n != v42; ++n)
          {
            if (*v59 != v43)
            {
              objc_enumerationMutation(v40);
            }

            -[NSMutableArray addObject:](v12->_binaryFunctionData, "addObject:", [*(*(&v58 + 1) + 8 * n) imageData]);
          }

          v42 = [v40 countByEnumeratingWithState:&v58 objects:v80 count:16];
        }

        while (v42);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v45 = [a4 fragmentPreloadedLibraries];
      v46 = [v45 countByEnumeratingWithState:&v54 objects:v79 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v55;
        do
        {
          for (ii = 0; ii != v47; ++ii)
          {
            if (*v55 != v48)
            {
              objc_enumerationMutation(v45);
            }

            -[NSMutableArray addObject:](v12->_binaryFunctionData, "addObject:", [*(*(&v54 + 1) + 8 * ii) imageData]);
          }

          v47 = [v45 countByEnumeratingWithState:&v54 objects:v79 count:16];
        }

        while (v47);
      }
    }

    v12->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers];
    v50 = 1;
    if ((a8 & 0x800000000) == 0)
    {
      v50 = 2;
    }

    v12->_shaderValidation = v50;
    v12->_shaderValidationState = v50;
    v12->_internalReflection = a6;
    if ([objc_msgSend(a3 "objectDebugInstrumentationData")] || objc_msgSend(objc_msgSend(a3, "meshDebugInstrumentationData"), "userReflectionData") || objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      v12->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithObjectData:objc_msgSend(objc_msgSend(a3 objectDynamicLibraries:"objectDebugInstrumentationData") meshData:"userReflectionData") meshDynamicLibraries:objc_msgSend(objc_msgSend(a3 fragmentData:"objectDebugInstrumentationData") fragmentDynamicLibraries:"linkedDynamicLibraries") device:objc_msgSend(objc_msgSend(a3 options:"meshDebugInstrumentationData") flags:{"userReflectionData"), objc_msgSend(objc_msgSend(a3, "meshDebugInstrumentationData"), "linkedDynamicLibraries"), objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "userReflectionData"), objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "linkedDynamicLibraries"), objc_msgSend(a7, "baseObject"), a8, 0}];
      [objc_msgSend(a3 "objectDebugInstrumentationData")];
      [objc_msgSend(a3 "meshDebugInstrumentationData")];
      [objc_msgSend(a3 "fragmentDebugInstrumentationData")];
    }

    [(MTLRenderPipelineReflection *)v12->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v12->_internalReflection performanceStatistics]];
    [(MTLGPUDebugRenderPipelineState *)v12 _initConstantsBuffer:a3];
  }

  v51 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)unwrapBinaryFunctions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(MTLToolsRenderPipelineState *)self device];
  if ([a3 count])
  {
    [(MTLDevice *)v4 baseObject];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(a3);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "baseObject")}];
        }

        v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

uint64_t __67__MTLGPUDebugRenderPipelineState_functionHandleWithFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLGPUDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];

  return [(MTLGPUDebugFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5 function:v6];
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5
{
  v9 = objc_opt_new();
  [v9 setVertexAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", a3)}];
  [v9 setFragmentAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", a4)}];
  v14 = 0;
  if (!a5)
  {
    a5 = &v14;
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

  v11 = [MTLGPUDebugRenderPipelineState alloc];
  v12 = [(MTLGPUDebugRenderPipelineState *)v11 initWithRenderPipelineState:v10 vertexBinaryFunctions:a3 fragmentBinaryFunctions:a4 tileBinaryFunctions:MEMORY[0x277CBEBF8] objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v14];

  return v12;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v6 = [(MTLGPUDebugRenderPipelineState *)self unwrapBinaryFunctions:a3];
  v12 = 0;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &v12;
  }

  v8 = [(MTLToolsObject *)self->super.super._baseObject newTileRenderPipelineStateWithAdditionalBinaryFunctions:v6 error:v7];

  if (![v8 tileDebugInstrumentationData])
  {
    [v8 setTileDebugInstrumentationData:{objc_msgSend(v8, "tileDebugInstrumentationData")}];
  }

  v9 = [MTLGPUDebugRenderPipelineState alloc];
  v10 = [(MTLGPUDebugRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:MEMORY[0x277CBEBF8] fragmentBinaryFunctions:MEMORY[0x277CBEBF8] tileBinaryFunctions:v6 objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v12];

  return v10;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  [v7 setVertexAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "vertexAdditionalBinaryFunctions"))}];
  [v7 setFragmentAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"))}];
  [v7 setTileAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "tileAdditionalBinaryFunctions"))}];
  [v7 setObjectAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "objectAdditionalBinaryFunctions"))}];
  [v7 setMeshAdditionalBinaryFunctions:{-[MTLGPUDebugRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "meshAdditionalBinaryFunctions"))}];
  v17 = 0;
  if (!a4)
  {
    a4 = &v17;
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

  v9 = [MTLGPUDebugRenderPipelineState alloc];
  v10 = [a3 vertexAdditionalBinaryFunctions];
  v11 = [a3 fragmentAdditionalBinaryFunctions];
  v12 = [a3 tileAdditionalBinaryFunctions];
  v13 = [a3 objectAdditionalBinaryFunctions];
  v14 = [a3 meshAdditionalBinaryFunctions];
  v15 = [(MTLGPUDebugRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:v10 fragmentBinaryFunctions:v11 tileBinaryFunctions:v12 objectBinaryFunctions:v13 meshBinaryFunctions:v14 withState:self device:self->super.super._device pipelineOptions:0, v17];

  return v15;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLGPUDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:a3 renderPipeline:self stage:a4];

    return v9;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLGPUDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsRenderPipelineState *)self device] descriptor:a3 renderPipelineState:self stage:a4];

    return v9;
  }

  return result;
}

- (void)releaseReflection
{
  self->_internalReflection = 0;

  self->_userReflection = 0;
}

- (MTLGPUDebugBuffer)vertexConstantsBuffer
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

- (MTLGPUDebugBuffer)fragmentConstantsBuffer
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

- (MTLGPUDebugBuffer)tileConstantsBuffer
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

- (MTLGPUDebugBuffer)objectConstantsBuffer
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

- (MTLGPUDebugBuffer)meshConstantsBuffer
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
    GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, self->_indirectStateBuffer);

    if ([(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self vertexConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self fragmentConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self tileConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self objectConstantsBuffer]);
    }

    if ([(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer])
    {
      GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, [(MTLGPUDebugRenderPipelineState *)self meshConstantsBuffer]);
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
            GlobalResidentBufferList::removeBuffer(&self->super.super._device[5].super._parent, v8);
          }
        }

        v5 = [(NSMutableArray *)binaryFunctionData countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10.receiver = self;
  v10.super_class = MTLGPUDebugRenderPipelineState;
  [(MTLToolsRenderPipelineState *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

@end
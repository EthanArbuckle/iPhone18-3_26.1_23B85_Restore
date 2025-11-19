@interface MTLLegacySVRenderPipelineState
- (MTLLegacySVBuffer)fragmentConstantsBuffer;
- (MTLLegacySVBuffer)meshConstantsBuffer;
- (MTLLegacySVBuffer)objectConstantsBuffer;
- (MTLLegacySVBuffer)tileConstantsBuffer;
- (MTLLegacySVBuffer)vertexConstantsBuffer;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 descriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 meshDescriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 tileDescriptor:(id)a4 reflection:(id)a5 device:(id)a6 pipelineOptions:(unint64_t)a7;
- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 vertexBinaryFunctions:(id)a4 fragmentBinaryFunctions:(id)a5 tileBinaryFunctions:(id)a6 objectBinaryFunctions:(id)a7 meshBinaryFunctions:(id)a8 withState:(id)a9 device:(id)a10 pipelineOptions:(unint64_t)a11;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)unwrapBinaryFunctions:(id)a3;
- (void)_initConstantsBuffer:(id)a3 device:(id)a4;
- (void)dealloc;
- (void)releaseReflection;
@end

@implementation MTLLegacySVRenderPipelineState

- (void)_initConstantsBuffer:(id)a3 device:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  -[MTLLegacySVImageData setConstantData:](self->_vertexFunctionData, "setConstantData:", [objc_msgSend(a3 "vertexDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_fragmentFunctionData, "setConstantData:", [objc_msgSend(a3 "fragmentDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_tileFunctionData, "setConstantData:", [objc_msgSend(a3 "tileDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_objectFunctionData, "setConstantData:", [objc_msgSend(a3 "objectDebugInstrumentationData")]);
  -[MTLLegacySVImageData setConstantData:](self->_meshFunctionData, "setConstantData:", [objc_msgSend(a3 "meshDebugInstrumentationData")]);
  if (self->_supportsIndirectCommandBuffers && (HIBYTE(self->super.super._device[2].dynamicLibraryObjectCache) & 0x20) != 0)
  {
    v7 = [[MTLLegacySVPipelineStateInfoEncoder alloc] initWithDevice:self->super.super._device];
    v8 = [objc_msgSend(a4 "baseObject")];
    self->_indirectStateBuffer = -[MTLLegacySVBuffer initWithBuffer:device:offset:length:track:]([MTLLegacySVBuffer alloc], "initWithBuffer:device:offset:length:track:", v8, a4, 0, [v8 length], 0);

    [(MTLLegacySVPipelineStateInfoEncoder *)v7 setArgumentBuffer:self->_indirectStateBuffer offset:0];
    [(MTLLegacySVPipelineStateInfoEncoder *)v7 setRenderPipelineState:self];

    if ([(MTLLegacySVRenderPipelineState *)self vertexConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self vertexConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(a4 + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self fragmentConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self fragmentConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(a4 + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self tileConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self tileConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(a4 + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self objectConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self objectConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(a4 + 552);
    }

    if ([(MTLLegacySVRenderPipelineState *)self meshConstantsBuffer])
    {
      [(MTLLegacySVRenderPipelineState *)self meshConstantsBuffer];
      LegacySVGlobalResidentBufferList::addBuffer(a4 + 552);
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
    LegacySVGlobalResidentBufferList::addBuffer(a4 + 552);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 descriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8
{
  v9 = a7;
  v72 = *MEMORY[0x277D85DE8];
  v67.receiver = self;
  v67.super_class = MTLLegacySVRenderPipelineState;
  v14 = [(MTLToolsRenderPipelineState *)&v67 initWithBaseObject:a3 parent:a7];
  if (v14)
  {
    if ((v9[292] & 2) != 0)
    {
      v14->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    }

    if ([a4 vertexFunction])
    {
      v14->_vertexMaxCallStackDepth = [a4 maxVertexCallStackDepth];
      v15 = [a4 vertexFunction];
      v14->_vertexFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v15, [a3 vertexDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v15];
    }

    if ([a4 fragmentFunction])
    {
      v14->_fragmentMaxCallStackDepth = [a4 maxFragmentCallStackDepth];
      v16 = [a4 fragmentFunction];
      v14->_fragmentFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v16, [a3 fragmentDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v16];
    }

    v49 = a6;
    if ([a4 meshFunction])
    {
      v14->_meshMaxCallStackDepth = [a4 maxMeshCallStackDepth];
      v17 = [a4 meshFunction];
      v14->_meshFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v17, [a3 meshDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v17];
    }

    if ([a4 objectFunction])
    {
      v14->_objectMaxCallStackDepth = [a4 maxObjectCallStackDepth];
      v18 = [a4 objectFunction];
      v14->_objectFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v18, [a3 objectDebugInstrumentationData]);
      [(NSMutableArray *)v14->_retainedFunctions addObject:v18];
    }

    v14->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers];
    v48 = a8;
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
      v47 = v9;
      v14->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v23];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = [objc_msgSend(a4 "vertexLinkedFunctions")];
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
      v29 = [objc_msgSend(a4 "fragmentLinkedFunctions")];
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
      v34 = [a4 vertexPreloadedLibraries];
      v35 = [v34 countByEnumeratingWithState:&v55 objects:v69 count:16];
      v9 = v47;
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
              objc_enumerationMutation(v34);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v55 + 1) + 8 * k) imageData]);
          }

          v36 = [v34 countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v36);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v39 = [a4 fragmentPreloadedLibraries];
      v40 = [v39 countByEnumeratingWithState:&v51 objects:v68 count:16];
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
              objc_enumerationMutation(v39);
            }

            -[NSMutableArray addObject:](v14->_binaryFunctionData, "addObject:", [*(*(&v51 + 1) + 8 * m) imageData]);
          }

          v41 = [v39 countByEnumeratingWithState:&v51 objects:v68 count:16];
        }

        while (v41);
      }
    }

    v14->_internalReflection = v49;
    if ([objc_msgSend(a3 "vertexDebugInstrumentationData")] || objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      v50 = 0;
      v44 = [a5 newSerializedVertexDataWithFlags:28 options:v48 error:&v50];
      v14->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithVertexData:objc_msgSend(objc_msgSend(a3 fragmentData:"vertexDebugInstrumentationData") serializedVertexDescriptor:"userReflectionData") device:objc_msgSend(objc_msgSend(a3 options:"fragmentDebugInstrumentationData") flags:{"userReflectionData"), v44, objc_msgSend(v9, "baseObject"), v48, 0}];
      dispatch_release(v44);
    }

    [(MTLRenderPipelineReflection *)v14->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v14->_internalReflection performanceStatistics]];
    [(MTLLegacySVRenderPipelineState *)v14 _initConstantsBuffer:a3 device:v9];
  }

  v45 = *MEMORY[0x277D85DE8];
  return v14;
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 vertexBinaryFunctions:(id)a4 fragmentBinaryFunctions:(id)a5 tileBinaryFunctions:(id)a6 objectBinaryFunctions:(id)a7 meshBinaryFunctions:(id)a8 withState:(id)a9 device:(id)a10 pipelineOptions:(unint64_t)a11
{
  v75 = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = MTLLegacySVRenderPipelineState;
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
    [(MTLLegacySVRenderPipelineState *)v17 _initConstantsBuffer:a3 device:v17->super.super._device];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v17;
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 tileDescriptor:(id)a4 reflection:(id)a5 device:(id)a6 pipelineOptions:(unint64_t)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = MTLLegacySVRenderPipelineState;
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
      v12->_tileFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v13, [a3 tileDebugInstrumentationData]);
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
    v12->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithTileData:objc_msgSend(objc_msgSend(a3 functionType:"tileDebugInstrumentationData") device:"userReflectionData") options:objc_msgSend(objc_msgSend(a4 flags:{"tileFunction"), "functionType"), objc_msgSend(a6, "baseObject"), 3, 0}];
    [(MTLRenderPipelineReflection *)v12->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v12->_internalReflection performanceStatistics]];
    [(MTLLegacySVRenderPipelineState *)v12 _initConstantsBuffer:a3 device:a6];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (MTLLegacySVRenderPipelineState)initWithRenderPipelineState:(id)a3 meshDescriptor:(id)a4 unwrappedDescriptor:(id)a5 reflection:(id)a6 device:(id)a7 pipelineOptions:(unint64_t)a8
{
  v88 = *MEMORY[0x277D85DE8];
  v81.receiver = self;
  v81.super_class = MTLLegacySVRenderPipelineState;
  v13 = [(MTLToolsRenderPipelineState *)&v81 initWithBaseObject:a3 parent:a7, a5];
  if (v13)
  {
    v54 = a6;
    if ((*(a7 + 292) & 2) != 0)
    {
      v13->_retainedFunctions = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{2, a6}];
    }

    if ([a4 meshFunction])
    {
      v13->_meshMaxCallStackDepth = [a4 maxMeshCallStackDepth];
      v14 = [a4 meshFunction];
      v13->_meshFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v14, [a3 meshDebugInstrumentationData]);
      [(NSMutableArray *)v13->_retainedFunctions addObject:v14];
    }

    if ([a4 objectFunction])
    {
      v13->_objectMaxCallStackDepth = [a4 maxObjectCallStackDepth];
      v15 = [a4 objectFunction];
      v13->_objectFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v15, [a3 objectDebugInstrumentationData]);
      [(NSMutableArray *)v13->_retainedFunctions addObject:v15];
    }

    v56 = a8;
    if ([a4 fragmentFunction])
    {
      v13->_fragmentMaxCallStackDepth = [a4 maxFragmentCallStackDepth];
      v16 = [a4 fragmentFunction];
      v13->_fragmentFunctionData = -[MTLLegacySVImageData initWithFunction:debugInstrumentationData:]([MTLLegacySVImageData alloc], "initWithFunction:debugInstrumentationData:", v16, [a3 fragmentDebugInstrumentationData]);
      [(NSMutableArray *)v13->_retainedFunctions addObject:v16];
    }

    v17 = [objc_msgSend(objc_msgSend(a4 "meshLinkedFunctions")];
    v18 = [objc_msgSend(objc_msgSend(a4 "objectLinkedFunctions")] + v17;
    v19 = [objc_msgSend(a4 "meshPreloadedLibraries")];
    v20 = v18 + v19 + [objc_msgSend(a4 "objectPreloadedLibraries")];
    if (v20)
    {
      v13->_binaryFunctionData = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v21 = [objc_msgSend(a4 "meshLinkedFunctions")];
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

            [(NSMutableArray *)v13->_binaryFunctionData addObject:*(*(*(&v77 + 1) + 8 * i) + 48)];
          }

          v23 = [v21 countByEnumeratingWithState:&v77 objects:v87 count:16];
        }

        while (v23);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v26 = [objc_msgSend(a4 "objectLinkedFunctions")];
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

            [(NSMutableArray *)v13->_binaryFunctionData addObject:*(*(*(&v73 + 1) + 8 * j) + 48)];
          }

          v28 = [v26 countByEnumeratingWithState:&v73 objects:v86 count:16];
        }

        while (v28);
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v31 = [objc_msgSend(a4 "fragmentLinkedFunctions")];
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

            [(NSMutableArray *)v13->_binaryFunctionData addObject:*(*(*(&v69 + 1) + 8 * k) + 48)];
          }

          v33 = [v31 countByEnumeratingWithState:&v69 objects:v85 count:16];
        }

        while (v33);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v36 = [a4 meshPreloadedLibraries];
      v37 = [v36 countByEnumeratingWithState:&v65 objects:v84 count:16];
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
              objc_enumerationMutation(v36);
            }

            -[NSMutableArray addObject:](v13->_binaryFunctionData, "addObject:", [*(*(&v65 + 1) + 8 * m) imageData]);
          }

          v38 = [v36 countByEnumeratingWithState:&v65 objects:v84 count:16];
        }

        while (v38);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v41 = [a4 objectPreloadedLibraries];
      v42 = [v41 countByEnumeratingWithState:&v61 objects:v83 count:16];
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
              objc_enumerationMutation(v41);
            }

            -[NSMutableArray addObject:](v13->_binaryFunctionData, "addObject:", [*(*(&v61 + 1) + 8 * n) imageData]);
          }

          v43 = [v41 countByEnumeratingWithState:&v61 objects:v83 count:16];
        }

        while (v43);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v46 = [a4 fragmentPreloadedLibraries];
      v47 = [v46 countByEnumeratingWithState:&v57 objects:v82 count:16];
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
              objc_enumerationMutation(v46);
            }

            -[NSMutableArray addObject:](v13->_binaryFunctionData, "addObject:", [*(*(&v57 + 1) + 8 * ii) imageData]);
          }

          v48 = [v46 countByEnumeratingWithState:&v57 objects:v82 count:16];
        }

        while (v48);
      }
    }

    v13->_supportsIndirectCommandBuffers = [a4 supportIndirectCommandBuffers];
    v51 = 1;
    if ((v56 & 0x800000000) == 0)
    {
      v51 = 2;
    }

    v13->_shaderValidation = v51;
    v13->_shaderValidationState = v51;
    v13->_internalReflection = v55;
    if ([objc_msgSend(a3 "objectDebugInstrumentationData")] || objc_msgSend(objc_msgSend(a3, "meshDebugInstrumentationData"), "userReflectionData") || objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "userReflectionData"))
    {
      v13->_userReflection = [objc_alloc(MEMORY[0x277CD6F90]) initWithObjectData:objc_msgSend(objc_msgSend(a3 meshData:"objectDebugInstrumentationData") fragmentData:"userReflectionData") device:objc_msgSend(objc_msgSend(a3 options:"meshDebugInstrumentationData") flags:{"userReflectionData"), objc_msgSend(objc_msgSend(a3, "fragmentDebugInstrumentationData"), "userReflectionData"), objc_msgSend(a7, "baseObject"), v56, 0}];
    }

    [(MTLRenderPipelineReflection *)v13->_userReflection setPerformanceStatistics:[(MTLRenderPipelineReflection *)v13->_internalReflection performanceStatistics]];
    [(MTLLegacySVRenderPipelineState *)v13 _initConstantsBuffer:a3 device:a7];
  }

  v52 = *MEMORY[0x277D85DE8];
  return v13;
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

uint64_t __67__MTLLegacySVRenderPipelineState_functionHandleWithFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLLegacySVFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];

  return [(MTLLegacySVFunctionHandle *)v2 initWithFunctionHandle:v3 renderPipelineState:v4 stage:v5 function:v6];
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5
{
  v9 = objc_opt_new();
  [v9 setVertexAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", a3)}];
  [v9 setFragmentAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", a4)}];
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

  v11 = [MTLLegacySVRenderPipelineState alloc];
  v12 = [(MTLLegacySVRenderPipelineState *)v11 initWithRenderPipelineState:v10 vertexBinaryFunctions:a3 fragmentBinaryFunctions:a4 tileBinaryFunctions:MEMORY[0x277CBEBF8] objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v14];

  return v12;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v6 = [(MTLLegacySVRenderPipelineState *)self unwrapBinaryFunctions:a3];
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

  v9 = [MTLLegacySVRenderPipelineState alloc];
  v10 = [(MTLLegacySVRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:MEMORY[0x277CBEBF8] fragmentBinaryFunctions:MEMORY[0x277CBEBF8] tileBinaryFunctions:v6 objectBinaryFunctions:MEMORY[0x277CBEBF8] meshBinaryFunctions:MEMORY[0x277CBEBF8] withState:self device:self->super.super._device pipelineOptions:0, v12];

  return v10;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  [v7 setVertexAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "vertexAdditionalBinaryFunctions"))}];
  [v7 setFragmentAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"))}];
  [v7 setTileAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "tileAdditionalBinaryFunctions"))}];
  [v7 setObjectAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "objectAdditionalBinaryFunctions"))}];
  [v7 setMeshAdditionalBinaryFunctions:{-[MTLLegacySVRenderPipelineState unwrapBinaryFunctions:](self, "unwrapBinaryFunctions:", objc_msgSend(a3, "meshAdditionalBinaryFunctions"))}];
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

  v9 = [MTLLegacySVRenderPipelineState alloc];
  v10 = [a3 vertexAdditionalBinaryFunctions];
  v11 = [a3 fragmentAdditionalBinaryFunctions];
  v12 = [a3 tileAdditionalBinaryFunctions];
  v13 = [a3 objectAdditionalBinaryFunctions];
  v14 = [a3 meshAdditionalBinaryFunctions];
  v15 = [(MTLLegacySVRenderPipelineState *)v9 initWithRenderPipelineState:v8 vertexBinaryFunctions:v10 fragmentBinaryFunctions:v11 tileBinaryFunctions:v12 objectBinaryFunctions:v13 meshBinaryFunctions:v14 withState:self device:self->super.super._device pipelineOptions:0, v17];

  return v15;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVVisibleFunctionTable alloc] initWithVisibleFunctionTable:result descriptor:a3 renderPipeline:self stage:a4];

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
    v9 = [[MTLLegacySVIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result device:[(MTLToolsRenderPipelineState *)self device] descriptor:a3 renderPipelineState:self stage:a4];

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
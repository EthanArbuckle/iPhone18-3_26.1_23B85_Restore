@interface MTLDebugRenderPipelineState
- (BOOL)isAncestorOf:(id)a3;
- (BOOL)isImageBlockLayoutInputCompatibleWithOutputOf:(id)a3;
- (BOOL)rasterizationEnabled;
- (MTLDebugRenderPipelineState)initWithPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 descriptor:(id)a6;
- (MTLDebugRenderPipelineState)initWithPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 meshDescriptor:(id)a6;
- (MTLDebugRenderPipelineState)initWithPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 tileDescriptor:(id)a6;
- (MTLDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 parent:(id)a4 mtl4Descriptor:(id)a5;
- (MTLDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 mtl4Descriptor:(id)a6;
- (id)_findMasterStruct:(id)a3 includeImageBlockData:(BOOL)a4;
- (id)formattedDescription:(unint64_t)a3;
- (id)functionHandleToDebugFunctionHandle:(id)a3 binaryFunction:(id)a4 stage:(unint64_t)a5;
- (id)functionHandleToDebugFunctionHandle:(id)a3 parentFunction:(id)a4 stage:(unint64_t)a5;
- (id)functionHandleToDebugFunctionHandle:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4;
- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4 selector:(SEL)a5;
- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4;
- (id)getParameter:(id)a3;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 withStage:(unint64_t)a4 selector:(SEL)a5;
- (id)newRenderPipelineDescriptorForSpecialization;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4 selector:(SEL)a5;
- (id)outputImageBlockData;
- (id)validateBinaryFunctions:(id)a3 stage:(unint64_t)a4;
- (int64_t)shaderValidation;
- (int64_t)shaderValidationState;
- (void)_updateCachedMTL4MeshPipelineState;
- (void)_updateCachedMTL4PipelineState;
- (void)_updateCachedMTL4TilePipelineState;
- (void)_updateCachedMeshPipelineState;
- (void)_updateCachedPipelineState;
- (void)_updateCachedTilePipelineState;
- (void)_validateThreadgroupSize:(id *)a3 stage:(unint64_t)a4 context:(_MTLMessageContext *)a5;
- (void)dealloc;
- (void)validateHandleForSetFunction:(id)a3;
@end

@implementation MTLDebugRenderPipelineState

- (MTLDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 parent:(id)a4 mtl4Descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLDebugRenderPipelineState;
  v7 = [(MTLToolsRenderPipelineState *)&v9 initWithBaseObject:a3 parent:a4];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7->_mtl4Descriptor = [a5 copy];
      [(MTLDebugRenderPipelineState *)v7 _updateCachedMTL4PipelineState];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7->_mtl4TileDescriptor = [a5 copy];
        [(MTLDebugRenderPipelineState *)v7 _updateCachedMTL4TilePipelineState];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7->_mtl4MeshDescriptor = [a5 copy];
          [(MTLDebugRenderPipelineState *)v7 _updateCachedMTL4MeshPipelineState];
        }
      }
    }

    v7->_validationReflection = [a3 reflection];
  }

  return v7;
}

- (MTLDebugRenderPipelineState)initWithRenderPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 mtl4Descriptor:(id)a6
{
  v10.receiver = self;
  v10.super_class = MTLDebugRenderPipelineState;
  v8 = [(MTLToolsRenderPipelineState *)&v10 initWithBaseObject:a3 parent:a5];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8->_mtl4Descriptor = [a6 copy];
      [(MTLDebugRenderPipelineState *)v8 _updateCachedMTL4PipelineState];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8->_mtl4TileDescriptor = [a6 copy];
        [(MTLDebugRenderPipelineState *)v8 _updateCachedMTL4TilePipelineState];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8->_mtl4MeshDescriptor = [a6 copy];
          [(MTLDebugRenderPipelineState *)v8 _updateCachedMTL4MeshPipelineState];
        }
      }
    }

    v8->_validationReflection = a4;
  }

  return v8;
}

- (MTLDebugRenderPipelineState)initWithPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 descriptor:(id)a6
{
  v12.receiver = self;
  v12.super_class = MTLDebugRenderPipelineState;
  v8 = [(MTLToolsRenderPipelineState *)&v12 initWithBaseObject:a3 parent:a5];
  if (v8)
  {
    v9 = [a6 copy];
    v8->_descriptor = v9;
    [(MTLRenderPipelineDescriptor *)v9 setBinaryArchives:0];
    v10 = MEMORY[0x277CBEBF8];
    [(MTLRenderPipelineDescriptor *)v8->_descriptor setVertexPreloadedLibraries:MEMORY[0x277CBEBF8]];
    [(MTLRenderPipelineDescriptor *)v8->_descriptor setFragmentPreloadedLibraries:v10];
    v8->_validationReflection = a4;
    [(MTLDebugRenderPipelineState *)v8 _updateCachedPipelineState];
  }

  return v8;
}

- (MTLDebugRenderPipelineState)initWithPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 tileDescriptor:(id)a6
{
  v11.receiver = self;
  v11.super_class = MTLDebugRenderPipelineState;
  v8 = [(MTLToolsRenderPipelineState *)&v11 initWithBaseObject:a3 parent:a5];
  if (v8)
  {
    v9 = [a6 copy];
    v8->_tileDescriptor = v9;
    [(MTLTileRenderPipelineDescriptor *)v9 setBinaryArchives:0];
    [(MTLTileRenderPipelineDescriptor *)v8->_tileDescriptor setPreloadedLibraries:MEMORY[0x277CBEBF8]];
    v8->_validationReflection = a4;
    [(MTLDebugRenderPipelineState *)v8 _updateCachedTilePipelineState];
  }

  return v8;
}

- (void)_updateCachedTilePipelineState
{
  v3 = [(MTLTileRenderPipelineDescriptor *)self->_tileDescriptor _descriptorPrivate];
  v4 = 0;
  self->_rasterSampleCount = *(v3 + 8);
  do
  {
    v5 = [*v3 objectAtIndexedSubscript:v4];
    if (v5)
    {
      v5 = [v5 pixelFormat];
    }

    self->_colorPixelFormat[v4++] = v5;
  }

  while (v4 != 8);
  self->_threadgroupSizeMatchesTileSize = *(v3 + 32);
}

- (void)_updateCachedMTL4TilePipelineState
{
  v3 = 0;
  self->_rasterSampleCount = [(MTL4TileRenderPipelineDescriptor *)self->_mtl4TileDescriptor rasterSampleCount];
  do
  {
    v4 = [-[MTL4TileRenderPipelineDescriptor colorAttachments](self->_mtl4TileDescriptor "colorAttachments")];
    if (v4)
    {
      v4 = [v4 pixelFormat];
    }

    self->_colorPixelFormat[v3++] = v4;
  }

  while (v3 != 8);
  self->_threadgroupSizeMatchesTileSize = [(MTL4TileRenderPipelineDescriptor *)self->_mtl4TileDescriptor threadgroupSizeMatchesTileSize];
}

- (id)_findMasterStruct:(id)a3 includeImageBlockData:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  result = [a3 count];
  if (!result)
  {
    return result;
  }

  v7 = 0;
  while (1)
  {
    v8 = [objc_msgSend(a3 objectAtIndexedSubscript:{v7), "type"}];
    if (v8 == 16)
    {
      break;
    }

    if (v8 == 17)
    {
      goto LABEL_11;
    }

LABEL_8:
    if ([a3 count] <= ++v7)
    {
      return 0;
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = [objc_msgSend(a3 objectAtIndexedSubscript:{v7), "imageBlockMasterStructMembers"}];
  if (!result)
  {
    v9 = [a3 objectAtIndexedSubscript:v7];

    return [v9 dataTypeDescription];
  }

  return result;
}

- (id)outputImageBlockData
{
  result = -[MTLDebugRenderPipelineState _findMasterStruct:includeImageBlockData:](self, "_findMasterStruct:includeImageBlockData:", [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{-[MTLRenderPipelineReflection imageBlockDataReturn](self->_validationReflection, "imageBlockDataReturn"), 0}], 1);
  if (!result)
  {
    v4 = [(MTLRenderPipelineReflection *)self->_validationReflection tileArguments];

    return [(MTLDebugRenderPipelineState *)self _findMasterStruct:v4 includeImageBlockData:0];
  }

  return result;
}

- (BOOL)isImageBlockLayoutInputCompatibleWithOutputOf:(id)a3
{
  v5 = [(MTLDebugRenderPipelineState *)self _findMasterStruct:[(MTLRenderPipelineReflection *)[(MTLDebugRenderPipelineState *)self validationReflection] tileArguments] includeImageBlockData:1];
  if (!v5)
  {
    v5 = [(MTLDebugRenderPipelineState *)self _findMasterStruct:[(MTLRenderPipelineReflection *)[(MTLDebugRenderPipelineState *)self validationReflection] fragmentArguments] includeImageBlockData:1];
  }

  v6 = [a3 outputImageBlockData];
  if (!v6 || !v5)
  {
    return 1;
  }

  return [v6 isStructLayoutThreadSafeWith:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugRenderPipelineState;
  [(MTLToolsRenderPipelineState *)&v3 dealloc];
}

- (BOOL)rasterizationEnabled
{
  if (self->_descriptor)
  {
    return [(MTLRenderPipelineDescriptor *)self->_descriptor isRasterizationEnabled];
  }

  else
  {
    return self->_tileDescriptor != 0;
  }
}

- (void)_updateCachedPipelineState
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(MTLRenderPipelineDescriptor *)self->_descriptor _descriptorPrivate];
  v4 = 0;
  v5 = 0;
  self->_rasterSampleCount = *(v3 + 184);
  v6 = -8;
  v7 = self;
  do
  {
    v8 = [objc_msgSend(*v3 _descriptorAtIndex:{v6 + 8), "_descriptorPrivate"}];
    if (v8)
    {
      v9 = *v8 >> 42;
      v7->_colorPixelFormat[0] = v9;
      if (v9)
      {
        v5 = ((*(v8 + 4) & 0xF) << v4) | v5 & ~(15 << v4);
      }
    }

    else
    {
      v7->_colorPixelFormat[0] = 0;
    }

    v4 += 4;
    v7 = (v7 + 8);
    ++v6;
  }

  while (v4 != 32);
  v10 = *(v3 + 72);
  self->_depthPixelFormat = v10;
  if (v10)
  {
    v11 = v5 | 0x100000000;
  }

  else
  {
    v11 = v5;
  }

  v12 = *(v3 + 80);
  self->_stencilPixelFormat = v12;
  if (v12)
  {
    v11 |= 0x600000000uLL;
  }

  self->_attachmentWriteMask = v11;
  v13 = *(v3 + 272);
  if (v13)
  {
    v14 = [v13 layouts];
    v15 = 0;
    self->_vertexDescriptorLayoutCount = 0;
    do
    {
      v16 = [objc_msgSend(v14 objectAtIndexedSubscript:{v15), "stride"}];
      if (v16)
      {
        v17 = &self->_vertexDescriptorLayouts[self->_vertexDescriptorLayoutCount];
        v17->bufferIndex = v15;
        v17->bufferStride = v16;
        ++self->_vertexDescriptorLayoutCount;
      }

      ++v15;
    }

    while (v15 != 31);
  }

  p_maxInstanceCount = &self->_maxInstanceCount;
  self->_maxInstanceCount = 0xFFFFFFFFLL;
  p_maxPatchCount = &self->_maxPatchCount;
  self->_maxPatchCount = 0xFFFFFFFFLL;
  p_maxVertexCount = &self->_maxVertexCount;
  self->_maxVertexCount = 0xFFFFFFFFLL;
  v21 = [(MTLRenderPipelineReflection *)self->_validationReflection vertexBuiltInArguments];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * i);
        v27 = __ROR8__([v26 builtInDataType] - 29, 2);
        if (v27 > 3)
        {
          v28 = 0xFFFFFFFFLL;
        }

        else
        {
          v28 = qword_22E27C370[v27];
        }

        v29 = [v26 builtInType];
        v30 = p_maxVertexCount;
        if (v29 <= 2)
        {
          if (v29 != 1)
          {
            v30 = p_maxInstanceCount;
            if (v29 != 2)
            {
              continue;
            }
          }
        }

        else if (v29 != 3)
        {
          if (v29 == 13)
          {
            v30 = p_maxPatchCount;
          }

          else
          {
            v30 = p_maxInstanceCount;
            if (v29 != 4)
            {
              continue;
            }
          }
        }

        v31 = *v30;
        if (*v30 >= v28)
        {
          v31 = v28;
        }

        *v30 = v31;
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedMTL4PipelineState
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  self->_rasterSampleCount = [(MTL4RenderPipelineDescriptor *)self->_mtl4Descriptor rasterSampleCount];
  v5 = -8;
  v6 = self;
  do
  {
    v7 = [-[MTL4RenderPipelineDescriptor colorAttachments](self->_mtl4Descriptor "colorAttachments")];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 pixelFormat];
      v6->_colorPixelFormat[0] = v9;
      if (v9)
      {
        v4 = (([v8 writeMask] & 0xF) << v3) | v4 & ~(15 << v3);
      }
    }

    else
    {
      v6->_colorPixelFormat[0] = 0;
    }

    v3 += 4;
    v6 = (v6 + 8);
    ++v5;
  }

  while (v3 != 32);
  self->_depthPixelFormat = 0;
  self->_stencilPixelFormat = 0;
  self->_attachmentWriteMask = v4;
  v10 = [(MTL4RenderPipelineDescriptor *)self->_mtl4Descriptor vertexDescriptor];
  if (v10)
  {
    v11 = [v10 layouts];
    v12 = 0;
    self->_vertexDescriptorLayoutCount = 0;
    do
    {
      v13 = [objc_msgSend(v11 objectAtIndexedSubscript:{v12), "stride"}];
      if (v13)
      {
        v14 = &self->_vertexDescriptorLayouts[self->_vertexDescriptorLayoutCount];
        v14->bufferIndex = v12;
        v14->bufferStride = v13;
        ++self->_vertexDescriptorLayoutCount;
      }

      ++v12;
    }

    while (v12 != 31);
  }

  p_maxInstanceCount = &self->_maxInstanceCount;
  self->_maxInstanceCount = 0xFFFFFFFFLL;
  p_maxPatchCount = &self->_maxPatchCount;
  self->_maxPatchCount = 0xFFFFFFFFLL;
  p_maxVertexCount = &self->_maxVertexCount;
  self->_maxVertexCount = 0xFFFFFFFFLL;
  v18 = [(MTLRenderPipelineReflection *)self->_validationReflection vertexBuiltInArguments];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        v24 = __ROR8__([v23 builtInDataType] - 29, 2);
        if (v24 > 3)
        {
          v25 = 0xFFFFFFFFLL;
        }

        else
        {
          v25 = qword_22E27C370[v24];
        }

        v26 = [v23 builtInType];
        v27 = p_maxVertexCount;
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            v27 = p_maxInstanceCount;
            if (v26 != 2)
            {
              continue;
            }
          }
        }

        else if (v26 != 3)
        {
          if (v26 == 13)
          {
            v27 = p_maxPatchCount;
          }

          else
          {
            v27 = p_maxInstanceCount;
            if (v26 != 4)
            {
              continue;
            }
          }
        }

        v28 = *v27;
        if (*v27 >= v25)
        {
          v28 = v25;
        }

        *v27 = v28;
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTLDebugRenderPipelineState;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v4, sel_description), -[MTLRenderPipelineDescriptor formattedDescription:](self->_descriptor, "formattedDescription:", a3 + 4)];
}

- (id)getParameter:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getParameter:a3];
}

- (BOOL)isAncestorOf:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v5 = a3;
  while (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v6 = [v3 parent];

    v3 = v6;
    if (v6 == self)
    {
      v7 = 1;
      v3 = v6;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)validateHandleForSetFunction:(id)a3
{
  v5 = [a3 parent];
  if (([v5 isAncestorOf:self] & 1) == 0 && !-[MTLDebugRenderPipelineState isAncestorOf:](self, "isAncestorOf:", v5))
  {
    [MTLDebugRenderPipelineState validateHandleForSetFunction:a3];
  }
}

- (id)validateBinaryFunctions:(id)a3 stage:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [(MTLToolsRenderPipelineState *)self device];
  if ([a3 count])
  {
    if (([-[MTLDevice baseObject](v6 "baseObject")] & 1) == 0)
    {
      [MTLDebugRenderPipelineState validateBinaryFunctions:a4 stage:?];
    }

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) baseObject];
          [v7 addObject:v12];
          if (![v12 precompiledOutput])
          {
            [MTLDebugRenderPipelineState validateBinaryFunctions:v12 stage:a4];
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 fragmentAdditionalBinaryFunctions:(id)a4 error:(id *)a5
{
  if ([a3 count])
  {
    if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
    {
      if (([(MTL4RenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4Descriptor] supportVertexBinaryLinking]& 1) == 0)
      {
        [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:fragmentAdditionalBinaryFunctions:error:];
      }
    }

    else if (![(MTLRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self descriptor] supportAddingVertexBinaryFunctions])
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:fragmentAdditionalBinaryFunctions:error:];
    }
  }

  if ([a4 count])
  {
    if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
    {
      if (([(MTL4RenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4Descriptor] supportFragmentBinaryLinking]& 1) == 0)
      {
        [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:fragmentAdditionalBinaryFunctions:error:];
      }
    }

    else if (![(MTLRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self descriptor] supportAddingFragmentBinaryFunctions])
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:fragmentAdditionalBinaryFunctions:error:];
    }
  }

  v9 = [(MTLDebugRenderPipelineState *)self validateBinaryFunctions:a3 stage:2];
  v10 = [(MTLDebugRenderPipelineState *)self validateBinaryFunctions:a4 stage:3];
  v17 = 0;
  if (!a5)
  {
    a5 = &v17;
  }

  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v17)
  {
    if (v11)
    {
      goto LABEL_17;
    }

    return 0;
  }

  [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:fragmentAdditionalBinaryFunctions:error:];
  if (!v11)
  {
    return 0;
  }

LABEL_17:
  if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
  {
    v12 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v11 reflection:self->_validationReflection parent:self mtl4Descriptor:self->_mtl4Descriptor];
  }

  else
  {
    v13 = [(MTLRenderPipelineDescriptor *)self->_descriptor copy];
    v14 = objc_alloc_init(MEMORY[0x277CD6EB8]);
    [v14 setBinaryFunctions:a3];
    [v13 setVertexLinkedFunctions:v14];

    v15 = objc_alloc_init(MEMORY[0x277CD6EB8]);
    [v15 setBinaryFunctions:a4];
    [v13 setFragmentLinkedFunctions:v15];

    v12 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v11 reflection:self->_validationReflection parent:self descriptor:v13];
  }

  return v12;
}

- (id)newTileRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
  {
    if (([(MTL4TileRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4TileDescriptor] supportBinaryLinking]& 1) == 0)
    {
      [MTLDebugRenderPipelineState newTileRenderPipelineStateWithAdditionalBinaryFunctions:error:];
    }
  }

  else if (![(MTLTileRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self tileDescriptor] supportAddingBinaryFunctions])
  {
    [MTLDebugRenderPipelineState newTileRenderPipelineStateWithAdditionalBinaryFunctions:error:];
  }

  v7 = [(MTLDebugRenderPipelineState *)self validateBinaryFunctions:a3 stage:4];
  v13 = 0;
  if (!a4)
  {
    a4 = &v13;
  }

  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v13)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    return 0;
  }

  [MTLDebugRenderPipelineState newTileRenderPipelineStateWithAdditionalBinaryFunctions:error:];
  if (!v8)
  {
    return 0;
  }

LABEL_10:
  if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
  {
    v9 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v8 reflection:self->_validationReflection parent:self mtl4Descriptor:self->_mtl4TileDescriptor];
  }

  else
  {
    v10 = [(MTLTileRenderPipelineDescriptor *)self->_tileDescriptor copy];
    v11 = objc_alloc_init(MEMORY[0x277CD6EB8]);
    [v11 setBinaryFunctions:a3];
    [v10 setLinkedFunctions:v11];

    v9 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v8 reflection:self->_validationReflection parent:self tileDescriptor:v10];
  }

  return v9;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v7 = [objc_msgSend(a3 "tileAdditionalBinaryFunctions")] != 0;
  v8 = [objc_msgSend(a3 "vertexAdditionalBinaryFunctions")] || objc_msgSend(objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"), "count") || objc_msgSend(objc_msgSend(a3, "objectAdditionalBinaryFunctions"), "count") || objc_msgSend(objc_msgSend(a3, "meshAdditionalBinaryFunctions"), "count") != 0;
  if (v8 == v7)
  {
    [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
  }

  v9 = [(MTLDebugRenderPipelineState *)self hasMetal4Descriptor];
  v10 = [objc_msgSend(a3 "tileAdditionalBinaryFunctions")];
  if (v9)
  {
    if (v10)
    {
      if (self->_mtl4TileDescriptor)
      {
        if (([(MTL4TileRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4TileDescriptor] supportBinaryLinking]& 1) == 0)
        {
          [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
        }
      }

      else
      {
        MTLReportFailure();
      }
    }

    if ([objc_msgSend(a3 "fragmentAdditionalBinaryFunctions")])
    {
      if (self->_mtl4Descriptor)
      {
        if (([(MTL4RenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4Descriptor] supportFragmentBinaryLinking]& 1) == 0)
        {
          [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
        }
      }

      else if (self->_mtl4MeshDescriptor)
      {
        if (([(MTL4MeshRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4MeshDescriptor] supportFragmentBinaryLinking]& 1) == 0)
        {
          [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
        }
      }

      else
      {
        MTLReportFailure();
      }
    }

    if ([objc_msgSend(a3 "vertexAdditionalBinaryFunctions")])
    {
      if (self->_mtl4Descriptor)
      {
        if (([(MTL4RenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4Descriptor] supportVertexBinaryLinking]& 1) == 0)
        {
          [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
        }
      }

      else
      {
        MTLReportFailure();
      }
    }

    if ([objc_msgSend(a3 "objectAdditionalBinaryFunctions")])
    {
      if (self->_mtl4MeshDescriptor)
      {
        if (([(MTL4MeshRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4MeshDescriptor] supportObjectBinaryLinking]& 1) == 0)
        {
          [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
        }
      }

      else
      {
        MTLReportFailure();
      }
    }

    if ([objc_msgSend(a3 "meshAdditionalBinaryFunctions")])
    {
      if (self->_mtl4MeshDescriptor)
      {
        if (([(MTL4MeshRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self mtl4MeshDescriptor] supportMeshBinaryLinking]& 1) == 0)
        {
          [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
        }
      }

      else
      {
        MTLReportFailure();
      }
    }
  }

  else
  {
    if (v10 && ![(MTLTileRenderPipelineDescriptor *)[(MTLDebugRenderPipelineState *)self tileDescriptor] supportAddingBinaryFunctions])
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
    }

    if ([objc_msgSend(a3 "fragmentAdditionalBinaryFunctions")] && !-[MTLRenderPipelineDescriptor supportAddingFragmentBinaryFunctions](-[MTLDebugRenderPipelineState descriptor](self, "descriptor"), "supportAddingFragmentBinaryFunctions"))
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
    }

    if ([objc_msgSend(a3 "vertexAdditionalBinaryFunctions")] && !-[MTLRenderPipelineDescriptor supportAddingVertexBinaryFunctions](-[MTLDebugRenderPipelineState descriptor](self, "descriptor"), "supportAddingVertexBinaryFunctions"))
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
    }

    if ([objc_msgSend(a3 "objectAdditionalBinaryFunctions")] && (-[MTLRenderPipelineDescriptor supportAddingObjectBinaryFunctions](-[MTLDebugRenderPipelineState descriptor](self, "descriptor"), "supportAddingObjectBinaryFunctions") & 1) == 0)
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
    }

    if ([objc_msgSend(a3 "meshAdditionalBinaryFunctions")] && (-[MTLRenderPipelineDescriptor supportAddingMeshBinaryFunctions](-[MTLDebugRenderPipelineState descriptor](self, "descriptor"), "supportAddingMeshBinaryFunctions") & 1) == 0)
    {
      [MTLDebugRenderPipelineState newRenderPipelineStateWithAdditionalBinaryFunctions:error:];
    }
  }

  v11 = objc_opt_new();
  [v11 setVertexAdditionalBinaryFunctions:{-[MTLDebugRenderPipelineState validateBinaryFunctions:stage:](self, "validateBinaryFunctions:stage:", objc_msgSend(a3, "vertexAdditionalBinaryFunctions"), 2)}];
  [v11 setFragmentAdditionalBinaryFunctions:{-[MTLDebugRenderPipelineState validateBinaryFunctions:stage:](self, "validateBinaryFunctions:stage:", objc_msgSend(a3, "fragmentAdditionalBinaryFunctions"), 3)}];
  [v11 setTileAdditionalBinaryFunctions:{-[MTLDebugRenderPipelineState validateBinaryFunctions:stage:](self, "validateBinaryFunctions:stage:", objc_msgSend(a3, "tileAdditionalBinaryFunctions"), 4)}];
  [v11 setObjectAdditionalBinaryFunctions:{-[MTLDebugRenderPipelineState validateBinaryFunctions:stage:](self, "validateBinaryFunctions:stage:", objc_msgSend(a3, "objectAdditionalBinaryFunctions"), 5)}];
  [v11 setMeshAdditionalBinaryFunctions:{-[MTLDebugRenderPipelineState validateBinaryFunctions:stage:](self, "validateBinaryFunctions:stage:", objc_msgSend(a3, "meshAdditionalBinaryFunctions"), 6)}];
  v23 = 0;
  if (!a4)
  {
    a4 = &v23;
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
  {
    mtl4Descriptor = self->_mtl4Descriptor;
    if (!mtl4Descriptor)
    {
      mtl4Descriptor = self->_mtl4MeshDescriptor;
      if (!mtl4Descriptor)
      {
        mtl4Descriptor = self->_mtl4TileDescriptor;
      }
    }

    return [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v12 reflection:self->_validationReflection parent:self mtl4Descriptor:mtl4Descriptor];
  }

  else
  {
    if ([objc_msgSend(a3 "tileAdditionalBinaryFunctions")])
    {
      v15 = [(MTLTileRenderPipelineDescriptor *)self->_tileDescriptor copy];
      v16 = objc_opt_new();
      [v16 setBinaryFunctions:{objc_msgSend(a3, "tileAdditionalBinaryFunctions")}];
      [v15 setLinkedFunctions:v16];
      v17 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v12 reflection:self->_validationReflection parent:self tileDescriptor:v15];
    }

    else
    {
      v15 = [(MTLRenderPipelineDescriptor *)self->_descriptor copy];
      v18 = objc_opt_new();
      [v18 setBinaryFunctions:{objc_msgSend(a3, "vertexAdditionalBinaryFunctions")}];
      [v15 setVertexLinkedFunctions:v18];
      v19 = objc_opt_new();
      [v19 setBinaryFunctions:{objc_msgSend(a3, "fragmentAdditionalBinaryFunctions")}];
      [v15 setFragmentLinkedFunctions:v19];
      v20 = objc_opt_new();
      [v20 setBinaryFunctions:{objc_msgSend(a3, "objectAdditionalBinaryFunctions")}];
      [v15 setObjectLinkedFunctions:v20];
      v21 = objc_opt_new();
      [v21 setBinaryFunctions:{objc_msgSend(a3, "meshAdditionalBinaryFunctions")}];
      [v15 setMeshLinkedFunctions:v21];
      v17 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v12 reflection:self->_validationReflection parent:self descriptor:v15];
    }

    v14 = v17;
  }

  return v14;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4 selector:(SEL)a5
{
  if ([-[MTLDevice baseObject](-[MTLToolsRenderPipelineState device](self "device")])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_11:
    [MTLDebugRenderPipelineState newVisibleFunctionTableWithDescriptor:stage:selector:];
    goto LABEL_5;
  }

  [MTLDebugRenderPipelineState newVisibleFunctionTableWithDescriptor:stage:selector:];
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderPipelineState newVisibleFunctionTableWithDescriptor:stage:selector:];
  }

LABEL_5:
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [MTLDebugVisibleFunctionTable alloc];

    return [(MTLDebugVisibleFunctionTable *)v11 initWithVisibleFunctionTable:v10 parent:self descriptor:a3 pipelineState:self stage:a4];
  }

  return result;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 0x10 && ((1 << a4) & 0x10116) != 0)
  {
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_10:
    [MTLDebugRenderPipelineState newVisibleFunctionTableWithDescriptor:stage:];
    goto LABEL_6;
  }

  MTLReportFailure();
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_4:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderPipelineState newVisibleFunctionTableWithDescriptor:stage:];
  }

LABEL_6:
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result parent:self descriptor:a3 pipelineState:self stage:MTLRenderStagesToDebugStage(a4)];

    return v9;
  }

  return result;
}

- (id)functionHandleToDebugFunctionHandle:(id)a3 parentFunction:(id)a4 stage:(unint64_t)a5
{
  v9 = *([a4 device] + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__MTLDebugRenderPipelineState_functionHandleToDebugFunctionHandle_parentFunction_stage___block_invoke;
  v11[3] = &unk_2787B3E50;
  v11[4] = a3;
  v11[5] = self;
  v11[6] = a4;
  v11[7] = a5;
  return [v9 getCachedObjectForKey:a3 onMiss:v11];
}

uint64_t __88__MTLDebugRenderPipelineState_functionHandleToDebugFunctionHandle_parentFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 function:v5 stage:v6];
}

- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4 selector:(SEL)a5
{
  if (a3)
  {
    if (([a3 conformsToProtocol:&unk_2842379F0] & 1) == 0)
    {
      [MTLDebugRenderPipelineState functionHandleWithFunction:stage:selector:];
    }
  }

  else
  {
    [MTLDebugRenderPipelineState functionHandleWithFunction:stage:selector:];
  }

  v9 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [(MTLDebugRenderPipelineState *)self functionHandleToDebugFunctionHandle:v9 parentFunction:a3 stage:a4];
}

- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 0x10 && ((1 << a4) & 0x10116) != 0)
  {
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_10:
    [MTLDebugRenderPipelineState functionHandleWithFunction:stage:];
    goto LABEL_6;
  }

  MTLReportFailure();
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (([a3 conformsToProtocol:&unk_2842379F0] & 1) == 0)
  {
    [MTLDebugRenderPipelineState functionHandleWithFunction:stage:];
  }

LABEL_6:
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v8 = MTLRenderStagesToDebugStage(a4);

  return [(MTLDebugRenderPipelineState *)self functionHandleToDebugFunctionHandle:v7 parentFunction:a3 stage:v8];
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 withStage:(unint64_t)a4 selector:(SEL)a5
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugRenderPipelineState newIntersectionFunctionTableWithDescriptor:withStage:selector:];
    }
  }

  else
  {
    [MTLDebugRenderPipelineState newIntersectionFunctionTableWithDescriptor:withStage:selector:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [MTLDebugIntersectionFunctionTable alloc];

    return [(MTLDebugIntersectionFunctionTable *)v11 initWithIntersectionFunctionTable:v10 parent:self descriptor:a3 stage:a4];
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 0x10 && ((1 << a4) & 0x10116) != 0)
  {
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_10:
    [MTLDebugRenderPipelineState newIntersectionFunctionTableWithDescriptor:stage:];
    goto LABEL_6;
  }

  MTLReportFailure();
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_4:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderPipelineState newIntersectionFunctionTableWithDescriptor:stage:];
  }

LABEL_6:
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result parent:self descriptor:a3 stage:MTLRenderStagesToDebugStage(a4)];

    return v9;
  }

  return result;
}

- (MTLDebugRenderPipelineState)initWithPipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 meshDescriptor:(id)a6
{
  v12.receiver = self;
  v12.super_class = MTLDebugRenderPipelineState;
  v8 = [(MTLToolsRenderPipelineState *)&v12 initWithBaseObject:a3 parent:a5];
  if (v8)
  {
    v9 = [a6 copy];
    v8->_meshDescriptor = v9;
    [(MTLMeshRenderPipelineDescriptor *)v9 setBinaryArchives:0];
    v10 = MEMORY[0x277CBEBF8];
    [(MTLMeshRenderPipelineDescriptor *)v8->_meshDescriptor setObjectPreloadedLibraries:MEMORY[0x277CBEBF8]];
    [(MTLMeshRenderPipelineDescriptor *)v8->_meshDescriptor setMeshPreloadedLibraries:v10];
    [(MTLMeshRenderPipelineDescriptor *)v8->_meshDescriptor setFragmentPreloadedLibraries:v10];
    v8->_validationReflection = a4;
    [(MTLDebugRenderPipelineState *)v8 _updateCachedMeshPipelineState];
  }

  return v8;
}

- (void)_updateCachedMeshPipelineState
{
  v3 = [(MTLMeshRenderPipelineDescriptor *)self->_meshDescriptor _descriptorPrivate];
  v4 = 0;
  v5 = 0;
  self->_rasterSampleCount = *(v3 + 32);
  v6 = -8;
  v7 = self;
  do
  {
    v8 = [objc_msgSend(*v3 _descriptorAtIndex:{v6 + 8), "_descriptorPrivate"}];
    if (v8)
    {
      v9 = *v8 >> 42;
      v7->_colorPixelFormat[0] = v9;
      if (v9)
      {
        v5 = ((*(v8 + 4) & 0xF) << v4) | v5 & ~(15 << v4);
      }
    }

    else
    {
      v7->_colorPixelFormat[0] = 0;
    }

    v4 += 4;
    v7 = (v7 + 8);
    ++v6;
  }

  while (v4 != 32);
  v10 = *(v3 + 8);
  self->_depthPixelFormat = v10;
  v11 = v5 | 0x100000000;
  v12 = v10 == 0;
  v13 = *(v3 + 16);
  self->_stencilPixelFormat = v13;
  if (v12)
  {
    v11 = v5;
  }

  if (v13)
  {
    v14 = v11 | 0x600000000;
  }

  else
  {
    v14 = v11;
  }

  self->_attachmentWriteMask = v14;
  self->_vertexDescriptorLayoutCount = 0;
  self->_maxInstanceCount = 0;
  self->_maxPatchCount = 0;
  self->_maxVertexCount = 0;
}

- (void)_updateCachedMTL4MeshPipelineState
{
  v3 = 0;
  v4 = 0;
  self->_rasterSampleCount = [(MTL4MeshRenderPipelineDescriptor *)self->_mtl4MeshDescriptor rasterSampleCount];
  v5 = -8;
  v6 = self;
  do
  {
    v7 = [-[MTL4RenderPipelineDescriptor colorAttachments](self->_mtl4Descriptor "colorAttachments")];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 pixelFormat];
      v6->_colorPixelFormat[0] = v9;
      if (v9)
      {
        v4 = (([v8 writeMask] & 0xF) << v3) | v4 & ~(15 << v3);
      }
    }

    else
    {
      v6->_colorPixelFormat[0] = 0;
    }

    v3 += 4;
    v6 = (v6 + 8);
    ++v5;
  }

  while (v3 != 32);
  self->_depthPixelFormat = 0;
  self->_stencilPixelFormat = 0;
  self->_attachmentWriteMask = v4;
  self->_vertexDescriptorLayoutCount = 0;
  self->_maxInstanceCount = 0;
  self->_maxPatchCount = 0;
  self->_maxVertexCount = 0;
}

- (void)_validateThreadgroupSize:(id *)a3 stage:(unint64_t)a4 context:(_MTLMessageContext *)a5
{
  meshDescriptor = self->_meshDescriptor;
  if (!meshDescriptor)
  {
    meshDescriptor = self->_descriptor;
  }

  if (a4 == 16)
  {
    if (![meshDescriptor meshFunction])
    {
      return;
    }

    v8 = [(MTLToolsObject *)self->super.super._baseObject maxTotalThreadsPerMeshThreadgroup];
    v9 = [meshDescriptor meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    v10 = [(MTLToolsObject *)self->super.super._baseObject meshThreadExecutionWidth];
  }

  else
  {
    if (a4 != 8 || ![meshDescriptor objectFunction])
    {
      return;
    }

    v8 = [(MTLToolsObject *)self->super.super._baseObject maxTotalThreadsPerObjectThreadgroup];
    v9 = [meshDescriptor objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    v10 = [(MTLToolsObject *)self->super.super._baseObject objectThreadExecutionWidth];
  }

  var1 = a3->var1;
  var2 = a3->var2;
  v13 = var1 * a3->var0 * var2;
  if (v13 > v8)
  {
    v17 = a3->var2;
    v19 = var1 * a3->var0 * var2;
    v16 = a3->var1;
    _MTLMessageContextPush_();
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    if (v13 % v10)
    {
      v18 = a3->var2;
      v15 = *&a3->var0;
      _MTLMessageContextPush_();
    }
  }
}

- (int64_t)shaderValidation
{
  v2 = [(MTLToolsObject *)self baseObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 2;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v2 = [v2 baseObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 2;
    }
  }

  return [v2 shaderValidation];
}

- (int64_t)shaderValidationState
{
  v2 = [(MTLToolsObject *)self baseObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 2;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v2 = [v2 baseObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 2;
    }
  }

  return [v2 shaderValidationState];
}

- (id)newRenderPipelineDescriptorForSpecialization
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  v4 = [-[MTLToolsObject baseObject](self baseObject];
  if (!v4)
  {
    _MTLMessageContextPush_();
  }

  if (hasUnspecializedProperties(v4))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _MTLMessageContextPush_();
    }

    validateUnspecializedProperties(self->super.super._device, v4);
  }

  else
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:v4];
}

- (id)functionHandleToDebugFunctionHandle:(id)a3 stage:(unint64_t)a4
{
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__MTLDebugRenderPipelineState_functionHandleToDebugFunctionHandle_stage___block_invoke;
  v6[3] = &unk_2787B3E28;
  v6[4] = a3;
  v6[5] = self;
  v6[6] = a4;
  return [(MTLToolsObjectCache *)functionHandleObjectCache getCachedObjectForKey:a3 onMiss:v6];
}

uint64_t __73__MTLDebugRenderPipelineState_functionHandleToDebugFunctionHandle_stage___block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 stage:v5];
}

- (id)functionHandleToDebugFunctionHandle:(id)a3 binaryFunction:(id)a4 stage:(unint64_t)a5
{
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__MTLDebugRenderPipelineState_functionHandleToDebugFunctionHandle_binaryFunction_stage___block_invoke;
  v7[3] = &unk_2787B3E50;
  v7[4] = a3;
  v7[5] = self;
  v7[6] = a4;
  v7[7] = a5;
  return [(MTLToolsObjectCache *)functionHandleObjectCache getCachedObjectForKey:a3 onMiss:v7];
}

uint64_t __88__MTLDebugRenderPipelineState_functionHandleToDebugFunctionHandle_binaryFunction_stage___block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 binaryFunction:v5 stage:v6];
}

- (id)functionHandleWithBinaryFunction:(id)a3 stage:(unint64_t)a4
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  if (a4 > 0x10 || ((1 << a4) & 0x10116) == 0)
  {
    MTLReportFailure();
  }

  _MTLMessageContextEnd();
  v8 = objc_autoreleasePoolPush();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [(MTLDebugRenderPipelineState *)self functionHandleToDebugFunctionHandle:v9 binaryFunction:a3 stage:MTLRenderStagesToDebugStage(a4)];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}

- (id)functionHandleWithName:(id)a3 stage:(unint64_t)a4
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (a4 > 0x10 || ((1 << a4) & 0x10116) == 0)
  {
    MTLReportFailure();
  }

  _MTLMessageContextEnd();
  v8 = objc_autoreleasePoolPush();
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = [(MTLDebugRenderPipelineState *)self functionHandleToDebugFunctionHandle:v9 stage:MTLRenderStagesToDebugStage(a4)];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}

- (id)newRenderPipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(a3 "vertexAdditionalBinaryFunctions")])
  {
    v8 = 0;
    do
    {
      [objc_msgSend(a3 "vertexAdditionalBinaryFunctions")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v8;
        _MTLMessageContextPush_();
      }

      ++v8;
    }

    while (v8 < [objc_msgSend(a3 vertexAdditionalBinaryFunctions]);
  }

  if ([objc_msgSend(a3 "fragmentAdditionalBinaryFunctions")])
  {
    v9 = 0;
    do
    {
      [objc_msgSend(a3 "fragmentAdditionalBinaryFunctions")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v9;
        _MTLMessageContextPush_();
      }

      ++v9;
    }

    while (v9 < [objc_msgSend(a3 fragmentAdditionalBinaryFunctions]);
  }

  if ([objc_msgSend(a3 "tileAdditionalBinaryFunctions")])
  {
    v10 = 0;
    do
    {
      [objc_msgSend(a3 "tileAdditionalBinaryFunctions")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v10;
        _MTLMessageContextPush_();
      }

      ++v10;
    }

    while (v10 < [objc_msgSend(a3 tileAdditionalBinaryFunctions]);
  }

  if ([objc_msgSend(a3 "objectAdditionalBinaryFunctions")])
  {
    v11 = 0;
    do
    {
      [objc_msgSend(a3 "objectAdditionalBinaryFunctions")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v11;
        _MTLMessageContextPush_();
      }

      ++v11;
    }

    while (v11 < [objc_msgSend(a3 objectAdditionalBinaryFunctions]);
  }

  if ([objc_msgSend(a3 "meshAdditionalBinaryFunctions")])
  {
    v12 = 0;
    do
    {
      [objc_msgSend(a3 "meshAdditionalBinaryFunctions")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v12;
        _MTLMessageContextPush_();
      }

      ++v12;
    }

    while (v12 < [objc_msgSend(a3 meshAdditionalBinaryFunctions]);
  }

  _MTLMessageContextEnd();
  v13 = objc_autoreleasePoolPush();
  v14 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4RenderPipelineBinaryFunctionsDescriptor:a3];
  v15 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v15)
  {
    v16 = v15;
    if ([(MTLDebugRenderPipelineState *)self hasMetal4Descriptor])
    {
      mtl4Descriptor = self->_mtl4Descriptor;
      if (!mtl4Descriptor)
      {
        mtl4Descriptor = self->_mtl4MeshDescriptor;
        if (!mtl4Descriptor)
        {
          mtl4Descriptor = self->_mtl4TileDescriptor;
        }
      }

      v18 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v16 reflection:self->_validationReflection parent:self mtl4Descriptor:mtl4Descriptor];
    }

    else if (self->_descriptor)
    {
      v18 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v16 reflection:self->_validationReflection parent:self descriptor:self->_descriptor];
    }

    else if (self->_meshDescriptor)
    {
      v18 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v16 reflection:self->_validationReflection parent:self meshDescriptor:self->_meshDescriptor];
    }

    else
    {
      if (!self->_tileDescriptor)
      {
        v19 = 0;
        goto LABEL_42;
      }

      v18 = [[MTLDebugRenderPipelineState alloc] initWithPipelineState:v16 reflection:self->_validationReflection parent:self tileDescriptor:self->_tileDescriptor];
    }

    v19 = v18;
LABEL_42:

    goto LABEL_43;
  }

  v19 = 0;
LABEL_43:

  objc_autoreleasePoolPop(v13);
  return v19;
}

- (uint64_t)validateBinaryFunctions:(void *)a1 stage:(unint64_t)a2 .cold.2(void *a1, unint64_t a2)
{
  [objc_msgSend(a1 "name")];
  MTLDebugStageToString(a2);
  return MTLReportFailure();
}

@end
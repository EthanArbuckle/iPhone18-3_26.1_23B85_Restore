@interface MTLGPUDebugRenderCommandEncoder
- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6;
- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parallelEncoder:(id)a4 encoderID:(unsigned int)a5;
- (id).cxx_construct;
- (id)_internalBindingTableForStage:(unint64_t)a3;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (void)_setBufferForStage:(id)a3 atIndex:(unint64_t)a4 stage:(unint64_t)a5;
- (void)_setInternalBindingTableForStage:(id)a3 stage:(unint64_t)a4;
- (void)_useResourceCommon:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
- (void)bindInternalBufferForStage:(id)a3 index:(unint64_t)a4 stage:(unint64_t)a5 offset:(unint64_t)a6;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4;
- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)flushBindings;
- (void)resetTileCondition;
- (void)restoreInternalState:(id)a3;
- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 textureTypeTable:(id)a5 forStage:(unint64_t)a6;
- (void)setDepthStencilState:(id)a3;
- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setInternalBytesForStage:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5 stage:(unint64_t)a6;
- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setRenderPipelineStateBuffers:(id)a3;
- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)useHeap:(id)a3;
- (void)useHeap:(id)a3 stages:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResourceInternal:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
@end

@implementation MTLGPUDebugRenderCommandEncoder

- (id)_internalBindingTableForStage:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      internalBindingTables = self->_internalBindingTables;
      return *internalBindingTables;
    }

    if (a3 == 2)
    {
      internalBindingTables = &self->_internalBindingTables[1];
      return *internalBindingTables;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        internalBindingTables = &self->_internalBindingTables[4];
        return *internalBindingTables;
      case 8uLL:
        internalBindingTables = &self->_internalBindingTables[2];
        return *internalBindingTables;
      case 0x10uLL:
        internalBindingTables = &self->_internalBindingTables[3];
        return *internalBindingTables;
    }
  }

  return v3;
}

- (void)_setInternalBindingTableForStage:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      internalBindingTables = self->_internalBindingTables;
    }

    else
    {
      if (a4 != 2)
      {
        return;
      }

      internalBindingTables = &self->_internalBindingTables[1];
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        internalBindingTables = &self->_internalBindingTables[4];
        break;
      case 8uLL:
        internalBindingTables = &self->_internalBindingTables[2];
        break;
      case 0x10uLL:
        internalBindingTables = &self->_internalBindingTables[3];
        break;
      default:
        return;
    }
  }

  *internalBindingTables = a3;
}

- (void)_setBufferForStage:(id)a3 atIndex:(unint64_t)a4 stage:(unint64_t)a5
{
  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:a3 offset:0 atIndex:a4];
    }

    else if (a5 == 2)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:a3 offset:0 atIndex:a4];
    }
  }

  else
  {
    switch(a5)
    {
      case 4uLL:
        [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:a3 offset:0 atIndex:a4];
        break;
      case 8uLL:
        [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:a3 offset:0 atIndex:a4];
        break;
      case 0x10uLL:
        [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:a3 offset:0 atIndex:a4];
        break;
    }
  }
}

- (void)bindInternalBufferForStage:(id)a3 index:(unint64_t)a4 stage:(unint64_t)a5 offset:(unint64_t)a6
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    baseObject = self->super.super.super._baseObject;
    if (isKindOfClass)
    {
      v13 = [a3 baseObject];
      v14 = baseObject;
    }

    else
    {
      v14 = self->super.super.super._baseObject;
      v13 = a3;
    }

    [(MTLToolsObject *)v14 useResource:v13 usage:3 stages:a5];
    v15 = [a3 gpuAddress] + a6;

    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalValueForStage:v15 index:a4 stage:a5];
  }
}

- (void)setInternalBytesForStage:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5 stage:(unint64_t)a6
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithBytes:a3 length:a4 options:0];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] _addUsedBuffer:v9];
  [v9 contents];
  [v9 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Base: %llX End: %llX", objc_msgSend(v9, "gpuAddress"), objc_msgSend(v9, "bufferEndAddress"))}];

  [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v9 index:a5 stage:a6];
}

- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6
{
  v12.receiver = self;
  v12.super_class = MTLGPUDebugRenderCommandEncoder;
  v8 = [(MTLToolsRenderCommandEncoder *)&v12 initWithRenderCommandEncoder:a3 parent:a4 descriptor:a5];
  v9 = v8;
  if (v8)
  {
    v8->_commandBuffer = a4;
    v8->_encoderType = 0;
    p_deviceWrapper = &v8->super.super.super._device[2]._deviceWrapper;
    v8->_options = p_deviceWrapper;
    v8->_drawID.encoderID = a6;
    v8->_drawID.eventID = 0;
    *(&v8->_enableUseResourceValidation + 4) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear(&v8->_vertexHandles);
    *&v9->_vertexAmpState.count = 1;
  }

  return v9;
}

- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parallelEncoder:(id)a4 encoderID:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugRenderCommandEncoder;
  v7 = [(MTLToolsRenderCommandEncoder *)&v10 initWithRenderCommandEncoder:a3 parent:?];
  if (v7)
  {
    v7->_commandBuffer = [a4 commandBuffer];
    v7->_encoderType = 3;
    p_deviceWrapper = &v7->super.super.super._device[2]._deviceWrapper;
    v7->_options = p_deviceWrapper;
    *(&v7->_enableUseResourceValidation + 4) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    v7->_drawID.encoderID = a5;
    v7->_drawID.eventID = 0;
    MTLGPUDebugStageBufferHandles::clear(&v7->_vertexHandles);
  }

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v5 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:a3 length:a4];
  [(MTLGPUDebugRenderCommandEncoder *)self useResource:v5 usage:3 stages:31];
  return v5;
}

- (id)temporaryBufferWithLength:(unint64_t)a3
{
  v4 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithLength:a3];
  [(MTLGPUDebugRenderCommandEncoder *)self useResource:v4 usage:3 stages:31];
  return v4;
}

- (void)flushBindings
{
  v3 = [(MTLToolsCommandEncoder *)self commandBuffer];
  [(MTLToolsRetainingContainer *)v3 setNumDispatches:[(MTLToolsRetainingContainer *)v3 numDispatches]+ 1];
  v4 = *&self->_options->var0 & 0x7000000;
  if (*(&self->_enableUseResourceValidation + 3))
  {
    v5 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] activeThreadgroupMask];
    v6 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] threadgroupArgumentOffset];
    if (v4)
    {
      if (self->_meshThreadgroup.needsFlush)
      {
        v27 = v5;
        v7 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_meshThreadgroup, &v27, v6);
        if (v7)
        {
          v8 = v7;
          v9 = (*&self->_options->var0 & 0x10000) != 0 ? 4 : 34;
          [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:self->_meshThreadgroup.entries length:256 atIndex:v9 stage:16];
          if (v5)
          {
            [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v8 offset:0 atIndex:__clz(__rbit32(v5))];
          }
        }

        self->_meshThreadgroup.needsFlush = 0;
      }
    }
  }

  if (*(&self->_enableUseResourceValidation + 2))
  {
    v10 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] activeThreadgroupMask];
    v11 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] threadgroupArgumentOffset];
    if (v4)
    {
      if (self->_objectThreadgroup.needsFlush)
      {
        v27 = v10;
        v12 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_objectThreadgroup, &v27, v11);
        if (v12)
        {
          v13 = v12;
          v14 = (*&self->_options->var0 & 0x10000) != 0 ? 4 : 34;
          [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:self->_objectThreadgroup.entries length:256 atIndex:v14 stage:8];
          if (v10)
          {
            [(MTLToolsObject *)self->super.super.super._baseObject setObjectThreadgroupMemoryLength:v13 atIndex:__clz(__rbit32(v10))];
          }
        }

        self->_objectThreadgroup.needsFlush = 0;
      }
    }
  }

  if (self->_tileThreadgroup.needsFlush)
  {
    v15 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] activeThreadgroupMask];
    v16 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] activeThreadgroupMask];
    if (v4)
    {
      v17 = v16 | v15;
      v27 = v16 | v15;
      v18 = MTLGPUDebugTileThreadgroup::setupTableEntries(&self->_tileThreadgroup, &v27);
      if (v18)
      {
        v19 = v18;
        [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_tileThreadgroup length:256 atIndex:4 stage:2];
        [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_tileThreadgroup length:256 atIndex:4 stage:4];
        if (v17)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v19 offset:0 atIndex:__clz(__rbit32(v17))];
        }
      }

      self->_tileThreadgroup.needsFlush = 0;
    }
  }

  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] encodeResourceTableBuffers:self type:0];
  }

  if (*(&self->_enableUseResourceValidation + 1))
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:1];
    self->_drawID.entryPointImageID = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline vertexFunctionData];
    [MTLGPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v27 = 0;
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:[(MTLGPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:&v27 length:4] index:24 stage:1];
    v20 = -[MTLGPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self, "temporaryBufferWithBytes:length:", [-[MTLGPUDebugRenderCommandEncoder _internalBindingTableForStage:](self _internalBindingTableForStage:{1), "contents"}], 320);
    [(MTLGPUDebugRenderCommandEncoder *)self useResource:v20 usage:3 stages:1];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [v20 gpuAddress], 0, 1);
    [(MTLGPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:1];
  }

  if (self->_enableUseResourceValidation)
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:2];
    self->_drawID.entryPointImageID = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline fragmentFunctionData];
    [MTLGPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v27 = 0;
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:[(MTLGPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:&v27 length:4] index:24 stage:2];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      v26 = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline fragmentMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v26 length:4 atIndex:22 stage:2];
    }

    v21 = -[MTLGPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self, "temporaryBufferWithBytes:length:", [-[MTLGPUDebugRenderCommandEncoder _internalBindingTableForStage:](self _internalBindingTableForStage:{2), "contents"}], 320);
    [(MTLGPUDebugRenderCommandEncoder *)self useResource:v21 usage:3 stages:2];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [v21 gpuAddress], 0, 2);
  }

  if (self->_objectStageActive)
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:4];
    self->_drawID.entryPointImageID = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline tileFunctionData];
    self->_options->var0;
    [MTLGPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v27 = 0;
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:[(MTLGPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:&v27 length:4] index:24 stage:4];
    [(MTLGPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:4];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      v26 = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline tileMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v26 length:4 atIndex:22 stage:4];
    }

    v22 = -[MTLGPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self, "temporaryBufferWithBytes:length:", [-[MTLGPUDebugRenderCommandEncoder _internalBindingTableForStage:](self _internalBindingTableForStage:{4), "contents"}], 320);
    [(MTLGPUDebugRenderCommandEncoder *)self useResource:v22 usage:3 stages:4];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [v22 gpuAddress], 0, 4);
  }

  if (*(&self->_enableUseResourceValidation + 2))
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:8];
    self->_drawID.entryPointImageID = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline objectFunctionData];
    [MTLGPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v27 = 0;
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:[(MTLGPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:&v27 length:4] index:24 stage:8];
    [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:[(MTLGPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:8] offset:0 atIndex:31];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      v26 = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline objectMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v26 length:4 atIndex:22 stage:8];
    }

    v23 = -[MTLGPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self, "temporaryBufferWithBytes:length:", [-[MTLGPUDebugRenderCommandEncoder _internalBindingTableForStage:](self _internalBindingTableForStage:{8), "contents"}], 320);
    [(MTLGPUDebugRenderCommandEncoder *)self useResource:v23 usage:3 stages:8];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [v23 gpuAddress], 0, 8);
  }

  if (*(&self->_enableUseResourceValidation + 3))
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:16];
    self->_drawID.entryPointImageID = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline meshFunctionData];
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:[(MTLGPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:16] offset:0 atIndex:31];
    if ((*&self->_options->var0 & 0x10000) != 0)
    {
      v24 = 3;
    }

    else
    {
      v24 = 33;
    }

    [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_drawID length:24 atIndex:v24 stage:16];
    v27 = 0;
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:[(MTLGPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:&v27 length:4] index:24 stage:16];
    [(MTLGPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:16];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      v26 = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline meshMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v26 length:4 atIndex:22 stage:16];
    }

    v25 = -[MTLGPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self, "temporaryBufferWithBytes:length:", [-[MTLGPUDebugRenderCommandEncoder _internalBindingTableForStage:](self _internalBindingTableForStage:{16), "contents"}], 320);
    [(MTLGPUDebugRenderCommandEncoder *)self useResource:v25 usage:3 stages:16];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [v25 gpuAddress], 0, 16);
  }

  ++self->_drawID.eventID;
}

- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 textureTypeTable:(id)a5 forStage:(unint64_t)a6
{
  if (*(&self->_options->var0 + 2))
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:a3 index:5 stage:a6];
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:a4 index:6 stage:a6];
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:a5 index:7 stage:a6];
    if (a6 > 7)
    {
      if (a6 == 8)
      {
        v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__objectTextureTypeTable;
        v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__objectTextureUsageTable;
        v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__objectBufferUsageTable;
      }

      else
      {
        if (a6 != 16)
        {
          return;
        }

        v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__meshTextureTypeTable;
        v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__meshTextureUsageTable;
        v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__meshBufferUsageTable;
      }
    }

    else if (a6 == 1)
    {
      v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__vertexTextureTypeTable;
      v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__vertexTextureUsageTable;
      v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__vertexBufferUsageTable;
    }

    else
    {
      if (a6 != 2)
      {
        return;
      }

      v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__fragmentTextureTypeTable;
      v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__fragmentTextureUsageTable;
      v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__fragmentBufferUsageTable;
    }

    *(&self->super.super.super.super.isa + *v13) = a3;
    *(&self->super.super.super.super.isa + *v12) = a4;
    *(&self->super.super.super.super.isa + *v11) = a5;
  }
}

- (void)setRenderPipelineStateBuffers:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(&self->_enableUseResourceValidation + 1))
  {
    v5 = [a3 vertexConstantsBuffer];
  }

  else
  {
    v5 = 0;
  }

  if (self->_enableUseResourceValidation)
  {
    v6 = [a3 fragmentConstantsBuffer];
  }

  else
  {
    v6 = 0;
  }

  if (self->_objectStageActive)
  {
    v7 = [a3 tileConstantsBuffer];
  }

  else
  {
    v7 = 0;
  }

  if (*(&self->_enableUseResourceValidation + 3))
  {
    v8 = [a3 meshConstantsBuffer];
  }

  else
  {
    v8 = 0;
  }

  if (*(&self->_enableUseResourceValidation + 2))
  {
    v9 = [a3 objectConstantsBuffer];
  }

  else
  {
    v9 = 0;
  }

  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [a3 binaryFunctionData];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if (*(v17 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLGPUDebugRenderCommandEncoder *)self useResource:*(v17 + 8) usage:1 stages:31];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    if (v5)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v5];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v5 usage:1 stages:1];
    }

    if (v6)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v6];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v6 usage:1 stages:2];
    }

    if (*(&self->_enableUseResourceValidation + 1))
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v5 index:12 stage:1];
    }

    if (self->_enableUseResourceValidation)
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v6 index:12 stage:2];
    }

    if (self->_objectStageActive)
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v19 index:12 stage:4];
    }

    if (*(&self->_enableUseResourceValidation + 3))
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v20 index:12 stage:16];
    }

    if (*(&self->_enableUseResourceValidation + 2))
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v21 index:12 stage:8];
    }

    if (v19)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v19];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v19 usage:1 stages:4];
    }

    if (*(&self->_enableUseResourceValidation + 3) && v20)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v20];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v20 usage:1 stages:16];
    }

    if (*(&self->_enableUseResourceValidation + 2) && v21)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v21];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v21 usage:1 stages:8];
    }

    goto LABEL_60;
  }

  if (v5)
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v5 index:12 stage:1];
  }

  if (v6)
  {
    -[MTLGPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v6 gpuAddress], 12, 2);
  }

  if (v7)
  {
    -[MTLGPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v7 gpuAddress], 12, 4);
  }

  if (v8)
  {
    -[MTLGPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v8 gpuAddress], 12, 16);
  }

  if (!v9)
  {
LABEL_60:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = [v9 gpuAddress];
  v11 = *MEMORY[0x277D85DE8];

  [(MTLGPUDebugRenderCommandEncoder *)self bindInternalValueForStage:v10 index:12 stage:8];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v11 = &self->_vertexEncoderBoundBuffers[a6];
  v11->stride = a5;
  v11->resource = [a3 baseObject];
  v11->offset = a4;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:1];
  }

  -[MTLToolsObject setVertexBuffer:offset:attributeStride:atIndex:](self->super.super.super._baseObject, "setVertexBuffer:offset:attributeStride:atIndex:", [a3 baseObject], a4, a5, a6);

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  std::vector<unsigned long>::vector[abi:ne200100](__p, a5.length);
  v10 = __p[0];
  if (length)
  {
    v11 = 1;
    v12 = __p[0];
    do
    {
      *v12++ = -1;
    }

    while (length > v11++);
  }

  [(MTLGPUDebugRenderCommandEncoder *)self setVertexBuffers:a3 offsets:a4 attributeStrides:v10 withRange:location, length];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    length = a6.length;
    location = a6.location;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v15 = *a4++;
      v14 = v15;
      v16 = *a5++;
      [(MTLGPUDebugRenderCommandEncoder *)self setVertexBuffer:v12 offset:v14 attributeStride:v16 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v11 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:a4 options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v11];
  memcpy([v11 contents], a3, a4);
  v12 = [v11 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setVertexBuffer:v11 offset:v12 attributeStride:a5 atIndex:a6];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [a3 baseObject];
  v10 = &self->_fragmentEncoderBoundBuffers[a5];
  v10->resource = v9;
  v10->offset = a4;
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_fragmentHandles, a3, a4, a5);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:2];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  baseObject = self->super.super.super._baseObject;
  v12 = [a3 baseObject];

  [(MTLToolsObject *)baseObject setFragmentBuffer:v12 offset:a4 atIndex:a5];
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      [(MTLGPUDebugRenderCommandEncoder *)self setFragmentBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:1];
  }

  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 setTessellationFactorBuffer:a3 offset:a4 instanceStride:a5];
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:a4 options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], a3, a4);
  v10 = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setFragmentBuffer:v9 offset:v10 atIndex:a5];
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:4];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];

  [(MTLToolsObject *)baseObject setTileBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      [(MTLGPUDebugRenderCommandEncoder *)self setTileBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:a4 options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], a3, a4);
  v10 = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setTileBuffer:v9 offset:v10 atIndex:a5];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ((*(&self->_options->var0 + 3) & 7) != 0)
  {
    p_objectThreadgroup = &self->_objectThreadgroup;

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(p_objectThreadgroup, a3, a4);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = MTLGPUDebugRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v7 setObjectThreadgroupMemoryLength:a3 atIndex:a4];
  }
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v6 = a3;
  if ((*(&self->_options->var0 + 3) & 7) != 0)
  {
    MTLGPUDebugTileThreadgroup::setThreadgroupMemoryLength(&self->_tileThreadgroup, a3, a4, a5);

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(&self->_meshThreadgroup, v6, a5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MTLGPUDebugRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v8 setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5];
  }
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [a3 baseObject];
  v10 = &self->_objectEncoderBoundBuffers[a5];
  v10->resource = v9;
  v10->offset = a4;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:8];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  baseObject = self->super.super.super._baseObject;
  v12 = [a3 baseObject];

  [(MTLToolsObject *)baseObject setObjectBuffer:v12 offset:a4 atIndex:a5];
}

- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      [(MTLGPUDebugRenderCommandEncoder *)self setObjectBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:a4 options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], a3, a4);
  v10 = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setObjectBuffer:v9 offset:v10 atIndex:a5];
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [a3 baseObject];
  v10 = &self->_meshEncoderBoundBuffers[a5];
  v10->resource = v9;
  v10->offset = a4;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:16];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  baseObject = self->super.super.super._baseObject;
  v12 = [a3 baseObject];

  [(MTLToolsObject *)baseObject setMeshBuffer:v12 offset:a4 atIndex:a5];
}

- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      [(MTLGPUDebugRenderCommandEncoder *)self setMeshBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:a4 options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], a3, a4);
  v10 = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setMeshBuffer:v9 offset:v10 atIndex:a5];
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a3)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [a3 gpuIdentifier], 3, 1);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setVertexTexture:v7 atIndex:a4];
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      v9 = [*a3 baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 1);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setVertexTexture:v9 atIndex:location++];
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a3)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [a3 gpuIdentifier], 3, 2);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setFragmentTexture:v7 atIndex:a4];
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      v9 = [*a3 baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 2);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setFragmentTexture:v9 atIndex:location++];
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a3)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [a3 gpuIdentifier], 3, 4);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setTileTexture:v7 atIndex:a4];
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      v9 = [*a3 baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 4);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setTileTexture:v9 atIndex:location++];
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a3)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [a3 gpuIdentifier], 3, 16);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setMeshTexture:v7 atIndex:a4];
}

- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      v9 = [*a3 baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 16);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setMeshTexture:v9 atIndex:location++];
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a3)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [a3 gpuIdentifier], 3, 8);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setObjectTexture:v7 atIndex:a4];
}

- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3;
      v9 = [*a3 baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 8);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setObjectTexture:v9 atIndex:location++];
      ++a3;
      --length;
    }

    while (length);
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v11.receiver = self;
  v11.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6 indirectBuffer:a7 indirectBufferOffset:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v17.receiver = self;
  v17.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:a8 baseVertex:a9 baseInstance:a10];
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a6 usage:3 stages:1, a6, a7];
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a4 usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v12.receiver = self;
  v12.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 drawPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 indirectBuffer:a6 indirectBufferOffset:a5];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a6 usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v16.receiver = self;
  v16.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:a6 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:a9];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a6 usage:3 stages:1];
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a4 usage:3 stages:1];
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a8 usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v16.receiver = self;
  v16.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 drawIndexedPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 controlPointIndexBuffer:a6 controlPointIndexBufferOffset:a7 indirectBuffer:a8 indirectBufferOffset:a9];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  v12 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a8 usage:3 stages:1];
    v12 = a7;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a6 usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v22.receiver = self;
  v22.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v22 drawIndexedPatches:v16 patchStart:v15 patchCount:v14 patchIndexBuffer:a6 patchIndexBufferOffset:v12 controlPointIndexBuffer:a8 controlPointIndexBufferOffset:a9 instanceCount:a10 baseInstance:a11];
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v6 = *a3;
  v5.receiver = self;
  v5.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v7 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0.var2;
  v10[0] = *&a4->var0.var0;
  v10[1] = v8;
  v10[2] = *&a4->var1.var1;
  v11 = v7;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 dispatchThreadsPerTile:&v11 inRegion:v10];
}

- (void)resetTileCondition
{
  v2.receiver = self;
  v2.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v2 resetTileCondition];
}

- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v8 = *a3;
  v7.receiver = self;
  v7.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 dispatchThreadsPerTile:&v8 withCondition:a4];
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v13 = *a5;
  v12 = *a6;
  v11.receiver = self;
  v11.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawMeshThreadgroupsWithIndirectBuffer:a3 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)restoreInternalState:(id)a3
{
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 inheritsBuffers];
  v7 = [a3 inheritsPipelineState];
  if (!v6 || (v7 & 1) == 0)
  {
    count = self->_vertexAmpState.count;
    if (self->_vertexAmpState.mappingsValid)
    {
      mappings = self->_vertexAmpState.mappings;
    }

    else
    {
      mappings = 0;
    }

    [v5 setVertexAmplificationCount:count viewMappings:mappings];
  }
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = LODWORD(a4.location) | (LODWORD(a4.length) << 32);
  v10 = 1;
  [(MTLGPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:a3 variant:&v9];
  v8.receiver = self;
  v8.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v8 executeCommandsInBuffer:a3 withRange:location, length];
  [(MTLGPUDebugRenderCommandEncoder *)self restoreInternalState:a3];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v10[0] = a4;
  v10[1] = a5;
  v11 = 0;
  [(MTLGPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:a3 variant:v10];
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
  [(MTLGPUDebugRenderCommandEncoder *)self restoreInternalState:a3];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  self->_vertexAmpState.count = a3;
  self->_vertexAmpState.mappingsValid = a4 != 0;
  if (a3 && a4)
  {
    memmove(self->_vertexAmpState.mappings, a4, 8 * a3);
  }

  v7.receiver = self;
  v7.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)useResourceInternal:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  if (!a5.var1)
  {
    a5.var0.var1 = 31;
  }

  [(MTLToolsObject *)self->super.super.super._baseObject useResource:a3 usage:a4 stages:a5.var0.var1];
}

- (void)_useResourceCommon:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  v5 = *&a5.var1;
  var1 = a5.var0.var1;
  -[MTLGPUDebugRenderCommandEncoder useResourceInternal:usage:stages:](self, "useResourceInternal:usage:stages:", [a3 baseObject], a4, a5.var0.var1, *&a5.var1);
  if (v5)
  {
    v10 = var1;
  }

  else
  {
    v10 = 27;
  }

  if (*(&self->_enableUseResourceValidation + 4))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:a4 stages:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [a3 gpuIdentifier], a4, v10);
      }
    }

    if ([a3 conformsToProtocol:&unk_284228AC0])
    {
      if (a3)
      {
        [a3 getActiveViews];
        for (i = v13; i; i = *i)
        {
          [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markTexture:i[2] usage:a4 stages:v10];
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v12);
    }
  }

  [a3 useWithRenderEncoder:self usage:a4 stages:{var1, v5, v12, v13, v14}];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v9 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v9 usage:a5];
      --v6;
    }

    while (v6);
  }
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  if (a4)
  {
    v8 = a4;
    do
    {
      v11 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v11 usage:a5 stages:a6];
      --v8;
    }

    while (v8);
  }
}

- (void)useHeap:(id)a3
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markHeap:a3 stages:31];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  baseObject = self->super.super.super._baseObject;
  v6 = [a3 baseObject];

  [(MTLToolsObject *)baseObject useHeap:v6];
}

- (void)useHeap:(id)a3 stages:(unint64_t)a4
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markHeap:a3 stages:a4];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  baseObject = self->super.super.super._baseObject;
  v8 = [a3 baseObject];

  [(MTLToolsObject *)baseObject useHeap:v8 stages:a4];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v7 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self useHeap:v7];
      --v4;
    }

    while (v4);
  }
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v9 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self useHeap:v9 stages:a5];
      --v6;
    }

    while (v6);
  }
}

- (void)useResidencySet:(id)a3
{
  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:a3 fromEncoder:self];
  }

  v5.receiver = self;
  v5.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 useResidencySet:a3];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if ((*&self->_options->var0 & 0x200000001) != 0 && a4 != 0)
  {
    v8 = a3;
    v9 = a4;
    do
    {
      v10 = *v8++;
      [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:v10 fromEncoder:self];
      --v9;
    }

    while (v9);
  }

  v11.receiver = self;
  v11.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 useResidencySets:a3 count:a4];
}

- (void)setDepthStencilState:(id)a3
{
  self->_currentDepthStencil = a3;
  v3.receiver = self;
  v3.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v3 setDepthStencilState:?];
}

- (void)setRenderPipelineState:(id)a3
{
  self->_drawID.pipelineStateID = a3;
  *(&self->_enableUseResourceValidation + 1) = [a3 vertexFunctionData] != 0;
  self->_enableUseResourceValidation = [a3 fragmentFunctionData] != 0;
  v5 = [a3 tileFunctionData] != 0;
  self->_objectStageActive = v5;
  self->_meshStageActive |= v5;
  v6 = !*(&self->_enableUseResourceValidation + 1) && [a3 objectFunctionData] != 0;
  *(&self->_enableUseResourceValidation + 2) = v6;
  if (*(&self->_enableUseResourceValidation + 1))
  {
    *(&self->_enableUseResourceValidation + 3) = 0;
  }

  else
  {
    v7 = [a3 meshFunctionData];
    *(&self->_enableUseResourceValidation + 3) = v7 != 0;
    if (v7)
    {
      if (self->_currentPipeline != a3)
      {
        v8 = [a3 meshDebugInstrumentationData];
        if ([v8 activeThreadgroupMask] || objc_msgSend(v8, "threadgroupArgumentOffset"))
        {
          self->_meshThreadgroup.needsFlush = 1;
        }
      }
    }
  }

  if (*(&self->_enableUseResourceValidation + 2) && self->_currentPipeline != a3)
  {
    v9 = [a3 objectDebugInstrumentationData];
    if ([v9 activeThreadgroupMask] || objc_msgSend(v9, "threadgroupArgumentOffset"))
    {
      self->_objectThreadgroup.needsFlush = 1;
    }
  }

  if (self->_meshStageActive && self->_currentPipeline != a3)
  {
    v10 = [a3 tileDebugInstrumentationData];
    v11 = [a3 fragmentDebugInstrumentationData];
    if ([v10 activeThreadgroupMask] || objc_msgSend(v11, "activeThreadgroupMask"))
    {
      self->_tileThreadgroup.needsFlush = 1;
    }
  }

  if (self->_currentPipeline != a3)
  {
    if ((*(&self->_options->var0 + 2) & 0x40) != 0)
    {
      [(MTLGPUDebugRenderCommandEncoder *)self setRenderPipelineStateBuffers:a3];
    }

    self->_vertexHandles.needsFlush |= *(&self->_enableUseResourceValidation + 1);
    self->_fragmentHandles.needsFlush |= self->_enableUseResourceValidation;
    self->_tileHandles.needsFlush |= self->_objectStageActive;
  }

  self->_currentPipeline = a3;
  v12.receiver = self;
  v12.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 setRenderPipelineState:a3];
}

- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v6 = &self->_vertexEncoderBoundBuffers[a4];
    v6->resource = *(a3 + 2);
    v6->offset = 0;
    v6->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject setVertexVisibleFunctionTable:*(a3 + 2) atBufferIndex:?];
    baseObject = self->super.super.super._baseObject;
    v8 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v8 usage:1 stages:1];
  }
}

- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setVertexVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = &self->_fragmentEncoderBoundBuffers[a4];
    v7->resource = *(a3 + 2);
    v7->offset = 0;
    v7->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:*(a3 + 2) usage:1 stages:2];
    baseObject = self->super.super.super._baseObject;
    v9 = *(a3 + 2);

    [(MTLToolsObject *)baseObject setFragmentVisibleFunctionTable:v9 atBufferIndex:a4];
  }
}

- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setFragmentVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setTileVisibleFunctionTable:*(a3 + 2) atBufferIndex:a4];
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:4];
  }
}

- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setTileVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_objectEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject setObjectVisibleFunctionTable:*(a3 + 2) atBufferIndex:a4];
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:8];
  }
}

- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setObjectVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_meshEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshVisibleFunctionTable:*(a3 + 2) atBufferIndex:a4];
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:16];
  }
}

- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setMeshVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_vertexHandles, a3, a4);
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_vertexEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 116;
    -[MTLToolsObject setVertexIntersectionFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setVertexIntersectionFunctionTable:atBufferIndex:", [a3 baseObject], a4);
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:1];
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setVertexIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_fragmentEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 116;
    -[MTLToolsObject setFragmentIntersectionFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setFragmentIntersectionFunctionTable:atBufferIndex:", [a3 baseObject], a4);
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:2];
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setFragmentIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_tileHandles, a3, a4);
  if (a3)
  {
    -[MTLToolsObject setTileIntersectionFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setTileIntersectionFunctionTable:atBufferIndex:", [a3 baseObject], a4);
    baseObject = self->super.super.super._baseObject;
    v8 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v8 usage:1 stages:4];
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setTileIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [a3 debugBuf];
  v8 = &self->_vertexEncoderBoundBuffers[a4];
  v8->resource = v7;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setVertexBuffer:v10 offset:0 atIndex:a4];
}

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [a3 debugBuf];
  v8 = &self->_fragmentEncoderBoundBuffers[a4];
  v8->resource = v7;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setFragmentBuffer:v10 offset:0 atIndex:a4];
}

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  baseObject = self->super.super.super._baseObject;
  v6 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setTileBuffer:v6 offset:0 atIndex:a4];
}

- (void)setObjectIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_objectEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 116;
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject setObjectIntersectionFunctionTable:v10 atBufferIndex:a4];
  }
}

- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setObjectIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_meshHandles, a3, a4);
  if (a3)
  {
    v7 = [a3 baseObject];
    v8 = &self->_meshEncoderBoundBuffers[a4];
    v8->resource = v7;
    v8->offset = 0;
    v8->type = 116;
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshIntersectionFunctionTable:*(a3 + 2) atBufferIndex:a4];
    baseObject = self->super.super.super._baseObject;
    v10 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:16];
  }
}

- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugRenderCommandEncoder *)self setMeshIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [a3 debugBuf];
  v8 = &self->_objectEncoderBoundBuffers[a4];
  v8->resource = v7;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setObjectBuffer:v10 offset:0 atIndex:a4];
}

- (void)setMeshAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v7 = [a3 debugBuf];
  v8 = &self->_meshEncoderBoundBuffers[a4];
  v8->resource = v7;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setMeshBuffer:v10 offset:0 atIndex:a4];
}

- (void)endEncoding
{
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:self->_encoderType];
  MTLGPUDebugStageBufferHandles::clear(&self->_vertexHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_fragmentHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_tileHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_objectHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_meshHandles);
  v3.receiver = self;
  v3.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsCommandEncoder *)&v3 endEncoding];
}

- (id).cxx_construct
{
  *(self + 1688) = 0;
  *(self + 3312) = 0;
  *(self + 4936) = 0;
  *(self + 5200) = 0;
  *(self + 6824) = 0;
  *(self + 8448) = 0;
  *(self + 8836) = 0;
  *(self + 9220) = 0;
  return self;
}

@end
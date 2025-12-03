@interface MTLGPUDebugRenderCommandEncoder
- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d;
- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parallelEncoder:(id)parallelEncoder encoderID:(unsigned int)d;
- (id).cxx_construct;
- (id)_internalBindingTableForStage:(unint64_t)stage;
- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)temporaryBufferWithLength:(unint64_t)length;
- (void)_setBufferForStage:(id)stage atIndex:(unint64_t)index stage:(unint64_t)a5;
- (void)_setInternalBindingTableForStage:(id)stage stage:(unint64_t)a4;
- (void)_useResourceCommon:(id)common usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
- (void)bindInternalBufferForStage:(id)stage index:(unint64_t)index stage:(unint64_t)a5 offset:(unint64_t)offset;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)dispatchThreadsPerTile:(id *)tile withCondition:(int64_t)condition;
- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)flushBindings;
- (void)resetTileCondition;
- (void)restoreInternalState:(id)state;
- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable textureTypeTable:(id)typeTable forStage:(unint64_t)stage;
- (void)setDepthStencilState:(id)state;
- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setInternalBytesForStage:(const void *)stage length:(unint64_t)length atIndex:(unint64_t)index stage:(unint64_t)a6;
- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index;
- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index;
- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state;
- (void)setRenderPipelineStateBuffers:(id)buffers;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResourceInternal:(id)internal usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
@end

@implementation MTLGPUDebugRenderCommandEncoder

- (id)_internalBindingTableForStage:(unint64_t)stage
{
  v3 = 0;
  if (stage <= 3)
  {
    if (stage == 1)
    {
      internalBindingTables = self->_internalBindingTables;
      return *internalBindingTables;
    }

    if (stage == 2)
    {
      internalBindingTables = &self->_internalBindingTables[1];
      return *internalBindingTables;
    }
  }

  else
  {
    switch(stage)
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

- (void)_setInternalBindingTableForStage:(id)stage stage:(unint64_t)a4
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

  *internalBindingTables = stage;
}

- (void)_setBufferForStage:(id)stage atIndex:(unint64_t)index stage:(unint64_t)a5
{
  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:stage offset:0 atIndex:index];
    }

    else if (a5 == 2)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:stage offset:0 atIndex:index];
    }
  }

  else
  {
    switch(a5)
    {
      case 4uLL:
        [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:stage offset:0 atIndex:index];
        break;
      case 8uLL:
        [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:stage offset:0 atIndex:index];
        break;
      case 0x10uLL:
        [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:stage offset:0 atIndex:index];
        break;
    }
  }
}

- (void)bindInternalBufferForStage:(id)stage index:(unint64_t)index stage:(unint64_t)a5 offset:(unint64_t)offset
{
  if (stage)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    baseObject = self->super.super.super._baseObject;
    if (isKindOfClass)
    {
      stageCopy = [stage baseObject];
      v14 = baseObject;
    }

    else
    {
      v14 = self->super.super.super._baseObject;
      stageCopy = stage;
    }

    [(MTLToolsObject *)v14 useResource:stageCopy usage:3 stages:a5];
    v15 = [stage gpuAddress] + offset;

    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalValueForStage:v15 index:index stage:a5];
  }
}

- (void)setInternalBytesForStage:(const void *)stage length:(unint64_t)length atIndex:(unint64_t)index stage:(unint64_t)a6
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithBytes:stage length:length options:0];
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] _addUsedBuffer:v9];
  [v9 contents];
  [v9 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Base: %llX End: %llX", objc_msgSend(v9, "gpuAddress"), objc_msgSend(v9, "bufferEndAddress"))}];

  [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v9 index:index stage:a6];
}

- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d
{
  v12.receiver = self;
  v12.super_class = MTLGPUDebugRenderCommandEncoder;
  v8 = [(MTLToolsRenderCommandEncoder *)&v12 initWithRenderCommandEncoder:encoder parent:buffer descriptor:descriptor];
  v9 = v8;
  if (v8)
  {
    v8->_commandBuffer = buffer;
    v8->_encoderType = 0;
    p_deviceWrapper = &v8->super.super.super._device[2]._deviceWrapper;
    v8->_options = p_deviceWrapper;
    v8->_drawID.encoderID = d;
    v8->_drawID.eventID = 0;
    *(&v8->_enableUseResourceValidation + 4) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear(&v8->_vertexHandles);
    *&v9->_vertexAmpState.count = 1;
  }

  return v9;
}

- (MTLGPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parallelEncoder:(id)parallelEncoder encoderID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugRenderCommandEncoder;
  v7 = [(MTLToolsRenderCommandEncoder *)&v10 initWithRenderCommandEncoder:encoder parent:?];
  if (v7)
  {
    v7->_commandBuffer = [parallelEncoder commandBuffer];
    v7->_encoderType = 3;
    p_deviceWrapper = &v7->super.super.super._device[2]._deviceWrapper;
    v7->_options = p_deviceWrapper;
    *(&v7->_enableUseResourceValidation + 4) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    v7->_drawID.encoderID = d;
    v7->_drawID.eventID = 0;
    MTLGPUDebugStageBufferHandles::clear(&v7->_vertexHandles);
  }

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length
{
  v5 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:bytes length:length];
  [(MTLGPUDebugRenderCommandEncoder *)self useResource:v5 usage:3 stages:31];
  return v5;
}

- (id)temporaryBufferWithLength:(unint64_t)length
{
  v4 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithLength:length];
  [(MTLGPUDebugRenderCommandEncoder *)self useResource:v4 usage:3 stages:31];
  return v4;
}

- (void)flushBindings
{
  commandBuffer = [(MTLToolsCommandEncoder *)self commandBuffer];
  [(MTLToolsRetainingContainer *)commandBuffer setNumDispatches:[(MTLToolsRetainingContainer *)commandBuffer numDispatches]+ 1];
  v4 = *&self->_options->var0 & 0x7000000;
  if (*(&self->_enableUseResourceValidation + 3))
  {
    activeThreadgroupMask = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] activeThreadgroupMask];
    threadgroupArgumentOffset = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] threadgroupArgumentOffset];
    if (v4)
    {
      if (self->_meshThreadgroup.needsFlush)
      {
        v27 = activeThreadgroupMask;
        v7 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_meshThreadgroup, &v27, threadgroupArgumentOffset);
        if (v7)
        {
          v8 = v7;
          v9 = (*&self->_options->var0 & 0x10000) != 0 ? 4 : 34;
          [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:self->_meshThreadgroup.entries length:256 atIndex:v9 stage:16];
          if (activeThreadgroupMask)
          {
            [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v8 offset:0 atIndex:__clz(__rbit32(activeThreadgroupMask))];
          }
        }

        self->_meshThreadgroup.needsFlush = 0;
      }
    }
  }

  if (*(&self->_enableUseResourceValidation + 2))
  {
    activeThreadgroupMask2 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] activeThreadgroupMask];
    threadgroupArgumentOffset2 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] threadgroupArgumentOffset];
    if (v4)
    {
      if (self->_objectThreadgroup.needsFlush)
      {
        v27 = activeThreadgroupMask2;
        v12 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_objectThreadgroup, &v27, threadgroupArgumentOffset2);
        if (v12)
        {
          v13 = v12;
          v14 = (*&self->_options->var0 & 0x10000) != 0 ? 4 : 34;
          [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:self->_objectThreadgroup.entries length:256 atIndex:v14 stage:8];
          if (activeThreadgroupMask2)
          {
            [(MTLToolsObject *)self->super.super.super._baseObject setObjectThreadgroupMemoryLength:v13 atIndex:__clz(__rbit32(activeThreadgroupMask2))];
          }
        }

        self->_objectThreadgroup.needsFlush = 0;
      }
    }
  }

  if (self->_tileThreadgroup.needsFlush)
  {
    activeThreadgroupMask3 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] activeThreadgroupMask];
    activeThreadgroupMask4 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] activeThreadgroupMask];
    if (v4)
    {
      v17 = activeThreadgroupMask4 | activeThreadgroupMask3;
      v27 = activeThreadgroupMask4 | activeThreadgroupMask3;
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
      fragmentMaxCallStackDepth = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline fragmentMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:2];
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
      fragmentMaxCallStackDepth = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline tileMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:4];
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
      fragmentMaxCallStackDepth = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline objectMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:8];
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
      fragmentMaxCallStackDepth = [(MTLGPUDebugRenderPipelineState *)self->_currentPipeline meshMaxCallStackDepth];
      [(MTLGPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:16];
    }

    v25 = -[MTLGPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self, "temporaryBufferWithBytes:length:", [-[MTLGPUDebugRenderCommandEncoder _internalBindingTableForStage:](self _internalBindingTableForStage:{16), "contents"}], 320);
    [(MTLGPUDebugRenderCommandEncoder *)self useResource:v25 usage:3 stages:16];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [v25 gpuAddress], 0, 16);
  }

  ++self->_drawID.eventID;
}

- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable textureTypeTable:(id)typeTable forStage:(unint64_t)stage
{
  if (*(&self->_options->var0 + 2))
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:table index:5 stage:stage];
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:usageTable index:6 stage:stage];
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:typeTable index:7 stage:stage];
    if (stage > 7)
    {
      if (stage == 8)
      {
        v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__objectTextureTypeTable;
        v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__objectTextureUsageTable;
        v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__objectBufferUsageTable;
      }

      else
      {
        if (stage != 16)
        {
          return;
        }

        v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__meshTextureTypeTable;
        v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__meshTextureUsageTable;
        v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__meshBufferUsageTable;
      }
    }

    else if (stage == 1)
    {
      v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__vertexTextureTypeTable;
      v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__vertexTextureUsageTable;
      v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__vertexBufferUsageTable;
    }

    else
    {
      if (stage != 2)
      {
        return;
      }

      v11 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__fragmentTextureTypeTable;
      v12 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__fragmentTextureUsageTable;
      v13 = &OBJC_IVAR___MTLGPUDebugRenderCommandEncoder__fragmentBufferUsageTable;
    }

    *(&self->super.super.super.super.isa + *v13) = table;
    *(&self->super.super.super.super.isa + *v12) = usageTable;
    *(&self->super.super.super.super.isa + *v11) = typeTable;
  }
}

- (void)setRenderPipelineStateBuffers:(id)buffers
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(&self->_enableUseResourceValidation + 1))
  {
    vertexConstantsBuffer = [buffers vertexConstantsBuffer];
  }

  else
  {
    vertexConstantsBuffer = 0;
  }

  if (self->_enableUseResourceValidation)
  {
    fragmentConstantsBuffer = [buffers fragmentConstantsBuffer];
  }

  else
  {
    fragmentConstantsBuffer = 0;
  }

  if (self->_objectStageActive)
  {
    tileConstantsBuffer = [buffers tileConstantsBuffer];
  }

  else
  {
    tileConstantsBuffer = 0;
  }

  if (*(&self->_enableUseResourceValidation + 3))
  {
    meshConstantsBuffer = [buffers meshConstantsBuffer];
  }

  else
  {
    meshConstantsBuffer = 0;
  }

  if (*(&self->_enableUseResourceValidation + 2))
  {
    objectConstantsBuffer = [buffers objectConstantsBuffer];
  }

  else
  {
    objectConstantsBuffer = 0;
  }

  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    v19 = tileConstantsBuffer;
    v20 = meshConstantsBuffer;
    v21 = objectConstantsBuffer;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    binaryFunctionData = [buffers binaryFunctionData];
    v13 = [binaryFunctionData countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(binaryFunctionData);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if (*(v17 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLGPUDebugRenderCommandEncoder *)self useResource:*(v17 + 8) usage:1 stages:31];
          }
        }

        v14 = [binaryFunctionData countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    if (vertexConstantsBuffer)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:vertexConstantsBuffer];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:vertexConstantsBuffer usage:1 stages:1];
    }

    if (fragmentConstantsBuffer)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:fragmentConstantsBuffer];
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:fragmentConstantsBuffer usage:1 stages:2];
    }

    if (*(&self->_enableUseResourceValidation + 1))
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:vertexConstantsBuffer index:12 stage:1];
    }

    if (self->_enableUseResourceValidation)
    {
      [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:fragmentConstantsBuffer index:12 stage:2];
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

  if (vertexConstantsBuffer)
  {
    [(MTLGPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:vertexConstantsBuffer index:12 stage:1];
  }

  if (fragmentConstantsBuffer)
  {
    -[MTLGPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [fragmentConstantsBuffer gpuAddress], 12, 2);
  }

  if (tileConstantsBuffer)
  {
    -[MTLGPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [tileConstantsBuffer gpuAddress], 12, 4);
  }

  if (meshConstantsBuffer)
  {
    -[MTLGPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [meshConstantsBuffer gpuAddress], 12, 16);
  }

  if (!objectConstantsBuffer)
  {
LABEL_60:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  gpuAddress = [objectConstantsBuffer gpuAddress];
  v11 = *MEMORY[0x277D85DE8];

  [(MTLGPUDebugRenderCommandEncoder *)self bindInternalValueForStage:gpuAddress index:12 stage:8];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v11 = &self->_vertexEncoderBoundBuffers[index];
  v11->stride = stride;
  v11->resource = [buffer baseObject];
  v11->offset = offset;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
  }

  -[MTLToolsObject setVertexBuffer:offset:attributeStride:atIndex:](self->super.super.super._baseObject, "setVertexBuffer:offset:attributeStride:atIndex:", [buffer baseObject], offset, stride, index);

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<unsigned long>::vector[abi:ne200100](__p, range.length);
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

  [(MTLGPUDebugRenderCommandEncoder *)self setVertexBuffers:buffers offsets:offsets attributeStrides:v10 withRange:location, length];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v13 = *buffers++;
      v12 = v13;
      v15 = *offsets++;
      v14 = v15;
      v16 = *strides++;
      [(MTLGPUDebugRenderCommandEncoder *)self setVertexBuffer:v12 offset:v14 attributeStride:v16 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v11 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:length options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v11];
  memcpy([v11 contents], bytes, length);
  offset = [v11 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setVertexBuffer:v11 offset:offset attributeStride:stride atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [buffer baseObject];
  v10 = &self->_fragmentEncoderBoundBuffers[index];
  v10->resource = baseObject;
  v10->offset = offset;
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_fragmentHandles, buffer, offset, index);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:2];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = self->super.super.super._baseObject;
  baseObject2 = [buffer baseObject];

  [(MTLToolsObject *)baseObject setFragmentBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v11 = *buffers++;
      v10 = v11;
      v12 = *offsets++;
      [(MTLGPUDebugRenderCommandEncoder *)self setFragmentBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
  }

  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 setTessellationFactorBuffer:buffer offset:offset instanceStride:stride];
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:length options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], bytes, length);
  offset = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setFragmentBuffer:v9 offset:offset atIndex:index];
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:4];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject setTileBuffer:baseObject offset:offset atIndex:index];
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v11 = *buffers++;
      v10 = v11;
      v12 = *offsets++;
      [(MTLGPUDebugRenderCommandEncoder *)self setTileBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:length options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], bytes, length);
  offset = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setTileBuffer:v9 offset:offset atIndex:index];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if ((*(&self->_options->var0 + 3) & 7) != 0)
  {
    p_objectThreadgroup = &self->_objectThreadgroup;

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(p_objectThreadgroup, length, index);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = MTLGPUDebugRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v7 setObjectThreadgroupMemoryLength:length atIndex:index];
  }
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  lengthCopy = length;
  if ((*(&self->_options->var0 + 3) & 7) != 0)
  {
    MTLGPUDebugTileThreadgroup::setThreadgroupMemoryLength(&self->_tileThreadgroup, length, offset, index);

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(&self->_meshThreadgroup, lengthCopy, index);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MTLGPUDebugRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v8 setThreadgroupMemoryLength:length offset:offset atIndex:index];
  }
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [buffer baseObject];
  v10 = &self->_objectEncoderBoundBuffers[index];
  v10->resource = baseObject;
  v10->offset = offset;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:8];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = self->super.super.super._baseObject;
  baseObject2 = [buffer baseObject];

  [(MTLToolsObject *)baseObject setObjectBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v11 = *buffers++;
      v10 = v11;
      v12 = *offsets++;
      [(MTLGPUDebugRenderCommandEncoder *)self setObjectBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:length options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], bytes, length);
  offset = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setObjectBuffer:v9 offset:offset atIndex:index];
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [buffer baseObject];
  v10 = &self->_meshEncoderBoundBuffers[index];
  v10->resource = baseObject;
  v10->offset = offset;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:16];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = self->super.super.super._baseObject;
  baseObject2 = [buffer baseObject];

  [(MTLToolsObject *)baseObject setMeshBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v11 = *buffers++;
      v10 = v11;
      v12 = *offsets++;
      [(MTLGPUDebugRenderCommandEncoder *)self setMeshBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v9 = [(MTLToolsDevice *)self->super.super.super._device newBufferWithLength:length options:0];
  [(MTLGPUDebugCommandBuffer *)self->_commandBuffer _addUsedBuffer:v9];
  memcpy([v9 contents], bytes, length);
  offset = [v9 offset];

  [(MTLGPUDebugRenderCommandEncoder *)self setMeshBuffer:v9 offset:offset atIndex:index];
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  if (texture)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [texture gpuIdentifier], 3, 1);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setVertexTexture:baseObject atIndex:index];
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures;
      baseObject = [*textures baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 1);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setVertexTexture:baseObject atIndex:location++];
      ++textures;
      --length;
    }

    while (length);
  }
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  if (texture)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [texture gpuIdentifier], 3, 2);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setFragmentTexture:baseObject atIndex:index];
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures;
      baseObject = [*textures baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 2);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setFragmentTexture:baseObject atIndex:location++];
      ++textures;
      --length;
    }

    while (length);
  }
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  if (texture)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [texture gpuIdentifier], 3, 4);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setTileTexture:baseObject atIndex:index];
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures;
      baseObject = [*textures baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 4);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setTileTexture:baseObject atIndex:location++];
      ++textures;
      --length;
    }

    while (length);
  }
}

- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  if (texture)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [texture gpuIdentifier], 3, 16);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setMeshTexture:baseObject atIndex:index];
}

- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures;
      baseObject = [*textures baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 16);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setMeshTexture:baseObject atIndex:location++];
      ++textures;
      --length;
    }

    while (length);
  }
}

- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  if (texture)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [texture gpuIdentifier], 3, 8);
    }

    [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  }

  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setObjectTexture:baseObject atIndex:index];
}

- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures;
      baseObject = [*textures baseObject];
      if (v8)
      {
        if (*(&self->_enableUseResourceValidation + 4))
        {
          -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [v8 gpuIdentifier], 3, 8);
        }

        [(MTLToolsCommandEncoder *)self addRetainedObject:v8];
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setObjectTexture:baseObject atIndex:location++];
      ++textures;
      --length;
    }

    while (length);
  }
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:primitives indirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v11.receiver = self;
  v11.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:bufferOffset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v17.receiver = self;
  v17.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:instanceCount baseVertex:vertex baseInstance:instance];
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:indirectBuffer usage:3 stages:1, indirectBuffer, bufferOffset];
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v12.receiver = self;
  v12.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 drawPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:offset];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v16.receiver = self;
  v16.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:indexBuffer usage:3 stages:1];
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:indirectBuffer usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v16.receiver = self;
  v16.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 drawIndexedPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset controlPointIndexBuffer:indexBuffer controlPointIndexBufferOffset:bufferOffset indirectBuffer:indirectBuffer indirectBufferOffset:indirectBufferOffset];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  offsetCopy2 = offset;
  countCopy2 = count;
  startCopy2 = start;
  patchesCopy2 = patches;
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:indexBuffer usage:3 stages:1];
    offsetCopy2 = offset;
    countCopy2 = count;
    startCopy2 = start;
    patchesCopy2 = patches;
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
  }

  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v22.receiver = self;
  v22.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v22 drawIndexedPatches:patchesCopy2 patchStart:startCopy2 patchCount:countCopy2 patchIndexBuffer:buffer patchIndexBufferOffset:offsetCopy2 controlPointIndexBuffer:indexBuffer controlPointIndexBufferOffset:bufferOffset instanceCount:instanceCount baseInstance:instance];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v6 = *tile;
  v5.receiver = self;
  v5.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v10[0] = *&region->var0.var0;
  v10[1] = v8;
  v10[2] = *&region->var1.var1;
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

- (void)dispatchThreadsPerTile:(id *)tile withCondition:(int64_t)condition
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v8 = *tile;
  v7.receiver = self;
  v7.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 dispatchThreadsPerTile:&v8 withCondition:condition];
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *threadgroups;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *threads;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLGPUDebugRenderCommandEncoder *)self flushBindings];
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  v11.receiver = self;
  v11.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawMeshThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)restoreInternalState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  inheritsBuffers = [state inheritsBuffers];
  inheritsPipelineState = [state inheritsPipelineState];
  if (!inheritsBuffers || (inheritsPipelineState & 1) == 0)
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

    [baseObject setVertexAmplificationCount:count viewMappings:mappings];
  }
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = LODWORD(range.location) | (LODWORD(range.length) << 32);
  v10 = 1;
  [(MTLGPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:buffer variant:&v9];
  v8.receiver = self;
  v8.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v8 executeCommandsInBuffer:buffer withRange:location, length];
  [(MTLGPUDebugRenderCommandEncoder *)self restoreInternalState:buffer];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  v10[0] = indirectBuffer;
  v10[1] = offset;
  v11 = 0;
  [(MTLGPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:buffer variant:v10];
  v9.receiver = self;
  v9.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
  [(MTLGPUDebugRenderCommandEncoder *)self restoreInternalState:buffer];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  self->_vertexAmpState.count = count;
  self->_vertexAmpState.mappingsValid = mappings != 0;
  if (count && mappings)
  {
    memmove(self->_vertexAmpState.mappings, mappings, 8 * count);
  }

  v7.receiver = self;
  v7.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)useResourceInternal:(id)internal usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  if (!stages.var1)
  {
    stages.var0.var1 = 31;
  }

  [(MTLToolsObject *)self->super.super.super._baseObject useResource:internal usage:usage stages:stages.var0.var1];
}

- (void)_useResourceCommon:(id)common usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  v5 = *&stages.var1;
  var1 = stages.var0.var1;
  -[MTLGPUDebugRenderCommandEncoder useResourceInternal:usage:stages:](self, "useResourceInternal:usage:stages:", [common baseObject], usage, stages.var0.var1, *&stages.var1);
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
      [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markBuffer:common usage:usage stages:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](self->_commandBuffer, "markTexture:usage:stages:", [common gpuIdentifier], usage, v10);
      }
    }

    if ([common conformsToProtocol:&unk_284228AC0])
    {
      if (common)
      {
        [common getActiveViews];
        for (i = v13; i; i = *i)
        {
          [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markTexture:i[2] usage:usage stages:v10];
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

  [common useWithRenderEncoder:self usage:usage stages:{var1, v5, v12, v13, v14}];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *resources++;
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v9 usage:usage];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  if (count)
  {
    countCopy = count;
    do
    {
      v11 = *resources++;
      [(MTLGPUDebugRenderCommandEncoder *)self useResource:v11 usage:usage stages:stages];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useHeap:(id)heap
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markHeap:heap stages:31];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:heap];
  baseObject = self->super.super.super._baseObject;
  baseObject = [heap baseObject];

  [(MTLToolsObject *)baseObject useHeap:baseObject];
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLGPUDebugCommandBuffer *)self->_commandBuffer markHeap:heap stages:stages];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:heap];
  baseObject = self->super.super.super._baseObject;
  baseObject = [heap baseObject];

  [(MTLToolsObject *)baseObject useHeap:baseObject stages:stages];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v7 = *heaps++;
      [(MTLGPUDebugRenderCommandEncoder *)self useHeap:v7];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *heaps++;
      [(MTLGPUDebugRenderCommandEncoder *)self useHeap:v9 stages:stages];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useResidencySet:(id)set
{
  if ((*&self->_options->var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:set fromEncoder:self];
  }

  v5.receiver = self;
  v5.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if ((*&self->_options->var0 & 0x200000001) != 0 && count != 0)
  {
    setsCopy = sets;
    countCopy = count;
    do
    {
      v10 = *setsCopy++;
      [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] addResidencySetGPUDebug:v10 fromEncoder:self];
      --countCopy;
    }

    while (countCopy);
  }

  v11.receiver = self;
  v11.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 useResidencySets:sets count:count];
}

- (void)setDepthStencilState:(id)state
{
  self->_currentDepthStencil = state;
  v3.receiver = self;
  v3.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v3 setDepthStencilState:?];
}

- (void)setRenderPipelineState:(id)state
{
  self->_drawID.pipelineStateID = state;
  *(&self->_enableUseResourceValidation + 1) = [state vertexFunctionData] != 0;
  self->_enableUseResourceValidation = [state fragmentFunctionData] != 0;
  v5 = [state tileFunctionData] != 0;
  self->_objectStageActive = v5;
  self->_meshStageActive |= v5;
  v6 = !*(&self->_enableUseResourceValidation + 1) && [state objectFunctionData] != 0;
  *(&self->_enableUseResourceValidation + 2) = v6;
  if (*(&self->_enableUseResourceValidation + 1))
  {
    *(&self->_enableUseResourceValidation + 3) = 0;
  }

  else
  {
    meshFunctionData = [state meshFunctionData];
    *(&self->_enableUseResourceValidation + 3) = meshFunctionData != 0;
    if (meshFunctionData)
    {
      if (self->_currentPipeline != state)
      {
        meshDebugInstrumentationData = [state meshDebugInstrumentationData];
        if ([meshDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(meshDebugInstrumentationData, "threadgroupArgumentOffset"))
        {
          self->_meshThreadgroup.needsFlush = 1;
        }
      }
    }
  }

  if (*(&self->_enableUseResourceValidation + 2) && self->_currentPipeline != state)
  {
    objectDebugInstrumentationData = [state objectDebugInstrumentationData];
    if ([objectDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(objectDebugInstrumentationData, "threadgroupArgumentOffset"))
    {
      self->_objectThreadgroup.needsFlush = 1;
    }
  }

  if (self->_meshStageActive && self->_currentPipeline != state)
  {
    tileDebugInstrumentationData = [state tileDebugInstrumentationData];
    fragmentDebugInstrumentationData = [state fragmentDebugInstrumentationData];
    if ([tileDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(fragmentDebugInstrumentationData, "activeThreadgroupMask"))
    {
      self->_tileThreadgroup.needsFlush = 1;
    }
  }

  if (self->_currentPipeline != state)
  {
    if ((*(&self->_options->var0 + 2) & 0x40) != 0)
    {
      [(MTLGPUDebugRenderCommandEncoder *)self setRenderPipelineStateBuffers:state];
    }

    self->_vertexHandles.needsFlush |= *(&self->_enableUseResourceValidation + 1);
    self->_fragmentHandles.needsFlush |= self->_enableUseResourceValidation;
    self->_tileHandles.needsFlush |= self->_objectStageActive;
  }

  self->_currentPipeline = state;
  v12.receiver = self;
  v12.super_class = MTLGPUDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 setRenderPipelineState:state];
}

- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    v6 = &self->_vertexEncoderBoundBuffers[index];
    v6->resource = *(table + 2);
    v6->offset = 0;
    v6->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject setVertexVisibleFunctionTable:*(table + 2) atBufferIndex:?];
    baseObject = self->super.super.super._baseObject;
    v8 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v8 usage:1 stages:1];
  }
}

- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setVertexVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    v7 = &self->_fragmentEncoderBoundBuffers[index];
    v7->resource = *(table + 2);
    v7->offset = 0;
    v7->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:*(table + 2) usage:1 stages:2];
    baseObject = self->super.super.super._baseObject;
    v9 = *(table + 2);

    [(MTLToolsObject *)baseObject setFragmentVisibleFunctionTable:v9 atBufferIndex:index];
  }
}

- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setFragmentVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setTileVisibleFunctionTable:*(table + 2) atBufferIndex:index];
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:4];
  }
}

- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setTileVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_objectEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject setObjectVisibleFunctionTable:*(table + 2) atBufferIndex:index];
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:8];
  }
}

- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setObjectVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_meshEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 115;
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshVisibleFunctionTable:*(table + 2) atBufferIndex:index];
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:16];
  }
}

- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setMeshVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_vertexHandles, table, index);
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_vertexEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 116;
    -[MTLToolsObject setVertexIntersectionFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setVertexIntersectionFunctionTable:atBufferIndex:", [table baseObject], index);
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:1];
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setVertexIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_fragmentEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 116;
    -[MTLToolsObject setFragmentIntersectionFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setFragmentIntersectionFunctionTable:atBufferIndex:", [table baseObject], index);
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:2];
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setFragmentIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_tileHandles, table, index);
  if (table)
  {
    -[MTLToolsObject setTileIntersectionFunctionTable:atBufferIndex:](self->super.super.super._baseObject, "setTileIntersectionFunctionTable:atBufferIndex:", [table baseObject], index);
    baseObject = self->super.super.super._baseObject;
    v8 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v8 usage:1 stages:4];
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setTileIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  debugBuf = [structure debugBuf];
  v8 = &self->_vertexEncoderBoundBuffers[index];
  v8->resource = debugBuf;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  debugBuf2 = [structure debugBuf];

  [(MTLToolsObject *)baseObject setVertexBuffer:debugBuf2 offset:0 atIndex:index];
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  debugBuf = [structure debugBuf];
  v8 = &self->_fragmentEncoderBoundBuffers[index];
  v8->resource = debugBuf;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  debugBuf2 = [structure debugBuf];

  [(MTLToolsObject *)baseObject setFragmentBuffer:debugBuf2 offset:0 atIndex:index];
}

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = self->super.super.super._baseObject;
  debugBuf = [structure debugBuf];

  [(MTLToolsObject *)baseObject setTileBuffer:debugBuf offset:0 atIndex:index];
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_objectEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 116;
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject setObjectIntersectionFunctionTable:v10 atBufferIndex:index];
  }
}

- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setObjectIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_meshHandles, table, index);
  if (table)
  {
    baseObject = [table baseObject];
    v8 = &self->_meshEncoderBoundBuffers[index];
    v8->resource = baseObject;
    v8->offset = 0;
    v8->type = 116;
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshIntersectionFunctionTable:*(table + 2) atBufferIndex:index];
    baseObject = self->super.super.super._baseObject;
    v10 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v10 usage:1 stages:16];
  }
}

- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLGPUDebugRenderCommandEncoder *)self setMeshIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  debugBuf = [structure debugBuf];
  v8 = &self->_objectEncoderBoundBuffers[index];
  v8->resource = debugBuf;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  debugBuf2 = [structure debugBuf];

  [(MTLToolsObject *)baseObject setObjectBuffer:debugBuf2 offset:0 atIndex:index];
}

- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  debugBuf = [structure debugBuf];
  v8 = &self->_meshEncoderBoundBuffers[index];
  v8->resource = debugBuf;
  v8->offset = 0;
  baseObject = self->super.super.super._baseObject;
  debugBuf2 = [structure debugBuf];

  [(MTLToolsObject *)baseObject setMeshBuffer:debugBuf2 offset:0 atIndex:index];
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
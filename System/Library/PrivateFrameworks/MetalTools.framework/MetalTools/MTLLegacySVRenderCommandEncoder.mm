@interface MTLLegacySVRenderCommandEncoder
- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d;
- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parallelEncoder:(id)parallelEncoder encoderID:(unsigned int)d;
- (id).cxx_construct;
- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)temporaryBufferWithLength:(unint64_t)length;
- (void)_useResourceCommon:(id)common usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
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
- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable forStage:(unint64_t)stage;
- (void)setDepthStencilState:(id)state;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFragmentReportBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshReportBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index;
- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectReportBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index;
- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state;
- (void)setRenderPipelineStateBuffers:(id)buffers;
- (void)setTessellationControlPointIndexBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileReportBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexReportBuffer:(id)buffer offset:(unint64_t)offset;
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

@implementation MTLLegacySVRenderCommandEncoder

- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d
{
  v12.receiver = self;
  v12.super_class = MTLLegacySVRenderCommandEncoder;
  v8 = [(MTLToolsRenderCommandEncoder *)&v12 initWithRenderCommandEncoder:encoder parent:buffer descriptor:descriptor];
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = buffer;
    *(v8 + 1109) = 0;
    v10 = *(v8 + 3) + 264;
    *(v8 + 1105) = v10;
    *(v8 + 2216) = d;
    *(v8 + 2217) = 0;
    v8[62] = (*(v10 + 20) & 0x200000001) != 0;
    MTLGPUDebugStageBufferHandles::clear((v8 + 72));
    if ((*(&v9->_options->var0 + 2) & 0x80) == 0)
    {
      [(MTLLegacySVRenderCommandEncoder *)v9 _initBufferArgumentData:v9->super.super.super._device];
    }

    *&v9->_vertexAmpState.count = 1;
  }

  return v9;
}

- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parallelEncoder:(id)parallelEncoder encoderID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVRenderCommandEncoder;
  v7 = [(MTLToolsRenderCommandEncoder *)&v10 initWithRenderCommandEncoder:encoder parent:?];
  if (v7)
  {
    *(v7 + 8) = [parallelEncoder commandBuffer];
    *(v7 + 1109) = 3;
    v8 = *(v7 + 3) + 264;
    *(v7 + 1105) = v8;
    v7[62] = (*(v8 + 20) & 0x200000001) != 0;
    *(v7 + 2216) = d;
    *(v7 + 2217) = 0;
    MTLGPUDebugStageBufferHandles::clear((v7 + 72));
    if ((*(*(v7 + 1105) + 22) & 0x80) == 0)
    {
      [v7 _initBufferArgumentData:*(v7 + 3)];
    }
  }

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length
{
  commandBuffer = [(MTLToolsCommandEncoder *)self commandBuffer];

  return [(MTLToolsRetainingContainer *)commandBuffer temporaryBufferWithBytes:bytes length:length];
}

- (id)temporaryBufferWithLength:(unint64_t)length
{
  commandBuffer = [(MTLToolsCommandEncoder *)self commandBuffer];

  return [(MTLToolsRetainingContainer *)commandBuffer temporaryBufferWithLength:length];
}

- (void)flushBindings
{
  if (*(&self->_enableUseResourceValidation + 1))
  {
    self->_drawID.entryPointImageID = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline vertexFunctionData];
    self->_options->var0;
    [MTLToolsObject setVertexBytes:"setVertexBytes:length:atIndex:" length:? atIndex:?];
  }

  v75 = 58;
  if (self->_enableUseResourceValidation)
  {
    self->_drawID.entryPointImageID = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline fragmentFunctionData];
    self->_options->var0;
    [MTLToolsObject setFragmentBytes:"setFragmentBytes:length:atIndex:" length:58 atIndex:?];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      fragmentMaxCallStackDepth = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline fragmentMaxCallStackDepth];
      baseObject = self->super.super.super._baseObject;
      options = self->_options;
      LODWORD(v77) = fragmentMaxCallStackDepth;
      if ((*&options->var0 & 0x10000) != 0)
      {
        v6 = 22;
      }

      else
      {
        v6 = 52;
      }

      [(MTLToolsObject *)baseObject setFragmentBytes:&v77 length:4 atIndex:v6];
    }
  }

  if (self->_objectStageActive)
  {
    self->_drawID.entryPointImageID = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline tileFunctionData];
    self->_options->var0;
    [MTLToolsObject setTileBytes:"setTileBytes:length:atIndex:" length:v75 atIndex:?];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      tileMaxCallStackDepth = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline tileMaxCallStackDepth];
      v8 = self->super.super.super._baseObject;
      v9 = self->_options;
      LODWORD(v77) = tileMaxCallStackDepth;
      if ((*&v9->var0 & 0x10000) != 0)
      {
        v10 = 22;
      }

      else
      {
        v10 = 52;
      }

      [(MTLToolsObject *)v8 setTileBytes:&v77 length:4 atIndex:v10];
    }
  }

  if (*(&self->_enableUseResourceValidation + 2))
  {
    self->_drawID.entryPointImageID = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline objectFunctionData];
    self->_options->var0;
    [MTLToolsObject setObjectBytes:"setObjectBytes:length:atIndex:" length:v75 atIndex:?];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      objectMaxCallStackDepth = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline objectMaxCallStackDepth];
      v12 = self->super.super.super._baseObject;
      v13 = self->_options;
      LODWORD(v77) = objectMaxCallStackDepth;
      if ((*&v13->var0 & 0x10000) != 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = 52;
      }

      [(MTLToolsObject *)v12 setObjectBytes:&v77 length:4 atIndex:v14];
    }
  }

  if (*(&self->_enableUseResourceValidation + 3))
  {
    self->_drawID.entryPointImageID = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline meshFunctionData];
    self->_options->var0;
    [MTLToolsObject setMeshBytes:"setMeshBytes:length:atIndex:" length:v75 atIndex:?];
    if ((*&self->_options->var0 & 0x400000001) != 0)
    {
      meshMaxCallStackDepth = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline meshMaxCallStackDepth];
      v16 = self->super.super.super._baseObject;
      v17 = self->_options;
      LODWORD(v77) = meshMaxCallStackDepth;
      if ((*&v17->var0 & 0x10000) != 0)
      {
        v18 = 22;
      }

      else
      {
        v18 = 52;
      }

      [(MTLToolsObject *)v16 setMeshBytes:&v77 length:4 atIndex:v18];
    }
  }

  var0 = self->_options->var0;
  if ((*&var0 & 0x200000001) != 0)
  {
    [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] encodeResourceTableBuffers:self type:0];
    var0 = self->_options->var0;
  }

  v20 = *&var0 & 0x7000000;
  if (*(&self->_enableUseResourceValidation + 3))
  {
    activeThreadgroupMask = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] activeThreadgroupMask];
    threadgroupArgumentOffset = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] threadgroupArgumentOffset];
    if (v20)
    {
      if (self->_meshThreadgroup.needsFlush)
      {
        LODWORD(v77) = activeThreadgroupMask;
        v23 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_meshThreadgroup, &v77, threadgroupArgumentOffset);
        if (v23)
        {
          v24 = v23;
          if ((*&self->_options->var0 & 0x10000) != 0)
          {
            v25 = 4;
          }

          else
          {
            v25 = 34;
          }

          [(MTLToolsObject *)self->super.super.super._baseObject setMeshBytes:self->_meshThreadgroup.entries length:256 atIndex:v25, v75];
          [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v24 offset:0 atIndex:0];
        }

        self->_meshThreadgroup.needsFlush = 0;
      }
    }
  }

  activeThreadgroupMask2 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] activeThreadgroupMask];
  activeThreadgroupMask3 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] activeThreadgroupMask];
  if (v20 && self->_tileThreadgroup.needsFlush)
  {
    LODWORD(v77) = activeThreadgroupMask3 | activeThreadgroupMask2;
    v28 = MTLGPUDebugTileThreadgroup::setupTableEntries(&self->_tileThreadgroup, &v77);
    if (v28)
    {
      v29 = v28;
      if ((*&self->_options->var0 & 0x10000) != 0)
      {
        v30 = 4;
      }

      else
      {
        v30 = 34;
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setTileBytes:&self->_tileThreadgroup length:256 atIndex:v30];
      if ((*&self->_options->var0 & 0x10000) != 0)
      {
        v31 = 4;
      }

      else
      {
        v31 = 34;
      }

      [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBytes:&self->_tileThreadgroup length:256 atIndex:v31];
      [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v29 offset:0 atIndex:0];
    }

    self->_tileThreadgroup.needsFlush = 0;
  }

  v32 = self->_options->var0;
  if ((*&v32 & 0x800000) != 0)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:self->super.super.super._device[3].samplerObjectCache usage:1];
    v48 = *(&self->_enableUseResourceValidation + 1);
    bufferAccessMask = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline vertexDebugInstrumentationData] bufferAccessMask];
    if (v48 == 1)
    {
      v50 = bufferAccessMask;
      if ((*(&self->_options->var0 + 2) & 0x80) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_vertexHandles.needsFlush)
      {
        v77 = v50;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::VertexEncoderClass>>(&self->_vertexHandles, &v77, &self->super.super.super.super.isa, 20, 23);
      }
    }

    v51 = *(&self->super.super.super.super.isa + v76);
    bufferAccessMask2 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] bufferAccessMask];
    if (v51 == 1)
    {
      v53 = bufferAccessMask2;
      if ((*(&self->_options->var0 + 2) & 0x80) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_fragmentHandles.needsFlush)
      {
        v77 = v53;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::FragmentEncoderClass>>(&self->_fragmentHandles, &v77, &self->super.super.super.super.isa, 20, 23);
      }
    }

    objectStageActive = self->_objectStageActive;
    bufferAccessMask3 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] bufferAccessMask];
    if (objectStageActive)
    {
      v56 = bufferAccessMask3;
      if ((*(&self->_options->var0 + 2) & 0x80) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_tileHandles.needsFlush)
      {
        v77 = v56;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::TileEncoderClass>>(&self->_tileHandles, &v77, &self->super.super.super.super.isa, 20, 23);
      }
    }

    v57 = *(&self->_enableUseResourceValidation + 2);
    bufferAccessMask4 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] bufferAccessMask];
    if (v57 == 1)
    {
      v59 = bufferAccessMask4;
      if ((*(&self->_options->var0 + 2) & 0x80) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_objectHandles.needsFlush)
      {
        v77 = v59;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::ObjectEncoderClass>>(&self->_objectHandles, &v77, &self->super.super.super.super.isa, 20, 23);
      }
    }

    v60 = *(&self->_enableUseResourceValidation + 3);
    bufferAccessMask5 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] bufferAccessMask];
    if (v60 == 1)
    {
      v62 = bufferAccessMask5;
      if ((*(&self->_options->var0 + 2) & 0x80) != 0)
      {
        [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
      }

      if (self->_meshHandles.needsFlush)
      {
        v77 = v62;
        MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::MeshEncoderClass>>(&self->_meshHandles, &v77, &self->super.super.super.super.isa, 20, 23);
      }
    }
  }

  else
  {
    v33 = *(&self->_enableUseResourceValidation + 1);
    bufferAccessMask6 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline vertexDebugInstrumentationData] bufferAccessMask];
    p_vertexHandles = &self->_vertexHandles;
    if ((*&v32 & 0x10000) != 0)
    {
      if (v33)
      {
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_vertexHandles.needsFlush)
        {
          v77 = bufferAccessMask6;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::VertexEncoderClass>>(p_vertexHandles, &v77, self, 20, 23);
        }
      }

      v63 = *(&self->super.super.super.super.isa + v76);
      bufferAccessMask7 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] bufferAccessMask];
      if (v63 == 1)
      {
        v65 = bufferAccessMask7;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_fragmentHandles.needsFlush)
        {
          v77 = v65;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::FragmentEncoderClass>>(&self->_fragmentHandles, &v77, self, 20, 23);
        }
      }

      v66 = self->_objectStageActive;
      bufferAccessMask8 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] bufferAccessMask];
      if (v66)
      {
        v68 = bufferAccessMask8;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_tileHandles.needsFlush)
        {
          v77 = v68;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::TileEncoderClass>>(&self->_tileHandles, &v77, self, 20, 23);
        }
      }

      v69 = *(&self->_enableUseResourceValidation + 2);
      bufferAccessMask9 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] bufferAccessMask];
      if (v69 == 1)
      {
        v71 = bufferAccessMask9;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_objectHandles.needsFlush)
        {
          v77 = v71;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::ObjectEncoderClass>>(&self->_objectHandles, &v77, self, 20, 23);
        }
      }

      v72 = *(&self->_enableUseResourceValidation + 3);
      bufferAccessMask10 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] bufferAccessMask];
      if (v72 == 1)
      {
        v74 = bufferAccessMask10;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_meshHandles.needsFlush)
        {
          v77 = v74;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::MeshEncoderClass>>(&self->_meshHandles, &v77, self, 20, 23);
        }
      }
    }

    else
    {
      if (v33)
      {
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_vertexHandles.needsFlush)
        {
          v77 = bufferAccessMask6;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::VertexEncoderClass>>(p_vertexHandles, &v77, self);
        }
      }

      v36 = *(&self->super.super.super.super.isa + v76);
      bufferAccessMask11 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] bufferAccessMask];
      if (v36 == 1)
      {
        v38 = bufferAccessMask11;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_fragmentHandles.needsFlush)
        {
          v77 = v38;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::FragmentEncoderClass>>(&self->_fragmentHandles, &v77, self);
        }
      }

      v39 = self->_objectStageActive;
      bufferAccessMask12 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] bufferAccessMask];
      if (v39)
      {
        v41 = bufferAccessMask12;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_tileHandles.needsFlush)
        {
          v77 = v41;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::TileEncoderClass>>(&self->_tileHandles, &v77, self);
        }
      }

      v42 = *(&self->_enableUseResourceValidation + 2);
      bufferAccessMask13 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] bufferAccessMask];
      if (v42 == 1)
      {
        v44 = bufferAccessMask13;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_objectHandles.needsFlush)
        {
          v77 = v44;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::ObjectEncoderClass>>(&self->_objectHandles, &v77, self);
        }
      }

      v45 = *(&self->_enableUseResourceValidation + 3);
      bufferAccessMask14 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] bufferAccessMask];
      if (v45 == 1)
      {
        v47 = bufferAccessMask14;
        if ((*(&self->_options->var0 + 2) & 0x80) != 0)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:*([(MTLToolsObject *)self device]+ 424) offset:0 atIndex:21];
        }

        if (self->_meshHandles.needsFlush)
        {
          v77 = v47;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::MeshEncoderClass>>(&self->_meshHandles, &v77, self);
        }
      }
    }
  }

  ++self->_drawID.eventID;
}

- (void)setTessellationControlPointIndexBuffer:(id)buffer offset:(unint64_t)offset
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:1 stages:1];
  }

  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    v7 = [buffer handleForOffset:offset];
    [(MTLToolsObject *)self->super.super.super._baseObject setVertexBytes:&v7 length:8 atIndex:13];
    if (!buffer)
    {
      return;
    }

    goto LABEL_7;
  }

  -[MTLToolsObject setVertexBuffer:offset:atIndex:](self->super.super.super._baseObject, "setVertexBuffer:offset:atIndex:", [buffer baseObject], offset, 13);
  if (buffer)
  {
LABEL_7:
    [(MTLLegacySVRenderCommandEncoder *)self useResource:buffer usage:1 stages:1];
    [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  }
}

- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable forStage:(unint64_t)stage
{
  if ((*(&self->_options->var0 + 2) & 1) == 0)
  {
    return;
  }

  if (stage <= 3)
  {
    if (stage == 1)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:table offset:0 atIndex:5];
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:usageTable offset:0 atIndex:6];
      self->_vertexBufferUsageTable = table;
      v8 = 9008;
      goto LABEL_18;
    }

    if (stage != 2)
    {
      return;
    }

    [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:table offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:usageTable offset:0 atIndex:6];
    self->_fragmentBufferUsageTable = table;
    self->_fragmentTextureUsageTable = usageTable;
    goto LABEL_11;
  }

  if (stage == 4)
  {
LABEL_11:
    if ([(MTLToolsDevice *)self->super.super.super._device supportsTileShaders])
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:table offset:0 atIndex:5];
      baseObject = self->super.super.super._baseObject;

      [(MTLToolsObject *)baseObject setTileBuffer:usageTable offset:0 atIndex:6];
    }

    return;
  }

  if (stage == 8)
  {
    if (![(MTLToolsDevice *)self->super.super.super._device supportsMeshShaders])
    {
      return;
    }

    [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:table offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:usageTable offset:0 atIndex:6];
    self->_objectBufferUsageTable = table;
    v8 = 9040;
    goto LABEL_18;
  }

  if (stage == 16 && [(MTLToolsDevice *)self->super.super.super._device supportsMeshShaders])
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:table offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:usageTable offset:0 atIndex:6];
    self->_meshBufferUsageTable = table;
    v8 = 9056;
LABEL_18:
    *(&self->super.super.super.super.isa + v8) = usageTable;
  }
}

- (void)setVertexReportBuffer:(id)buffer offset:(unint64_t)offset
{
  p_vertexReportBuffer = &self->_vertexReportBuffer;
  bufferCopy = buffer;

  p_vertexReportBuffer->buffer = buffer;
  p_vertexReportBuffer->offset = offset;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setVertexBuffer:baseObject offset:offset atIndex:v11];
}

- (void)setFragmentReportBuffer:(id)buffer offset:(unint64_t)offset
{
  p_fragmentReportBuffer = &self->_fragmentReportBuffer;
  bufferCopy = buffer;

  p_fragmentReportBuffer->buffer = buffer;
  p_fragmentReportBuffer->offset = offset;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setFragmentBuffer:baseObject offset:offset atIndex:v11];
}

- (void)setTileReportBuffer:(id)buffer offset:(unint64_t)offset
{
  p_tileReportBuffer = &self->_tileReportBuffer;
  bufferCopy = buffer;

  p_tileReportBuffer->buffer = buffer;
  p_tileReportBuffer->offset = offset;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setTileBuffer:baseObject offset:offset atIndex:v11];
}

- (void)setObjectReportBuffer:(id)buffer offset:(unint64_t)offset
{
  p_objectReportBuffer = &self->_objectReportBuffer;
  bufferCopy = buffer;

  p_objectReportBuffer->buffer = buffer;
  p_objectReportBuffer->offset = offset;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setObjectBuffer:baseObject offset:offset atIndex:v11];
}

- (void)setMeshReportBuffer:(id)buffer offset:(unint64_t)offset
{
  p_meshReportBuffer = &self->_meshReportBuffer;
  bufferCopy = buffer;

  p_meshReportBuffer->buffer = buffer;
  p_meshReportBuffer->offset = offset;
  baseObject = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setMeshBuffer:baseObject offset:offset atIndex:v11];
}

- (void)setRenderPipelineStateBuffers:(id)buffers
{
  v28 = *MEMORY[0x277D85DE8];
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
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    binaryFunctionData = [buffers binaryFunctionData];
    v13 = [binaryFunctionData countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (*(v17 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLLegacySVRenderCommandEncoder *)self useResource:*(v17 + 8) usage:1];
          }
        }

        v14 = [binaryFunctionData countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    if (vertexConstantsBuffer)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:vertexConstantsBuffer];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:vertexConstantsBuffer usage:1 stages:1];
    }

    if (fragmentConstantsBuffer)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:fragmentConstantsBuffer];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:fragmentConstantsBuffer usage:1 stages:2];
    }

    if (*(&self->_enableUseResourceValidation + 1))
    {
      v22 = [vertexConstantsBuffer handleForOffset:0];
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBytes:&v22 length:8 atIndex:12];
    }

    if (self->_enableUseResourceValidation)
    {
      v22 = [fragmentConstantsBuffer handleForOffset:0];
      [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBytes:&v22 length:8 atIndex:12];
    }

    if (self->_objectStageActive)
    {
      v22 = [v19 handleForOffset:0];
      [(MTLToolsObject *)self->super.super.super._baseObject setTileBytes:&v22 length:8 atIndex:12];
    }

    if (*(&self->_enableUseResourceValidation + 3))
    {
      v22 = [v20 handleForOffset:0];
      [(MTLToolsObject *)self->super.super.super._baseObject setMeshBytes:&v22 length:8 atIndex:12];
    }

    if (*(&self->_enableUseResourceValidation + 2))
    {
      v22 = [v21 handleForOffset:0];
      [(MTLToolsObject *)self->super.super.super._baseObject setObjectBytes:&v22 length:8 atIndex:12];
    }

    if (v19)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v19];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v19 usage:1 stages:4];
    }

    if (*(&self->_enableUseResourceValidation + 3) && v20)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v20];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v20 usage:1 stages:16];
    }

    if (*(&self->_enableUseResourceValidation + 2) && v21)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v21];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v21 usage:1 stages:8];
    }

    goto LABEL_60;
  }

  if (vertexConstantsBuffer)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:vertexConstantsBuffer offset:0 atIndex:12];
  }

  if (fragmentConstantsBuffer)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:fragmentConstantsBuffer offset:0 atIndex:12];
  }

  if (tileConstantsBuffer)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:tileConstantsBuffer offset:0 atIndex:12];
  }

  if (meshConstantsBuffer)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:meshConstantsBuffer offset:0 atIndex:12];
  }

  if (!objectConstantsBuffer)
  {
LABEL_60:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  baseObject = self->super.super.super._baseObject;
  v11 = *MEMORY[0x277D85DE8];

  [(MTLToolsObject *)baseObject setObjectBuffer:objectConstantsBuffer offset:0 atIndex:12];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:1];
  }

  MTLGPUDebugStageBufferHandles::setBuffer(&self->_vertexHandles, buffer, offset, stride, index);

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

  [(MTLLegacySVRenderCommandEncoder *)self setVertexBuffers:buffers offsets:offsets attributeStrides:v10 withRange:location, length];
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
      [(MTLLegacySVRenderCommandEncoder *)self setVertexBuffer:v12 offset:v14 attributeStride:v16 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v9 = [(MTLLegacySVRenderCommandEncoder *)self temporaryBufferWithBytes:bytes length:length];

  [(MTLLegacySVRenderCommandEncoder *)self setVertexBuffer:v9 offset:0 attributeStride:stride atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_fragmentHandles, buffer, offset, index);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:2];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
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
      [(MTLLegacySVRenderCommandEncoder *)self setFragmentBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:bytes length:length];

  [(MTLLegacySVRenderCommandEncoder *)self setFragmentBuffer:v7 offset:0 atIndex:index];
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_tileHandles, buffer, offset, index);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:4];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
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
      [(MTLLegacySVRenderCommandEncoder *)self setTileBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:bytes length:length];

  [(MTLLegacySVRenderCommandEncoder *)self setTileBuffer:v7 offset:0 atIndex:index];
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
    v8.super_class = MTLLegacySVRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v8 setThreadgroupMemoryLength:length offset:offset atIndex:index];
  }
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_objectHandles, buffer, offset, index);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:8];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
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
      [(MTLLegacySVRenderCommandEncoder *)self setObjectBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:bytes length:length];

  [(MTLLegacySVRenderCommandEncoder *)self setObjectBuffer:v7 offset:0 atIndex:index];
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_meshHandles, buffer, offset, index);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:buffer usage:3 stages:16];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
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
      [(MTLLegacySVRenderCommandEncoder *)self setMeshBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:bytes length:length];

  [(MTLLegacySVRenderCommandEncoder *)self setMeshBuffer:v7 offset:0 atIndex:index];
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [texture baseObject];
  if (texture)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:texture usage:3 stages:1];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:1];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:texture usage:3 stages:2];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:2];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:texture usage:3 stages:4];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:4];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:texture usage:3 stages:16];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:16];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:texture usage:3 stages:8];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:8];
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
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:primitives indirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v11.receiver = self;
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:bufferOffset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v17.receiver = self;
  v17.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:instanceCount baseVertex:vertex baseInstance:instance];
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings:patches];
  v12.receiver = self;
  v12.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 drawPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:offset];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v16.receiver = self;
  v16.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    [(MTLLegacySVRenderCommandEncoder *)self setTessellationControlPointIndexBuffer:indexBuffer offset:bufferOffset];

    [(MTLLegacySVRenderCommandEncoder *)self drawPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:indirectBufferOffset];
  }

  else
  {
    [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
    v16.receiver = self;
    v16.super_class = MTLLegacySVRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v16 drawIndexedPatches:patches patchIndexBuffer:buffer patchIndexBufferOffset:offset controlPointIndexBuffer:indexBuffer controlPointIndexBufferOffset:bufferOffset indirectBuffer:indirectBuffer indirectBufferOffset:indirectBufferOffset];
  }
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    [(MTLLegacySVRenderCommandEncoder *)self setTessellationControlPointIndexBuffer:indexBuffer offset:bufferOffset];

    [(MTLLegacySVRenderCommandEncoder *)self drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:?];
  }

  else
  {
    [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
    v18.receiver = self;
    v18.super_class = MTLLegacySVRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v18 drawIndexedPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset controlPointIndexBuffer:indexBuffer controlPointIndexBufferOffset:bufferOffset instanceCount:instanceCount baseInstance:instance];
  }
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v6 = *tile;
  v5.receiver = self;
  v5.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v10[0] = *&region->var0.var0;
  v10[1] = v8;
  v10[2] = *&region->var1.var1;
  v11 = v7;
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 dispatchThreadsPerTile:&v11 inRegion:v10];
}

- (void)resetTileCondition
{
  v2.receiver = self;
  v2.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v2 resetTileCondition];
}

- (void)dispatchThreadsPerTile:(id *)tile withCondition:(int64_t)condition
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v8 = *tile;
  v7.receiver = self;
  v7.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 dispatchThreadsPerTile:&v8 withCondition:condition];
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v12 = *threadgroups;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v12 = *threads;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  v11.receiver = self;
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawMeshThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)restoreInternalState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  inheritsBuffers = [state inheritsBuffers];
  inheritsPipelineState = [state inheritsPipelineState];
  if (!inheritsBuffers || (inheritsPipelineState & 1) == 0)
  {
    self->_vertexHandles.needsFlush = 1;
    self->_fragmentHandles.needsFlush = 1;
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
  [(MTLLegacySVRenderCommandEncoder *)self prepareExecuteIndirect:buffer variant:&v9];
  v8.receiver = self;
  v8.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v8 executeCommandsInBuffer:buffer withRange:location, length];
  [(MTLLegacySVRenderCommandEncoder *)self restoreInternalState:buffer];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  v10[0] = indirectBuffer;
  v10[1] = offset;
  v11 = 0;
  [(MTLLegacySVRenderCommandEncoder *)self prepareExecuteIndirect:buffer variant:v10];
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
  [(MTLLegacySVRenderCommandEncoder *)self restoreInternalState:buffer];
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
  v7.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)useResourceInternal:(id)internal usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  if (stages.var1)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:internal usage:usage stages:stages.var0.var1];
  }

  else
  {
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:internal usage:usage, stages.var0.var1];
  }
}

- (void)_useResourceCommon:(id)common usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  v5 = *&stages.var1;
  var1 = stages.var0.var1;
  -[MTLLegacySVRenderCommandEncoder useResourceInternal:usage:stages:](self, "useResourceInternal:usage:stages:", [common baseObject], usage, stages.var0.var1, *&stages.var1);
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:common usage:usage stages:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:common usage:usage stages:v10];
      }
    }
  }

  [common useWithRenderEncoder:self usage:usage stages:{var1, v5}];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *resources++;
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v9 usage:usage];
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
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v11 usage:usage stages:stages];
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useHeap:(id)heap
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markHeap:heap stages:31];
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
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markHeap:heap stages:stages];
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
      [(MTLLegacySVRenderCommandEncoder *)self useHeap:v7];
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
      [(MTLLegacySVRenderCommandEncoder *)self useHeap:v9 stages:stages];
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
  v5.super_class = MTLLegacySVRenderCommandEncoder;
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
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 useResidencySets:sets count:count];
}

- (void)setDepthStencilState:(id)state
{
  self->_currentDepthStencil = state;
  v3.receiver = self;
  v3.super_class = MTLLegacySVRenderCommandEncoder;
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
  v7 = !*(&self->_enableUseResourceValidation + 1) && [state meshFunctionData] != 0;
  *(&self->_enableUseResourceValidation + 3) = v7;
  if (*(&self->_enableUseResourceValidation + 2) || v7)
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer beginUseOfMeshShadersInEncoder:self];
    if (*(&self->_enableUseResourceValidation + 3) && self->_currentPipeline != state)
    {
      meshDebugInstrumentationData = [state meshDebugInstrumentationData];
      if ([meshDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(meshDebugInstrumentationData, "threadgroupArgumentOffset"))
      {
        self->_meshThreadgroup.needsFlush = 1;
      }
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
      [(MTLLegacySVRenderCommandEncoder *)self setRenderPipelineStateBuffers:state];
    }

    self->_vertexHandles.needsFlush |= *(&self->_enableUseResourceValidation + 1);
    self->_fragmentHandles.needsFlush |= self->_enableUseResourceValidation;
    self->_tileHandles.needsFlush |= self->_objectStageActive;
  }

  self->_currentPipeline = state;
  v11.receiver = self;
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 setRenderPipelineState:state];
}

- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_vertexHandles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:1];
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
      [(MTLLegacySVRenderCommandEncoder *)self setVertexVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_fragmentHandles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:2];
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
      [(MTLLegacySVRenderCommandEncoder *)self setFragmentVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_tileHandles, table, index);
  if (table)
  {
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
      [(MTLLegacySVRenderCommandEncoder *)self setTileVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_objectHandles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:8];
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
      [(MTLLegacySVRenderCommandEncoder *)self setObjectVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_meshHandles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:16];
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
      [(MTLLegacySVRenderCommandEncoder *)self setMeshVisibleFunctionTable:v8 atBufferIndex:location++];
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
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:1];
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
      [(MTLLegacySVRenderCommandEncoder *)self setVertexIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_fragmentHandles, table, index);
  if (table)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:2];
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
      [(MTLLegacySVRenderCommandEncoder *)self setFragmentIntersectionFunctionTable:v8 atBufferIndex:location++];
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
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:4];
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
      [(MTLLegacySVRenderCommandEncoder *)self setTileIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
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
      [(MTLLegacySVRenderCommandEncoder *)self setObjectIntersectionFunctionTable:v8 atBufferIndex:location++];
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
    baseObject = self->super.super.super._baseObject;
    v7 = *(table + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:16];
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
      [(MTLLegacySVRenderCommandEncoder *)self setMeshIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)endEncoding
{
  [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:self->_encoderType];
  MTLGPUDebugStageBufferHandles::clear(&self->_vertexHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_fragmentHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_tileHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_objectHandles);
  MTLGPUDebugStageBufferHandles::clear(&self->_meshHandles);

  self->_vertexReportBuffer.buffer = 0;
  self->_vertexReportBuffer.offset = 0;

  self->_fragmentReportBuffer.buffer = 0;
  self->_fragmentReportBuffer.offset = 0;

  self->_tileReportBuffer.buffer = 0;
  self->_tileReportBuffer.offset = 0;

  self->_objectReportBuffer.buffer = 0;
  self->_objectReportBuffer.offset = 0;

  self->_meshReportBuffer.buffer = 0;
  self->_meshReportBuffer.offset = 0;
  v3.receiver = self;
  v3.super_class = MTLLegacySVRenderCommandEncoder;
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
  *(self + 1112) = 0;
  *(self + 1114) = 0;
  *(self + 1116) = 0;
  *(self + 1118) = 0;
  *(self + 1120) = 0;
  return self;
}

@end
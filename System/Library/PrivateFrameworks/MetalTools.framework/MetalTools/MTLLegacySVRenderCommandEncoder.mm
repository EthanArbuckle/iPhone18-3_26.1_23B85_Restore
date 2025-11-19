@interface MTLLegacySVRenderCommandEncoder
- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6;
- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parallelEncoder:(id)a4 encoderID:(unsigned int)a5;
- (id).cxx_construct;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (void)_useResourceCommon:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
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
- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 forStage:(unint64_t)a5;
- (void)setDepthStencilState:(id)a3;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFragmentReportBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setMeshReportBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setMeshVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setObjectReportBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setObjectVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setRenderPipelineStateBuffers:(id)a3;
- (void)setTessellationControlPointIndexBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setTileReportBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexReportBuffer:(id)a3 offset:(unint64_t)a4;
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

@implementation MTLLegacySVRenderCommandEncoder

- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6
{
  v12.receiver = self;
  v12.super_class = MTLLegacySVRenderCommandEncoder;
  v8 = [(MTLToolsRenderCommandEncoder *)&v12 initWithRenderCommandEncoder:a3 parent:a4 descriptor:a5];
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = a4;
    *(v8 + 1109) = 0;
    v10 = *(v8 + 3) + 264;
    *(v8 + 1105) = v10;
    *(v8 + 2216) = a6;
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

- (MTLLegacySVRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parallelEncoder:(id)a4 encoderID:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVRenderCommandEncoder;
  v7 = [(MTLToolsRenderCommandEncoder *)&v10 initWithRenderCommandEncoder:a3 parent:?];
  if (v7)
  {
    *(v7 + 8) = [a4 commandBuffer];
    *(v7 + 1109) = 3;
    v8 = *(v7 + 3) + 264;
    *(v7 + 1105) = v8;
    v7[62] = (*(v8 + 20) & 0x200000001) != 0;
    *(v7 + 2216) = a5;
    *(v7 + 2217) = 0;
    MTLGPUDebugStageBufferHandles::clear((v7 + 72));
    if ((*(*(v7 + 1105) + 22) & 0x80) == 0)
    {
      [v7 _initBufferArgumentData:*(v7 + 3)];
    }
  }

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(MTLToolsCommandEncoder *)self commandBuffer];

  return [(MTLToolsRetainingContainer *)v6 temporaryBufferWithBytes:a3 length:a4];
}

- (id)temporaryBufferWithLength:(unint64_t)a3
{
  v4 = [(MTLToolsCommandEncoder *)self commandBuffer];

  return [(MTLToolsRetainingContainer *)v4 temporaryBufferWithLength:a3];
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
      v3 = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline fragmentMaxCallStackDepth];
      baseObject = self->super.super.super._baseObject;
      options = self->_options;
      LODWORD(v77) = v3;
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
      v7 = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline tileMaxCallStackDepth];
      v8 = self->super.super.super._baseObject;
      v9 = self->_options;
      LODWORD(v77) = v7;
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
      v11 = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline objectMaxCallStackDepth];
      v12 = self->super.super.super._baseObject;
      v13 = self->_options;
      LODWORD(v77) = v11;
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
      v15 = [(MTLLegacySVRenderPipelineState *)self->_currentPipeline meshMaxCallStackDepth];
      v16 = self->super.super.super._baseObject;
      v17 = self->_options;
      LODWORD(v77) = v15;
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
    v21 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] activeThreadgroupMask];
    v22 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] threadgroupArgumentOffset];
    if (v20)
    {
      if (self->_meshThreadgroup.needsFlush)
      {
        LODWORD(v77) = v21;
        v23 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_meshThreadgroup, &v77, v22);
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

  v26 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] activeThreadgroupMask];
  v27 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] activeThreadgroupMask];
  if (v20 && self->_tileThreadgroup.needsFlush)
  {
    LODWORD(v77) = v27 | v26;
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
    v49 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline vertexDebugInstrumentationData] bufferAccessMask];
    if (v48 == 1)
    {
      v50 = v49;
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
    v52 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] bufferAccessMask];
    if (v51 == 1)
    {
      v53 = v52;
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
    v55 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] bufferAccessMask];
    if (objectStageActive)
    {
      v56 = v55;
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
    v58 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] bufferAccessMask];
    if (v57 == 1)
    {
      v59 = v58;
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
    v61 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] bufferAccessMask];
    if (v60 == 1)
    {
      v62 = v61;
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
    v34 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline vertexDebugInstrumentationData] bufferAccessMask];
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
          v77 = v34;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::VertexEncoderClass>>(p_vertexHandles, &v77, self, 20, 23);
        }
      }

      v63 = *(&self->super.super.super.super.isa + v76);
      v64 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] bufferAccessMask];
      if (v63 == 1)
      {
        v65 = v64;
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
      v67 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] bufferAccessMask];
      if (v66)
      {
        v68 = v67;
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
      v70 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] bufferAccessMask];
      if (v69 == 1)
      {
        v71 = v70;
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
      v73 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] bufferAccessMask];
      if (v72 == 1)
      {
        v74 = v73;
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
          v77 = v34;
          MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::VertexEncoderClass>>(p_vertexHandles, &v77, self);
        }
      }

      v36 = *(&self->super.super.super.super.isa + v76);
      v37 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline fragmentDebugInstrumentationData] bufferAccessMask];
      if (v36 == 1)
      {
        v38 = v37;
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
      v40 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline tileDebugInstrumentationData] bufferAccessMask];
      if (v39)
      {
        v41 = v40;
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
      v43 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline objectDebugInstrumentationData] bufferAccessMask];
      if (v42 == 1)
      {
        v44 = v43;
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
      v46 = [(MTLDebugInstrumentationData *)[(MTLToolsRenderPipelineState *)self->_currentPipeline meshDebugInstrumentationData] bufferAccessMask];
      if (v45 == 1)
      {
        v47 = v46;
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

- (void)setTessellationControlPointIndexBuffer:(id)a3 offset:(unint64_t)a4
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:1 stages:1];
  }

  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    v7 = [a3 handleForOffset:a4];
    [(MTLToolsObject *)self->super.super.super._baseObject setVertexBytes:&v7 length:8 atIndex:13];
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  -[MTLToolsObject setVertexBuffer:offset:atIndex:](self->super.super.super._baseObject, "setVertexBuffer:offset:atIndex:", [a3 baseObject], a4, 13);
  if (a3)
  {
LABEL_7:
    [(MTLLegacySVRenderCommandEncoder *)self useResource:a3 usage:1 stages:1];
    [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
  }
}

- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 forStage:(unint64_t)a5
{
  if ((*(&self->_options->var0 + 2) & 1) == 0)
  {
    return;
  }

  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:a3 offset:0 atIndex:5];
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:a4 offset:0 atIndex:6];
      self->_vertexBufferUsageTable = a3;
      v8 = 9008;
      goto LABEL_18;
    }

    if (a5 != 2)
    {
      return;
    }

    [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:a3 offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:a4 offset:0 atIndex:6];
    self->_fragmentBufferUsageTable = a3;
    self->_fragmentTextureUsageTable = a4;
    goto LABEL_11;
  }

  if (a5 == 4)
  {
LABEL_11:
    if ([(MTLToolsDevice *)self->super.super.super._device supportsTileShaders])
    {
      [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:a3 offset:0 atIndex:5];
      baseObject = self->super.super.super._baseObject;

      [(MTLToolsObject *)baseObject setTileBuffer:a4 offset:0 atIndex:6];
    }

    return;
  }

  if (a5 == 8)
  {
    if (![(MTLToolsDevice *)self->super.super.super._device supportsMeshShaders])
    {
      return;
    }

    [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:a3 offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setObjectBuffer:a4 offset:0 atIndex:6];
    self->_objectBufferUsageTable = a3;
    v8 = 9040;
    goto LABEL_18;
  }

  if (a5 == 16 && [(MTLToolsDevice *)self->super.super.super._device supportsMeshShaders])
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:a3 offset:0 atIndex:5];
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:a4 offset:0 atIndex:6];
    self->_meshBufferUsageTable = a3;
    v8 = 9056;
LABEL_18:
    *(&self->super.super.super.super.isa + v8) = a4;
  }
}

- (void)setVertexReportBuffer:(id)a3 offset:(unint64_t)a4
{
  p_vertexReportBuffer = &self->_vertexReportBuffer;
  v8 = a3;

  p_vertexReportBuffer->buffer = a3;
  p_vertexReportBuffer->offset = a4;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setVertexBuffer:v10 offset:a4 atIndex:v11];
}

- (void)setFragmentReportBuffer:(id)a3 offset:(unint64_t)a4
{
  p_fragmentReportBuffer = &self->_fragmentReportBuffer;
  v8 = a3;

  p_fragmentReportBuffer->buffer = a3;
  p_fragmentReportBuffer->offset = a4;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setFragmentBuffer:v10 offset:a4 atIndex:v11];
}

- (void)setTileReportBuffer:(id)a3 offset:(unint64_t)a4
{
  p_tileReportBuffer = &self->_tileReportBuffer;
  v8 = a3;

  p_tileReportBuffer->buffer = a3;
  p_tileReportBuffer->offset = a4;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setTileBuffer:v10 offset:a4 atIndex:v11];
}

- (void)setObjectReportBuffer:(id)a3 offset:(unint64_t)a4
{
  p_objectReportBuffer = &self->_objectReportBuffer;
  v8 = a3;

  p_objectReportBuffer->buffer = a3;
  p_objectReportBuffer->offset = a4;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setObjectBuffer:v10 offset:a4 atIndex:v11];
}

- (void)setMeshReportBuffer:(id)a3 offset:(unint64_t)a4
{
  p_meshReportBuffer = &self->_meshReportBuffer;
  v8 = a3;

  p_meshReportBuffer->buffer = a3;
  p_meshReportBuffer->offset = a4;
  baseObject = self->super.super.super._baseObject;
  v10 = [a3 baseObject];
  if ((*&self->_options->var0 & 0x10000) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  [(MTLToolsObject *)baseObject setMeshBuffer:v10 offset:a4 atIndex:v11];
}

- (void)setRenderPipelineStateBuffers:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
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
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [a3 binaryFunctionData];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (*(v17 + 8))
          {
            [(MTLToolsCommandEncoder *)self addRetainedObject:?];
            [(MTLLegacySVRenderCommandEncoder *)self useResource:*(v17 + 8) usage:1];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    if (v5)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v5];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v5 usage:1 stages:1];
    }

    if (v6)
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:v6];
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v6 usage:1 stages:2];
    }

    if (*(&self->_enableUseResourceValidation + 1))
    {
      v22 = [v5 handleForOffset:0];
      [(MTLToolsObject *)self->super.super.super._baseObject setVertexBytes:&v22 length:8 atIndex:12];
    }

    if (self->_enableUseResourceValidation)
    {
      v22 = [v6 handleForOffset:0];
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

  if (v5)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setVertexBuffer:v5 offset:0 atIndex:12];
  }

  if (v6)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setFragmentBuffer:v6 offset:0 atIndex:12];
  }

  if (v7)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setTileBuffer:v7 offset:0 atIndex:12];
  }

  if (v8)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject setMeshBuffer:v8 offset:0 atIndex:12];
  }

  if (!v9)
  {
LABEL_60:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  baseObject = self->super.super.super._baseObject;
  v11 = *MEMORY[0x277D85DE8];

  [(MTLToolsObject *)baseObject setObjectBuffer:v9 offset:0 atIndex:12];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:1];
  }

  MTLGPUDebugStageBufferHandles::setBuffer(&self->_vertexHandles, a3, a4, a5, a6);

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

  [(MTLLegacySVRenderCommandEncoder *)self setVertexBuffers:a3 offsets:a4 attributeStrides:v10 withRange:location, length];
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
      [(MTLLegacySVRenderCommandEncoder *)self setVertexBuffer:v12 offset:v14 attributeStride:v16 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v9 = [(MTLLegacySVRenderCommandEncoder *)self temporaryBufferWithBytes:a3 length:a4];

  [(MTLLegacySVRenderCommandEncoder *)self setVertexBuffer:v9 offset:0 attributeStride:a5 atIndex:a6];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_fragmentHandles, a3, a4, a5);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:2];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
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
      [(MTLLegacySVRenderCommandEncoder *)self setFragmentBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:a3 length:a4];

  [(MTLLegacySVRenderCommandEncoder *)self setFragmentBuffer:v7 offset:0 atIndex:a5];
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_tileHandles, a3, a4, a5);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:4];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
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
      [(MTLLegacySVRenderCommandEncoder *)self setTileBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:a3 length:a4];

  [(MTLLegacySVRenderCommandEncoder *)self setTileBuffer:v7 offset:0 atIndex:a5];
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
    v8.super_class = MTLLegacySVRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v8 setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5];
  }
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_objectHandles, a3, a4, a5);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:8];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
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
      [(MTLLegacySVRenderCommandEncoder *)self setObjectBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:a3 length:a4];

  [(MTLLegacySVRenderCommandEncoder *)self setObjectBuffer:v7 offset:0 atIndex:a5];
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  MTLGPUDebugStageBufferHandles::setBuffer(&self->_meshHandles, a3, a4, a5);
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:3 stages:16];
  }

  [(MTLToolsCommandEncoder *)self addRetainedObject:a3];
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
      [(MTLLegacySVRenderCommandEncoder *)self setMeshBuffer:v10 offset:v12 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] temporaryBufferWithBytes:a3 length:a4];

  [(MTLLegacySVRenderCommandEncoder *)self setMeshBuffer:v7 offset:0 atIndex:a5];
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a3)
  {
    if (*(&self->_enableUseResourceValidation + 4))
    {
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:a3 usage:3 stages:1];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:1];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:a3 usage:3 stages:2];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:2];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:a3 usage:3 stages:4];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:4];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:a3 usage:3 stages:16];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:16];
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:a3 usage:3 stages:8];
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
          [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:v8 usage:3 stages:8];
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
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawPrimitives:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v11.receiver = self;
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6 indirectBuffer:a7 indirectBufferOffset:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v17.receiver = self;
  v17.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:a8 baseVertex:a9 baseInstance:a10];
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings:a3];
  v12.receiver = self;
  v12.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 drawPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 indirectBuffer:a6 indirectBufferOffset:a5];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v16.receiver = self;
  v16.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:a6 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:a9];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    [(MTLLegacySVRenderCommandEncoder *)self setTessellationControlPointIndexBuffer:a6 offset:a7];

    [(MTLLegacySVRenderCommandEncoder *)self drawPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 indirectBuffer:a8 indirectBufferOffset:a9];
  }

  else
  {
    [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
    v16.receiver = self;
    v16.super_class = MTLLegacySVRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v16 drawIndexedPatches:a3 patchIndexBuffer:a4 patchIndexBufferOffset:a5 controlPointIndexBuffer:a6 controlPointIndexBufferOffset:a7 indirectBuffer:a8 indirectBufferOffset:a9];
  }
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  if ((*(&self->_options->var0 + 2) & 0x80) != 0)
  {
    [(MTLLegacySVRenderCommandEncoder *)self setTessellationControlPointIndexBuffer:a8 offset:a9];

    [(MTLLegacySVRenderCommandEncoder *)self drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:a6 patchIndexBufferOffset:a7 instanceCount:a10 baseInstance:?];
  }

  else
  {
    [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
    v18.receiver = self;
    v18.super_class = MTLLegacySVRenderCommandEncoder;
    [(MTLToolsRenderCommandEncoder *)&v18 drawIndexedPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:a6 patchIndexBufferOffset:a7 controlPointIndexBuffer:a8 controlPointIndexBufferOffset:a9 instanceCount:a10 baseInstance:a11];
  }
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v6 = *a3;
  v5.receiver = self;
  v5.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v7 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0.var2;
  v10[0] = *&a4->var0.var0;
  v10[1] = v8;
  v10[2] = *&a4->var1.var1;
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

- (void)dispatchThreadsPerTile:(id *)a3 withCondition:(int64_t)a4
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v8 = *a3;
  v7.receiver = self;
  v7.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 dispatchThreadsPerTile:&v8 withCondition:a4];
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  [(MTLLegacySVRenderCommandEncoder *)self flushBindings];
  v13 = *a5;
  v12 = *a6;
  v11.receiver = self;
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 drawMeshThreadgroupsWithIndirectBuffer:a3 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)restoreInternalState:(id)a3
{
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 inheritsBuffers];
  v7 = [a3 inheritsPipelineState];
  if (!v6 || (v7 & 1) == 0)
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

    [v5 setVertexAmplificationCount:count viewMappings:mappings];
  }
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = LODWORD(a4.location) | (LODWORD(a4.length) << 32);
  v10 = 1;
  [(MTLLegacySVRenderCommandEncoder *)self prepareExecuteIndirect:a3 variant:&v9];
  v8.receiver = self;
  v8.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v8 executeCommandsInBuffer:a3 withRange:location, length];
  [(MTLLegacySVRenderCommandEncoder *)self restoreInternalState:a3];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v10[0] = a4;
  v10[1] = a5;
  v11 = 0;
  [(MTLLegacySVRenderCommandEncoder *)self prepareExecuteIndirect:a3 variant:v10];
  v9.receiver = self;
  v9.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
  [(MTLLegacySVRenderCommandEncoder *)self restoreInternalState:a3];
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
  v7.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)useResourceInternal:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  if (a5.var1)
  {
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a3 usage:a4 stages:a5.var0.var1];
  }

  else
  {
    [(MTLToolsObject *)self->super.super.super._baseObject useResource:a3 usage:a4, a5.var0.var1];
  }
}

- (void)_useResourceCommon:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  v5 = *&a5.var1;
  var1 = a5.var0.var1;
  -[MTLLegacySVRenderCommandEncoder useResourceInternal:usage:stages:](self, "useResourceInternal:usage:stages:", [a3 baseObject], a4, a5.var0.var1, *&a5.var1);
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
      [(MTLLegacySVCommandBuffer *)self->_commandBuffer markBuffer:a3 usage:a4 stages:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MTLLegacySVCommandBuffer *)self->_commandBuffer markTexture:a3 usage:a4 stages:v10];
      }
    }
  }

  [a3 useWithRenderEncoder:self usage:a4 stages:{var1, v5}];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v9 = *a3++;
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v9 usage:a5];
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
      [(MTLLegacySVRenderCommandEncoder *)self useResource:v11 usage:a5 stages:a6];
      --v8;
    }

    while (v8);
  }
}

- (void)useHeap:(id)a3
{
  if (*(&self->_enableUseResourceValidation + 4))
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markHeap:a3 stages:31];
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
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer markHeap:a3 stages:a4];
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
      [(MTLLegacySVRenderCommandEncoder *)self useHeap:v7];
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
      [(MTLLegacySVRenderCommandEncoder *)self useHeap:v9 stages:a5];
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
  v5.super_class = MTLLegacySVRenderCommandEncoder;
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
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 useResidencySets:a3 count:a4];
}

- (void)setDepthStencilState:(id)a3
{
  self->_currentDepthStencil = a3;
  v3.receiver = self;
  v3.super_class = MTLLegacySVRenderCommandEncoder;
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
  v7 = !*(&self->_enableUseResourceValidation + 1) && [a3 meshFunctionData] != 0;
  *(&self->_enableUseResourceValidation + 3) = v7;
  if (*(&self->_enableUseResourceValidation + 2) || v7)
  {
    [(MTLLegacySVCommandBuffer *)self->_commandBuffer beginUseOfMeshShadersInEncoder:self];
    if (*(&self->_enableUseResourceValidation + 3) && self->_currentPipeline != a3)
    {
      v8 = [a3 meshDebugInstrumentationData];
      if ([v8 activeThreadgroupMask] || objc_msgSend(v8, "threadgroupArgumentOffset"))
      {
        self->_meshThreadgroup.needsFlush = 1;
      }
    }
  }

  if (self->_meshStageActive && self->_currentPipeline != a3)
  {
    v9 = [a3 tileDebugInstrumentationData];
    v10 = [a3 fragmentDebugInstrumentationData];
    if ([v9 activeThreadgroupMask] || objc_msgSend(v10, "activeThreadgroupMask"))
    {
      self->_tileThreadgroup.needsFlush = 1;
    }
  }

  if (self->_currentPipeline != a3)
  {
    if ((*(&self->_options->var0 + 2) & 0x40) != 0)
    {
      [(MTLLegacySVRenderCommandEncoder *)self setRenderPipelineStateBuffers:a3];
    }

    self->_vertexHandles.needsFlush |= *(&self->_enableUseResourceValidation + 1);
    self->_fragmentHandles.needsFlush |= self->_enableUseResourceValidation;
    self->_tileHandles.needsFlush |= self->_objectStageActive;
  }

  self->_currentPipeline = a3;
  v11.receiver = self;
  v11.super_class = MTLLegacySVRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v11 setRenderPipelineState:a3];
}

- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_vertexHandles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:1];
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
      [(MTLLegacySVRenderCommandEncoder *)self setVertexVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_fragmentHandles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:2];
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
      [(MTLLegacySVRenderCommandEncoder *)self setFragmentVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_tileHandles, a3, a4);
  if (a3)
  {
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
      [(MTLLegacySVRenderCommandEncoder *)self setTileVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setObjectVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_objectHandles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:8];
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
      [(MTLLegacySVRenderCommandEncoder *)self setObjectVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setMeshVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_meshHandles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:16];
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
      [(MTLLegacySVRenderCommandEncoder *)self setMeshVisibleFunctionTable:v8 atBufferIndex:location++];
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
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:1];
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
      [(MTLLegacySVRenderCommandEncoder *)self setVertexIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  MTLGPUDebugStageBufferHandles::setResource(&self->_fragmentHandles, a3, a4);
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:2];
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
      [(MTLLegacySVRenderCommandEncoder *)self setFragmentIntersectionFunctionTable:v8 atBufferIndex:location++];
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
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:4];
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
      [(MTLLegacySVRenderCommandEncoder *)self setTileIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
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
      [(MTLLegacySVRenderCommandEncoder *)self setObjectIntersectionFunctionTable:v8 atBufferIndex:location++];
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
    baseObject = self->super.super.super._baseObject;
    v7 = *(a3 + 2);

    [(MTLToolsObject *)baseObject useResource:v7 usage:1 stages:16];
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
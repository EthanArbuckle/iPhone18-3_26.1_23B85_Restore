@interface MTLDebugIndirectRenderCommand
- (MTLDebugIndirectRenderCommand)initWithBaseObject:(id)object descriptor:(id)descriptor indexCount:(unint64_t)count indirectCommandBuffer:(id)buffer;
- (void)clearBarrier;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)setBarrier;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
@end

@implementation MTLDebugIndirectRenderCommand

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIndirectRenderCommand;
  [(MTLToolsObject *)&v3 dealloc];
}

- (MTLDebugIndirectRenderCommand)initWithBaseObject:(id)object descriptor:(id)descriptor indexCount:(unint64_t)count indirectCommandBuffer:(id)buffer
{
  v12.receiver = self;
  v12.super_class = MTLDebugIndirectRenderCommand;
  v9 = [(MTLToolsObject *)&v12 initWithBaseObject:object parent:buffer];
  v10 = v9;
  if (v9)
  {
    v9->_desc = descriptor;
    v9->_iCB = buffer;
    v10->_index = count;
  }

  return v10;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxVertexBufferBindCount]<= index)
  {
    indexCopy = index;
    maxVertexBufferBindCount = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxVertexBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:indexCopy])
  {
    _MTLMessageContextPush_();
  }

  if (stride != -1 && ![(MTLIndirectCommandBufferDescriptor *)self->_desc supportDynamicAttributeStride])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxFragmentBufferBindCount]<= index)
  {
    indexCopy = index;
    maxFragmentBufferBindCount = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxFragmentBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:indexCopy])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateMTLPrimitiveTypeWithContext(primitives, 0);
  if (!instanceCount)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 2) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateIndexBufferWithContext(self->super.super._device, type, buffer, "indexBuffer", offset, 1, count, v17);
  _MTLDebugValidateMTLPrimitiveTypeWithContext(primitives, 0);
  if (!instanceCount)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)state
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritPipelineState])
  {
    _MTLMessageContextPush_();
  }

  if (([objc_msgSend(state "baseObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 4) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!instanceCount)
  {
    _MTLMessageContextPush_();
  }

  if (patches >= 0x21)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super._device, buffer, "patchIndexBuffer", offset, 1, start, count, instance, instanceCount, v19);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!instanceCount)
  {
    _MTLMessageContextPush_();
  }

  if (patches >= 0x21)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super._device, buffer, "patchIndexBuffer", offset, 1, start, count, instance, instanceCount, v21);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxObjectBufferBindCount]<= index)
  {
    indexCopy = index;
    maxObjectBufferBindCount = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxObjectBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:indexCopy])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxMeshBufferBindCount]<= index)
  {
    indexCopy = index;
    maxMeshBufferBindCount = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxMeshBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:indexCopy])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setBarrier
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x180) == 0)
  {
    [MTLDebugIndirectRenderCommand setBarrier];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBarrier];
}

- (void)clearBarrier
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x180) == 0)
  {
    [MTLDebugIndirectRenderCommand clearBarrier];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject clearBarrier];
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x80) == 0)
  {
    [MTLDebugIndirectRenderCommand drawMeshThreadgroups:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v14 = *&threadgroups->var0;
  var2 = threadgroups->var2;
  v12 = *&threadgroup->var0;
  v13 = threadgroup->var2;
  v10 = *&meshThreadgroup->var0;
  v11 = meshThreadgroup->var2;
  [baseObject drawMeshThreadgroups:&v14 threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x100) == 0)
  {
    [MTLDebugIndirectRenderCommand drawMeshThreads:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v14 = *&threads->var0;
  var2 = threads->var2;
  v12 = *&threadgroup->var0;
  v13 = threadgroup->var2;
  v10 = *&meshThreadgroup->var0;
  v11 = meshThreadgroup->var2;
  [baseObject drawMeshThreads:&v14 threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxObjectThreadgroupMemoryBindCount]<= index)
  {
    [MTLDebugIndirectRenderCommand setObjectThreadgroupMemoryLength:? atIndex:?];
  }

  v7.receiver = self;
  v7.super_class = MTLDebugIndirectRenderCommand;
  [(MTLToolsIndirectRenderCommand *)&v7 setObjectThreadgroupMemoryLength:length atIndex:index];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthBias])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v10 = bias;
  *&v11 = scale;
  *&v12 = clamp;
  [baseObject setDepthBias:v10 slopeScale:v11 clamp:v12];
}

- (void)setDepthStencilState:(id)state
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthStencilState])
  {
    _MTLMessageContextPush_();
    if (state)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  if (!state)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  device = [(MTLIndirectCommandBufferSPI *)self->_iCB device];
  if (device != [state device])
  {
    goto LABEL_5;
  }

LABEL_6:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthClipMode:(unint64_t)mode
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthClipMode])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setCullMode:(unint64_t)mode
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritCullMode])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritFrontFacingWinding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritTriangleFillMode])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritScissorRects])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxScissorRectCount]< count)
  {
    [(MTLIndirectCommandBufferDescriptor *)self->_desc maxScissorRectCount];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setScissorRect:(id *)rect
{
  v8 = 0;
  memset(&v7[2], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritScissorRects])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = *&rect->var2;
  v7[0] = *&rect->var0;
  v7[1] = v6;
  [baseObject setScissorRect:v7];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritViewports])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxViewportCount]< count)
  {
    [(MTLIndirectCommandBufferDescriptor *)self->_desc maxViewportCount];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setViewport:(id *)viewport
{
  v8 = 0;
  memset(&v7[3], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (![(MTLIndirectCommandBufferDescriptor *)self->_desc allowOverrideRenderStates]&& [(MTLIndirectCommandBufferDescriptor *)self->_desc inheritViewports])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = *&viewport->var2;
  v7[0] = *&viewport->var0;
  v7[1] = v6;
  v7[2] = *&viewport->var4;
  [baseObject setViewport:v7];
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBlendColor])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v12 = red;
  *&v13 = green;
  *&v14 = blue;
  *&v15 = alpha;
  [baseObject setBlendColorRed:v12 green:v13 blue:v14 alpha:v15];
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthTestBounds])
  {
    _MTLMessageContextPush_();
  }

  if (maxBound > 1.0 || bound < 0.0 || bound > maxBound)
  {
    boundCopy = bound;
    maxBoundCopy = maxBound;
    _MTLMessageContextPush_();
  }

  v7 = [(MTLToolsObject *)self baseObject:*&boundCopy];
  *&v8 = bound;
  *&v9 = maxBound;
  [v7 setDepthTestMinBound:v8 maxBound:v9];
}

@end
@interface MTLDebugIndirectRenderCommand
- (MTLDebugIndirectRenderCommand)initWithBaseObject:(id)a3 descriptor:(id)a4 indexCount:(unint64_t)a5 indirectCommandBuffer:(id)a6;
- (void)clearBarrier;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11 tessellationFactorBuffer:(id)a12 tessellationFactorBufferOffset:(unint64_t)a13 tessellationFactorBufferInstanceStride:(unint64_t)a14;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9 tessellationFactorBuffer:(id)a10 tessellationFactorBufferOffset:(unint64_t)a11 tessellationFactorBufferInstanceStride:(unint64_t)a12;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)setBarrier;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
@end

@implementation MTLDebugIndirectRenderCommand

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIndirectRenderCommand;
  [(MTLToolsObject *)&v3 dealloc];
}

- (MTLDebugIndirectRenderCommand)initWithBaseObject:(id)a3 descriptor:(id)a4 indexCount:(unint64_t)a5 indirectCommandBuffer:(id)a6
{
  v12.receiver = self;
  v12.super_class = MTLDebugIndirectRenderCommand;
  v9 = [(MTLToolsObject *)&v12 initWithBaseObject:a3 parent:a6];
  v10 = v9;
  if (v9)
  {
    v9->_desc = a4;
    v9->_iCB = a6;
    v10->_index = a5;
  }

  return v10;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxVertexBufferBindCount]<= a6)
  {
    v11 = a6;
    v12 = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxVertexBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:v11])
  {
    _MTLMessageContextPush_();
  }

  if (a5 != -1 && ![(MTLIndirectCommandBufferDescriptor *)self->_desc supportDynamicAttributeStride])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxFragmentBufferBindCount]<= a5)
  {
    v9 = a5;
    v10 = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxFragmentBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:v9])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateMTLPrimitiveTypeWithContext(a3, 0);
  if (!a6)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 2) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateIndexBufferWithContext(self->super.super._device, a5, a6, "indexBuffer", a7, 1, a4, v17);
  _MTLDebugValidateMTLPrimitiveTypeWithContext(a3, 0);
  if (!a8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritPipelineState])
  {
    _MTLMessageContextPush_();
  }

  if (([objc_msgSend(a3 "baseObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9 tessellationFactorBuffer:(id)a10 tessellationFactorBufferOffset:(unint64_t)a11 tessellationFactorBufferInstanceStride:(unint64_t)a12
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 4) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!a8)
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 0x21)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super._device, a6, "patchIndexBuffer", a7, 1, a4, a5, a9, a8, v19);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11 tessellationFactorBuffer:(id)a12 tessellationFactorBufferOffset:(unint64_t)a13 tessellationFactorBufferInstanceStride:(unint64_t)a14
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!a10)
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 0x21)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super._device, a6, "patchIndexBuffer", a7, 1, a4, a5, a11, a10, v21);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxObjectBufferBindCount]<= a5)
  {
    v9 = a5;
    v10 = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxObjectBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:v9])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxMeshBufferBindCount]<= a5)
  {
    v9 = a5;
    v10 = [(MTLIndirectCommandBufferDescriptor *)self->_desc maxMeshBufferBindCount];
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers:v9])
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

  v3 = [(MTLToolsObject *)self baseObject];

  [v3 setBarrier];
}

- (void)clearBarrier
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x180) == 0)
  {
    [MTLDebugIndirectRenderCommand clearBarrier];
  }

  v3 = [(MTLToolsObject *)self baseObject];

  [v3 clearBarrier];
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x80) == 0)
  {
    [MTLDebugIndirectRenderCommand drawMeshThreadgroups:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v14 = *&a3->var0;
  var2 = a3->var2;
  v12 = *&a4->var0;
  v13 = a4->var2;
  v10 = *&a5->var0;
  v11 = a5->var2;
  [v9 drawMeshThreadgroups:&v14 threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x100) == 0)
  {
    [MTLDebugIndirectRenderCommand drawMeshThreads:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v14 = *&a3->var0;
  var2 = a3->var2;
  v12 = *&a4->var0;
  v13 = a4->var2;
  v10 = *&a5->var0;
  v11 = a5->var2;
  [v9 drawMeshThreads:&v14 threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxObjectThreadgroupMemoryBindCount]<= a4)
  {
    [MTLDebugIndirectRenderCommand setObjectThreadgroupMemoryLength:? atIndex:?];
  }

  v7.receiver = self;
  v7.super_class = MTLDebugIndirectRenderCommand;
  [(MTLToolsIndirectRenderCommand *)&v7 setObjectThreadgroupMemoryLength:a3 atIndex:a4];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthBias])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9 = [(MTLToolsObject *)self baseObject];
  *&v10 = a3;
  *&v11 = a4;
  *&v12 = a5;
  [v9 setDepthBias:v10 slopeScale:v11 clamp:v12];
}

- (void)setDepthStencilState:(id)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthStencilState])
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [(MTLIndirectCommandBufferSPI *)self->_iCB device];
  if (v5 != [a3 device])
  {
    goto LABEL_5;
  }

LABEL_6:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthClipMode:(unint64_t)a3
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

- (void)setCullMode:(unint64_t)a3
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

- (void)setFrontFacingWinding:(unint64_t)a3
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

- (void)setTriangleFillMode:(unint64_t)a3
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

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritScissorRects])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxScissorRectCount]< a4)
  {
    [(MTLIndirectCommandBufferDescriptor *)self->_desc maxScissorRectCount];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setScissorRect:(id *)a3
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
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = *&a3->var2;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  [v5 setScissorRect:v7];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritViewports])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxViewportCount]< a4)
  {
    [(MTLIndirectCommandBufferDescriptor *)self->_desc maxViewportCount];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setViewport:(id *)a3
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
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = *&a3->var2;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  v7[2] = *&a3->var4;
  [v5 setViewport:v7];
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBlendColor])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v11 = [(MTLToolsObject *)self baseObject];
  *&v12 = a3;
  *&v13 = a4;
  *&v14 = a5;
  *&v15 = a6;
  [v11 setBlendColorRed:v12 green:v13 blue:v14 alpha:v15];
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritDepthTestBounds])
  {
    _MTLMessageContextPush_();
  }

  if (a4 > 1.0 || a3 < 0.0 || a3 > a4)
  {
    v10 = a3;
    v11 = a4;
    _MTLMessageContextPush_();
  }

  v7 = [(MTLToolsObject *)self baseObject:*&v10];
  *&v8 = a3;
  *&v9 = a4;
  [v7 setDepthTestMinBound:v8 maxBound:v9];
}

@end
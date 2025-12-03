@interface VFXRECachedRenderCommandEncoder
- (VFXRECachedRenderCommandEncoder)init;
- (id).cxx_construct;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)setDepthStencilState:(id)state;
- (void)setEncoder:(id)encoder state:(void *)state;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setViewport:(id *)viewport;
@end

@implementation VFXRECachedRenderCommandEncoder

- (VFXRECachedRenderCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = VFXRECachedRenderCommandEncoder;
  return [(VFXRECachedRenderCommandEncoder *)&v3 init];
}

- (void)setEncoder:(id)encoder state:(void *)state
{
  objc_storeStrong(&self->_encoder, encoder);
  encoderCopy = encoder;
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(v8, encoderCopy);

  re::mtl::RenderCommandEncoder::operator=(&self->_encoderCPP.m_object, v8);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v8);
  self->_encoderState = state;
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  windingCopy = winding;
  encoderState = self->_encoderState;
  if ((*encoderState & 0x10) == 0 || encoderState[20] != winding)
  {
    (*(self->_encoderCPP.var0 + 17))(*self->_encoderCPP.var0, sel_setFrontFacingWinding_, winding);
    encoderState[20] = windingCopy;
    *encoderState |= 0x10u;
  }
}

- (void)setDepthStencilState:(id)state
{
  stateCopy = state;
  re::EncoderState::setDepthStencilState(self->_encoderState, &stateCopy, &self->_encoderCPP);
}

- (void)setRenderPipelineState:(id)state
{
  stateCopy = state;
  encoderState = self->_encoderState;
  v7 = stateCopy;
  v6 = stateCopy;
  re::EncoderState::setRenderPipelineState(encoderState, &v7, &self->_encoderCPP);
  if (v7)
  {
  }
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  encoder = self->_encoder;
  v8 = *threadgroups;
  v7 = *threadgroup;
  v6 = *meshThreadgroup;
  [(MTLRenderCommandEncoder *)encoder drawMeshThreadgroups:&v8 threadsPerObjectThreadgroup:&v7 threadsPerMeshThreadgroup:&v6];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  encoder = self->_encoder;
  v8 = *threadgroup;
  v7 = *meshThreadgroup;
  [(MTLRenderCommandEncoder *)encoder drawMeshThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerObjectThreadgroup:&v8 threadsPerMeshThreadgroup:&v7];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  encoder = self->_encoder;
  v8 = *threads;
  v7 = *threadgroup;
  v6 = *meshThreadgroup;
  [(MTLRenderCommandEncoder *)encoder drawMeshThreads:&v8 threadsPerObjectThreadgroup:&v7 threadsPerMeshThreadgroup:&v6];
}

- (void)setScissorRect:(id *)rect
{
  encoder = self->_encoder;
  v4 = *&rect->var2;
  v5[0] = *&rect->var0;
  v5[1] = v4;
  [(MTLRenderCommandEncoder *)encoder setScissorRect:v5];
}

- (void)setViewport:(id *)viewport
{
  encoder = self->_encoder;
  v4 = *&viewport->var2;
  v5[0] = *&viewport->var0;
  v5[1] = v4;
  v5[2] = *&viewport->var4;
  [(MTLRenderCommandEncoder *)encoder setViewport:v5];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  encoder = self->_encoder;
  v4 = *tile;
  [(MTLRenderCommandEncoder *)encoder dispatchThreadsPerTile:&v4];
}

- (id).cxx_construct
{
  self->_encoderCPP.m_object = 0;
  v3 = re::globalAllocators(self);
  v4 = (*(*v3[2] + 32))(v3[2], 272, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0u;
  self->_encoderCPP.var0 = v4;
  return self;
}

@end
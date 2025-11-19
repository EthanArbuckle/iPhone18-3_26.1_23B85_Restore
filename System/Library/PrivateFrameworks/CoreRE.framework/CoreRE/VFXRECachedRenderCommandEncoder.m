@interface VFXRECachedRenderCommandEncoder
- (VFXRECachedRenderCommandEncoder)init;
- (id).cxx_construct;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)setDepthStencilState:(id)a3;
- (void)setEncoder:(id)a3 state:(void *)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setViewport:(id *)a3;
@end

@implementation VFXRECachedRenderCommandEncoder

- (VFXRECachedRenderCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = VFXRECachedRenderCommandEncoder;
  return [(VFXRECachedRenderCommandEncoder *)&v3 init];
}

- (void)setEncoder:(id)a3 state:(void *)a4
{
  objc_storeStrong(&self->_encoder, a3);
  v7 = a3;
  re::mtl::RenderCommandEncoder::RenderCommandEncoder(v8, v7);

  re::mtl::RenderCommandEncoder::operator=(&self->_encoderCPP.m_object, v8);
  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v8);
  self->_encoderState = a4;
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v3 = a3;
  encoderState = self->_encoderState;
  if ((*encoderState & 0x10) == 0 || encoderState[20] != a3)
  {
    (*(self->_encoderCPP.var0 + 17))(*self->_encoderCPP.var0, sel_setFrontFacingWinding_, a3);
    encoderState[20] = v3;
    *encoderState |= 0x10u;
  }
}

- (void)setDepthStencilState:(id)a3
{
  v4 = a3;
  re::EncoderState::setDepthStencilState(self->_encoderState, &v4, &self->_encoderCPP);
}

- (void)setRenderPipelineState:(id)a3
{
  v4 = a3;
  encoderState = self->_encoderState;
  v7 = v4;
  v6 = v4;
  re::EncoderState::setRenderPipelineState(encoderState, &v7, &self->_encoderCPP);
  if (v7)
  {
  }
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  encoder = self->_encoder;
  v8 = *a3;
  v7 = *a4;
  v6 = *a5;
  [(MTLRenderCommandEncoder *)encoder drawMeshThreadgroups:&v8 threadsPerObjectThreadgroup:&v7 threadsPerMeshThreadgroup:&v6];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  encoder = self->_encoder;
  v8 = *a5;
  v7 = *a6;
  [(MTLRenderCommandEncoder *)encoder drawMeshThreadgroupsWithIndirectBuffer:a3 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v8 threadsPerMeshThreadgroup:&v7];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  encoder = self->_encoder;
  v8 = *a3;
  v7 = *a4;
  v6 = *a5;
  [(MTLRenderCommandEncoder *)encoder drawMeshThreads:&v8 threadsPerObjectThreadgroup:&v7 threadsPerMeshThreadgroup:&v6];
}

- (void)setScissorRect:(id *)a3
{
  encoder = self->_encoder;
  v4 = *&a3->var2;
  v5[0] = *&a3->var0;
  v5[1] = v4;
  [(MTLRenderCommandEncoder *)encoder setScissorRect:v5];
}

- (void)setViewport:(id *)a3
{
  encoder = self->_encoder;
  v4 = *&a3->var2;
  v5[0] = *&a3->var0;
  v5[1] = v4;
  v5[2] = *&a3->var4;
  [(MTLRenderCommandEncoder *)encoder setViewport:v5];
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  encoder = self->_encoder;
  v4 = *a3;
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
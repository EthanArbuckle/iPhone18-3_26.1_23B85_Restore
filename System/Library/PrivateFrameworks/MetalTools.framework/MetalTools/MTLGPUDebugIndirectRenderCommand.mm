@interface MTLGPUDebugIndirectRenderCommand
- (MTLGPUDebugIndirectRenderCommand)initWithIndirectRenderCommand:(id)command commandIndex:(unint64_t)index indirectCommandBuffer:(id)buffer;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
@end

@implementation MTLGPUDebugIndirectRenderCommand

- (MTLGPUDebugIndirectRenderCommand)initWithIndirectRenderCommand:(id)command commandIndex:(unint64_t)index indirectCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugIndirectRenderCommand;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:command parent:buffer];
  if (result)
  {
    result->_commandIndex = index;
  }

  return result;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject setVertexBuffer:baseObject offset:offset attributeStride:stride atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject setFragmentBuffer:baseObject offset:offset atIndex:index];
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject setObjectBuffer:baseObject offset:offset atIndex:index];
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject setMeshBuffer:baseObject offset:offset atIndex:index];
}

- (void)setRenderPipelineState:(id)state
{
  [(MTLToolsObject *)self->super.super._parent setRenderPipelineStateBuffers:state commandIndex:self->_commandIndex];
  baseObject = self->super.super._baseObject;
  baseObject = [state baseObject];

  [(MTLToolsObject *)baseObject setRenderPipelineState:baseObject];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4
{
  v14.receiver = self;
  v14.super_class = MTLGPUDebugIndirectRenderCommand;
  [(MTLToolsIndirectRenderCommand *)&v14 drawIndexedPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset controlPointIndexBuffer:indexBuffer controlPointIndexBufferOffset:bufferOffset instanceCount:instanceCount baseInstance:instance tessellationFactorBuffer:factorBuffer tessellationFactorBufferOffset:factorBufferOffset tessellationFactorBufferInstanceStride:stride];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLGPUDebugIndirectRenderCommand;
  [(MTLToolsObject *)&v2 dealloc];
}

@end
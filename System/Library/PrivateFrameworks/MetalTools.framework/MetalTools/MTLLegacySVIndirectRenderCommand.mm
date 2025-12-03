@interface MTLLegacySVIndirectRenderCommand
- (MTLLegacySVIndirectRenderCommand)initWithIndirectRenderCommand:(id)command commandIndex:(unint64_t)index indirectCommandBuffer:(id)buffer;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4;
- (void)setRenderPipelineState:(id)state;
@end

@implementation MTLLegacySVIndirectRenderCommand

- (MTLLegacySVIndirectRenderCommand)initWithIndirectRenderCommand:(id)command commandIndex:(unint64_t)index indirectCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVIndirectRenderCommand;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:command parent:buffer];
  if (result)
  {
    result->_commandIndex = index;
  }

  return result;
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
  [(MTLToolsObject *)self->super.super._parent setTessellationControlPointIndexBuffer:indexBuffer offset:bufferOffset commandIndex:self->_commandIndex];
  v20.receiver = self;
  v20.super_class = MTLLegacySVIndirectRenderCommand;
  [(MTLToolsIndirectRenderCommand *)&v20 drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:buffer patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance tessellationFactorBuffer:factorBuffer tessellationFactorBufferOffset:factorBufferOffset tessellationFactorBufferInstanceStride:stride];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLLegacySVIndirectRenderCommand;
  [(MTLToolsObject *)&v2 dealloc];
}

@end
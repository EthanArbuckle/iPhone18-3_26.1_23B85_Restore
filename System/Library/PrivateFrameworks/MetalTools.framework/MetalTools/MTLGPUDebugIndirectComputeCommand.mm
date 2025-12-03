@interface MTLGPUDebugIndirectComputeCommand
- (MTLGPUDebugIndirectComputeCommand)initWithIndirectComputeCommand:(id)command commandIndex:(unint64_t)index indirectCommandBuffer:(id)buffer;
- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dealloc;
- (void)reset;
- (void)setComputePipelineState:(id)state;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setStageInRegion:(id *)region;
@end

@implementation MTLGPUDebugIndirectComputeCommand

- (MTLGPUDebugIndirectComputeCommand)initWithIndirectComputeCommand:(id)command commandIndex:(unint64_t)index indirectCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugIndirectComputeCommand;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:command parent:buffer];
  if (result)
  {
    result->_commandIndex = index;
  }

  return result;
}

- (void)reset
{
  [(MTLToolsObject *)self->super.super._parent resetAtIndex:self->_commandIndex];
  baseObject = self->super.super._baseObject;

  [(MTLToolsObject *)baseObject reset];
}

- (void)setStageInRegion:(id *)region
{
  baseObject = self->super.super._baseObject;
  v4 = *&region->var0.var2;
  v5[0] = *&region->var0.var0;
  v5[1] = v4;
  v5[2] = *&region->var1.var1;
  [(MTLToolsObject *)baseObject setStageInRegion:v5];
}

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  baseObject = [buffer baseObject];

  [(MTLToolsObject *)baseObject setKernelBuffer:baseObject offset:offset attributeStride:stride atIndex:index];
}

- (void)setComputePipelineState:(id)state
{
  [(MTLToolsObject *)self->super.super._parent setComputePipelineStateBuffers:state commandIndex:self->_commandIndex];
  baseObject = self->super.super._baseObject;
  baseObject = [state baseObject];

  [(MTLToolsObject *)baseObject setComputePipelineState:baseObject];
}

- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  v6 = *threads;
  v5 = *threadgroup;
  v4.receiver = self;
  v4.super_class = MTLGPUDebugIndirectComputeCommand;
  [(MTLToolsIndirectComputeCommand *)&v4 concurrentDispatchThreads:&v6 threadsPerThreadgroup:&v5];
}

- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v6 = *threadgroups;
  v5 = *threadgroup;
  v4.receiver = self;
  v4.super_class = MTLGPUDebugIndirectComputeCommand;
  [(MTLToolsIndirectComputeCommand *)&v4 concurrentDispatchThreadgroups:&v6 threadsPerThreadgroup:&v5];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLGPUDebugIndirectComputeCommand;
  [(MTLToolsObject *)&v2 dealloc];
}

@end
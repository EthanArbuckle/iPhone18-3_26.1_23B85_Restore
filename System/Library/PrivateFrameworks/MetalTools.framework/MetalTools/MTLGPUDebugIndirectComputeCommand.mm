@interface MTLGPUDebugIndirectComputeCommand
- (MTLGPUDebugIndirectComputeCommand)initWithIndirectComputeCommand:(id)a3 commandIndex:(unint64_t)a4 indirectCommandBuffer:(id)a5;
- (void)concurrentDispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)concurrentDispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dealloc;
- (void)reset;
- (void)setComputePipelineState:(id)a3;
- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setStageInRegion:(id *)a3;
@end

@implementation MTLGPUDebugIndirectComputeCommand

- (MTLGPUDebugIndirectComputeCommand)initWithIndirectComputeCommand:(id)a3 commandIndex:(unint64_t)a4 indirectCommandBuffer:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugIndirectComputeCommand;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a5];
  if (result)
  {
    result->_commandIndex = a4;
  }

  return result;
}

- (void)reset
{
  [(MTLToolsObject *)self->super.super._parent resetAtIndex:self->_commandIndex];
  baseObject = self->super.super._baseObject;

  [(MTLToolsObject *)baseObject reset];
}

- (void)setStageInRegion:(id *)a3
{
  baseObject = self->super.super._baseObject;
  v4 = *&a3->var0.var2;
  v5[0] = *&a3->var0.var0;
  v5[1] = v4;
  v5[2] = *&a3->var1.var1;
  [(MTLToolsObject *)baseObject setStageInRegion:v5];
}

- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  baseObject = self->super.super._baseObject;
  v10 = [a3 baseObject];

  [(MTLToolsObject *)baseObject setKernelBuffer:v10 offset:a4 attributeStride:a5 atIndex:a6];
}

- (void)setComputePipelineState:(id)a3
{
  [(MTLToolsObject *)self->super.super._parent setComputePipelineStateBuffers:a3 commandIndex:self->_commandIndex];
  baseObject = self->super.super._baseObject;
  v6 = [a3 baseObject];

  [(MTLToolsObject *)baseObject setComputePipelineState:v6];
}

- (void)concurrentDispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = *a3;
  v5 = *a4;
  v4.receiver = self;
  v4.super_class = MTLGPUDebugIndirectComputeCommand;
  [(MTLToolsIndirectComputeCommand *)&v4 concurrentDispatchThreads:&v6 threadsPerThreadgroup:&v5];
}

- (void)concurrentDispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = *a3;
  v5 = *a4;
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
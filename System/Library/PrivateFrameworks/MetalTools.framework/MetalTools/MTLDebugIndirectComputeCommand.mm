@interface MTLDebugIndirectComputeCommand
- (MTLDebugIndirectComputeCommand)initWithBaseObject:(id)a3 descriptor:(id)a4 indexCount:(unint64_t)a5 indirectCommandBuffer:(id)a6;
- (void)concurrentDispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)concurrentDispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dealloc;
- (void)setComputePipelineState:(id)a3;
- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation MTLDebugIndirectComputeCommand

- (MTLDebugIndirectComputeCommand)initWithBaseObject:(id)a3 descriptor:(id)a4 indexCount:(unint64_t)a5 indirectCommandBuffer:(id)a6
{
  v11.receiver = self;
  v11.super_class = MTLDebugIndirectComputeCommand;
  v9 = [(MTLToolsObject *)&v11 initWithBaseObject:a3 parent:a6];
  if (v9)
  {
    v9->_iCB = a6;
    v9->_desc = a4;
    v9->_index = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIndirectComputeCommand;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)setComputePipelineState:(id)a3
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritPipelineState])
  {
    [MTLDebugIndirectComputeCommand setComputePipelineState:];
  }

  if (([objc_msgSend(a3 "baseObject")] & 1) == 0)
  {
    [MTLDebugIndirectComputeCommand setComputePipelineState:];
  }

  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 setComputePipelineState:v6];
}

- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxKernelBufferBindCount]<= a6)
  {
    [MTLDebugIndirectComputeCommand setKernelBuffer:? offset:? attributeStride:? atIndex:?];
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers])
  {
    [MTLDebugIndirectComputeCommand setKernelBuffer:offset:attributeStride:atIndex:];
  }

  if (a5 != -1 && ![(MTLIndirectCommandBufferDescriptor *)self->_desc supportDynamicAttributeStride])
  {
    [MTLDebugIndirectComputeCommand setKernelBuffer:offset:attributeStride:atIndex:];
  }

  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];

  [v11 setKernelBuffer:v12 offset:a4 attributeStride:a5 atIndex:a6];
}

- (void)concurrentDispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x20) == 0)
  {
    [MTLDebugIndirectComputeCommand concurrentDispatchThreadgroups:threadsPerThreadgroup:];
  }

  v7 = [(MTLToolsObject *)self baseObject];
  v10 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0;
  v9 = a4->var2;
  [v7 concurrentDispatchThreadgroups:&v10 threadsPerThreadgroup:&v8];
}

- (void)concurrentDispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x40) == 0)
  {
    [MTLDebugIndirectComputeCommand concurrentDispatchThreads:threadsPerThreadgroup:];
  }

  v7 = [(MTLToolsObject *)self baseObject];
  v10 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0;
  v9 = a4->var2;
  [v7 concurrentDispatchThreads:&v10 threadsPerThreadgroup:&v8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxKernelThreadgroupMemoryBindCount]<= a4)
  {
    [MTLDebugIndirectComputeCommand setThreadgroupMemoryLength:? atIndex:?];
  }

  v7.receiver = self;
  v7.super_class = MTLDebugIndirectComputeCommand;
  [(MTLToolsIndirectComputeCommand *)&v7 setThreadgroupMemoryLength:a3 atIndex:a4];
}

@end
@interface MTLDebugIndirectComputeCommand
- (MTLDebugIndirectComputeCommand)initWithBaseObject:(id)object descriptor:(id)descriptor indexCount:(unint64_t)count indirectCommandBuffer:(id)buffer;
- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dealloc;
- (void)setComputePipelineState:(id)state;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation MTLDebugIndirectComputeCommand

- (MTLDebugIndirectComputeCommand)initWithBaseObject:(id)object descriptor:(id)descriptor indexCount:(unint64_t)count indirectCommandBuffer:(id)buffer
{
  v11.receiver = self;
  v11.super_class = MTLDebugIndirectComputeCommand;
  v9 = [(MTLToolsObject *)&v11 initWithBaseObject:object parent:buffer];
  if (v9)
  {
    v9->_iCB = buffer;
    v9->_desc = descriptor;
    v9->_index = count;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIndirectComputeCommand;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)setComputePipelineState:(id)state
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritPipelineState])
  {
    [MTLDebugIndirectComputeCommand setComputePipelineState:];
  }

  if (([objc_msgSend(state "baseObject")] & 1) == 0)
  {
    [MTLDebugIndirectComputeCommand setComputePipelineState:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setComputePipelineState:baseObject2];
}

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxKernelBufferBindCount]<= index)
  {
    [MTLDebugIndirectComputeCommand setKernelBuffer:? offset:? attributeStride:? atIndex:?];
  }

  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc inheritBuffers])
  {
    [MTLDebugIndirectComputeCommand setKernelBuffer:offset:attributeStride:atIndex:];
  }

  if (stride != -1 && ![(MTLIndirectCommandBufferDescriptor *)self->_desc supportDynamicAttributeStride])
  {
    [MTLDebugIndirectComputeCommand setKernelBuffer:offset:attributeStride:atIndex:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setKernelBuffer:baseObject2 offset:offset attributeStride:stride atIndex:index];
}

- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x20) == 0)
  {
    [MTLDebugIndirectComputeCommand concurrentDispatchThreadgroups:threadsPerThreadgroup:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = *&threadgroups->var0;
  var2 = threadgroups->var2;
  v8 = *&threadgroup->var0;
  v9 = threadgroup->var2;
  [baseObject concurrentDispatchThreadgroups:&v10 threadsPerThreadgroup:&v8];
}

- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  if (([(MTLIndirectCommandBufferDescriptor *)self->_desc commandTypes]& 0x40) == 0)
  {
    [MTLDebugIndirectComputeCommand concurrentDispatchThreads:threadsPerThreadgroup:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v10 = *&threads->var0;
  var2 = threads->var2;
  v8 = *&threadgroup->var0;
  v9 = threadgroup->var2;
  [baseObject concurrentDispatchThreads:&v10 threadsPerThreadgroup:&v8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if ([(MTLIndirectCommandBufferDescriptor *)self->_desc maxKernelThreadgroupMemoryBindCount]<= index)
  {
    [MTLDebugIndirectComputeCommand setThreadgroupMemoryLength:? atIndex:?];
  }

  v7.receiver = self;
  v7.super_class = MTLDebugIndirectComputeCommand;
  [(MTLToolsIndirectComputeCommand *)&v7 setThreadgroupMemoryLength:length atIndex:index];
}

@end
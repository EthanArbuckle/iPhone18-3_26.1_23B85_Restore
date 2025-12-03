@interface MTLToolsIndirectComputeCommand
- ($CF338659D5433EA76F6CDE9A95D8964A)getStageInRegion;
- (BOOL)hasBarrier;
- (id)dispatchThreadgroupsArguments;
- (id)dispatchThreadsArguments;
- (id)getImageBlockSize;
- (unint64_t)getCommandType;
- (unint64_t)getKernelAttributeStrideAtIndex:(unint64_t)index;
- (unint64_t)getKernelBufferAddressAtIndex:(unint64_t)index;
- (unint64_t)getOptimizedStatus;
- (unint64_t)getPipelineStateUniqueIdentifier;
- (unint64_t)getThreadgroupMemoryLengthAtIndex:(unint64_t)index;
- (void)clearBarrier;
- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)getKernelBufferAtIndex:(unint64_t)index;
- (void)reset;
- (void)setBarrier;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setStageInRegion:(id *)region;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation MTLToolsIndirectComputeCommand

- (void)setComputePipelineState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setComputePipelineState:baseObject2];
}

- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = *threads;
  v7 = *threadgroup;
  [baseObject concurrentDispatchThreads:&v8 threadsPerThreadgroup:&v7];
}

- (unint64_t)getThreadgroupMemoryLengthAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getThreadgroupMemoryLengthAtIndex:index];
}

- ($CF338659D5433EA76F6CDE9A95D8964A)getStageInRegion
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($CF338659D5433EA76F6CDE9A95D8964A *)result getStageInRegion];
  }

  else
  {
    *&retstr->var0.var2 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (BOOL)hasBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject hasBarrier];
}

- (id)getImageBlockSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getImageBlockSize];
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setImageblockWidth:width height:height];
}

- (void)setBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBarrier];
}

- (void)clearBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject clearBarrier];
}

- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = *threadgroups;
  v7 = *threadgroup;
  [baseObject concurrentDispatchThreadgroups:&v8 threadsPerThreadgroup:&v7];
}

- (id)dispatchThreadgroupsArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject dispatchThreadgroupsArguments];
}

- (id)dispatchThreadsArguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject dispatchThreadsArguments];
}

- (void)reset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject reset];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupMemoryLength:length atIndex:index];
}

- (void)setStageInRegion:(id *)region
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&region->var0.var2;
  v6[0] = *&region->var0.var0;
  v6[1] = v5;
  v6[2] = *&region->var1.var1;
  [baseObject setStageInRegion:v6];
}

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setKernelBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setKernelBuffer:buffer offset:offset attributeStride:stride atIndex:index];
}

- (unint64_t)getPipelineStateUniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getPipelineStateUniqueIdentifier];
}

- (void)getKernelBufferAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getKernelBufferAtIndex:index];
}

- (unint64_t)getKernelBufferAddressAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getKernelBufferAddressAtIndex:index];
}

- (unint64_t)getCommandType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getCommandType];
}

- (unint64_t)getOptimizedStatus
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getOptimizedStatus];
}

- (unint64_t)getKernelAttributeStrideAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject getKernelAttributeStrideAtIndex:index];
}

@end
@interface MTLToolsIndirectComputeCommand
- ($CF338659D5433EA76F6CDE9A95D8964A)getStageInRegion;
- (BOOL)hasBarrier;
- (id)dispatchThreadgroupsArguments;
- (id)dispatchThreadsArguments;
- (id)getImageBlockSize;
- (unint64_t)getCommandType;
- (unint64_t)getKernelAttributeStrideAtIndex:(unint64_t)a3;
- (unint64_t)getKernelBufferAddressAtIndex:(unint64_t)a3;
- (unint64_t)getOptimizedStatus;
- (unint64_t)getPipelineStateUniqueIdentifier;
- (unint64_t)getThreadgroupMemoryLengthAtIndex:(unint64_t)a3;
- (void)clearBarrier;
- (void)concurrentDispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)concurrentDispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)getKernelBufferAtIndex:(unint64_t)a3;
- (void)reset;
- (void)setBarrier;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setStageInRegion:(id *)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation MTLToolsIndirectComputeCommand

- (void)setComputePipelineState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setComputePipelineState:v5];
}

- (void)concurrentDispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v8 = *a3;
  v7 = *a4;
  [v6 concurrentDispatchThreads:&v8 threadsPerThreadgroup:&v7];
}

- (unint64_t)getThreadgroupMemoryLengthAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getThreadgroupMemoryLengthAtIndex:a3];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 hasBarrier];
}

- (id)getImageBlockSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getImageBlockSize];
}

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setImageblockWidth:a3 height:a4];
}

- (void)setBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 setBarrier];
}

- (void)clearBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 clearBarrier];
}

- (void)concurrentDispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v8 = *a3;
  v7 = *a4;
  [v6 concurrentDispatchThreadgroups:&v8 threadsPerThreadgroup:&v7];
}

- (id)dispatchThreadgroupsArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 dispatchThreadgroupsArguments];
}

- (id)dispatchThreadsArguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 dispatchThreadsArguments];
}

- (void)reset
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 reset];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setThreadgroupMemoryLength:a3 atIndex:a4];
}

- (void)setStageInRegion:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = *&a3->var0.var2;
  v6[0] = *&a3->var0.var0;
  v6[1] = v5;
  v6[2] = *&a3->var1.var1;
  [v4 setStageInRegion:v6];
}

- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setKernelBuffer:v9 offset:a4 atIndex:a5];
}

- (void)setKernelBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setKernelBuffer:a3 offset:a4 attributeStride:a5 atIndex:a6];
}

- (unint64_t)getPipelineStateUniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getPipelineStateUniqueIdentifier];
}

- (void)getKernelBufferAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getKernelBufferAtIndex:a3];
}

- (unint64_t)getKernelBufferAddressAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getKernelBufferAddressAtIndex:a3];
}

- (unint64_t)getCommandType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getCommandType];
}

- (unint64_t)getOptimizedStatus
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 getOptimizedStatus];
}

- (unint64_t)getKernelAttributeStrideAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getKernelAttributeStrideAtIndex:a3];
}

@end
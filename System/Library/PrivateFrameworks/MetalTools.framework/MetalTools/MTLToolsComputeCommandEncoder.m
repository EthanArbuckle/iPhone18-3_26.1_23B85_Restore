@interface MTLToolsComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTLToolsComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)newKernelDebugInfo;
- (unint64_t)dispatchType;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4;
- (void)memoryBarrierWithScope:(unint64_t)a3;
- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setStageInRegion:(id *)a3;
- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setThreadgroupDistributionMode:(int64_t)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)updateFence:(id)a3;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)waitForFence:(id)a3;
@end

@implementation MTLToolsComputeCommandEncoder

- (MTLToolsComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLToolsComputeCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v11 initWithBaseObject:a3 parent:?];
  v8 = v7;
  if (a5 && v7)
  {
    for (i = 0; i != 4; ++i)
    {
      [a4 addRetainedObject:{objc_msgSend(objc_msgSend(objc_msgSend(a5, "sampleBufferAttachments"), "objectAtIndexedSubscript:", i), "sampleBuffer")}];
    }
  }

  return v8;
}

- (void)setComputePipelineState:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 setComputePipelineState:v6];
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setBytes:a3 length:a4 atIndex:a5];
}

- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setBufferOffset:a3 atIndex:a4];
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 setBuffer:v10 offset:a4 atIndex:a5];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v14[31] = *MEMORY[0x277D85DE8];
  if (a5.length)
  {
    v9 = a3;
    v10 = v14;
    v11 = a5.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v9];
      v12 = *v9++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];

  [v11 setBuffer:v12 offset:a4 attributeStride:a5 atIndex:a6];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v16[31] = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 setBufferOffset:a3 attributeStride:a4 atIndex:a5];
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];

  [v10 setBytes:a3 length:a4 attributeStride:a5 atIndex:a6];
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setTexture:v8 atIndex:a4];
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setSamplerState:v8 atIndex:a4];
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v13 = *MEMORY[0x277D85DE8];
  if (a4.length)
  {
    v7 = a3;
    v8 = v12;
    v9 = a4.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v7];
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  *&v13 = a4;
  *&v14 = a5;

  [v11 setSamplerState:v12 lodMinClamp:a6 lodMaxClamp:v13 atIndex:v14];
}

- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v17 = *MEMORY[0x277D85DE8];
  if (a6.length)
  {
    v11 = a3;
    v12 = v16;
    v13 = a6.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*v11];
      v14 = *v11++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setThreadgroupMemoryLength:a3 atIndex:a4];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v8 = *a3;
  v7 = *a4;
  [v6 dispatchThreadgroups:&v8 threadsPerThreadgroup:&v7];
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

- (void)setStageInRegionWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setStageInRegionWithIndirectBuffer:v8 indirectBufferOffset:a4];
}

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setImageblockWidth:a3 height:a4];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = *a5;
  [v9 dispatchThreadgroupsWithIndirectBuffer:v10 indirectBufferOffset:a4 threadsPerThreadgroup:&v11];
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v8 = *a3;
  v7 = *a4;
  [v6 dispatchThreads:&v8 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 dispatchThreadsWithIndirectBuffer:v8 indirectBufferOffset:a4];
}

- (id)newKernelDebugInfo
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 newKernelDebugInfo];
}

- (void)updateFence:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 updateFence:v6];
}

- (void)waitForFence:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 waitForFence:v6];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 useResource:v8 usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v9]];
      v10 = [a3[v9] baseObject];
      *(__p[0] + v9++) = v10;
    }

    while (a4 != v9);
  }

  v11 = [(MTLToolsObject *)self baseObject];
  [v11 useResources:__p[0] count:a4 usage:a5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useHeap:v6];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useHeaps:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 executeCommandsInBuffer:v9 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11 = [a4 baseObject];

  [v9 executeCommandsInBuffer:v10 indirectBuffer:v11 indirectBufferOffset:a5];
}

- (unint64_t)dispatchType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 dispatchType];
}

- (void)memoryBarrierWithScope:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 memoryBarrierWithScope:a3];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 memoryBarrierWithResources:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto28MTLIntersectionFunctionTable}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setAccelerationStructure:v7 atBufferIndex:a4];
}

- (void)useResourceGroup:(id)a3 usage:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 useResourceGroup:a3 usage:a4];
}

- (void)insertCompressedTextureReinterpretationFlush
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 insertCompressedTextureReinterpretationFlush];
}

- (void)encodeStartDoWhile
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 encodeStartDoWhile];
}

- (BOOL)encodeEndWhile
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 encodeEndWhile];
}

- (void)encodeStartElse
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 encodeStartElse];
}

- (BOOL)encodeEndIf
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 encodeEndIf];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEncodingAndRetrieveProgramAddressTable];
}

- (void)setThreadgroupDistributionMode:(int64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setThreadgroupDistributionMode:a3];
}

- (void)useResidencySet:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 useResidencySet:v6];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:a3[v7]];
      v8 = [a3[v7] baseObject];
      *(__p[0] + v7++) = v8;
    }

    while (a4 != v7);
  }

  v9 = [(MTLToolsObject *)self baseObject];
  [v9 useResidencySets:__p[0] count:a4];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setToolsDispatchBufferSPI:a3 atIndex:a4];
}

@end
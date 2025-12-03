@interface IOGPUMetalIndirectCommandBuffer
- (IOGPUMetalIndirectCommandBuffer)initWithBuffer:(id)buffer descriptor:(id)descriptor maxCommandCount:(unint64_t)count;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
- (void)getHeader:(void *)header headerSize:(unint64_t *)size;
- (void)resetWithRange:(_NSRange)range;
@end

@implementation IOGPUMetalIndirectCommandBuffer

- (IOGPUMetalIndirectCommandBuffer)initWithBuffer:(id)buffer descriptor:(id)descriptor maxCommandCount:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = IOGPUMetalIndirectCommandBuffer;
  v8 = [(IOGPUMetalResource *)&v14 initWithResource:?];
  v8->_privateICBuffer = buffer;
  v8->_maxCommandCount = count;
  v8->_privateIndirectRenderEncoder = 0;
  v8->_privateIndirectComputeEncoder = 0;
  v8->_descriptor = [descriptor copy];
  v8->_internalHeader.size = v8->_maxCommandCount;
  v8->_internalHeader.commandTypes = [descriptor commandTypes];
  v8->_internalHeader.headerSize = 56;
  v8->_internalHeader.inheritBuffers = [descriptor inheritBuffers];
  v8->_internalHeader.inheritPipelineState = [descriptor inheritPipelineState];
  v8->_internalHeader.maxFragmentBufferBindCount = [descriptor maxFragmentBufferBindCount];
  v8->_internalHeader.maxVertexBufferBindCount = [descriptor maxVertexBufferBindCount];
  v8->_internalHeader.maxKernelBufferBindCount = [descriptor maxKernelBufferBindCount];
  v8->_internalHeader.maxObjectBufferBindCount = [descriptor maxObjectBufferBindCount];
  v8->_internalHeader.maxMeshBufferBindCount = [descriptor maxMeshBufferBindCount];
  v8->_internalHeader.supportRayTracing = [descriptor supportRayTracing];
  v8->_internalHeader.supportDynamicAttributeStride = [descriptor supportDynamicAttributeStride];
  v8->_internalHeader.maxKernelThreadgroupMemoryBindCount = [descriptor maxKernelThreadgroupMemoryBindCount];
  v8->_internalHeader.maxObjectThreadgroupMemoryBindCount = [descriptor maxObjectThreadgroupMemoryBindCount];
  v8->_internalHeader.maxScissorRectCount = [descriptor maxScissorRectCount];
  v8->_internalHeader.maxViewportCount = [descriptor maxViewportCount];
  v8->_internalHeader.inheritDepthStencilState = [descriptor inheritDepthStencilState];
  v8->_internalHeader.inheritDepthBias = [descriptor inheritDepthBias];
  v8->_internalHeader.inheritStencilReferenceValues = [descriptor inheritStencilReferenceValues];
  v8->_internalHeader.inheritDepthClipMode = [descriptor inheritDepthClipMode];
  v8->_internalHeader.inheritCullMode = [descriptor inheritCullMode];
  v8->_internalHeader.inheritFrontFacingWinding = [descriptor inheritFrontFacingWinding];
  v8->_internalHeader.inheritTriangleFillMode = [descriptor inheritTriangleFillMode];
  v8->_internalHeader.inheritDepthTestBounds = [descriptor inheritDepthTestBounds];
  v8->_internalHeader.inheritScissorRects = [descriptor inheritScissorRects];
  v8->_internalHeader.inheritViewports = [descriptor inheritViewports];
  v8->_internalHeader.inheritBlendColor = [descriptor inheritBlendColor];
  v8->_internalHeader.allowOverrideRenderStates = [descriptor allowOverrideRenderStates];
  if ([buffer storageMode] != 2)
  {
    commandTypes = [descriptor commandTypes];
    v10 = *&v8->super._anon_50[32];
    privateICBuffer = v8->_privateICBuffer;
    if ((commandTypes & 0x60) != 0)
    {
      v8->_privateIndirectComputeEncoder = [v10 newIndirectComputeCommandEncoderWithBuffer:privateICBuffer];
      v12 = 2;
    }

    else
    {
      v8->_privateIndirectRenderEncoder = [v10 newIndirectRenderCommandEncoderWithBuffer:privateICBuffer];
      v12 = 1;
    }

    v8->_commandBufferType = v12;
  }

  return v8;
}

- (void)getHeader:(void *)header headerSize:(unint64_t *)size
{
  if (header)
  {
    *header = &self->_internalHeader;
  }

  if (size)
  {
    *size = 56;
  }
}

- (void)resetWithRange:(_NSRange)range
{
  if (range.location < range.location + range.length)
  {
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v9;
    v22 = v10;
    length = range.length;
    location = range.location;
    do
    {
      privateIndirectRenderEncoder = self->_privateIndirectRenderEncoder;
      if (!privateIndirectRenderEncoder)
      {
        privateIndirectRenderEncoder = self->_privateIndirectComputeEncoder;
      }

      [-[MTLIndirectRenderCommandEncoder objectAtIndexedSubscript:](privateIndirectRenderEncoder objectAtIndexedSubscript:{location++, v15, v16, v17, v18, v19, v20, v21, v22), "reset"}];
      --length;
    }

    while (length);
  }
}

- (void)dealloc
{
  privateIndirectComputeEncoder = self->_privateIndirectComputeEncoder;
  if (privateIndirectComputeEncoder)
  {
  }

  privateIndirectRenderEncoder = self->_privateIndirectRenderEncoder;
  if (privateIndirectRenderEncoder)
  {
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetalIndirectCommandBuffer;
  [(IOGPUMetalResource *)&v5 dealloc];
}

- (unint64_t)uniqueIdentifier
{
  result = [(IOGPUMetalResource *)self->_privateICBuffer gpuAddress];
  if (!result)
  {
    [IOGPUMetalIndirectCommandBuffer uniqueIdentifier];
  }

  return result;
}

@end
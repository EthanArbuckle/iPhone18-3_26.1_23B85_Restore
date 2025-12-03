@interface MTLLegacySVIndirectCommandBuffer
- (MTLLegacySVIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)buffer descriptor:(id)descriptor maxCommandCount:(unint64_t)count resourceOptions:(unint64_t)options device:(id)device;
- (MTLResourceID)gpuResourceID;
- (id)indirectComputeCommandAtIndex:(unint64_t)index;
- (id)indirectRenderCommandAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)resetAtIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index forStage:(unint64_t)stage commandIndex:(unint64_t)commandIndex;
- (void)setComputePipelineStateBuffers:(id)buffers commandIndex:(unint64_t)index;
- (void)setRenderPipelineStateBuffers:(id)buffers commandIndex:(unint64_t)index;
- (void)setTessellationControlPointIndexBuffer:(id)buffer offset:(unint64_t)offset commandIndex:(unint64_t)index;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index commandIndex:(unint64_t)commandIndex;
- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage;
- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
@end

@implementation MTLLegacySVIndirectCommandBuffer

- (MTLLegacySVIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)buffer descriptor:(id)descriptor maxCommandCount:(unint64_t)count resourceOptions:(unint64_t)options device:(id)device
{
  v24.receiver = self;
  v24.super_class = MTLLegacySVIndirectCommandBuffer;
  v12 = [(MTLToolsResource *)&v24 initWithBaseObject:buffer parent:device];
  if (v12)
  {
    v12->_hasRender = ([descriptor commandTypes] & 0x18F) != 0;
    v12->_hasCompute = ([descriptor commandTypes] & 0x60) != 0;
    v12->_inheritsBuffers = [descriptor inheritBuffers];
    v12->_inheritsPipelineState = [descriptor inheritPipelineState];
    v12->_maxCommands = count;
    v12->_maxVertexBindings = [descriptor maxVertexBufferBindCount];
    v12->_maxFragmentBindings = [descriptor maxFragmentBufferBindCount];
    v12->_maxKernelBindings = [descriptor maxKernelBufferBindCount];
    v12->_maxThreadgroupBindings = 32;
    v12->_maxObjectBindings = [descriptor maxObjectBufferBindCount];
    v12->_maxMeshBindings = [descriptor maxMeshBufferBindCount];
    v12->_mayContainDrawMeshes = ([descriptor commandTypes] & 0x180) != 0;
    if (v12->_hasCompute)
    {
      v13 = v12->_maxKernelBindings + v12->_maxThreadgroupBindings + 2;
      v12->_commandByteStride = 8 * v13;
      maxKernelBindings = v12->_maxKernelBindings;
    }

    else
    {
      v15 = v12->_maxVertexBindings + v12->_maxFragmentBindings + 2;
      v12->_commandByteStride = 8 * v15;
      v13 = v15 + v12->_maxVertexBindings;
      v12->_commandByteStride = 8 * v13;
      maxKernelBindings = v12->_maxObjectBindings + v12->_maxMeshBindings;
    }

    v12->_commandByteStride = 8 * (v13 + maxKernelBindings);
    v12->_originalResourceOptions = options;
    v16 = objc_autoreleasePoolPush();
    v17 = objc_opt_new();
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    [v17 setAccess:1];
    [v17 setIndex:0];
    [v17 setArrayLength:1];
    [v17 setDataType:80];
    [v18 addObject:{objc_msgSend(v17, "copy")}];
    v19 = [objc_msgSend(device "baseObject")];

    v20 = [device newInternalBufferWithLength:v12->_commandByteStride * count + 40 options:0];
    v12->_argumentStorage = v20;
    [v19 setArgumentBuffer:v20 offset:0];
    [v19 setIndirectCommandBuffer:buffer atIndex:0];

    objc_autoreleasePoolPop(v16);
    contents = [(MTLBuffer *)v12->_argumentStorage contents];
    contents[2] = v12->_maxCommands;
    contents[3] = v12->_maxVertexBindings;
    contents[4] = v12->_maxFragmentBindings;
    contents[5] = v12->_maxKernelBindings;
    maxThreadgroupBindings = v12->_maxThreadgroupBindings;
    contents[6] = v12->_commandByteStride >> 3;
    contents[7] = maxThreadgroupBindings;
    if (!v12->_inheritsPipelineState)
    {
      v12->_vertexKernelDrawOrDispatchIDBuffer = [device newInternalBufferWithLength:24 * count options:0];
      if (v12->_hasRender)
      {
        v12->_fragmentDrawIDBuffer = [device newInternalBufferWithLength:24 * count options:0];
        v12->_meshDrawIDBuffer = [device newInternalBufferWithLength:24 * count options:0];
        v12->_objectDrawIDBuffer = [device newInternalBufferWithLength:24 * count options:0];
      }
    }
  }

  return v12;
}

- (void)resetAtIndex:(unint64_t)index
{
  indexCopy = index;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  v6 = contents[6] * indexCopy;
  v7 = &contents[2 * v6];
  *(v7 + 5) = 0;
  v8 = v7 + 10;
  if (self->_maxKernelBindings)
  {
    v9 = 0;
    v10 = v8 + 4;
    v11 = &contents[2 * contents[3] + 14 + 2 * contents[5] + 2 * v6];
    do
    {
      *&v10[2 * v9] = 0;
      *(v11 + 8 * v9++) = -1;
    }

    while (v9 < self->_maxKernelBindings);
  }

  if (self->_maxThreadgroupBindings)
  {
    v12 = 0;
    v13 = &contents[4 * contents[3] + 14 + 4 * contents[5] + 2 * contents[4] + 2 * v6];
    do
    {
      *(v13 + 8 * v12++) = 0;
    }

    while (v12 < self->_maxThreadgroupBindings);
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index forStage:(unint64_t)stage commandIndex:(unint64_t)commandIndex
{
  commandIndexCopy = commandIndex;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  if (stage <= 2)
  {
    if (stage != 1)
    {
      if (stage != 2)
      {
        return;
      }

      stride = [buffer handleForOffset:offset];
      v16 = contents[5];
      v15 = &contents[2 * contents[6] * commandIndexCopy + 2 * contents[3] + 2 * v16 + 2 * contents[3]];
      goto LABEL_9;
    }
  }

  else if (stage != 3)
  {
    if (stage == 7)
    {
      stride = [buffer handleForOffset:offset];
      v17 = &contents[2 * contents[6] * commandIndexCopy + 2 * contents[3] + 2 * contents[5] + 2 * contents[3] + 2 * contents[5] + 2 * contents[4] + 2 * contents[7] + 2 * contents[8]];
      goto LABEL_12;
    }

    if (stage != 8)
    {
      return;
    }

    stride = [buffer handleForOffset:offset];
    v15 = &contents[2 * contents[6] * commandIndexCopy + 2 * contents[3] + 2 * contents[5] + 2 * contents[3] + 2 * contents[5] + 2 * contents[4]];
    v16 = contents[7];
LABEL_9:
    v17 = v15 + 8 * v16;
LABEL_12:
    v21 = v17 + 56;
    goto LABEL_13;
  }

  v18 = [buffer handleForOffset:offset];
  v19 = contents[5];
  v20 = &contents[2 * contents[6] * commandIndexCopy + 14];
  *(v20 + 8 * index) = v18;
  v21 = v20 + 8 * contents[3] + 8 * v19;
LABEL_13:
  *(v21 + 8 * index) = stride;
}

- (void)setTessellationControlPointIndexBuffer:(id)buffer offset:(unint64_t)offset commandIndex:(unint64_t)index
{
  indexCopy = index;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  *(contents + 8 * *(contents + 24) * indexCopy + 48) = [buffer handleForOffset:offset];
}

- (void)setRenderPipelineStateBuffers:(id)buffers commandIndex:(unint64_t)index
{
  indexCopy = index;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  if (buffers)
  {
    v7 = [objc_msgSend(buffers "indirectStateBuffer")];
  }

  else
  {
    v7 = 0;
  }

  *(contents + 8 * *(contents + 24) * indexCopy + 40) = v7;
}

- (void)setComputePipelineStateBuffers:(id)buffers commandIndex:(unint64_t)index
{
  indexCopy = index;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  if (buffers)
  {
    v7 = [objc_msgSend(buffers "indirectStateBuffer")];
  }

  else
  {
    v7 = 0;
  }

  *(contents + 8 * *(contents + 24) * indexCopy + 40) = v7;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index commandIndex:(unint64_t)commandIndex
{
  commandIndexCopy = commandIndex;
  lengthCopy = length;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  contents[2 * contents[6] * commandIndexCopy + 15 + 2 * contents[3] + 2 * contents[5] + 2 * contents[3] + 2 * contents[5] + 2 * contents[4] + 2 * index] = lengthCopy;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)index
{
  v3 = [[MTLLegacySVIndirectRenderCommand alloc] initWithIndirectRenderCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectRenderCommandAtIndex:?] commandIndex:index indirectCommandBuffer:self];

  return v3;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)index
{
  v3 = [[MTLLegacySVIndirectComputeCommand alloc] initWithIndirectComputeCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectComputeCommandAtIndex:?] commandIndex:index indirectCommandBuffer:self];

  return v3;
}

- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage
{
  [encoder useResourceInternal:self->super.super.super._baseObject usage:?];
  [encoder useResourceInternal:self->_argumentStorage usage:usage];
  if (self->_vertexKernelDrawOrDispatchIDBuffer)
  {

    [encoder useResourceInternal:? usage:?];
  }
}

- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  v5 = *&stages.var1;
  var1 = stages.var0.var1;
  [encoder useResourceInternal:self->super.super.super._baseObject usage:? stages:?];
  [encoder useResourceInternal:self->_argumentStorage usage:usage stages:{var1, v5}];
  if (self->_vertexKernelDrawOrDispatchIDBuffer && ((v5 & 1) == 0 || (var1 & 1) != 0))
  {
    [encoder useResourceInternal:? usage:? stages:?];
  }

  if (self->_fragmentDrawIDBuffer && ((v5 & 1) == 0 || (var1 & 2) != 0))
  {
    [encoder useResourceInternal:? usage:? stages:?];
  }

  if (self->_meshDrawIDBuffer && ((v5 & 1) == 0 || (var1 & 0x10) != 0))
  {
    [encoder useResourceInternal:? usage:? stages:?];
  }

  if (self->_objectDrawIDBuffer && ((v5 & 1) == 0 || (var1 & 8) != 0))
  {

    [encoder useResourceInternal:? usage:? stages:?];
  }
}

- (MTLResourceID)gpuResourceID
{
  internalICBBuffer = [(MTLLegacySVIndirectCommandBuffer *)self internalICBBuffer];

  return [(MTLBuffer *)internalICBBuffer gpuAddress];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVIndirectCommandBuffer;
  [(MTLToolsResource *)&v3 dealloc];
}

@end
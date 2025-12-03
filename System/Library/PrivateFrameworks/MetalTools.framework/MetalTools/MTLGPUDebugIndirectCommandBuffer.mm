@interface MTLGPUDebugIndirectCommandBuffer
- (MTLGPUDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)buffer descriptor:(id)descriptor maxCommandCount:(unint64_t)count resourceOptions:(unint64_t)options device:(id)device;
- (MTLResourceID)gpuResourceID;
- (id)indirectComputeCommandAtIndex:(unint64_t)index;
- (id)indirectRenderCommandAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)resetAtIndex:(unint64_t)index;
- (void)setComputePipelineStateBuffers:(id)buffers commandIndex:(unint64_t)index;
- (void)setRenderPipelineStateBuffers:(id)buffers commandIndex:(unint64_t)index;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index commandIndex:(unint64_t)commandIndex;
- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage;
- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
@end

@implementation MTLGPUDebugIndirectCommandBuffer

- (MTLGPUDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)buffer descriptor:(id)descriptor maxCommandCount:(unint64_t)count resourceOptions:(unint64_t)options device:(id)device
{
  v22.receiver = self;
  v22.super_class = MTLGPUDebugIndirectCommandBuffer;
  v12 = [(MTLToolsResource *)&v22 initWithBaseObject:buffer parent:device];
  if (v12)
  {
    v12->_hasOnlyRender = ([descriptor commandTypes] & 0xF) != 0;
    v12->_hasRender = ([descriptor commandTypes] & 0x18F) != 0;
    v12->_hasCompute = ([descriptor commandTypes] & 0x60) != 0;
    v12->_inheritsBuffers = [descriptor inheritBuffers];
    v12->_inheritsPipelineState = [descriptor inheritPipelineState];
    v12->_maxCommands = count;
    v12->_maxThreadgroupBindings = 32;
    v12->_mayContainDrawMeshes = ([descriptor commandTypes] & 0x180) != 0;
    v12->_SVBindingTableVertexKernelBuffer = [device newInternalBufferWithLength:320 * count options:0];
    v12->_initializedTables = 0;
    if (v12->_hasCompute)
    {
      v12->_commandByteStride = 8 * v12->_maxThreadgroupBindings + 8;
    }

    else
    {
      v12->_commandByteStride = 8;
      v12->_SVBindingTableFragmentBuffer = [device newInternalBufferWithLength:320 * count options:0];
      if (v12->_mayContainDrawMeshes)
      {
        v12->_SVBindingTableMeshBuffer = [device newInternalBufferWithLength:320 * count options:0];
        v12->_SVBindingTableObjectBuffer = [device newInternalBufferWithLength:320 * count options:0];
      }
    }

    v12->_originalResourceOptions = options;
    v13 = objc_autoreleasePoolPush();
    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    [v14 setAccess:1];
    [v14 setIndex:0];
    [v14 setArrayLength:1];
    [v14 setDataType:80];
    [v15 addObject:{objc_msgSend(v14, "copy")}];
    v16 = [objc_msgSend(device "baseObject")];

    v17 = [device newInternalBufferWithLength:v12->_commandByteStride * count + 16 options:0];
    v12->_argumentStorage = v17;
    [v16 setArgumentBuffer:v17 offset:0];
    [v16 setIndirectCommandBuffer:buffer atIndex:0];

    objc_autoreleasePoolPop(v13);
    contents = [(MTLBuffer *)v12->_argumentStorage contents];
    maxThreadgroupBindings = v12->_maxThreadgroupBindings;
    *(contents + 8) = v12->_commandByteStride >> 3;
    *(contents + 12) = maxThreadgroupBindings;
    if (!v12->_inheritsPipelineState)
    {
      v20 = 24 * count;
      v12->_vertexKernelDrawOrDispatchIDBuffer = [device newInternalBufferWithLength:v20 options:0];
      if (v12->_hasRender)
      {
        v12->_fragmentDrawIDBuffer = [device newInternalBufferWithLength:v20 options:0];
        if (v12->_mayContainDrawMeshes)
        {
          v12->_meshDrawIDBuffer = [device newInternalBufferWithLength:v20 options:0];
          v12->_objectDrawIDBuffer = [device newInternalBufferWithLength:v20 options:0];
        }
      }
    }
  }

  return v12;
}

- (void)resetAtIndex:(unint64_t)index
{
  indexCopy = index;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  v6 = contents + 8 * *(contents + 8) * indexCopy;
  *(v6 + 16) = 0;
  v7 = v6 + 16;
  maxThreadgroupBindings = self->_maxThreadgroupBindings;
  if (maxThreadgroupBindings)
  {

    bzero((v7 + 8), 8 * maxThreadgroupBindings);
  }
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

  *(contents + 8 * *(contents + 8) * indexCopy + 16) = v7;
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

  *(contents + 8 * *(contents + 8) * indexCopy + 16) = v7;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index commandIndex:(unint64_t)commandIndex
{
  commandIndexCopy = commandIndex;
  lengthCopy = length;
  contents = [(MTLBuffer *)self->_argumentStorage contents];
  *(contents + 8 * *(contents + 8) * commandIndexCopy + 8 * index + 28) = lengthCopy;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)index
{
  v3 = [[MTLGPUDebugIndirectRenderCommand alloc] initWithIndirectRenderCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectRenderCommandAtIndex:?] commandIndex:index indirectCommandBuffer:self];

  return v3;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)index
{
  v3 = [[MTLGPUDebugIndirectComputeCommand alloc] initWithIndirectComputeCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectComputeCommandAtIndex:?] commandIndex:index indirectCommandBuffer:self];

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
  internalICBBuffer = [(MTLGPUDebugIndirectCommandBuffer *)self internalICBBuffer];

  return [(MTLBuffer *)internalICBBuffer gpuAddress];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugIndirectCommandBuffer;
  [(MTLToolsResource *)&v3 dealloc];
}

@end
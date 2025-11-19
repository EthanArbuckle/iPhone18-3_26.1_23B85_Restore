@interface MTLGPUDebugIndirectCommandBuffer
- (MTLGPUDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)a3 descriptor:(id)a4 maxCommandCount:(unint64_t)a5 resourceOptions:(unint64_t)a6 device:(id)a7;
- (MTLResourceID)gpuResourceID;
- (id)indirectComputeCommandAtIndex:(unint64_t)a3;
- (id)indirectRenderCommandAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)resetAtIndex:(unint64_t)a3;
- (void)setComputePipelineStateBuffers:(id)a3 commandIndex:(unint64_t)a4;
- (void)setRenderPipelineStateBuffers:(id)a3 commandIndex:(unint64_t)a4;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4 commandIndex:(unint64_t)a5;
- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4;
- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
@end

@implementation MTLGPUDebugIndirectCommandBuffer

- (MTLGPUDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)a3 descriptor:(id)a4 maxCommandCount:(unint64_t)a5 resourceOptions:(unint64_t)a6 device:(id)a7
{
  v22.receiver = self;
  v22.super_class = MTLGPUDebugIndirectCommandBuffer;
  v12 = [(MTLToolsResource *)&v22 initWithBaseObject:a3 parent:a7];
  if (v12)
  {
    v12->_hasOnlyRender = ([a4 commandTypes] & 0xF) != 0;
    v12->_hasRender = ([a4 commandTypes] & 0x18F) != 0;
    v12->_hasCompute = ([a4 commandTypes] & 0x60) != 0;
    v12->_inheritsBuffers = [a4 inheritBuffers];
    v12->_inheritsPipelineState = [a4 inheritPipelineState];
    v12->_maxCommands = a5;
    v12->_maxThreadgroupBindings = 32;
    v12->_mayContainDrawMeshes = ([a4 commandTypes] & 0x180) != 0;
    v12->_SVBindingTableVertexKernelBuffer = [a7 newInternalBufferWithLength:320 * a5 options:0];
    v12->_initializedTables = 0;
    if (v12->_hasCompute)
    {
      v12->_commandByteStride = 8 * v12->_maxThreadgroupBindings + 8;
    }

    else
    {
      v12->_commandByteStride = 8;
      v12->_SVBindingTableFragmentBuffer = [a7 newInternalBufferWithLength:320 * a5 options:0];
      if (v12->_mayContainDrawMeshes)
      {
        v12->_SVBindingTableMeshBuffer = [a7 newInternalBufferWithLength:320 * a5 options:0];
        v12->_SVBindingTableObjectBuffer = [a7 newInternalBufferWithLength:320 * a5 options:0];
      }
    }

    v12->_originalResourceOptions = a6;
    v13 = objc_autoreleasePoolPush();
    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    [v14 setAccess:1];
    [v14 setIndex:0];
    [v14 setArrayLength:1];
    [v14 setDataType:80];
    [v15 addObject:{objc_msgSend(v14, "copy")}];
    v16 = [objc_msgSend(a7 "baseObject")];

    v17 = [a7 newInternalBufferWithLength:v12->_commandByteStride * a5 + 16 options:0];
    v12->_argumentStorage = v17;
    [v16 setArgumentBuffer:v17 offset:0];
    [v16 setIndirectCommandBuffer:a3 atIndex:0];

    objc_autoreleasePoolPop(v13);
    v18 = [(MTLBuffer *)v12->_argumentStorage contents];
    maxThreadgroupBindings = v12->_maxThreadgroupBindings;
    *(v18 + 8) = v12->_commandByteStride >> 3;
    *(v18 + 12) = maxThreadgroupBindings;
    if (!v12->_inheritsPipelineState)
    {
      v20 = 24 * a5;
      v12->_vertexKernelDrawOrDispatchIDBuffer = [a7 newInternalBufferWithLength:v20 options:0];
      if (v12->_hasRender)
      {
        v12->_fragmentDrawIDBuffer = [a7 newInternalBufferWithLength:v20 options:0];
        if (v12->_mayContainDrawMeshes)
        {
          v12->_meshDrawIDBuffer = [a7 newInternalBufferWithLength:v20 options:0];
          v12->_objectDrawIDBuffer = [a7 newInternalBufferWithLength:v20 options:0];
        }
      }
    }
  }

  return v12;
}

- (void)resetAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = [(MTLBuffer *)self->_argumentStorage contents];
  v6 = v5 + 8 * *(v5 + 8) * v3;
  *(v6 + 16) = 0;
  v7 = v6 + 16;
  maxThreadgroupBindings = self->_maxThreadgroupBindings;
  if (maxThreadgroupBindings)
  {

    bzero((v7 + 8), 8 * maxThreadgroupBindings);
  }
}

- (void)setRenderPipelineStateBuffers:(id)a3 commandIndex:(unint64_t)a4
{
  v4 = a4;
  v6 = [(MTLBuffer *)self->_argumentStorage contents];
  if (a3)
  {
    v7 = [objc_msgSend(a3 "indirectStateBuffer")];
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 8 * *(v6 + 8) * v4 + 16) = v7;
}

- (void)setComputePipelineStateBuffers:(id)a3 commandIndex:(unint64_t)a4
{
  v4 = a4;
  v6 = [(MTLBuffer *)self->_argumentStorage contents];
  if (a3)
  {
    v7 = [objc_msgSend(a3 "indirectStateBuffer")];
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 8 * *(v6 + 8) * v4 + 16) = v7;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4 commandIndex:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(MTLBuffer *)self->_argumentStorage contents];
  *(v8 + 8 * *(v8 + 8) * v5 + 8 * a4 + 28) = v7;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)a3
{
  v3 = [[MTLGPUDebugIndirectRenderCommand alloc] initWithIndirectRenderCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectRenderCommandAtIndex:?] commandIndex:a3 indirectCommandBuffer:self];

  return v3;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)a3
{
  v3 = [[MTLGPUDebugIndirectComputeCommand alloc] initWithIndirectComputeCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectComputeCommandAtIndex:?] commandIndex:a3 indirectCommandBuffer:self];

  return v3;
}

- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4
{
  [a3 useResourceInternal:self->super.super.super._baseObject usage:?];
  [a3 useResourceInternal:self->_argumentStorage usage:a4];
  if (self->_vertexKernelDrawOrDispatchIDBuffer)
  {

    [a3 useResourceInternal:? usage:?];
  }
}

- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  v5 = *&a5.var1;
  var1 = a5.var0.var1;
  [a3 useResourceInternal:self->super.super.super._baseObject usage:? stages:?];
  [a3 useResourceInternal:self->_argumentStorage usage:a4 stages:{var1, v5}];
  if (self->_vertexKernelDrawOrDispatchIDBuffer && ((v5 & 1) == 0 || (var1 & 1) != 0))
  {
    [a3 useResourceInternal:? usage:? stages:?];
  }

  if (self->_fragmentDrawIDBuffer && ((v5 & 1) == 0 || (var1 & 2) != 0))
  {
    [a3 useResourceInternal:? usage:? stages:?];
  }

  if (self->_meshDrawIDBuffer && ((v5 & 1) == 0 || (var1 & 0x10) != 0))
  {
    [a3 useResourceInternal:? usage:? stages:?];
  }

  if (self->_objectDrawIDBuffer && ((v5 & 1) == 0 || (var1 & 8) != 0))
  {

    [a3 useResourceInternal:? usage:? stages:?];
  }
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLGPUDebugIndirectCommandBuffer *)self internalICBBuffer];

  return [(MTLBuffer *)v2 gpuAddress];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugIndirectCommandBuffer;
  [(MTLToolsResource *)&v3 dealloc];
}

@end
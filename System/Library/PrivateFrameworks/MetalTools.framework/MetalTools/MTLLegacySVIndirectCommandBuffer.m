@interface MTLLegacySVIndirectCommandBuffer
- (MTLLegacySVIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)a3 descriptor:(id)a4 maxCommandCount:(unint64_t)a5 resourceOptions:(unint64_t)a6 device:(id)a7;
- (MTLResourceID)gpuResourceID;
- (id)indirectComputeCommandAtIndex:(unint64_t)a3;
- (id)indirectRenderCommandAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)resetAtIndex:(unint64_t)a3;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6 forStage:(unint64_t)a7 commandIndex:(unint64_t)a8;
- (void)setComputePipelineStateBuffers:(id)a3 commandIndex:(unint64_t)a4;
- (void)setRenderPipelineStateBuffers:(id)a3 commandIndex:(unint64_t)a4;
- (void)setTessellationControlPointIndexBuffer:(id)a3 offset:(unint64_t)a4 commandIndex:(unint64_t)a5;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4 commandIndex:(unint64_t)a5;
- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4;
- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
@end

@implementation MTLLegacySVIndirectCommandBuffer

- (MTLLegacySVIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)a3 descriptor:(id)a4 maxCommandCount:(unint64_t)a5 resourceOptions:(unint64_t)a6 device:(id)a7
{
  v24.receiver = self;
  v24.super_class = MTLLegacySVIndirectCommandBuffer;
  v12 = [(MTLToolsResource *)&v24 initWithBaseObject:a3 parent:a7];
  if (v12)
  {
    v12->_hasRender = ([a4 commandTypes] & 0x18F) != 0;
    v12->_hasCompute = ([a4 commandTypes] & 0x60) != 0;
    v12->_inheritsBuffers = [a4 inheritBuffers];
    v12->_inheritsPipelineState = [a4 inheritPipelineState];
    v12->_maxCommands = a5;
    v12->_maxVertexBindings = [a4 maxVertexBufferBindCount];
    v12->_maxFragmentBindings = [a4 maxFragmentBufferBindCount];
    v12->_maxKernelBindings = [a4 maxKernelBufferBindCount];
    v12->_maxThreadgroupBindings = 32;
    v12->_maxObjectBindings = [a4 maxObjectBufferBindCount];
    v12->_maxMeshBindings = [a4 maxMeshBufferBindCount];
    v12->_mayContainDrawMeshes = ([a4 commandTypes] & 0x180) != 0;
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
    v12->_originalResourceOptions = a6;
    v16 = objc_autoreleasePoolPush();
    v17 = objc_opt_new();
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    [v17 setAccess:1];
    [v17 setIndex:0];
    [v17 setArrayLength:1];
    [v17 setDataType:80];
    [v18 addObject:{objc_msgSend(v17, "copy")}];
    v19 = [objc_msgSend(a7 "baseObject")];

    v20 = [a7 newInternalBufferWithLength:v12->_commandByteStride * a5 + 40 options:0];
    v12->_argumentStorage = v20;
    [v19 setArgumentBuffer:v20 offset:0];
    [v19 setIndirectCommandBuffer:a3 atIndex:0];

    objc_autoreleasePoolPop(v16);
    v21 = [(MTLBuffer *)v12->_argumentStorage contents];
    v21[2] = v12->_maxCommands;
    v21[3] = v12->_maxVertexBindings;
    v21[4] = v12->_maxFragmentBindings;
    v21[5] = v12->_maxKernelBindings;
    maxThreadgroupBindings = v12->_maxThreadgroupBindings;
    v21[6] = v12->_commandByteStride >> 3;
    v21[7] = maxThreadgroupBindings;
    if (!v12->_inheritsPipelineState)
    {
      v12->_vertexKernelDrawOrDispatchIDBuffer = [a7 newInternalBufferWithLength:24 * a5 options:0];
      if (v12->_hasRender)
      {
        v12->_fragmentDrawIDBuffer = [a7 newInternalBufferWithLength:24 * a5 options:0];
        v12->_meshDrawIDBuffer = [a7 newInternalBufferWithLength:24 * a5 options:0];
        v12->_objectDrawIDBuffer = [a7 newInternalBufferWithLength:24 * a5 options:0];
      }
    }
  }

  return v12;
}

- (void)resetAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = [(MTLBuffer *)self->_argumentStorage contents];
  v6 = v5[6] * v3;
  v7 = &v5[2 * v6];
  *(v7 + 5) = 0;
  v8 = v7 + 10;
  if (self->_maxKernelBindings)
  {
    v9 = 0;
    v10 = v8 + 4;
    v11 = &v5[2 * v5[3] + 14 + 2 * v5[5] + 2 * v6];
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
    v13 = &v5[4 * v5[3] + 14 + 4 * v5[5] + 2 * v5[4] + 2 * v6];
    do
    {
      *(v13 + 8 * v12++) = 0;
    }

    while (v12 < self->_maxThreadgroupBindings);
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6 forStage:(unint64_t)a7 commandIndex:(unint64_t)a8
{
  v8 = a8;
  v14 = [(MTLBuffer *)self->_argumentStorage contents];
  if (a7 <= 2)
  {
    if (a7 != 1)
    {
      if (a7 != 2)
      {
        return;
      }

      a5 = [a3 handleForOffset:a4];
      v16 = v14[5];
      v15 = &v14[2 * v14[6] * v8 + 2 * v14[3] + 2 * v16 + 2 * v14[3]];
      goto LABEL_9;
    }
  }

  else if (a7 != 3)
  {
    if (a7 == 7)
    {
      a5 = [a3 handleForOffset:a4];
      v17 = &v14[2 * v14[6] * v8 + 2 * v14[3] + 2 * v14[5] + 2 * v14[3] + 2 * v14[5] + 2 * v14[4] + 2 * v14[7] + 2 * v14[8]];
      goto LABEL_12;
    }

    if (a7 != 8)
    {
      return;
    }

    a5 = [a3 handleForOffset:a4];
    v15 = &v14[2 * v14[6] * v8 + 2 * v14[3] + 2 * v14[5] + 2 * v14[3] + 2 * v14[5] + 2 * v14[4]];
    v16 = v14[7];
LABEL_9:
    v17 = v15 + 8 * v16;
LABEL_12:
    v21 = v17 + 56;
    goto LABEL_13;
  }

  v18 = [a3 handleForOffset:a4];
  v19 = v14[5];
  v20 = &v14[2 * v14[6] * v8 + 14];
  *(v20 + 8 * a6) = v18;
  v21 = v20 + 8 * v14[3] + 8 * v19;
LABEL_13:
  *(v21 + 8 * a6) = a5;
}

- (void)setTessellationControlPointIndexBuffer:(id)a3 offset:(unint64_t)a4 commandIndex:(unint64_t)a5
{
  v5 = a5;
  v8 = [(MTLBuffer *)self->_argumentStorage contents];
  *(v8 + 8 * *(v8 + 24) * v5 + 48) = [a3 handleForOffset:a4];
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

  *(v6 + 8 * *(v6 + 24) * v4 + 40) = v7;
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

  *(v6 + 8 * *(v6 + 24) * v4 + 40) = v7;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4 commandIndex:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(MTLBuffer *)self->_argumentStorage contents];
  v8[2 * v8[6] * v5 + 15 + 2 * v8[3] + 2 * v8[5] + 2 * v8[3] + 2 * v8[5] + 2 * v8[4] + 2 * a4] = v7;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)a3
{
  v3 = [[MTLLegacySVIndirectRenderCommand alloc] initWithIndirectRenderCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectRenderCommandAtIndex:?] commandIndex:a3 indirectCommandBuffer:self];

  return v3;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)a3
{
  v3 = [[MTLLegacySVIndirectComputeCommand alloc] initWithIndirectComputeCommand:[(MTLToolsObject *)self->super.super.super._baseObject indirectComputeCommandAtIndex:?] commandIndex:a3 indirectCommandBuffer:self];

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
  v2 = [(MTLLegacySVIndirectCommandBuffer *)self internalICBBuffer];

  return [(MTLBuffer *)v2 gpuAddress];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVIndirectCommandBuffer;
  [(MTLToolsResource *)&v3 dealloc];
}

@end
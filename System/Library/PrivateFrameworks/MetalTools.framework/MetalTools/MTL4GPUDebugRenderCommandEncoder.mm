@interface MTL4GPUDebugRenderCommandEncoder
- (MTL4GPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d;
- (id).cxx_construct;
- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)temporaryBufferWithLength:(unint64_t)length;
- (unint64_t)_internalBindingTableForStage:(unint64_t)stage;
- (void)bindInternalBufferForStage:(id)stage index:(unint64_t)index stage:(unint64_t)a5 offset:(unint64_t)offset;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)flushBindings;
- (void)resetTileCondition;
- (void)restoreInternalState:(id)state;
- (void)setArgumentTable:(id)table atStages:(unint64_t)stages;
- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable forStage:(unint64_t)stage;
- (void)setDepthStencilState:(id)state;
- (void)setInternalBytesForStage:(const void *)stage length:(unint64_t)length atIndex:(unint64_t)index stage:(unint64_t)a6;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setRenderPipelineStateBuffers:(id)buffers;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
@end

@implementation MTL4GPUDebugRenderCommandEncoder

- (unint64_t)_internalBindingTableForStage:(unint64_t)stage
{
  result = 0;
  if (stage <= 3)
  {
    if (stage == 1)
    {
      return &self->_internalBindingTables[0][1];
    }

    else if (stage == 2)
    {
      return &self->_internalBindingTables[1][1];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        return &self->_internalBindingTables[4][1];
      case 8uLL:
        return &self->_internalBindingTables[2][1];
      case 0x10uLL:
        return &self->_internalBindingTables[3][1];
    }
  }

  return result;
}

- (void)bindInternalBufferForStage:(id)stage index:(unint64_t)index stage:(unint64_t)a5 offset:(unint64_t)offset
{
  if (stage)
  {
    v9 = [stage gpuAddress] + offset;

    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalValueForStage:v9 index:index stage:a5];
  }
}

- (void)setInternalBytesForStage:(const void *)stage length:(unint64_t)length atIndex:(unint64_t)index stage:(unint64_t)a6
{
  v9 = [(MTL4GPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:stage length:length];
  [v9 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Base: %llX End: %llX", objc_msgSend(v9, "gpuAddress"), objc_msgSend(v9, "bufferEndAddress"))}];

  [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v9 index:index stage:a6];
}

- (MTL4GPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor encoderID:(unsigned int)d
{
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  result = [(MTL4ToolsCommandEncoder *)&v9 initWithCommandEncoder:encoder commandBuffer:buffer, descriptor];
  if (result)
  {
    result->_currentPipeline = 1;
    p_deviceWrapper = &result->super.super.super._device[2]._deviceWrapper;
    result->_drawID.pipelineStateID = p_deviceWrapper;
    LODWORD(result->_encoderType) = d;
    HIDWORD(result->_encoderType) = 0;
    BYTE2(result->_tileThreadgroup.entries[0].offset) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    LOWORD(result->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset) = 1;
  }

  return result;
}

- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length
{
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)commandBuffer temporaryBufferWithBytes:bytes length:length];
}

- (id)temporaryBufferWithLength:(unint64_t)length
{
  commandBuffer = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)commandBuffer temporaryBufferWithLength:length];
}

- (void)flushBindings
{
  v3 = *(self->_drawID.pipelineStateID + 20) & 0x7000000;
  if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    v4 = [-[MTLToolsDepthStencilState meshDebugInstrumentationData](self->_currentDepthStencil "meshDebugInstrumentationData")];
    v5 = [-[MTLToolsDepthStencilState meshDebugInstrumentationData](self->_currentDepthStencil "meshDebugInstrumentationData")];
    if (v3)
    {
      if (LOBYTE(self->_objectThreadgroup.threadgroupSizes[0]) == 1)
      {
        v20 = v4;
        v6 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_meshThreadgroup.threadgroupSizes[1], &v20, v5);
        if (v6)
        {
          v7 = v6;
          v8 = (*(self->_drawID.pipelineStateID + 20) & 0x10000) != 0 ? 4 : 34;
          [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_meshThreadgroup.entries[0].length length:256 atIndex:v8 stage:16];
          if (v4)
          {
            [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v7 offset:0 atIndex:__clz(__rbit32(v4))];
          }
        }

        LOBYTE(self->_objectThreadgroup.threadgroupSizes[0]) = 0;
      }
    }
  }

  if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    v9 = [-[MTLToolsDepthStencilState objectDebugInstrumentationData](self->_currentDepthStencil "objectDebugInstrumentationData")];
    v10 = [-[MTLToolsDepthStencilState objectDebugInstrumentationData](self->_currentDepthStencil "objectDebugInstrumentationData")];
    if (v3)
    {
      if (LOBYTE(self->_options) == 1)
      {
        v20 = v9;
        v11 = MTLGPUDebugThreadgroupLengths::setupTableEntries(&self->_objectThreadgroup.threadgroupSizes[1], &v20, v10);
        if (v11)
        {
          v12 = v11;
          v13 = (*(self->_drawID.pipelineStateID + 20) & 0x10000) != 0 ? 4 : 34;
          [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_objectThreadgroup.entries[0].length length:256 atIndex:v13 stage:8];
          if (v9)
          {
            [(MTLToolsObject *)self->super.super.super._baseObject setObjectThreadgroupMemoryLength:v12 atIndex:__clz(__rbit32(v9))];
          }
        }

        LOBYTE(self->_options) = 0;
      }
    }
  }

  if (LOBYTE(self->_meshThreadgroup.threadgroupSizes[0]) == 1)
  {
    v14 = [-[MTLToolsDepthStencilState tileDebugInstrumentationData](self->_currentDepthStencil "tileDebugInstrumentationData")];
    v15 = [-[MTLToolsDepthStencilState fragmentDebugInstrumentationData](self->_currentDepthStencil "fragmentDebugInstrumentationData")];
    if (v3)
    {
      v16 = v15 | v14;
      v20 = v15 | v14;
      v17 = MTLGPUDebugTileThreadgroup::setupTableEntries(&self->_tileThreadgroup.entries[0].length, &v20);
      if (v17)
      {
        v18 = v17;
        [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_tileThreadgroup.entries[0].length length:256 atIndex:4 stage:2];
        [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&self->_tileThreadgroup.entries[0].length length:256 atIndex:4 stage:4];
        if (v16)
        {
          [(MTLToolsObject *)self->super.super.super._baseObject setThreadgroupMemoryLength:v18 offset:0 atIndex:__clz(__rbit32(v16))];
        }
      }

      LOBYTE(self->_meshThreadgroup.threadgroupSizes[0]) = 0;
    }
  }

  if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
  {
    [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] encodeResourceTableBuffers:self type:1];
  }

  if (*(&self->_enableUseResourceValidation + 1))
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:1];
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:*&self->super.super.super._device[3]._integrated index:7 stage:1];
    *&self->_drawID.encoderID = [(MTLToolsDepthStencilState *)self->_currentDepthStencil vertexFunctionData];
    [MTL4GPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v20 = 0;
    [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v20 length:4 atIndex:24 stage:1];
    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [-[MTL4GPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:-[MTL4GPUDebugRenderCommandEncoder _internalBindingTableForStage:](self length:{"_internalBindingTableForStage:", 1), 320), "gpuAddress"}], 0, 1);
    [(MTL4GPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:1];
  }

  if (self->_enableUseResourceValidation)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:2];
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:*&self->super.super.super._device[3]._integrated index:7 stage:2];
    *&self->_drawID.encoderID = [(MTLToolsDepthStencilState *)self->_currentDepthStencil fragmentFunctionData];
    [MTL4GPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v20 = 0;
    [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v20 length:4 atIndex:24 stage:2];
    if ((*(self->_drawID.pipelineStateID + 20) & 0x400000001) != 0)
    {
      fragmentMaxCallStackDepth = [(MTLToolsDepthStencilState *)self->_currentDepthStencil fragmentMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:2];
    }

    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [-[MTL4GPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:-[MTL4GPUDebugRenderCommandEncoder _internalBindingTableForStage:](self length:{"_internalBindingTableForStage:", 2), 320), "gpuAddress"}], 0, 2);
    [(MTL4GPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:2];
  }

  if (self->_objectStageActive)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:4];
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:*&self->super.super.super._device[3]._integrated index:7 stage:4];
    *&self->_drawID.encoderID = [(MTLToolsDepthStencilState *)self->_currentDepthStencil tileFunctionData];
    *(self->_drawID.pipelineStateID + 20);
    [MTL4GPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v20 = 0;
    [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v20 length:4 atIndex:24 stage:4];
    [(MTL4GPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:4];
    if ((*(self->_drawID.pipelineStateID + 20) & 0x400000001) != 0)
    {
      fragmentMaxCallStackDepth = [(MTLToolsDepthStencilState *)self->_currentDepthStencil tileMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:4];
    }

    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [-[MTL4GPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:-[MTL4GPUDebugRenderCommandEncoder _internalBindingTableForStage:](self length:{"_internalBindingTableForStage:", 4), 320), "gpuAddress"}], 0, 4);
  }

  if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:8];
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:*&self->super.super.super._device[3]._integrated index:7 stage:8];
    *&self->_drawID.encoderID = [(MTLToolsDepthStencilState *)self->_currentDepthStencil objectFunctionData];
    [MTL4GPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v20 = 0;
    [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v20 length:4 atIndex:24 stage:8];
    if ((*(self->_drawID.pipelineStateID + 20) & 0x400000001) != 0)
    {
      fragmentMaxCallStackDepth = [(MTLToolsDepthStencilState *)self->_currentDepthStencil objectMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:8];
    }

    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [-[MTL4GPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:-[MTL4GPUDebugRenderCommandEncoder _internalBindingTableForStage:](self length:{"_internalBindingTableForStage:", 8), 320), "gpuAddress"}], 0, 8);
  }

  if ((self->_tileThreadgroup.entries[0].offset & 0x100) != 0)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:self->super.super.super._device[3].samplerObjectCache index:21 stage:16];
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:*&self->super.super.super._device[3]._integrated index:7 stage:16];
    *&self->_drawID.encoderID = [(MTLToolsDepthStencilState *)self->_currentDepthStencil meshFunctionData];
    *(self->_drawID.pipelineStateID + 20);
    [MTL4GPUDebugRenderCommandEncoder setInternalBytesForStage:"setInternalBytesForStage:length:atIndex:stage:" length:? atIndex:? stage:?];
    v20 = 0;
    [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v20 length:4 atIndex:24 stage:16];
    [(MTL4GPUDebugRenderCommandEncoder *)self _internalBindingTableForStage:16];
    if ((*(self->_drawID.pipelineStateID + 20) & 0x400000001) != 0)
    {
      fragmentMaxCallStackDepth = [(MTLToolsDepthStencilState *)self->_currentDepthStencil meshMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&fragmentMaxCallStackDepth length:4 atIndex:22 stage:16];
    }

    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [-[MTL4GPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:-[MTL4GPUDebugRenderCommandEncoder _internalBindingTableForStage:](self length:{"_internalBindingTableForStage:", 16), 320), "gpuAddress"}], 0, 16);
  }

  ++HIDWORD(self->_encoderType);
}

- (void)setArgumentTable:(id)table atStages:(unint64_t)stages
{
  baseObject = [table baseObject];
  if (stages)
  {
    self->currentArgumentTables[1] = baseObject;
    if ((stages & 2) == 0)
    {
LABEL_3:
      if ((stages & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((stages & 2) == 0)
  {
    goto LABEL_3;
  }

  self->currentArgumentTables[2] = baseObject;
  if ((stages & 8) == 0)
  {
LABEL_4:
    if ((stages & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    self->currentArgumentTables[4] = baseObject;
    if ((stages & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  self->currentArgumentTables[3] = baseObject;
  if ((stages & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((stages & 4) != 0)
  {
LABEL_6:
    *&self->_vertexAmpState.count = baseObject;
  }

LABEL_7:
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setArgumentTable:table atStages:stages];
}

- (void)setBufferUsageTable:(id)table textureUsageTable:(id)usageTable forStage:(unint64_t)stage
{
  if (*(self->_drawID.pipelineStateID + 22))
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:table index:5 stage:?];

    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:usageTable index:6 stage:stage];
  }
}

- (void)setRenderPipelineStateBuffers:(id)buffers
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(&self->_enableUseResourceValidation + 1))
  {
    vertexConstantsBuffer = [buffers vertexConstantsBuffer];
  }

  else
  {
    vertexConstantsBuffer = 0;
  }

  if (self->_enableUseResourceValidation)
  {
    fragmentConstantsBuffer = [buffers fragmentConstantsBuffer];
  }

  else
  {
    fragmentConstantsBuffer = 0;
  }

  if (self->_objectStageActive)
  {
    tileConstantsBuffer = [buffers tileConstantsBuffer];
  }

  else
  {
    tileConstantsBuffer = 0;
  }

  v20 = fragmentConstantsBuffer;
  if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    meshConstantsBuffer = [buffers meshConstantsBuffer];
  }

  else
  {
    meshConstantsBuffer = 0;
  }

  if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    objectConstantsBuffer = [buffers objectConstantsBuffer];
  }

  else
  {
    objectConstantsBuffer = 0;
  }

  if ((*(self->_drawID.pipelineStateID + 22) & 0x80) != 0)
  {
    v19 = meshConstantsBuffer;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    binaryFunctionData = [buffers binaryFunctionData];
    v13 = [binaryFunctionData countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(binaryFunctionData);
          }

          v17 = *(*(*(&v21 + 1) + 8 * i) + 8);
          if (v17)
          {
            if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
            {
              [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v17 usage:3 stages:31];
            }

            -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v17 baseObject]);
          }
        }

        v14 = [binaryFunctionData countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    if (vertexConstantsBuffer)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:vertexConstantsBuffer usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [vertexConstantsBuffer baseObject]);
    }

    if (v20)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v20 usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v20 baseObject]);
    }

    if (*(&self->_enableUseResourceValidation + 1))
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:vertexConstantsBuffer index:12 stage:1];
    }

    if (self->_enableUseResourceValidation)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v20 index:12 stage:2];
    }

    if (self->_objectStageActive)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:tileConstantsBuffer index:12 stage:4];
    }

    if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v19 index:12 stage:16];
    }

    if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:objectConstantsBuffer index:12 stage:8];
    }

    if (tileConstantsBuffer)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:tileConstantsBuffer usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [tileConstantsBuffer baseObject]);
    }

    if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1 && v19)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v19 usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v19 baseObject]);
    }

    if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1 && objectConstantsBuffer)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:objectConstantsBuffer usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [objectConstantsBuffer baseObject]);
    }

    goto LABEL_72;
  }

  if (vertexConstantsBuffer)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:vertexConstantsBuffer index:12 stage:1];
  }

  if (v20)
  {
    -[MTL4GPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v20 gpuAddress], 12, 2);
  }

  if (tileConstantsBuffer)
  {
    -[MTL4GPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [tileConstantsBuffer gpuAddress], 12, 4);
  }

  if (meshConstantsBuffer)
  {
    -[MTL4GPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [meshConstantsBuffer gpuAddress], 12, 16);
  }

  if (!objectConstantsBuffer)
  {
LABEL_72:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  gpuAddress = [objectConstantsBuffer gpuAddress];
  v11 = *MEMORY[0x277D85DE8];

  [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalValueForStage:gpuAddress index:12 stage:8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  lengthCopy = length;
  if ((*(self->_drawID.pipelineStateID + 23) & 7) != 0)
  {
    MTLGPUDebugTileThreadgroup::setThreadgroupMemoryLength(&self->_tileThreadgroup.entries[0].length, length, offset, index);

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(&self->_meshThreadgroup.threadgroupSizes[1], lengthCopy, index);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MTL4GPUDebugRenderCommandEncoder;
    [(MTL4ToolsRenderCommandEncoder *)&v8 setThreadgroupMemoryLength:length offset:offset atIndex:index];
  }
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if ((*(self->_drawID.pipelineStateID + 23) & 7) != 0)
  {
    v6 = &self->_objectThreadgroup.threadgroupSizes[1];

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(v6, length, index);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = MTL4GPUDebugRenderCommandEncoder;
    [(MTL4ToolsRenderCommandEncoder *)&v7 setObjectThreadgroupMemoryLength:length atIndex:index];
  }
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v9 drawPrimitives:primitives indirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v17.receiver = self;
  v17.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount baseVertex:vertex baseInstance:instance];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 drawPrimitives:primitives indirectBuffer:buffer];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferLength:length indirectBuffer:indirectBuffer];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v6 = *tile;
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v10[0] = *&region->var0.var0;
  v10[1] = v8;
  v10[2] = *&region->var1.var1;
  v11 = v7;
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 dispatchThreadsPerTile:&v11 inRegion:v10];
}

- (void)resetTileCondition
{
  v2.receiver = self;
  v2.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v2 resetTileCondition];
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *threadgroups;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *threads;
  v11 = *threadgroup;
  v10 = *meshThreadgroup;
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v11 drawMeshThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)restoreInternalState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  inheritsBuffers = [state inheritsBuffers];
  inheritsPipelineState = [state inheritsPipelineState];
  if (!inheritsBuffers || (inheritsPipelineState & 1) == 0)
  {
    renderTargetArrayIndexOffset_low = LOBYTE(self->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset);
    if (BYTE1(self->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset))
    {
      v9 = &self->_vertexAmpState.mappings[1];
    }

    else
    {
      v9 = 0;
    }

    [baseObject setVertexAmplificationCount:renderTargetArrayIndexOffset_low viewMappings:v9];
  }
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = LODWORD(range.location) | (LODWORD(range.length) << 32);
  v10 = 1;
  [(MTL4GPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:buffer variant:&v9];
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 executeCommandsInBuffer:buffer withRange:location, length];
  [(MTL4GPUDebugRenderCommandEncoder *)self restoreInternalState:buffer];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  v10[0] = indirectBuffer;
  v10[1] = offset;
  v11 = 0;
  [(MTL4GPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:buffer variant:v10];
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
  [(MTL4GPUDebugRenderCommandEncoder *)self restoreInternalState:buffer];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  LOBYTE(self->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset) = count;
  BYTE1(self->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset) = mappings != 0;
  if (count && mappings)
  {
    memmove(&self->_vertexAmpState.mappings[1], mappings, 8 * count);
  }

  v7.receiver = self;
  v7.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)setDepthStencilState:(id)state
{
  self->currentArgumentTables[0] = state;
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v3 setDepthStencilState:?];
}

- (void)setRenderPipelineState:(id)state
{
  self->_drawID.entryPointImageID = state;
  *(&self->_enableUseResourceValidation + 1) = [state vertexFunctionData] != 0;
  self->_enableUseResourceValidation = [state fragmentFunctionData] != 0;
  v5 = [state tileFunctionData] != 0;
  self->_objectStageActive = v5;
  self->_meshStageActive |= v5;
  v6 = !*(&self->_enableUseResourceValidation + 1) && [state objectFunctionData] != 0;
  LOBYTE(self->_tileThreadgroup.entries[0].offset) = v6;
  if (*(&self->_enableUseResourceValidation + 1))
  {
    BYTE1(self->_tileThreadgroup.entries[0].offset) = 0;
  }

  else
  {
    meshFunctionData = [state meshFunctionData];
    BYTE1(self->_tileThreadgroup.entries[0].offset) = meshFunctionData != 0;
    if (meshFunctionData)
    {
      if (self->_currentDepthStencil != state)
      {
        meshDebugInstrumentationData = [state meshDebugInstrumentationData];
        if ([meshDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(meshDebugInstrumentationData, "threadgroupArgumentOffset"))
        {
          LOBYTE(self->_objectThreadgroup.threadgroupSizes[0]) = 1;
        }
      }
    }
  }

  if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1 && self->_currentDepthStencil != state)
  {
    objectDebugInstrumentationData = [state objectDebugInstrumentationData];
    if ([objectDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(objectDebugInstrumentationData, "threadgroupArgumentOffset"))
    {
      LOBYTE(self->_options) = 1;
    }
  }

  if (self->_meshStageActive && self->_currentDepthStencil != state)
  {
    tileDebugInstrumentationData = [state tileDebugInstrumentationData];
    fragmentDebugInstrumentationData = [state fragmentDebugInstrumentationData];
    if ([tileDebugInstrumentationData activeThreadgroupMask] || objc_msgSend(fragmentDebugInstrumentationData, "activeThreadgroupMask"))
    {
      LOBYTE(self->_meshThreadgroup.threadgroupSizes[0]) = 1;
    }
  }

  if (self->_currentDepthStencil != state && (*(self->_drawID.pipelineStateID + 22) & 0x40) != 0)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self setRenderPipelineStateBuffers:state];
  }

  self->_currentDepthStencil = state;
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addUsedPipelineState:self->_currentDepthStencil];
  v12.receiver = self;
  v12.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v12 setRenderPipelineState:state];
}

- (void)endEncoding
{
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] endingEncoder:self type:self->_currentPipeline];
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
}

- (id).cxx_construct
{
  *(self + 328) = 0;
  *(self + 712) = 0;
  *(self + 1096) = 0;
  return self;
}

@end
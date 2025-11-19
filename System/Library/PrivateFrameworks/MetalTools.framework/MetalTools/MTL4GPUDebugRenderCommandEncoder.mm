@interface MTL4GPUDebugRenderCommandEncoder
- (MTL4GPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6;
- (id).cxx_construct;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (unint64_t)_internalBindingTableForStage:(unint64_t)a3;
- (void)bindInternalBufferForStage:(id)a3 index:(unint64_t)a4 stage:(unint64_t)a5 offset:(unint64_t)a6;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)flushBindings;
- (void)resetTileCondition;
- (void)restoreInternalState:(id)a3;
- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4;
- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 forStage:(unint64_t)a5;
- (void)setDepthStencilState:(id)a3;
- (void)setInternalBytesForStage:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5 stage:(unint64_t)a6;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setRenderPipelineStateBuffers:(id)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
@end

@implementation MTL4GPUDebugRenderCommandEncoder

- (unint64_t)_internalBindingTableForStage:(unint64_t)a3
{
  result = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return &self->_internalBindingTables[0][1];
    }

    else if (a3 == 2)
    {
      return &self->_internalBindingTables[1][1];
    }
  }

  else
  {
    switch(a3)
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

- (void)bindInternalBufferForStage:(id)a3 index:(unint64_t)a4 stage:(unint64_t)a5 offset:(unint64_t)a6
{
  if (a3)
  {
    v9 = [a3 gpuAddress] + a6;

    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalValueForStage:v9 index:a4 stage:a5];
  }
}

- (void)setInternalBytesForStage:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5 stage:(unint64_t)a6
{
  v9 = [(MTL4GPUDebugRenderCommandEncoder *)self temporaryBufferWithBytes:a3 length:a4];
  [v9 setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Base: %llX End: %llX", objc_msgSend(v9, "gpuAddress"), objc_msgSend(v9, "bufferEndAddress"))}];

  [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v9 index:a5 stage:a6];
}

- (MTL4GPUDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5 encoderID:(unsigned int)a6
{
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  result = [(MTL4ToolsCommandEncoder *)&v9 initWithCommandEncoder:a3 commandBuffer:a4, a5];
  if (result)
  {
    result->_currentPipeline = 1;
    p_deviceWrapper = &result->super.super.super._device[2]._deviceWrapper;
    result->_drawID.pipelineStateID = p_deviceWrapper;
    LODWORD(result->_encoderType) = a6;
    HIDWORD(result->_encoderType) = 0;
    BYTE2(result->_tileThreadgroup.entries[0].offset) = (*(p_deviceWrapper + 20) & 0x200000001) != 0;
    LOWORD(result->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset) = 1;
  }

  return result;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)v6 temporaryBufferWithBytes:a3 length:a4];
}

- (id)temporaryBufferWithLength:(unint64_t)a3
{
  v4 = [(MTL4ToolsCommandEncoder *)self commandBuffer];

  return [(MTL4CommandBuffer *)v4 temporaryBufferWithLength:a3];
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
      v19 = [(MTLToolsDepthStencilState *)self->_currentDepthStencil fragmentMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v19 length:4 atIndex:22 stage:2];
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
      v19 = [(MTLToolsDepthStencilState *)self->_currentDepthStencil tileMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v19 length:4 atIndex:22 stage:4];
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
      v19 = [(MTLToolsDepthStencilState *)self->_currentDepthStencil objectMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v19 length:4 atIndex:22 stage:8];
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
      v19 = [(MTLToolsDepthStencilState *)self->_currentDepthStencil meshMaxCallStackDepth];
      [(MTL4GPUDebugRenderCommandEncoder *)self setInternalBytesForStage:&v19 length:4 atIndex:22 stage:16];
    }

    -[MTLToolsObject setToolsDispatchBufferSPI:atIndex:stages:](self->super.super.super._baseObject, "setToolsDispatchBufferSPI:atIndex:stages:", [-[MTL4GPUDebugRenderCommandEncoder temporaryBufferWithBytes:length:](self temporaryBufferWithBytes:-[MTL4GPUDebugRenderCommandEncoder _internalBindingTableForStage:](self length:{"_internalBindingTableForStage:", 16), 320), "gpuAddress"}], 0, 16);
  }

  ++HIDWORD(self->_encoderType);
}

- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4
{
  v7 = [a3 baseObject];
  if (a4)
  {
    self->currentArgumentTables[1] = v7;
    if ((a4 & 2) == 0)
    {
LABEL_3:
      if ((a4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->currentArgumentTables[2] = v7;
  if ((a4 & 8) == 0)
  {
LABEL_4:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    self->currentArgumentTables[4] = v7;
    if ((a4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  self->currentArgumentTables[3] = v7;
  if ((a4 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((a4 & 4) != 0)
  {
LABEL_6:
    *&self->_vertexAmpState.count = v7;
  }

LABEL_7:
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setArgumentTable:a3 atStages:a4];
}

- (void)setBufferUsageTable:(id)a3 textureUsageTable:(id)a4 forStage:(unint64_t)a5
{
  if (*(self->_drawID.pipelineStateID + 22))
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:a3 index:5 stage:?];

    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:a4 index:6 stage:a5];
  }
}

- (void)setRenderPipelineStateBuffers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(&self->_enableUseResourceValidation + 1))
  {
    v5 = [a3 vertexConstantsBuffer];
  }

  else
  {
    v5 = 0;
  }

  if (self->_enableUseResourceValidation)
  {
    v6 = [a3 fragmentConstantsBuffer];
  }

  else
  {
    v6 = 0;
  }

  if (self->_objectStageActive)
  {
    v7 = [a3 tileConstantsBuffer];
  }

  else
  {
    v7 = 0;
  }

  v20 = v6;
  if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    v8 = [a3 meshConstantsBuffer];
  }

  else
  {
    v8 = 0;
  }

  if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1)
  {
    v9 = [a3 objectConstantsBuffer];
  }

  else
  {
    v9 = 0;
  }

  if ((*(self->_drawID.pipelineStateID + 22) & 0x80) != 0)
  {
    v19 = v8;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [a3 binaryFunctionData];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v12);
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

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    if (v5)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v5 usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v5 baseObject]);
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
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v5 index:12 stage:1];
    }

    if (self->_enableUseResourceValidation)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v20 index:12 stage:2];
    }

    if (self->_objectStageActive)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v7 index:12 stage:4];
    }

    if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v19 index:12 stage:16];
    }

    if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1)
    {
      [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v9 index:12 stage:8];
    }

    if (v7)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v7 usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v7 baseObject]);
    }

    if (BYTE1(self->_tileThreadgroup.entries[0].offset) == 1 && v19)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v19 usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v19 baseObject]);
    }

    if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1 && v9)
    {
      if ((*(self->_drawID.pipelineStateID + 20) & 0x200000001) != 0)
      {
        [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] markBuffer:v9 usage:3 stages:31];
      }

      -[MTL4CommandBuffer setResidencyForResource:](-[MTL4ToolsCommandEncoder commandBuffer](self, "commandBuffer"), "setResidencyForResource:", [v9 baseObject]);
    }

    goto LABEL_72;
  }

  if (v5)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalBufferForStage:v5 index:12 stage:1];
  }

  if (v20)
  {
    -[MTL4GPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v20 gpuAddress], 12, 2);
  }

  if (v7)
  {
    -[MTL4GPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v7 gpuAddress], 12, 4);
  }

  if (v8)
  {
    -[MTL4GPUDebugRenderCommandEncoder bindInternalValueForStage:index:stage:](self, "bindInternalValueForStage:index:stage:", [v8 gpuAddress], 12, 16);
  }

  if (!v9)
  {
LABEL_72:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = [v9 gpuAddress];
  v11 = *MEMORY[0x277D85DE8];

  [(MTL4GPUDebugRenderCommandEncoder *)self bindInternalValueForStage:v10 index:12 stage:8];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v6 = a3;
  if ((*(self->_drawID.pipelineStateID + 23) & 7) != 0)
  {
    MTLGPUDebugTileThreadgroup::setThreadgroupMemoryLength(&self->_tileThreadgroup.entries[0].length, a3, a4, a5);

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(&self->_meshThreadgroup.threadgroupSizes[1], v6, a5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MTL4GPUDebugRenderCommandEncoder;
    [(MTL4ToolsRenderCommandEncoder *)&v8 setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5];
  }
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if ((*(self->_drawID.pipelineStateID + 23) & 7) != 0)
  {
    v6 = &self->_objectThreadgroup.threadgroupSizes[1];

    MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(v6, a3, a4);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = MTL4GPUDebugRenderCommandEncoder;
    [(MTL4ToolsRenderCommandEncoder *)&v7 setObjectThreadgroupMemoryLength:a3 atIndex:a4];
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v9 drawPrimitives:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v15.receiver = self;
  v15.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v17.receiver = self;
  v17.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7 instanceCount:a8 baseVertex:a9 baseInstance:a10];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v7.receiver = self;
  v7.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 drawPrimitives:a3 indirectBuffer:a4];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13.receiver = self;
  v13.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferLength:a6 indirectBuffer:a7];
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v6 = *a3;
  v5.receiver = self;
  v5.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v7 = *&a3->var0;
  var2 = a3->var2;
  v8 = *&a4->var0.var2;
  v10[0] = *&a4->var0.var0;
  v10[1] = v8;
  v10[2] = *&a4->var1.var1;
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

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v12 = *a3;
  v11 = *a4;
  v10 = *a5;
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v12 threadsPerObjectThreadgroup:&v11 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  [(MTL4GPUDebugRenderCommandEncoder *)self flushBindings];
  v13 = *a5;
  v12 = *a6;
  v11.receiver = self;
  v11.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v11 drawMeshThreadgroupsWithIndirectBuffer:a3 indirectBufferOffset:a4 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)restoreInternalState:(id)a3
{
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 inheritsBuffers];
  v7 = [a3 inheritsPipelineState];
  if (!v6 || (v7 & 1) == 0)
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

    [v5 setVertexAmplificationCount:renderTargetArrayIndexOffset_low viewMappings:v9];
  }
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = LODWORD(a4.location) | (LODWORD(a4.length) << 32);
  v10 = 1;
  [(MTL4GPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:a3 variant:&v9];
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 executeCommandsInBuffer:a3 withRange:location, length];
  [(MTL4GPUDebugRenderCommandEncoder *)self restoreInternalState:a3];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v10[0] = a4;
  v10[1] = a5;
  v11 = 0;
  [(MTL4GPUDebugRenderCommandEncoder *)self prepareExecuteIndirect:a3 variant:v10];
  v9.receiver = self;
  v9.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4GPUDebugRenderCommandEncoder *)&v9 executeCommandsInBuffer:a3 indirectBuffer:a4 indirectBufferOffset:a5];
  [(MTL4GPUDebugRenderCommandEncoder *)self restoreInternalState:a3];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  LOBYTE(self->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset) = a3;
  BYTE1(self->_vertexAmpState.mappings[0].renderTargetArrayIndexOffset) = a4 != 0;
  if (a3 && a4)
  {
    memmove(&self->_vertexAmpState.mappings[1], a4, 8 * a3);
  }

  v7.receiver = self;
  v7.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)setDepthStencilState:(id)a3
{
  self->currentArgumentTables[0] = a3;
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v3 setDepthStencilState:?];
}

- (void)setRenderPipelineState:(id)a3
{
  self->_drawID.entryPointImageID = a3;
  *(&self->_enableUseResourceValidation + 1) = [a3 vertexFunctionData] != 0;
  self->_enableUseResourceValidation = [a3 fragmentFunctionData] != 0;
  v5 = [a3 tileFunctionData] != 0;
  self->_objectStageActive = v5;
  self->_meshStageActive |= v5;
  v6 = !*(&self->_enableUseResourceValidation + 1) && [a3 objectFunctionData] != 0;
  LOBYTE(self->_tileThreadgroup.entries[0].offset) = v6;
  if (*(&self->_enableUseResourceValidation + 1))
  {
    BYTE1(self->_tileThreadgroup.entries[0].offset) = 0;
  }

  else
  {
    v7 = [a3 meshFunctionData];
    BYTE1(self->_tileThreadgroup.entries[0].offset) = v7 != 0;
    if (v7)
    {
      if (self->_currentDepthStencil != a3)
      {
        v8 = [a3 meshDebugInstrumentationData];
        if ([v8 activeThreadgroupMask] || objc_msgSend(v8, "threadgroupArgumentOffset"))
        {
          LOBYTE(self->_objectThreadgroup.threadgroupSizes[0]) = 1;
        }
      }
    }
  }

  if (LOBYTE(self->_tileThreadgroup.entries[0].offset) == 1 && self->_currentDepthStencil != a3)
  {
    v9 = [a3 objectDebugInstrumentationData];
    if ([v9 activeThreadgroupMask] || objc_msgSend(v9, "threadgroupArgumentOffset"))
    {
      LOBYTE(self->_options) = 1;
    }
  }

  if (self->_meshStageActive && self->_currentDepthStencil != a3)
  {
    v10 = [a3 tileDebugInstrumentationData];
    v11 = [a3 fragmentDebugInstrumentationData];
    if ([v10 activeThreadgroupMask] || objc_msgSend(v11, "activeThreadgroupMask"))
    {
      LOBYTE(self->_meshThreadgroup.threadgroupSizes[0]) = 1;
    }
  }

  if (self->_currentDepthStencil != a3 && (*(self->_drawID.pipelineStateID + 22) & 0x40) != 0)
  {
    [(MTL4GPUDebugRenderCommandEncoder *)self setRenderPipelineStateBuffers:a3];
  }

  self->_currentDepthStencil = a3;
  [(MTL4CommandBuffer *)[(MTL4ToolsCommandEncoder *)self commandBuffer] addUsedPipelineState:self->_currentDepthStencil];
  v12.receiver = self;
  v12.super_class = MTL4GPUDebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v12 setRenderPipelineState:a3];
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
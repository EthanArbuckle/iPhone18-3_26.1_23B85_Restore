@interface MTL4DebugComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4;
- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 numSubstreams:(unint64_t)a5;
- (id).cxx_construct;
- (id)commandBuffer;
- (unint64_t)nextVirtualSubstream;
- (void)_resetEncoder;
- (void)_updateEncoderStateAfterDispatch;
- (void)_validateComputeFunctionArguments:(_MTLMessageContext *)a3;
- (void)_validateComputeFunctionBuiltinArguments:(_MTLMessageContext *)a3 threadsPerThreadgroup:(id *)a4 threadgroupsPerGrid:(id *)a5;
- (void)_validateCopyFromBufferToTextureCommon:(_MTLMessageContext *)a3 sourceBuffer:(id)a4 sourceOffset:(unint64_t)a5 sourceBytesPerRow:(unint64_t)a6 sourceBytesPerImage:(unint64_t)a7 sourceSize:(id *)a8 destinationTexture:(id)a9 destinationSlice:(unint64_t)a10 destinationLevel:(unint64_t)a11 destinationOrigin:(id *)a12 options:(unint64_t)a13;
- (void)_validateCopyFromTextureToBufferCommon:(_MTLMessageContext *)a3 sourceTexture:(id)a4 sourceSlice:(unint64_t)a5 sourceLevel:(unint64_t)a6 sourceOrigin:(id *)a7 sourceSize:(id *)a8 destinationBuffer:(id)a9 destinationOffset:(unint64_t)a10 destinationBytesPerRow:(unint64_t)a11 destinationBytesPerImage:(unint64_t)a12 options:(unint64_t)a13;
- (void)_validateCopyFromTextureToTextureCommon:(_MTLMessageContext *)a3 sourceTexture:(id)a4 sourceSlice:(unint64_t)a5 sourceLevel:(unint64_t)a6 sourceOrigin:(id *)a7 sourceSize:(id *)a8 destinationTexture:(id)a9 destinationSlice:(unint64_t)a10 destinationLevel:(unint64_t)a11 destinationOrigin:(id *)a12;
- (void)_validateFillTextureCommon:(_MTLMessageContext *)a3 texture:(id)a4 level:(unint64_t)a5 slice:(unint64_t)a6 region:(id *)a7;
- (void)_validateThreadsPerThreadgroupCommon:(_MTLMessageContext *)a3 threadsPerThreadgroup:(id *)a4;
- (void)beginVirtualSubstream;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3;
- (void)enableNullBufferBinds:(BOOL)a3;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
- (void)generateMipmapsForTexture:(id)a3;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)invalidateCompressedTexture:(id)a3;
- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6;
- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)setArgumentTable:(id)a3;
- (void)setComputePipelineState:(id)a3;
- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4;
- (void)setThreadgroupDistributionMode:(int64_t)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)signalProgress:(unsigned int)a3;
- (void)validateRefit:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7;
- (void)waitForVirtualSubstream:(unint64_t)a3;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeTimestampWithGranularity:(int64_t)a3 intoHeap:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation MTL4DebugComputeCommandEncoder

- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  v6 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v6)
  {
    v6->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:a3 device:v6->super.super.super._device commandBuffer:a4 encoderStageMask:939524096];
    v6->_allowsNullBufferBindings = 0;
    [(MTL4DebugComputeCommandEncoder *)v6 _resetEncoder];
  }

  return v6;
}

- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)a3 commandBuffer:(id)a4 numSubstreams:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  v8 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v8)
  {
    v8->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:a3 device:v8->super.super.super._device commandBuffer:a4 encoderStageMask:939524096];
    [(MTL4DebugComputeCommandEncoder *)v8 _resetEncoder];
    v8->_numSubstreams = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 dealloc];
}

- (id)commandBuffer
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v5 commandBuffer];
}

- (void)endEncoding
{
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder endEncodingPreamble];
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
}

- (void)setComputePipelineState:(id)a3
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 1) == 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (self->_currentComputePipelineState != a3)
    {
      goto LABEL_9;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if ((*&self->_encoderState & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  _MTLMessageContextEnd();
  self->_currentComputePipelineState = a3;
  *&self->_encoderState = *&self->_encoderState & 0xFC | 2;
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 setComputePipelineState:a3];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= a4)
  {
    v10 = a4;
    v13 = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:v10]< a3)
  {
    v11 = a3;
    v14 = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (a3 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v11])
  {
    v12 = a3;
    v15 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v17)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = &self->_currentThreadgroupMemoryLengths[a4];
      if (v8->isValid && !v8->hasBeenUsed)
      {
        v12 = a4;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v9 = &self->_currentThreadgroupMemoryLengths[a4];
  if (MTLReportFailureTypeEnabled() && !v9->hasLodClamp && !v9->threadgroupMemoryOffset && v9->threadgroupMemoryLength == a3 && v9->bufferAttributeStride == -1 && v9->type == 3 && !v9->object && !(v9->bufferLength | v9->var0 | v9->bufferOffset) && !*&v9->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v9->isValid = a3 != 0;
  v9->hasBeenUsed = 0;
  v9->type = 3;
  *&v9->object = 0u;
  *&v9->bufferLength = 0u;
  v9->bufferAttributeStride = -1;
  v9->threadgroupMemoryLength = a3;
  v9->threadgroupMemoryOffset = 0;
  v9->hasLodClamp = 0;
  v9->lodMinClamp = 0.0;
  v9->lodMaxClamp = 0.0;
  v16.receiver = self;
  v16.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v16 setThreadgroupMemoryLength:a3 atIndex:a4, v12, v15];
}

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    _MTLMessageContextPush_();
  }

  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    _MTLMessageContextPush_();
  }

  if (a4 * a3 >= 0x401)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentImageBlockSize.width = a3;
  self->_currentImageBlockSize.height = a4;
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 setImageblockWidth:a3 height:a4];
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_currentComputePipelineState)
  {
    _MTLMessageContextPush_();
  }

  if (HIDWORD(a3->var0))
  {
    var0 = a3->var0;
    _MTLMessageContextPush_();
  }

  if (HIDWORD(a3->var1))
  {
    var0 = a3->var1;
    _MTLMessageContextPush_();
  }

  var2 = a3->var2;
  if (HIDWORD(var2))
  {
    var0 = a3->var2;
    _MTLMessageContextPush_();
    var2 = a3->var2;
  }

  if (!(a3->var1 * a3->var0 * var2))
  {
    v14 = var2;
    v15 = 0;
    var0 = a3->var0;
    var1 = a3->var1;
    _MTLMessageContextPush_();
  }

  v19 = *&a4->var0;
  v20 = a4->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v21 threadsPerThreadgroup:&v19, var0, var1, v14, v15];
  if (self->_currentComputePipelineState)
  {
    v9 = (a3->var0 + a4->var0 - 1) / a4->var0;
    v10 = (a3->var1 + a4->var1 - 1) / a4->var1;
    v20 = a4->var2;
    v11 = a3->var2 + v20 - 1;
    v19 = *&a4->var0;
    *&v17 = v9;
    *(&v17 + 1) = v10;
    v18 = v11 / v20;
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionBuiltinArguments:v21 threadsPerThreadgroup:&v19 threadgroupsPerGrid:&v17];
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v21];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v19 = *&a3->var0;
  v20 = a3->var2;
  v17 = *&a4->var0;
  v18 = a4->var2;
  v16.receiver = self;
  v16.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v16 dispatchThreads:&v19 threadsPerThreadgroup:&v17];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_currentComputePipelineState)
  {
    _MTLMessageContextPush_();
  }

  if (HIDWORD(a3->var0))
  {
    var0 = a3->var0;
    _MTLMessageContextPush_();
  }

  if (HIDWORD(a3->var1))
  {
    var0 = a3->var1;
    _MTLMessageContextPush_();
  }

  var2 = a3->var2;
  if (HIDWORD(var2))
  {
    var0 = a3->var2;
    _MTLMessageContextPush_();
    var2 = a3->var2;
  }

  if (!(a3->var1 * a3->var0 * var2))
  {
    v11 = var2;
    v12 = 0;
    var0 = a3->var0;
    var1 = a3->var1;
    _MTLMessageContextPush_();
  }

  v16 = *&a4->var0;
  v17 = a4->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v18 threadsPerThreadgroup:&v16, var0, var1, v11, v12];
  if (self->_currentComputePipelineState)
  {
    v16 = *&a4->var0;
    v17 = a4->var2;
    v14 = *&a3->var0;
    v15 = a3->var2;
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionBuiltinArguments:v18 threadsPerThreadgroup:&v16 threadgroupsPerGrid:&v14];
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v18];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v16 = *&a3->var0;
  v17 = a3->var2;
  v14 = *&a4->var0;
  v15 = a4->var2;
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentComputePipelineState)
  {
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_5;
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  v9 = *&a4->var0;
  var2 = a4->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v11 threadsPerThreadgroup:&v9];
  if (self->_currentComputePipelineState)
  {
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v11];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v9 = *&a4->var0;
  var2 = a4->var2;
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 dispatchThreadgroupsWithIndirectBuffer:a3 threadsPerThreadgroup:&v9];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentComputePipelineState)
  {
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_5;
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  if (self->_currentComputePipelineState)
  {
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v7];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v6.receiver = self;
  v6.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v6 dispatchThreadsWithIndirectBuffer:a3];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v19.length = [a3 size];
  v18.location = location;
  v18.length = length;
  v19.location = 0;
  v9 = NSIntersectionRange(v18, v19);
  if (v9.location != location || v9.length != length)
  {
    v11 = length;
    v12 = [a3 size];
    v10 = location;
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(a3 descriptor] && (-[MTLComputePipelineState supportIndirectCommandBuffers](self->_currentComputePipelineState, "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if ([objc_msgSend(a3 "descriptor")])
  {
    *&self->_encoderState |= 1u;
  }

  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 executeCommandsInBuffer:a3 withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ([objc_msgSend(a3 "descriptor")] && (-[MTLComputePipelineState supportIndirectCommandBuffers](self->_currentComputePipelineState, "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if ([objc_msgSend(a3 "descriptor")])
  {
    *&self->_encoderState |= 1u;
  }

  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v8 executeCommandsInBuffer:a3 indirectBuffer:a4];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v8 = [a3 width];
  v9 = [a3 height];
  v10 = [a3 depth];
  v47 = v10;
  v48 = v9;
  v11 = [a4 width];
  v12 = [a4 height];
  v13 = [a4 depth];
  v45 = v13;
  v46 = v12;
  v14 = &v46;
  v15 = &v45;
  v16 = 1;
  if (v8 <= v11 && v9 <= v12 && v10 <= v13)
  {
    v16 = 0;
    v14 = &v48;
    v15 = &v47;
    v10 = v13;
    v9 = v12;
    v17 = v8;
    v8 = v11;
  }

  else
  {
    v17 = v11;
  }

  v18 = 0;
  v19 = *v14;
  v20 = *v15;
  while (v8 > v17 || v9 > v19 || v10 > v20)
  {
    v8 >>= 1;
    v9 >>= 1;
    ++v18;
    v10 >>= 1;
  }

  v26 = a4;
  if (v16)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  if (v16)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  v25 = v22;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = self->super.super.super._device;
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v24 = self->super.super.super._device;
  [v26 pixelFormat];
  [v26 width];
  [v26 height];
  [v26 depth];
  [v26 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v49 sourceTexture:a3 sourceSlice:0 sourceLevel:v21 sourceOrigin:v30 sourceSize:v29 destinationTexture:v26 destinationSlice:0 destinationLevel:v25 destinationOrigin:v28];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    _MTLMessageContextPush_();
    goto LABEL_21;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v27.receiver = self;
  v27.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v27 copyFromTexture:a3 toTexture:v26];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!a9)
  {
    _MTLMessageContextPush_();
  }

  v36 = a8;
  if (!a10)
  {
    _MTLMessageContextPush_();
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = self->super.super.super._device;
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v18 = self->super.super.super._device;
  [a6 pixelFormat];
  [a6 width];
  [a6 height];
  [a6 depth];
  [a6 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v33 = [a3 numFaces];
  v34 = [a6 numFaces];
  if (a10 + a5 > [a3 mipmapLevelCount])
  {
    v24 = a10;
    v28 = [a3 mipmapLevelCount];
    v20 = a5;
    _MTLMessageContextPush_();
  }

  if (a10 + v36 > [a6 mipmapLevelCount])
  {
    v25 = a10;
    v29 = [a6 mipmapLevelCount];
    v21 = v36;
    _MTLMessageContextPush_();
  }

  if (a9 + a4 > [a3 arrayLength] * v33)
  {
    v30 = [a3 arrayLength];
    v32 = v33;
    v22 = a4;
    v26 = a9;
    _MTLMessageContextPush_();
  }

  if (a9 + a7 > [a6 arrayLength] * v34)
  {
    [a6 arrayLength];
    _MTLMessageContextPush_();
  }

  memset(v41, 0, sizeof(v41));
  v39 = 0u;
  v40 = 0;
  memset(v38, 0, sizeof(v38));
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v56 sourceTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:v41 sourceSize:&v39 destinationTexture:a6 destinationSlice:a7 destinationLevel:v36 destinationOrigin:v38];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    _MTLMessageContextPush_();
    goto LABEL_17;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v37.receiver = self;
  v37.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v37 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 toTexture:a6 destinationSlice:a7 destinationLevel:v36 sliceCount:a9 levelCount:a10];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v23 = *&a6->var0;
  var2 = a6->var2;
  v21 = *&a7->var0;
  v22 = a7->var2;
  v20 = *a11;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v25 sourceTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v21 destinationTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v23 = *&a6->var0;
  var2 = a6->var2;
  v21 = *&a7->var0;
  v22 = a7->var2;
  v20 = *a11;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v21 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((~*(a3 + 20) & 0x60) == 0)
  {
    [MTL4DebugComputeCommandEncoder copyFromTexture:? sourceSlice:? sourceLevel:? sourceOrigin:? sourceSize:? toBuffer:? destinationOffset:? destinationBytesPerRow:? destinationBytesPerImage:?];
  }

  v22 = *&a6->var0;
  var2 = a6->var2;
  v20 = *&a7->var0;
  v21 = a7->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToBufferCommon:v24 sourceTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v20 destinationBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11 options:0];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    _MTLMessageContextPush_();
    goto LABEL_7;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v22 = *&a6->var0;
  var2 = a6->var2;
  v20 = *&a7->var0;
  v21 = a7->var2;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v20 toBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v17 = (a3 + 72);
  v18 = *(a3 + 20);
  if ((a12 & 1) != 0 && (v18 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(a12) UTF8String];
    v20 = *v17;
    _MTLMessageContextPush_();
    v18 = *(a3 + 20);
    if ((a12 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a12 & 2) == 0)
  {
    goto LABEL_8;
  }

  if ((v18 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(a12) UTF8String];
    v21 = *v17;
    _MTLMessageContextPush_();
    v18 = *(a3 + 20);
  }

LABEL_8:
  if ((v18 & 0x20) != 0 && !a12 && (v18 & 0x40) != 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(0) UTF8String];
    v19 = *v17;
    _MTLMessageContextPush_();
  }

  v28 = *&a6->var0;
  var2 = a6->var2;
  v26 = *&a7->var0;
  v27 = a7->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToBufferCommon:v30 sourceTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v28 sourceSize:&v26 destinationBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11 options:a12];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    _MTLMessageContextPush_();
    goto LABEL_14;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v28 = *&a6->var0;
  var2 = a6->var2;
  v26 = *&a7->var0;
  v27 = a7->var2;
  v25.receiver = self;
  v25.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v25 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v28 sourceSize:&v26 toBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11 options:a12];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v14 = self->super.super.super._device;
    if (v14 == [a3 device])
    {
      if (a5)
      {
        goto LABEL_8;
      }

LABEL_24:
      _MTLMessageContextPush_();
      goto LABEL_11;
    }
  }

  _MTLMessageContextPush_();
  if (!a5)
  {
    goto LABEL_24;
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v15 = self->super.super.super._device;
  if (v15 != [a5 device])
  {
    goto LABEL_24;
  }

LABEL_11:
  if (a7 + a4 > [objc_msgSend(a3 "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
  }

  if (a7 + a6 > [objc_msgSend(a5 "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
    if (a7)
    {
      goto LABEL_15;
    }
  }

  else if (a7)
  {
    goto LABEL_15;
  }

  _MTLMessageContextPush_();
LABEL_15:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    _MTLMessageContextPush_();
    goto LABEL_17;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v16.receiver = self;
  v16.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v16 copyFromBuffer:a3 sourceOffset:a4 toBuffer:a5 destinationOffset:a6 size:a7];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((~*(a8 + 20) & 0x60) == 0)
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:? sourceOffset:? sourceBytesPerRow:? sourceBytesPerImage:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  v21 = *&a7->var0;
  var2 = a7->var2;
  v20 = *a11;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromBufferToTextureCommon:v23 sourceBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v21 destinationTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20 options:0];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    _MTLMessageContextPush_();
    goto LABEL_7;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v21 = *&a7->var0;
  var2 = a7->var2;
  v20 = *a11;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v21 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v17 = (a8 + 72);
  v18 = *(a8 + 20);
  if ((a12 & 1) != 0 && (v18 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(a12) UTF8String];
    v20 = *v17;
    _MTLMessageContextPush_();
    v18 = *(a8 + 20);
  }

  if ((a12 & 2) != 0 && (v18 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(a12) UTF8String];
    v21 = *v17;
    _MTLMessageContextPush_();
    v18 = *(a8 + 20);
  }

  if ((v18 & 0x20) != 0 && !a12 && (v18 & 0x40) != 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(0) UTF8String];
    v19 = *v17;
    _MTLMessageContextPush_();
  }

  v27 = *&a7->var0;
  var2 = a7->var2;
  v26 = *a11;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromBufferToTextureCommon:v29 sourceBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v27 destinationTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v26 options:a12];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    _MTLMessageContextPush_();
    goto LABEL_15;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v27 = *&a7->var0;
  var2 = a7->var2;
  v26 = *a11;
  v25.receiver = self;
  v25.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v25 copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v27 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v26 options:a12];
}

- (void)generateMipmapsForTexture:(id)a3
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_22;
    }
  }

  else if (!a3)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v6 = self->super.super.super._device;
  if (v6 != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= 1)
  {
    [MTL4DebugComputeCommandEncoder generateMipmapsForTexture:a3];
  }

  v7 = (a3 + 72);
  v8 = *(a3 + 20);
  if ((v8 & 0x10) != 0)
  {
    if ((v8 & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *v7;
    _MTLMessageContextPush_();
    if ((*(a3 + 20) & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  v10 = *v7;
LABEL_22:
  _MTLMessageContextPush_();
LABEL_13:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    _MTLMessageContextPush_();
    goto LABEL_15;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v11.receiver = self;
  v11.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v11 generateMipmapsForTexture:a3];
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v6 = self->super.super.super._device;
  if (v6 != [a3 device])
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v7 optimizeContentsForGPUAccess:a3];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v10 = self->super.super.super._device;
  if (v10 != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v12 = a5;
    v13 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v11 = [a3 numFaces];
  if ([a3 arrayLength] * v11 <= a4)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    _MTLMessageContextPush_();
    goto LABEL_13;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v14 optimizeContentsForGPUAccess:a3 slice:a4 level:a5];
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v6 = self->super.super.super._device;
  if (v6 != [a3 device])
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v7 optimizeContentsForCPUAccess:a3];
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v10 = self->super.super.super._device;
  if (v10 != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v12 = a5;
    v13 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v11 = [a3 numFaces];
  if ([a3 arrayLength] * v11 <= a4)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    _MTLMessageContextPush_();
    goto LABEL_13;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v14 optimizeContentsForCPUAccess:a3 slice:a4 level:a5];
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v16.length = [a3 size];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);
  if (v9.location != location || v9.length != length)
  {
    [a3 size];
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    _MTLMessageContextPush_();
    goto LABEL_7;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 resetCommandsInBuffer:a3 withRange:location, length];
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!v32)
  {
    v38.length = [a3 size];
    v36.location = location;
    v36.length = length;
    v38.location = 0;
    v13 = NSIntersectionRange(v36, v38);
    if (v13.location != location || v13.length != length)
    {
      v27 = length;
      v29 = [a3 size];
      v25 = location;
      _MTLMessageContextPush_();
    }

    v39.length = [a5 size];
    v37.location = a6;
    v37.length = length;
    v39.location = 0;
    v14 = NSIntersectionRange(v37, v39);
    if (v14.location != a6 || v14.length != length)
    {
      v28 = length;
      v30 = [a5 size];
      v26 = a6;
      _MTLMessageContextPush_();
    }

    v15 = *(a3 + 8);
    v16 = *(a5 + 8);
    v17 = [v15 commandTypes];
    if (v17 != [v16 commandTypes])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v18 = [v15 inheritPipelineState];
    if (v18 != [v16 inheritPipelineState])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v19 = [v15 inheritBuffers];
    if (v19 != [v16 inheritBuffers])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v20 = [v15 maxVertexBufferBindCount];
    if (v20 != [v16 maxVertexBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v21 = [v15 maxFragmentBufferBindCount];
    if (v21 != [v16 maxFragmentBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v22 = [v15 maxKernelBufferBindCount];
    if (v22 != [v16 maxKernelBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v23 = [v15 maxObjectBufferBindCount];
    if (v23 != [v16 maxObjectBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    v24 = [v15 maxMeshBufferBindCount];
    if (v24 != [v16 maxMeshBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }
  }

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    _MTLMessageContextPush_();
    goto LABEL_30;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v31.receiver = self;
  v31.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v31 copyIndirectCommandBuffer:a3 sourceRange:location destination:length destinationIndex:a5, a6];
}

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v16.length = [a3 size];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);
  if (v9.location != location || v9.length != length)
  {
    [a3 size];
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 optimizeIndirectCommandBuffer:a3 withRange:location, length];
}

- (void)setArgumentTable:(id)a3
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else if (!a3)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  self->_currentArgumentTable = a3;
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 setArgumentTable:a3];
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_21:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_21;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v11 = self->super.super.super._device;
  if (v11 != [a3 device])
  {
    goto LABEL_21;
  }

LABEL_6:
  if (location + length > [objc_msgSend(a3 "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder fillBuffer:range:value:];
    if (length)
    {
      goto LABEL_8;
    }
  }

  else if (length)
  {
    goto LABEL_8;
  }

  _MTLMessageContextPush_();
LABEL_8:
  if ((location & 3) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((length & 3) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    _MTLMessageContextPush_();
    goto LABEL_14;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 fillBuffer:a3 range:location value:length, v5];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_24:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!a7)
  {
    goto LABEL_24;
  }

LABEL_3:
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  var0 = v30;
  _MTLMessageContextPush_();
  if ((WORD4(v30) & 0x2000) != 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = self->super.super.super._device;
    [a3 pixelFormat];
    [a3 width];
    [a3 height];
    [a3 depth];
    [a3 sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    if (a6->var0.var0)
    {
      var0 = v30;
      _MTLMessageContextPush_();
    }

    if (a6->var0.var1)
    {
      var0 = v30;
      _MTLMessageContextPush_();
    }

    if (a6->var0.var2)
    {
      var0 = v30;
      _MTLMessageContextPush_();
    }

    if (a6->var1.var0 != v23)
    {
      v20 = v23;
      v21 = v30;
      var0 = a6->var1.var0;
      _MTLMessageContextPush_();
    }

    if (a6->var1.var1 != *(&v23 + 1))
    {
      v20 = *(&v23 + 1);
      v21 = v30;
      var0 = a6->var1.var1;
      _MTLMessageContextPush_();
    }

    if (a6->var1.var2 != v24)
    {
      v20 = v24;
      v21 = v30;
      var0 = a6->var1.var2;
      _MTLMessageContextPush_();
    }
  }

  if (*(&v31 + 1) > a8)
  {
    v20 = *(&v31 + 1);
    v21 = a8;
    var0 = v30;
    _MTLMessageContextPush_();
  }

  v17 = *&a6->var0.var2;
  v23 = *&a6->var0.var0;
  v24 = v17;
  v25 = *&a6->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v34 texture:a3 level:a4 slice:a5 region:&v23, var0, v20, v21];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    _MTLMessageContextPush_();
    goto LABEL_20;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v18 = *&a6->var0.var2;
  v23 = *&a6->var0.var0;
  v24 = v18;
  v25 = *&a6->var1.var1;
  v22.receiver = self;
  v22.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v22 fillTexture:a3 level:a4 slice:a5 region:&v23 bytes:a7 length:a8];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  v17 = *&a6->var0.var2;
  v20 = *&a6->var0.var0;
  v21 = v17;
  v22 = *&a6->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v27 texture:a3 level:a4 slice:a5 region:&v20, 0];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v18 = *&a6->var0.var2;
  v20 = *&a6->var0.var0;
  v21 = v18;
  v22 = *&a6->var1.var1;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 fillTexture:a3 level:a4 slice:a5 region:&v20 color:var0, var1, var2, var3];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  v19 = *&a6->var0.var2;
  v23 = *&a6->var0.var0;
  v24 = v19;
  v25 = *&a6->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v34 texture:a3 level:a4 slice:a5 region:&v23, 0, v21];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v20 = *&a6->var0.var2;
  v23 = *&a6->var0.var0;
  v24 = v20;
  v25 = *&a6->var1.var1;
  v22.receiver = self;
  v22.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v22 fillTexture:a3 level:a4 slice:a5 region:&v23 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)enableNullBufferBinds:(BOOL)a3
{
  self->_allowsNullBufferBindings = a3;
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v3 enableNullBufferBinds:?];
}

- (void)signalProgress:(unsigned int)a3
{
  v15 = a3;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_numSubstreams)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentSubstreamProgressLabels.__tree_.__size_)
  {
    p_end_node = &self->_currentSubstreamProgressLabels.__tree_.__end_node_;
    left = self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_;
    if (left)
    {
      do
      {
        v8 = left;
        left = left[1];
      }

      while (left);
    }

    else
    {
      do
      {
        v8 = p_end_node[2].__left_;
        v9 = *v8 == p_end_node;
        p_end_node = v8;
      }

      while (v9);
    }

    if (*(v8 + 7) >= a3)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int &>(&self->_currentSubstreamProgressLabels, &v15);
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 signalProgress:v15];
}

- (void)beginVirtualSubstream
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 8u;
  self->_currentVirtualSubstreamIndex = 0;
  self->_currentVirtualSubstreamHasEncodedDispatch = 0;
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v4 beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  ++self->_currentVirtualSubstreamIndex;
  self->_currentVirtualSubstreamHasEncodedDispatch = 0;
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v5 nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v4 endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentVirtualSubstreamHasEncodedDispatch)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentVirtualSubstreamIndex <= a3)
  {
    currentVirtualSubstreamIndex = self->_currentVirtualSubstreamIndex;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 waitForVirtualSubstream:a3];
}

- (void)insertCompressedTextureReinterpretationFlush
{
  v2.receiver = self;
  v2.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v2 insertCompressedTextureReinterpretationFlush];
}

- (void)encodeStartDoWhile
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v4 encodeStartDoWhile];
}

- (BOOL)encodeEndWhile
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v5 encodeEndWhile];
}

- (void)encodeStartElse
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v4 encodeStartElse];
}

- (BOOL)encodeEndIf
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v5 encodeEndIf];
}

- (void)setThreadgroupDistributionMode:(int64_t)a3
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 setThreadgroupDistributionMode:a3];
}

- (void)invalidateCompressedTexture:(id)a3
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v6 = self->super.super.super._device;
  if (v6 != [a3 device])
  {
    goto LABEL_8;
  }

LABEL_6:
  _MTLMessageContextEnd();
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugComputeCommandEncoder;
  -[objc_super invalidateCompressedTexture:](v7, sel_invalidateCompressedTexture_, [a3 baseObject]);
}

- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v10 = self->super.super.super._device;
  if (v10 != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v12 = a5;
    v13 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v11 = [a3 numFaces];
  if ([a3 arrayLength] * v11 <= a4)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  _MTLMessageContextEnd();
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  -[MTL4ToolsComputeCommandEncoder invalidateCompressedTexture:slice:level:](&v14, sel_invalidateCompressedTexture_slice_level_, [a3 baseObject], a4, a5);
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v17[0])
  {
    checkMTL4AccelerationStructureDescriptorWithRefitOptions(v17, self->super.super.super._device, a4, 1, 3);
    checkAccelerationStructure(v17, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v17, v11, var0, var1, 0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v12 = [(MTLToolsObject *)self device];
    if (v12)
    {
      [(MTLDevice *)v12 accelerationStructureSizesWithDescriptor:a4];
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    if ([a3 size] < v14)
    {
      [a3 size];
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 buildAccelerationStructure:a3 descriptor:a4 scratchBuffer:var0, var1];
}

- (void)validateRefit:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7
{
  var0 = a6.var0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v28[0])
  {
    if (!a7)
    {
      _MTLMessageContextPush_();
    }

    checkMTL4AccelerationStructureDescriptorWithRefitOptions(v28, self->super.super.super._device, a4, 1, a7);
    checkAccelerationStructure(v28, self->super.super.super._device, a3, 0, @"Source acceleration structure");
    checkAccelerationStructure(v28, self->super.super.super._device, a5, 1, @"Destination acceleration structure");
    v14 = objc_opt_class();
    if (![v14 isSubclassOfClass:objc_opt_class()] || !objc_msgSend(objc_msgSend(a4, "geometryDescriptors"), "count"))
    {
LABEL_32:
      if (var0)
      {
        v25 = [(MTLToolsObject *)self device];
        if (v25)
        {
          [(MTLDevice *)v25 accelerationStructureSizesWithDescriptor:a4];
        }
      }

      goto LABEL_6;
    }

    v15 = 0;
    while (1)
    {
      v16 = [objc_msgSend(a4 "geometryDescriptors")];
      v17 = objc_opt_class();
      if ([v17 isSubclassOfClass:objc_opt_class()])
      {
        v18 = [v16 vertexFormat];
        v19 = [v16 vertexStride];
        if (MTLAttributeFormatComponentCount(v18) <= 1)
        {
          _MTLMessageContextPush_();
        }

        v20 = MTLAttributeFormatSize(v18);
        if (v19 && v20 > v19)
        {
          v26 = v19;
          v27 = v20;
          _MTLMessageContextPush_();
        }

        v21 = MTLAttributeFormatAlignment(v18);
        if (v19 % v21)
        {
          v26 = v19;
          v27 = v21;
          _MTLMessageContextPush_();
        }

        v23 = [v16 transformationMatrixBuffer];
        v24 = v22;
        if (v23)
        {
          if (v22)
          {
            goto LABEL_22;
          }

          v26 = @"Transformation buffer";
          v27 = 0;
LABEL_31:
          _MTLMessageContextPush_();
          goto LABEL_23;
        }

        if (v22)
        {
          v26 = 0;
          v27 = v22;
          _MTLMessageContextPush_();
LABEL_22:
          if (&v24[-1].length + 7 <= 0x2E)
          {
            v26 = v24;
            goto LABEL_31;
          }

LABEL_23:
          if ((v23 & 3) != 0)
          {
            v26 = v23;
            _MTLMessageContextPush_();
          }
        }
      }

      if (++v15 >= [objc_msgSend(a4 geometryDescriptors])
      {
        goto LABEL_32;
      }
    }
  }

LABEL_6:
  _MTLMessageContextEnd();
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  [(MTL4DebugComputeCommandEncoder *)self validateRefit:a3 descriptor:a4 destination:a5 scratchBuffer:a6.var0 options:a6.var1, 3];
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 refitAccelerationStructure:a3 descriptor:a4 destination:a5 scratchBuffer:var0, var1];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  [(MTL4DebugComputeCommandEncoder *)self validateRefit:a3 descriptor:a4 destination:a5 scratchBuffer:a6.var0 options:a6.var1, 3];
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v14 refitAccelerationStructure:a3 descriptor:a4 destination:a5 scratchBuffer:var0 options:var1, a7];
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    checkAccelerationStructure(v9, self->super.super.super._device, a3, 0, @"Source acceleration structure");
    checkAccelerationStructure(v9, self->super.super.super._device, a4, 0, @"Destination acceleration structure");
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 copyAccelerationStructure:a3 toAccelerationStructure:a4];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
    if (var1 <= 3)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeCompactedAccelerationStructureSize:a3 toBuffer:var0, var1];
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    checkAccelerationStructure(v9, self->super.super.super._device, a3, 0, @"Source acceleration structure");
    checkAccelerationStructure(v9, self->super.super.super._device, a4, 0, @"Destination acceleration structure");
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 copyAndCompactAccelerationStructure:a3 toAccelerationStructure:a4];
}

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
    if (var1 <= 7)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeSerializedAccelerationStructureSize:a3 toBuffer:var0, var1];
}

- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v6 = a3.var1;
  v7 = a3.var0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v13[0])
  {
    checkBufferRange(v13, v10, v7, v6, 0);
    checkBufferRange(v13, v11, var0, var1, 0);
    if (var1 <= 7)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 writeDeserializedAccelerationStructureSize:v7 toBuffer:v6, var0, var1];
}

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 serializePrimitiveAccelerationStructure:a3 toBuffer:var0, var1];
}

- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v14[0])
  {
    checkAccelerationStructure(v14, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v14, v11, var0, var1, 0);
    if ([a4 count])
    {
      v12 = 0;
      do
      {
        checkAccelerationStructure(v14, self->super.super.super._device, [a4 objectAtIndexedSubscript:v12++], 0, @"Primitive acceleration structure");
      }

      while (v12 < [a4 count]);
    }
  }

  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 serializeInstanceAccelerationStructure:a3 referencedAccelerationStructures:a4 toBuffer:var0, var1];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 deserializePrimitiveAccelerationStructure:a3 fromBuffer:var0, var1];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v16[0])
  {
    checkAccelerationStructure(v16, self->super.super.super._device, a3, 0, @"Acceleration structure");
    if ([a4 count])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        checkAccelerationStructure(v16, self->super.super.super._device, [a4 objectAtIndexedSubscript:v12], 0, @"Primitive acceleration structure");
        v12 = v13;
      }

      while ([a4 count] > v13++);
    }

    checkBufferRange(v16, v11, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v15.receiver = self;
  v15.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 deserializeInstanceAccelerationStructure:a3 referencedAccelerationStructures:a4 fromBuffer:var0, var1];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, a3, 0, @"Acceleration structure");
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v9 writeGenericBVHStructureSizesOfAccelerationStructure:a3 into:a4];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBuffer(v10, self->super.super.super._device, [a4 headerBuffer], objc_msgSend(a4, "headerBufferOffset"), 0, @"Header buffer");
    checkBuffer(v10, self->super.super.super._device, [a4 innerNodeBuffer], objc_msgSend(a4, "innerNodeBufferOffset"), 1, @"Inner node buffer");
    checkBuffer(v10, self->super.super.super._device, [a4 leafNodeBuffer], objc_msgSend(a4, "leafNodeBufferOffset"), 1, @"Leaf node buffer");
    checkBuffer(v10, self->super.super.super._device, [a4 primitiveBuffer], objc_msgSend(a4, "primitiveBufferOffset"), 1, @"Primitive buffer");
    checkBuffer(v10, self->super.super.super._device, [a4 geometryBuffer], objc_msgSend(a4, "geometryBufferOffset"), 1, @"Geometry buffer");
    checkBuffer(v10, self->super.super.super._device, [a4 instanceTransformBuffer], objc_msgSend(a4, "instanceTransformBufferOffset"), 1, @"Instance transform buffer");
    checkBuffer(v10, self->super.super.super._device, [a4 controlPointBuffer], objc_msgSend(a4, "controlPointBufferOffset"), 1, @"Control Point buffer");
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v9 writeGenericBVHStructureOfAccelerationStructure:a3 into:a4];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeGenericBVHStructureSizesOfAccelerationStructure:a3 toBuffer:var0, var1];
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
    if (var1 <= 0x17)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeAccelerationStructureSerializationData:a3 toBuffer:var0, var1];
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    checkAccelerationStructure(v11, self->super.super.super._device, a3, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeAccelerationStructureTraversalDepth:a3 toBuffer:var0, var1];
}

- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v9 = a4.var1;
  v10 = a4.var0;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  verifyCopyFromTensorToTensor(&v14, a3, v10, v9, a5, var0, var1);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)_validateThreadsPerThreadgroupCommon:(_MTLMessageContext *)a3 threadsPerThreadgroup:(id *)a4
{
  v27 = *a4;
  currentComputePipelineState = self->_currentComputePipelineState;
  if (currentComputePipelineState)
  {
    [(MTLComputePipelineState *)currentComputePipelineState requiredThreadsPerThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  p_var2 = &a4->var2;
  v8 = a4->var1 * a4->var0 * a4->var2;
  if (!v8)
  {
    var2 = a4->var2;
    v26 = 0;
    var0 = a4->var0;
    var1 = a4->var1;
    _MTLMessageContextPush_();
    v8 = a4->var1 * a4->var0 * a4->var2;
  }

  if (v8 > [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup:var0])
  {
    v16 = a4->var0;
    v17 = a4->var1;
    v18 = a4->var2;
    [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup];
    _MTLMessageContextPush_();
  }

  v9 = a4->var0;
  device = self->super.super.super._device;
  if (!device)
  {
    if (!v9)
    {
      v12 = a4->var1;
      goto LABEL_15;
    }

    v22 = a4->var0;
LABEL_29:
    memset(&v27, 0, sizeof(v27));
    goto LABEL_30;
  }

  [(MTLToolsDevice *)device maxThreadsPerThreadgroup];
  v11 = self->super.super.super._device;
  if (v9 <= v27.var0)
  {
    goto LABEL_9;
  }

  v19 = a4->var0;
  if (!v11)
  {
    goto LABEL_29;
  }

  [(MTLToolsDevice *)v11 maxThreadsPerThreadgroup];
LABEL_30:
  _MTLMessageContextPush_();
  v11 = self->super.super.super._device;
LABEL_9:
  v12 = a4->var1;
  if (v11)
  {
    [(MTLToolsDevice *)v11 maxThreadsPerThreadgroup];
    v13 = self->super.super.super._device;
    if (v12 <= v27.var1)
    {
      goto LABEL_11;
    }

    v21 = a4->var1;
    if (v13)
    {
      [(MTLToolsDevice *)v13 maxThreadsPerThreadgroup];
      goto LABEL_27;
    }

LABEL_24:
    v27.var2 = 0;
LABEL_27:
    _MTLMessageContextPush_();
    v13 = self->super.super.super._device;
LABEL_11:
    v14 = *p_var2;
    if (v13)
    {
      [(MTLToolsDevice *)v13 maxThreadsPerThreadgroup];
      v15 = v27.var2;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

LABEL_15:
  if (v12)
  {
    v20 = a4->var1;
    goto LABEL_24;
  }

  v15 = 0;
  v14 = *p_var2;
LABEL_17:
  if (v14 > v15)
  {
    [MTL4DebugComputeCommandEncoder _validateThreadsPerThreadgroupCommon:&self->super.super.super._device threadsPerThreadgroup:?];
  }
}

- (void)_validateCopyFromTextureToTextureCommon:(_MTLMessageContext *)a3 sourceTexture:(id)a4 sourceSlice:(unint64_t)a5 sourceLevel:(unint64_t)a6 sourceOrigin:(id *)a7 sourceSize:(id *)a8 destinationTexture:(id)a9 destinationSlice:(unint64_t)a10 destinationLevel:(unint64_t)a11 destinationOrigin:(id *)a12
{
  if (!(a8->var1 * a8->var0 * a8->var2))
  {
    v47 = *a8;
    v84 = 0;
    _MTLMessageContextPush_();
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [a4 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a4 storageMode] != 3)
    {
      if (a9)
      {
        goto LABEL_10;
      }

LABEL_160:
      _MTLMessageContextPush_();
      goto LABEL_15;
    }
  }

  _MTLMessageContextPush_();
  if (!a9)
  {
    goto LABEL_160;
  }

LABEL_10:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v19 = self->super.super.super._device;
  if (v19 != [a9 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a9 storageMode] == 3)
  {
    goto LABEL_160;
  }

LABEL_15:
  if (a3->var0 > 0)
  {
    return;
  }

  var0 = a8->var0;
  var1 = a8->var1;
  v87 = a8;
  var2 = a8->var2;
  v20 = (a4 + 72);
  v21 = (a9 + 72);
  v22 = [a4 pixelFormat];
  v88 = (a4 + 72);
  if (v22 != [a9 pixelFormat])
  {
    v23 = *(a4 + 20);
    if ((v23 & 0x20) != 0 && (*(a9 + 80) & 0x20) != 0 || (v23 & 0x40) != 0 && (*(a9 + 80) & 0x40) != 0)
    {
      if (*(a4 + 11) == *(a9 + 11))
      {
        goto LABEL_65;
      }

      v28 = *v88;
      v47.var0 = *v88;
      v47.var1 = *v21;
      goto LABEL_64;
    }

    v24 = (a4 + 72);
    if ((v23 & 0x20) == 0)
    {
      if ((*(a9 + 80) & 0x20) != 0)
      {
        v24 = (a9 + 72);
      }

      else
      {
        v24 = 0;
      }
    }

    v25 = (a4 + 72);
    if ((v23 & 0x40) == 0)
    {
      if ((*(a9 + 80) & 0x40) != 0)
      {
        v25 = (a9 + 72);
      }

      else
      {
        v25 = 0;
      }
    }

    if (v24)
    {
      if (!v25 || v24 == v25)
      {
        v26 = v20 == v24 ? a9 + 72 : a4 + 72;
        if ((v26[9] & 4) == 0)
        {
          v27 = v24[3];
          if (v27 != 2)
          {
            v27 = 4;
          }

          if (v27 == *(v26 + 3))
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_63;
    }

    if (v25)
    {
      if (v20 == v25)
      {
        v29 = a9 + 72;
      }

      else
      {
        v29 = a4 + 72;
      }

      if ((v29[9] & 4) == 0 && *(v29 + 3) == 1)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    v30 = *(a4 + 11);
    v31 = *(a9 + 11);
    v32 = *(a9 + 20);
    if ((v23 & 0x400) != 0)
    {
      v33 = (a4 + 72);
      if ((v32 & 0x400) != 0)
      {
LABEL_62:
        if (v30 == v31)
        {
          goto LABEL_65;
        }

LABEL_63:
        v39 = *v20;
        v47.var0 = *v20;
        v47.var1 = *v21;
LABEL_64:
        _MTLMessageContextPush_();
        goto LABEL_65;
      }
    }

    else if ((v32 & 0x400) != 0)
    {
      v33 = (a9 + 72);
    }

    else
    {
      v33 = 0;
    }

    if (v30 != v31 && v33)
    {
      if (v20 == v33)
      {
        v34 = a9 + 72;
      }

      else
      {
        v34 = a4 + 72;
      }

      if (*(v34 + 3) == v33[3])
      {
        v36 = v33[4];
        v35 = v33[5];
        v37 = v33[6];
        if (v20 == v33)
        {
          var0 /= v36;
          var1 /= v35;
          v38 = var2 / v37;
        }

        else
        {
          var0 *= v36;
          var1 *= v35;
          v38 = v37 * var2;
        }

        var2 = v38;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_65:
  v40 = [a4 sampleCount];
  if (v40 != [a9 sampleCount])
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if ([a4 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([a9 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  v86 = a7;
  if ([a4 mipmapLevelCount] <= a6)
  {
    v48 = a6;
    v64 = [a4 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v41 = [a4 numFaces];
  if ([a4 arrayLength] * v41 <= a5)
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if ([a9 mipmapLevelCount] <= a11)
  {
    v49 = a11;
    v65 = [a9 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v42 = [a9 numFaces];
  if ([a9 arrayLength] * v42 <= a10)
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if (a3->var0 <= 0)
  {
    v85 = (a9 + 72);
    v43 = self->super.super.super._device;
    [a4 pixelFormat];
    [a4 width];
    [a4 height];
    [a4 depth];
    [a4 sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v44 = self->super.super.super._device;
    [a9 pixelFormat];
    [a9 width];
    [a9 height];
    [a9 depth];
    [a9 sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v104 = *&v86->var0;
    v105 = v86->var2;
    v101 = *&v87->var0;
    v103 = v87->var2;
    v93 = *v88;
    v95 = *(a4 + 88);
    v97 = *(a4 + 104);
    v99 = *(a4 + 15);
    _MTLAdjustMTLSize();
    v102 = *a12;
    v94 = *(a9 + 72);
    v96 = *(a9 + 88);
    v98 = *(a9 + 104);
    v100 = *(a9 + 15);
    _MTLAdjustMTLSize();
    v45 = v86->var0;
    if ((*(a4 + 81) & 4) != 0)
    {
      if (v45)
      {
        _MTLMessageContextPush_();
      }

      if (v86->var1)
      {
        v59 = v86->var1;
        _MTLMessageContextPush_();
      }

      if (v86->var2)
      {
        v60 = v86->var2;
        goto LABEL_162;
      }
    }

    else
    {
      if (v87->var0 + v45)
      {
        _MTLMessageContextPush_();
      }

      if (v87->var1 + v86->var1)
      {
        v58 = v87->var1 + v86->var1;
        _MTLMessageContextPush_();
      }

      if (v87->var2 + v86->var2)
      {
        v50 = v87->var2 + v86->var2;
LABEL_162:
        _MTLMessageContextPush_();
      }
    }

    v46 = a12->var0;
    if ((*(a9 + 81) & 4) != 0)
    {
      if (v46)
      {
        _MTLMessageContextPush_();
      }

      if (a12->var1)
      {
        v62 = a12->var1;
        _MTLMessageContextPush_();
      }

      if (!a12->var2)
      {
        goto LABEL_104;
      }

      v63 = a12->var2;
    }

    else
    {
      if (v46 + var0)
      {
        _MTLMessageContextPush_();
      }

      if (a12->var1 + var1)
      {
        v61 = a12->var1 + var1;
        _MTLMessageContextPush_();
      }

      if (!(a12->var2 + var2))
      {
        goto LABEL_104;
      }

      v51 = a12->var2 + var2;
    }

    _MTLMessageContextPush_();
LABEL_104:
    if ((*(a4 + 81) & 4) != 0)
    {
      if (v86->var0 % *(a4 + 13))
      {
        v66 = *v88;
        _MTLMessageContextPush_();
      }

      if (v86->var1 % *(a4 + 14))
      {
        v67 = *v88;
        _MTLMessageContextPush_();
      }

      if (v86->var2 % *(a4 + 15))
      {
        v68 = *v88;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(a4 + 13))
      {
        v69 = *v88;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(a4 + 14))
      {
        v70 = *v88;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(a4 + 15))
      {
        v71 = *v88;
        _MTLMessageContextPush_();
      }
    }

    if ((*(a9 + 81) & 4) != 0)
    {
      if (a12->var0 % *(a9 + 13))
      {
        v72 = *v85;
        _MTLMessageContextPush_();
      }

      if (a12->var1 % *(a9 + 14))
      {
        v73 = *v85;
        _MTLMessageContextPush_();
      }

      if (a12->var2 % *(a9 + 15))
      {
        v74 = *v85;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(a9 + 13))
      {
        v75 = *v85;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(a9 + 14))
      {
        v76 = *v85;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(a9 + 15))
      {
        v77 = *v85;
        _MTLMessageContextPush_();
      }
    }

    if ((*(a4 + 81) & 0x20) != 0 || (*(a9 + 81) & 0x20) != 0)
    {
      if (v86->var0)
      {
        v52 = *v88;
        _MTLMessageContextPush_();
      }

      if (v86->var1)
      {
        v53 = *v88;
        _MTLMessageContextPush_();
      }

      if (v86->var2)
      {
        v54 = *v88;
        _MTLMessageContextPush_();
      }

      if (v87->var0)
      {
        v78 = *v88;
        _MTLMessageContextPush_();
      }

      if (v87->var1)
      {
        v79 = *v88;
        _MTLMessageContextPush_();
      }

      if (v87->var2)
      {
        v80 = *v88;
        _MTLMessageContextPush_();
      }

      if (a12->var0)
      {
        v55 = *v85;
        _MTLMessageContextPush_();
      }

      if (a12->var1)
      {
        v56 = *v85;
        _MTLMessageContextPush_();
      }

      if (a12->var2)
      {
        v57 = *v85;
        _MTLMessageContextPush_();
      }

      if (var0)
      {
        v81 = *v85;
        _MTLMessageContextPush_();
      }

      if (var1)
      {
        v82 = *v85;
        _MTLMessageContextPush_();
      }

      if (var2)
      {
        v83 = *v85;
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)_validateCopyFromTextureToBufferCommon:(_MTLMessageContext *)a3 sourceTexture:(id)a4 sourceSlice:(unint64_t)a5 sourceLevel:(unint64_t)a6 sourceOrigin:(id *)a7 sourceSize:(id *)a8 destinationBuffer:(id)a9 destinationOffset:(unint64_t)a10 destinationBytesPerRow:(unint64_t)a11 destinationBytesPerImage:(unint64_t)a12 options:(unint64_t)a13
{
  if ((~a13 & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(a13 & 0xFFFFFFFF9FFFFFFFLL);
  if (!(a8->var1 * a8->var0 * a8->var2))
  {
    var2 = a8->var2;
    v36 = 0;
    var0 = a8->var0;
    var1 = a8->var1;
    _MTLMessageContextPush_();
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [a4 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a4 storageMode] != 3)
    {
      if (a9)
      {
        goto LABEL_12;
      }

LABEL_65:
      _MTLMessageContextPush_();
      goto LABEL_15;
    }
  }

  _MTLMessageContextPush_();
  if (!a9)
  {
    goto LABEL_65;
  }

LABEL_12:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v20 = self->super.super.super._device;
  if (v20 != [a9 device])
  {
    goto LABEL_65;
  }

LABEL_15:
  if (a3->var0 <= 0)
  {
    if ([a4 isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    v37 = self;
    if ([a4 mipmapLevelCount] <= a6)
    {
      v29 = a6;
      var1 = [a4 mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    v21 = [a4 numFaces];
    if ([a4 arrayLength] * v21 <= a5)
    {
      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
    }

    if (a3->var0 <= 0)
    {
      v22 = v37->super.super.super._device;
      [a4 pixelFormat];
      [a4 width];
      [a4 height];
      [a4 depth];
      [a4 sampleCount];
      v23 = (a4 + 72);
      MTLGetTextureLevelInfoForDeviceWithOptions();
      v45 = *&a7->var0;
      v46 = a7->var2;
      v43 = *&a8->var0;
      v44 = a8->var2;
      v39 = *(a4 + 72);
      v40 = *(a4 + 88);
      v41 = *(a4 + 104);
      v42 = *(a4 + 15);
      _MTLAdjustMTLSize();
      v24 = a7->var0;
      if ((*(a4 + 81) & 4) != 0)
      {
        if (v24)
        {
          v30 = a7->var0;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        v26 = a3;
        if (a7->var1)
        {
          v30 = a7->var1;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        if (a7->var2)
        {
          v30 = a7->var2;
          v33 = 0;
          goto LABEL_68;
        }
      }

      else
      {
        v25 = a8->var0 + v24;
        if (v25)
        {
          v30 = v25;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        v26 = a3;
        if (a8->var1 + a7->var1)
        {
          v30 = a8->var1 + a7->var1;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        if (a8->var2 + a7->var2)
        {
          v30 = a8->var2 + a7->var2;
          v33 = 0;
LABEL_68:
          _MTLMessageContextPush_();
        }
      }

      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
      if ((*(a4 + 81) & 4) != 0)
      {
        if (a7->var0 % *(a4 + 13))
        {
          v33 = *v23;
          var2 = *(a4 + 13);
          v30 = a7->var0;
          _MTLMessageContextPush_();
        }

        if (a7->var1 % *(a4 + 14))
        {
          v33 = *v23;
          var2 = *(a4 + 14);
          v30 = a7->var1;
          _MTLMessageContextPush_();
        }

        if (a7->var2 % *(a4 + 15))
        {
          v33 = *v23;
          var2 = *(a4 + 15);
          v30 = a7->var2;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(a4 + 13))
        {
          v33 = *v23;
          var2 = *(a4 + 13);
          v30 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(a4 + 14))
        {
          v33 = *v23;
          var2 = *(a4 + 14);
          v30 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(a4 + 15))
        {
          v33 = *v23;
          var2 = *(a4 + 15);
          v30 = 0;
          _MTLMessageContextPush_();
        }

        if ((*(a4 + 81) & 0x20) != 0)
        {
          if ((a13 & 4) != 0)
          {
            goto LABEL_53;
          }
        }

        else if ((a13 & 4) == 0)
        {
          goto LABEL_53;
        }

        v30 = *v23;
        v26 = a3;
        _MTLMessageContextPush_();
      }

LABEL_53:
      if (v26->var0 <= 0)
      {
        v27 = v37->super.super.super._device;
        [a4 pixelFormat];
        [a4 sampleCount];
        MTLGetTextureLevelInfoForDeviceWithOptions();
        if (-a12 - a11 + a10 > [a9 length])
        {
          v31 = -a12 - a11 + a10;
          v34 = [a9 length];
          _MTLMessageContextPush_();
        }

        if (a11 % 0)
        {
          _MTLMessageContextPush_();
          v31 = a11;
          v34 = 0;
          _MTLMessageContextPush_();
        }

        if (a12 % 0)
        {
          v31 = a12;
          v34 = 0;
          _MTLMessageContextPush_();
        }

        if ([a4 textureType] != 9)
        {
          _MTLDebugFindMaxTextureWidth(v37->super.super.super._device, a4);
          if (a11)
          {
            _MTLMessageContextPush_();
          }
        }
      }
    }
  }
}

- (void)_validateCopyFromBufferToTextureCommon:(_MTLMessageContext *)a3 sourceBuffer:(id)a4 sourceOffset:(unint64_t)a5 sourceBytesPerRow:(unint64_t)a6 sourceBytesPerImage:(unint64_t)a7 sourceSize:(id *)a8 destinationTexture:(id)a9 destinationSlice:(unint64_t)a10 destinationLevel:(unint64_t)a11 destinationOrigin:(id *)a12 options:(unint64_t)a13
{
  if ((~a13 & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(a13 & 0xFFFFFFFF9FFFFFFFLL);
  if (!(a8->var1 * a8->var0 * a8->var2))
  {
    var2 = a8->var2;
    v34 = 0;
    var0 = a8->var0;
    var1 = a8->var1;
    _MTLMessageContextPush_();
  }

  if (!a4)
  {
    goto LABEL_65;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device == [a4 device])
  {
    if (!a9)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_65:
    _MTLMessageContextPush_();
    if (!a9)
    {
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v20 = self->super.super.super._device;
  if (v20 != [a9 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a9 storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

LABEL_16:
  if (a3->var0 <= 0)
  {
    v35 = a5;
    if ([a9 isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    v36 = self;
    if ([a9 mipmapLevelCount] <= a11)
    {
      v27 = a11;
      var1 = [a9 mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    v21 = [a9 numFaces];
    if ([a9 arrayLength] * v21 <= a10)
    {
      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
    }

    if (a3->var0 <= 0)
    {
      v22 = v36->super.super.super._device;
      [a9 pixelFormat];
      [a9 width];
      [a9 height];
      [a9 depth];
      [a9 sampleCount];
      v23 = a3;
      MTLGetTextureLevelInfoForDeviceWithOptions();
      if (a8->var0 + a12->var0)
      {
        v28 = a8->var0 + a12->var0;
        v31 = 0;
        _MTLMessageContextPush_();
      }

      if (a8->var1 + a12->var1)
      {
        v28 = a8->var1 + a12->var1;
        v31 = 0;
        _MTLMessageContextPush_();
      }

      if (a8->var2 + a12->var2)
      {
        v28 = a8->var2 + a12->var2;
        v31 = 0;
        _MTLMessageContextPush_();
      }

      if (a3->var0 <= 0)
      {
        v24 = (a9 + 72);
        v44 = *a12;
        v42 = *&a8->var0;
        v43 = a8->var2;
        v38 = *(a9 + 72);
        v39 = *(a9 + 88);
        v40 = *(a9 + 104);
        v41 = *(a9 + 15);
        _MTLAdjustMTLSize();
        if (a12->var0)
        {
          v28 = a12->var0;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        if (a12->var1)
        {
          v28 = a12->var1;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        if (a12->var2)
        {
          v28 = a12->var2;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
        if ((*(a9 + 81) & 4) == 0)
        {
          goto LABEL_54;
        }

        if (a12->var0 % *(a9 + 13))
        {
          v31 = *v24;
          var2 = *(a9 + 13);
          v28 = a12->var0;
          _MTLMessageContextPush_();
        }

        if (a12->var1 % *(a9 + 14))
        {
          v31 = *v24;
          var2 = *(a9 + 14);
          v28 = a12->var1;
          _MTLMessageContextPush_();
        }

        if (a12->var2 % *(a9 + 15))
        {
          v31 = *v24;
          var2 = *(a9 + 15);
          v28 = a12->var2;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(a9 + 13))
        {
          v31 = *v24;
          var2 = *(a9 + 13);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(a9 + 14))
        {
          v31 = *v24;
          var2 = *(a9 + 14);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(a9 + 15))
        {
          v31 = *v24;
          var2 = *(a9 + 15);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if ((*(a9 + 81) & 0x20) != 0)
        {
          if ((a13 & 4) != 0)
          {
            goto LABEL_54;
          }
        }

        else if ((a13 & 4) == 0)
        {
          goto LABEL_54;
        }

        v28 = *v24;
        v23 = a3;
        _MTLMessageContextPush_();
LABEL_54:
        if (v23->var0 <= 0)
        {
          v25 = v36->super.super.super._device;
          [a9 pixelFormat];
          [a9 sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (-a7 - a6 + v35 > [a4 length])
          {
            v29 = -a7 - a6 + v35;
            v32 = [a4 length];
            _MTLMessageContextPush_();
          }

          if (a6 % 0)
          {
            v29 = a6;
            v32 = 0;
            _MTLMessageContextPush_();
          }

          if (a7 % 0)
          {
            v29 = a7;
            v32 = 0;
            _MTLMessageContextPush_();
          }

          if ([a9 textureType] != 9)
          {
            _MTLDebugFindMaxTextureWidth(v36->super.super.super._device, a9);
            if (a6)
            {
              _MTLMessageContextPush_();
            }
          }
        }
      }
    }
  }
}

- (void)_validateFillTextureCommon:(_MTLMessageContext *)a3 texture:(id)a4 level:(unint64_t)a5 slice:(unint64_t)a6 region:(id *)a7
{
  p_var1 = &a7->var1;
  if (!(a7->var1.var1 * a7->var1.var0 * a7->var1.var2))
  {
    var1 = a7->var1;
    _MTLMessageContextPush_();
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [a4 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a4 mipmapLevelCount] <= a5)
    {
      v18 = a5;
      v22 = [a4 mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    v15 = [a4 numFaces];
    if ([a4 arrayLength] * v15 <= a6)
    {
      [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  if (a3->var0 <= 0)
  {
    [(MTLToolsObject *)self->super.super.super._device baseObject];
    [a4 pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    v16 = self->super.super.super._device;
    [a4 pixelFormat];
    [a4 width];
    [a4 height];
    [a4 depth];
    [a4 sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v25 = *&a7->var0.var0;
    var2 = a7->var0.var2;
    v23 = *&p_var1->var0;
    v24 = p_var1->var2;
    _MTLAdjustMTLSize();
    if (a7->var0.var0)
    {
      var0 = a7->var0.var0;
      _MTLMessageContextPush_();
    }

    if (a7->var0.var1)
    {
      v20 = a7->var0.var1;
      _MTLMessageContextPush_();
    }

    if (a7->var0.var2)
    {
      v21 = a7->var0.var2;
      _MTLMessageContextPush_();
    }
  }
}

- (void)_resetEncoder
{
  bzero(self->_currentThreadgroupMemoryLengths, 0xAA8uLL);
  self->_currentImageBlockSize.width = 0;
  self->_currentImageBlockSize.height = 0;
  self->_currentImageBlockSize.depth = 1;
  self->_currentArgumentTable = 0;
  self->_currentComputePipelineState = 0;
  *&self->_encoderState = *&self->_encoderState & 0xF0 | 1;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder resetEncoderState];
  self->_numSubstreams = 0;
  std::__tree<unsigned int>::destroy(&self->_currentSubstreamProgressLabels, self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_);
  self->_currentSubstreamProgressLabels.__tree_.__begin_node_ = &self->_currentSubstreamProgressLabels.__tree_.__end_node_;
  self->_currentSubstreamProgressLabels.__tree_.__size_ = 0;
  self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_ = 0;
  self->_currentVirtualSubstreamIndex = 0;
  self->_currentVirtualSubstreamHasEncodedDispatch = 0;
}

- (void)_updateEncoderStateAfterDispatch
{
  *&self->_encoderState |= 1u;
  self->_currentVirtualSubstreamHasEncodedDispatch = 1;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
}

- (void)_validateComputeFunctionBuiltinArguments:(_MTLMessageContext *)a3 threadsPerThreadgroup:(id *)a4 threadgroupsPerGrid:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  currentComputePipelineState = self->_currentComputePipelineState;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [-[MTLComputePipelineState validationReflection](currentComputePipelineState "validationReflection")];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v33 = xmmword_22E27C168;
        var2 = 1;
        v10 = [v9 builtInType];
        if (v10 > 10)
        {
          if ((v10 - 15) < 6)
          {
            goto LABEL_13;
          }

          if (v10 != 11)
          {
            if (v10 == 12)
            {
              goto LABEL_13;
            }

LABEL_20:
            v20 = [v9 name];
            _MTLMessageContextPush_();
            goto LABEL_13;
          }

          v11 = currentComputePipelineState + 192;
          v33 = *&a5->var0;
          var2 = a5->var2;
          v12 = @"threadgroups_per_grid";
        }

        else if (v10 > 7)
        {
          if (v10 == 8)
          {
            v11 = currentComputePipelineState + 120;
            v33 = a4->var1 * a4->var0 * a5->var2;
            var2 = 0;
            v12 = @"thread_index_in_threadgroup";
          }

          else if (v10 == 9)
          {
            v11 = currentComputePipelineState + 144;
            v33 = *&a4->var0;
            var2 = a4->var2;
            v12 = @"threads_per_threadgroup";
          }

          else
          {
            v11 = currentComputePipelineState + 168;
            v33 = *&a5->var0;
            var2 = a5->var2;
            v12 = @"threadgroup_position_in_grid";
          }
        }

        else
        {
          switch(v10)
          {
            case 5:
              v13 = a5->var1 * a4->var1;
              v11 = currentComputePipelineState + 48;
              *&v33 = a5->var0 * a4->var0;
              *(&v33 + 1) = v13;
              var2 = a5->var2 * a4->var2;
              v12 = @"thread_position_in_grid";
              break;
            case 6:
              v14 = a5->var1 * a4->var1;
              v11 = currentComputePipelineState + 72;
              *&v33 = a5->var0 * a4->var0;
              *(&v33 + 1) = v14;
              var2 = a5->var2 * a4->var2;
              v12 = @"threads_per_grid";
              break;
            case 7:
              v11 = currentComputePipelineState + 96;
              v33 = *&a4->var0;
              var2 = a4->var2;
              v12 = @"thread_position_in_threadgroup";
              break;
            default:
              goto LABEL_20;
          }
        }

        for (i = 0; i != 3; ++i)
        {
          v16 = *(&v33 + i);
          v17 = *&v11[8 * i];
          if (v16 > v17)
          {
            v23 = [v9 name];
            v24 = v12;
            v21 = v16;
            v22 = v17;
            v20 = i;
            _MTLMessageContextPush_();
          }
        }

LABEL_13:
        ++v8;
      }

      while (v8 != v6);
      v18 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      v6 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_validateComputeFunctionArguments:(_MTLMessageContext *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  currentComputePipelineState = self->_currentComputePipelineState;
  v6 = [-[MTLComputePipelineState validationReflection](currentComputePipelineState "validationReflection")];
  if ([(MTLComputePipelineState *)currentComputePipelineState function])
  {
    v7 = [-[MTLComputePipelineState function](currentComputePipelineState "function")];
  }

  else
  {
    v7 = _MTL4DebugFunctionDescriptorName([-[MTLComputePipelineState mtl4Descriptor](currentComputePipelineState "mtl4Descriptor")]);
  }

  v20 = currentComputePipelineState;
  LOBYTE(v19) = self->_allowsNullBufferBindings;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder validateFunctionArguments:a3 stage:@"Compute" functionName:v7 argumentTable:self->_currentArgumentTable boundThreadgroupMemoryArguments:self->_currentThreadgroupMemoryLengths bindings:v6 allowNullBufferBindings:v19];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 isUsed])
        {
          v14 = [v13 type];
          v15 = [v13 index];
          if (v14 == 1)
          {
            v10 += self->_currentThreadgroupMemoryLengths[v15].threadgroupMemoryLength;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v16 = [(MTLComputePipelineState *)v20 staticThreadgroupMemoryLength];
  v21 = *&self->_currentImageBlockSize.width;
  depth = self->_currentImageBlockSize.depth;
  v17 = v16 + v10 + [(MTLComputePipelineState *)v20 imageblockMemoryLengthForDimensions:&v21];
  if (v17 > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength])
  {
    [MTL4DebugComputeCommandEncoder _validateComputeFunctionArguments:];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)writeTimestampWithGranularity:(int64_t)a3 intoHeap:(id)a4 atIndex:(unint64_t)a5
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!a4)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ([a4 type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([a4 count] <= a5)
  {
    [a4 count];
LABEL_12:
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeTimestampWithGranularity:a3 intoHeap:a4 atIndex:a5];
}

- (id).cxx_construct
{
  v2 = 88;
  v3 = 2728;
  do
  {
    v4 = self + v2;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = -1;
    *(v4 + 19) = 0;
    *(v4 + 20) = 0;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v2 += 88;
    v4[72] = 0;
    v3 -= 88;
  }

  while (v3);
  *(self + 359) = 0;
  *(self + 358) = 0;
  *(self + 357) = self + 2864;
  return self;
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)fillBuffer:range:value:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)optimizeContentsForGPUAccess:slice:level:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  [v0 numFaces];
  [OUTLINED_FUNCTION_4() arrayLength];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 commandTypes];
  [OUTLINED_FUNCTION_6() commandTypes];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [v1 inheritPipelineState];
  [v0 inheritPipelineState];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  [v1 inheritBuffers];
  [v0 inheritBuffers];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxVertexBufferBindCount];
  [OUTLINED_FUNCTION_6() maxVertexBufferBindCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxFragmentBufferBindCount];
  [OUTLINED_FUNCTION_6() maxFragmentBufferBindCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxKernelBufferBindCount];
  [OUTLINED_FUNCTION_6() maxKernelBufferBindCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxObjectBufferBindCount];
  [OUTLINED_FUNCTION_6() maxObjectBufferBindCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxMeshBufferBindCount];
  [OUTLINED_FUNCTION_6() maxMeshBufferBindCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)_validateThreadsPerThreadgroupCommon:(uint64_t *)a1 threadsPerThreadgroup:(id *)a2 .cold.1(uint64_t *a1, id *a2)
{
  v2 = *a1;
  if (*a2)
  {
    [*a2 maxThreadsPerThreadgroup];
  }

  return OUTLINED_FUNCTION_7();
}

- (uint64_t)_validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 sampleCount];
  [OUTLINED_FUNCTION_6() sampleCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)_validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  [v0 numFaces];
  [OUTLINED_FUNCTION_4() arrayLength];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  [v0 numFaces];
  [OUTLINED_FUNCTION_4() arrayLength];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [(__CFString *)_MTLDebugBlitOptionString(v1) UTF8String];
  v3 = *v0;
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)_validateComputeFunctionArguments:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [*v0 maxThreadgroupMemoryLength];
  return MTLReportFailure();
}

@end
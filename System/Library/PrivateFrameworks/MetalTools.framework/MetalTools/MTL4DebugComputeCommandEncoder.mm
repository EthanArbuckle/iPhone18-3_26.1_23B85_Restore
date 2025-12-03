@interface MTL4DebugComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer;
- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer numSubstreams:(unint64_t)substreams;
- (id).cxx_construct;
- (id)commandBuffer;
- (unint64_t)nextVirtualSubstream;
- (void)_resetEncoder;
- (void)_updateEncoderStateAfterDispatch;
- (void)_validateComputeFunctionArguments:(_MTLMessageContext *)arguments;
- (void)_validateComputeFunctionBuiltinArguments:(_MTLMessageContext *)arguments threadsPerThreadgroup:(id *)threadgroup threadgroupsPerGrid:(id *)grid;
- (void)_validateCopyFromBufferToTextureCommon:(_MTLMessageContext *)common sourceBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size destinationTexture:(id)texture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2 options:(unint64_t)self3;
- (void)_validateCopyFromTextureToBufferCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationBuffer:(id)buffer destinationOffset:(unint64_t)self0 destinationBytesPerRow:(unint64_t)self1 destinationBytesPerImage:(unint64_t)self2 options:(unint64_t)self3;
- (void)_validateCopyFromTextureToTextureCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationTexture:(id)destinationTexture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2;
- (void)_validateFillTextureCommon:(_MTLMessageContext *)common texture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region;
- (void)_validateThreadsPerThreadgroupCommon:(_MTLMessageContext *)common threadsPerThreadgroup:(id *)threadgroup;
- (void)beginVirtualSubstream;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)enableNullBufferBinds:(BOOL)binds;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)invalidateCompressedTexture:(id)texture;
- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)setArgumentTable:(id)table;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setThreadgroupDistributionMode:(int64_t)mode;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)signalProgress:(unsigned int)progress;
- (void)validateRefit:(id)refit descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)waitForVirtualSubstream:(unint64_t)substream;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeTimestampWithGranularity:(int64_t)granularity intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4DebugComputeCommandEncoder

- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer
{
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  v6 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v6)
  {
    v6->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v6->super.super.super._device commandBuffer:buffer encoderStageMask:939524096];
    v6->_allowsNullBufferBindings = 0;
    [(MTL4DebugComputeCommandEncoder *)v6 _resetEncoder];
  }

  return v6;
}

- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer numSubstreams:(unint64_t)substreams
{
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  v8 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v8)
  {
    v8->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v8->super.super.super._device commandBuffer:buffer encoderStageMask:939524096];
    [(MTL4DebugComputeCommandEncoder *)v8 _resetEncoder];
    v8->_numSubstreams = substreams;
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

- (void)setComputePipelineState:(id)state
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!state)
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
    if (self->_currentComputePipelineState != state)
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
  self->_currentComputePipelineState = state;
  *&self->_encoderState = *&self->_encoderState & 0xFC | 2;
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 setComputePipelineState:state];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
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

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    indexCopy = index;
    maxComputeLocalMemorySizes = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:indexCopy]< length)
  {
    lengthCopy = length;
    maxThreadgroupMemoryLength = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:lengthCopy])
  {
    indexCopy2 = length;
    maxComputeThreadgroupMemoryAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v17)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = &self->_currentThreadgroupMemoryLengths[index];
      if (v8->isValid && !v8->hasBeenUsed)
      {
        indexCopy2 = index;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v9 = &self->_currentThreadgroupMemoryLengths[index];
  if (MTLReportFailureTypeEnabled() && !v9->hasLodClamp && !v9->threadgroupMemoryOffset && v9->threadgroupMemoryLength == length && v9->bufferAttributeStride == -1 && v9->type == 3 && !v9->object && !(v9->bufferLength | v9->var0 | v9->bufferOffset) && !*&v9->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v9->isValid = length != 0;
  v9->hasBeenUsed = 0;
  v9->type = 3;
  *&v9->object = 0u;
  *&v9->bufferLength = 0u;
  v9->bufferAttributeStride = -1;
  v9->threadgroupMemoryLength = length;
  v9->threadgroupMemoryOffset = 0;
  v9->hasLodClamp = 0;
  v9->lodMinClamp = 0.0;
  v9->lodMaxClamp = 0.0;
  v16.receiver = self;
  v16.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v16 setThreadgroupMemoryLength:length atIndex:index, indexCopy2, maxComputeThreadgroupMemoryAlignmentBytes];
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
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

  if ((width ^ (width - 1)) <= width - 1)
  {
    _MTLMessageContextPush_();
  }

  if ((height ^ (height - 1)) <= height - 1)
  {
    _MTLMessageContextPush_();
  }

  if (height * width >= 0x401)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentImageBlockSize.width = width;
  self->_currentImageBlockSize.height = height;
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 setImageblockWidth:width height:height];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
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

  if (HIDWORD(threads->var0))
  {
    var0 = threads->var0;
    _MTLMessageContextPush_();
  }

  if (HIDWORD(threads->var1))
  {
    var0 = threads->var1;
    _MTLMessageContextPush_();
  }

  var2 = threads->var2;
  if (HIDWORD(var2))
  {
    var0 = threads->var2;
    _MTLMessageContextPush_();
    var2 = threads->var2;
  }

  if (!(threads->var1 * threads->var0 * var2))
  {
    v14 = var2;
    v15 = 0;
    var0 = threads->var0;
    var1 = threads->var1;
    _MTLMessageContextPush_();
  }

  v19 = *&threadgroup->var0;
  v20 = threadgroup->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v21 threadsPerThreadgroup:&v19, var0, var1, v14, v15];
  if (self->_currentComputePipelineState)
  {
    v9 = (threads->var0 + threadgroup->var0 - 1) / threadgroup->var0;
    v10 = (threads->var1 + threadgroup->var1 - 1) / threadgroup->var1;
    v20 = threadgroup->var2;
    v11 = threads->var2 + v20 - 1;
    v19 = *&threadgroup->var0;
    *&v17 = v9;
    *(&v17 + 1) = v10;
    v18 = v11 / v20;
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionBuiltinArguments:v21 threadsPerThreadgroup:&v19 threadgroupsPerGrid:&v17];
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v21];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v19 = *&threads->var0;
  v20 = threads->var2;
  v17 = *&threadgroup->var0;
  v18 = threadgroup->var2;
  v16.receiver = self;
  v16.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v16 dispatchThreads:&v19 threadsPerThreadgroup:&v17];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
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

  if (HIDWORD(threadgroups->var0))
  {
    var0 = threadgroups->var0;
    _MTLMessageContextPush_();
  }

  if (HIDWORD(threadgroups->var1))
  {
    var0 = threadgroups->var1;
    _MTLMessageContextPush_();
  }

  var2 = threadgroups->var2;
  if (HIDWORD(var2))
  {
    var0 = threadgroups->var2;
    _MTLMessageContextPush_();
    var2 = threadgroups->var2;
  }

  if (!(threadgroups->var1 * threadgroups->var0 * var2))
  {
    v11 = var2;
    v12 = 0;
    var0 = threadgroups->var0;
    var1 = threadgroups->var1;
    _MTLMessageContextPush_();
  }

  v16 = *&threadgroup->var0;
  v17 = threadgroup->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v18 threadsPerThreadgroup:&v16, var0, var1, v11, v12];
  if (self->_currentComputePipelineState)
  {
    v16 = *&threadgroup->var0;
    v17 = threadgroup->var2;
    v14 = *&threadgroups->var0;
    v15 = threadgroups->var2;
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionBuiltinArguments:v18 threadsPerThreadgroup:&v16 threadgroupsPerGrid:&v14];
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v18];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v16 = *&threadgroups->var0;
  v17 = threadgroups->var2;
  v14 = *&threadgroup->var0;
  v15 = threadgroup->var2;
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
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
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  v9 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v11 threadsPerThreadgroup:&v9];
  if (self->_currentComputePipelineState)
  {
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v11];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v9 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 dispatchThreadgroupsWithIndirectBuffer:buffer threadsPerThreadgroup:&v9];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
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
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (buffer)
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
  [(MTL4ToolsComputeCommandEncoder *)&v6 dispatchThreadsWithIndirectBuffer:buffer];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  v19.length = [buffer size];
  v18.location = location;
  v18.length = length;
  v19.location = 0;
  v9 = NSIntersectionRange(v18, v19);
  if (v9.location != location || v9.length != length)
  {
    v11 = length;
    v12 = [buffer size];
    v10 = location;
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(buffer descriptor] && (-[MTLComputePipelineState supportIndirectCommandBuffers](self->_currentComputePipelineState, "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if ([objc_msgSend(buffer "descriptor")])
  {
    *&self->_encoderState |= 1u;
  }

  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 executeCommandsInBuffer:buffer withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
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
    if (indirectBuffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!indirectBuffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ([objc_msgSend(buffer "descriptor")] && (-[MTLComputePipelineState supportIndirectCommandBuffers](self->_currentComputePipelineState, "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if ([objc_msgSend(buffer "descriptor")])
  {
    *&self->_encoderState |= 1u;
  }

  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v8 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  width = [texture width];
  height = [texture height];
  depth = [texture depth];
  v47 = depth;
  v48 = height;
  width2 = [toTexture width];
  height2 = [toTexture height];
  depth2 = [toTexture depth];
  v45 = depth2;
  v46 = height2;
  v14 = &v46;
  v15 = &v45;
  v16 = 1;
  if (width <= width2 && height <= height2 && depth <= depth2)
  {
    v16 = 0;
    v14 = &v48;
    v15 = &v47;
    depth = depth2;
    height = height2;
    v17 = width;
    width = width2;
  }

  else
  {
    v17 = width2;
  }

  v18 = 0;
  v19 = *v14;
  v20 = *v15;
  while (width > v17 || height > v19 || depth > v20)
  {
    width >>= 1;
    height >>= 1;
    ++v18;
    depth >>= 1;
  }

  toTextureCopy = toTexture;
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
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v24 = self->super.super.super._device;
  [toTextureCopy pixelFormat];
  [toTextureCopy width];
  [toTextureCopy height];
  [toTextureCopy depth];
  [toTextureCopy sampleCount];
  MTLGetTextureLevelInfoForDevice();
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v49 sourceTexture:texture sourceSlice:0 sourceLevel:v21 sourceOrigin:v30 sourceSize:v29 destinationTexture:toTextureCopy destinationSlice:0 destinationLevel:v25 destinationOrigin:v28];
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
  [(MTL4ToolsComputeCommandEncoder *)&v27 copyFromTexture:texture toTexture:toTextureCopy];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!count)
  {
    _MTLMessageContextPush_();
  }

  destinationLevelCopy = destinationLevel;
  if (!levelCount)
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
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v18 = self->super.super.super._device;
  [toTexture pixelFormat];
  [toTexture width];
  [toTexture height];
  [toTexture depth];
  [toTexture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  numFaces = [texture numFaces];
  numFaces2 = [toTexture numFaces];
  if (levelCount + level > [texture mipmapLevelCount])
  {
    levelCountCopy = levelCount;
    mipmapLevelCount = [texture mipmapLevelCount];
    levelCopy = level;
    _MTLMessageContextPush_();
  }

  if (levelCount + destinationLevelCopy > [toTexture mipmapLevelCount])
  {
    levelCountCopy2 = levelCount;
    mipmapLevelCount2 = [toTexture mipmapLevelCount];
    v21 = destinationLevelCopy;
    _MTLMessageContextPush_();
  }

  if (count + slice > [texture arrayLength] * numFaces)
  {
    arrayLength = [texture arrayLength];
    v32 = numFaces;
    sliceCopy = slice;
    countCopy = count;
    _MTLMessageContextPush_();
  }

  if (count + destinationSlice > [toTexture arrayLength] * numFaces2)
  {
    [toTexture arrayLength];
    _MTLMessageContextPush_();
  }

  memset(v41, 0, sizeof(v41));
  v39 = 0u;
  v40 = 0;
  memset(v38, 0, sizeof(v38));
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v56 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:v41 sourceSize:&v39 destinationTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevelCopy destinationOrigin:v38];
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
  [(MTL4ToolsComputeCommandEncoder *)&v37 copyFromTexture:texture sourceSlice:slice sourceLevel:level toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevelCopy sliceCount:count levelCount:levelCount];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v23 = *&origin->var0;
  var2 = origin->var2;
  v21 = *&size->var0;
  v22 = size->var2;
  v20 = *destinationOrigin;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v25 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v21 destinationTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v20];
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
  v23 = *&origin->var0;
  var2 = origin->var2;
  v21 = *&size->var0;
  v22 = size->var2;
  v20 = *destinationOrigin;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v21 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v20];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((~*(texture + 20) & 0x60) == 0)
  {
    [MTL4DebugComputeCommandEncoder copyFromTexture:? sourceSlice:? sourceLevel:? sourceOrigin:? sourceSize:? toBuffer:? destinationOffset:? destinationBytesPerRow:? destinationBytesPerImage:?];
  }

  v22 = *&origin->var0;
  var2 = origin->var2;
  v20 = *&size->var0;
  v21 = size->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToBufferCommon:v24 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v20 destinationBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:0];
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
  v22 = *&origin->var0;
  var2 = origin->var2;
  v20 = *&size->var0;
  v21 = size->var2;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v20 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v17 = (texture + 72);
  v18 = *(texture + 20);
  if ((options & 1) != 0 && (v18 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    v20 = *v17;
    _MTLMessageContextPush_();
    v18 = *(texture + 20);
    if ((options & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_8;
  }

  if ((v18 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    v21 = *v17;
    _MTLMessageContextPush_();
    v18 = *(texture + 20);
  }

LABEL_8:
  if ((v18 & 0x20) != 0 && !options && (v18 & 0x40) != 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(0) UTF8String];
    v19 = *v17;
    _MTLMessageContextPush_();
  }

  v28 = *&origin->var0;
  var2 = origin->var2;
  v26 = *&size->var0;
  v27 = size->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToBufferCommon:v30 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v28 sourceSize:&v26 destinationBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];
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
  v28 = *&origin->var0;
  var2 = origin->var2;
  v26 = *&size->var0;
  v27 = size->var2;
  v25.receiver = self;
  v25.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v25 copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v28 sourceSize:&v26 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
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

  if (buffer)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v14 = self->super.super.super._device;
    if (v14 == [buffer device])
    {
      if (toBuffer)
      {
        goto LABEL_8;
      }

LABEL_24:
      _MTLMessageContextPush_();
      goto LABEL_11;
    }
  }

  _MTLMessageContextPush_();
  if (!toBuffer)
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
  if (v15 != [toBuffer device])
  {
    goto LABEL_24;
  }

LABEL_11:
  if (size + offset > [objc_msgSend(buffer "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
  }

  if (size + destinationOffset > [objc_msgSend(toBuffer "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
    if (size)
    {
      goto LABEL_15;
    }
  }

  else if (size)
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
  [(MTL4ToolsComputeCommandEncoder *)&v16 copyFromBuffer:buffer sourceOffset:offset toBuffer:toBuffer destinationOffset:destinationOffset size:size];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((~*(texture + 20) & 0x60) == 0)
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:? sourceOffset:? sourceBytesPerRow:? sourceBytesPerImage:? sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
  }

  v21 = *&size->var0;
  var2 = size->var2;
  v20 = *origin;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromBufferToTextureCommon:v23 sourceBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v21 destinationTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v20 options:0];
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
  v21 = *&size->var0;
  var2 = size->var2;
  v20 = *origin;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v21 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v20];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v17 = (texture + 72);
  v18 = *(texture + 20);
  if ((options & 1) != 0 && (v18 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    v20 = *v17;
    _MTLMessageContextPush_();
    v18 = *(texture + 20);
  }

  if ((options & 2) != 0 && (v18 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    v21 = *v17;
    _MTLMessageContextPush_();
    v18 = *(texture + 20);
  }

  if ((v18 & 0x20) != 0 && !options && (v18 & 0x40) != 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(0) UTF8String];
    v19 = *v17;
    _MTLMessageContextPush_();
  }

  v27 = *&size->var0;
  var2 = size->var2;
  v26 = *origin;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromBufferToTextureCommon:v29 sourceBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v27 destinationTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v26 options:options];
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
  v27 = *&size->var0;
  var2 = size->var2;
  v26 = *origin;
  v25.receiver = self;
  v25.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v25 copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v27 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v26 options:options];
}

- (void)generateMipmapsForTexture:(id)texture
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
    if (!texture)
    {
      goto LABEL_22;
    }
  }

  else if (!texture)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v6 = self->super.super.super._device;
  if (v6 != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if ([texture mipmapLevelCount] <= 1)
  {
    [MTL4DebugComputeCommandEncoder generateMipmapsForTexture:texture];
  }

  v7 = (texture + 72);
  v8 = *(texture + 20);
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
    if ((*(texture + 20) & 4) != 0)
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
  [(MTL4ToolsComputeCommandEncoder *)&v11 generateMipmapsForTexture:texture];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (access)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!access)
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
  if (v6 != [access device])
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
  [(objc_super *)v7 optimizeContentsForGPUAccess:access];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
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
    if (access)
    {
      goto LABEL_3;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!access)
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
  if (v10 != [access device])
  {
    _MTLMessageContextPush_();
  }

  if ([access mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [access mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [access numFaces];
  if ([access arrayLength] * numFaces <= slice)
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
  [(MTL4ToolsComputeCommandEncoder *)&v14 optimizeContentsForGPUAccess:access slice:slice level:level];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (access)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!access)
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
  if (v6 != [access device])
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
  [(objc_super *)v7 optimizeContentsForCPUAccess:access];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
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
    if (access)
    {
      goto LABEL_3;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!access)
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
  if (v10 != [access device])
  {
    _MTLMessageContextPush_();
  }

  if ([access mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [access mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [access numFaces];
  if ([access arrayLength] * numFaces <= slice)
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
  [(MTL4ToolsComputeCommandEncoder *)&v14 optimizeContentsForCPUAccess:access slice:slice level:level];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  v16.length = [buffer size];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);
  if (v9.location != location || v9.length != length)
  {
    [buffer size];
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
  [(MTL4ToolsComputeCommandEncoder *)&v10 resetCommandsInBuffer:buffer withRange:location, length];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
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
    v38.length = [buffer size];
    v36.location = location;
    v36.length = length;
    v38.location = 0;
    v13 = NSIntersectionRange(v36, v38);
    if (v13.location != location || v13.length != length)
    {
      v27 = length;
      v29 = [buffer size];
      v25 = location;
      _MTLMessageContextPush_();
    }

    v39.length = [destination size];
    v37.location = index;
    v37.length = length;
    v39.location = 0;
    v14 = NSIntersectionRange(v37, v39);
    if (v14.location != index || v14.length != length)
    {
      v28 = length;
      v30 = [destination size];
      indexCopy = index;
      _MTLMessageContextPush_();
    }

    v15 = *(buffer + 8);
    v16 = *(destination + 8);
    commandTypes = [v15 commandTypes];
    if (commandTypes != [v16 commandTypes])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    inheritPipelineState = [v15 inheritPipelineState];
    if (inheritPipelineState != [v16 inheritPipelineState])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    inheritBuffers = [v15 inheritBuffers];
    if (inheritBuffers != [v16 inheritBuffers])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxVertexBufferBindCount = [v15 maxVertexBufferBindCount];
    if (maxVertexBufferBindCount != [v16 maxVertexBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxFragmentBufferBindCount = [v15 maxFragmentBufferBindCount];
    if (maxFragmentBufferBindCount != [v16 maxFragmentBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxKernelBufferBindCount = [v15 maxKernelBufferBindCount];
    if (maxKernelBufferBindCount != [v16 maxKernelBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxObjectBufferBindCount = [v15 maxObjectBufferBindCount];
    if (maxObjectBufferBindCount != [v16 maxObjectBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxMeshBufferBindCount = [v15 maxMeshBufferBindCount];
    if (maxMeshBufferBindCount != [v16 maxMeshBufferBindCount])
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
  [(MTL4ToolsComputeCommandEncoder *)&v31 copyIndirectCommandBuffer:buffer sourceRange:location destination:length destinationIndex:destination, index];
}

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  v16.length = [buffer size];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);
  if (v9.location != location || v9.length != length)
  {
    [buffer size];
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
  [(MTL4ToolsComputeCommandEncoder *)&v10 optimizeIndirectCommandBuffer:buffer withRange:location, length];
}

- (void)setArgumentTable:(id)table
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!table)
    {
      goto LABEL_5;
    }
  }

  else if (!table)
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
  self->_currentArgumentTable = table;
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 setArgumentTable:table];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  pattern4Copy = pattern4;
  length = range.length;
  location = range.location;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (buffer)
    {
      goto LABEL_3;
    }

LABEL_21:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!buffer)
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
  if (v11 != [buffer device])
  {
    goto LABEL_21;
  }

LABEL_6:
  if (location + length > [objc_msgSend(buffer "baseObject")])
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
  [(MTL4ToolsComputeCommandEncoder *)&v12 fillBuffer:buffer range:location value:length, pattern4Copy];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (bytes)
    {
      goto LABEL_3;
    }

LABEL_24:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!bytes)
  {
    goto LABEL_24;
  }

LABEL_3:
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [texture pixelFormat];
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
    [texture pixelFormat];
    [texture width];
    [texture height];
    [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    if (region->var0.var0)
    {
      var0 = v30;
      _MTLMessageContextPush_();
    }

    if (region->var0.var1)
    {
      var0 = v30;
      _MTLMessageContextPush_();
    }

    if (region->var0.var2)
    {
      var0 = v30;
      _MTLMessageContextPush_();
    }

    if (region->var1.var0 != v23)
    {
      v20 = v23;
      lengthCopy = v30;
      var0 = region->var1.var0;
      _MTLMessageContextPush_();
    }

    if (region->var1.var1 != *(&v23 + 1))
    {
      v20 = *(&v23 + 1);
      lengthCopy = v30;
      var0 = region->var1.var1;
      _MTLMessageContextPush_();
    }

    if (region->var1.var2 != v24)
    {
      v20 = v24;
      lengthCopy = v30;
      var0 = region->var1.var2;
      _MTLMessageContextPush_();
    }
  }

  if (*(&v31 + 1) > length)
  {
    v20 = *(&v31 + 1);
    lengthCopy = length;
    var0 = v30;
    _MTLMessageContextPush_();
  }

  v17 = *&region->var0.var2;
  v23 = *&region->var0.var0;
  v24 = v17;
  v25 = *&region->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v34 texture:texture level:level slice:slice region:&v23, var0, v20, lengthCopy];
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
  v18 = *&region->var0.var2;
  v23 = *&region->var0.var0;
  v24 = v18;
  v25 = *&region->var1.var1;
  v22.receiver = self;
  v22.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v22 fillTexture:texture level:level slice:slice region:&v23 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
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
  [texture pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  v17 = *&region->var0.var2;
  v20 = *&region->var0.var0;
  v21 = v17;
  v22 = *&region->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v27 texture:texture level:level slice:slice region:&v20, 0];
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
  v18 = *&region->var0.var2;
  v20 = *&region->var0.var0;
  v21 = v18;
  v22 = *&region->var1.var1;
  v19.receiver = self;
  v19.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v19 fillTexture:texture level:level slice:slice region:&v20 color:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
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
  [texture pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  v19 = *&region->var0.var2;
  v23 = *&region->var0.var0;
  v24 = v19;
  v25 = *&region->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v34 texture:texture level:level slice:slice region:&v23, 0, v21];
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
  v20 = *&region->var0.var2;
  v23 = *&region->var0.var0;
  v24 = v20;
  v25 = *&region->var1.var1;
  v22.receiver = self;
  v22.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v22 fillTexture:texture level:level slice:slice region:&v23 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)enableNullBufferBinds:(BOOL)binds
{
  self->_allowsNullBufferBindings = binds;
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v3 enableNullBufferBinds:?];
}

- (void)signalProgress:(unsigned int)progress
{
  progressCopy = progress;
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

    if (*(v8 + 7) >= progress)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int &>(&self->_currentSubstreamProgressLabels, &progressCopy);
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 signalProgress:progressCopy];
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

- (void)waitForVirtualSubstream:(unint64_t)substream
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

  if (self->_currentVirtualSubstreamIndex <= substream)
  {
    currentVirtualSubstreamIndex = self->_currentVirtualSubstreamIndex;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 waitForVirtualSubstream:substream];
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

- (void)setThreadgroupDistributionMode:(int64_t)mode
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
  [(objc_super *)v6 setThreadgroupDistributionMode:mode];
}

- (void)invalidateCompressedTexture:(id)texture
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (texture)
    {
      goto LABEL_3;
    }

LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!texture)
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
  if (v6 != [texture device])
  {
    goto LABEL_8;
  }

LABEL_6:
  _MTLMessageContextEnd();
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugComputeCommandEncoder;
  -[objc_super invalidateCompressedTexture:](v7, sel_invalidateCompressedTexture_, [texture baseObject]);
}

- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
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
    if (texture)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!texture)
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
  if (v10 != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= slice)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  _MTLMessageContextEnd();
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  -[MTL4ToolsComputeCommandEncoder invalidateCompressedTexture:slice:level:](&v14, sel_invalidateCompressedTexture_slice_level_, [texture baseObject], slice, level);
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkMTL4AccelerationStructureDescriptorWithRefitOptions(v17, self->super.super.super._device, descriptor, 1, 3);
    checkAccelerationStructure(v17, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v17, v11, var0, var1, 0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    device = [(MTLToolsObject *)self device];
    if (device)
    {
      [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptor];
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    if ([structure size] < v14)
    {
      [structure size];
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 buildAccelerationStructure:structure descriptor:descriptor scratchBuffer:var0, var1];
}

- (void)validateRefit:(id)refit descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var0 = buffer.var0;
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
    if (!options)
    {
      _MTLMessageContextPush_();
    }

    checkMTL4AccelerationStructureDescriptorWithRefitOptions(v28, self->super.super.super._device, descriptor, 1, options);
    checkAccelerationStructure(v28, self->super.super.super._device, refit, 0, @"Source acceleration structure");
    checkAccelerationStructure(v28, self->super.super.super._device, destination, 1, @"Destination acceleration structure");
    v14 = objc_opt_class();
    if (![v14 isSubclassOfClass:objc_opt_class()] || !objc_msgSend(objc_msgSend(descriptor, "geometryDescriptors"), "count"))
    {
LABEL_32:
      if (var0)
      {
        device = [(MTLToolsObject *)self device];
        if (device)
        {
          [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptor];
        }
      }

      goto LABEL_6;
    }

    v15 = 0;
    while (1)
    {
      v16 = [objc_msgSend(descriptor "geometryDescriptors")];
      v17 = objc_opt_class();
      if ([v17 isSubclassOfClass:objc_opt_class()])
      {
        vertexFormat = [v16 vertexFormat];
        vertexStride = [v16 vertexStride];
        if (MTLAttributeFormatComponentCount(vertexFormat) <= 1)
        {
          _MTLMessageContextPush_();
        }

        v20 = MTLAttributeFormatSize(vertexFormat);
        if (vertexStride && v20 > vertexStride)
        {
          v26 = vertexStride;
          v27 = v20;
          _MTLMessageContextPush_();
        }

        v21 = MTLAttributeFormatAlignment(vertexFormat);
        if (vertexStride % v21)
        {
          v26 = vertexStride;
          v27 = v21;
          _MTLMessageContextPush_();
        }

        transformationMatrixBuffer = [v16 transformationMatrixBuffer];
        v24 = v22;
        if (transformationMatrixBuffer)
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
          if ((transformationMatrixBuffer & 3) != 0)
          {
            v26 = transformationMatrixBuffer;
            _MTLMessageContextPush_();
          }
        }
      }

      if (++v15 >= [objc_msgSend(descriptor geometryDescriptors])
      {
        goto LABEL_32;
      }
    }
  }

LABEL_6:
  _MTLMessageContextEnd();
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  [(MTL4DebugComputeCommandEncoder *)self validateRefit:structure descriptor:descriptor destination:destination scratchBuffer:buffer.var0 options:buffer.var1, 3];
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 refitAccelerationStructure:structure descriptor:descriptor destination:destination scratchBuffer:var0, var1];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  [(MTL4DebugComputeCommandEncoder *)self validateRefit:structure descriptor:descriptor destination:destination scratchBuffer:buffer.var0 options:buffer.var1, 3];
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v14 refitAccelerationStructure:structure descriptor:descriptor destination:destination scratchBuffer:var0 options:var1, options];
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
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
    checkAccelerationStructure(v9, self->super.super.super._device, structure, 0, @"Source acceleration structure");
    checkAccelerationStructure(v9, self->super.super.super._device, accelerationStructure, 0, @"Destination acceleration structure");
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 copyAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, size, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
    if (var1 <= 3)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeCompactedAccelerationStructureSize:size toBuffer:var0, var1];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
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
    checkAccelerationStructure(v9, self->super.super.super._device, structure, 0, @"Source acceleration structure");
    checkAccelerationStructure(v9, self->super.super.super._device, accelerationStructure, 0, @"Destination acceleration structure");
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v8 copyAndCompactAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, size, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
    if (var1 <= 7)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeSerializedAccelerationStructureSize:size toBuffer:var0, var1];
}

- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v6 = size.var1;
  v7 = size.var0;
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

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 serializePrimitiveAccelerationStructure:structure toBuffer:var0, var1];
}

- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v14, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v14, v11, var0, var1, 0);
    if ([structures count])
    {
      v12 = 0;
      do
      {
        checkAccelerationStructure(v14, self->super.super.super._device, [structures objectAtIndexedSubscript:v12++], 0, @"Primitive acceleration structure");
      }

      while (v12 < [structures count]);
    }
  }

  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 serializeInstanceAccelerationStructure:structure referencedAccelerationStructures:structures toBuffer:var0, var1];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 deserializePrimitiveAccelerationStructure:structure fromBuffer:var0, var1];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v16, self->super.super.super._device, structure, 0, @"Acceleration structure");
    if ([structures count])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        checkAccelerationStructure(v16, self->super.super.super._device, [structures objectAtIndexedSubscript:v12], 0, @"Primitive acceleration structure");
        v12 = v13;
      }

      while ([structures count] > v13++);
    }

    checkBufferRange(v16, v11, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v15.receiver = self;
  v15.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 deserializeInstanceAccelerationStructure:structure referencedAccelerationStructures:structures fromBuffer:var0, var1];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
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
    checkAccelerationStructure(v10, self->super.super.super._device, structure, 0, @"Acceleration structure");
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v9 writeGenericBVHStructureSizesOfAccelerationStructure:structure into:into];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
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
    checkAccelerationStructure(v10, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBuffer(v10, self->super.super.super._device, [into headerBuffer], objc_msgSend(into, "headerBufferOffset"), 0, @"Header buffer");
    checkBuffer(v10, self->super.super.super._device, [into innerNodeBuffer], objc_msgSend(into, "innerNodeBufferOffset"), 1, @"Inner node buffer");
    checkBuffer(v10, self->super.super.super._device, [into leafNodeBuffer], objc_msgSend(into, "leafNodeBufferOffset"), 1, @"Leaf node buffer");
    checkBuffer(v10, self->super.super.super._device, [into primitiveBuffer], objc_msgSend(into, "primitiveBufferOffset"), 1, @"Primitive buffer");
    checkBuffer(v10, self->super.super.super._device, [into geometryBuffer], objc_msgSend(into, "geometryBufferOffset"), 1, @"Geometry buffer");
    checkBuffer(v10, self->super.super.super._device, [into instanceTransformBuffer], objc_msgSend(into, "instanceTransformBufferOffset"), 1, @"Instance transform buffer");
    checkBuffer(v10, self->super.super.super._device, [into controlPointBuffer], objc_msgSend(into, "controlPointBufferOffset"), 1, @"Control Point buffer");
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v9 writeGenericBVHStructureOfAccelerationStructure:structure into:into];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeGenericBVHStructureSizesOfAccelerationStructure:structure toBuffer:var0, var1];
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, data, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
    if (var1 <= 0x17)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeAccelerationStructureSerializationData:data toBuffer:var0, var1];
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
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
    checkAccelerationStructure(v11, self->super.super.super._device, depth, 0, @"Acceleration structure");
    checkBufferRange(v11, v9, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeAccelerationStructureTraversalDepth:depth toBuffer:var0, var1];
}

- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice
{
  var1 = destinationSlice.var1;
  var0 = destinationSlice.var0;
  v9 = slice.var1;
  v10 = slice.var0;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  verifyCopyFromTensorToTensor(&v14, tensor, v10, v9, toTensor, var0, var1);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)_validateThreadsPerThreadgroupCommon:(_MTLMessageContext *)common threadsPerThreadgroup:(id *)threadgroup
{
  v27 = *threadgroup;
  currentComputePipelineState = self->_currentComputePipelineState;
  if (currentComputePipelineState)
  {
    [(MTLComputePipelineState *)currentComputePipelineState requiredThreadsPerThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  p_var2 = &threadgroup->var2;
  v8 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  if (!v8)
  {
    var2 = threadgroup->var2;
    v26 = 0;
    var0 = threadgroup->var0;
    var1 = threadgroup->var1;
    _MTLMessageContextPush_();
    v8 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  }

  if (v8 > [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup:var0])
  {
    v16 = threadgroup->var0;
    v17 = threadgroup->var1;
    v18 = threadgroup->var2;
    [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup];
    _MTLMessageContextPush_();
  }

  v9 = threadgroup->var0;
  device = self->super.super.super._device;
  if (!device)
  {
    if (!v9)
    {
      v12 = threadgroup->var1;
      goto LABEL_15;
    }

    v22 = threadgroup->var0;
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

  v19 = threadgroup->var0;
  if (!v11)
  {
    goto LABEL_29;
  }

  [(MTLToolsDevice *)v11 maxThreadsPerThreadgroup];
LABEL_30:
  _MTLMessageContextPush_();
  v11 = self->super.super.super._device;
LABEL_9:
  v12 = threadgroup->var1;
  if (v11)
  {
    [(MTLToolsDevice *)v11 maxThreadsPerThreadgroup];
    v13 = self->super.super.super._device;
    if (v12 <= v27.var1)
    {
      goto LABEL_11;
    }

    v21 = threadgroup->var1;
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
    v20 = threadgroup->var1;
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

- (void)_validateCopyFromTextureToTextureCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationTexture:(id)destinationTexture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2
{
  if (!(size->var1 * size->var0 * size->var2))
  {
    v47 = *size;
    v84 = 0;
    _MTLMessageContextPush_();
  }

  if (texture)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] != 3)
    {
      if (destinationTexture)
      {
        goto LABEL_10;
      }

LABEL_160:
      _MTLMessageContextPush_();
      goto LABEL_15;
    }
  }

  _MTLMessageContextPush_();
  if (!destinationTexture)
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
  if (v19 != [destinationTexture device])
  {
    _MTLMessageContextPush_();
  }

  if ([destinationTexture storageMode] == 3)
  {
    goto LABEL_160;
  }

LABEL_15:
  if (common->var0 > 0)
  {
    return;
  }

  var0 = size->var0;
  var1 = size->var1;
  sizeCopy = size;
  var2 = size->var2;
  v20 = (texture + 72);
  v21 = (destinationTexture + 72);
  pixelFormat = [texture pixelFormat];
  v88 = (texture + 72);
  if (pixelFormat != [destinationTexture pixelFormat])
  {
    v23 = *(texture + 20);
    if ((v23 & 0x20) != 0 && (*(destinationTexture + 80) & 0x20) != 0 || (v23 & 0x40) != 0 && (*(destinationTexture + 80) & 0x40) != 0)
    {
      if (*(texture + 11) == *(destinationTexture + 11))
      {
        goto LABEL_65;
      }

      v28 = *v88;
      v47.var0 = *v88;
      v47.var1 = *v21;
      goto LABEL_64;
    }

    v24 = (texture + 72);
    if ((v23 & 0x20) == 0)
    {
      if ((*(destinationTexture + 80) & 0x20) != 0)
      {
        v24 = (destinationTexture + 72);
      }

      else
      {
        v24 = 0;
      }
    }

    v25 = (texture + 72);
    if ((v23 & 0x40) == 0)
    {
      if ((*(destinationTexture + 80) & 0x40) != 0)
      {
        v25 = (destinationTexture + 72);
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
        v26 = v20 == v24 ? destinationTexture + 72 : texture + 72;
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
        v29 = destinationTexture + 72;
      }

      else
      {
        v29 = texture + 72;
      }

      if ((v29[9] & 4) == 0 && *(v29 + 3) == 1)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    v30 = *(texture + 11);
    v31 = *(destinationTexture + 11);
    v32 = *(destinationTexture + 20);
    if ((v23 & 0x400) != 0)
    {
      v33 = (texture + 72);
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
      v33 = (destinationTexture + 72);
    }

    else
    {
      v33 = 0;
    }

    if (v30 != v31 && v33)
    {
      if (v20 == v33)
      {
        v34 = destinationTexture + 72;
      }

      else
      {
        v34 = texture + 72;
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
  sampleCount = [texture sampleCount];
  if (sampleCount != [destinationTexture sampleCount])
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if ([texture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([destinationTexture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  originCopy = origin;
  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= slice)
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if ([destinationTexture mipmapLevelCount] <= destinationLevel)
  {
    destinationLevelCopy = destinationLevel;
    mipmapLevelCount2 = [destinationTexture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces2 = [destinationTexture numFaces];
  if ([destinationTexture arrayLength] * numFaces2 <= destinationSlice)
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if (common->var0 <= 0)
  {
    v85 = (destinationTexture + 72);
    v43 = self->super.super.super._device;
    [texture pixelFormat];
    [texture width];
    [texture height];
    [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v44 = self->super.super.super._device;
    [destinationTexture pixelFormat];
    [destinationTexture width];
    [destinationTexture height];
    [destinationTexture depth];
    [destinationTexture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v104 = *&originCopy->var0;
    v105 = originCopy->var2;
    v101 = *&sizeCopy->var0;
    v103 = sizeCopy->var2;
    v93 = *v88;
    v95 = *(texture + 88);
    v97 = *(texture + 104);
    v99 = *(texture + 15);
    _MTLAdjustMTLSize();
    v102 = *destinationOrigin;
    v94 = *(destinationTexture + 72);
    v96 = *(destinationTexture + 88);
    v98 = *(destinationTexture + 104);
    v100 = *(destinationTexture + 15);
    _MTLAdjustMTLSize();
    v45 = originCopy->var0;
    if ((*(texture + 81) & 4) != 0)
    {
      if (v45)
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var1)
      {
        v59 = originCopy->var1;
        _MTLMessageContextPush_();
      }

      if (originCopy->var2)
      {
        v60 = originCopy->var2;
        goto LABEL_162;
      }
    }

    else
    {
      if (sizeCopy->var0 + v45)
      {
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var1 + originCopy->var1)
      {
        v58 = sizeCopy->var1 + originCopy->var1;
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var2 + originCopy->var2)
      {
        v50 = sizeCopy->var2 + originCopy->var2;
LABEL_162:
        _MTLMessageContextPush_();
      }
    }

    v46 = destinationOrigin->var0;
    if ((*(destinationTexture + 81) & 4) != 0)
    {
      if (v46)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1)
      {
        v62 = destinationOrigin->var1;
        _MTLMessageContextPush_();
      }

      if (!destinationOrigin->var2)
      {
        goto LABEL_104;
      }

      v63 = destinationOrigin->var2;
    }

    else
    {
      if (v46 + var0)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1 + var1)
      {
        v61 = destinationOrigin->var1 + var1;
        _MTLMessageContextPush_();
      }

      if (!(destinationOrigin->var2 + var2))
      {
        goto LABEL_104;
      }

      v51 = destinationOrigin->var2 + var2;
    }

    _MTLMessageContextPush_();
LABEL_104:
    if ((*(texture + 81) & 4) != 0)
    {
      if (originCopy->var0 % *(texture + 13))
      {
        v66 = *v88;
        _MTLMessageContextPush_();
      }

      if (originCopy->var1 % *(texture + 14))
      {
        v67 = *v88;
        _MTLMessageContextPush_();
      }

      if (originCopy->var2 % *(texture + 15))
      {
        v68 = *v88;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(texture + 13))
      {
        v69 = *v88;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(texture + 14))
      {
        v70 = *v88;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(texture + 15))
      {
        v71 = *v88;
        _MTLMessageContextPush_();
      }
    }

    if ((*(destinationTexture + 81) & 4) != 0)
    {
      if (destinationOrigin->var0 % *(destinationTexture + 13))
      {
        v72 = *v85;
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1 % *(destinationTexture + 14))
      {
        v73 = *v85;
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var2 % *(destinationTexture + 15))
      {
        v74 = *v85;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(destinationTexture + 13))
      {
        v75 = *v85;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(destinationTexture + 14))
      {
        v76 = *v85;
        _MTLMessageContextPush_();
      }

      if (0uLL % *(destinationTexture + 15))
      {
        v77 = *v85;
        _MTLMessageContextPush_();
      }
    }

    if ((*(texture + 81) & 0x20) != 0 || (*(destinationTexture + 81) & 0x20) != 0)
    {
      if (originCopy->var0)
      {
        v52 = *v88;
        _MTLMessageContextPush_();
      }

      if (originCopy->var1)
      {
        v53 = *v88;
        _MTLMessageContextPush_();
      }

      if (originCopy->var2)
      {
        v54 = *v88;
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var0)
      {
        v78 = *v88;
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var1)
      {
        v79 = *v88;
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var2)
      {
        v80 = *v88;
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var0)
      {
        v55 = *v85;
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1)
      {
        v56 = *v85;
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var2)
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

- (void)_validateCopyFromTextureToBufferCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationBuffer:(id)buffer destinationOffset:(unint64_t)self0 destinationBytesPerRow:(unint64_t)self1 destinationBytesPerImage:(unint64_t)self2 options:(unint64_t)self3
{
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL);
  if (!(size->var1 * size->var0 * size->var2))
  {
    var2 = size->var2;
    v36 = 0;
    var0 = size->var0;
    var1 = size->var1;
    _MTLMessageContextPush_();
  }

  if (texture)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] != 3)
    {
      if (buffer)
      {
        goto LABEL_12;
      }

LABEL_65:
      _MTLMessageContextPush_();
      goto LABEL_15;
    }
  }

  _MTLMessageContextPush_();
  if (!buffer)
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
  if (v20 != [buffer device])
  {
    goto LABEL_65;
  }

LABEL_15:
  if (common->var0 <= 0)
  {
    if ([texture isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    selfCopy = self;
    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      var1 = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
    }

    if (common->var0 <= 0)
    {
      v22 = selfCopy->super.super.super._device;
      [texture pixelFormat];
      [texture width];
      [texture height];
      [texture depth];
      [texture sampleCount];
      v23 = (texture + 72);
      MTLGetTextureLevelInfoForDeviceWithOptions();
      v45 = *&origin->var0;
      v46 = origin->var2;
      v43 = *&size->var0;
      v44 = size->var2;
      v39 = *(texture + 72);
      v40 = *(texture + 88);
      v41 = *(texture + 104);
      v42 = *(texture + 15);
      _MTLAdjustMTLSize();
      v24 = origin->var0;
      if ((*(texture + 81) & 4) != 0)
      {
        if (v24)
        {
          v30 = origin->var0;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        commonCopy3 = common;
        if (origin->var1)
        {
          v30 = origin->var1;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        if (origin->var2)
        {
          v30 = origin->var2;
          v33 = 0;
          goto LABEL_68;
        }
      }

      else
      {
        v25 = size->var0 + v24;
        if (v25)
        {
          v30 = v25;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        commonCopy3 = common;
        if (size->var1 + origin->var1)
        {
          v30 = size->var1 + origin->var1;
          v33 = 0;
          _MTLMessageContextPush_();
        }

        if (size->var2 + origin->var2)
        {
          v30 = size->var2 + origin->var2;
          v33 = 0;
LABEL_68:
          _MTLMessageContextPush_();
        }
      }

      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
      if ((*(texture + 81) & 4) != 0)
      {
        if (origin->var0 % *(texture + 13))
        {
          v33 = *v23;
          var2 = *(texture + 13);
          v30 = origin->var0;
          _MTLMessageContextPush_();
        }

        if (origin->var1 % *(texture + 14))
        {
          v33 = *v23;
          var2 = *(texture + 14);
          v30 = origin->var1;
          _MTLMessageContextPush_();
        }

        if (origin->var2 % *(texture + 15))
        {
          v33 = *v23;
          var2 = *(texture + 15);
          v30 = origin->var2;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 13))
        {
          v33 = *v23;
          var2 = *(texture + 13);
          v30 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 14))
        {
          v33 = *v23;
          var2 = *(texture + 14);
          v30 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 15))
        {
          v33 = *v23;
          var2 = *(texture + 15);
          v30 = 0;
          _MTLMessageContextPush_();
        }

        if ((*(texture + 81) & 0x20) != 0)
        {
          if ((options & 4) != 0)
          {
            goto LABEL_53;
          }
        }

        else if ((options & 4) == 0)
        {
          goto LABEL_53;
        }

        v30 = *v23;
        commonCopy3 = common;
        _MTLMessageContextPush_();
      }

LABEL_53:
      if (commonCopy3->var0 <= 0)
      {
        v27 = selfCopy->super.super.super._device;
        [texture pixelFormat];
        [texture sampleCount];
        MTLGetTextureLevelInfoForDeviceWithOptions();
        if (-image - row + offset > [buffer length])
        {
          imageCopy = -image - row + offset;
          v34 = [buffer length];
          _MTLMessageContextPush_();
        }

        if (row % 0)
        {
          _MTLMessageContextPush_();
          imageCopy = row;
          v34 = 0;
          _MTLMessageContextPush_();
        }

        if (image % 0)
        {
          imageCopy = image;
          v34 = 0;
          _MTLMessageContextPush_();
        }

        if ([texture textureType] != 9)
        {
          _MTLDebugFindMaxTextureWidth(selfCopy->super.super.super._device, texture);
          if (row)
          {
            _MTLMessageContextPush_();
          }
        }
      }
    }
  }
}

- (void)_validateCopyFromBufferToTextureCommon:(_MTLMessageContext *)common sourceBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size destinationTexture:(id)texture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2 options:(unint64_t)self3
{
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL);
  if (!(size->var1 * size->var0 * size->var2))
  {
    var2 = size->var2;
    v34 = 0;
    var0 = size->var0;
    var1 = size->var1;
    _MTLMessageContextPush_();
  }

  if (!buffer)
  {
    goto LABEL_65;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device == [buffer device])
  {
    if (!texture)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_65:
    _MTLMessageContextPush_();
    if (!texture)
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
  if (v20 != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

LABEL_16:
  if (common->var0 <= 0)
  {
    offsetCopy = offset;
    if ([texture isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    selfCopy = self;
    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      var1 = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
    }

    if (common->var0 <= 0)
    {
      v22 = selfCopy->super.super.super._device;
      [texture pixelFormat];
      [texture width];
      [texture height];
      [texture depth];
      [texture sampleCount];
      commonCopy2 = common;
      MTLGetTextureLevelInfoForDeviceWithOptions();
      if (size->var0 + origin->var0)
      {
        v28 = size->var0 + origin->var0;
        v31 = 0;
        _MTLMessageContextPush_();
      }

      if (size->var1 + origin->var1)
      {
        v28 = size->var1 + origin->var1;
        v31 = 0;
        _MTLMessageContextPush_();
      }

      if (size->var2 + origin->var2)
      {
        v28 = size->var2 + origin->var2;
        v31 = 0;
        _MTLMessageContextPush_();
      }

      if (common->var0 <= 0)
      {
        v24 = (texture + 72);
        v44 = *origin;
        v42 = *&size->var0;
        v43 = size->var2;
        v38 = *(texture + 72);
        v39 = *(texture + 88);
        v40 = *(texture + 104);
        v41 = *(texture + 15);
        _MTLAdjustMTLSize();
        if (origin->var0)
        {
          v28 = origin->var0;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        if (origin->var1)
        {
          v28 = origin->var1;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        if (origin->var2)
        {
          v28 = origin->var2;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
        if ((*(texture + 81) & 4) == 0)
        {
          goto LABEL_54;
        }

        if (origin->var0 % *(texture + 13))
        {
          v31 = *v24;
          var2 = *(texture + 13);
          v28 = origin->var0;
          _MTLMessageContextPush_();
        }

        if (origin->var1 % *(texture + 14))
        {
          v31 = *v24;
          var2 = *(texture + 14);
          v28 = origin->var1;
          _MTLMessageContextPush_();
        }

        if (origin->var2 % *(texture + 15))
        {
          v31 = *v24;
          var2 = *(texture + 15);
          v28 = origin->var2;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 13))
        {
          v31 = *v24;
          var2 = *(texture + 13);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 14))
        {
          v31 = *v24;
          var2 = *(texture + 14);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 15))
        {
          v31 = *v24;
          var2 = *(texture + 15);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if ((*(texture + 81) & 0x20) != 0)
        {
          if ((options & 4) != 0)
          {
            goto LABEL_54;
          }
        }

        else if ((options & 4) == 0)
        {
          goto LABEL_54;
        }

        v28 = *v24;
        commonCopy2 = common;
        _MTLMessageContextPush_();
LABEL_54:
        if (commonCopy2->var0 <= 0)
        {
          v25 = selfCopy->super.super.super._device;
          [texture pixelFormat];
          [texture sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (-image - row + offsetCopy > [buffer length])
          {
            imageCopy = -image - row + offsetCopy;
            v32 = [buffer length];
            _MTLMessageContextPush_();
          }

          if (row % 0)
          {
            imageCopy = row;
            v32 = 0;
            _MTLMessageContextPush_();
          }

          if (image % 0)
          {
            imageCopy = image;
            v32 = 0;
            _MTLMessageContextPush_();
          }

          if ([texture textureType] != 9)
          {
            _MTLDebugFindMaxTextureWidth(selfCopy->super.super.super._device, texture);
            if (row)
            {
              _MTLMessageContextPush_();
            }
          }
        }
      }
    }
  }
}

- (void)_validateFillTextureCommon:(_MTLMessageContext *)common texture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region
{
  p_var1 = &region->var1;
  if (!(region->var1.var1 * region->var1.var0 * region->var1.var2))
  {
    var1 = region->var1;
    _MTLMessageContextPush_();
  }

  if (texture)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      mipmapLevelCount = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  if (common->var0 <= 0)
  {
    [(MTLToolsObject *)self->super.super.super._device baseObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    v16 = self->super.super.super._device;
    [texture pixelFormat];
    [texture width];
    [texture height];
    [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v25 = *&region->var0.var0;
    var2 = region->var0.var2;
    v23 = *&p_var1->var0;
    v24 = p_var1->var2;
    _MTLAdjustMTLSize();
    if (region->var0.var0)
    {
      var0 = region->var0.var0;
      _MTLMessageContextPush_();
    }

    if (region->var0.var1)
    {
      v20 = region->var0.var1;
      _MTLMessageContextPush_();
    }

    if (region->var0.var2)
    {
      v21 = region->var0.var2;
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

- (void)_validateComputeFunctionBuiltinArguments:(_MTLMessageContext *)arguments threadsPerThreadgroup:(id *)threadgroup threadgroupsPerGrid:(id *)grid
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
        builtInType = [v9 builtInType];
        if (builtInType > 10)
        {
          if ((builtInType - 15) < 6)
          {
            goto LABEL_13;
          }

          if (builtInType != 11)
          {
            if (builtInType == 12)
            {
              goto LABEL_13;
            }

LABEL_20:
            name = [v9 name];
            _MTLMessageContextPush_();
            goto LABEL_13;
          }

          v11 = currentComputePipelineState + 192;
          v33 = *&grid->var0;
          var2 = grid->var2;
          v12 = @"threadgroups_per_grid";
        }

        else if (builtInType > 7)
        {
          if (builtInType == 8)
          {
            v11 = currentComputePipelineState + 120;
            v33 = threadgroup->var1 * threadgroup->var0 * grid->var2;
            var2 = 0;
            v12 = @"thread_index_in_threadgroup";
          }

          else if (builtInType == 9)
          {
            v11 = currentComputePipelineState + 144;
            v33 = *&threadgroup->var0;
            var2 = threadgroup->var2;
            v12 = @"threads_per_threadgroup";
          }

          else
          {
            v11 = currentComputePipelineState + 168;
            v33 = *&grid->var0;
            var2 = grid->var2;
            v12 = @"threadgroup_position_in_grid";
          }
        }

        else
        {
          switch(builtInType)
          {
            case 5:
              v13 = grid->var1 * threadgroup->var1;
              v11 = currentComputePipelineState + 48;
              *&v33 = grid->var0 * threadgroup->var0;
              *(&v33 + 1) = v13;
              var2 = grid->var2 * threadgroup->var2;
              v12 = @"thread_position_in_grid";
              break;
            case 6:
              v14 = grid->var1 * threadgroup->var1;
              v11 = currentComputePipelineState + 72;
              *&v33 = grid->var0 * threadgroup->var0;
              *(&v33 + 1) = v14;
              var2 = grid->var2 * threadgroup->var2;
              v12 = @"threads_per_grid";
              break;
            case 7:
              v11 = currentComputePipelineState + 96;
              v33 = *&threadgroup->var0;
              var2 = threadgroup->var2;
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
            name2 = [v9 name];
            v24 = v12;
            v21 = v16;
            v22 = v17;
            name = i;
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

- (void)_validateComputeFunctionArguments:(_MTLMessageContext *)arguments
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
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder validateFunctionArguments:arguments stage:@"Compute" functionName:v7 argumentTable:self->_currentArgumentTable boundThreadgroupMemoryArguments:self->_currentThreadgroupMemoryLengths bindings:v6 allowNullBufferBindings:v19];
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
          type = [v13 type];
          index = [v13 index];
          if (type == 1)
          {
            v10 += self->_currentThreadgroupMemoryLengths[index].threadgroupMemoryLength;
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

  staticThreadgroupMemoryLength = [(MTLComputePipelineState *)v20 staticThreadgroupMemoryLength];
  v21 = *&self->_currentImageBlockSize.width;
  depth = self->_currentImageBlockSize.depth;
  v17 = staticThreadgroupMemoryLength + v10 + [(MTLComputePipelineState *)v20 imageblockMemoryLengthForDimensions:&v21];
  if (v17 > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength])
  {
    [MTL4DebugComputeCommandEncoder _validateComputeFunctionArguments:];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)writeTimestampWithGranularity:(int64_t)granularity intoHeap:(id)heap atIndex:(unint64_t)index
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!heap)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ([heap type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([heap count] <= index)
  {
    [heap count];
LABEL_12:
    _MTLMessageContextPush_();
  }

  if (granularity >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 writeTimestampWithGranularity:granularity intoHeap:heap atIndex:index];
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
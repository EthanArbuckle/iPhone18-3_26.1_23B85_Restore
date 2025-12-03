@interface MTL4ToolsComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (MTL4ToolsComputeCommandEncoder)initWithBaseObject:(id)object parent:(id)parent;
- (unint64_t)nextVirtualSubstream;
- (unint64_t)stages;
- (void)beginVirtualSubstream;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions;
- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
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
- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index;
- (void)waitForVirtualSubstream:(unint64_t)substream;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeTimestampWithGranularity:(int64_t)granularity intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4ToolsComputeCommandEncoder

- (MTL4ToolsComputeCommandEncoder)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsComputeCommandEncoder;
  return [(MTL4ToolsCommandEncoder *)&v5 initWithBaseObject:object parent:parent];
}

- (unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject stages];
}

- (void)setComputePipelineState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setComputePipelineState:baseObject2];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupMemoryLength:length atIndex:index];
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setImageblockWidth:width height:height];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = *threads;
  v7 = *threadgroup;
  [baseObject dispatchThreads:&v8 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = *threadgroups;
  v7 = *threadgroup;
  [baseObject dispatchThreadgroups:&v8 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *threadgroup;
  [baseObject dispatchThreadgroupsWithIndirectBuffer:buffer threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject dispatchThreadsWithIndirectBuffer:buffer];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 indirectBuffer:indirectBuffer];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyFromTexture:baseObject2 toTexture:baseObject3];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v22 = *origin;
  v21 = *size;
  baseObject3 = [toTexture baseObject];
  v20 = *destinationOrigin;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v20];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v20 = *origin;
  v19 = *size;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v20 sourceSize:&v19 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:{row, image}];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v21 = *origin;
  v20 = *size;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v21 sourceSize:&v20 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:row options:{image, options}];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [toBuffer baseObject];

  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset toBuffer:baseObject3 destinationOffset:destinationOffset size:size];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v21 = *size;
  baseObject3 = [texture baseObject];
  v20 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v21 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v20];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v22 = *size;
  baseObject3 = [texture baseObject];
  v21 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v21 options:options];
}

- (void)generateMipmapsForTexture:(id)texture
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject generateMipmapsForTexture:baseObject2];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForGPUAccess:baseObject2];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForGPUAccess:baseObject2 slice:slice level:level];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForCPUAccess:baseObject2];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForCPUAccess:baseObject2 slice:slice level:level];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject resetCommandsInBuffer:baseObject2 withRange:{location, length}];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [destination baseObject];

  [baseObject copyIndirectCommandBuffer:baseObject2 sourceRange:location destination:length destinationIndex:{baseObject3, index}];
}

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject optimizeIndirectCommandBuffer:baseObject2 withRange:{location, length}];
}

- (void)setArgumentTable:(id)table
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setArgumentTable:baseObject2];
}

- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [tensor baseObject];
  baseObject3 = [toTensor baseObject];

  [baseObject copyFromTensor:baseObject2 sourceOrigin:origin sourceDimensions:dimensions toTensor:baseObject3 destinationOrigin:destinationOrigin destinationDimensions:destinationDimensions];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  pattern4Copy = pattern4;
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject fillBuffer:baseObject2 range:location value:{length, pattern4Copy}];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v16 = *&region->var0.var2;
  v17[0] = *&region->var0.var0;
  v17[1] = v16;
  v17[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v17 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v18 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v19 = *&region->var0.var2;
  v20[0] = *&region->var0.var0;
  v20[1] = v19;
  v20[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v20 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setToolsDispatchBufferSPI:i atIndex:index];
}

- (void)beginVirtualSubstream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)substream
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitForVirtualSubstream:substream];
}

- (void)insertCompressedTextureReinterpretationFlush
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertCompressedTextureReinterpretationFlush];
}

- (void)encodeStartDoWhile
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject encodeStartDoWhile];
}

- (BOOL)encodeEndWhile
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject encodeEndWhile];
}

- (void)encodeStartElse
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject encodeStartElse];
}

- (BOOL)encodeEndIf
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject encodeEndIf];
}

- (void)setThreadgroupDistributionMode:(int64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupDistributionMode:mode];
}

- (void)invalidateCompressedTexture:(id)texture
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject invalidateCompressedTexture:baseObject2];
}

- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject invalidateCompressedTexture:baseObject2 slice:slice level:level];
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject buildAccelerationStructure:baseObject2 descriptor:descriptor scratchBuffer:{var0, var1}];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [destination baseObject];

  [baseObject refitAccelerationStructure:baseObject2 descriptor:descriptor destination:baseObject3 scratchBuffer:{var0, var1}];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [destination baseObject];

  [baseObject refitAccelerationStructure:baseObject2 descriptor:descriptor destination:baseObject3 scratchBuffer:var0 options:{var1, options}];
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [accelerationStructure baseObject];

  [baseObject copyAccelerationStructure:baseObject2 toAccelerationStructure:baseObject3];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];

  [baseObject writeCompactedAccelerationStructureSize:baseObject2 toBuffer:{var0, var1}];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];
  baseObject3 = [accelerationStructure baseObject];

  [baseObject copyAndCompactAccelerationStructure:baseObject2 toAccelerationStructure:baseObject3];
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [size baseObject];

  [baseObject writeSerializedAccelerationStructureSize:baseObject2 toBuffer:{var0, var1}];
}

- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v6 = size.var1;
  v7 = size.var0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject writeDeserializedAccelerationStructureSize:v7 toBuffer:{v6, var0, var1}];
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject serializePrimitiveAccelerationStructure:baseObject2 toBuffer:{var0, var1}];
}

- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v10 = 0;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v10++), "baseObject")}];
    }

    while (v10 < [structures count]);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject deserializePrimitiveAccelerationStructure:baseObject2 fromBuffer:{var0, var1}];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(structures, "count")}];
  if ([structures count])
  {
    v10 = 0;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(structures, "objectAtIndexedSubscript:", v10++), "baseObject")}];
    }

    while (v10 < [structures count]);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  return [baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject2 into:into];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  v7 = [objc_alloc(MEMORY[0x277CD6E30]) initWithVersion:{objc_msgSend(into, "version")}];
  [v7 setHeaderBuffer:{objc_msgSend(objc_msgSend(into, "headerBuffer"), "baseObject")}];
  [v7 setHeaderBufferOffset:{objc_msgSend(into, "headerBufferOffset")}];
  [v7 setInnerNodeBuffer:{objc_msgSend(objc_msgSend(into, "innerNodeBuffer"), "baseObject")}];
  [v7 setInnerNodeBufferOffset:{objc_msgSend(into, "innerNodeBufferOffset")}];
  [v7 setLeafNodeBuffer:{objc_msgSend(objc_msgSend(into, "leafNodeBuffer"), "baseObject")}];
  [v7 setLeafNodeBufferOffset:{objc_msgSend(into, "leafNodeBufferOffset")}];
  [v7 setPrimitiveBuffer:{objc_msgSend(objc_msgSend(into, "primitiveBuffer"), "baseObject")}];
  [v7 setPrimitiveBufferOffset:{objc_msgSend(into, "primitiveBufferOffset")}];
  [v7 setGeometryBuffer:{objc_msgSend(objc_msgSend(into, "geometryBuffer"), "baseObject")}];
  [v7 setGeometryBufferOffset:{objc_msgSend(into, "geometryBufferOffset")}];
  [v7 setInstanceTransformBuffer:{objc_msgSend(objc_msgSend(into, "instanceTransformBuffer"), "baseObject")}];
  [v7 setInstanceTransformBufferOffset:{objc_msgSend(into, "instanceTransformBufferOffset")}];
  [v7 setPerPrimitiveDataBuffer:{objc_msgSend(objc_msgSend(into, "perPrimitiveDataBuffer"), "baseObject")}];
  [v7 setPerPrimitiveDataBufferOffset:{objc_msgSend(into, "perPrimitiveDataBufferOffset")}];
  [v7 setControlPointBuffer:{objc_msgSend(objc_msgSend(into, "controlPointBuffer"), "baseObject")}];
  [v7 setControlPointBufferOffset:{objc_msgSend(into, "controlPointBufferOffset")}];
  LOBYTE(structure) = [-[MTLToolsObject baseObject](self "baseObject")];

  return structure;
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject2 toBuffer:{var0, var1}];
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [data baseObject];

  [baseObject writeAccelerationStructureSerializationData:baseObject2 toBuffer:{var0, var1}];
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [depth baseObject];

  [baseObject writeAccelerationStructureTraversalDepth:baseObject2 toBuffer:{var0, var1}];
}

- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice
{
  var1 = destinationSlice.var1;
  var0 = destinationSlice.var0;
  v9 = slice.var1;
  v10 = slice.var0;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [tensor baseObject];
  baseObject3 = [toTensor baseObject];

  [baseObject copyFromTensor:baseObject2 sourceSlice:v10 toTensor:v9 destinationSlice:{baseObject3, var0, var1}];
}

- (void)writeTimestampWithGranularity:(int64_t)granularity intoHeap:(id)heap atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject writeTimestampWithGranularity:granularity intoHeap:baseObject2 atIndex:index];
}

@end
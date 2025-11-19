@interface MTL4ToolsComputeCommandEncoder
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4;
- (MTL4ToolsComputeCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4;
- (unint64_t)nextVirtualSubstream;
- (unint64_t)stages;
- (void)beginVirtualSubstream;
- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5;
- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTensor:(id)a3 sourceOrigin:(id)a4 sourceDimensions:(id)a5 toTensor:(id)a6 destinationOrigin:(id)a7 destinationDimensions:(id)a8;
- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5;
- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
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
- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)waitForVirtualSubstream:(unint64_t)a3;
- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4;
- (void)writeTimestampWithGranularity:(int64_t)a3 intoHeap:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation MTL4ToolsComputeCommandEncoder

- (MTL4ToolsComputeCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsComputeCommandEncoder;
  return [(MTL4ToolsCommandEncoder *)&v5 initWithBaseObject:a3 parent:a4];
}

- (unint64_t)stages
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 stages];
}

- (void)setComputePipelineState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setComputePipelineState:v5];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setThreadgroupMemoryLength:a3 atIndex:a4];
}

- (void)setImageblockWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setImageblockWidth:a3 height:a4];
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v8 = *a3;
  v7 = *a4;
  [v6 dispatchThreads:&v8 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v8 = *a3;
  v7 = *a4;
  [v6 dispatchThreadgroups:&v8 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerThreadgroup:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = *a4;
  [v6 dispatchThreadgroupsWithIndirectBuffer:a3 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 dispatchThreadsWithIndirectBuffer:a3];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 executeCommandsInBuffer:v8 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 executeCommandsInBuffer:v7 indirectBuffer:a4];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];
  v8 = [a4 baseObject];

  [v6 copyFromTexture:v7 toTexture:v8];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = [a3 baseObject];
  v18 = [a6 baseObject];

  [v16 copyFromTexture:v17 sourceSlice:a4 sourceLevel:a5 toTexture:v18 destinationSlice:a7 destinationLevel:a8 sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v22 = *a6;
  v21 = *a7;
  v19 = [a8 baseObject];
  v20 = *a11;
  [v17 copyFromTexture:v18 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toTexture:v19 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v20 = *a6;
  v19 = *a7;
  [v17 copyFromTexture:v18 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v20 sourceSize:&v19 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:{a10, a11}];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v21 = *a6;
  v20 = *a7;
  [v18 copyFromTexture:v19 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v21 sourceSize:&v20 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:a10 options:{a11, a12}];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a5 baseObject];

  [v12 copyFromBuffer:v13 sourceOffset:a4 toBuffer:v14 destinationOffset:a6 size:a7];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v21 = *a7;
  v19 = [a8 baseObject];
  v20 = *a11;
  [v17 copyFromBuffer:v18 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v21 toTexture:v19 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v22 = *a7;
  v19 = [a8 baseObject];
  v21 = *a11;
  [v17 copyFromBuffer:v18 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v22 toTexture:v19 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v21 options:a12];
}

- (void)generateMipmapsForTexture:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 generateMipmapsForTexture:v5];
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 optimizeContentsForGPUAccess:v5];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 optimizeContentsForGPUAccess:v9 slice:a4 level:a5];
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 optimizeContentsForCPUAccess:v5];
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 optimizeContentsForCPUAccess:v9 slice:a4 level:a5];
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 resetCommandsInBuffer:v8 withRange:{location, length}];
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v13 = [a5 baseObject];

  [v11 copyIndirectCommandBuffer:v12 sourceRange:location destination:length destinationIndex:{v13, a6}];
}

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 optimizeIndirectCommandBuffer:v8 withRange:{location, length}];
}

- (void)setArgumentTable:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setArgumentTable:v5];
}

- (void)copyFromTensor:(id)a3 sourceOrigin:(id)a4 sourceDimensions:(id)a5 toTensor:(id)a6 destinationOrigin:(id)a7 destinationDimensions:(id)a8
{
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  v16 = [a6 baseObject];

  [v14 copyFromTensor:v15 sourceOrigin:a4 sourceDimensions:a5 toTensor:v16 destinationOrigin:a7 destinationDimensions:a8];
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 fillBuffer:v10 range:location value:{length, v5}];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v14 = [(MTLToolsObject *)self baseObject];
  v15 = [a3 baseObject];
  v16 = *&a6->var0.var2;
  v17[0] = *&a6->var0.var0;
  v17[1] = v16;
  v17[2] = *&a6->var1.var1;
  [v14 fillTexture:v15 level:a4 slice:a5 region:v17 bytes:a7 length:a8];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = *&a6->var0.var2;
  v18[0] = *&a6->var0.var0;
  v18[1] = v17;
  v18[2] = *&a6->var1.var1;
  [v15 fillTexture:v16 level:a4 slice:a5 region:v18 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v19 = *&a6->var0.var2;
  v20[0] = *&a6->var0.var0;
  v20[1] = v19;
  v20[2] = *&a6->var1.var1;
  [v17 fillTexture:v18 level:a4 slice:a5 region:v20 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)setToolsDispatchBufferSPI:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setToolsDispatchBufferSPI:a3 atIndex:a4];
}

- (void)beginVirtualSubstream
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 waitForVirtualSubstream:a3];
}

- (void)insertCompressedTextureReinterpretationFlush
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 insertCompressedTextureReinterpretationFlush];
}

- (void)encodeStartDoWhile
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 encodeStartDoWhile];
}

- (BOOL)encodeEndWhile
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 encodeEndWhile];
}

- (void)encodeStartElse
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 encodeStartElse];
}

- (BOOL)encodeEndIf
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 encodeEndIf];
}

- (void)setThreadgroupDistributionMode:(int64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setThreadgroupDistributionMode:a3];
}

- (void)invalidateCompressedTexture:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 invalidateCompressedTexture:v5];
}

- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 invalidateCompressedTexture:v9 slice:a4 level:a5];
}

- (void)buildAccelerationStructure:(id)a3 descriptor:(id)a4 scratchBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 buildAccelerationStructure:v10 descriptor:a4 scratchBuffer:{var0, var1}];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v13 = [a5 baseObject];

  [v11 refitAccelerationStructure:v12 descriptor:a4 destination:v13 scratchBuffer:{var0, var1}];
}

- (void)refitAccelerationStructure:(id)a3 descriptor:(id)a4 destination:(id)a5 scratchBuffer:(MTL4BufferRange)a6 options:(unint64_t)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = [a5 baseObject];

  [v13 refitAccelerationStructure:v14 descriptor:a4 destination:v15 scratchBuffer:var0 options:{var1, a7}];
}

- (void)copyAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];
  v8 = [a4 baseObject];

  [v6 copyAccelerationStructure:v7 toAccelerationStructure:v8];
}

- (void)writeCompactedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 writeCompactedAccelerationStructureSize:v8 toBuffer:{var0, var1}];
}

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];
  v8 = [a4 baseObject];

  [v6 copyAndCompactAccelerationStructure:v7 toAccelerationStructure:v8];
}

- (void)writeSerializedAccelerationStructureSize:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 writeSerializedAccelerationStructureSize:v8 toBuffer:{var0, var1}];
}

- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v6 = a3.var1;
  v7 = a3.var0;
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 writeDeserializedAccelerationStructureSize:v7 toBuffer:{v6, var0, var1}];
}

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 serializePrimitiveAccelerationStructure:v8 toBuffer:{var0, var1}];
}

- (void)serializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 toBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v10 = 0;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v10++), "baseObject")}];
    }

    while (v10 < [a4 count]);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)deserializePrimitiveAccelerationStructure:(id)a3 fromBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 deserializePrimitiveAccelerationStructure:v8 fromBuffer:{var0, var1}];
}

- (void)deserializeInstanceAccelerationStructure:(id)a3 referencedAccelerationStructures:(id)a4 fromBuffer:(MTL4BufferRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a4, "count")}];
  if ([a4 count])
  {
    v10 = 0;
    do
    {
      [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v10++), "baseObject")}];
    }

    while (v10 < [a4 count]);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 into:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  return [v6 writeGenericBVHStructureSizesOfAccelerationStructure:v7 into:a4];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)a3 into:(id)a4
{
  v7 = [objc_alloc(MEMORY[0x277CD6E30]) initWithVersion:{objc_msgSend(a4, "version")}];
  [v7 setHeaderBuffer:{objc_msgSend(objc_msgSend(a4, "headerBuffer"), "baseObject")}];
  [v7 setHeaderBufferOffset:{objc_msgSend(a4, "headerBufferOffset")}];
  [v7 setInnerNodeBuffer:{objc_msgSend(objc_msgSend(a4, "innerNodeBuffer"), "baseObject")}];
  [v7 setInnerNodeBufferOffset:{objc_msgSend(a4, "innerNodeBufferOffset")}];
  [v7 setLeafNodeBuffer:{objc_msgSend(objc_msgSend(a4, "leafNodeBuffer"), "baseObject")}];
  [v7 setLeafNodeBufferOffset:{objc_msgSend(a4, "leafNodeBufferOffset")}];
  [v7 setPrimitiveBuffer:{objc_msgSend(objc_msgSend(a4, "primitiveBuffer"), "baseObject")}];
  [v7 setPrimitiveBufferOffset:{objc_msgSend(a4, "primitiveBufferOffset")}];
  [v7 setGeometryBuffer:{objc_msgSend(objc_msgSend(a4, "geometryBuffer"), "baseObject")}];
  [v7 setGeometryBufferOffset:{objc_msgSend(a4, "geometryBufferOffset")}];
  [v7 setInstanceTransformBuffer:{objc_msgSend(objc_msgSend(a4, "instanceTransformBuffer"), "baseObject")}];
  [v7 setInstanceTransformBufferOffset:{objc_msgSend(a4, "instanceTransformBufferOffset")}];
  [v7 setPerPrimitiveDataBuffer:{objc_msgSend(objc_msgSend(a4, "perPrimitiveDataBuffer"), "baseObject")}];
  [v7 setPerPrimitiveDataBufferOffset:{objc_msgSend(a4, "perPrimitiveDataBufferOffset")}];
  [v7 setControlPointBuffer:{objc_msgSend(objc_msgSend(a4, "controlPointBuffer"), "baseObject")}];
  [v7 setControlPointBufferOffset:{objc_msgSend(a4, "controlPointBufferOffset")}];
  LOBYTE(a3) = [-[MTLToolsObject baseObject](self "baseObject")];

  return a3;
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 writeGenericBVHStructureSizesOfAccelerationStructure:v8 toBuffer:{var0, var1}];
}

- (void)writeAccelerationStructureSerializationData:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 writeAccelerationStructureSerializationData:v8 toBuffer:{var0, var1}];
}

- (void)writeAccelerationStructureTraversalDepth:(id)a3 toBuffer:(MTL4BufferRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 writeAccelerationStructureTraversalDepth:v8 toBuffer:{var0, var1}];
}

- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v9 = a4.var1;
  v10 = a4.var0;
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a5 baseObject];

  [v12 copyFromTensor:v13 sourceSlice:v10 toTensor:v9 destinationSlice:{v14, var0, var1}];
}

- (void)writeTimestampWithGranularity:(int64_t)a3 intoHeap:(id)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a4 baseObject];

  [v8 writeTimestampWithGranularity:a3 intoHeap:v9 atIndex:a5];
}

@end
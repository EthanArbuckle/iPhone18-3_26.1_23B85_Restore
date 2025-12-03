@interface MTLCountersTraceRenderCommandEncoder
- (id)init:(BinaryBuffer *)init;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(unint64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setTessellationFactorScale:(float)scale;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation MTLCountersTraceRenderCommandEncoder

- (id)init:(BinaryBuffer *)init
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceRenderCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:init flags:4];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  primitivesCopy = primitives;
  countCopy = count;
  startCopy = start;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,unsigned long>(self->super._stream, 42, self->super._timer, &primitivesCopy, &startCopy, &countCopy);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  primitivesCopy = primitives;
  countCopy = count;
  startCopy = start;
  instanceCountCopy = instanceCount;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,unsigned long,unsigned long>(self->super._stream, 43, self->super._timer, &primitivesCopy, &startCopy, &countCopy, &instanceCountCopy);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  startCopy = start;
  primitivesCopy = primitives;
  instanceCountCopy = instanceCount;
  countCopy = count;
  instanceCopy = instance;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,unsigned long,unsigned long,unsigned long>(self->super._stream, 44, self->super._timer, &primitivesCopy, &startCopy, &countCopy, &instanceCountCopy, &instanceCopy);
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  primitivesCopy = primitives;
  offsetCopy = offset;
  bufferCopy = buffer;
  BinaryBuffer::Append<MTLPrimitiveType,objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 45, self->super._timer, &primitivesCopy, &bufferCopy, &offsetCopy);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  countCopy = count;
  primitivesCopy = primitives;
  bufferCopy = buffer;
  typeCopy = type;
  offsetCopy = offset;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,MTLIndexType,objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 46, self->super._timer, &primitivesCopy, &countCopy, &typeCopy, &bufferCopy, &offsetCopy);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  countCopy = count;
  primitivesCopy = primitives;
  typeCopy = type;
  offsetCopy = offset;
  bufferCopy = buffer;
  instanceCountCopy = instanceCount;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,MTLIndexType,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 47, self->super._timer, &primitivesCopy, &countCopy, &typeCopy, &bufferCopy, &offsetCopy, &instanceCountCopy);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(unint64_t)vertex baseInstance:(unint64_t)self0
{
  countCopy = count;
  primitivesCopy = primitives;
  bufferCopy = buffer;
  typeCopy = type;
  instanceCountCopy = instanceCount;
  offsetCopy = offset;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,MTLIndexType,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,unsigned long>(self->super._stream, 48, self->super._timer, &primitivesCopy, &countCopy, &typeCopy, &bufferCopy, &offsetCopy, &instanceCountCopy, &vertex, &instance);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  typeCopy = type;
  primitivesCopy = primitives;
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  offsetCopy = offset;
  bufferOffsetCopy = bufferOffset;
  BinaryBuffer::Append<MTLPrimitiveType,MTLIndexType,objc_object  {objcproto9MTLBuffer}*,unsigned long,objc_object  {objcproto9MTLBuffer},unsigned long>(self->super._stream, 49, self->super._timer, &primitivesCopy, &typeCopy, &bufferCopy, &offsetCopy, &indirectBufferCopy, &bufferOffsetCopy);
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  startCopy = start;
  patchesCopy = patches;
  countCopy = count;
  offsetCopy = offset;
  bufferCopy = buffer;
  timer = self->super._timer;
  stream = self->super._stream;
  instanceCountCopy = instanceCount;
  BinaryBuffer::Append<unsigned long,unsigned long,unsigned long,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long>(stream, 50, timer, &patchesCopy, &startCopy, &countCopy, &bufferCopy, &offsetCopy, &instanceCountCopy, &instance);
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  startCopy = start;
  patchesCopy = patches;
  bufferCopy = buffer;
  countCopy = count;
  indexBufferCopy = indexBuffer;
  offsetCopy = offset;
  BinaryBuffer::Append<unsigned long,unsigned long,unsigned long,objc_object  {objcproto9MTLBuffer}*,unsigned long,objc_object  {objcproto9MTLBuffer},unsigned long,unsigned long,unsigned long>(self->super._stream, 52, self->super._timer, &patchesCopy, &startCopy, &countCopy, &indexBufferCopy, &bufferOffset, &bufferCopy, &offsetCopy, &instanceCount, &instance);
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  bufferCopy = buffer;
  patchesCopy = patches;
  indirectBufferCopy = indirectBuffer;
  offsetCopy = offset;
  bufferOffsetCopy = bufferOffset;
  BinaryBuffer::Append<unsigned long,objc_object  {objcproto9MTLBuffer}*,unsigned long,objc_object  {objcproto9MTLBuffer},unsigned long>(self->super._stream, 51, self->super._timer, &patchesCopy, &bufferCopy, &offsetCopy, &indirectBufferCopy, &bufferOffsetCopy);
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  bufferCopy = buffer;
  patchesCopy = patches;
  offsetCopy = offset;
  bufferOffsetCopy = bufferOffset;
  indexBufferCopy = indexBuffer;
  timer = self->super._timer;
  stream = self->super._stream;
  indirectBufferCopy = indirectBuffer;
  BinaryBuffer::Append<unsigned long,objc_object  {objcproto9MTLBuffer}*,unsigned long,objc_object  {objcproto9MTLBuffer},unsigned long,objc_object  {objcproto9MTLBuffer},unsigned long>(stream, 53, timer, &patchesCopy, &bufferCopy, &offsetCopy, &indexBufferCopy, &bufferOffsetCopy, &indirectBufferCopy, &indirectBufferOffset);
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  redCopy = red;
  blueCopy = blue;
  greenCopy = green;
  alphaCopy = alpha;
  BinaryBuffer::Append<float,float,float,float>(self->super._stream, 55, self->super._timer, &redCopy, &greenCopy, &blueCopy, &alphaCopy);
}

- (void)setCullMode:(unint64_t)mode
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 14593;
  v9 = 100;
  modeCopy = mode;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  biasCopy = bias;
  clampCopy = clamp;
  scaleCopy = scale;
  BinaryBuffer::Append<float,float,float>(self->super._stream, 58, self->super._timer, &biasCopy, &scaleCopy, &clampCopy);
}

- (void)setDepthClipMode:(unint64_t)mode
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 15105;
  v9 = 100;
  modeCopy = mode;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDepthStencilState:(id)state
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 15361;
  v9 = 109;
  stateCopy = state;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 62, self->super._timer, &bufferCopy, &offsetCopy, &indexCopy);
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 63, self->super._timer, &offsetCopy, &indexCopy);
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = buffers;
  v8[1] = range.length;
  v7[0] = offsets;
  v7[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto9MTLBuffer}* const>,BinaryBuffer::Array<unsigned long const>,_NSRange>(stream, 64, timer, v8, v7, &rangeCopy);
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  bytesCopy = bytes;
  indexCopy = index;
  lengthCopy = length;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 65, self->super._timer, &bytesCopy, &lengthCopy, &indexCopy);
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  stateCopy = state;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 66, self->super._timer, &stateCopy, &indexCopy);
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  clampCopy = clamp;
  maxClampCopy = maxClamp;
  indexCopy = index;
  BinaryBuffer::Append<objc_object  {objcproto15MTLSamplerState}*,float,float,unsigned long>(self->super._stream, 67, self->super._timer, &stateCopy, &clampCopy, &maxClampCopy, &indexCopy);
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = states;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 68, timer, v6, &rangeCopy);
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  rangeCopy = range;
  maxClampsCopy = maxClamps;
  clampsCopy = clamps;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = states;
  v8[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,float const*,float const,_NSRange>(stream, 69, timer, v8, &clampsCopy, &maxClampsCopy, &rangeCopy);
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  textureCopy = texture;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 70, self->super._timer, &textureCopy, &indexCopy);
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = textures;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 71, timer, v6, &rangeCopy);
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 18433;
  v9 = 100;
  windingCopy = winding;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setRenderPipelineState:(id)state
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 18689;
  v9 = 109;
  stateCopy = state;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  valueCopy = value;
  referenceValueCopy = referenceValue;
  BinaryBuffer::Append<unsigned int,unsigned int>(self->super._stream, 76, self->super._timer, &valueCopy, &referenceValueCopy);
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 19713;
  v9 = 99;
  valueCopy = value;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x11uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 20737;
  v9 = 100;
  modeCopy = mode;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 82, self->super._timer, &bufferCopy, &offsetCopy, &indexCopy);
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 83, self->super._timer, &offsetCopy, &indexCopy);
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = buffers;
  v8[1] = range.length;
  v7[0] = offsets;
  v7[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto9MTLBuffer}* const>,BinaryBuffer::Array<unsigned long const>,_NSRange>(stream, 84, timer, v8, v7, &rangeCopy);
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  bytesCopy = bytes;
  indexCopy = index;
  lengthCopy = length;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 85, self->super._timer, &bytesCopy, &lengthCopy, &indexCopy);
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  stateCopy = state;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 86, self->super._timer, &stateCopy, &indexCopy);
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  clampCopy = clamp;
  maxClampCopy = maxClamp;
  indexCopy = index;
  BinaryBuffer::Append<objc_object  {objcproto15MTLSamplerState}*,float,float,unsigned long>(self->super._stream, 87, self->super._timer, &stateCopy, &clampCopy, &maxClampCopy, &indexCopy);
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = states;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 88, timer, v6, &rangeCopy);
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  rangeCopy = range;
  maxClampsCopy = maxClamps;
  clampsCopy = clamps;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = states;
  v8[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,float const*,float const,_NSRange>(stream, 89, timer, v8, &clampsCopy, &maxClampsCopy, &rangeCopy);
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  textureCopy = texture;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 90, self->super._timer, &textureCopy, &indexCopy);
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = textures;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 91, timer, v6, &rangeCopy);
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  offsetCopy = offset;
  modeCopy = mode;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 104, self->super._timer, &modeCopy, &offsetCopy);
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  bufferCopy = buffer;
  strideCopy = stride;
  offsetCopy = offset;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 79, self->super._timer, &bufferCopy, &offsetCopy, &strideCopy);
}

- (void)setTessellationFactorScale:(float)scale
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 20481;
  v9 = 106;
  scaleCopy = scale;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x11uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  countCopy = count;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = viewports;
  v6[1] = count;
  BinaryBuffer::Append<BinaryBuffer::Array<MTLViewport const>,unsigned long>(stream, 103, timer, v6, &countCopy);
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  countCopy = count;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = rects;
  v6[1] = count;
  BinaryBuffer::Append<BinaryBuffer::Array<MTLScissorRect const>,unsigned long>(stream, 75, timer, v6, &countCopy);
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  indexCopy = index;
  actionCopy = action;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 56, self->super._timer, &actionCopy, &indexCopy);
}

- (void)setDepthStoreAction:(unint64_t)action
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 15617;
  v9 = 100;
  actionCopy = action;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 19969;
  v9 = 100;
  actionCopy = action;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
{
  stagesCopy = stages;
  fenceCopy = fence;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 117, self->super._timer, &fenceCopy, &stagesCopy);
}

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
{
  stagesCopy = stages;
  fenceCopy = fence;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 127, self->super._timer, &fenceCopy, &stagesCopy);
}

- (void)useHeap:(id)heap
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 30209;
  v9 = 109;
  heapCopy = heap;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  stagesCopy = stages;
  heapCopy = heap;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 119, self->super._timer, &heapCopy, &stagesCopy);
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  countCopy = count;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = heaps;
  v6[1] = count;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto7MTLHeap}* const>,unsigned long>(stream, 120, timer, v6, &countCopy);
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  countCopy = count;
  v7[1] = count;
  stagesCopy = stages;
  timer = self->super._timer;
  stream = self->super._stream;
  v7[0] = heaps;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto11MTLResource}* const>,unsigned long,unsigned long>(stream, 121, timer, v7, &countCopy, &stagesCopy);
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  usageCopy = usage;
  resourceCopy = resource;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 122, self->super._timer, &resourceCopy, &usageCopy);
}

- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages
{
  resourceCopy = resource;
  stagesCopy = stages;
  usageCopy = usage;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 123, self->super._timer, &resourceCopy, &usageCopy, &stagesCopy);
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  countCopy = count;
  v7[1] = count;
  usageCopy = usage;
  timer = self->super._timer;
  stream = self->super._stream;
  v7[0] = resources;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto11MTLResource}* const>,unsigned long,unsigned long>(stream, 124, timer, v7, &countCopy, &usageCopy);
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  usageCopy = usage;
  countCopy = count;
  v8[1] = count;
  stagesCopy = stages;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = resources;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto11MTLResource}* const>,unsigned long,unsigned long,unsigned long>(stream, 125, timer, v8, &countCopy, &usageCopy, &stagesCopy);
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  strideCopy = stride;
  offsetCopy = offset;
  indexCopy = index;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long>(self->super._stream, 133, self->super._timer, &bufferCopy, &offsetCopy, &strideCopy, &indexCopy);
}

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  offsetCopy = offset;
  indexCopy = index;
  strideCopy = stride;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,unsigned long>(self->super._stream, 134, self->super._timer, &offsetCopy, &strideCopy, &indexCopy);
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v10[0] = buffers;
  v10[1] = range.length;
  v9[0] = offsets;
  v9[1] = range.length;
  v8[0] = strides;
  v8[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto9MTLBuffer}* const>,BinaryBuffer::Array<unsigned long const>,unsigned long const,_NSRange>(stream, 135, timer, v10, v9, v8, &rangeCopy);
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  bytesCopy = bytes;
  strideCopy = stride;
  lengthCopy = length;
  indexCopy = index;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long>(self->super._stream, 136, self->super._timer, &bytesCopy, &lengthCopy, &strideCopy, &indexCopy);
}

- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  scopeCopy = scope;
  beforeStagesCopy = beforeStages;
  stagesCopy = stages;
  BinaryBuffer::Append<MTLPrimitiveType,unsigned long,unsigned long>(self->super._stream, 106, self->super._timer, &scopeCopy, &stagesCopy, &beforeStagesCopy);
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  stagesCopy = stages;
  countCopy = count;
  v8[1] = count;
  beforeStagesCopy = beforeStages;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = resources;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto11MTLResource}* const>,unsigned long,unsigned long,unsigned long>(stream, 107, timer, v8, &countCopy, &stagesCopy, &beforeStagesCopy);
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 95, self->super._timer, &lengthCopy, &indexCopy);
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 92, self->super._timer, &bufferCopy, &offsetCopy, &indexCopy);
}

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 93, self->super._timer, &offsetCopy, &indexCopy);
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = buffers;
  v8[1] = range.length;
  v7[0] = offsets;
  v7[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto9MTLBuffer}* const>,BinaryBuffer::Array<unsigned long const>,_NSRange>(stream, 94, timer, v8, v7, &rangeCopy);
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  textureCopy = texture;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 100, self->super._timer, &textureCopy, &indexCopy);
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = textures;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 101, timer, v6, &rangeCopy);
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  stateCopy = state;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 96, self->super._timer, &stateCopy, &indexCopy);
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = states;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 98, timer, v6, &rangeCopy);
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  clampCopy = clamp;
  maxClampCopy = maxClamp;
  indexCopy = index;
  BinaryBuffer::Append<objc_object  {objcproto15MTLSamplerState}*,float,float,unsigned long>(self->super._stream, 96, self->super._timer, &stateCopy, &clampCopy, &maxClampCopy, &indexCopy);
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v10[0] = states;
  v10[1] = range.length;
  v9[0] = clamps;
  v9[1] = range.length;
  v8[0] = maxClamps;
  v8[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,BinaryBuffer::Array<float const>,float const,_NSRange>(stream, 98, timer, v10, v9, v8, &rangeCopy);
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  v13[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v13[1] = v13;
  __src = 13825;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v9 = -108;
  v10 = timer * numer / denom;
  v11 = 16;
  v13[0] = &v12;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v7 = *MEMORY[0x277D85DE8];
}

@end
@interface MTLCountersTraceComputeCommandEncoder
- (id)init:(BinaryBuffer *)init;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersTraceComputeCommandEncoder

- (id)init:(BinaryBuffer *)init
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceComputeCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:init flags:2];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  offsetCopy = offset;
  bufferCopy = buffer;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,MTLSize>(self->super._stream, 24, self->super._timer, &bufferCopy, &offsetCopy, threadgroup);
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  offsetCopy = offset;
  bufferCopy = buffer;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 26, self->super._timer, &bufferCopy, &offsetCopy);
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 27, self->super._timer, &bufferCopy, &offsetCopy, &indexCopy);
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 28, self->super._timer, &offsetCopy, &indexCopy);
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = buffers;
  v8[1] = range.length;
  v7[0] = offsets;
  v7[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto9MTLBuffer}* const>,BinaryBuffer::Array<unsigned long const>,_NSRange>(stream, 29, timer, v8, v7, &rangeCopy);
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  bytesCopy = bytes;
  indexCopy = index;
  lengthCopy = length;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 30, self->super._timer, &bytesCopy, &lengthCopy, &indexCopy);
}

- (void)setComputePipelineState:(id)state
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 7937;
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

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  stateCopy = state;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 32, self->super._timer, &stateCopy, &indexCopy);
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  clampCopy = clamp;
  maxClampCopy = maxClamp;
  indexCopy = index;
  BinaryBuffer::Append<objc_object  {objcproto15MTLSamplerState}*,float,float,unsigned long>(self->super._stream, 33, self->super._timer, &stateCopy, &clampCopy, &maxClampCopy, &indexCopy);
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = states;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 34, timer, v6, &rangeCopy);
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  rangeCopy = range;
  maxClampsCopy = maxClamps;
  clampsCopy = clamps;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = states;
  v8[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,float const*,float const,_NSRange>(stream, 35, timer, v8, &clampsCopy, &maxClampsCopy, &rangeCopy);
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  textureCopy = texture;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 37, self->super._timer, &textureCopy, &indexCopy);
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = textures;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 38, timer, v6, &rangeCopy);
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  indexCopy = index;
  lengthCopy = length;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 39, self->super._timer, &lengthCopy, &indexCopy);
}

- (void)updateFence:(id)fence
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 29697;
  v9 = 109;
  fenceCopy = fence;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)waitForFence:(id)fence
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 32257;
  v9 = 109;
  fenceCopy = fence;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
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

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  countCopy = count;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = heaps;
  v6[1] = count;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto7MTLHeap}* const>,unsigned long>(stream, 120, timer, v6, &countCopy);
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  usageCopy = usage;
  resourceCopy = resource;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 122, self->super._timer, &resourceCopy, &usageCopy);
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

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 10241;
  v9 = 100;
  scopeCopy = scope;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  countCopy = count;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = resources;
  v6[1] = count;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto7MTLHeap}* const>,unsigned long>(stream, 41, timer, v6, &countCopy);
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  indexCopy = index;
  tableCopy = table;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 108, self->super._timer, &tableCopy, &indexCopy);
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = tables;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 109, timer, v6, &rangeCopy);
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  indexCopy = index;
  tableCopy = table;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 110, self->super._timer, &tableCopy, &indexCopy);
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  rangeCopy = range;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = tables;
  v6[1] = range.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 111, timer, v6, &rangeCopy);
}

@end
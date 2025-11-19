@interface MTLCountersTraceComputeCommandEncoder
- (id)init:(BinaryBuffer *)a3;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4;
- (void)memoryBarrierWithScope:(unint64_t)a3;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setComputePipelineState:(id)a3;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)updateFence:(id)a3;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)waitForFence:(id)a3;
@end

@implementation MTLCountersTraceComputeCommandEncoder

- (id)init:(BinaryBuffer *)a3
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceComputeCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:a3 flags:2];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
{
  v5 = a4;
  v6 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,MTLSize>(self->super._stream, 24, self->super._timer, &v6, &v5, a5);
}

- (void)dispatchThreadsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 26, self->super._timer, &v5, &v4);
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v5 = a5;
  v6 = a4;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 27, self->super._timer, &v7, &v6, &v5);
}

- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 28, self->super._timer, &v5, &v4);
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  v9 = a5;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = a3;
  v8[1] = a5.length;
  v7[0] = a4;
  v7[1] = a5.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto9MTLBuffer}* const>,BinaryBuffer::Array<unsigned long const>,_NSRange>(stream, 29, timer, v8, v7, &v9);
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v5 = a5;
  v6 = a4;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long>(self->super._stream, 30, self->super._timer, &v7, &v6, &v5);
}

- (void)setComputePipelineState:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 7937;
  v9 = 109;
  v10 = a3;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 32, self->super._timer, &v5, &v4);
}

- (void)setSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = a6;
  BinaryBuffer::Append<objc_object  {objcproto15MTLSamplerState}*,float,float,unsigned long>(self->super._stream, 33, self->super._timer, &v9, &v8, &v7, &v6);
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  v7 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = a3;
  v6[1] = a4.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 34, timer, v6, &v7);
}

- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  v11 = a6;
  v9 = a5;
  v10 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v8[0] = a3;
  v8[1] = a6.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,float const*,float const,_NSRange>(stream, 35, timer, v8, &v10, &v9, &v11);
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 37, self->super._timer, &v5, &v4);
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  v7 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = a3;
  v6[1] = a4.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 38, timer, v6, &v7);
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<unsigned long,unsigned long>(self->super._stream, 39, self->super._timer, &v5, &v4);
}

- (void)updateFence:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 29697;
  v9 = 109;
  v10 = a3;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)waitForFence:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 32257;
  v9 = 109;
  v10 = a3;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)useHeap:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 30209;
  v9 = 109;
  v10 = a3;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  v7 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = a3;
  v6[1] = a4;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto7MTLHeap}* const>,unsigned long>(stream, 120, timer, v6, &v7);
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 122, self->super._timer, &v5, &v4);
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  v9 = a4;
  v7[1] = a4;
  v8 = a5;
  timer = self->super._timer;
  stream = self->super._stream;
  v7[0] = a3;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto11MTLResource}* const>,unsigned long,unsigned long>(stream, 124, timer, v7, &v9, &v8);
}

- (void)memoryBarrierWithScope:(unint64_t)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  timer = self->super._timer;
  stream = self->super._stream;
  v15[1] = v15;
  __src = 10241;
  v9 = 100;
  v10 = a3;
  numer = stream->_timebase.numer;
  denom = stream->_timebase.denom;
  v11 = -108;
  v12 = timer * numer / denom;
  v13 = 16;
  v15[0] = v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4
{
  v7 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = a3;
  v6[1] = a4;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto7MTLHeap}* const>,unsigned long>(stream, 41, timer, v6, &v7);
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 108, self->super._timer, &v5, &v4);
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  v7 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = a3;
  v6[1] = a4.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 109, timer, v6, &v7);
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 110, self->super._timer, &v5, &v4);
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  v7 = a4;
  timer = self->super._timer;
  stream = self->super._stream;
  v6[0] = a3;
  v6[1] = a4.length;
  BinaryBuffer::Append<BinaryBuffer::Array<objc_object  {objcproto15MTLSamplerState}* const>,_NSRange>(stream, 111, timer, v6, &v7);
}

@end
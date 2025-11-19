@interface MTLCountersTraceBlitCommandEncoder
- (id)init:(BinaryBuffer *)a3;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5;
- (void)fillBuffer:(id)a3 range:(_NSRange)a4 value:(unsigned __int8)a5;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
- (void)generateMipmapsForTexture:(id)a3;
- (void)getTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6 resetCounters:(BOOL)a7 countersBuffer:(id)a8 countersBufferOffset:(unint64_t)a9;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6;
- (void)synchronizeResource:(id)a3;
- (void)synchronizeTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)updateFence:(id)a3;
- (void)waitForFence:(id)a3;
@end

@implementation MTLCountersTraceBlitCommandEncoder

- (id)init:(BinaryBuffer *)a3
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceBlitCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:a3 flags:1];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v22[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v22[1] = v22;
  __src = 1;
  v10 = 109;
  v11 = a3;
  v12 = 100;
  v13 = a4;
  v14 = 109;
  v15 = a5;
  v16 = 100;
  v17 = a6;
  v18 = 100;
  v19 = a7;
  v20 = 16;
  v22[0] = &v21;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x30uLL);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v14 = a4;
  v15 = a3;
  v13 = a5;
  v11 = a8;
  v12 = a6;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,MTLSize,objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin>(self->super._stream, 1, &v15, &v14, &v13, &v12, a7, &v11, &a9, &a10, a11);
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v15 = a4;
  v16 = a3;
  v13 = a6;
  v14 = a5;
  v12 = a8;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,MTLSize,objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,unsigned long>(self->super._stream, 2, &v16, &v15, &v14, &v13, a7, &v12, &a9, &a10, a11, &a12);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v13 = a4;
  v14 = a3;
  v12 = a5;
  v11 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*>(self->super._stream, 5, &v14, &v13, &v12, a6, a7, &v11, &a9, &a10, a11);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v15 = a4;
  v16 = a3;
  v14 = a5;
  stream = self->super._stream;
  v13 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*,unsigned long>(stream, 6, &v16, &v15, &v14, a6, a7, &v13, &a9, &a10, a11, &a12);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v13 = a4;
  v14 = a3;
  v12 = a5;
  v11 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long>(self->super._stream, 3, &v14, &v13, &v12, a6, a7, &v11, &a9, &a10, &a11);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v15 = a4;
  v16 = a3;
  v14 = a5;
  stream = self->super._stream;
  v13 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,unsigned long>(stream, 4, &v16, &v15, &v14, a6, a7, &v13, &a9, &a10, &a11, &a12);
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 value:(unsigned __int8)a5
{
  v7 = a4;
  v6 = a3;
  v5 = a5;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,_NSRange,unsigned char>(self->super._stream, 7, &v6, &v7, &v5);
}

- (void)fillBuffer:(id)a3 range:(_NSRange)a4 pattern4:(unsigned int)a5
{
  v7 = a4;
  v6 = a3;
  v5 = a5;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,_NSRange,unsigned int>(self->super._stream, 8, &v6, &v7, &v5);
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v11 = a4;
  v12 = a3;
  v9 = a7;
  v10 = a5;
  v8 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,void const*,unsigned long>(self->super._stream, 9, &v12, &v11, &v10, a6, &v9, &v8);
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  v10 = a7;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,MTLClearColor>(self->super._stream, 10, &v9, &v8, &v7, a6, &v10);
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  v12 = a7;
  v10 = a4;
  v11 = a3;
  v8 = a8;
  v9 = a5;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,MTLClearColor,MTLPixelFormat>(self->super._stream, 11, &v11, &v10, &v9, a6, &v12, &v8);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  v15 = a4;
  v16 = a3;
  v14 = a5;
  v12 = a7;
  v13 = a6;
  stream = self->super._stream;
  v11 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,unsigned long,unsigned long>(stream, 12, &v16, &v15, &v14, &v13, &v12, &v11, &a9, &a10);
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v13[1] = v13;
  __src = 3329;
  v7 = 109;
  v8 = a3;
  v9 = 109;
  v10 = a4;
  v11 = 16;
  v13[0] = v12;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)generateMipmapsForTexture:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 3585;
  v6 = 109;
  v7 = a3;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeResource:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 3841;
  v6 = 109;
  v7 = a3;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = 4097;
  v8 = 109;
  v9 = a3;
  v10 = 100;
  v11 = a4;
  v12 = 100;
  v13 = a5;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateFence:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 29697;
  v6 = 109;
  v7 = a3;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)waitForFence:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 32257;
  v6 = 109;
  v7 = a3;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 4353;
  v6 = 109;
  v7 = a3;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = 4609;
  v8 = 109;
  v9 = a3;
  v10 = 100;
  v11 = a4;
  v12 = 100;
  v13 = a5;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 4865;
  v6 = 109;
  v7 = a3;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = 5121;
  v8 = 109;
  v9 = a3;
  v10 = 100;
  v11 = a4;
  v12 = 100;
  v13 = a5;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6 resetCounters:(BOOL)a7 countersBuffer:(id)a8 countersBufferOffset:(unint64_t)a9
{
  v12 = a5;
  v11 = a6;
  v10 = a7;
  v9 = a8;
  BinaryBuffer::Append<MTLRegion,unsigned long,unsigned long,BOOL,objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 21, a4, &v12, &v11, &v10, &v9, &a9);
}

- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6
{
  v11[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v11[1] = v11;
  __src = 5633;
  v9 = 16;
  v11[0] = v10;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 3uLL);
  v7 = *MEMORY[0x277D85DE8];
}

@end
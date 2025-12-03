@interface MTLCountersTraceBlitCommandEncoder
- (id)init:(BinaryBuffer *)init;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)synchronizeResource:(id)resource;
- (void)synchronizeTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)updateFence:(id)fence;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersTraceBlitCommandEncoder

- (id)init:(BinaryBuffer *)init
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceBlitCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:init flags:1];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  v22[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v22[1] = v22;
  __src = 1;
  v10 = 109;
  bufferCopy = buffer;
  v12 = 100;
  offsetCopy = offset;
  v14 = 109;
  toBufferCopy = toBuffer;
  v16 = 100;
  destinationOffsetCopy = destinationOffset;
  v18 = 100;
  sizeCopy = size;
  v20 = 16;
  v22[0] = &v21;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x30uLL);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  offsetCopy = offset;
  bufferCopy = buffer;
  rowCopy = row;
  textureCopy = texture;
  imageCopy = image;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,MTLSize,objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin>(self->super._stream, 1, &bufferCopy, &offsetCopy, &rowCopy, &imageCopy, size, &textureCopy, &slice, &level, origin);
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  offsetCopy = offset;
  bufferCopy = buffer;
  imageCopy = image;
  rowCopy = row;
  textureCopy = texture;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,MTLSize,objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,unsigned long>(self->super._stream, 2, &bufferCopy, &offsetCopy, &rowCopy, &imageCopy, size, &textureCopy, &slice, &level, origin, &options);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  toTextureCopy = toTexture;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*>(self->super._stream, 5, &textureCopy, &sliceCopy, &levelCopy, origin, size, &toTextureCopy, &destinationSlice, &destinationLevel, destinationOrigin);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  stream = self->super._stream;
  toTextureCopy = toTexture;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*,unsigned long>(stream, 6, &textureCopy, &sliceCopy, &levelCopy, origin, size, &toTextureCopy, &destinationSlice, &destinationLevel, destinationOrigin, &options);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  bufferCopy = buffer;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long>(self->super._stream, 3, &textureCopy, &sliceCopy, &levelCopy, origin, size, &bufferCopy, &offset, &row, &image);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  stream = self->super._stream;
  bufferCopy = buffer;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,unsigned long>(stream, 4, &textureCopy, &sliceCopy, &levelCopy, origin, size, &bufferCopy, &offset, &row, &image, &options);
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value
{
  rangeCopy = range;
  bufferCopy = buffer;
  valueCopy = value;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,_NSRange,unsigned char>(self->super._stream, 7, &bufferCopy, &rangeCopy, &valueCopy);
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  rangeCopy = range;
  bufferCopy = buffer;
  pattern4Copy = pattern4;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,_NSRange,unsigned int>(self->super._stream, 8, &bufferCopy, &rangeCopy, &pattern4Copy);
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  levelCopy = level;
  textureCopy = texture;
  bytesCopy = bytes;
  sliceCopy = slice;
  lengthCopy = length;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,void const*,unsigned long>(self->super._stream, 9, &textureCopy, &levelCopy, &sliceCopy, region, &bytesCopy, &lengthCopy);
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  colorCopy = color;
  levelCopy = level;
  textureCopy = texture;
  sliceCopy = slice;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,MTLClearColor>(self->super._stream, 10, &textureCopy, &levelCopy, &sliceCopy, region, &colorCopy);
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  colorCopy = color;
  levelCopy = level;
  textureCopy = texture;
  formatCopy = format;
  sliceCopy = slice;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,MTLClearColor,MTLPixelFormat>(self->super._stream, 11, &textureCopy, &levelCopy, &sliceCopy, region, &colorCopy, &formatCopy);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  destinationSliceCopy = destinationSlice;
  toTextureCopy = toTexture;
  stream = self->super._stream;
  destinationLevelCopy = destinationLevel;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,unsigned long,unsigned long>(stream, 12, &textureCopy, &sliceCopy, &levelCopy, &toTextureCopy, &destinationSliceCopy, &destinationLevelCopy, &count, &levelCount);
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  v13[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v13[1] = v13;
  __src = 3329;
  v7 = 109;
  textureCopy = texture;
  v9 = 109;
  toTextureCopy = toTexture;
  v11 = 16;
  v13[0] = v12;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)generateMipmapsForTexture:(id)texture
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 3585;
  v6 = 109;
  textureCopy = texture;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeResource:(id)resource
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 3841;
  v6 = 109;
  resourceCopy = resource;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = 4097;
  v8 = 109;
  textureCopy = texture;
  v10 = 100;
  sliceCopy = slice;
  v12 = 100;
  levelCopy = level;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateFence:(id)fence
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 29697;
  v6 = 109;
  fenceCopy = fence;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)waitForFence:(id)fence
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 32257;
  v6 = 109;
  fenceCopy = fence;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 4353;
  v6 = 109;
  accessCopy = access;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = 4609;
  v8 = 109;
  accessCopy = access;
  v10 = 100;
  sliceCopy = slice;
  v12 = 100;
  levelCopy = level;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 4865;
  v6 = 109;
  accessCopy = access;
  v8 = 16;
  v10[0] = &v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = 5121;
  v8 = 109;
  accessCopy = access;
  v10 = 100;
  sliceCopy = slice;
  v12 = 100;
  levelCopy = level;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset
{
  levelCopy = level;
  sliceCopy = slice;
  resetCountersCopy = resetCounters;
  bufferCopy = buffer;
  BinaryBuffer::Append<MTLRegion,unsigned long,unsigned long,BOOL,objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 21, region, &levelCopy, &sliceCopy, &resetCountersCopy, &bufferCopy, &offset);
}

- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
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
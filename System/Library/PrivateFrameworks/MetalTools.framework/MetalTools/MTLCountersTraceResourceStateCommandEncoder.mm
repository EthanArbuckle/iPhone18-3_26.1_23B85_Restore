@interface MTLCountersTraceResourceStateCommandEncoder
- (id)init:(BinaryBuffer *)a3;
- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)waitForFence:(id)a3;
@end

@implementation MTLCountersTraceResourceStateCommandEncoder

- (id)init:(BinaryBuffer *)a3
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceResourceStateCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:a3 flags:8];
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  v23[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v23[1] = v23;
  __src = -32511;
  v11 = 100;
  v12 = a4;
  v13 = 109;
  v14 = a5;
  v15 = 109;
  v16 = a6;
  v17 = 109;
  v18 = a7;
  v19 = 100;
  v20 = a8;
  v21 = 16;
  v23[0] = &v22;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x30uLL);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7
{
  v9 = a4;
  v7 = a7;
  v8 = a6;
  BinaryBuffer::Append<MTLSparseTextureMappingMode,MTLRegion,unsigned long,unsigned long>(self->super._stream, 128, &v9, a5, &v8, &v7);
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6
{
  v17[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v17[1] = v17;
  __src = -32255;
  v9 = 100;
  v10 = a4;
  v11 = 109;
  v12 = a5;
  v13 = 100;
  v14 = a6;
  v15 = 16;
  v17[0] = &v16;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8
{
  v25[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v25[1] = v25;
  __src = -31999;
  v11 = 109;
  v12 = a3;
  v13 = 100;
  v14 = a4;
  v15 = 100;
  v16 = a5;
  v17 = 109;
  v18 = a6;
  v19 = 100;
  v20 = a7;
  v21 = 100;
  v22 = a8;
  v23 = 16;
  v25[0] = v24;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x39uLL);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v13 = a4;
  v14 = a3;
  v12 = a5;
  v11 = a8;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*>(self->super._stream, 132, &v14, &v13, &v12, a6, a7, &v11, &a9, &a10, a11);
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

@end
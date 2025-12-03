@interface MTLCountersTraceResourceStateCommandEncoder
- (id)init:(BinaryBuffer *)init;
- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersTraceResourceStateCommandEncoder

- (id)init:(BinaryBuffer *)init
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceResourceStateCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:init flags:8];
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  v23[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v23[1] = v23;
  __src = -32511;
  v11 = 100;
  modeCopy = mode;
  v13 = 109;
  regionsCopy = regions;
  v15 = 109;
  levelsCopy = levels;
  v17 = 109;
  slicesCopy = slices;
  v19 = 100;
  numRegionsCopy = numRegions;
  v21 = 16;
  v23[0] = &v22;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x30uLL);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  modeCopy = mode;
  sliceCopy = slice;
  levelCopy = level;
  BinaryBuffer::Append<MTLSparseTextureMappingMode,MTLRegion,unsigned long,unsigned long>(self->super._stream, 128, &modeCopy, region, &levelCopy, &sliceCopy);
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  v17[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v17[1] = v17;
  __src = -32255;
  v9 = 100;
  modeCopy = mode;
  v11 = 109;
  bufferCopy = buffer;
  v13 = 100;
  offsetCopy = offset;
  v15 = 16;
  v17[0] = &v16;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles
{
  v25[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v25[1] = v25;
  __src = -31999;
  v11 = 109;
  textureCopy = texture;
  v13 = 100;
  levelCopy = level;
  v15 = 100;
  sliceCopy = slice;
  v17 = 109;
  bufferCopy = buffer;
  v19 = 100;
  offsetCopy = offset;
  v21 = 100;
  tilesCopy = tiles;
  v23 = 16;
  v25[0] = v24;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x39uLL);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  toTextureCopy = toTexture;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*>(self->super._stream, 132, &textureCopy, &sliceCopy, &levelCopy, origin, size, &toTextureCopy, &destinationSlice, &destinationLevel, destinationOrigin);
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

@end
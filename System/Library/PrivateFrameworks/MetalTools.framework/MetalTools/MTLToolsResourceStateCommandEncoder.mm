@interface MTLToolsResourceStateCommandEncoder
- (MTLToolsResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)waitForFence:(id)a3;
@end

@implementation MTLToolsResourceStateCommandEncoder

- (MTLToolsResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLToolsResourceStateCommandEncoder;
  v6 = [(MTLToolsCommandEncoder *)&v10 initWithBaseObject:a3 parent:a4];
  v7 = v6;
  if (a5 && v6)
  {
    for (i = 0; i != 4; ++i)
    {
      -[MTLToolsCommandEncoder addRetainedObject:](v7, "addRetainedObject:", [objc_msgSend(objc_msgSend(a5 "sampleBufferAttachments")]);
    }
  }

  return v7;
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];

  [v15 updateTextureMappings:v16 mode:a4 regions:a5 mipLevels:a6 slices:a7 numRegions:a8];
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = *&a5->var0.var2;
  v16[0] = *&a5->var0.var0;
  v16[1] = v15;
  v16[2] = *&a5->var1.var1;
  [v13 updateTextureMapping:v14 mode:a4 region:v16 mipLevel:a6 slice:a7];
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a3 baseObject];
  v13 = [a5 baseObject];

  [v11 updateTextureMapping:v12 mode:a4 indirectBuffer:v13 indirectBufferOffset:a6];
}

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v23 = *a6;
  v22 = *a7;
  v20 = [a8 baseObject];
  v21 = *a11;
  [v18 moveTextureMappingsFromTexture:v19 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v22 toTexture:v20 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v21];
}

- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = [a6 baseObject];

  [v15 copyMappingStateFromTexture:v16 mipLevel:a4 slice:a5 toBuffer:v17 offset:a7 numTiles:a8];
}

- (void)updateFence:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 updateFence:v6];
}

- (void)waitForFence:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 waitForFence:v6];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEncodingAndRetrieveProgramAddressTable];
}

@end
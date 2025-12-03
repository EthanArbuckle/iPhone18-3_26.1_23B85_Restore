@interface MTLToolsResourceStateCommandEncoder
- (MTLToolsResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)waitForFence:(id)fence;
@end

@implementation MTLToolsResourceStateCommandEncoder

- (MTLToolsResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLToolsResourceStateCommandEncoder;
  v6 = [(MTLToolsCommandEncoder *)&v10 initWithBaseObject:encoder parent:parent];
  v7 = v6;
  if (descriptor && v6)
  {
    for (i = 0; i != 4; ++i)
    {
      -[MTLToolsCommandEncoder addRetainedObject:](v7, "addRetainedObject:", [objc_msgSend(objc_msgSend(descriptor "sampleBufferAttachments")]);
    }
  }

  return v7;
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [mappings baseObject];

  [baseObject updateTextureMappings:baseObject2 mode:mode regions:regions mipLevels:levels slices:slices numRegions:numRegions];
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [mapping baseObject];
  v15 = *&region->var0.var2;
  v16[0] = *&region->var0.var0;
  v16[1] = v15;
  v16[2] = *&region->var1.var1;
  [baseObject updateTextureMapping:baseObject2 mode:mode region:v16 mipLevel:level slice:slice];
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [mapping baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject updateTextureMapping:baseObject2 mode:mode indirectBuffer:baseObject3 indirectBufferOffset:offset];
}

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTexture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v23 = *origin;
  v22 = *size;
  baseObject3 = [toTexture baseObject];
  v21 = *destinationOrigin;
  [baseObject moveTextureMappingsFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v22 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v21];
}

- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject copyMappingStateFromTexture:baseObject2 mipLevel:level slice:slice toBuffer:baseObject3 offset:offset numTiles:tiles];
}

- (void)updateFence:(id)fence
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject updateFence:baseObject2];
}

- (void)waitForFence:(id)fence
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

@end
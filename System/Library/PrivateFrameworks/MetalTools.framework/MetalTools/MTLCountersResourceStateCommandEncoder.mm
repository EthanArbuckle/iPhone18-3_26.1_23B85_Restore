@interface MTLCountersResourceStateCommandEncoder
- (MTLCountersResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles;
- (void)dealloc;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersResourceStateCommandEncoder

- (MTLCountersResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLCountersResourceStateCommandEncoder;
  v6 = [(MTLToolsResourceStateCommandEncoder *)&v8 initWithResourceStateCommandEncoder:encoder parent:buffer descriptor:descriptor];
  if (v6)
  {
    v6->_traceEncoder = [objc_msgSend(buffer "traceBuffer")];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersResourceStateCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)insertDebugSignpost:(id)signpost
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder insertDebugSignpost:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertDebugSignpost:signpost];
}

- (void)pushDebugGroup:(id)group
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder pushDebugGroup:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject pushDebugGroup:group];
}

- (void)popDebugGroup
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder popDebugGroup];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject popDebugGroup];
}

- (void)setLabel:(id)label
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder setLabel:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  [MTLCountersTraceResourceStateCommandEncoder updateTextureMappings:"updateTextureMappings:mode:regions:mipLevels:slices:numRegions:" mode:? regions:? mipLevels:? slices:? numRegions:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject updateTextureMappings:mappings mode:mode regions:regions mipLevels:levels slices:slices numRegions:numRegions];
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  traceEncoder = self->_traceEncoder;
  v14 = *&region->var0.var2;
  v17 = *&region->var0.var0;
  v18 = v14;
  v19 = *&region->var1.var1;
  [MTLCountersTraceResourceStateCommandEncoder updateTextureMapping:"updateTextureMapping:mode:region:mipLevel:slice:" mode:mapping region:mode mipLevel:&v17 slice:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v16 = *&region->var0.var2;
  v17 = *&region->var0.var0;
  v18 = v16;
  v19 = *&region->var1.var1;
  [baseObject updateTextureMapping:mapping mode:mode region:&v17 mipLevel:level slice:slice];
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [MTLCountersTraceResourceStateCommandEncoder updateTextureMapping:"updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:" mode:? indirectBuffer:? indirectBufferOffset:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject updateTextureMapping:mapping mode:mode indirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles
{
  [MTLCountersTraceResourceStateCommandEncoder copyMappingStateFromTexture:"copyMappingStateFromTexture:mipLevel:slice:toBuffer:offset:numTiles:" mipLevel:? slice:? toBuffer:? offset:? numTiles:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject copyMappingStateFromTexture:texture mipLevel:level slice:slice toBuffer:buffer offset:offset numTiles:tiles];
}

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  traceEncoder = self->_traceEncoder;
  v22 = *origin;
  v21 = *size;
  v20 = *destinationOrigin;
  [(MTLCountersTraceResourceStateCommandEncoder *)traceEncoder moveTextureMappingsFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toTexture:destinationSlice destinationSlice:destinationLevel destinationLevel:&v20 destinationOrigin:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v22 = *origin;
  v21 = *size;
  v20 = *destinationOrigin;
  [baseObject moveTextureMappingsFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v20];
}

- (void)updateFence:(id)fence
{
  [(MTLCountersTraceResourceStateCommandEncoder *)self->_traceEncoder updateFence:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject updateFence:fence];
}

- (void)waitForFence:(id)fence
{
  [(MTLCountersTraceResourceStateCommandEncoder *)self->_traceEncoder waitForFence:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitForFence:fence];
}

- (void)endEncoding
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder endEncoding];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

@end
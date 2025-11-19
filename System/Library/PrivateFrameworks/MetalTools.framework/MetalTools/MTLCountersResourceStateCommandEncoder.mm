@interface MTLCountersResourceStateCommandEncoder
- (MTLCountersResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8;
- (void)dealloc;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)a3;
- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)updateFence:(id)a3;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6;
- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7;
- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8;
- (void)waitForFence:(id)a3;
@end

@implementation MTLCountersResourceStateCommandEncoder

- (MTLCountersResourceStateCommandEncoder)initWithResourceStateCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLCountersResourceStateCommandEncoder;
  v6 = [(MTLToolsResourceStateCommandEncoder *)&v8 initWithResourceStateCommandEncoder:a3 parent:a4 descriptor:a5];
  if (v6)
  {
    v6->_traceEncoder = [objc_msgSend(a4 "traceBuffer")];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersResourceStateCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)insertDebugSignpost:(id)a3
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder insertDebugSignpost:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 insertDebugSignpost:a3];
}

- (void)pushDebugGroup:(id)a3
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder pushDebugGroup:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 pushDebugGroup:a3];
}

- (void)popDebugGroup
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder popDebugGroup];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 popDebugGroup];
}

- (void)setLabel:(id)a3
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder setLabel:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 setLabel:a3];
}

- (void)updateTextureMappings:(id)a3 mode:(unint64_t)a4 regions:(id *)a5 mipLevels:(const unint64_t *)a6 slices:(const unint64_t *)a7 numRegions:(unint64_t)a8
{
  [MTLCountersTraceResourceStateCommandEncoder updateTextureMappings:"updateTextureMappings:mode:regions:mipLevels:slices:numRegions:" mode:? regions:? mipLevels:? slices:? numRegions:?];
  v15 = [(MTLToolsObject *)self baseObject];

  [v15 updateTextureMappings:a3 mode:a4 regions:a5 mipLevels:a6 slices:a7 numRegions:a8];
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 region:(id *)a5 mipLevel:(unint64_t)a6 slice:(unint64_t)a7
{
  traceEncoder = self->_traceEncoder;
  v14 = *&a5->var0.var2;
  v17 = *&a5->var0.var0;
  v18 = v14;
  v19 = *&a5->var1.var1;
  [MTLCountersTraceResourceStateCommandEncoder updateTextureMapping:"updateTextureMapping:mode:region:mipLevel:slice:" mode:a3 region:a4 mipLevel:&v17 slice:?];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = *&a5->var0.var2;
  v17 = *&a5->var0.var0;
  v18 = v16;
  v19 = *&a5->var1.var1;
  [v15 updateTextureMapping:a3 mode:a4 region:&v17 mipLevel:a6 slice:a7];
}

- (void)updateTextureMapping:(id)a3 mode:(unint64_t)a4 indirectBuffer:(id)a5 indirectBufferOffset:(unint64_t)a6
{
  [MTLCountersTraceResourceStateCommandEncoder updateTextureMapping:"updateTextureMapping:mode:indirectBuffer:indirectBufferOffset:" mode:? indirectBuffer:? indirectBufferOffset:?];
  v11 = [(MTLToolsObject *)self baseObject];

  [v11 updateTextureMapping:a3 mode:a4 indirectBuffer:a5 indirectBufferOffset:a6];
}

- (void)copyMappingStateFromTexture:(id)a3 mipLevel:(unint64_t)a4 slice:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7 numTiles:(unint64_t)a8
{
  [MTLCountersTraceResourceStateCommandEncoder copyMappingStateFromTexture:"copyMappingStateFromTexture:mipLevel:slice:toBuffer:offset:numTiles:" mipLevel:? slice:? toBuffer:? offset:? numTiles:?];
  v15 = [(MTLToolsObject *)self baseObject];

  [v15 copyMappingStateFromTexture:a3 mipLevel:a4 slice:a5 toBuffer:a6 offset:a7 numTiles:a8];
}

- (void)moveTextureMappingsFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  traceEncoder = self->_traceEncoder;
  v22 = *a6;
  v21 = *a7;
  v20 = *a11;
  [(MTLCountersTraceResourceStateCommandEncoder *)traceEncoder moveTextureMappingsFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toTexture:a9 destinationSlice:a10 destinationLevel:&v20 destinationOrigin:?];
  v19 = [(MTLToolsObject *)self baseObject];
  v22 = *a6;
  v21 = *a7;
  v20 = *a11;
  [v19 moveTextureMappingsFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)updateFence:(id)a3
{
  [(MTLCountersTraceResourceStateCommandEncoder *)self->_traceEncoder updateFence:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 updateFence:a3];
}

- (void)waitForFence:(id)a3
{
  [(MTLCountersTraceResourceStateCommandEncoder *)self->_traceEncoder waitForFence:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 waitForFence:a3];
}

- (void)endEncoding
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder endEncoding];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endEncoding];
}

@end
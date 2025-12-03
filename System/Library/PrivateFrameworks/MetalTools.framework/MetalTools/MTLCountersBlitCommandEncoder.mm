@interface MTLCountersBlitCommandEncoder
- (MTLCountersBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)dealloc;
- (void)endEncoding;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)insertDebugSignpost:(id)signpost;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
- (void)updateFence:(id)fence;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersBlitCommandEncoder

- (MTLCountersBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLCountersBlitCommandEncoder;
  v6 = [(MTLToolsBlitCommandEncoder *)&v8 initWithBlitCommandEncoder:encoder parent:buffer descriptor:descriptor];
  if (v6)
  {
    v6->_traceEncoder = [objc_msgSend(buffer "traceBuffer")];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersBlitCommandEncoder;
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

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  traceEncoder = self->_traceEncoder;
  v22 = *origin;
  v21 = *size;
  v20 = *destinationOrigin;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toTexture:destinationSlice destinationSlice:destinationLevel destinationLevel:&v20 destinationOrigin:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v22 = *origin;
  v21 = *size;
  v20 = *destinationOrigin;
  [baseObject copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v20];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  traceEncoder = self->_traceEncoder;
  v23 = *origin;
  v22 = *size;
  v21 = *destinationOrigin;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v22 toTexture:destinationSlice destinationSlice:destinationLevel destinationLevel:&v21 destinationOrigin:options options:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v23 = *origin;
  v22 = *size;
  v21 = *destinationOrigin;
  [baseObject copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v22 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v21 options:options];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  traceEncoder = self->_traceEncoder;
  v21 = *size;
  v20 = *origin;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v21 toTexture:slice destinationSlice:level destinationLevel:&v20 destinationOrigin:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v21 = *size;
  v20 = *origin;
  [baseObject copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v21 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v20];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  traceEncoder = self->_traceEncoder;
  v22 = *size;
  v21 = *origin;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 toTexture:slice destinationSlice:level destinationLevel:&v21 destinationOrigin:options options:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v22 = *size;
  v21 = *origin;
  [baseObject copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v21 options:options];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  traceEncoder = self->_traceEncoder;
  v21 = *origin;
  v20 = *size;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v21 sourceSize:&v20 toBuffer:offset destinationOffset:row destinationBytesPerRow:image destinationBytesPerImage:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v21 = *origin;
  v20 = *size;
  [baseObject copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v21 sourceSize:&v20 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  traceEncoder = self->_traceEncoder;
  v22 = *origin;
  v21 = *size;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toBuffer:offset destinationOffset:row destinationBytesPerRow:image destinationBytesPerImage:options options:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v22 = *origin;
  v21 = *size;
  [baseObject copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];
}

- (void)generateMipmapsForTexture:(id)texture
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder generateMipmapsForTexture:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject generateMipmapsForTexture:texture];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  traceEncoder = self->_traceEncoder;
  v16 = *&region->var0.var2;
  v19 = *&region->var0.var0;
  v20 = v16;
  v21 = *&region->var1.var1;
  [MTLCountersTraceBlitCommandEncoder fillTexture:"fillTexture:level:slice:region:bytes:length:" level:texture slice:level region:slice bytes:&v19 length:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  v18 = *&region->var0.var2;
  v19 = *&region->var0.var0;
  v20 = v18;
  v21 = *&region->var1.var1;
  [baseObject fillTexture:texture level:level slice:slice region:&v19 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  traceEncoder = self->_traceEncoder;
  v17 = *&region->var0.var2;
  v20 = *&region->var0.var0;
  v21 = v17;
  v22 = *&region->var1.var1;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder fillTexture:texture level:level slice:slice region:&v20 color:color.var0, var1];
  baseObject = [(MTLToolsObject *)self baseObject];
  v19 = *&region->var0.var2;
  v20 = *&region->var0.var0;
  v21 = v19;
  v22 = *&region->var1.var1;
  [baseObject fillTexture:texture level:level slice:slice region:&v20 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  traceEncoder = self->_traceEncoder;
  v19 = *&region->var0.var2;
  v22 = *&region->var0.var0;
  v23 = v19;
  v24 = *&region->var1.var1;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder fillTexture:texture level:level slice:slice region:&v22 color:color.var0 pixelFormat:var1];
  baseObject = [(MTLToolsObject *)self baseObject];
  v21 = *&region->var0.var2;
  v22 = *&region->var0.var0;
  v23 = v21;
  v24 = *&region->var1.var1;
  [baseObject fillTexture:texture level:level slice:slice region:&v22 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  [MTLCountersTraceBlitCommandEncoder copyFromTexture:"copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:" sourceSlice:count sourceLevel:levelCount toTexture:? destinationSlice:? destinationLevel:? sliceCount:? levelCount:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject copyFromTexture:texture sourceSlice:slice sourceLevel:level toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  [MTLCountersTraceBlitCommandEncoder copyFromTexture:"copyFromTexture:toTexture:" toTexture:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject copyFromTexture:texture toTexture:toTexture];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  [MTLCountersTraceBlitCommandEncoder copyFromBuffer:"copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:" sourceOffset:? toBuffer:? destinationOffset:? size:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject copyFromBuffer:buffer sourceOffset:offset toBuffer:toBuffer destinationOffset:destinationOffset size:size];
}

- (void)updateFence:(id)fence
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder updateFence:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject updateFence:fence];
}

- (void)waitForFence:(id)fence
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder waitForFence:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitForFence:fence];
}

- (void)endEncoding
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder endEncoding];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder optimizeContentsForGPUAccess:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject optimizeContentsForGPUAccess:access];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  [MTLCountersTraceBlitCommandEncoder optimizeContentsForGPUAccess:"optimizeContentsForGPUAccess:slice:level:" slice:? level:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject optimizeContentsForGPUAccess:access slice:slice level:level];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder optimizeContentsForCPUAccess:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject optimizeContentsForCPUAccess:access];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  [MTLCountersTraceBlitCommandEncoder optimizeContentsForCPUAccess:"optimizeContentsForCPUAccess:slice:level:" slice:? level:?];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject optimizeContentsForCPUAccess:access slice:slice level:level];
}

@end
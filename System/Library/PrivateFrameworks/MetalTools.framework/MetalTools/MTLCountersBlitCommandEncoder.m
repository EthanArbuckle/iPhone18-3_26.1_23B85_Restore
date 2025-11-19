@interface MTLCountersBlitCommandEncoder
- (MTLCountersBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)dealloc;
- (void)endEncoding;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
- (void)generateMipmapsForTexture:(id)a3;
- (void)insertDebugSignpost:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)updateFence:(id)a3;
- (void)waitForFence:(id)a3;
@end

@implementation MTLCountersBlitCommandEncoder

- (MTLCountersBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLCountersBlitCommandEncoder;
  v6 = [(MTLToolsBlitCommandEncoder *)&v8 initWithBlitCommandEncoder:a3 parent:a4 descriptor:a5];
  if (v6)
  {
    v6->_traceEncoder = [objc_msgSend(a4 "traceBuffer")];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersBlitCommandEncoder;
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

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  traceEncoder = self->_traceEncoder;
  v22 = *a6;
  v21 = *a7;
  v20 = *a11;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toTexture:a9 destinationSlice:a10 destinationLevel:&v20 destinationOrigin:?];
  v19 = [(MTLToolsObject *)self baseObject];
  v22 = *a6;
  v21 = *a7;
  v20 = *a11;
  [v19 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  traceEncoder = self->_traceEncoder;
  v23 = *a6;
  v22 = *a7;
  v21 = *a11;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v22 toTexture:a9 destinationSlice:a10 destinationLevel:&v21 destinationOrigin:a12 options:?];
  v20 = [(MTLToolsObject *)self baseObject];
  v23 = *a6;
  v22 = *a7;
  v21 = *a11;
  [v20 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v22 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v21 options:a12];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  traceEncoder = self->_traceEncoder;
  v21 = *a7;
  v20 = *a11;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v21 toTexture:a9 destinationSlice:a10 destinationLevel:&v20 destinationOrigin:?];
  v19 = [(MTLToolsObject *)self baseObject];
  v21 = *a7;
  v20 = *a11;
  [v19 copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v21 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v20];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  traceEncoder = self->_traceEncoder;
  v22 = *a7;
  v21 = *a11;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v22 toTexture:a9 destinationSlice:a10 destinationLevel:&v21 destinationOrigin:a12 options:?];
  v20 = [(MTLToolsObject *)self baseObject];
  v22 = *a7;
  v21 = *a11;
  [v20 copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v22 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v21 options:a12];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  traceEncoder = self->_traceEncoder;
  v21 = *a6;
  v20 = *a7;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v21 sourceSize:&v20 toBuffer:a9 destinationOffset:a10 destinationBytesPerRow:a11 destinationBytesPerImage:?];
  v19 = [(MTLToolsObject *)self baseObject];
  v21 = *a6;
  v20 = *a7;
  [v19 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v21 sourceSize:&v20 toBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  traceEncoder = self->_traceEncoder;
  v22 = *a6;
  v21 = *a7;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toBuffer:a9 destinationOffset:a10 destinationBytesPerRow:a11 destinationBytesPerImage:a12 options:?];
  v20 = [(MTLToolsObject *)self baseObject];
  v22 = *a6;
  v21 = *a7;
  [v20 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11 options:a12];
}

- (void)generateMipmapsForTexture:(id)a3
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder generateMipmapsForTexture:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 generateMipmapsForTexture:a3];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  traceEncoder = self->_traceEncoder;
  v16 = *&a6->var0.var2;
  v19 = *&a6->var0.var0;
  v20 = v16;
  v21 = *&a6->var1.var1;
  [MTLCountersTraceBlitCommandEncoder fillTexture:"fillTexture:level:slice:region:bytes:length:" level:a3 slice:a4 region:a5 bytes:&v19 length:?];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = *&a6->var0.var2;
  v19 = *&a6->var0.var0;
  v20 = v18;
  v21 = *&a6->var1.var1;
  [v17 fillTexture:a3 level:a4 slice:a5 region:&v19 bytes:a7 length:a8];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  traceEncoder = self->_traceEncoder;
  v17 = *&a6->var0.var2;
  v20 = *&a6->var0.var0;
  v21 = v17;
  v22 = *&a6->var1.var1;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder fillTexture:a3 level:a4 slice:a5 region:&v20 color:a7.var0, var1];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = *&a6->var0.var2;
  v20 = *&a6->var0.var0;
  v21 = v19;
  v22 = *&a6->var1.var1;
  [v18 fillTexture:a3 level:a4 slice:a5 region:&v20 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  traceEncoder = self->_traceEncoder;
  v19 = *&a6->var0.var2;
  v22 = *&a6->var0.var0;
  v23 = v19;
  v24 = *&a6->var1.var1;
  [(MTLCountersTraceBlitCommandEncoder *)traceEncoder fillTexture:a3 level:a4 slice:a5 region:&v22 color:a7.var0 pixelFormat:var1];
  v20 = [(MTLToolsObject *)self baseObject];
  v21 = *&a6->var0.var2;
  v22 = *&a6->var0.var0;
  v23 = v21;
  v24 = *&a6->var1.var1;
  [v20 fillTexture:a3 level:a4 slice:a5 region:&v22 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  [MTLCountersTraceBlitCommandEncoder copyFromTexture:"copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:" sourceSlice:a9 sourceLevel:a10 toTexture:? destinationSlice:? destinationLevel:? sliceCount:? levelCount:?];
  v17 = [(MTLToolsObject *)self baseObject];

  [v17 copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 toTexture:a6 destinationSlice:a7 destinationLevel:a8 sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  [MTLCountersTraceBlitCommandEncoder copyFromTexture:"copyFromTexture:toTexture:" toTexture:?];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 copyFromTexture:a3 toTexture:a4];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  [MTLCountersTraceBlitCommandEncoder copyFromBuffer:"copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:" sourceOffset:? toBuffer:? destinationOffset:? size:?];
  v13 = [(MTLToolsObject *)self baseObject];

  [v13 copyFromBuffer:a3 sourceOffset:a4 toBuffer:a5 destinationOffset:a6 size:a7];
}

- (void)updateFence:(id)a3
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder updateFence:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 updateFence:a3];
}

- (void)waitForFence:(id)a3
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder waitForFence:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 waitForFence:a3];
}

- (void)endEncoding
{
  [(MTLCountersTraceCommandEncoder *)self->_traceEncoder endEncoding];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endEncoding];
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder optimizeContentsForGPUAccess:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 optimizeContentsForGPUAccess:a3];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [MTLCountersTraceBlitCommandEncoder optimizeContentsForGPUAccess:"optimizeContentsForGPUAccess:slice:level:" slice:? level:?];
  v9 = [(MTLToolsObject *)self baseObject];

  [v9 optimizeContentsForGPUAccess:a3 slice:a4 level:a5];
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  [(MTLCountersTraceBlitCommandEncoder *)self->_traceEncoder optimizeContentsForCPUAccess:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 optimizeContentsForCPUAccess:a3];
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [MTLCountersTraceBlitCommandEncoder optimizeContentsForCPUAccess:"optimizeContentsForCPUAccess:slice:level:" slice:? level:?];
  v9 = [(MTLToolsObject *)self baseObject];

  [v9 optimizeContentsForCPUAccess:a3 slice:a4 level:a5];
}

@end
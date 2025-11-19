@interface MTLToolsBlitCommandEncoder
- (MTLToolsBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTensor:(id)a3 sourceOrigin:(id)a4 sourceDimensions:(id)a5 toTensor:(id)a6 destinationOrigin:(id)a7 destinationDimensions:(id)a8;
- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)endEncoding;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
- (void)generateMipmapsForTexture:(id)a3;
- (void)insertDebugSignpost:(id)a3;
- (void)invalidateCompressedTexture:(id)a3;
- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5;
- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5 slice:(unint64_t)a6 level:(unint64_t)a7;
- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6;
- (void)resolveCounters:(id)a3 inRange:(_NSRange)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6;
- (void)updateFence:(id)a3;
- (void)waitForFence:(id)a3;
@end

@implementation MTLToolsBlitCommandEncoder

- (MTLToolsBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLToolsBlitCommandEncoder;
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

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v23 = *a6;
  v22 = *a7;
  v20 = [a8 baseObject];
  v21 = *a11;
  [v18 copyFromTexture:v19 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v22 toTexture:v20 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v21];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v24 = *a6;
  v23 = *a7;
  v20 = [a8 baseObject];
  v22 = *a11;
  [v18 copyFromTexture:v19 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v24 sourceSize:&v23 toTexture:v20 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v22 options:a12];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v22 = *a7;
  v20 = [a8 baseObject];
  v21 = *a11;
  [v18 copyFromBuffer:v19 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v22 toTexture:v20 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v21];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v23 = *a7;
  v20 = [a8 baseObject];
  v22 = *a11;
  [v18 copyFromBuffer:v19 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v23 toTexture:v20 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v22 options:a12];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v21 = *a6;
  v20 = *a7;
  [v18 copyFromTexture:v19 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v21 sourceSize:&v20 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:{a10, a11}];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a8];
  v19 = [(MTLToolsObject *)self baseObject];
  v20 = [a3 baseObject];
  v22 = *a6;
  v21 = *a7;
  [v19 copyFromTexture:v20 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:a10 options:{a11, a12}];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a5];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = [a5 baseObject];

  [v13 copyFromBuffer:v14 sourceOffset:a4 toBuffer:v15 destinationOffset:a6 size:a7];
}

- (void)generateMipmapsForTexture:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 generateMipmapsForTexture:v6];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = *&a6->var0.var2;
  v18[0] = *&a6->var0.var0;
  v18[1] = v17;
  v18[2] = *&a6->var1.var1;
  [v15 fillTexture:v16 level:a4 slice:a5 region:v18 bytes:a7 length:a8];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = [a3 baseObject];
  v18 = *&a6->var0.var2;
  v19[0] = *&a6->var0.var0;
  v19[1] = v18;
  v19[2] = *&a6->var1.var1;
  [v16 fillTexture:v17 level:a4 slice:a5 region:v19 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v20 = *&a6->var0.var2;
  v21[0] = *&a6->var0.var0;
  v21[1] = v20;
  v21[2] = *&a6->var1.var1;
  [v18 fillTexture:v19 level:a4 slice:a5 region:v21 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)invalidateCompressedTexture:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 invalidateCompressedTexture:v6];
}

- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 invalidateCompressedTexture:v10 slice:a4 level:a5];
}

- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 optimizeContentsForTexture:v10 readAccessPattern:a4 readAccessor:a5];
}

- (void)optimizeContentsForTexture:(id)a3 readAccessPattern:(int64_t)a4 readAccessor:(int64_t)a5 slice:(unint64_t)a6 level:(unint64_t)a7
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];

  [v13 optimizeContentsForTexture:v14 readAccessPattern:a4 readAccessor:a5 slice:a6 level:a7];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v19 = [a6 baseObject];

  [v17 copyFromTexture:v18 sourceSlice:a4 sourceLevel:a5 toTexture:v19 destinationSlice:a7 destinationLevel:a8 sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a4];
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];
  v9 = [a4 baseObject];

  [v7 copyFromTexture:v8 toTexture:v9];
}

- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6
{
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];
  v12 = *&a4->var0.var2;
  v13[0] = *&a4->var0.var0;
  v13[1] = v12;
  v13[2] = *&a4->var1.var1;
  [v10 resetTextureAccessCounters:v11 region:v13 mipLevel:a5 slice:a6];
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 optimizeContentsForGPUAccess:v6];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 optimizeContentsForGPUAccess:v10 slice:a4 level:a5];
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 optimizeContentsForCPUAccess:v6];
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 optimizeContentsForCPUAccess:v10 slice:a4 level:a5];
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 resetCommandsInBuffer:v9 withRange:{location, length}];
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a5];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a5 baseObject];

  [v12 copyIndirectCommandBuffer:v13 sourceRange:location destination:length destinationIndex:{v14, a6}];
}

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 optimizeIndirectCommandBuffer:v9 withRange:{location, length}];
}

- (void)resolveCounters:(id)a3 inRange:(_NSRange)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a5];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = [a5 baseObject];

  [v12 resolveCounters:v13 inRange:location destinationBuffer:length destinationOffset:{v14, a6}];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEncodingAndRetrieveProgramAddressTable];
}

- (void)endEncoding
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 endEncoding];
}

- (void)insertDebugSignpost:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 insertDebugSignpost:a3];
}

- (void)popDebugGroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 popDebugGroup];
}

- (void)pushDebugGroup:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 pushDebugGroup:a3];
}

- (void)copyFromTensor:(id)a3 sourceOrigin:(id)a4 sourceDimensions:(id)a5 toTensor:(id)a6 destinationOrigin:(id)a7 destinationDimensions:(id)a8
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a6];
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = [a6 baseObject];

  [v15 copyFromTensor:v16 sourceOrigin:a4 sourceDimensions:a5 toTensor:v17 destinationOrigin:a7 destinationDimensions:a8];
}

- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v9 = a4.var1;
  v10 = a4.var0;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:a5];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = [a5 baseObject];

  [v13 copyFromTensor:v14 sourceSlice:v10 toTensor:v9 destinationSlice:{v15, var0, var1}];
}

@end
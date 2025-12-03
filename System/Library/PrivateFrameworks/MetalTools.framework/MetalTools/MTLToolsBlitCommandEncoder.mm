@interface MTLToolsBlitCommandEncoder
- (MTLToolsBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions;
- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)endEncoding;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)insertDebugSignpost:(id)signpost;
- (void)invalidateCompressedTexture:(id)texture;
- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForTexture:(id)texture readAccessPattern:(int64_t)pattern readAccessor:(int64_t)accessor;
- (void)optimizeContentsForTexture:(id)texture readAccessPattern:(int64_t)pattern readAccessor:(int64_t)accessor slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)resolveCounters:(id)counters inRange:(_NSRange)range destinationBuffer:(id)buffer destinationOffset:(unint64_t)offset;
- (void)updateFence:(id)fence;
- (void)waitForFence:(id)fence;
@end

@implementation MTLToolsBlitCommandEncoder

- (MTLToolsBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLToolsBlitCommandEncoder;
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

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTexture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v23 = *origin;
  v22 = *size;
  baseObject3 = [toTexture baseObject];
  v21 = *destinationOrigin;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v22 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v21];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTexture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v24 = *origin;
  v23 = *size;
  baseObject3 = [toTexture baseObject];
  v22 = *destinationOrigin;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v24 sourceSize:&v23 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v22 options:options];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v22 = *size;
  baseObject3 = [texture baseObject];
  v21 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v21];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:texture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v23 = *size;
  baseObject3 = [texture baseObject];
  v22 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v23 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v22 options:options];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v21 = *origin;
  v20 = *size;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v21 sourceSize:&v20 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:{row, image}];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v22 = *origin;
  v21 = *size;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:row options:{image, options}];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toBuffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [toBuffer baseObject];

  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset toBuffer:baseObject3 destinationOffset:destinationOffset size:size];
}

- (void)generateMipmapsForTexture:(id)texture
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject generateMipmapsForTexture:baseObject2];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v18 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v18 = *&region->var0.var2;
  v19[0] = *&region->var0.var0;
  v19[1] = v18;
  v19[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v19 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v20 = *&region->var0.var2;
  v21[0] = *&region->var0.var0;
  v21[1] = v20;
  v21[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v21 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)invalidateCompressedTexture:(id)texture
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject invalidateCompressedTexture:baseObject2];
}

- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject invalidateCompressedTexture:baseObject2 slice:slice level:level];
}

- (void)optimizeContentsForTexture:(id)texture readAccessPattern:(int64_t)pattern readAccessor:(int64_t)accessor
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject optimizeContentsForTexture:baseObject2 readAccessPattern:pattern readAccessor:accessor];
}

- (void)optimizeContentsForTexture:(id)texture readAccessPattern:(int64_t)pattern readAccessor:(int64_t)accessor slice:(unint64_t)slice level:(unint64_t)level
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject optimizeContentsForTexture:baseObject2 readAccessPattern:pattern readAccessor:accessor slice:slice level:level];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTexture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTexture];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyFromTexture:baseObject2 toTexture:baseObject3];
}

- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [counters baseObject];
  v12 = *&region->var0.var2;
  v13[0] = *&region->var0.var0;
  v13[1] = v12;
  v13[2] = *&region->var1.var1;
  [baseObject resetTextureAccessCounters:baseObject2 region:v13 mipLevel:level slice:slice];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForGPUAccess:baseObject2];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForGPUAccess:baseObject2 slice:slice level:level];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForCPUAccess:baseObject2];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [access baseObject];

  [baseObject optimizeContentsForCPUAccess:baseObject2 slice:slice level:level];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject resetCommandsInBuffer:baseObject2 withRange:{location, length}];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:destination];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [destination baseObject];

  [baseObject copyIndirectCommandBuffer:baseObject2 sourceRange:location destination:length destinationIndex:{baseObject3, index}];
}

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject optimizeIndirectCommandBuffer:baseObject2 withRange:{location, length}];
}

- (void)resolveCounters:(id)counters inRange:(_NSRange)range destinationBuffer:(id)buffer destinationOffset:(unint64_t)offset
{
  length = range.length;
  location = range.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:buffer];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [counters baseObject];
  baseObject3 = [buffer baseObject];

  [baseObject resolveCounters:baseObject2 inRange:location destinationBuffer:length destinationOffset:{baseObject3, offset}];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)endEncoding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (void)insertDebugSignpost:(id)signpost
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertDebugSignpost:signpost];
}

- (void)popDebugGroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject popDebugGroup];
}

- (void)pushDebugGroup:(id)group
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject pushDebugGroup:group];
}

- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTensor];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [tensor baseObject];
  baseObject3 = [toTensor baseObject];

  [baseObject copyFromTensor:baseObject2 sourceOrigin:origin sourceDimensions:dimensions toTensor:baseObject3 destinationOrigin:destinationOrigin destinationDimensions:destinationDimensions];
}

- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice
{
  var1 = destinationSlice.var1;
  var0 = destinationSlice.var0;
  v9 = slice.var1;
  v10 = slice.var0;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  [(MTLToolsCommandEncoder *)self addRetainedObject:toTensor];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [tensor baseObject];
  baseObject3 = [toTensor baseObject];

  [baseObject copyFromTensor:baseObject2 sourceSlice:v10 toTensor:v9 destinationSlice:{baseObject3, var0, var1}];
}

@end
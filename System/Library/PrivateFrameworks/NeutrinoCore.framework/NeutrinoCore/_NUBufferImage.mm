@interface _NUBufferImage
- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point;
- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device;
- (id)debugQuickLookObject;
- (void)readBufferRegion:(id)region withBlock:(id)block;
- (void)writeBufferRegion:(id)region withBlock:(id)block;
@end

@implementation _NUBufferImage

- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  storageCopy = storage;
  v10 = rect->var1;
  v18[0] = rect->var0;
  v18[1] = v10;
  v11 = [NURegion regionWithRect:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v12 = rect->var1;
  v16 = rect->var0;
  v17 = v12;
  v15[2] = __53___NUBufferImage_copyBufferStorage_fromRect_toPoint___block_invoke;
  v15[3] = &unk_1E810B5C8;
  v15[4] = self;
  v15[5] = var0;
  v15[6] = var1;
  v13 = [storageCopy readBufferInRegion:v11 block:v15];

  return v13 == 1;
}

- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device
{
  var1 = rect->var1;
  v8[0] = rect->var0;
  v8[1] = var1;
  return [(_NUBufferImage *)self copyBufferStorage:storage fromRect:v8 toPoint:point.var0, point.var1, device];
}

- (void)writeBufferRegion:(id)region withBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46___NUBufferImage_writeBufferRegion_withBlock___block_invoke;
  v8[3] = &unk_1E810B578;
  v9 = blockCopy;
  v7 = blockCopy;
  [(_NUImage *)self writeRegion:region withBlock:v8];
}

- (void)readBufferRegion:(id)region withBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45___NUBufferImage_readBufferRegion_withBlock___block_invoke;
  v8[3] = &unk_1E810B578;
  v9 = blockCopy;
  v7 = blockCopy;
  [(_NUImage *)self readRegion:region withBlock:v8];
}

- (id)debugQuickLookObject
{
  v2 = [NUImageFactory newCIImageFromBufferImage:self];

  return v2;
}

@end
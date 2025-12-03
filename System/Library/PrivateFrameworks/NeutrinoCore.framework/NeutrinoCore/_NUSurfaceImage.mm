@interface _NUSurfaceImage
- (BOOL)copyBufferStorage:(id)storage fromRect:(id *)rect toPoint:(id)point;
- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device;
- (void)readSurfaceRegion:(id)region withBlock:(id)block;
- (void)readTextureRegion:(id)region device:(id)device withBlock:(id)block;
- (void)writeSurfaceRegion:(id)region withBlock:(id)block;
- (void)writeTextureRegion:(id)region device:(id)device withBlock:(id)block;
@end

@implementation _NUSurfaceImage

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
  v15[2] = __54___NUSurfaceImage_copyBufferStorage_fromRect_toPoint___block_invoke;
  v15[3] = &unk_1E810B5C8;
  v15[4] = self;
  v15[5] = var0;
  v15[6] = var1;
  v13 = [storageCopy readBufferInRegion:v11 block:v15];

  return v13 == 1;
}

- (BOOL)copySurfaceStorage:(id)storage fromRect:(id *)rect toPoint:(id)point device:(id)device
{
  var1 = point.var1;
  var0 = point.var0;
  storageCopy = storage;
  deviceCopy = device;
  if ([deviceCopy hasMetalSupport])
  {
    v13 = rect->var1;
    v26 = rect->var0;
    v27 = v13;
    v14 = [NURegion regionWithRect:&v26];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62___NUSurfaceImage_copySurfaceStorage_fromRect_toPoint_device___block_invoke;
    v20[3] = &unk_1E810B668;
    v15 = rect->var1;
    v22 = rect->var0;
    v23 = v15;
    v20[4] = self;
    v24 = var0;
    v25 = var1;
    v21 = deviceCopy;
    v16 = [storageCopy readTextureInRegion:v14 device:v21 block:v20];

    var1 = v16 == 1;
  }

  else
  {
    v18 = rect->var1;
    v26 = rect->var0;
    v27 = v18;
    var1 = [(_NUSurfaceImage *)self copyBufferStorage:storageCopy fromRect:&v26 toPoint:var0, var1];
  }

  return var1;
}

- (void)writeTextureRegion:(id)region device:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___NUSurfaceImage_writeTextureRegion_device_withBlock___block_invoke;
  v13[3] = &unk_1E810B640;
  v14 = deviceCopy;
  v15 = blockCopy;
  v12.receiver = self;
  v12.super_class = _NUSurfaceImage;
  v10 = blockCopy;
  v11 = deviceCopy;
  [(_NUImage *)&v12 writeRegion:region withBlock:v13];
}

- (void)readTextureRegion:(id)region device:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___NUSurfaceImage_readTextureRegion_device_withBlock___block_invoke;
  v13[3] = &unk_1E810B640;
  v14 = deviceCopy;
  v15 = blockCopy;
  v12.receiver = self;
  v12.super_class = _NUSurfaceImage;
  v10 = blockCopy;
  v11 = deviceCopy;
  [(_NUImage *)&v12 readRegion:region withBlock:v13];
}

- (void)writeSurfaceRegion:(id)region withBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___NUSurfaceImage_writeSurfaceRegion_withBlock___block_invoke;
  v8[3] = &unk_1E810B578;
  v9 = blockCopy;
  v7 = blockCopy;
  [(_NUImage *)self writeRegion:region withBlock:v8];
}

- (void)readSurfaceRegion:(id)region withBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___NUSurfaceImage_readSurfaceRegion_withBlock___block_invoke;
  v8[3] = &unk_1E810B578;
  v9 = blockCopy;
  v7 = blockCopy;
  [(_NUImage *)self readRegion:region withBlock:v8];
}

@end
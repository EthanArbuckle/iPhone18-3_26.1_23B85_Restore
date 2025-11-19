@interface _NUSurfaceImage
- (BOOL)copyBufferStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5;
- (BOOL)copySurfaceStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5 device:(id)a6;
- (void)readSurfaceRegion:(id)a3 withBlock:(id)a4;
- (void)readTextureRegion:(id)a3 device:(id)a4 withBlock:(id)a5;
- (void)writeSurfaceRegion:(id)a3 withBlock:(id)a4;
- (void)writeTextureRegion:(id)a3 device:(id)a4 withBlock:(id)a5;
@end

@implementation _NUSurfaceImage

- (BOOL)copyBufferStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = a3;
  v10 = a4->var1;
  v18[0] = a4->var0;
  v18[1] = v10;
  v11 = [NURegion regionWithRect:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v12 = a4->var1;
  v16 = a4->var0;
  v17 = v12;
  v15[2] = __54___NUSurfaceImage_copyBufferStorage_fromRect_toPoint___block_invoke;
  v15[3] = &unk_1E810B5C8;
  v15[4] = self;
  v15[5] = var0;
  v15[6] = var1;
  v13 = [v9 readBufferInRegion:v11 block:v15];

  return v13 == 1;
}

- (BOOL)copySurfaceStorage:(id)a3 fromRect:(id *)a4 toPoint:(id)a5 device:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v11 = a3;
  v12 = a6;
  if ([v12 hasMetalSupport])
  {
    v13 = a4->var1;
    v26 = a4->var0;
    v27 = v13;
    v14 = [NURegion regionWithRect:&v26];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62___NUSurfaceImage_copySurfaceStorage_fromRect_toPoint_device___block_invoke;
    v20[3] = &unk_1E810B668;
    v15 = a4->var1;
    v22 = a4->var0;
    v23 = v15;
    v20[4] = self;
    v24 = var0;
    v25 = var1;
    v21 = v12;
    v16 = [v11 readTextureInRegion:v14 device:v21 block:v20];

    v17 = v16 == 1;
  }

  else
  {
    v18 = a4->var1;
    v26 = a4->var0;
    v27 = v18;
    v17 = [(_NUSurfaceImage *)self copyBufferStorage:v11 fromRect:&v26 toPoint:var0, var1];
  }

  return v17;
}

- (void)writeTextureRegion:(id)a3 device:(id)a4 withBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___NUSurfaceImage_writeTextureRegion_device_withBlock___block_invoke;
  v13[3] = &unk_1E810B640;
  v14 = v8;
  v15 = v9;
  v12.receiver = self;
  v12.super_class = _NUSurfaceImage;
  v10 = v9;
  v11 = v8;
  [(_NUImage *)&v12 writeRegion:a3 withBlock:v13];
}

- (void)readTextureRegion:(id)a3 device:(id)a4 withBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___NUSurfaceImage_readTextureRegion_device_withBlock___block_invoke;
  v13[3] = &unk_1E810B640;
  v14 = v8;
  v15 = v9;
  v12.receiver = self;
  v12.super_class = _NUSurfaceImage;
  v10 = v9;
  v11 = v8;
  [(_NUImage *)&v12 readRegion:a3 withBlock:v13];
}

- (void)writeSurfaceRegion:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___NUSurfaceImage_writeSurfaceRegion_withBlock___block_invoke;
  v8[3] = &unk_1E810B578;
  v9 = v6;
  v7 = v6;
  [(_NUImage *)self writeRegion:a3 withBlock:v8];
}

- (void)readSurfaceRegion:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___NUSurfaceImage_readSurfaceRegion_withBlock___block_invoke;
  v8[3] = &unk_1E810B578;
  v9 = v6;
  v7 = v6;
  [(_NUImage *)self readRegion:a3 withBlock:v8];
}

@end
@interface NUSurfaceImage
@end

@implementation NUSurfaceImage

uint64_t __54___NUSurfaceImage_copyBufferStorage_fromRect_toPoint___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  return [NUImageUtilities copyPixelsToImage:v2 atPoint:v3 fromBuffer:v4 inRect:a2, v7];
}

uint64_t __62___NUSurfaceImage_copySurfaceStorage_fromRect_toPoint_device___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  [NUImageUtilities copyTexture:a2 fromRect:v4 toSurfaceImage:*(a1 + 32) atPoint:*(a1 + 80) withDevice:*(a1 + 88), *(a1 + 40)];
  return 1;
}

uint64_t __55___NUSurfaceImage_writeTextureRegion_device_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55___NUSurfaceImage_writeTextureRegion_device_withBlock___block_invoke_2;
  v15[3] = &unk_1E810B618;
  v16 = v10;
  v11 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = a6;
  v12 = v10;
  v13 = [a5 writeTextureInRegion:a3 device:v11 block:v15];

  return v13;
}

uint64_t __55___NUSurfaceImage_writeTextureRegion_device_withBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NUTextureTileAdapter alloc];
  v5 = a1[4];
  if (!v5)
  {
    memset(v15, 0, sizeof(v15));
    goto LABEL_5;
  }

  [v5 frameRect];
  v6 = a1[4];
  if (!v6)
  {
LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  [v6 contentRect];
LABEL_6:
  v7 = [(NUTextureTileAdapter *)v4 initWithFrameRect:v15 contentRect:v14 texture:v3];
  (*(a1[5] + 16))(a1[5], v7, a1[6], v8, v9, v10, v11, v12);

  return 1;
}

uint64_t __54___NUSurfaceImage_readTextureRegion_device_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54___NUSurfaceImage_readTextureRegion_device_withBlock___block_invoke_2;
  v15[3] = &unk_1E810B618;
  v16 = v10;
  v11 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = a6;
  v12 = v10;
  v13 = [a5 readTextureInRegion:a3 device:v11 block:v15];

  return v13;
}

uint64_t __54___NUSurfaceImage_readTextureRegion_device_withBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NUTextureTileAdapter alloc];
  v5 = a1[4];
  if (!v5)
  {
    memset(v15, 0, sizeof(v15));
    goto LABEL_5;
  }

  [v5 frameRect];
  v6 = a1[4];
  if (!v6)
  {
LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  [v6 contentRect];
LABEL_6:
  v7 = [(NUTextureTileAdapter *)v4 initWithFrameRect:v15 contentRect:v14 texture:v3];
  (*(a1[5] + 16))(a1[5], v7, a1[6], v8, v9, v10, v11, v12);

  return 1;
}

uint64_t __48___NUSurfaceImage_writeSurfaceRegion_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48___NUSurfaceImage_writeSurfaceRegion_withBlock___block_invoke_2;
  v14[3] = &unk_1E810B5F0;
  v15 = v10;
  v16 = *(a1 + 32);
  v17 = a6;
  v11 = v10;
  v12 = [a5 writeSurfaceInRegion:a3 block:v14];

  return v12;
}

uint64_t __48___NUSurfaceImage_writeSurfaceRegion_withBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NUSurfaceTileAdapter alloc];
  v5 = a1[4];
  if (!v5)
  {
    memset(v15, 0, sizeof(v15));
    goto LABEL_5;
  }

  [v5 frameRect];
  v6 = a1[4];
  if (!v6)
  {
LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  [v6 contentRect];
LABEL_6:
  v7 = [(NUSurfaceTileAdapter *)v4 initWithFrameRect:v15 contentRect:v14 surface:v3];
  (*(a1[5] + 16))(a1[5], v7, a1[6], v8, v9, v10, v11, v12);

  return 1;
}

uint64_t __47___NUSurfaceImage_readSurfaceRegion_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47___NUSurfaceImage_readSurfaceRegion_withBlock___block_invoke_2;
  v14[3] = &unk_1E810B5F0;
  v15 = v10;
  v16 = *(a1 + 32);
  v17 = a6;
  v11 = v10;
  v12 = [a5 readSurfaceInRegion:a3 block:v14];

  return v12;
}

uint64_t __47___NUSurfaceImage_readSurfaceRegion_withBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NUSurfaceTileAdapter alloc];
  v5 = a1[4];
  if (!v5)
  {
    memset(v15, 0, sizeof(v15));
    goto LABEL_5;
  }

  [v5 frameRect];
  v6 = a1[4];
  if (!v6)
  {
LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  [v6 contentRect];
LABEL_6:
  v7 = [(NUSurfaceTileAdapter *)v4 initWithFrameRect:v15 contentRect:v14 surface:v3];
  (*(a1[5] + 16))(a1[5], v7, a1[6], v8, v9, v10, v11, v12);

  return 1;
}

@end
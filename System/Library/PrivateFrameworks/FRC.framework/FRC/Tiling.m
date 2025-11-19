@interface Tiling
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)createTileInfoArrayForFrameWithWidth:(unint64_t)a3 height:(unint64_t)a4 numTiles:(unint64_t)a5;
- (Tiling)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (void)assemble2TilesToCommandBuffer:(id)a3 from:(id *)a4 to:(id)a5 tileInfo:(id *)a6;
- (void)assemble3TilesToCommandBuffer:(id)a3 from:(id *)a4 to:(id)a5 tileInfo:(id *)a6;
- (void)assembleTiles:(__CVBuffer *)a3 to:(__CVBuffer *)a4 tileInfo:(id *)a5 numTiles:(int64_t)a6;
- (void)dealloc;
- (void)encodeTileBufferToCommandBuffer:(id)a3 from:(__CVBuffer *)a4 to:(__CVBuffer *)a5 channels:(int64_t)a6 tileInfo:(id *)a7 numTiles:(int64_t)a8;
- (void)encodeTilingToCommandBuffer:(id)a3 from:(id)a4 to:(id)a5 verticalOffset:(unint64_t)a6 sourceHeight:(unint64_t)a7;
@end

@implementation Tiling

- (Tiling)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v18.receiver = self;
  v18.super_class = Tiling;
  v4 = [(FRCMetalBase *)&v18 initWithDevice:a3 commmandQueue:a4];
  if (v4)
  {
    v5 = MTLCreateSystemDefaultDevice();
    device = v4->_device;
    v4->_device = v5;

    v7 = [(MTLDeviceSPI *)v4->_device newCommandQueue];
    commandQueue = v4->_commandQueue;
    v4->_commandQueue = v7;

    v9 = [(MTLDeviceSPI *)v4->_device newDefaultLibrary];
    mtlLibrary = v4->_mtlLibrary;
    v4->_mtlLibrary = v9;

    v11 = [(FRCMetalBase *)v4 createKernel:@"assembleHorizontalThreeTiles"];
    assembleKernel = v4->_assembleKernel;
    v4->_assembleKernel = v11;

    v13 = [(FRCMetalBase *)v4 createKernel:@"assembleHorizontalTwoTiles"];
    assembleTwoTileKernel = v4->_assembleTwoTileKernel;
    v4->_assembleTwoTileKernel = v13;

    v4->_tileOverlap = 104;
    v15 = [(MTLDeviceSPI *)v4->_device newBufferWithLength:12 options:0];
    tileParameters = v4->_tileParameters;
    v4->_tileParameters = v15;
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Tiling;
  [(Tiling *)&v2 dealloc];
}

- (void)encodeTilingToCommandBuffer:(id)a3 from:(id)a4 to:(id)a5 verticalOffset:(unint64_t)a6 sourceHeight:(unint64_t)a7
{
  v11 = a4;
  v12 = a5;
  v13 = [a3 blitCommandEncoder];
  v14 = [v12 width];
  if ([v11 arrayLength])
  {
    v15 = 0;
    do
    {
      v18[0] = 0;
      v18[1] = a6;
      v18[2] = 0;
      v17[0] = v14;
      v17[1] = a7;
      v17[2] = 1;
      memset(v16, 0, sizeof(v16));
      [v13 copyFromTexture:v11 sourceSlice:v15 sourceLevel:0 sourceOrigin:v18 sourceSize:v17 toTexture:v12 destinationSlice:v15 destinationLevel:0 destinationOrigin:v16];
      ++v15;
    }

    while ([v11 arrayLength] > v15);
  }

  [v13 endEncoding];
}

- (void)encodeTileBufferToCommandBuffer:(id)a3 from:(__CVBuffer *)a4 to:(__CVBuffer *)a5 channels:(int64_t)a6 tileInfo:(id *)a7 numTiles:(int64_t)a8
{
  v24 = a3;
  if ((a8 - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = isPackedRGBA(a4);
    device = self->_device;
    if (v14)
    {
      createRGBATextureFromCVPixelBuffer(a4, device);
    }

    else
    {
      createTexturesFromCVPixelBuffer(a4, device, 1, a6);
    }
    v16 = ;
    p_var2 = &a7->var2;
    do
    {
      v18 = isPackedRGBA(*a5);
      v19 = *a5;
      v20 = self->_device;
      if (v18)
      {
        createRGBATextureFromCVPixelBuffer(v19, v20);
      }

      else
      {
        createTexturesFromCVPixelBuffer(v19, v20, 1, a6);
      }
      v21 = ;
      v22 = *p_var2 + *(p_var2 - 1);
      if (v22 > [v16 height])
      {
        [v16 height];
      }

      v23 = *p_var2;
      [Tiling encodeTilingToCommandBuffer:"encodeTilingToCommandBuffer:from:to:verticalOffset:sourceHeight:" from:v24 to:v16 verticalOffset:v21 sourceHeight:?];

      p_var2 += 3;
      ++a5;
      --a8;
    }

    while (a8);
  }

  else
  {
    NSLog(&cfstr_UnsupportedNum.isa);
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)createTileInfoArrayForFrameWithWidth:(unint64_t)a3 height:(unint64_t)a4 numTiles:(unint64_t)a5
{
  result = malloc_type_malloc(24 * a5, 0x1000040504FFAC1uLL);
  v10 = 0;
  v11 = 64;
  if (a5 == 3)
  {
    v12 = 104;
  }

  else
  {
    v12 = 64;
  }

  if (a5 == 3)
  {
    v11 = 104;
  }

  v13 = -64;
  if (a5 == 3)
  {
    v13 = 0;
  }

  self->_tileOverlap = v12;
  v14 = (a4 / a5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 + a4 / a5;
  if (a5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a5;
  }

  p_var2 = &result->var2;
  do
  {
    *(p_var2 - 1) = v14;
    *p_var2 = v10;
    v10 += v15;
    *(p_var2 - 2) = a3;
    p_var2 += 3;
    --v16;
  }

  while (v16);
  return result;
}

- (void)assembleTiles:(__CVBuffer *)a3 to:(__CVBuffer *)a4 tileInfo:(id *)a5 numTiles:(int64_t)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = isPackedRGBA(a4);
  device = self->_device;
  if (v10)
  {
    createRGBATextureFromCVPixelBuffer(a4, device);
  }

  else
  {
    createTexturesFromCVPixelBuffer(a4, device, 1, 3uLL);
  }
  v12 = ;
  v13 = [(MTLBuffer *)self->_tileParameters contents];
  *v13 = self->_tileOverlap;
  v13[2] = a6;
  v25[0] = v25;
  v13[1] = [v12 height] / a6;
  v14 = a6;
  bzero(v25 - ((8 * a6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * a6);
  if (a6 >= 1)
  {
    v15 = a6;
    v16 = (v25 - ((8 * a6 + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v17 = isPackedRGBA(*a3);
      v18 = *a3;
      v19 = self->_device;
      if (v17)
      {
        createRGBATextureFromCVPixelBuffer(v18, v19);
      }

      else
      {
        createTexturesFromCVPixelBuffer(v18, v19, 1, 3uLL);
      }
      v20 = ;
      v21 = *v16;
      *v16++ = v20;

      ++a3;
      --v15;
    }

    while (v15);
  }

  v22 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v23 = v25 - ((8 * a6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6 == 3)
  {
    [(Tiling *)self assemble3TilesToCommandBuffer:v22 from:v23 to:v12 tileInfo:v13];
  }

  else
  {
    [(Tiling *)self assemble2TilesToCommandBuffer:v22 from:v23 to:v12 tileInfo:v13];
  }

  kdebug_trace();
  [v22 commit];
  kdebug_trace();

  do
  {
  }

  while (v14 * 8);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)assemble3TilesToCommandBuffer:(id)a3 from:(id *)a4 to:(id)a5 tileInfo:(id *)a6
{
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_assembleKernel];
  [v10 setTexture:*a4 atIndex:0];
  [v10 setTexture:a4[1] atIndex:1];
  [v10 setTexture:a4[2] atIndex:2];
  [v10 setTexture:v9 atIndex:3];
  [v10 setBuffer:self->_tileParameters offset:0 atIndex:0];
  v11 = ([v9 width] + 15) >> 4;
  v12 = [v9 height];

  v15[0] = v11;
  v15[1] = (v12 + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

- (void)assemble2TilesToCommandBuffer:(id)a3 from:(id *)a4 to:(id)a5 tileInfo:(id *)a6
{
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_assembleTwoTileKernel];
  [v10 setTexture:*a4 atIndex:0];
  [v10 setTexture:a4[1] atIndex:1];
  [v10 setTexture:v9 atIndex:2];
  [v10 setBuffer:self->_tileParameters offset:0 atIndex:0];
  v11 = ([v9 width] + 15) >> 4;
  v12 = [v9 height];

  v15[0] = v11;
  v15[1] = (v12 + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

@end
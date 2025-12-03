@interface Tiling
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)createTileInfoArrayForFrameWithWidth:(unint64_t)width height:(unint64_t)height numTiles:(unint64_t)tiles;
- (Tiling)initWithDevice:(id)device commmandQueue:(id)queue;
- (void)assemble2TilesToCommandBuffer:(id)buffer from:(id *)from to:(id)to tileInfo:(id *)info;
- (void)assemble3TilesToCommandBuffer:(id)buffer from:(id *)from to:(id)to tileInfo:(id *)info;
- (void)assembleTiles:(__CVBuffer *)tiles to:(__CVBuffer *)to tileInfo:(id *)info numTiles:(int64_t)numTiles;
- (void)dealloc;
- (void)encodeTileBufferToCommandBuffer:(id)buffer from:(__CVBuffer *)from to:(__CVBuffer *)to channels:(int64_t)channels tileInfo:(id *)info numTiles:(int64_t)tiles;
- (void)encodeTilingToCommandBuffer:(id)buffer from:(id)from to:(id)to verticalOffset:(unint64_t)offset sourceHeight:(unint64_t)height;
@end

@implementation Tiling

- (Tiling)initWithDevice:(id)device commmandQueue:(id)queue
{
  v18.receiver = self;
  v18.super_class = Tiling;
  v4 = [(FRCMetalBase *)&v18 initWithDevice:device commmandQueue:queue];
  if (v4)
  {
    v5 = MTLCreateSystemDefaultDevice();
    device = v4->_device;
    v4->_device = v5;

    newCommandQueue = [(MTLDeviceSPI *)v4->_device newCommandQueue];
    commandQueue = v4->_commandQueue;
    v4->_commandQueue = newCommandQueue;

    newDefaultLibrary = [(MTLDeviceSPI *)v4->_device newDefaultLibrary];
    mtlLibrary = v4->_mtlLibrary;
    v4->_mtlLibrary = newDefaultLibrary;

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

- (void)encodeTilingToCommandBuffer:(id)buffer from:(id)from to:(id)to verticalOffset:(unint64_t)offset sourceHeight:(unint64_t)height
{
  fromCopy = from;
  toCopy = to;
  blitCommandEncoder = [buffer blitCommandEncoder];
  width = [toCopy width];
  if ([fromCopy arrayLength])
  {
    v15 = 0;
    do
    {
      v18[0] = 0;
      v18[1] = offset;
      v18[2] = 0;
      v17[0] = width;
      v17[1] = height;
      v17[2] = 1;
      memset(v16, 0, sizeof(v16));
      [blitCommandEncoder copyFromTexture:fromCopy sourceSlice:v15 sourceLevel:0 sourceOrigin:v18 sourceSize:v17 toTexture:toCopy destinationSlice:v15 destinationLevel:0 destinationOrigin:v16];
      ++v15;
    }

    while ([fromCopy arrayLength] > v15);
  }

  [blitCommandEncoder endEncoding];
}

- (void)encodeTileBufferToCommandBuffer:(id)buffer from:(__CVBuffer *)from to:(__CVBuffer *)to channels:(int64_t)channels tileInfo:(id *)info numTiles:(int64_t)tiles
{
  bufferCopy = buffer;
  if ((tiles - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = isPackedRGBA(from);
    device = self->_device;
    if (v14)
    {
      createRGBATextureFromCVPixelBuffer(from, device);
    }

    else
    {
      createTexturesFromCVPixelBuffer(from, device, 1, channels);
    }
    v16 = ;
    p_var2 = &info->var2;
    do
    {
      v18 = isPackedRGBA(*to);
      v19 = *to;
      v20 = self->_device;
      if (v18)
      {
        createRGBATextureFromCVPixelBuffer(v19, v20);
      }

      else
      {
        createTexturesFromCVPixelBuffer(v19, v20, 1, channels);
      }
      v21 = ;
      v22 = *p_var2 + *(p_var2 - 1);
      if (v22 > [v16 height])
      {
        [v16 height];
      }

      v23 = *p_var2;
      [Tiling encodeTilingToCommandBuffer:"encodeTilingToCommandBuffer:from:to:verticalOffset:sourceHeight:" from:bufferCopy to:v16 verticalOffset:v21 sourceHeight:?];

      p_var2 += 3;
      ++to;
      --tiles;
    }

    while (tiles);
  }

  else
  {
    NSLog(&cfstr_UnsupportedNum.isa);
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)createTileInfoArrayForFrameWithWidth:(unint64_t)width height:(unint64_t)height numTiles:(unint64_t)tiles
{
  result = malloc_type_malloc(24 * tiles, 0x1000040504FFAC1uLL);
  v10 = 0;
  v11 = 64;
  if (tiles == 3)
  {
    v12 = 104;
  }

  else
  {
    v12 = 64;
  }

  if (tiles == 3)
  {
    v11 = 104;
  }

  v13 = -64;
  if (tiles == 3)
  {
    v13 = 0;
  }

  self->_tileOverlap = v12;
  v14 = (height / tiles + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 + height / tiles;
  if (tiles <= 1)
  {
    tilesCopy = 1;
  }

  else
  {
    tilesCopy = tiles;
  }

  p_var2 = &result->var2;
  do
  {
    *(p_var2 - 1) = v14;
    *p_var2 = v10;
    v10 += v15;
    *(p_var2 - 2) = width;
    p_var2 += 3;
    --tilesCopy;
  }

  while (tilesCopy);
  return result;
}

- (void)assembleTiles:(__CVBuffer *)tiles to:(__CVBuffer *)to tileInfo:(id *)info numTiles:(int64_t)numTiles
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = isPackedRGBA(to);
  device = self->_device;
  if (v10)
  {
    createRGBATextureFromCVPixelBuffer(to, device);
  }

  else
  {
    createTexturesFromCVPixelBuffer(to, device, 1, 3uLL);
  }
  v12 = ;
  contents = [(MTLBuffer *)self->_tileParameters contents];
  *contents = self->_tileOverlap;
  contents[2] = numTiles;
  v25[0] = v25;
  contents[1] = [v12 height] / numTiles;
  numTilesCopy = numTiles;
  bzero(v25 - ((8 * numTiles + 15) & 0xFFFFFFFFFFFFFFF0), 8 * numTiles);
  if (numTiles >= 1)
  {
    numTilesCopy2 = numTiles;
    v16 = (v25 - ((8 * numTiles + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v17 = isPackedRGBA(*tiles);
      v18 = *tiles;
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

      ++tiles;
      --numTilesCopy2;
    }

    while (numTilesCopy2);
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v23 = v25 - ((8 * numTiles + 15) & 0xFFFFFFFFFFFFFFF0);
  if (numTiles == 3)
  {
    [(Tiling *)self assemble3TilesToCommandBuffer:commandBuffer from:v23 to:v12 tileInfo:contents];
  }

  else
  {
    [(Tiling *)self assemble2TilesToCommandBuffer:commandBuffer from:v23 to:v12 tileInfo:contents];
  }

  kdebug_trace();
  [commandBuffer commit];
  kdebug_trace();

  do
  {
  }

  while (numTilesCopy * 8);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)assemble3TilesToCommandBuffer:(id)buffer from:(id *)from to:(id)to tileInfo:(id *)info
{
  toCopy = to;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_assembleKernel];
  [computeCommandEncoder setTexture:*from atIndex:0];
  [computeCommandEncoder setTexture:from[1] atIndex:1];
  [computeCommandEncoder setTexture:from[2] atIndex:2];
  [computeCommandEncoder setTexture:toCopy atIndex:3];
  [computeCommandEncoder setBuffer:self->_tileParameters offset:0 atIndex:0];
  v11 = ([toCopy width] + 15) >> 4;
  height = [toCopy height];

  v15[0] = v11;
  v15[1] = (height + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (void)assemble2TilesToCommandBuffer:(id)buffer from:(id *)from to:(id)to tileInfo:(id *)info
{
  toCopy = to;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_assembleTwoTileKernel];
  [computeCommandEncoder setTexture:*from atIndex:0];
  [computeCommandEncoder setTexture:from[1] atIndex:1];
  [computeCommandEncoder setTexture:toCopy atIndex:2];
  [computeCommandEncoder setBuffer:self->_tileParameters offset:0 atIndex:0];
  v11 = ([toCopy width] + 15) >> 4;
  height = [toCopy height];

  v15[0] = v11;
  v15[1] = (height + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

@end
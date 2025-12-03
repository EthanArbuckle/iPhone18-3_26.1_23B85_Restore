@interface FRCBlit
- (BOOL)setupMetal;
- (FRCBlit)init;
- (void)copyBuffer:(__CVBuffer *)buffer toTexture:(id)texture commandBuffer:(id)commandBuffer;
- (void)copyTexture:(id)texture toBuffer:(__CVBuffer *)buffer commandBuffer:(id)commandBuffer;
@end

@implementation FRCBlit

- (FRCBlit)init
{
  v5.receiver = self;
  v5.super_class = FRCBlit;
  v2 = [(FRCMetalBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FRCBlit *)v2 setupMetal];
  }

  return v3;
}

- (BOOL)setupMetal
{
  v3 = [(FRCMetalBase *)self createKernel:@"bufferToTexture"];
  bufferToTexture = self->_bufferToTexture;
  self->_bufferToTexture = v3;

  if (!self->_bufferToTexture)
  {
    return 0;
  }

  v5 = [(FRCMetalBase *)self createKernel:@"textureToBuffer"];
  textureToBuffer = self->_textureToBuffer;
  self->_textureToBuffer = v5;

  if (!self->_textureToBuffer)
  {
    return 0;
  }

  v7 = [(FRCMetalBase *)self createKernel:@"bufferToTwoComponentTexture"];
  bufferToTextureTwoComponent = self->_bufferToTextureTwoComponent;
  self->_bufferToTextureTwoComponent = v7;

  if (!self->_bufferToTextureTwoComponent)
  {
    return 0;
  }

  v9 = [(FRCMetalBase *)self createKernel:@"twoComponentTextureToBuffer"];
  textureToBufferTwoComponent = self->_textureToBufferTwoComponent;
  self->_textureToBufferTwoComponent = v9;

  return self->_textureToBufferTwoComponent != 0;
}

- (void)copyBuffer:(__CVBuffer *)buffer toTexture:(id)texture commandBuffer:(id)commandBuffer
{
  textureCopy = texture;
  commandBufferCopy = commandBuffer;
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  v20 = CVPixelBufferGetBytesPerRow(buffer) >> 1;
  v10 = [(MTLDevice *)self->super._device newBufferWithIOSurface:CVPixelBufferGetIOSurface(buffer)];
  pixelFormat = [textureCopy pixelFormat];
  [textureCopy height];
  if (pixelFormat != 65)
  {
    [textureCopy arrayLength];
  }

  width = [textureCopy width];
  height = [textureCopy height];
  computeCommandEncoder = [commandBufferCopy computeCommandEncoder];

  pixelFormat2 = [textureCopy pixelFormat];
  v16 = &OBJC_IVAR___FRCBlit__bufferToTexture;
  if (pixelFormat2 == 65)
  {
    v16 = &OBJC_IVAR___FRCBlit__bufferToTextureTwoComponent;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v16)];
  [computeCommandEncoder setBuffer:v10 offset:0 atIndex:0];
  [computeCommandEncoder setBytes:&v20 length:4 atIndex:1];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  v19[0] = (width + 15) >> 4;
  v19[1] = (height + 15) >> 4;
  v19[2] = 1;
  v17 = vdupq_n_s64(0x10uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)copyTexture:(id)texture toBuffer:(__CVBuffer *)buffer commandBuffer:(id)commandBuffer
{
  textureCopy = texture;
  commandBufferCopy = commandBuffer;
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  v20 = CVPixelBufferGetBytesPerRow(buffer) >> 1;
  v10 = [(MTLDevice *)self->super._device newBufferWithIOSurface:CVPixelBufferGetIOSurface(buffer)];
  pixelFormat = [textureCopy pixelFormat];
  [textureCopy height];
  if (pixelFormat != 65)
  {
    [textureCopy arrayLength];
  }

  width = [textureCopy width];
  height = [textureCopy height];
  computeCommandEncoder = [commandBufferCopy computeCommandEncoder];

  pixelFormat2 = [textureCopy pixelFormat];
  v16 = &OBJC_IVAR___FRCBlit__textureToBuffer;
  if (pixelFormat2 == 65)
  {
    v16 = &OBJC_IVAR___FRCBlit__textureToBufferTwoComponent;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v16)];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setBuffer:v10 offset:0 atIndex:0];
  [computeCommandEncoder setBytes:&v20 length:4 atIndex:1];
  v19[0] = (width + 15) >> 4;
  v19[1] = (height + 15) >> 4;
  v19[2] = 1;
  v17 = vdupq_n_s64(0x10uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

@end
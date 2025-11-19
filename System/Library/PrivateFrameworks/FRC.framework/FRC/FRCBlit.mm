@interface FRCBlit
- (BOOL)setupMetal;
- (FRCBlit)init;
- (void)copyBuffer:(__CVBuffer *)a3 toTexture:(id)a4 commandBuffer:(id)a5;
- (void)copyTexture:(id)a3 toBuffer:(__CVBuffer *)a4 commandBuffer:(id)a5;
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

- (void)copyBuffer:(__CVBuffer *)a3 toTexture:(id)a4 commandBuffer:(id)a5
{
  v8 = a4;
  v9 = a5;
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  v20 = CVPixelBufferGetBytesPerRow(a3) >> 1;
  v10 = [(MTLDevice *)self->super._device newBufferWithIOSurface:CVPixelBufferGetIOSurface(a3)];
  v11 = [v8 pixelFormat];
  [v8 height];
  if (v11 != 65)
  {
    [v8 arrayLength];
  }

  v12 = [v8 width];
  v13 = [v8 height];
  v14 = [v9 computeCommandEncoder];

  v15 = [v8 pixelFormat];
  v16 = &OBJC_IVAR___FRCBlit__bufferToTexture;
  if (v15 == 65)
  {
    v16 = &OBJC_IVAR___FRCBlit__bufferToTextureTwoComponent;
  }

  [v14 setComputePipelineState:*(&self->super.super.isa + *v16)];
  [v14 setBuffer:v10 offset:0 atIndex:0];
  [v14 setBytes:&v20 length:4 atIndex:1];
  [v14 setTexture:v8 atIndex:0];
  v19[0] = (v12 + 15) >> 4;
  v19[1] = (v13 + 15) >> 4;
  v19[2] = 1;
  v17 = vdupq_n_s64(0x10uLL);
  v18 = 1;
  [v14 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v14 endEncoding];
}

- (void)copyTexture:(id)a3 toBuffer:(__CVBuffer *)a4 commandBuffer:(id)a5
{
  v8 = a3;
  v9 = a5;
  CVPixelBufferGetWidth(a4);
  CVPixelBufferGetHeight(a4);
  v20 = CVPixelBufferGetBytesPerRow(a4) >> 1;
  v10 = [(MTLDevice *)self->super._device newBufferWithIOSurface:CVPixelBufferGetIOSurface(a4)];
  v11 = [v8 pixelFormat];
  [v8 height];
  if (v11 != 65)
  {
    [v8 arrayLength];
  }

  v12 = [v8 width];
  v13 = [v8 height];
  v14 = [v9 computeCommandEncoder];

  v15 = [v8 pixelFormat];
  v16 = &OBJC_IVAR___FRCBlit__textureToBuffer;
  if (v15 == 65)
  {
    v16 = &OBJC_IVAR___FRCBlit__textureToBufferTwoComponent;
  }

  [v14 setComputePipelineState:*(&self->super.super.isa + *v16)];
  [v14 setTexture:v8 atIndex:0];
  [v14 setBuffer:v10 offset:0 atIndex:0];
  [v14 setBytes:&v20 length:4 atIndex:1];
  v19[0] = (v12 + 15) >> 4;
  v19[1] = (v13 + 15) >> 4;
  v19[2] = 1;
  v17 = vdupq_n_s64(0x10uLL);
  v18 = 1;
  [v14 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v14 endEncoding];
}

@end
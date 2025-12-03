@interface GPUSynthesis
- (BOOL)setupMetal;
- (GPUSynthesis)initWithDevice:(id)device commmandQueue:(id)queue;
- (void)dealloc;
- (void)encodeAlphaCmdToCommandBuffer:(id)buffer fromBuffer0:(id)buffer0 buffer1:(id)buffer1 toAlpha:(id)alpha timeScale:(float)scale toNormalized0:(id)normalized0 toNormalized1:(id)normalized1;
- (void)encodeAverageErrorCmdToCommandBuffer:(id)buffer minErrorMap0:(id)map0 minErrorMap1:(id)map1 avgErrorMap0:(id)errorMap0 avgErrorMap1:(id)errorMap1 width:(int)width height:(int)height;
- (void)encodeCombineCmdToCommandBuffer:(id)buffer fromBuffer0:(id)buffer0 buffer1:(id)buffer1 best0:(id)best0 best1:(id)best1 map:(id)map normalized0:(id)normalized0 normalized1:(id)self0 alpha:(id)self1 flowStats0:(id *)self2 flowStats1:(id *)self3 toTexture:(id)self4;
- (void)encodePostSmoothFilterCmdToCommandBuffer:(id)buffer map:(id)map fromTexture:(id)texture toTexture:(id)toTexture;
@end

@implementation GPUSynthesis

- (GPUSynthesis)initWithDevice:(id)device commmandQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = GPUSynthesis;
  v4 = [(FRCMetalBase *)&v7 initWithDevice:device commmandQueue:queue];
  v5 = v4;
  if (v4)
  {
    [(GPUSynthesis *)v4 setupMetal];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GPUSynthesis;
  [(GPUSynthesis *)&v2 dealloc];
}

- (BOOL)setupMetal
{
  v3 = [(FRCMetalBase *)self createKernel:@"combineFloatBuffer2Texture"];
  combine2Textures = self->_combine2Textures;
  self->_combine2Textures = v3;

  v5 = [(FRCMetalBase *)self createKernel:@"postSmoothFilter"];
  postSmoothFilter = self->_postSmoothFilter;
  self->_postSmoothFilter = v5;

  v7 = [(FRCMetalBase *)self createKernel:@"averageMinErrorMap"];
  averageErrorMap = self->_averageErrorMap;
  self->_averageErrorMap = v7;

  v9 = [(FRCMetalBase *)self createKernel:@"generateBlendingFactor"];
  generateAlphaMap = self->_generateAlphaMap;
  self->_generateAlphaMap = v9;

  return 1;
}

- (void)encodeCombineCmdToCommandBuffer:(id)buffer fromBuffer0:(id)buffer0 buffer1:(id)buffer1 best0:(id)best0 best1:(id)best1 map:(id)map normalized0:(id)normalized0 normalized1:(id)self0 alpha:(id)self1 flowStats0:(id *)self2 flowStats1:(id *)self3 toTexture:(id)self4
{
  buffer0Copy = buffer0;
  buffer1Copy = buffer1;
  best0Copy = best0;
  best1Copy = best1;
  mapCopy = map;
  normalized0Copy = normalized0;
  normalized1Copy = normalized1;
  alphaCopy = alpha;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v28 = [(MTLDevice *)self->super._device newBufferWithLength:32 options:0];
    [computeCommandEncoder setComputePipelineState:self->_combine2Textures];
    [computeCommandEncoder setBuffer:buffer0Copy offset:0 atIndex:0];
    [computeCommandEncoder setBuffer:buffer1Copy offset:0 atIndex:1];
    [computeCommandEncoder setBuffer:best0Copy offset:0 atIndex:2];
    [computeCommandEncoder setBuffer:best1Copy offset:0 atIndex:3];
    [computeCommandEncoder setBuffer:v28 offset:0 atIndex:4];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:mapCopy atIndex:1];
    [computeCommandEncoder setTexture:normalized0Copy atIndex:2];
    [computeCommandEncoder setTexture:normalized1Copy atIndex:3];
    [computeCommandEncoder setTexture:alphaCopy atIndex:4];
    v33[0] = ([textureCopy width] + 15) >> 4;
    v33[1] = ([textureCopy height] + 15) >> 4;
    v33[2] = 1;
    v31 = vdupq_n_s64(0x10uLL);
    v32 = 1;
    [computeCommandEncoder dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodeAlphaCmdToCommandBuffer:(id)buffer fromBuffer0:(id)buffer0 buffer1:(id)buffer1 toAlpha:(id)alpha timeScale:(float)scale toNormalized0:(id)normalized0 toNormalized1:(id)normalized1
{
  buffer0Copy = buffer0;
  buffer1Copy = buffer1;
  alphaCopy = alpha;
  normalized0Copy = normalized0;
  normalized1Copy = normalized1;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v22 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
    *[v22 contents] = scale;
    [computeCommandEncoder setComputePipelineState:self->_generateAlphaMap];
    [computeCommandEncoder setBuffer:buffer0Copy offset:0 atIndex:0];
    [computeCommandEncoder setBuffer:buffer1Copy offset:0 atIndex:1];
    [computeCommandEncoder setBuffer:v22 offset:0 atIndex:2];
    [computeCommandEncoder setTexture:alphaCopy atIndex:0];
    [computeCommandEncoder setTexture:normalized0Copy atIndex:1];
    [computeCommandEncoder setTexture:normalized1Copy atIndex:2];
    v25[0] = ([alphaCopy width] + 15) >> 4;
    v25[1] = ([alphaCopy height] + 15) >> 4;
    v25[2] = 1;
    v23 = vdupq_n_s64(0x10uLL);
    v24 = 1;
    [computeCommandEncoder dispatchThreadgroups:v25 threadsPerThreadgroup:&v23];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodePostSmoothFilterCmdToCommandBuffer:(id)buffer map:(id)map fromTexture:(id)texture toTexture:(id)toTexture
{
  mapCopy = map;
  textureCopy = texture;
  toTextureCopy = toTexture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v14 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_postSmoothFilter];
    [v14 setTexture:textureCopy atIndex:0];
    [v14 setTexture:mapCopy atIndex:1];
    [v14 setTexture:toTextureCopy atIndex:2];
    v17[0] = ([toTextureCopy width] + 15) >> 4;
    v17[1] = ([toTextureCopy height] + 15) >> 4;
    v17[2] = 1;
    v15 = vdupq_n_s64(0x10uLL);
    v16 = 1;
    [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
    [v14 endEncoding];
  }
}

- (void)encodeAverageErrorCmdToCommandBuffer:(id)buffer minErrorMap0:(id)map0 minErrorMap1:(id)map1 avgErrorMap0:(id)errorMap0 avgErrorMap1:(id)errorMap1 width:(int)width height:(int)height
{
  map0Copy = map0;
  map1Copy = map1;
  errorMap0Copy = errorMap0;
  errorMap1Copy = errorMap1;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v20 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    contents = [v20 contents];
    *contents = width;
    contents[1] = height;
    [computeCommandEncoder setComputePipelineState:self->_averageErrorMap];
    [computeCommandEncoder setBuffer:v20 offset:0 atIndex:0];
    [computeCommandEncoder setBuffer:map0Copy offset:0 atIndex:1];
    [computeCommandEncoder setBuffer:map1Copy offset:0 atIndex:2];
    [computeCommandEncoder setBuffer:errorMap0Copy offset:0 atIndex:3];
    [computeCommandEncoder setBuffer:errorMap1Copy offset:0 atIndex:4];
    v24[0] = (width + 15) >> 4;
    v24[1] = (height + 15) >> 4;
    v24[2] = 1;
    v22 = vdupq_n_s64(0x10uLL);
    v23 = 1;
    [computeCommandEncoder dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
    [computeCommandEncoder endEncoding];
  }
}

@end
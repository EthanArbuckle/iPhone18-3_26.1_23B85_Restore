@interface GPUSynthesis
- (BOOL)setupMetal;
- (GPUSynthesis)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (void)dealloc;
- (void)encodeAlphaCmdToCommandBuffer:(id)a3 fromBuffer0:(id)a4 buffer1:(id)a5 toAlpha:(id)a6 timeScale:(float)a7 toNormalized0:(id)a8 toNormalized1:(id)a9;
- (void)encodeAverageErrorCmdToCommandBuffer:(id)a3 minErrorMap0:(id)a4 minErrorMap1:(id)a5 avgErrorMap0:(id)a6 avgErrorMap1:(id)a7 width:(int)a8 height:(int)a9;
- (void)encodeCombineCmdToCommandBuffer:(id)a3 fromBuffer0:(id)a4 buffer1:(id)a5 best0:(id)a6 best1:(id)a7 map:(id)a8 normalized0:(id)a9 normalized1:(id)a10 alpha:(id)a11 flowStats0:(id *)a12 flowStats1:(id *)a13 toTexture:(id)a14;
- (void)encodePostSmoothFilterCmdToCommandBuffer:(id)a3 map:(id)a4 fromTexture:(id)a5 toTexture:(id)a6;
@end

@implementation GPUSynthesis

- (GPUSynthesis)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v7.receiver = self;
  v7.super_class = GPUSynthesis;
  v4 = [(FRCMetalBase *)&v7 initWithDevice:a3 commmandQueue:a4];
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

- (void)encodeCombineCmdToCommandBuffer:(id)a3 fromBuffer0:(id)a4 buffer1:(id)a5 best0:(id)a6 best1:(id)a7 map:(id)a8 normalized0:(id)a9 normalized1:(id)a10 alpha:(id)a11 flowStats0:(id *)a12 flowStats1:(id *)a13 toTexture:(id)a14
{
  v30 = a4;
  v29 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a14;
  v27 = [a3 computeCommandEncoder];
  if (v27)
  {
    v28 = [(MTLDevice *)self->super._device newBufferWithLength:32 options:0];
    [v27 setComputePipelineState:self->_combine2Textures];
    [v27 setBuffer:v30 offset:0 atIndex:0];
    [v27 setBuffer:v29 offset:0 atIndex:1];
    [v27 setBuffer:v20 offset:0 atIndex:2];
    [v27 setBuffer:v21 offset:0 atIndex:3];
    [v27 setBuffer:v28 offset:0 atIndex:4];
    [v27 setTexture:v26 atIndex:0];
    [v27 setTexture:v22 atIndex:1];
    [v27 setTexture:v23 atIndex:2];
    [v27 setTexture:v24 atIndex:3];
    [v27 setTexture:v25 atIndex:4];
    v33[0] = ([v26 width] + 15) >> 4;
    v33[1] = ([v26 height] + 15) >> 4;
    v33[2] = 1;
    v31 = vdupq_n_s64(0x10uLL);
    v32 = 1;
    [v27 dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
    [v27 endEncoding];
  }
}

- (void)encodeAlphaCmdToCommandBuffer:(id)a3 fromBuffer0:(id)a4 buffer1:(id)a5 toAlpha:(id)a6 timeScale:(float)a7 toNormalized0:(id)a8 toNormalized1:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = [a3 computeCommandEncoder];
  if (v21)
  {
    v22 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
    *[v22 contents] = a7;
    [v21 setComputePipelineState:self->_generateAlphaMap];
    [v21 setBuffer:v16 offset:0 atIndex:0];
    [v21 setBuffer:v17 offset:0 atIndex:1];
    [v21 setBuffer:v22 offset:0 atIndex:2];
    [v21 setTexture:v18 atIndex:0];
    [v21 setTexture:v19 atIndex:1];
    [v21 setTexture:v20 atIndex:2];
    v25[0] = ([v18 width] + 15) >> 4;
    v25[1] = ([v18 height] + 15) >> 4;
    v25[2] = 1;
    v23 = vdupq_n_s64(0x10uLL);
    v24 = 1;
    [v21 dispatchThreadgroups:v25 threadsPerThreadgroup:&v23];
    [v21 endEncoding];
  }
}

- (void)encodePostSmoothFilterCmdToCommandBuffer:(id)a3 map:(id)a4 fromTexture:(id)a5 toTexture:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  v14 = v13;
  if (v13)
  {
    [v13 setComputePipelineState:self->_postSmoothFilter];
    [v14 setTexture:v11 atIndex:0];
    [v14 setTexture:v10 atIndex:1];
    [v14 setTexture:v12 atIndex:2];
    v17[0] = ([v12 width] + 15) >> 4;
    v17[1] = ([v12 height] + 15) >> 4;
    v17[2] = 1;
    v15 = vdupq_n_s64(0x10uLL);
    v16 = 1;
    [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
    [v14 endEncoding];
  }
}

- (void)encodeAverageErrorCmdToCommandBuffer:(id)a3 minErrorMap0:(id)a4 minErrorMap1:(id)a5 avgErrorMap0:(id)a6 avgErrorMap1:(id)a7 width:(int)a8 height:(int)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [a3 computeCommandEncoder];
  if (v19)
  {
    v20 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    v21 = [v20 contents];
    *v21 = a8;
    v21[1] = a9;
    [v19 setComputePipelineState:self->_averageErrorMap];
    [v19 setBuffer:v20 offset:0 atIndex:0];
    [v19 setBuffer:v15 offset:0 atIndex:1];
    [v19 setBuffer:v16 offset:0 atIndex:2];
    [v19 setBuffer:v17 offset:0 atIndex:3];
    [v19 setBuffer:v18 offset:0 atIndex:4];
    v24[0] = (a8 + 15) >> 4;
    v24[1] = (a9 + 15) >> 4;
    v24[2] = 1;
    v22 = vdupq_n_s64(0x10uLL);
    v23 = 1;
    [v19 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
    [v19 endEncoding];
  }
}

@end
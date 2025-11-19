@interface Forwarp_Ext
- (BOOL)setupMetal;
- (Forwarp_Ext)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (int64_t)encodeForerunnerToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 depth:(id)a6 neighborMax:(id)a7 tileSize:(int)a8 virtualFrameNum:(int)a9 timeScale:(float)a10 destination:(id)a11;
- (int64_t)encodeVirtualShutterLinePredictionToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 timeScale:(float)a6 destination:(id)a7;
- (int64_t)encodeVirtualShutterLinePredictionV2ToCommandBuffer:(id)a3 input:(id)a4 velocity:(id)a5 magnitude:(id)a6 smoothedMagnitude:(id)a7 depth:(id)a8 neighborMax:(id)a9 edgeTex:(id)a10 kernelTex:(id)a11 lowresOutput:(id)a12 lowresKernel:(id)a13 tileSize:(int)a14 virtualFrameNum:(int)a15 timeScale:(float)a16 lowresRender:(float)a17 destination:(id)a18 foreruner:(id)a19;
- (void)dealloc;
@end

@implementation Forwarp_Ext

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Forwarp_Ext;
  [(Forwarp_Ext *)&v2 dealloc];
}

- (Forwarp_Ext)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = Forwarp_Ext;
  v4 = [(VEMetalBase *)&v8 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (v4 && (v4->_errorTolerance = 0.1, [(Forwarp_Ext *)v4 setupMetal]))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setupMetal
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"virtualShutterAngleMetalLib.metallib" ofType:0];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [(MTLDevice *)self->super._device newLibraryWithURL:v5 error:0];
  mtlLibrary = self->super._mtlLibrary;
  self->super._mtlLibrary = v6;

  v8 = [(VEMetalBase *)self createKernel:@"linePredictOutput"];
  linePredictOutput = self->_linePredictOutput;
  self->_linePredictOutput = v8;

  v10 = [(VEMetalBase *)self createKernel:@"linePredictOutputV2"];
  linePredictOutput_lowres = self->_linePredictOutput_lowres;
  self->_linePredictOutput_lowres = v10;

  if (self->_linePredictOutput_lowres && ([(VEMetalBase *)self createKernel:@"linePredictOutput_finalStage"], v12 = objc_claimAutoreleasedReturnValue(), linePredictOutput_finalStage = self->_linePredictOutput_finalStage, self->_linePredictOutput_finalStage = v12, linePredictOutput_finalStage, self->_linePredictOutput_finalStage))
  {
    v14 = [(VEMetalBase *)self createKernel:@"forerunner"];
    forerunnerKernel = self->_forerunnerKernel;
    self->_forerunnerKernel = v14;

    v16 = self->_forerunnerKernel != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)encodeVirtualShutterLinePredictionToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 timeScale:(float)a6 destination:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  v16 = 12;
  if (v12 && v13 && v14)
  {
    v17 = a3;
    v18 = getCurrentTimeStamp();
    v19 = [v17 computeCommandEncoder];

    if (v19)
    {
      v20 = [(MTLDevice *)self->super._device newBufferWithLength:24 options:0];
      v21 = [v20 contents];
      *v21 = a6;
      errorTolerance = self->_errorTolerance;
      *(v21 + 12) = 0;
      *(v21 + 16) = errorTolerance;
      [v19 setComputePipelineState:self->_linePredictOutput];
      [v19 setTexture:v12 atIndex:0];
      [v19 setTexture:v13 atIndex:1];
      [v19 setTexture:v15 atIndex:2];
      [v19 setBuffer:v20 offset:0 atIndex:0];
      v27[0] = ([v15 width] + 15) >> 4;
      v27[1] = ([v15 height] + 15) >> 4;
      v27[2] = 1;
      v25 = vdupq_n_s64(0x10uLL);
      v26 = 1;
      [v19 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
      [v19 endEncoding];
      v23 = getCurrentTimeStamp();

      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (int64_t)encodeForerunnerToCommandBuffer:(id)a3 velocity:(id)a4 magnitude:(id)a5 depth:(id)a6 neighborMax:(id)a7 tileSize:(int)a8 virtualFrameNum:(int)a9 timeScale:(float)a10 destination:(id)a11
{
  v18 = a4;
  v32 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a11;
  v22 = v21;
  v23 = 12;
  if (v18 && v19 && v20 && v21)
  {
    v24 = a3;
    v25 = getCurrentTimeStamp();
    v26 = [v24 computeCommandEncoder];

    if (v26)
    {
      v27 = [(MTLDevice *)self->super._device newBufferWithLength:24 options:0];
      v28 = [v27 contents];
      *v28 = a10;
      *(v28 + 4) = a8;
      *(v28 + 8) = a9;
      errorTolerance = self->_errorTolerance;
      *(v28 + 12) = 0;
      *(v28 + 16) = errorTolerance;
      [v26 setComputePipelineState:self->_forerunnerKernel];
      [v26 setTexture:v18 atIndex:0];
      [v26 setTexture:v19 atIndex:1];
      [v26 setTexture:v20 atIndex:2];
      [v26 setTexture:v22 atIndex:3];
      [v26 setTexture:v32 atIndex:4];
      [v26 setBuffer:v27 offset:0 atIndex:0];
      v35[0] = ([v22 width] + 15) >> 4;
      v35[1] = ([v22 height] + 15) >> 4;
      v35[2] = 1;
      v33 = vdupq_n_s64(0x10uLL);
      v34 = 1;
      [v26 dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
      [v26 endEncoding];
      v30 = getCurrentTimeStamp();

      v23 = 0;
    }

    else
    {
      v23 = 9;
    }
  }

  return v23;
}

- (int64_t)encodeVirtualShutterLinePredictionV2ToCommandBuffer:(id)a3 input:(id)a4 velocity:(id)a5 magnitude:(id)a6 smoothedMagnitude:(id)a7 depth:(id)a8 neighborMax:(id)a9 edgeTex:(id)a10 kernelTex:(id)a11 lowresOutput:(id)a12 lowresKernel:(id)a13 tileSize:(int)a14 virtualFrameNum:(int)a15 timeScale:(float)a16 lowresRender:(float)a17 destination:(id)a18 foreruner:(id)a19
{
  v25 = a4;
  v26 = a5;
  v53 = a6;
  v54 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  v51 = a11;
  v50 = a12;
  v49 = a13;
  v30 = a18;
  v31 = a19;
  v32 = v31;
  v33 = 12;
  if (v25 && v26 && v54 && v27 && v28 && v29 && v31)
  {
    v52 = v28;
    v34 = a3;
    v35 = getCurrentTimeStamp();
    v36 = [v34 computeCommandEncoder];

    if (v36)
    {
      v48 = v35;
      v37 = [(MTLDevice *)self->super._device newBufferWithLength:24 options:0];
      v38 = [v37 contents];
      *v38 = a16;
      *(v38 + 4) = a14;
      *(v38 + 8) = a15;
      *(v38 + 12) = 0;
      *(v38 + 16) = self->_errorTolerance;
      *(v38 + 20) = a17;
      v39 = [v32 width];
      v58[0] = v39 / [v25 width];
      v40 = &OBJC_IVAR___Forwarp_Ext__linePredictOutput_finalStage;
      if (a17 == 1.0)
      {
        v40 = &OBJC_IVAR___Forwarp_Ext__linePredictOutput_lowres;
      }

      [v36 setComputePipelineState:*(&self->super.super.isa + *v40)];
      [v36 setTexture:v25 atIndex:0];
      [v36 setTexture:v26 atIndex:1];
      [v36 setTexture:v54 atIndex:2];
      [v36 setTexture:v27 atIndex:3];
      [v36 setTexture:v52 atIndex:4];
      [v36 setTexture:v30 atIndex:5];
      [v36 setTexture:v29 atIndex:6];
      [v36 setTexture:v32 atIndex:7];
      [v36 setTexture:v53 atIndex:8];
      [v36 setBuffer:v37 offset:0 atIndex:0];
      [v36 setBytes:v58 length:4 atIndex:1];
      if (a17 == 1.0)
      {
        [v36 setTexture:v51 atIndex:9];
      }

      else
      {
        v41 = [v50 width];
        *v57 = v41 / [v25 width];
        [v36 setTexture:v50 atIndex:9];
        [v36 setTexture:v49 atIndex:10];
        [v36 setBytes:v57 length:4 atIndex:2];
      }

      v42 = ([v30 width] + 15) >> 4;
      v43 = [v30 height];
      v57[0] = v42;
      v57[1] = (v43 + 15) >> 4;
      v57[2] = 1;
      v55 = vdupq_n_s64(0x10uLL);
      v56 = 1;
      [v36 dispatchThreadgroups:v57 threadsPerThreadgroup:&v55];
      [v36 endEncoding];
      v35 = v48;
      v44 = getCurrentTimeStamp();

      v33 = 0;
    }

    else
    {
      v33 = 9;
    }

    v28 = v52;
  }

  return v33;
}

@end
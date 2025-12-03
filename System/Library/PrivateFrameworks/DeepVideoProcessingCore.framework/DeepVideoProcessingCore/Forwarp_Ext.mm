@interface Forwarp_Ext
- (BOOL)setupMetal;
- (Forwarp_Ext)initWithDevice:(id)device commmandQueue:(id)queue;
- (int64_t)encodeForerunnerToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude depth:(id)depth neighborMax:(id)max tileSize:(int)size virtualFrameNum:(int)num timeScale:(float)self0 destination:(id)self1;
- (int64_t)encodeVirtualShutterLinePredictionToCommandBuffer:(id)buffer input:(id)input flow:(id)flow timeScale:(float)scale destination:(id)destination;
- (int64_t)encodeVirtualShutterLinePredictionV2ToCommandBuffer:(id)buffer input:(id)input velocity:(id)velocity magnitude:(id)magnitude smoothedMagnitude:(id)smoothedMagnitude depth:(id)depth neighborMax:(id)max edgeTex:(id)self0 kernelTex:(id)self1 lowresOutput:(id)self2 lowresKernel:(id)self3 tileSize:(int)self4 virtualFrameNum:(int)self5 timeScale:(float)self6 lowresRender:(float)self7 destination:(id)self8 foreruner:(id)self9;
- (void)dealloc;
@end

@implementation Forwarp_Ext

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Forwarp_Ext;
  [(Forwarp_Ext *)&v2 dealloc];
}

- (Forwarp_Ext)initWithDevice:(id)device commmandQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = Forwarp_Ext;
  v4 = [(VEMetalBase *)&v8 initWithDevice:device commmandQueue:queue];
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

- (int64_t)encodeVirtualShutterLinePredictionToCommandBuffer:(id)buffer input:(id)input flow:(id)flow timeScale:(float)scale destination:(id)destination
{
  inputCopy = input;
  flowCopy = flow;
  destinationCopy = destination;
  v15 = destinationCopy;
  v16 = 12;
  if (inputCopy && flowCopy && destinationCopy)
  {
    bufferCopy = buffer;
    v18 = getCurrentTimeStamp();
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v20 = [(MTLDevice *)self->super._device newBufferWithLength:24 options:0];
      contents = [v20 contents];
      *contents = scale;
      errorTolerance = self->_errorTolerance;
      *(contents + 12) = 0;
      *(contents + 16) = errorTolerance;
      [computeCommandEncoder setComputePipelineState:self->_linePredictOutput];
      [computeCommandEncoder setTexture:inputCopy atIndex:0];
      [computeCommandEncoder setTexture:flowCopy atIndex:1];
      [computeCommandEncoder setTexture:v15 atIndex:2];
      [computeCommandEncoder setBuffer:v20 offset:0 atIndex:0];
      v27[0] = ([v15 width] + 15) >> 4;
      v27[1] = ([v15 height] + 15) >> 4;
      v27[2] = 1;
      v25 = vdupq_n_s64(0x10uLL);
      v26 = 1;
      [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
      [computeCommandEncoder endEncoding];
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

- (int64_t)encodeForerunnerToCommandBuffer:(id)buffer velocity:(id)velocity magnitude:(id)magnitude depth:(id)depth neighborMax:(id)max tileSize:(int)size virtualFrameNum:(int)num timeScale:(float)self0 destination:(id)self1
{
  velocityCopy = velocity;
  magnitudeCopy = magnitude;
  depthCopy = depth;
  maxCopy = max;
  destinationCopy = destination;
  v22 = destinationCopy;
  v23 = 12;
  if (velocityCopy && depthCopy && maxCopy && destinationCopy)
  {
    bufferCopy = buffer;
    v25 = getCurrentTimeStamp();
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v27 = [(MTLDevice *)self->super._device newBufferWithLength:24 options:0];
      contents = [v27 contents];
      *contents = scale;
      *(contents + 4) = size;
      *(contents + 8) = num;
      errorTolerance = self->_errorTolerance;
      *(contents + 12) = 0;
      *(contents + 16) = errorTolerance;
      [computeCommandEncoder setComputePipelineState:self->_forerunnerKernel];
      [computeCommandEncoder setTexture:velocityCopy atIndex:0];
      [computeCommandEncoder setTexture:depthCopy atIndex:1];
      [computeCommandEncoder setTexture:maxCopy atIndex:2];
      [computeCommandEncoder setTexture:v22 atIndex:3];
      [computeCommandEncoder setTexture:magnitudeCopy atIndex:4];
      [computeCommandEncoder setBuffer:v27 offset:0 atIndex:0];
      v35[0] = ([v22 width] + 15) >> 4;
      v35[1] = ([v22 height] + 15) >> 4;
      v35[2] = 1;
      v33 = vdupq_n_s64(0x10uLL);
      v34 = 1;
      [computeCommandEncoder dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
      [computeCommandEncoder endEncoding];
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

- (int64_t)encodeVirtualShutterLinePredictionV2ToCommandBuffer:(id)buffer input:(id)input velocity:(id)velocity magnitude:(id)magnitude smoothedMagnitude:(id)smoothedMagnitude depth:(id)depth neighborMax:(id)max edgeTex:(id)self0 kernelTex:(id)self1 lowresOutput:(id)self2 lowresKernel:(id)self3 tileSize:(int)self4 virtualFrameNum:(int)self5 timeScale:(float)self6 lowresRender:(float)self7 destination:(id)self8 foreruner:(id)self9
{
  inputCopy = input;
  velocityCopy = velocity;
  magnitudeCopy = magnitude;
  smoothedMagnitudeCopy = smoothedMagnitude;
  depthCopy = depth;
  maxCopy = max;
  texCopy = tex;
  kernelTexCopy = kernelTex;
  outputCopy = output;
  kernelCopy = kernel;
  destinationCopy = destination;
  forerunerCopy = foreruner;
  v32 = forerunerCopy;
  v33 = 12;
  if (inputCopy && velocityCopy && smoothedMagnitudeCopy && depthCopy && maxCopy && texCopy && forerunerCopy)
  {
    v52 = maxCopy;
    bufferCopy = buffer;
    v35 = getCurrentTimeStamp();
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v48 = v35;
      v37 = [(MTLDevice *)self->super._device newBufferWithLength:24 options:0];
      contents = [v37 contents];
      *contents = scale;
      *(contents + 4) = size;
      *(contents + 8) = num;
      *(contents + 12) = 0;
      *(contents + 16) = self->_errorTolerance;
      *(contents + 20) = render;
      width = [v32 width];
      v58[0] = width / [inputCopy width];
      v40 = &OBJC_IVAR___Forwarp_Ext__linePredictOutput_finalStage;
      if (render == 1.0)
      {
        v40 = &OBJC_IVAR___Forwarp_Ext__linePredictOutput_lowres;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v40)];
      [computeCommandEncoder setTexture:inputCopy atIndex:0];
      [computeCommandEncoder setTexture:velocityCopy atIndex:1];
      [computeCommandEncoder setTexture:smoothedMagnitudeCopy atIndex:2];
      [computeCommandEncoder setTexture:depthCopy atIndex:3];
      [computeCommandEncoder setTexture:v52 atIndex:4];
      [computeCommandEncoder setTexture:destinationCopy atIndex:5];
      [computeCommandEncoder setTexture:texCopy atIndex:6];
      [computeCommandEncoder setTexture:v32 atIndex:7];
      [computeCommandEncoder setTexture:magnitudeCopy atIndex:8];
      [computeCommandEncoder setBuffer:v37 offset:0 atIndex:0];
      [computeCommandEncoder setBytes:v58 length:4 atIndex:1];
      if (render == 1.0)
      {
        [computeCommandEncoder setTexture:kernelTexCopy atIndex:9];
      }

      else
      {
        width2 = [outputCopy width];
        *v57 = width2 / [inputCopy width];
        [computeCommandEncoder setTexture:outputCopy atIndex:9];
        [computeCommandEncoder setTexture:kernelCopy atIndex:10];
        [computeCommandEncoder setBytes:v57 length:4 atIndex:2];
      }

      v42 = ([destinationCopy width] + 15) >> 4;
      height = [destinationCopy height];
      v57[0] = v42;
      v57[1] = (height + 15) >> 4;
      v57[2] = 1;
      v55 = vdupq_n_s64(0x10uLL);
      v56 = 1;
      [computeCommandEncoder dispatchThreadgroups:v57 threadsPerThreadgroup:&v55];
      [computeCommandEncoder endEncoding];
      v35 = v48;
      v44 = getCurrentTimeStamp();

      v33 = 0;
    }

    else
    {
      v33 = 9;
    }

    maxCopy = v52;
  }

  return v33;
}

@end
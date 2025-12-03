@interface Backwarp
- (Backwarp)initWithDevice:(id)device interleaved:(BOOL)interleaved;
- (void)calcBackwarpLoss:(id)loss second:(id)second flow:(id)flow timeScale:(float)scale destination:(id)destination;
- (void)copyTextureWithPaddingSource:(id)source destination:(id)destination callback:(id)callback;
- (void)dealloc;
- (void)encodeBackwarpLossToCommandBuffer:(id)buffer first:(id)first second:(id)second flow:(id)flow timeScale:(float)scale destination:(id)destination;
- (void)encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:(id)buffer first:(id)first second:(id)second flow:(id)flow timeScale:(float)scale gamma:(float)gamma protectionThreshold:(float)threshold destination:(id)self0;
- (void)encodeFlowSplattingWarpToCommandBuffer:(id)buffer source:(id)source flow:(id)flow timeScale:(float)scale destination:(id)destination;
- (void)encodePaddingTextureToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeReShuffleFlowToCommandBuffer:(id)buffer shuffledFlow:(id)flow previousFlow:(id)previousFlow destination:(id)destination;
- (void)encodeReverseFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeSubsampleInputToCommandBufferr:(id)bufferr source:(id)source destination:(id)destination;
- (void)encodeSubsampleToCommandBufferr:(id)bufferr source:(id)source destination:(id)destination kernel:(id)kernel;
- (void)encodeToCommandBuffer:(id)buffer source:(id)source flow:(id)flow destination:(id)destination upscaledFlow:(id)upscaledFlow;
- (void)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination scaleFactor:(float)factor rotation:(BOOL)rotation;
- (void)reverseFlowWithSource:(id)source destination:(id)destination;
- (void)setupMetal;
- (void)upscaleFlow:(id)flow destination:(id)destination callback:(id)callback;
- (void)warpImage:(id)image to:(id)to withFlow:(id)flow upscaledFlow:(id)upscaledFlow;
@end

@implementation Backwarp

- (Backwarp)initWithDevice:(id)device interleaved:(BOOL)interleaved
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = Backwarp;
  v8 = [(Backwarp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_interleaved = interleaved;
    [(Backwarp *)v9 setupMetal];
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Backwarp;
  [(Backwarp *)&v2 dealloc];
}

- (void)setupMetal
{
  newCommandQueue = [(MTLDevice *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.FRC"];
  v6 = [v5 URLForResource:@"default" withExtension:@"metallib"];
  device = self->_device;
  if (v6)
  {
    newDefaultLibrary = [(MTLDevice *)device newLibraryWithURL:v6 error:0];
  }

  else
  {
    newDefaultLibrary = [(MTLDevice *)device newDefaultLibrary];
  }

  mtlLibrary = self->_mtlLibrary;
  self->_mtlLibrary = newDefaultLibrary;

  if (self->_interleaved)
  {
    v10 = @"backwarp";
  }

  else
  {
    v10 = @"backwarpNonInterleaved";
  }

  v11 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:v10];
  if (!v11)
  {
    NSLog(&cfstr_ErrorFailedCre_0.isa);
  }

  v121 = 0;
  v12 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v12 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  [v12 setComputeFunction:v11];
  v13 = self->_device;
  v120 = 0;
  v14 = [(MTLDevice *)v13 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v120];
  v15 = v120;
  backwarpKernel = self->_backwarpKernel;
  self->_backwarpKernel = v14;

  if (!self->_backwarpKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_0.isa);
  }

  v17 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpWithInterleavedFlow"];

  [v12 setComputeFunction:v17];
  v18 = self->_device;
  v119 = v15;
  v19 = [(MTLDevice *)v18 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v119];
  v20 = v119;

  backwarpInterleavedKernel = self->_backwarpInterleavedKernel;
  self->_backwarpInterleavedKernel = v19;

  if (!self->_backwarpInterleavedKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_0.isa);
  }

  v22 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpWithInterleavedFlowToInterleavedFlow"];

  [v12 setComputeFunction:v22];
  v23 = self->_device;
  v118 = v20;
  v24 = [(MTLDevice *)v23 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v118];
  v25 = v118;

  backwarpInterleavedWithInterleavedFlowOutputKernel = self->_backwarpInterleavedWithInterleavedFlowOutputKernel;
  self->_backwarpInterleavedWithInterleavedFlowOutputKernel = v24;

  if (!self->_backwarpInterleavedWithInterleavedFlowOutputKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_0.isa);
  }

  if (self->_interleaved)
  {
    v27 = @"backwarpLoss";
  }

  else
  {
    v27 = @"backwarpLossNonInterleaved";
  }

  v28 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:v27];

  if (!v28)
  {
    NSLog(&cfstr_ErrorFailedCre_1.isa);
  }

  [v12 setComputeFunction:v28];
  v29 = self->_device;
  v117 = v25;
  v30 = [(MTLDevice *)v29 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v117];
  v31 = v117;

  backwarpLossKernel = self->_backwarpLossKernel;
  self->_backwarpLossKernel = v30;

  if (!self->_backwarpLossKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_1.isa);
  }

  v33 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpLossWithFlowMagnitude"];

  [v12 setComputeFunction:v33];
  v34 = self->_device;
  v116 = v31;
  v35 = [(MTLDevice *)v34 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v116];
  v36 = v116;

  backwarpLossWithFlowMagnitudeKernel = self->_backwarpLossWithFlowMagnitudeKernel;
  self->_backwarpLossWithFlowMagnitudeKernel = v35;

  if (!self->_backwarpLossWithFlowMagnitudeKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_2.isa);
  }

  v38 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleFlow"];

  if (!v38)
  {
    NSLog(&cfstr_ErrorFailedCre_2.isa);
  }

  [v12 setComputeFunction:v38];
  v39 = self->_device;
  v115 = v36;
  v40 = [(MTLDevice *)v39 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v115];
  v41 = v115;

  flowUpscaleKernel = self->_flowUpscaleKernel;
  self->_flowUpscaleKernel = v40;

  if (!self->_flowUpscaleKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_3.isa);
  }

  v43 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleFlow2CTo1C"];

  [v12 setComputeFunction:v43];
  v44 = self->_device;
  v114 = v41;
  v45 = [(MTLDevice *)v44 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v114];
  v46 = v114;

  flowUpscale2CTo1CKernel = self->_flowUpscale2CTo1CKernel;
  self->_flowUpscale2CTo1CKernel = v45;

  if (!self->_flowUpscale2CTo1CKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_3.isa);
  }

  v48 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleFlow2CTo2C"];

  [v12 setComputeFunction:v48];
  v49 = self->_device;
  v113 = v46;
  v50 = [(MTLDevice *)v49 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v113];
  v51 = v113;

  flowUpscale2CTo2CKernel = self->_flowUpscale2CTo2CKernel;
  self->_flowUpscale2CTo2CKernel = v50;

  if (!self->_flowUpscale2CTo2CKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_3.isa);
  }

  v53 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"subsampleFlow"];

  [v12 setComputeFunction:v53];
  v54 = self->_device;
  v112 = v51;
  v55 = [(MTLDevice *)v54 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v112];
  v56 = v112;

  subsampleFlowKernel = self->_subsampleFlowKernel;
  self->_subsampleFlowKernel = v55;

  if (!self->_subsampleFlowKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_4.isa);
  }

  v58 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"subsampleError"];

  [v12 setComputeFunction:v58];
  v59 = self->_device;
  v111 = v56;
  v60 = [(MTLDevice *)v59 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v111];
  v61 = v111;

  subsampleErrorKernel = self->_subsampleErrorKernel;
  self->_subsampleErrorKernel = v60;

  if (!self->_subsampleErrorKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_5.isa);
  }

  v63 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleError"];

  [v12 setComputeFunction:v63];
  v64 = self->_device;
  v110 = v61;
  v65 = [(MTLDevice *)v64 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v110];
  v66 = v110;

  upscaleErrorKernel = self->_upscaleErrorKernel;
  self->_upscaleErrorKernel = v65;

  if (!self->_upscaleErrorKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_6.isa);
  }

  v68 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"subsampleInput"];

  [v12 setComputeFunction:v68];
  v69 = self->_device;
  v109 = v66;
  v70 = [(MTLDevice *)v69 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v109];
  v71 = v109;

  subsampleInputKernel = self->_subsampleInputKernel;
  self->_subsampleInputKernel = v70;

  if (!self->_subsampleInputKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_7.isa);
  }

  v73 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"padTexture"];

  [v12 setComputeFunction:v73];
  v74 = self->_device;
  v108 = v71;
  v75 = [(MTLDevice *)v74 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v108];
  v76 = v108;

  padTextureKernel = self->_padTextureKernel;
  self->_padTextureKernel = v75;

  if (!self->_padTextureKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_8.isa);
  }

  v78 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"padTexture2CTo1C"];

  [v12 setComputeFunction:v78];
  v79 = self->_device;
  v107 = v76;
  v80 = [(MTLDevice *)v79 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v107];
  v81 = v107;

  padTexture2CTO1CKernel = self->_padTexture2CTO1CKernel;
  self->_padTexture2CTO1CKernel = v80;

  if (!self->_padTexture2CTO1CKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_9.isa);
  }

  v83 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"reverseFlow"];

  [v12 setComputeFunction:v83];
  v84 = self->_device;
  v106 = v81;
  v85 = [(MTLDevice *)v84 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v106];
  v86 = v106;

  reverseFlowKernel = self->_reverseFlowKernel;
  self->_reverseFlowKernel = v85;

  if (!self->_reverseFlowKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_10.isa);
  }

  v88 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"warpWithSplattedFlow"];

  [v12 setComputeFunction:v88];
  v89 = self->_device;
  v105 = v86;
  v90 = [(MTLDevice *)v89 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v105];
  v91 = v105;

  flowSplattingWarpKernel = self->_flowSplattingWarpKernel;
  self->_flowSplattingWarpKernel = v90;

  if (!self->_flowSplattingWarpKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_11.isa);
  }

  v93 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"reshuffleAndAddFlow"];

  [v12 setComputeFunction:v93];
  v94 = self->_device;
  v104 = v91;
  v95 = [(MTLDevice *)v94 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v104];
  v96 = v104;

  flowReshuffleKernel = self->_flowReshuffleKernel;
  self->_flowReshuffleKernel = v95;

  if (!self->_flowReshuffleKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_12.isa);
  }

  v98 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"reshuffleAndAddFlow2C"];

  [v12 setComputeFunction:v98];
  v99 = self->_device;
  v103 = v96;
  v100 = [(MTLDevice *)v99 newComputePipelineStateWithDescriptor:v12 options:0 reflection:&v121 error:&v103];
  v101 = v103;

  flowReshuffleTo2CKernel = self->_flowReshuffleTo2CKernel;
  self->_flowReshuffleTo2CKernel = v100;

  if (!self->_flowReshuffleTo2CKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_13.isa);
  }
}

- (void)warpImage:(id)image to:(id)to withFlow:(id)flow upscaledFlow:(id)upscaledFlow
{
  commandQueue = self->_commandQueue;
  upscaledFlowCopy = upscaledFlow;
  flowCopy = flow;
  toCopy = to;
  imageCopy = image;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodeToCommandBuffer:commandBuffer source:imageCopy flow:flowCopy destination:toCopy upscaledFlow:upscaledFlowCopy];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)encodeToCommandBuffer:(id)buffer source:(id)source flow:(id)flow destination:(id)destination upscaledFlow:(id)upscaledFlow
{
  sourceCopy = source;
  flowCopy = flow;
  destinationCopy = destination;
  upscaledFlowCopy = upscaledFlow;
  if (sourceCopy && flowCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v17 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
      width = [upscaledFlowCopy width];
      v19 = width / [flowCopy width];
      *[v17 contents] = v19;
      if ([flowCopy pixelFormat] == 25)
      {
        v20 = 32;
      }

      else
      {
        pixelFormat = [upscaledFlowCopy pixelFormat];
        v20 = 40;
        if (pixelFormat == 65)
        {
          v20 = 48;
        }
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v20)];
      [computeCommandEncoder setTexture:sourceCopy atIndex:0];
      [computeCommandEncoder setTexture:flowCopy atIndex:1];
      [computeCommandEncoder setTexture:destinationCopy atIndex:2];
      [computeCommandEncoder setTexture:upscaledFlowCopy atIndex:3];
      [computeCommandEncoder setBuffer:v17 offset:0 atIndex:0];
      v24[0] = ([destinationCopy width] + 15) >> 4;
      v24[1] = ([destinationCopy height] + 15) >> 4;
      v24[2] = 1;
      v22 = vdupq_n_s64(0x10uLL);
      v23 = 1;
      [computeCommandEncoder dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
      [computeCommandEncoder endEncoding];
    }
  }
}

- (void)calcBackwarpLoss:(id)loss second:(id)second flow:(id)flow timeScale:(float)scale destination:(id)destination
{
  commandQueue = self->_commandQueue;
  destinationCopy = destination;
  flowCopy = flow;
  secondCopy = second;
  lossCopy = loss;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v17 = scale;
  [(Backwarp *)self encodeBackwarpLossToCommandBuffer:commandBuffer first:lossCopy second:secondCopy flow:flowCopy timeScale:destinationCopy destination:v17];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)encodeBackwarpLossToCommandBuffer:(id)buffer first:(id)first second:(id)second flow:(id)flow timeScale:(float)scale destination:(id)destination
{
  bufferCopy = buffer;
  firstCopy = first;
  secondCopy = second;
  flowCopy = flow;
  destinationCopy = destination;
  if (firstCopy && secondCopy && flowCopy)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      [Backwarp encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:];
    }

    v20 = computeCommandEncoder;
    v21 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
    *[v21 contents] = scale;
    [v20 setComputePipelineState:self->_backwarpLossKernel];
    [v20 setTexture:firstCopy atIndex:0];
    [v20 setTexture:secondCopy atIndex:1];
    [v20 setTexture:flowCopy atIndex:2];
    [v20 setTexture:destinationCopy atIndex:3];
    [v20 setBuffer:v21 offset:0 atIndex:0];
    v24[0] = ([destinationCopy width] + 15) >> 4;
    v24[1] = ([destinationCopy height] + 15) >> 4;
    v24[2] = 1;
    v22 = vdupq_n_s64(0x10uLL);
    v23 = 1;
    [v20 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
    [v20 endEncoding];
  }

  else
  {
    NSLog(&cfstr_ErrorInputOutp.isa);
  }
}

- (void)encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:(id)buffer first:(id)first second:(id)second flow:(id)flow timeScale:(float)scale gamma:(float)gamma protectionThreshold:(float)threshold destination:(id)self0
{
  destinationCopy = destination;
  flowCopy = flow;
  secondCopy = second;
  firstCopy = first;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_backwarpLossWithFlowMagnitudeKernel];
  [computeCommandEncoder setTexture:firstCopy atIndex:0];

  [computeCommandEncoder setTexture:secondCopy atIndex:1];
  [computeCommandEncoder setTexture:flowCopy atIndex:2];

  [computeCommandEncoder setTexture:destinationCopy atIndex:3];
  *v28 = scale;
  *&v28[1] = gamma;
  *&v28[2] = threshold;
  [computeCommandEncoder setBytes:v28 length:12 atIndex:0];
  v23 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v27[0] = v23;
  v27[1] = (height + 15) >> 4;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [computeCommandEncoder endEncoding];
}

- (void)upscaleFlow:(id)flow destination:(id)destination callback:(id)callback
{
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  destinationCopy = destination;
  flowCopy = flow;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodeUpscaleFlowToCommandBuffer:commandBuffer source:flowCopy destination:destinationCopy];

  kdebug_trace();
  if (callbackCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__Backwarp_upscaleFlow_destination_callback___block_invoke;
    v13[3] = &unk_278FEA498;
    v14 = callbackCopy;
    [commandBuffer addCompletedHandler:v13];

    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
  }

  else
  {
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  kdebug_trace();
}

- (void)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  width = [destinationCopy width];
  width2 = [sourceCopy width];
  width3 = [sourceCopy width];
  if ((width3 <= [sourceCopy height] || (v13 = objc_msgSend(destinationCopy, "width"), v13 >= objc_msgSend(destinationCopy, "height"))) && ((v14 = (width / width2), v15 = objc_msgSend(sourceCopy, "width"), v15 >= objc_msgSend(sourceCopy, "height")) || (v16 = objc_msgSend(destinationCopy, "width"), v16 <= objc_msgSend(destinationCopy, "height"))))
  {
    v18 = 0;
  }

  else
  {
    height = [destinationCopy height];
    v14 = (height / [sourceCopy width]);
    v18 = 1;
  }

  v19 = fmax(v14, 2.0);
  *&v19 = v19;
  [(Backwarp *)self encodeUpscaleFlowToCommandBuffer:bufferCopy source:sourceCopy destination:destinationCopy scaleFactor:v18 rotation:v19];
}

- (void)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination scaleFactor:(float)factor rotation:(BOOL)rotation
{
  sourceCopy = source;
  destinationCopy = destination;
  v14 = destinationCopy;
  if (sourceCopy && destinationCopy)
  {
    *v21 = factor;
    *&v21[1] = 1.0 / factor;
    v21[2] = rotation;
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      if ([sourceCopy pixelFormat] == 65)
      {
        pixelFormat = [v14 pixelFormat];
        v17 = 72;
        if (pixelFormat == 65)
        {
          v17 = 80;
        }
      }

      else
      {
        v17 = 64;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v17)];
      [computeCommandEncoder setTexture:sourceCopy atIndex:0];
      [computeCommandEncoder setTexture:v14 atIndex:1];
      [computeCommandEncoder setBytes:v21 length:12 atIndex:0];
      v20[0] = ([v14 width] + 15) >> 4;
      v20[1] = ([v14 height] + 15) >> 4;
      v20[2] = 1;
      v18 = vdupq_n_s64(0x10uLL);
      v19 = 1;
      [computeCommandEncoder dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
      [computeCommandEncoder endEncoding];
    }
  }
}

- (void)encodeSubsampleToCommandBufferr:(id)bufferr source:(id)source destination:(id)destination kernel:(id)kernel
{
  bufferrCopy = bufferr;
  sourceCopy = source;
  destinationCopy = destination;
  kernelCopy = kernel;
  if (!sourceCopy || !destinationCopy || (v13 = kernelCopy) == 0)
  {
    [Backwarp encodeSubsampleToCommandBufferr:source:destination:kernel:];
  }

  computeCommandEncoder = [bufferrCopy computeCommandEncoder];
  v15 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:v13];
    [v15 setTexture:sourceCopy atIndex:0];
    [v15 setTexture:destinationCopy atIndex:1];
    v18[0] = ([destinationCopy width] + 15) >> 4;
    v18[1] = ([destinationCopy height] + 15) >> 4;
    v18[2] = 1;
    v16 = vdupq_n_s64(0x10uLL);
    v17 = 1;
    [v15 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
    [v15 endEncoding];
  }
}

- (void)encodeSubsampleInputToCommandBufferr:(id)bufferr source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  computeCommandEncoder = [bufferr computeCommandEncoder];
  width = [sourceCopy width];
  v12 = width / [destinationCopy width];
  v13 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  *[v13 contents] = v12;
  [computeCommandEncoder setComputePipelineState:self->_subsampleInputKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:v13 offset:0 atIndex:0];
  v14 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v18[0] = v14;
  v18[1] = (height + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)copyTextureWithPaddingSource:(id)source destination:(id)destination callback:(id)callback
{
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  destinationCopy = destination;
  sourceCopy = source;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodePaddingTextureToCommandBuffer:commandBuffer source:sourceCopy destination:destinationCopy];

  if (callbackCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__Backwarp_copyTextureWithPaddingSource_destination_callback___block_invoke;
    v13[3] = &unk_278FEA498;
    v14 = callbackCopy;
    [commandBuffer addCompletedHandler:v13];

    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
  }

  else
  {
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }
}

- (void)encodePaddingTextureToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  sourceCopy = source;
  destinationCopy = destination;
  v10 = destinationCopy;
  if (sourceCopy && destinationCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      if ([sourceCopy pixelFormat] == 65 && objc_msgSend(v10, "pixelFormat") == 25)
      {
        v12 = 136;
      }

      else
      {
        v12 = 128;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v12)];
      [computeCommandEncoder setTexture:sourceCopy atIndex:0];
      [computeCommandEncoder setTexture:v10 atIndex:1];
      v15[0] = ([v10 width] + 15) >> 4;
      v15[1] = ([v10 height] + 15) >> 4;
      v15[2] = 1;
      v13 = vdupq_n_s64(0x10uLL);
      v14 = 1;
      [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
      [computeCommandEncoder endEncoding];
    }
  }
}

- (void)reverseFlowWithSource:(id)source destination:(id)destination
{
  commandQueue = self->_commandQueue;
  destinationCopy = destination;
  sourceCopy = source;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodeReverseFlowToCommandBuffer:commandBuffer source:sourceCopy destination:destinationCopy];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)encodeReverseFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  sourceCopy = source;
  destinationCopy = destination;
  v10 = destinationCopy;
  if (sourceCopy && destinationCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    v12 = computeCommandEncoder;
    if (computeCommandEncoder)
    {
      [computeCommandEncoder setComputePipelineState:self->_reverseFlowKernel];
      [v12 setTexture:sourceCopy atIndex:0];
      [v12 setTexture:v10 atIndex:1];
      v15[0] = ([v10 width] + 15) >> 4;
      v15[1] = ([v10 height] + 15) >> 4;
      v15[2] = 1;
      v13 = vdupq_n_s64(0x10uLL);
      v14 = 1;
      [v12 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
      [v12 endEncoding];
    }
  }
}

- (void)encodeFlowSplattingWarpToCommandBuffer:(id)buffer source:(id)source flow:(id)flow timeScale:(float)scale destination:(id)destination
{
  destinationCopy = destination;
  flowCopy = flow;
  sourceCopy = source;
  bufferCopy = buffer;
  width = [sourceCopy width];
  v17 = (width / [flowCopy width]);
  v18 = [(MTLDevice *)self->_device newBufferWithLength:12 options:0];
  contents = [v18 contents];
  *contents = v17 * scale;
  contents[1] = 1.0 / v17;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_flowSplattingWarpKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:flowCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  [computeCommandEncoder setBuffer:v18 offset:0 atIndex:0];
  v21 = objc_alloc_init(MEMORY[0x277CD6FD0]);
  [v21 setTAddressMode:0];
  [v21 setSAddressMode:0];
  [v21 setNormalizedCoordinates:0];
  [v21 setMinFilter:1];
  [v21 setMagFilter:1];
  v22 = [(MTLDevice *)self->_device newSamplerStateWithDescriptor:v21];
  [computeCommandEncoder setSamplerState:v22 atIndex:0];
  v23 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v27[0] = v23;
  v27[1] = (height + 15) >> 4;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [computeCommandEncoder endEncoding];
}

- (void)encodeReShuffleFlowToCommandBuffer:(id)buffer shuffledFlow:(id)flow previousFlow:(id)previousFlow destination:(id)destination
{
  destinationCopy = destination;
  previousFlowCopy = previousFlow;
  flowCopy = flow;
  computeCommandEncoder = [buffer computeCommandEncoder];
  pixelFormat = [destinationCopy pixelFormat];
  v15 = 160;
  if (pixelFormat == 65)
  {
    v15 = 168;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v15)];
  [computeCommandEncoder setTexture:flowCopy atIndex:0];

  [computeCommandEncoder setTexture:previousFlowCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  v18[0] = ([destinationCopy width] + 15) >> 4;
  v18[1] = ([destinationCopy height] + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

@end
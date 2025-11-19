@interface Backwarp
- (Backwarp)initWithDevice:(id)a3 interleaved:(BOOL)a4;
- (void)calcBackwarpLoss:(id)a3 second:(id)a4 flow:(id)a5 timeScale:(float)a6 destination:(id)a7;
- (void)copyTextureWithPaddingSource:(id)a3 destination:(id)a4 callback:(id)a5;
- (void)dealloc;
- (void)encodeBackwarpLossToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 flow:(id)a6 timeScale:(float)a7 destination:(id)a8;
- (void)encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 flow:(id)a6 timeScale:(float)a7 gamma:(float)a8 protectionThreshold:(float)a9 destination:(id)a10;
- (void)encodeFlowSplattingWarpToCommandBuffer:(id)a3 source:(id)a4 flow:(id)a5 timeScale:(float)a6 destination:(id)a7;
- (void)encodePaddingTextureToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeReShuffleFlowToCommandBuffer:(id)a3 shuffledFlow:(id)a4 previousFlow:(id)a5 destination:(id)a6;
- (void)encodeReverseFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeSubsampleInputToCommandBufferr:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeSubsampleToCommandBufferr:(id)a3 source:(id)a4 destination:(id)a5 kernel:(id)a6;
- (void)encodeToCommandBuffer:(id)a3 source:(id)a4 flow:(id)a5 destination:(id)a6 upscaledFlow:(id)a7;
- (void)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 scaleFactor:(float)a6 rotation:(BOOL)a7;
- (void)reverseFlowWithSource:(id)a3 destination:(id)a4;
- (void)setupMetal;
- (void)upscaleFlow:(id)a3 destination:(id)a4 callback:(id)a5;
- (void)warpImage:(id)a3 to:(id)a4 withFlow:(id)a5 upscaledFlow:(id)a6;
@end

@implementation Backwarp

- (Backwarp)initWithDevice:(id)a3 interleaved:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = Backwarp;
  v8 = [(Backwarp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_interleaved = a4;
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
  v3 = [(MTLDevice *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.FRC"];
  v6 = [v5 URLForResource:@"default" withExtension:@"metallib"];
  device = self->_device;
  if (v6)
  {
    v8 = [(MTLDevice *)device newLibraryWithURL:v6 error:0];
  }

  else
  {
    v8 = [(MTLDevice *)device newDefaultLibrary];
  }

  mtlLibrary = self->_mtlLibrary;
  self->_mtlLibrary = v8;

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

- (void)warpImage:(id)a3 to:(id)a4 withFlow:(id)a5 upscaledFlow:(id)a6
{
  commandQueue = self->_commandQueue;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodeToCommandBuffer:v15 source:v14 flow:v12 destination:v13 upscaledFlow:v11];

  [v15 commit];
  [v15 waitUntilCompleted];
}

- (void)encodeToCommandBuffer:(id)a3 source:(id)a4 flow:(id)a5 destination:(id)a6 upscaledFlow:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12 && v13)
  {
    v16 = [a3 computeCommandEncoder];
    if (v16)
    {
      v17 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
      v18 = [v15 width];
      v19 = v18 / [v13 width];
      *[v17 contents] = v19;
      if ([v13 pixelFormat] == 25)
      {
        v20 = 32;
      }

      else
      {
        v21 = [v15 pixelFormat];
        v20 = 40;
        if (v21 == 65)
        {
          v20 = 48;
        }
      }

      [v16 setComputePipelineState:*(&self->super.isa + v20)];
      [v16 setTexture:v12 atIndex:0];
      [v16 setTexture:v13 atIndex:1];
      [v16 setTexture:v14 atIndex:2];
      [v16 setTexture:v15 atIndex:3];
      [v16 setBuffer:v17 offset:0 atIndex:0];
      v24[0] = ([v14 width] + 15) >> 4;
      v24[1] = ([v14 height] + 15) >> 4;
      v24[2] = 1;
      v22 = vdupq_n_s64(0x10uLL);
      v23 = 1;
      [v16 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
      [v16 endEncoding];
    }
  }
}

- (void)calcBackwarpLoss:(id)a3 second:(id)a4 flow:(id)a5 timeScale:(float)a6 destination:(id)a7
{
  commandQueue = self->_commandQueue;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v18 = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v17 = a6;
  [(Backwarp *)self encodeBackwarpLossToCommandBuffer:v18 first:v16 second:v15 flow:v14 timeScale:v13 destination:v17];

  [v18 commit];
  [v18 waitUntilCompleted];
}

- (void)encodeBackwarpLossToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 flow:(id)a6 timeScale:(float)a7 destination:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v15 && v16 && v17)
  {
    v19 = [v14 computeCommandEncoder];
    if (!v19)
    {
      [Backwarp encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:];
    }

    v20 = v19;
    v21 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
    *[v21 contents] = a7;
    [v20 setComputePipelineState:self->_backwarpLossKernel];
    [v20 setTexture:v15 atIndex:0];
    [v20 setTexture:v16 atIndex:1];
    [v20 setTexture:v17 atIndex:2];
    [v20 setTexture:v18 atIndex:3];
    [v20 setBuffer:v21 offset:0 atIndex:0];
    v24[0] = ([v18 width] + 15) >> 4;
    v24[1] = ([v18 height] + 15) >> 4;
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

- (void)encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 flow:(id)a6 timeScale:(float)a7 gamma:(float)a8 protectionThreshold:(float)a9 destination:(id)a10
{
  v18 = a10;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [a3 computeCommandEncoder];
  [v22 setComputePipelineState:self->_backwarpLossWithFlowMagnitudeKernel];
  [v22 setTexture:v21 atIndex:0];

  [v22 setTexture:v20 atIndex:1];
  [v22 setTexture:v19 atIndex:2];

  [v22 setTexture:v18 atIndex:3];
  *v28 = a7;
  *&v28[1] = a8;
  *&v28[2] = a9;
  [v22 setBytes:v28 length:12 atIndex:0];
  v23 = ([v18 width] + 15) >> 4;
  v24 = [v18 height];

  v27[0] = v23;
  v27[1] = (v24 + 15) >> 4;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [v22 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [v22 endEncoding];
}

- (void)upscaleFlow:(id)a3 destination:(id)a4 callback:(id)a5
{
  v8 = a5;
  commandQueue = self->_commandQueue;
  v10 = a4;
  v11 = a3;
  v12 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodeUpscaleFlowToCommandBuffer:v12 source:v11 destination:v10];

  kdebug_trace();
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__Backwarp_upscaleFlow_destination_callback___block_invoke;
    v13[3] = &unk_278FEA498;
    v14 = v8;
    [v12 addCompletedHandler:v13];

    [v12 commit];
    [v12 waitUntilScheduled];
  }

  else
  {
    [v12 commit];
    [v12 waitUntilCompleted];
  }

  kdebug_trace();
}

- (void)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 width];
  v11 = [v8 width];
  v12 = [v8 width];
  if ((v12 <= [v8 height] || (v13 = objc_msgSend(v9, "width"), v13 >= objc_msgSend(v9, "height"))) && ((v14 = (v10 / v11), v15 = objc_msgSend(v8, "width"), v15 >= objc_msgSend(v8, "height")) || (v16 = objc_msgSend(v9, "width"), v16 <= objc_msgSend(v9, "height"))))
  {
    v18 = 0;
  }

  else
  {
    v17 = [v9 height];
    v14 = (v17 / [v8 width]);
    v18 = 1;
  }

  v19 = fmax(v14, 2.0);
  *&v19 = v19;
  [(Backwarp *)self encodeUpscaleFlowToCommandBuffer:v20 source:v8 destination:v9 scaleFactor:v18 rotation:v19];
}

- (void)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 scaleFactor:(float)a6 rotation:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v12 && v13)
  {
    *v21 = a6;
    *&v21[1] = 1.0 / a6;
    v21[2] = a7;
    v15 = [a3 computeCommandEncoder];
    if (v15)
    {
      if ([v12 pixelFormat] == 65)
      {
        v16 = [v14 pixelFormat];
        v17 = 72;
        if (v16 == 65)
        {
          v17 = 80;
        }
      }

      else
      {
        v17 = 64;
      }

      [v15 setComputePipelineState:*(&self->super.isa + v17)];
      [v15 setTexture:v12 atIndex:0];
      [v15 setTexture:v14 atIndex:1];
      [v15 setBytes:v21 length:12 atIndex:0];
      v20[0] = ([v14 width] + 15) >> 4;
      v20[1] = ([v14 height] + 15) >> 4;
      v20[2] = 1;
      v18 = vdupq_n_s64(0x10uLL);
      v19 = 1;
      [v15 dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
      [v15 endEncoding];
    }
  }
}

- (void)encodeSubsampleToCommandBufferr:(id)a3 source:(id)a4 destination:(id)a5 kernel:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10 || !v11 || (v13 = v12) == 0)
  {
    [Backwarp encodeSubsampleToCommandBufferr:source:destination:kernel:];
  }

  v14 = [v9 computeCommandEncoder];
  v15 = v14;
  if (v14)
  {
    [v14 setComputePipelineState:v13];
    [v15 setTexture:v10 atIndex:0];
    [v15 setTexture:v11 atIndex:1];
    v18[0] = ([v11 width] + 15) >> 4;
    v18[1] = ([v11 height] + 15) >> 4;
    v18[2] = 1;
    v16 = vdupq_n_s64(0x10uLL);
    v17 = 1;
    [v15 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
    [v15 endEncoding];
  }
}

- (void)encodeSubsampleInputToCommandBufferr:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  v11 = [v9 width];
  v12 = v11 / [v8 width];
  v13 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  *[v13 contents] = v12;
  [v10 setComputePipelineState:self->_subsampleInputKernel];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  [v10 setBuffer:v13 offset:0 atIndex:0];
  v14 = ([v8 width] + 15) >> 4;
  v15 = [v8 height];

  v18[0] = v14;
  v18[1] = (v15 + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [v10 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v10 endEncoding];
}

- (void)copyTextureWithPaddingSource:(id)a3 destination:(id)a4 callback:(id)a5
{
  v8 = a5;
  commandQueue = self->_commandQueue;
  v10 = a4;
  v11 = a3;
  v12 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodePaddingTextureToCommandBuffer:v12 source:v11 destination:v10];

  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__Backwarp_copyTextureWithPaddingSource_destination_callback___block_invoke;
    v13[3] = &unk_278FEA498;
    v14 = v8;
    [v12 addCompletedHandler:v13];

    [v12 commit];
    [v12 waitUntilScheduled];
  }

  else
  {
    [v12 commit];
    [v12 waitUntilCompleted];
  }
}

- (void)encodePaddingTextureToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [a3 computeCommandEncoder];
    if (v11)
    {
      if ([v8 pixelFormat] == 65 && objc_msgSend(v10, "pixelFormat") == 25)
      {
        v12 = 136;
      }

      else
      {
        v12 = 128;
      }

      [v11 setComputePipelineState:*(&self->super.isa + v12)];
      [v11 setTexture:v8 atIndex:0];
      [v11 setTexture:v10 atIndex:1];
      v15[0] = ([v10 width] + 15) >> 4;
      v15[1] = ([v10 height] + 15) >> 4;
      v15[2] = 1;
      v13 = vdupq_n_s64(0x10uLL);
      v14 = 1;
      [v11 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
      [v11 endEncoding];
    }
  }
}

- (void)reverseFlowWithSource:(id)a3 destination:(id)a4
{
  commandQueue = self->_commandQueue;
  v7 = a4;
  v8 = a3;
  v9 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Backwarp *)self encodeReverseFlowToCommandBuffer:v9 source:v8 destination:v7];

  [v9 commit];
  [v9 waitUntilCompleted];
}

- (void)encodeReverseFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [a3 computeCommandEncoder];
    v12 = v11;
    if (v11)
    {
      [v11 setComputePipelineState:self->_reverseFlowKernel];
      [v12 setTexture:v8 atIndex:0];
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

- (void)encodeFlowSplattingWarpToCommandBuffer:(id)a3 source:(id)a4 flow:(id)a5 timeScale:(float)a6 destination:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v14 width];
  v17 = (v16 / [v13 width]);
  v18 = [(MTLDevice *)self->_device newBufferWithLength:12 options:0];
  v19 = [v18 contents];
  *v19 = v17 * a6;
  v19[1] = 1.0 / v17;
  v20 = [v15 computeCommandEncoder];

  [v20 setComputePipelineState:self->_flowSplattingWarpKernel];
  [v20 setTexture:v14 atIndex:0];

  [v20 setTexture:v13 atIndex:1];
  [v20 setTexture:v12 atIndex:2];
  [v20 setBuffer:v18 offset:0 atIndex:0];
  v21 = objc_alloc_init(MEMORY[0x277CD6FD0]);
  [v21 setTAddressMode:0];
  [v21 setSAddressMode:0];
  [v21 setNormalizedCoordinates:0];
  [v21 setMinFilter:1];
  [v21 setMagFilter:1];
  v22 = [(MTLDevice *)self->_device newSamplerStateWithDescriptor:v21];
  [v20 setSamplerState:v22 atIndex:0];
  v23 = ([v12 width] + 15) >> 4;
  v24 = [v12 height];

  v27[0] = v23;
  v27[1] = (v24 + 15) >> 4;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [v20 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [v20 endEncoding];
}

- (void)encodeReShuffleFlowToCommandBuffer:(id)a3 shuffledFlow:(id)a4 previousFlow:(id)a5 destination:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  v14 = [v10 pixelFormat];
  v15 = 160;
  if (v14 == 65)
  {
    v15 = 168;
  }

  [v13 setComputePipelineState:*(&self->super.isa + v15)];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v10 atIndex:2];
  v18[0] = ([v10 width] + 15) >> 4;
  v18[1] = ([v10 height] + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [v13 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v13 endEncoding];
}

@end
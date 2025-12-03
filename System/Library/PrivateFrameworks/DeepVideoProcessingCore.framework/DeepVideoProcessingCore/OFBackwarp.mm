@interface OFBackwarp
- (OFBackwarp)initWithDevice:(id)device interleaved:(BOOL)interleaved;
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

@implementation OFBackwarp

- (OFBackwarp)initWithDevice:(id)device interleaved:(BOOL)interleaved
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = OFBackwarp;
  v8 = [(OFBackwarp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_interleaved = interleaved;
    [(OFBackwarp *)v9 setupMetal];
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFBackwarp;
  [(OFBackwarp *)&v2 dealloc];
}

- (void)setupMetal
{
  newCommandQueue = [(MTLDevice *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:@"opticalFlowMetalLib" withExtension:@"metallib"];
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
  if (!v11 && (global_logLevel & 0x10) != 0)
  {
    v12 = global_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v149 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v13 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  [v13 setComputeFunction:v11];
  v14 = self->_device;
  v148 = 0;
  v15 = [(MTLDevice *)v14 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v148];
  v16 = v148;
  backwarpKernel = self->_backwarpKernel;
  self->_backwarpKernel = v15;

  if (!self->_backwarpKernel && (global_logLevel & 0x10) != 0)
  {
    v18 = global_logger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v19 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpWithInterleavedFlow"];

  [v13 setComputeFunction:v19];
  v20 = self->_device;
  v147 = v16;
  v21 = [(MTLDevice *)v20 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v147];
  v22 = v147;

  backwarpInterleavedKernel = self->_backwarpInterleavedKernel;
  self->_backwarpInterleavedKernel = v21;

  if (!self->_backwarpInterleavedKernel && (global_logLevel & 0x10) != 0)
  {
    v24 = global_logger;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v25 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpWithInterleavedFlowToInterleavedFlow"];

  [v13 setComputeFunction:v25];
  v26 = self->_device;
  v146 = v22;
  v27 = [(MTLDevice *)v26 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v146];
  v28 = v146;

  backwarpInterleavedWithInterleavedFlowOutputKernel = self->_backwarpInterleavedWithInterleavedFlowOutputKernel;
  self->_backwarpInterleavedWithInterleavedFlowOutputKernel = v27;

  if (!self->_backwarpInterleavedWithInterleavedFlowOutputKernel && (global_logLevel & 0x10) != 0)
  {
    v30 = global_logger;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  if (self->_interleaved)
  {
    v31 = @"backwarpLoss";
  }

  else
  {
    v31 = @"backwarpLossNonInterleaved";
  }

  v32 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:v31];

  if (!v32 && (global_logLevel & 0x10) != 0)
  {
    v33 = global_logger;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  [v13 setComputeFunction:v32];
  v34 = self->_device;
  v145 = v28;
  v35 = [(MTLDevice *)v34 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v145];
  v36 = v145;

  backwarpLossKernel = self->_backwarpLossKernel;
  self->_backwarpLossKernel = v35;

  if (!self->_backwarpLossKernel && (global_logLevel & 0x10) != 0)
  {
    v38 = global_logger;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v39 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpLossWithFlowMagnitude"];

  [v13 setComputeFunction:v39];
  v40 = self->_device;
  v144 = v36;
  v41 = [(MTLDevice *)v40 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v144];
  v42 = v144;

  backwarpLossWithFlowMagnitudeKernel = self->_backwarpLossWithFlowMagnitudeKernel;
  self->_backwarpLossWithFlowMagnitudeKernel = v41;

  if (!self->_backwarpLossWithFlowMagnitudeKernel && (global_logLevel & 0x10) != 0)
  {
    v44 = global_logger;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v45 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleFlow"];

  if (!v45 && (global_logLevel & 0x10) != 0)
  {
    v46 = global_logger;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  [v13 setComputeFunction:v45];
  v47 = self->_device;
  v143 = v42;
  v48 = [(MTLDevice *)v47 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v143];
  v49 = v143;

  flowUpscaleKernel = self->_flowUpscaleKernel;
  self->_flowUpscaleKernel = v48;

  if (!self->_flowUpscaleKernel && (global_logLevel & 0x10) != 0)
  {
    v51 = global_logger;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v52 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleFlow2CTo1C"];

  [v13 setComputeFunction:v52];
  v53 = self->_device;
  v142 = v49;
  v54 = [(MTLDevice *)v53 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v142];
  v55 = v142;

  flowUpscale2CTo1CKernel = self->_flowUpscale2CTo1CKernel;
  self->_flowUpscale2CTo1CKernel = v54;

  if (!self->_flowUpscale2CTo1CKernel && (global_logLevel & 0x10) != 0)
  {
    v57 = global_logger;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v58 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleFlow2CTo2C"];

  [v13 setComputeFunction:v58];
  v59 = self->_device;
  v141 = v55;
  v60 = [(MTLDevice *)v59 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v141];
  v61 = v141;

  flowUpscale2CTo2CKernel = self->_flowUpscale2CTo2CKernel;
  self->_flowUpscale2CTo2CKernel = v60;

  if (!self->_flowUpscale2CTo2CKernel && (global_logLevel & 0x10) != 0)
  {
    v63 = global_logger;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v64 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"subsampleFlow"];

  [v13 setComputeFunction:v64];
  v65 = self->_device;
  v140 = v61;
  v66 = [(MTLDevice *)v65 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v140];
  v67 = v140;

  subsampleFlowKernel = self->_subsampleFlowKernel;
  self->_subsampleFlowKernel = v66;

  if (!self->_subsampleFlowKernel && (global_logLevel & 0x10) != 0)
  {
    v69 = global_logger;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v70 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"subsampleError"];

  [v13 setComputeFunction:v70];
  v71 = self->_device;
  v139 = v67;
  v72 = [(MTLDevice *)v71 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v139];
  v73 = v139;

  subsampleErrorKernel = self->_subsampleErrorKernel;
  self->_subsampleErrorKernel = v72;

  if (!self->_subsampleErrorKernel && (global_logLevel & 0x10) != 0)
  {
    v75 = global_logger;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v76 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"upscaleError"];

  [v13 setComputeFunction:v76];
  v77 = self->_device;
  v138 = v73;
  v78 = [(MTLDevice *)v77 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v138];
  v79 = v138;

  upscaleErrorKernel = self->_upscaleErrorKernel;
  self->_upscaleErrorKernel = v78;

  if (!self->_upscaleErrorKernel && (global_logLevel & 0x10) != 0)
  {
    v81 = global_logger;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v82 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"subsampleInput"];

  [v13 setComputeFunction:v82];
  v83 = self->_device;
  v137 = v79;
  v84 = [(MTLDevice *)v83 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v137];
  v85 = v137;

  subsampleInputKernel = self->_subsampleInputKernel;
  self->_subsampleInputKernel = v84;

  if (!self->_subsampleInputKernel && (global_logLevel & 0x10) != 0)
  {
    v87 = global_logger;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v88 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"padTexture"];

  [v13 setComputeFunction:v88];
  v89 = self->_device;
  v136 = v85;
  v90 = [(MTLDevice *)v89 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v136];
  v91 = v136;

  padTextureKernel = self->_padTextureKernel;
  self->_padTextureKernel = v90;

  if (!self->_padTextureKernel && (global_logLevel & 0x10) != 0)
  {
    v93 = global_logger;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v94 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"padTexture2CTo1C"];

  [v13 setComputeFunction:v94];
  v95 = self->_device;
  v135 = v91;
  v96 = [(MTLDevice *)v95 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v135];
  v97 = v135;

  padTexture2CTO1CKernel = self->_padTexture2CTO1CKernel;
  self->_padTexture2CTO1CKernel = v96;

  if (!self->_padTexture2CTO1CKernel && (global_logLevel & 0x10) != 0)
  {
    v99 = global_logger;
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v100 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"padTexture2CTo2C"];

  [v13 setComputeFunction:v100];
  v101 = self->_device;
  v134 = v97;
  v102 = [(MTLDevice *)v101 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v134];
  v103 = v134;

  padTexture2CTO2CKernel = self->_padTexture2CTO2CKernel;
  self->_padTexture2CTO2CKernel = v102;

  if (!self->_padTexture2CTO2CKernel && (global_logLevel & 0x10) != 0)
  {
    v105 = global_logger;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v106 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"reverseFlow"];

  [v13 setComputeFunction:v106];
  v107 = self->_device;
  v133 = v103;
  v108 = [(MTLDevice *)v107 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v133];
  v109 = v133;

  reverseFlowKernel = self->_reverseFlowKernel;
  self->_reverseFlowKernel = v108;

  if (!self->_reverseFlowKernel && (global_logLevel & 0x10) != 0)
  {
    v111 = global_logger;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v112 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"warpWithSplattedFlow"];

  [v13 setComputeFunction:v112];
  v113 = self->_device;
  v132 = v109;
  v114 = [(MTLDevice *)v113 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v132];
  v115 = v132;

  flowSplattingWarpKernel = self->_flowSplattingWarpKernel;
  self->_flowSplattingWarpKernel = v114;

  if (!self->_flowSplattingWarpKernel && (global_logLevel & 0x10) != 0)
  {
    v117 = global_logger;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v118 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"reshuffleAndAddFlow"];

  [v13 setComputeFunction:v118];
  v119 = self->_device;
  v131 = v115;
  v120 = [(MTLDevice *)v119 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v131];
  v121 = v131;

  flowReshuffleKernel = self->_flowReshuffleKernel;
  self->_flowReshuffleKernel = v120;

  if (!self->_flowReshuffleKernel && (global_logLevel & 0x10) != 0)
  {
    v123 = global_logger;
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
  }

  v124 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"reshuffleAndAddFlow2C"];

  [v13 setComputeFunction:v124];
  v125 = self->_device;
  v130 = v121;
  v126 = [(MTLDevice *)v125 newComputePipelineStateWithDescriptor:v13 options:0 reflection:&v149 error:&v130];
  v127 = v130;

  flowReshuffleTo2CKernel = self->_flowReshuffleTo2CKernel;
  self->_flowReshuffleTo2CKernel = v126;

  if (!self->_flowReshuffleTo2CKernel && (global_logLevel & 0x10) != 0)
  {
    v129 = global_logger;
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      [OFBackwarp setupMetal];
    }
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
  [(OFBackwarp *)self encodeToCommandBuffer:commandBuffer source:imageCopy flow:flowCopy destination:toCopy upscaledFlow:upscaledFlowCopy];

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
  [(OFBackwarp *)self encodeBackwarpLossToCommandBuffer:commandBuffer first:lossCopy second:secondCopy flow:flowCopy timeScale:destinationCopy destination:v17];

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
      [OFBackwarp encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:];
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

  else if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
  {
    [OFBackwarp encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:];
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
  [(OFBackwarp *)self encodeUpscaleFlowToCommandBuffer:commandBuffer source:flowCopy destination:destinationCopy];

  kdebug_trace();
  if (callbackCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__OFBackwarp_upscaleFlow_destination_callback___block_invoke;
    v13[3] = &unk_278F537B8;
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
  [(OFBackwarp *)self encodeUpscaleFlowToCommandBuffer:bufferCopy source:sourceCopy destination:destinationCopy scaleFactor:v18 rotation:v19];
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
    [OFBackwarp encodeSubsampleToCommandBufferr:source:destination:kernel:];
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
  [(OFBackwarp *)self encodePaddingTextureToCommandBuffer:commandBuffer source:sourceCopy destination:destinationCopy];

  if (callbackCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__OFBackwarp_copyTextureWithPaddingSource_destination_callback___block_invoke;
    v13[3] = &unk_278F537B8;
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

      else if ([sourceCopy pixelFormat] == 65 && objc_msgSend(v10, "pixelFormat") == 65)
      {
        v12 = 144;
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
  [(OFBackwarp *)self encodeReverseFlowToCommandBuffer:commandBuffer source:sourceCopy destination:destinationCopy];

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
  v15 = 168;
  if (pixelFormat == 65)
  {
    v15 = 176;
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
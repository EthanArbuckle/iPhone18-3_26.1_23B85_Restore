@interface OFBackwarp
- (OFBackwarp)initWithDevice:(id)a3 interleaved:(BOOL)a4;
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

@implementation OFBackwarp

- (OFBackwarp)initWithDevice:(id)a3 interleaved:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OFBackwarp;
  v8 = [(OFBackwarp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_interleaved = a4;
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
  v3 = [(MTLDevice *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:@"opticalFlowMetalLib" withExtension:@"metallib"];
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

- (void)warpImage:(id)a3 to:(id)a4 withFlow:(id)a5 upscaledFlow:(id)a6
{
  commandQueue = self->_commandQueue;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(OFBackwarp *)self encodeToCommandBuffer:v15 source:v14 flow:v12 destination:v13 upscaledFlow:v11];

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
  [(OFBackwarp *)self encodeBackwarpLossToCommandBuffer:v18 first:v16 second:v15 flow:v14 timeScale:v13 destination:v17];

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
      [OFBackwarp encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:];
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

  else if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
  {
    [OFBackwarp encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:];
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
  [(OFBackwarp *)self encodeUpscaleFlowToCommandBuffer:v12 source:v11 destination:v10];

  kdebug_trace();
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__OFBackwarp_upscaleFlow_destination_callback___block_invoke;
    v13[3] = &unk_278F537B8;
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
  [(OFBackwarp *)self encodeUpscaleFlowToCommandBuffer:v20 source:v8 destination:v9 scaleFactor:v18 rotation:v19];
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
    [OFBackwarp encodeSubsampleToCommandBufferr:source:destination:kernel:];
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
  [(OFBackwarp *)self encodePaddingTextureToCommandBuffer:v12 source:v11 destination:v10];

  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__OFBackwarp_copyTextureWithPaddingSource_destination_callback___block_invoke;
    v13[3] = &unk_278F537B8;
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

      else if ([v8 pixelFormat] == 65 && objc_msgSend(v10, "pixelFormat") == 65)
      {
        v12 = 144;
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
  [(OFBackwarp *)self encodeReverseFlowToCommandBuffer:v9 source:v8 destination:v7];

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
  v15 = 168;
  if (v14 == 65)
  {
    v15 = 176;
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
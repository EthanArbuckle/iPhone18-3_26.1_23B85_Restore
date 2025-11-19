@interface TextureProcessorMetalSession
- (TextureProcessorMetalSession)initWithLoadingBundlePipelines:(BOOL)a3;
- (id)createShaderRWTexture2DWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (id)createShaderRWTexture2DWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5 mipmapLevelCount:(unint64_t)a6;
- (id)makeAlchemistAnimationLoadingTextureFrom:(id)a3 blurSigma:(float)a4 resolution:(int)a5;
- (id)makeAlchemistGlowrayTextureFrom:(id)a3 insetSamplePercent:(float)a4 cornerRadius:(float)a5;
- (id)makeSpatialPhotoMixedLightSpillTextureFrom:(id)a3 blurSigma:(float)a4 resolution:(int)a5;
- (int)blitStereoImageTextureIntoSeparateTextures:(id)a3 withCommandBuffer:(id)a4 outputLeftTexture:(id)a5 outputRightTexture:(id)a6;
- (int)configureGPU;
- (int)loadBundleShaderPipelines;
@end

@implementation TextureProcessorMetalSession

- (TextureProcessorMetalSession)initWithLoadingBundlePipelines:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = TextureProcessorMetalSession;
  v4 = [(TextureProcessorMetalSession *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(TextureProcessorMetalSession *)v4 configureGPU];
    if (!v6)
    {
      if (v3)
      {
        v9 = [(TextureProcessorMetalSession *)v5 loadBundleShaderPipelines];
        if (v9)
        {
          v10 = *re::imagePresentationLogObjects(v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v12 = 0;
            _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "[ImagePresentationTextureProcessorMetalSession] Error loading bundle shader pipelines", v12, 2u);
          }

          goto LABEL_3;
        }
      }

      else
      {
        v11 = *re::imagePresentationLogObjects(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[ImagePresentationTextureProcessorMetalSession] init w/o loading bundle shader pipelines", v12, 2u);
        }
      }

      v7 = v5;
      goto LABEL_4;
    }
  }

LABEL_3:
  v7 = 0;
LABEL_4:

  return v7;
}

- (int)configureGPU
{
  v3 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v3;

  v5 = self->_device;
  if (!v5)
  {
    v16 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v22 = 0;
    v17 = "[ImagePresentationTextureProcessorMetalSession] Unable to get metal device.";
    v18 = &v22;
LABEL_14:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    return 1;
  }

  v6 = [(MTLDevice *)v5 newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v6;

  if (!self->_commandQueue)
  {
    v16 = *re::imagePresentationLogObjects(v8);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v21 = 0;
    v17 = "[ImagePresentationTextureProcessorMetalSession] Unable to get command queue.";
    v18 = &v21;
    goto LABEL_14;
  }

  v9 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:self->_device];
  bilinearScale = self->_bilinearScale;
  self->_bilinearScale = v9;

  if (!self->_bilinearScale)
  {
    v16 = *re::imagePresentationLogObjects(v11);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v20 = 0;
    v17 = "[ImagePresentationTextureProcessorMetalSession] Unable to initialize bilinear scaling filter";
    v18 = &v20;
    goto LABEL_14;
  }

  v12 = [objc_alloc(MEMORY[0x1E6974560]) initWithDevice:self->_device];
  mixKernel = self->_mixKernel;
  self->_mixKernel = v12;

  if (self->_mixKernel)
  {
    return 0;
  }

  v16 = *re::imagePresentationLogObjects(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = 0;
    v17 = "[ImagePresentationTextureProcessorMetalSession] Unable to initialize mix kernel";
    v18 = &v19;
    goto LABEL_14;
  }

  return 1;
}

- (int)loadBundleShaderPipelines
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *re::imagePresentationLogObjects(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[ImagePresentationTextureProcessorMetalSession] loading bundle shader pipelines", buf, 2u);
  }

  re::Bundle::testData(&v52);
  v4 = v52;
  if (!v52)
  {
    re::Bundle::application(buf);
    v5 = *buf;
    *buf = 0;
    v6 = v52;
    v52 = v5;

    v4 = v52;
  }

  v7 = v4;
  v8 = [v7 URLForResource:@"mxi" withExtension:@"metallib"];
  device = self->_device;
  v51 = 0;
  v10 = [(MTLDevice *)device newLibraryWithURL:v8 error:&v51];
  v11 = v51;
  v12 = v11;
  if (v10)
  {
    v13 = [v7 URLForResource:@"mxi-binaryarchive" withExtension:@"metallib"];
    v14 = v13;
    v47 = v8;
    if (v13)
    {
      v15 = objc_alloc_init(MEMORY[0x1E6973FE8]);
      [v15 setUrl:v14];
      v16 = self->_device;
      v50 = v12;
      v17 = [(MTLDevice *)v16 newBinaryArchiveWithDescriptor:v15 error:&v50];
      v18 = v50;

      if (v17)
      {
        v19 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v18 = v12;
    }

    v22 = *re::imagePresentationLogObjects(v13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v7;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "[MXI] Failed to find the default binary archive for bundle %@ error: %@", buf, 0x16u);
    }

    v17 = 0;
    v19 = 1;
LABEL_16:
    v46 = v14;
    v44 = mach_absolute_time();
    v23 = objc_alloc_init(MEMORY[0x1E6974070]);
    if ((v19 & 1) == 0)
    {
      v54 = v17;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      [v23 setBinaryArchives:v24];
    }

    [v23 setName:{@"computeGlowray", v44}];
    v49 = v18;
    v25 = [v10 newFunctionWithDescriptor:v23 error:&v49];
    v26 = v49;

    if (!v25)
    {
      v40 = *re::imagePresentationLogObjects(v27);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[MXI] Failed to find the glowray function. Error: %@", buf, 0xCu);
      }

      v21 = 1;
      v12 = v26;
      v8 = v47;
      goto LABEL_36;
    }

    v28 = objc_alloc_init(MEMORY[0x1E6974030]);
    [v28 setComputeFunction:v25];
    if ((v19 & 1) == 0)
    {
      v53 = v17;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      [v28 setBinaryArchives:v29];
    }

    v30 = self->_device;
    v48 = v26;
    v31 = [(MTLDevice *)v30 newComputePipelineStateWithDescriptor:v28 options:0 reflection:0 error:&v48];
    v12 = v48;

    glowrayPipeline = self->_glowrayPipeline;
    self->_glowrayPipeline = v31;

    if (!self->_glowrayPipeline)
    {
      v41 = *re::imagePresentationLogObjects(v33);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "[MXI] Failed to initialize glowray compute pipeline. Error: %@", buf, 0xCu);
      }

      v21 = 1;
      v8 = v47;
      goto LABEL_35;
    }

    v34 = mach_absolute_time();
    v35 = v34;
    v36 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v34 = mach_timebase_info(buf);
      if (v34)
      {
        v39 = NAN;
        goto LABEL_33;
      }

      LODWORD(v37) = *buf;
      LODWORD(v38) = *&buf[4];
      v36 = v37 / v38;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v36;
    }

    v39 = v36 * (v35 - v45);
LABEL_33:
    v42 = *re::graphicsLogObjects(v34);
    v21 = 0;
    v8 = v47;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = (v39 / 1000000.0);
      _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for compute pipeline computeGlowray in %d", buf, 8u);
      v21 = 0;
    }

LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  v20 = *re::imagePresentationLogObjects(v11);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    v56 = 2112;
    v57 = v12;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[MXI] Failed to find the default library for bundle %@ error: %@", buf, 0x16u);
  }

  v21 = 1;
LABEL_37:

  return v21;
}

- (id)createShaderRWTexture2DWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v13 = self->_device;
  v8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v8 setWidth_];
  [v8 setHeight_];
  [v8 setPixelFormat_];
  [v8 setUsage_];
  [v8 setStorageMode_];
  re::mtl::Device::makeTexture(v8, &v13, &v12);
  v9 = v12;
  v10 = v9;
  if (v9)
  {
  }

  if (v8)
  {
  }

  return v10;
}

- (id)createShaderRWTexture2DWithPixelFormat:(unint64_t)a3 width:(unint64_t)a4 height:(unint64_t)a5 mipmapLevelCount:(unint64_t)a6
{
  v15 = self->_device;
  v10 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v10 setWidth_];
  [v10 setHeight_];
  [v10 setPixelFormat_];
  [v10 setUsage_];
  [v10 setStorageMode_];
  [v10 setMipmapLevelCount_];
  re::mtl::Device::makeTexture(v10, &v15, &v14);
  v11 = v14;
  v12 = v11;
  if (v11)
  {
  }

  if (v10)
  {
  }

  return v12;
}

- (int)blitStereoImageTextureIntoSeparateTextures:(id)a3 withCommandBuffer:(id)a4 outputLeftTexture:(id)a5 outputRightTexture:(id)a6
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 arrayLength];
  if (v13 == 2)
  {
    v14 = [v9 width];
    v15 = [v9 height];
    v32 = v11;
    v33[0] = v12;
    v27 = v10;
    v16 = [v10 blitCommandEncoder];
    v17 = 0;
    v18 = &v32;
    v19 = 1;
    do
    {
      v20 = v19;
      buf = 0uLL;
      v31 = 0;
      v29[0] = v14;
      v29[1] = v15;
      v29[2] = 1;
      v21 = *v18;
      memset(v28, 0, sizeof(v28));
      [v16 copyFromTexture:v9 sourceSlice:v17 sourceLevel:0 sourceOrigin:&buf sourceSize:v29 toTexture:v21 destinationSlice:0 destinationLevel:0 destinationOrigin:v28];
      v19 = 0;
      v18 = v33;
      v17 = 1;
    }

    while ((v20 & 1) != 0);
    [v16 endEncoding];

    for (i = 1; i != -1; --i)
    {
    }

    v23 = 0;
    v10 = v27;
  }

  else
  {
    v24 = *re::imagePresentationLogObjects(v13);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = v24;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v9 arrayLength];
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to blit a stereoImageTexture into separate textures. Expecting a texture2d_array of length 2, but got length %lu.", &buf, 0xCu);
    }

    v23 = 2;
  }

  return v23;
}

- (id)makeSpatialPhotoMixedLightSpillTextureFrom:(id)a3 blurSigma:(float)a4 resolution:(int)a5
{
  v8 = a3;
  v37 = 0;
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (!v9)
  {
    v29 = *re::imagePresentationLogObjects(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Unable to create a command buffer. Skipping mixed light spill texture computation.", &v33, 2u);
    }

    goto LABEL_12;
  }

  v10 = [v8 pixelFormat];
  v11 = [(TextureProcessorMetalSession *)self createShaderRWTexture2DWithPixelFormat:v10 width:64 height:64];
  v37 = v11;
  v12 = [(TextureProcessorMetalSession *)self createShaderRWTexture2DWithPixelFormat:v10 width:64 height:64];
  v13 = v12;
  if (v11 && v12)
  {
    v14 = [(TextureProcessorMetalSession *)self createShaderRWTexture2DWithPixelFormat:v10 width:a5 height:a5];
    if (v14)
    {
      v15 = v14;
      v16 = [v8 newTextureViewWithPixelFormat:objc_msgSend(v8 textureType:"pixelFormat") levels:2 slices:0, 1, 0, 1];
      v17 = [v8 newTextureViewWithPixelFormat:objc_msgSend(v8 textureType:"pixelFormat") levels:2 slices:0, 1, 1, 1];
      v18 = [v11 height];
      v34 = (v18 / [v16 height]);
      v35 = 0;
      v36 = 0;
      [(MPSImageBilinearScale *)self->_bilinearScale setScaleTransform:&v33];
      [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v9 sourceTexture:v16 destinationTexture:v11];
      [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v9 sourceTexture:v17 destinationTexture:v13];
      LODWORD(v19) = 0.5;
      [(MPSImageAdd *)self->_mixKernel setPrimaryScale:v19];
      LODWORD(v20) = 0.5;
      [(MPSImageAdd *)self->_mixKernel setSecondaryScale:v20];
      [(MPSImageAdd *)self->_mixKernel encodeToCommandBuffer:v9 inPlacePrimaryTexture:&v37 secondaryTexture:v13 fallbackCopyAllocator:0];
      v21 = objc_alloc(MEMORY[0x1E69745C0]);
      *&v22 = a4;
      v23 = [v21 initWithDevice:self->_device sigma:v22];
      [v23 encodeToCommandBuffer:v9 inPlaceTexture:&v37 fallbackCopyAllocator:0];
      v24 = [v15 width];
      v25 = (v24 / [v37 width]);
      v26 = [v15 height];
      v27 = [v37 height];
      v33 = v25;
      v34 = (v26 / v27);
      v35 = 0;
      v36 = 0;
      [(MPSImageBilinearScale *)self->_bilinearScale setScaleTransform:&v33];
      [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v9 sourceTexture:v37 destinationTexture:v15];
      [v9 commit];
      [v9 waitUntilScheduled];
      v28 = v15;

      goto LABEL_13;
    }

    v30 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v31 = "Failed to create the destination texture for spill texture generation.";
    goto LABEL_17;
  }

  v30 = *re::imagePresentationLogObjects(v12);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v33) = 0;
    v31 = "Failed to create intermediate textures for spill texture generation.";
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, v31, &v33, 2u);
  }

LABEL_11:

LABEL_12:
  v28 = 0;
LABEL_13:

  return v28;
}

- (id)makeAlchemistAnimationLoadingTextureFrom:(id)a3 blurSigma:(float)a4 resolution:(int)a5
{
  v8 = a3;
  v28 = 0;
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (v9)
  {
    v10 = [v8 pixelFormat];
    v11 = -[TextureProcessorMetalSession createShaderRWTexture2DWithPixelFormat:width:height:](self, "createShaderRWTexture2DWithPixelFormat:width:height:", v10, [v8 width], objc_msgSend(v8, "height"));
    v12 = [(TextureProcessorMetalSession *)self createShaderRWTexture2DWithPixelFormat:v10 width:a5 height:a5];
    v28 = v12;
    v13 = [v9 blitCommandEncoder];
    *buf = 0.0;
    v23 = 0.0;
    v24 = 0;
    v27[0] = [v8 width];
    v27[1] = [v8 height];
    v27[2] = 1;
    memset(v26, 0, sizeof(v26));
    [v13 copyFromTexture:v8 sourceSlice:0 sourceLevel:0 sourceOrigin:buf sourceSize:v27 toTexture:v11 destinationSlice:0 destinationLevel:0 destinationOrigin:v26];
    [v13 endEncoding];
    v14 = [v12 width];
    *buf = (v14 / [v11 width]);
    v15 = [v12 height];
    v23 = (v15 / [v11 height]);
    v24 = 0;
    v25 = 0;
    [(MPSImageBilinearScale *)self->_bilinearScale setScaleTransform:buf];
    [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v9 sourceTexture:v11 destinationTexture:v12];
    v16 = objc_alloc(MEMORY[0x1E69745C0]);
    *&v17 = a4;
    v18 = [v16 initWithDevice:self->_device sigma:v17];
    [v18 setEdgeMode:1];
    [v18 encodeToCommandBuffer:v9 inPlaceTexture:&v28 fallbackCopyAllocator:0];
    [v9 commit];
    [v9 waitUntilScheduled];
    v19 = v28;
  }

  else
  {
    v20 = *re::imagePresentationLogObjects(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Unable to create a command buffer. Skipping blur texture computation.", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)makeAlchemistGlowrayTextureFrom:(id)a3 insetSamplePercent:(float)a4 cornerRadius:(float)a5
{
  v8 = a3;
  v29 = a5;
  v30 = a4;
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (!v9)
  {
    v21 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v24) = 0;
    v22 = "Unable to create a command buffer. Skipping glowray texture computation.";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v22, &v24, 2u);
    goto LABEL_7;
  }

  v10 = [v8 pixelFormat];
  if (self->_glowrayPipeline)
  {
    v11 = v10;
    v12 = [(TextureProcessorMetalSession *)self createShaderRWTexture2DWithPixelFormat:v10 width:256 height:256];
    v13 = [v9 computeCommandEncoder];
    [v13 setTexture:v8 atIndex:0];
    [v13 setTexture:v12 atIndex:1];
    [v13 setBytes:&v30 length:4 atIndex:0];
    [v13 setBytes:&v29 length:4 atIndex:1];
    [v13 setComputePipelineState:self->_glowrayPipeline];
    v14 = [(MTLComputePipelineState *)self->_glowrayPipeline threadExecutionWidth];
    v15 = [(MTLComputePipelineState *)self->_glowrayPipeline maxTotalThreadsPerThreadgroup];
    *&v24 = (v14 + 255) / v14;
    *&v25 = (v15 / v14 + 255) / (v15 / v14);
    v26 = 1;
    v28[0] = v14;
    v28[1] = (v15 / v14);
    v28[2] = 1;
    [v13 dispatchThreadgroups:&v24 threadsPerThreadgroup:v28];
    [v13 endEncoding];
    v16 = [(TextureProcessorMetalSession *)self createShaderRWTexture2DWithPixelFormat:v11 width:64 height:64];
    v28[0] = v16;
    v24 = vcvts_n_f32_u64([v16 width], 8uLL);
    v25 = vcvts_n_f32_u64([v16 height], 8uLL);
    v26 = 0;
    v27 = 0;
    [(MPSImageBilinearScale *)self->_bilinearScale setScaleTransform:&v24];
    [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v9 sourceTexture:v12 destinationTexture:v16];
    v17 = objc_alloc(MEMORY[0x1E69745C0]);
    LODWORD(v18) = 2.0;
    v19 = [v17 initWithDevice:self->_device sigma:v18];
    [v19 setEdgeMode:1];
    [v19 encodeToCommandBuffer:v9 inPlaceTexture:v28 fallbackCopyAllocator:0];
    [v9 commit];
    [v9 waitUntilScheduled];
    v20 = v28[0];

    goto LABEL_8;
  }

  v21 = *re::imagePresentationLogObjects(v10);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    v22 = "glowray pipeline is not available";
    goto LABEL_12;
  }

LABEL_7:
  v20 = 0;
LABEL_8:

  return v20;
}

@end
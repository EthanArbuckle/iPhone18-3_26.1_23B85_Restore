@interface MetalFAST9BRIEF
+ (id)_createMTLBufferFromRectRegionsDesiredKeypoints:(id)a3 device:(id)a4 storageMode:(unint64_t)a5 maxAllowedDescriptors:(unint64_t *)a6;
+ (id)_createMTLBufferFromRects:(id)a3 device:(id)a4 storageMode:(unint64_t)a5 maxRectWidth:(unint64_t *)a6 maxRectHeight:(unint64_t *)a7;
- (MetalFAST9BRIEF)init;
- (id)_textureFromPixelBuffer:(__CVBuffer *)a3 forcedMetalPixelFormat:(unint64_t)a4 forcedWidthDivisior:(int)a5;
- (void)ORBDescriptorsFromPixelBuffer_metal:(id)a3 inputBuffer:(__CVBuffer *)a4 descriptorBuffer:(id)a5 refinedKeypointsBuffer:(id)a6 responseBuffer:(id)a7 cumulativeKeypointsPerRegionBuffer:(id)a8 intermediateBuffers:(id)a9;
- (void)_ORBDescriptorsFromTextures_part1_metal:(id)a3 inputTexture_RGBA8Uint:(id)a4 inputTexture_R8Unorm:(id)a5 responseBuffer:(id)a6 cumulativeKeypointsPerRegionBuffer:(id)a7 intermediateBuffers:(id)a8;
- (void)_ORBDescriptorsFromTextures_part2_metal:(id)a3 inputTexture_RGBA8Uint:(id)a4 inputTexture_R8Unorm:(id)a5 descriptorBuffer:(id)a6 refinedKeypointsBuffer:(id)a7 cumulativeKeypointsPerRegionBuffer:(id)a8 intermediateBuffers:(id)a9 keypointCount:(int)a10;
- (void)_boxBlur_metal:(id)a3 inputImageTexture:(id)a4 boxBlurredTexture:(id)a5;
- (void)_computeResponseMap_metal:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5 garbagePixelCount:(unsigned int)a6;
- (void)_cumulativeSum_metal:(id)a3 expectedPointsBuffer:(id)a4 cumulativePointsBuffer:(id)a5 regionCountBuffer:(id)a6 keypointCountBuffer:(id)a7 regionCount:(unint64_t)a8;
- (void)_extractORB_metal:(id)a3 boxBlurredTexture:(id)a4 keypointLocationsBuffer:(id)a5 outputORBDescriptorBuffer:(id)a6 keypointCountBuffer:(id)a7 keypointCount:(unint64_t)a8;
- (void)_gaussianishBlur_metal:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5 offset:(CGPoint)a6;
- (void)_generateHistograms_metal:(id)a3 suppressedTexture:(id)a4 tileBuffer:(id)a5 desiredKeypointCountsBuffer:(id)a6 thresholdsBuffer:(id)a7 histogramBuffer:(id)a8 thresholdRangeBuffer:(id)a9 keypointsAtChosenThresholdBuffer:(id)a10 truncatedRegionsBuffer:(id)a11 tileCount:(unint64_t)a12 maxTileHeight:(unint64_t)a13;
- (void)_listKeypoints2_metal:(id)a3 suppressedResponseMapTexture:(id)a4 tileBuffer:(id)a5 tileCountBuffer:(id)a6 tileCount:(unint64_t)a7 thresholdsBuffer:(id)a8 cumulativePointsBuffer:(id)a9 keypointLocationsBuffer:(id)a10 keypointResponsesBuffer:(id)a11 maxRegionHeight:(double)a12;
- (void)_listKeypoints3_metal:(id)a3 suppressedResponseMapTexture:(id)a4 tileBuffer:(id)a5 tileCountBuffer:(id)a6 tileCount:(unint64_t)a7 thresholdsBuffer:(id)a8 cumulativePointsBuffer:(id)a9 keypointLocationsBuffer:(id)a10 keypointResponsesBuffer:(id)a11 maxRegionHeight:(double)a12 maxRegionWidth:(double)a13;
- (void)_listKeypointsSimple_metal:(id)a3 suppressedResponseMapTexture:(id)a4 tileBuffer:(id)a5 tileCountBuffer:(id)a6 tileCount:(unint64_t)a7 thresholdsBuffer:(id)a8 cumulativePointsBuffer:(id)a9 keypointLocationsBuffer:(id)a10 keypointResponsesBuffer:(id)a11 desiredKeypointsBuffer:(id)a12 indexBuffer:(id)a13;
- (void)_refineKeypoints_metal:(id)a3 inputImageTexture:(id)a4 keypointLocationsBuffer:(id)a5 refinedLocationsBuffer:(id)a6 keypointCountBuffer:(id)a7 keypointCount:(unint64_t)a8 debugIntermediatesBuffer:(id)a9 cumulativePointsBuffer:(id)a10 tileCountBuffer:(id)a11;
- (void)_suppressResponseMap_metal:(id)a3 unsuppressedTexture:(id)a4 suppressedTexture:(id)a5 garbagePixelCount:(unsigned int)a6;
- (void)dealloc;
@end

@implementation MetalFAST9BRIEF

- (MetalFAST9BRIEF)init
{
  v74 = *MEMORY[0x277D85DE8];
  v70.receiver = self;
  v70.super_class = MetalFAST9BRIEF;
  v2 = [(MetalFAST9BRIEF *)&v70 init];
  if (!v2)
  {
    goto LABEL_18;
  }

  v71 = 50;
  v3 = malloc_type_malloc(0x32uLL, 0x5CFABFF5uLL);
  *v73 = 0x100000006;
  if (sysctl(v73, 2u, v3, &v71, 0, 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  free(v3);
  if (([&unk_286705A88 containsObject:v4] & 1) == 0)
  {
    if (qword_281535BF0 != -1)
    {
      sub_254B883EC();
    }

    if (dword_281535BE8 <= 0)
    {
      v6 = MTLCreateSystemDefaultDevice();
      device = v2->_device;
      v2->_device = v6;

      v8 = [(MTLDevice *)v2->_device newCommandQueue];
      queue = v2->_queue;
      v2->_queue = v8;

      v10 = dispatch_data_create(&inertiaCamMetalLibStart, &inertiaCamMetalLibEnd - &inertiaCamMetalLibStart, 0, 0);
      v11 = v2->_device;
      v69 = 0;
      v12 = [(MTLDevice *)v11 newLibraryWithData:v10 error:&v69];
      v13 = v69;
      library = v2->_library;
      v2->_library = v12;

      if (!v12)
      {
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v16 = [v15 pathForResource:@"InertiaCamMetalLib" ofType:@"metallib"];

        if (!v16)
        {
          v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v16 = [v17 pathForResource:@"default" ofType:@"metallib"];
        }

        v18 = v2->_device;
        v68 = v13;
        v19 = [(MTLDevice *)v18 newLibraryWithFile:v16 error:&v68];
        v20 = v68;

        v21 = v2->_library;
        v2->_library = v19;

        v13 = v20;
      }

      v22 = [(MTLLibrary *)v2->_library newFunctionWithName:@"computeResponseMap"];
      responseMapKernel = v2->_responseMapKernel;
      v2->_responseMapKernel = v22;

      v24 = [(MTLLibrary *)v2->_library newFunctionWithName:@"computeResponseMap4"];
      response4MapKernel = v2->_response4MapKernel;
      v2->_response4MapKernel = v24;

      v26 = [(MTLLibrary *)v2->_library newFunctionWithName:@"suppressResponseMap"];
      suppressMapKernel = v2->_suppressMapKernel;
      v2->_suppressMapKernel = v26;

      v28 = [(MTLLibrary *)v2->_library newFunctionWithName:@"suppressResponseMap4"];
      suppress4MapKernel = v2->_suppress4MapKernel;
      v2->_suppress4MapKernel = v28;

      v30 = [(MTLLibrary *)v2->_library newFunctionWithName:@"computeHistograms"];
      computeHistogramKernel = v2->_computeHistogramKernel;
      v2->_computeHistogramKernel = v30;

      v32 = [(MTLLibrary *)v2->_library newFunctionWithName:@"computeHistograms4"];
      compute4HistogramKernel = v2->_compute4HistogramKernel;
      v2->_compute4HistogramKernel = v32;

      v34 = [(MTLLibrary *)v2->_library newFunctionWithName:@"histogramThreshold"];
      histogramThresholdKernel = v2->_histogramThresholdKernel;
      v2->_histogramThresholdKernel = v34;

      v36 = [(MTLLibrary *)v2->_library newFunctionWithName:@"cumulativeSumSimple"];
      cumulativeSumSimpleKernel = v2->_cumulativeSumSimpleKernel;
      v2->_cumulativeSumSimpleKernel = v36;

      v38 = [(MTLLibrary *)v2->_library newFunctionWithName:@"compactMPSBuffers"];
      compactMPSBuffersKernel = v2->_compactMPSBuffersKernel;
      v2->_compactMPSBuffersKernel = v38;

      v40 = [(MTLLibrary *)v2->_library newFunctionWithName:@"listKeypoints_simple"];
      listKeypointsSimpleKernel = v2->_listKeypointsSimpleKernel;
      v2->_listKeypointsSimpleKernel = v40;

      v42 = [(MTLLibrary *)v2->_library newFunctionWithName:@"listKeypoints"];
      listKeypointsKernel = v2->_listKeypointsKernel;
      v2->_listKeypointsKernel = v42;

      v44 = [(MTLLibrary *)v2->_library newFunctionWithName:@"listKeypoints2"];
      listKeypoints2Kernel = v2->_listKeypoints2Kernel;
      v2->_listKeypoints2Kernel = v44;

      v46 = [(MTLLibrary *)v2->_library newFunctionWithName:@"listKeypoints4"];
      listKeypoints3Kernel = v2->_listKeypoints3Kernel;
      v2->_listKeypoints3Kernel = v46;

      v48 = [(MTLLibrary *)v2->_library newFunctionWithName:@"refineKeypoints"];
      refineKeypointKernel = v2->_refineKeypointKernel;
      v2->_refineKeypointKernel = v48;

      v50 = [(MTLLibrary *)v2->_library newFunctionWithName:@"ORB_img"];
      extractORBKernel = v2->_extractORBKernel;
      v2->_extractORBKernel = v50;

      v52 = [(MTLLibrary *)v2->_library newFunctionWithName:@"diameter5BoxBlur_2y"];
      boxBlurKernel = v2->_boxBlurKernel;
      v2->_boxBlurKernel = v52;

      v54 = [(MTLLibrary *)v2->_library newFunctionWithName:@"diameter5BoxBlur0"];
      boxBlurKernel_R8 = v2->_boxBlurKernel_R8;
      v2->_boxBlurKernel_R8 = v54;

      v56 = [(MTLLibrary *)v2->_library newFunctionWithName:@"gaussianishConvolve3x3"];
      gaussianishBlurKernel = v2->_gaussianishBlurKernel;
      v2->_gaussianishBlurKernel = v56;

      v58 = objc_alloc_init(MEMORY[0x277CD6FD0]);
      [v58 setRAddressMode:0];
      [v58 setSAddressMode:0];
      [v58 setTAddressMode:0];
      [v58 setMinFilter:1];
      [v58 setMagFilter:1];
      [v58 setMipFilter:0];
      [v58 setNormalizedCoordinates:0];
      v59 = [(MTLDevice *)v2->_device newSamplerStateWithDescriptor:v58];
      clampedLinearNonNormSamplerState = v2->_clampedLinearNonNormSamplerState;
      v2->_clampedLinearNonNormSamplerState = v59;

      v61 = [MEMORY[0x277CBEB18] array];
      v62 = v2->_suppress4MapKernel;
      v72[0] = v2->_response4MapKernel;
      v72[1] = v62;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
      [v61 addObjectsFromArray:v63];

      [v61 addObject:v2->_gaussianishBlurKernel];
      v64 = sub_254B41B50(v2->_device, v61);
      pipelineStates = v2->_pipelineStates;
      v2->_pipelineStates = v64;

      v71 = 0;
      v66 = CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], MEMORY[0x277CBEC10], v2->_device, MEMORY[0x277CBEC10], &v71);
      if (v66)
      {
        NSLog(&cfstr_Cvmetaltexture.isa, v66);

        goto LABEL_10;
      }

      v2->_textureCache = v71;

LABEL_18:
      v5 = v2;
      goto LABEL_19;
    }
  }

LABEL_10:
  v5 = 0;
LABEL_19:

  return v5;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v4.receiver = self;
  v4.super_class = MetalFAST9BRIEF;
  [(MetalFAST9BRIEF *)&v4 dealloc];
}

- (id)_textureFromPixelBuffer:(__CVBuffer *)a3 forcedMetalPixelFormat:(unint64_t)a4 forcedWidthDivisior:(int)a5
{
  v8 = a5;
  v9 = a5 - 1;
  if (CVPixelBufferIsPlanar(a3))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
    WidthOfPlane = CVPixelBufferGetWidth(a3);
    HeightOfPlane = CVPixelBufferGetHeight(a3);
  }

  v13 = HeightOfPlane;
  v14 = (v9 + WidthOfPlane) / v8;
  if (a4)
  {
    goto LABEL_15;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  a4 = 13;
  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1380401729)
    {
LABEL_13:
      a4 = 73;
      goto LABEL_15;
    }

    if (PixelFormatType == 1278226488)
    {
      goto LABEL_15;
    }

    v16 = 1111970369;
  }

  else
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      goto LABEL_15;
    }

    v16 = 1094862674;
  }

  if (PixelFormatType == v16)
  {
    goto LABEL_13;
  }

  a4 = 0;
LABEL_15:
  image = 0;
  if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], self->_textureCache, a3, MEMORY[0x277CBEC10], a4, v14, v13, 0, &image))
  {
    v17 = 1;
  }

  else
  {
    v17 = image == 0;
  }

  if (v17 || (CFAutorelease(image), CVMetalTextureGetTexture(image), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = 0;
    if (!CVPixelBufferLockBaseAddress(a3, 0))
    {
      if (CVPixelBufferIsPlanar(a3))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a3);
      }

      v20 = BaseAddressOfPlane;
      v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a4 width:v14 height:v13 mipmapped:0];
      device = self->_device;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_254B427C4;
      v25[3] = &unk_2797A99F8;
      v25[4] = a3;
      v23 = [(MTLDevice *)device newBufferWithBytesNoCopy:v20 length:v13 * BytesPerRowOfPlane options:0 deallocator:v25];
      [v21 setStorageMode:0];
      v18 = [v23 newTextureWithDescriptor:v21 offset:0 bytesPerRow:BytesPerRowOfPlane];
    }
  }

  return v18;
}

- (void)_computeResponseMap_metal:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5 garbagePixelCount:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = a6;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v18);
  }

  v13 = [v10 computeCommandEncoder];
  v14 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_response4MapKernel];
  [v13 setComputePipelineState:v14];
  [v13 setTexture:v11 atIndex:0];
  [v13 setTexture:v12 atIndex:1];
  [v13 setBytes:&v21 length:4 atIndex:0];
  v15 = [v14 threadExecutionWidth];
  v16 = [v14 maxTotalThreadsPerThreadgroup];
  v17 = v16 / [v14 threadExecutionWidth];
  v20[0] = (v15 + [v11 width] - 1) / v15;
  v20[1] = (v17 + [v11 height] - 1) / v17;
  v20[2] = 1;
  v19[0] = v15;
  v19[1] = v17;
  v19[2] = 1;
  [v13 dispatchThreadgroups:v20 threadsPerThreadgroup:v19];
  [v13 endEncoding];
}

- (void)_suppressResponseMap_metal:(id)a3 unsuppressedTexture:(id)a4 suppressedTexture:(id)a5 garbagePixelCount:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = a6;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v18);
  }

  v13 = [v10 computeCommandEncoder];
  v14 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_suppress4MapKernel];
  [v13 setComputePipelineState:v14];
  [v13 setTexture:v11 atIndex:0];
  [v13 setTexture:v12 atIndex:2];
  [v13 setBytes:&v21 length:4 atIndex:0];
  v15 = [v14 threadExecutionWidth];
  v16 = [v14 maxTotalThreadsPerThreadgroup];
  v17 = v16 / [v14 threadExecutionWidth];
  v20[0] = (v15 + [v11 width] - 1) / v15;
  v20[1] = (v17 + [v11 height] - 1) / v17;
  v20[2] = 1;
  v19[0] = v15;
  v19[1] = v17;
  v19[2] = 1;
  [v13 dispatchThreadgroups:v20 threadsPerThreadgroup:v19];
  [v13 endEncoding];
}

- (void)_generateHistograms_metal:(id)a3 suppressedTexture:(id)a4 tileBuffer:(id)a5 desiredKeypointCountsBuffer:(id)a6 thresholdsBuffer:(id)a7 histogramBuffer:(id)a8 thresholdRangeBuffer:(id)a9 keypointsAtChosenThresholdBuffer:(id)a10 truncatedRegionsBuffer:(id)a11 tileCount:(unint64_t)a12 maxTileHeight:(unint64_t)a13
{
  v19 = a3;
  v20 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v21 = a8;
  v30 = a9;
  v29 = a10;
  v28 = a11;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v26);
  }

  v22 = [v19 blitCommandEncoder];
  [v22 fillBuffer:v21 range:0 value:{objc_msgSend(v21, "length"), 0}];
  [v22 endEncoding];
  v23 = [v19 computeCommandEncoder];
  v24 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_computeHistogramKernel];
  [v23 setComputePipelineState:v24];

  [v23 setTexture:v20 atIndex:0];
  [v23 setBuffer:v33 offset:0 atIndex:0];
  [v23 setBuffer:v21 offset:0 atIndex:1];
  v27 = vdupq_n_s64(1uLL);
  v36 = a12;
  v37 = v27;
  v34 = xmmword_254B8B120;
  v35 = 1;
  [v23 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  [v23 endEncoding];
  v25 = [v19 computeCommandEncoder];
  [v25 setComputePipelineState:self->_histogramThresholdPipelineState];
  [v25 setBuffer:v32 offset:0 atIndex:0];
  [v25 setBuffer:v21 offset:0 atIndex:1];
  [v25 setBuffer:v31 offset:0 atIndex:2];
  [v25 setBuffer:v30 offset:0 atIndex:3];
  [v25 setBuffer:v29 offset:0 atIndex:4];
  [v25 setBuffer:v28 offset:0 atIndex:5];
  v36 = a12;
  v37 = v27;
  v34 = v27;
  v35 = 1;
  [v25 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  [v25 endEncoding];
}

- (void)_cumulativeSum_metal:(id)a3 expectedPointsBuffer:(id)a4 cumulativePointsBuffer:(id)a5 regionCountBuffer:(id)a6 keypointCountBuffer:(id)a7 regionCount:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v19);
  }

  v18 = [v13 computeCommandEncoder];
  [v18 setComputePipelineState:self->_cumulativeSumSimplePipelineState];
  [v18 setBuffer:v14 offset:0 atIndex:0];
  [v18 setBuffer:v15 offset:0 atIndex:1];
  [v18 setBuffer:v16 offset:0 atIndex:2];
  [v18 setBuffer:v17 offset:0 atIndex:3];
  v22 = vdupq_n_s64(1uLL);
  v23 = 1;
  v20 = v22;
  v21 = 1;
  [v18 dispatchThreadgroups:&v22 threadsPerThreadgroup:&v20];
  [v18 endEncoding];
}

- (void)_listKeypointsSimple_metal:(id)a3 suppressedResponseMapTexture:(id)a4 tileBuffer:(id)a5 tileCountBuffer:(id)a6 tileCount:(unint64_t)a7 thresholdsBuffer:(id)a8 cumulativePointsBuffer:(id)a9 keypointLocationsBuffer:(id)a10 keypointResponsesBuffer:(id)a11 desiredKeypointsBuffer:(id)a12 indexBuffer:(id)a13
{
  v42 = a3;
  v41 = a4;
  v19 = a5;
  v34 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v33 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v33);
  }

  v36 = self;
  v37 = v24;
  v40 = v20;
  v38 = v23;
  v39 = v22;
  if (a7)
  {
    v26 = 0;
    v27 = 0;
    v28 = 2;
    v35 = vdupq_n_s64(1uLL);
    do
    {
      v29 = [v19 contents];
      v30 = ((*(v29 + v27 + 12) * *(v29 + 4 * v28)) + 511) >> 9;
      v31 = [v42 blitCommandEncoder];
      [v31 fillBuffer:v25 range:0 value:{objc_msgSend(v25, "length"), 0}];
      [v31 endEncoding];
      v32 = [v42 computeCommandEncoder];
      [v32 setComputePipelineState:v36->_listKeypointsSimplePipelineState];
      [v32 setBuffer:v37 offset:v26 atIndex:0];
      [v32 setBuffer:v19 offset:v27 atIndex:1];
      [v32 setBuffer:v40 offset:v28 - 2 atIndex:2];
      [v32 setBuffer:v38 offset:0 atIndex:3];
      [v32 setBuffer:v39 offset:0 atIndex:4];
      [v32 setBuffer:v21 offset:v28 - 2 atIndex:5];
      [v32 setBuffer:v25 offset:0 atIndex:6];
      [v32 setTexture:v41 atIndex:0];
      v45 = v30;
      v46 = v35;
      v43 = xmmword_254B8B130;
      v44 = 1;
      [v32 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v43];
      [v32 endEncoding];

      v27 += 16;
      v26 += 12;
      v28 += 4;
      --a7;
    }

    while (a7);
  }
}

- (void)_listKeypoints2_metal:(id)a3 suppressedResponseMapTexture:(id)a4 tileBuffer:(id)a5 tileCountBuffer:(id)a6 tileCount:(unint64_t)a7 thresholdsBuffer:(id)a8 cumulativePointsBuffer:(id)a9 keypointLocationsBuffer:(id)a10 keypointResponsesBuffer:(id)a11 maxRegionHeight:(double)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v26);
  }

  v25 = [v17 computeCommandEncoder];
  [v25 setComputePipelineState:self->_listKeypoints2PipelineState];
  [v25 setThreadgroupMemoryLength:128 atIndex:0];
  [v25 setBuffer:v19 offset:0 atIndex:0];
  [v25 setBuffer:v21 offset:0 atIndex:1];
  [v25 setBuffer:v24 offset:0 atIndex:2];
  [v25 setBuffer:v23 offset:0 atIndex:3];
  [v25 setBuffer:v22 offset:0 atIndex:4];
  [v25 setBuffer:v20 offset:0 atIndex:5];
  [v25 setTexture:v18 atIndex:0];
  v30 = a7;
  v31 = vdupq_n_s64(1uLL);
  v28 = 32;
  v29 = v31;
  [v25 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
  [v25 endEncoding];
}

- (void)_listKeypoints3_metal:(id)a3 suppressedResponseMapTexture:(id)a4 tileBuffer:(id)a5 tileCountBuffer:(id)a6 tileCount:(unint64_t)a7 thresholdsBuffer:(id)a8 cumulativePointsBuffer:(id)a9 keypointLocationsBuffer:(id)a10 keypointResponsesBuffer:(id)a11 maxRegionHeight:(double)a12 maxRegionWidth:(double)a13
{
  v20 = a3;
  v31 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v28 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v28);
  }

  [v20 computeCommandEncoder];
  v27 = v29 = v20;
  [v27 setComputePipelineState:self->_listKeypoints3PipelineState];
  [v27 setThreadgroupMemoryLength:256 atIndex:0];
  [v27 setBuffer:v21 offset:0 atIndex:0];
  [v27 setBuffer:v23 offset:0 atIndex:1];
  [v27 setBuffer:v26 offset:0 atIndex:2];
  [v27 setBuffer:v25 offset:0 atIndex:3];
  [v27 setBuffer:v24 offset:0 atIndex:4];
  [v27 setBuffer:v22 offset:0 atIndex:5];
  [v27 setTexture:v31 atIndex:0];
  v34[0] = (a13 + 31) >> 5;
  v34[1] = (a12 + 1) >> 1;
  v34[2] = a7;
  v32 = xmmword_254B8B140;
  v33 = 1;
  [v27 dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
  [v27 endEncoding];
}

- (void)_refineKeypoints_metal:(id)a3 inputImageTexture:(id)a4 keypointLocationsBuffer:(id)a5 refinedLocationsBuffer:(id)a6 keypointCountBuffer:(id)a7 keypointCount:(unint64_t)a8 debugIntermediatesBuffer:(id)a9 cumulativePointsBuffer:(id)a10 tileCountBuffer:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v25);
  }

  v24 = [v16 computeCommandEncoder];
  [v24 setComputePipelineState:self->_refineKeypointPipelineState];
  [v24 setTexture:v17 atIndex:0];
  [v24 setBuffer:v18 offset:0 atIndex:0];
  [v24 setBuffer:v19 offset:0 atIndex:1];
  [v24 setBuffer:v20 offset:0 atIndex:2];
  [v24 setBuffer:v22 offset:0 atIndex:3];
  [v24 setBuffer:v23 offset:0 atIndex:4];
  [v24 setBuffer:v21 offset:0 atIndex:5];
  [v24 setSamplerState:self->_clampedLinearNonNormSamplerState atIndex:0];
  if (a8)
  {
    v28 = 1;
    v29 = (a8 + 31) >> 5;
    v30 = vdupq_n_s64(1uLL);
    v27 = xmmword_254B8B120;
    [v24 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  }

  else
  {
    v29 = 32;
    v30 = vdupq_n_s64(1uLL);
    [v24 dispatchThreadgroupsWithIndirectBuffer:v20 indirectBufferOffset:4 threadsPerThreadgroup:&v29];
  }

  [v24 endEncoding];
}

- (void)_extractORB_metal:(id)a3 boxBlurredTexture:(id)a4 keypointLocationsBuffer:(id)a5 outputORBDescriptorBuffer:(id)a6 keypointCountBuffer:(id)a7 keypointCount:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v20);
  }

  v19 = [v14 computeCommandEncoder];
  [v19 setComputePipelineState:self->_extractORBPipelineState];
  [v19 setTexture:v15 atIndex:0];
  [v19 setBuffer:v18 offset:0 atIndex:0];
  [v19 setBuffer:v16 offset:0 atIndex:1];
  [v19 setBuffer:v17 offset:0 atIndex:2];
  if (a8)
  {
    *v23 = (a8 + 31) >> 5;
    *&v23[8] = vdupq_n_s64(1uLL);
    v21 = xmmword_254B8B120;
    v22 = 1;
    [v19 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  }

  else
  {
    *v23 = xmmword_254B8B120;
    *&v23[16] = 1;
    [v19 dispatchThreadgroupsWithIndirectBuffer:v18 indirectBufferOffset:4 threadsPerThreadgroup:v23];
  }

  [v19 endEncoding];
}

- (void)_boxBlur_metal:(id)a3 inputImageTexture:(id)a4 boxBlurredTexture:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v14);
  }

  v11 = ((([v10 width] + 3) >> 2) + 7) >> 3;
  v12 = ((([v10 height] + 1) >> 1) + 1) >> 1;
  v13 = [v8 computeCommandEncoder];
  [v13 setComputePipelineState:self->_boxBlurPipelineState];
  [v13 setTexture:v9 atIndex:0];
  [v13 setTexture:v10 atIndex:1];
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = 1;
  v15 = xmmword_254B8B150;
  v16 = 1;
  [v13 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [v13 endEncoding];
}

- (void)_ORBDescriptorsFromTextures_part1_metal:(id)a3 inputTexture_RGBA8Uint:(id)a4 inputTexture_R8Unorm:(id)a5 responseBuffer:(id)a6 cumulativeKeypointsPerRegionBuffer:(id)a7 intermediateBuffers:(id)a8
{
  v14 = a8;
  v37 = a7;
  v38 = a6;
  v15 = a4;
  v16 = a3;
  LODWORD(a7) = -[a5 width];
  v17 = [v14 responseTexture];
  v39 = v16;
  [(MetalFAST9BRIEF *)self _computeResponseMap_metal:v16 inputTexture:v15 outputTexture:v17 garbagePixelCount:a7 & 3];

  v18 = [v14 responseTexture];
  v19 = [v14 suppressedResponseTexture_RGBA8Uint];
  v20 = self;
  [(MetalFAST9BRIEF *)self _suppressResponseMap_metal:v16 unsuppressedTexture:v18 suppressedTexture:v19 garbagePixelCount:a7 & 3];

  v21 = [v14 suppressedResponseTexture_R8Unorm];
  v40 = [v14 rectRegionsBuffer];
  v22 = [v14 rectRegionsDesiredKeypoints];
  v23 = [v14 thresholdsBuffer];
  v24 = [v14 histogramsBuffer];
  v25 = [v14 thresholdRangeBuffer];
  v26 = [v14 countOfKeypointsPerRegion];
  v27 = [v14 truncatedRegionsBuffer];
  -[MetalFAST9BRIEF _generateHistograms_metal:suppressedTexture:tileBuffer:desiredKeypointCountsBuffer:thresholdsBuffer:histogramBuffer:thresholdRangeBuffer:keypointsAtChosenThresholdBuffer:truncatedRegionsBuffer:tileCount:maxTileHeight:](v20, "_generateHistograms_metal:suppressedTexture:tileBuffer:desiredKeypointCountsBuffer:thresholdsBuffer:histogramBuffer:thresholdRangeBuffer:keypointsAtChosenThresholdBuffer:truncatedRegionsBuffer:tileCount:maxTileHeight:", v39, v21, v40, v22, v23, v24, v25, v26, v27, [v14 countOfRectRegions], objc_msgSend(v14, "maxRegionHeight"));

  v28 = [v14 countOfKeypointsPerRegion];
  v29 = [v14 rectRegionCount];
  v30 = [v14 keypointCountBuffer];
  v31 = v20;
  [(MetalFAST9BRIEF *)v20 _cumulativeSum_metal:v39 expectedPointsBuffer:v28 cumulativePointsBuffer:v37 regionCountBuffer:v29 keypointCountBuffer:v30 regionCount:0];

  v41 = [v14 suppressedResponseTexture_R8Uint];
  v32 = [v14 rectRegionsBuffer];
  v33 = [v14 rectRegionCount];
  v34 = [v14 countOfRectRegions];
  v35 = [v14 thresholdsBuffer];
  v36 = [v14 compactKeypointsBuffer];
  LODWORD(v20) = [v14 maxRegionHeight];

  [(MetalFAST9BRIEF *)v31 _listKeypoints2_metal:v39 suppressedResponseMapTexture:v41 tileBuffer:v32 tileCountBuffer:v33 tileCount:v34 thresholdsBuffer:v35 cumulativePointsBuffer:v20 keypointLocationsBuffer:v37 keypointResponsesBuffer:v36 maxRegionHeight:v38];
}

- (void)_ORBDescriptorsFromTextures_part2_metal:(id)a3 inputTexture_RGBA8Uint:(id)a4 inputTexture_R8Unorm:(id)a5 descriptorBuffer:(id)a6 refinedKeypointsBuffer:(id)a7 cumulativeKeypointsPerRegionBuffer:(id)a8 intermediateBuffers:(id)a9 keypointCount:(int)a10
{
  v16 = a9;
  v17 = a8;
  v27 = a7;
  v28 = a6;
  v18 = a5;
  v29 = a4;
  v19 = a3;
  v20 = [v16 compactKeypointsBuffer];
  v21 = [v16 keypointCountBuffer];
  v22 = [v16 refinementIntermediatesBuffer];
  v23 = [v16 rectRegionCount];
  [(MetalFAST9BRIEF *)self _refineKeypoints_metal:v19 inputImageTexture:v18 keypointLocationsBuffer:v20 refinedLocationsBuffer:v27 keypointCountBuffer:v21 keypointCount:a10 debugIntermediatesBuffer:v22 cumulativePointsBuffer:v17 tileCountBuffer:v23];

  v24 = [v16 boxBlurredTexture_R8Uint];
  [(MetalFAST9BRIEF *)self _boxBlur_metal:v19 inputImageTexture:v29 boxBlurredTexture:v24];

  v30 = [v16 boxBlurredTexture_R8Uint];
  v25 = [v16 keypointCountBuffer];

  [(MetalFAST9BRIEF *)self _extractORB_metal:v19 boxBlurredTexture:v30 keypointLocationsBuffer:v27 outputORBDescriptorBuffer:v28 keypointCountBuffer:v25 keypointCount:a10];
}

- (void)ORBDescriptorsFromPixelBuffer_metal:(id)a3 inputBuffer:(__CVBuffer *)a4 descriptorBuffer:(id)a5 refinedKeypointsBuffer:(id)a6 responseBuffer:(id)a7 cumulativeKeypointsPerRegionBuffer:(id)a8 intermediateBuffers:(id)a9
{
  v15 = a3;
  v32 = a5;
  v16 = a6;
  v33 = a7;
  v17 = a8;
  v18 = a9;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v30);
  }

  v19 = [(MetalFAST9BRIEF *)self _textureFromPixelBuffer:a4 forcedMetalPixelFormat:10 forcedWidthDivisior:1];
  v20 = [(MTLDevice *)self->_device supportsFeatureSet:4];
  v34 = v15;
  v21 = v34;
  if ((v20 & 1) == 0)
  {
    v21 = [(MTLCommandQueue *)self->_queue commandBuffer];
  }

  v22 = v16;
  CleanRect = CVImageBufferGetCleanRect(a4);
  x = CleanRect.origin.x;
  v24 = CVImageBufferGetEncodedSize(a4).height - (CleanRect.origin.y + CleanRect.size.height);
  v25 = [v18 gaussianBlurredTexture_R8Unorm];
  *&x = x;
  [(MetalFAST9BRIEF *)self _gaussianishBlur_metal:v21 inputTexture:v19 outputTexture:v25 offset:*&x, v24];

  v26 = [v18 gaussianBlurredTexture_RGBA8Uint];
  v27 = [v18 gaussianBlurredTexture_R8Unorm];
  [(MetalFAST9BRIEF *)self _ORBDescriptorsFromTextures_part1_metal:v21 inputTexture_RGBA8Uint:v26 inputTexture_R8Unorm:v27 responseBuffer:v33 cumulativeKeypointsPerRegionBuffer:v17 intermediateBuffers:v18];
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    [v21 commit];
    [v21 waitUntilCompleted];
    v29 = [v18 keypointCountBuffer];
    v28 = *[v29 contents];
  }

  LODWORD(v31) = v28;
  [(MetalFAST9BRIEF *)self _ORBDescriptorsFromTextures_part2_metal:v34 inputTexture_RGBA8Uint:v26 inputTexture_R8Unorm:v27 descriptorBuffer:v32 refinedKeypointsBuffer:v22 cumulativeKeypointsPerRegionBuffer:v17 intermediateBuffers:v18 keypointCount:v31];
}

- (void)_gaussianishBlur_metal:(id)a3 inputTexture:(id)a4 outputTexture:(id)a5 offset:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v19);
  }

  v14 = [v11 computeCommandEncoder];
  v22[0] = rint(x);
  v22[1] = rint(y);
  v23 = 0;
  v15 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_gaussianishBlurKernel];
  [v14 setComputePipelineState:v15];
  [v14 setTexture:v12 atIndex:0];
  [v14 setTexture:v13 atIndex:1];
  [v14 setBytes:v22 length:16 atIndex:0];
  v16 = [v15 threadExecutionWidth];
  v17 = [v15 maxTotalThreadsPerThreadgroup];
  v18 = v17 / [v15 threadExecutionWidth];
  v21[0] = (v16 + [v13 width] - 1) / v16;
  v21[1] = (v18 + [v13 height] - 1) / v18;
  v21[2] = 1;
  v20[0] = v16;
  v20[1] = v18;
  v20[2] = 1;
  [v14 dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
  [v14 endEncoding];
}

+ (id)_createMTLBufferFromRects:(id)a3 device:(id)a4 storageMode:(unint64_t)a5 maxRectWidth:(unint64_t *)a6 maxRectHeight:(unint64_t *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = [v12 newBufferWithLength:48 * objc_msgSend(v11 options:{"count"), 16 * a5}];
  v14 = [v13 contents];
  if ([v11 count])
  {
    v15 = 0;
    v20 = 0u;
    do
    {
      v16 = [v11 objectAtIndex:{v15, v20.i64[0]}];
      v21 = 0u;
      v22 = 0u;
      [v16 getValue:&v21 size:32];
      v17 = vcvtq_u64_f64(v22);
      v18 = vmovn_s64(v17);
      *(v14 + 16 * v15) = vuzp1q_s32(vcvtq_u64_f64(v21), v17);
      v17.i64[1] = v20.i64[1];
      *v17.i8 = vmax_u32(*v20.i8, v18);
      v20 = v17;

      ++v15;
    }

    while ([v11 count] > v15);
  }

  else
  {
    v20.i64[0] = 0;
  }

  if (a6)
  {
    *a6 = v20.u32[0];
  }

  if (a7)
  {
    *a7 = v20.u32[1];
  }

  return v13;
}

+ (id)_createMTLBufferFromRectRegionsDesiredKeypoints:(id)a3 device:(id)a4 storageMode:(unint64_t)a5 maxAllowedDescriptors:(unint64_t *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 newBufferWithLength:12 * objc_msgSend(v9 options:{"count"), 16 * a5}];
  v12 = [v11 contents];
  if ([v9 count] >= 2)
  {
    v14 = 0;
    v13 = 0;
    v15 = (v12 + 4);
    v16 = 1;
    do
    {
      v17 = [v9 objectAtIndex:v16 - 1];
      *(v15 - 1) = [v17 unsignedIntValue];

      v18 = [v9 objectAtIndex:v16];
      *v15 = [v18 unsignedIntValue];

      v19 = (*v15 + *(v15 - 1));
      v15[1] = v19;
      v13 += v19;
      ++v14;
      v15 += 3;
      v16 += 2;
    }

    while (v14 < [v9 count] >> 1);
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    *a6 = v13;
  }

  return v11;
}

@end
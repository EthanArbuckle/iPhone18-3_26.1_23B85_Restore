@interface MetalFAST9BRIEF
+ (id)_createMTLBufferFromRectRegionsDesiredKeypoints:(id)keypoints device:(id)device storageMode:(unint64_t)mode maxAllowedDescriptors:(unint64_t *)descriptors;
+ (id)_createMTLBufferFromRects:(id)rects device:(id)device storageMode:(unint64_t)mode maxRectWidth:(unint64_t *)width maxRectHeight:(unint64_t *)height;
- (MetalFAST9BRIEF)init;
- (id)_textureFromPixelBuffer:(__CVBuffer *)buffer forcedMetalPixelFormat:(unint64_t)format forcedWidthDivisior:(int)divisior;
- (void)ORBDescriptorsFromPixelBuffer_metal:(id)buffer_metal inputBuffer:(__CVBuffer *)buffer descriptorBuffer:(id)descriptorBuffer refinedKeypointsBuffer:(id)keypointsBuffer responseBuffer:(id)responseBuffer cumulativeKeypointsPerRegionBuffer:(id)regionBuffer intermediateBuffers:(id)buffers;
- (void)_ORBDescriptorsFromTextures_part1_metal:(id)textures_part1_metal inputTexture_RGBA8Uint:(id)uint inputTexture_R8Unorm:(id)unorm responseBuffer:(id)buffer cumulativeKeypointsPerRegionBuffer:(id)regionBuffer intermediateBuffers:(id)buffers;
- (void)_ORBDescriptorsFromTextures_part2_metal:(id)textures_part2_metal inputTexture_RGBA8Uint:(id)uint inputTexture_R8Unorm:(id)unorm descriptorBuffer:(id)buffer refinedKeypointsBuffer:(id)keypointsBuffer cumulativeKeypointsPerRegionBuffer:(id)regionBuffer intermediateBuffers:(id)buffers keypointCount:(int)self0;
- (void)_boxBlur_metal:(id)blur_metal inputImageTexture:(id)texture boxBlurredTexture:(id)blurredTexture;
- (void)_computeResponseMap_metal:(id)map_metal inputTexture:(id)texture outputTexture:(id)outputTexture garbagePixelCount:(unsigned int)count;
- (void)_cumulativeSum_metal:(id)sum_metal expectedPointsBuffer:(id)buffer cumulativePointsBuffer:(id)pointsBuffer regionCountBuffer:(id)countBuffer keypointCountBuffer:(id)keypointCountBuffer regionCount:(unint64_t)count;
- (void)_extractORB_metal:(id)b_metal boxBlurredTexture:(id)texture keypointLocationsBuffer:(id)buffer outputORBDescriptorBuffer:(id)descriptorBuffer keypointCountBuffer:(id)countBuffer keypointCount:(unint64_t)count;
- (void)_gaussianishBlur_metal:(id)blur_metal inputTexture:(id)texture outputTexture:(id)outputTexture offset:(CGPoint)offset;
- (void)_generateHistograms_metal:(id)histograms_metal suppressedTexture:(id)texture tileBuffer:(id)buffer desiredKeypointCountsBuffer:(id)countsBuffer thresholdsBuffer:(id)thresholdsBuffer histogramBuffer:(id)histogramBuffer thresholdRangeBuffer:(id)rangeBuffer keypointsAtChosenThresholdBuffer:(id)self0 truncatedRegionsBuffer:(id)self1 tileCount:(unint64_t)self2 maxTileHeight:(unint64_t)self3;
- (void)_listKeypoints2_metal:(id)keypoints2_metal suppressedResponseMapTexture:(id)texture tileBuffer:(id)buffer tileCountBuffer:(id)countBuffer tileCount:(unint64_t)count thresholdsBuffer:(id)thresholdsBuffer cumulativePointsBuffer:(id)pointsBuffer keypointLocationsBuffer:(id)self0 keypointResponsesBuffer:(id)self1 maxRegionHeight:(double)self2;
- (void)_listKeypoints3_metal:(id)keypoints3_metal suppressedResponseMapTexture:(id)texture tileBuffer:(id)buffer tileCountBuffer:(id)countBuffer tileCount:(unint64_t)count thresholdsBuffer:(id)thresholdsBuffer cumulativePointsBuffer:(id)pointsBuffer keypointLocationsBuffer:(id)self0 keypointResponsesBuffer:(id)self1 maxRegionHeight:(double)self2 maxRegionWidth:(double)self3;
- (void)_listKeypointsSimple_metal:(id)simple_metal suppressedResponseMapTexture:(id)texture tileBuffer:(id)buffer tileCountBuffer:(id)countBuffer tileCount:(unint64_t)count thresholdsBuffer:(id)thresholdsBuffer cumulativePointsBuffer:(id)pointsBuffer keypointLocationsBuffer:(id)self0 keypointResponsesBuffer:(id)self1 desiredKeypointsBuffer:(id)self2 indexBuffer:(id)self3;
- (void)_refineKeypoints_metal:(id)keypoints_metal inputImageTexture:(id)texture keypointLocationsBuffer:(id)buffer refinedLocationsBuffer:(id)locationsBuffer keypointCountBuffer:(id)countBuffer keypointCount:(unint64_t)count debugIntermediatesBuffer:(id)intermediatesBuffer cumulativePointsBuffer:(id)self0 tileCountBuffer:(id)self1;
- (void)_suppressResponseMap_metal:(id)map_metal unsuppressedTexture:(id)texture suppressedTexture:(id)suppressedTexture garbagePixelCount:(unsigned int)count;
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

      newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
      queue = v2->_queue;
      v2->_queue = newCommandQueue;

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

      array = [MEMORY[0x277CBEB18] array];
      v62 = v2->_suppress4MapKernel;
      v72[0] = v2->_response4MapKernel;
      v72[1] = v62;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
      [array addObjectsFromArray:v63];

      [array addObject:v2->_gaussianishBlurKernel];
      v64 = sub_254B41B50(v2->_device, array);
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

- (id)_textureFromPixelBuffer:(__CVBuffer *)buffer forcedMetalPixelFormat:(unint64_t)format forcedWidthDivisior:(int)divisior
{
  divisiorCopy = divisior;
  v9 = divisior - 1;
  if (CVPixelBufferIsPlanar(buffer))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
    WidthOfPlane = CVPixelBufferGetWidth(buffer);
    HeightOfPlane = CVPixelBufferGetHeight(buffer);
  }

  v13 = HeightOfPlane;
  v14 = (v9 + WidthOfPlane) / divisiorCopy;
  if (format)
  {
    goto LABEL_15;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  format = 13;
  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType == 1380401729)
    {
LABEL_13:
      format = 73;
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

  format = 0;
LABEL_15:
  image = 0;
  if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], self->_textureCache, buffer, MEMORY[0x277CBEC10], format, v14, v13, 0, &image))
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
    if (!CVPixelBufferLockBaseAddress(buffer, 0))
    {
      if (CVPixelBufferIsPlanar(buffer))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
      }

      v20 = BaseAddressOfPlane;
      v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:v14 height:v13 mipmapped:0];
      device = self->_device;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_254B427C4;
      v25[3] = &unk_2797A99F8;
      v25[4] = buffer;
      v23 = [(MTLDevice *)device newBufferWithBytesNoCopy:v20 length:v13 * BytesPerRowOfPlane options:0 deallocator:v25];
      [v21 setStorageMode:0];
      v18 = [v23 newTextureWithDescriptor:v21 offset:0 bytesPerRow:BytesPerRowOfPlane];
    }
  }

  return v18;
}

- (void)_computeResponseMap_metal:(id)map_metal inputTexture:(id)texture outputTexture:(id)outputTexture garbagePixelCount:(unsigned int)count
{
  map_metalCopy = map_metal;
  textureCopy = texture;
  outputTextureCopy = outputTexture;
  countCopy = count;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v18);
  }

  computeCommandEncoder = [map_metalCopy computeCommandEncoder];
  v14 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_response4MapKernel];
  [computeCommandEncoder setComputePipelineState:v14];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:outputTextureCopy atIndex:1];
  [computeCommandEncoder setBytes:&countCopy length:4 atIndex:0];
  threadExecutionWidth = [v14 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v14 maxTotalThreadsPerThreadgroup];
  v17 = maxTotalThreadsPerThreadgroup / [v14 threadExecutionWidth];
  v20[0] = (threadExecutionWidth + [textureCopy width] - 1) / threadExecutionWidth;
  v20[1] = (v17 + [textureCopy height] - 1) / v17;
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = v17;
  v19[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v20 threadsPerThreadgroup:v19];
  [computeCommandEncoder endEncoding];
}

- (void)_suppressResponseMap_metal:(id)map_metal unsuppressedTexture:(id)texture suppressedTexture:(id)suppressedTexture garbagePixelCount:(unsigned int)count
{
  map_metalCopy = map_metal;
  textureCopy = texture;
  suppressedTextureCopy = suppressedTexture;
  countCopy = count;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v18);
  }

  computeCommandEncoder = [map_metalCopy computeCommandEncoder];
  v14 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_suppress4MapKernel];
  [computeCommandEncoder setComputePipelineState:v14];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:suppressedTextureCopy atIndex:2];
  [computeCommandEncoder setBytes:&countCopy length:4 atIndex:0];
  threadExecutionWidth = [v14 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v14 maxTotalThreadsPerThreadgroup];
  v17 = maxTotalThreadsPerThreadgroup / [v14 threadExecutionWidth];
  v20[0] = (threadExecutionWidth + [textureCopy width] - 1) / threadExecutionWidth;
  v20[1] = (v17 + [textureCopy height] - 1) / v17;
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = v17;
  v19[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v20 threadsPerThreadgroup:v19];
  [computeCommandEncoder endEncoding];
}

- (void)_generateHistograms_metal:(id)histograms_metal suppressedTexture:(id)texture tileBuffer:(id)buffer desiredKeypointCountsBuffer:(id)countsBuffer thresholdsBuffer:(id)thresholdsBuffer histogramBuffer:(id)histogramBuffer thresholdRangeBuffer:(id)rangeBuffer keypointsAtChosenThresholdBuffer:(id)self0 truncatedRegionsBuffer:(id)self1 tileCount:(unint64_t)self2 maxTileHeight:(unint64_t)self3
{
  histograms_metalCopy = histograms_metal;
  textureCopy = texture;
  bufferCopy = buffer;
  countsBufferCopy = countsBuffer;
  thresholdsBufferCopy = thresholdsBuffer;
  histogramBufferCopy = histogramBuffer;
  rangeBufferCopy = rangeBuffer;
  thresholdBufferCopy = thresholdBuffer;
  regionsBufferCopy = regionsBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v26);
  }

  blitCommandEncoder = [histograms_metalCopy blitCommandEncoder];
  [blitCommandEncoder fillBuffer:histogramBufferCopy range:0 value:{objc_msgSend(histogramBufferCopy, "length"), 0}];
  [blitCommandEncoder endEncoding];
  computeCommandEncoder = [histograms_metalCopy computeCommandEncoder];
  v24 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_computeHistogramKernel];
  [computeCommandEncoder setComputePipelineState:v24];

  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:histogramBufferCopy offset:0 atIndex:1];
  v27 = vdupq_n_s64(1uLL);
  countCopy2 = count;
  v37 = v27;
  v34 = xmmword_254B8B120;
  v35 = 1;
  [computeCommandEncoder dispatchThreadgroups:&countCopy2 threadsPerThreadgroup:&v34];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [histograms_metalCopy computeCommandEncoder];
  [computeCommandEncoder2 setComputePipelineState:self->_histogramThresholdPipelineState];
  [computeCommandEncoder2 setBuffer:countsBufferCopy offset:0 atIndex:0];
  [computeCommandEncoder2 setBuffer:histogramBufferCopy offset:0 atIndex:1];
  [computeCommandEncoder2 setBuffer:thresholdsBufferCopy offset:0 atIndex:2];
  [computeCommandEncoder2 setBuffer:rangeBufferCopy offset:0 atIndex:3];
  [computeCommandEncoder2 setBuffer:thresholdBufferCopy offset:0 atIndex:4];
  [computeCommandEncoder2 setBuffer:regionsBufferCopy offset:0 atIndex:5];
  countCopy2 = count;
  v37 = v27;
  v34 = v27;
  v35 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&countCopy2 threadsPerThreadgroup:&v34];
  [computeCommandEncoder2 endEncoding];
}

- (void)_cumulativeSum_metal:(id)sum_metal expectedPointsBuffer:(id)buffer cumulativePointsBuffer:(id)pointsBuffer regionCountBuffer:(id)countBuffer keypointCountBuffer:(id)keypointCountBuffer regionCount:(unint64_t)count
{
  sum_metalCopy = sum_metal;
  bufferCopy = buffer;
  pointsBufferCopy = pointsBuffer;
  countBufferCopy = countBuffer;
  keypointCountBufferCopy = keypointCountBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v19);
  }

  computeCommandEncoder = [sum_metalCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_cumulativeSumSimplePipelineState];
  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:pointsBufferCopy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:countBufferCopy offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:keypointCountBufferCopy offset:0 atIndex:3];
  v22 = vdupq_n_s64(1uLL);
  v23 = 1;
  v20 = v22;
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)_listKeypointsSimple_metal:(id)simple_metal suppressedResponseMapTexture:(id)texture tileBuffer:(id)buffer tileCountBuffer:(id)countBuffer tileCount:(unint64_t)count thresholdsBuffer:(id)thresholdsBuffer cumulativePointsBuffer:(id)pointsBuffer keypointLocationsBuffer:(id)self0 keypointResponsesBuffer:(id)self1 desiredKeypointsBuffer:(id)self2 indexBuffer:(id)self3
{
  simple_metalCopy = simple_metal;
  textureCopy = texture;
  bufferCopy = buffer;
  countBufferCopy = countBuffer;
  thresholdsBufferCopy = thresholdsBuffer;
  pointsBufferCopy = pointsBuffer;
  locationsBufferCopy = locationsBuffer;
  responsesBufferCopy = responsesBuffer;
  keypointsBufferCopy = keypointsBuffer;
  indexBufferCopy = indexBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v33 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v33);
  }

  selfCopy = self;
  v37 = keypointsBufferCopy;
  v40 = thresholdsBufferCopy;
  v38 = responsesBufferCopy;
  v39 = locationsBufferCopy;
  if (count)
  {
    v26 = 0;
    v27 = 0;
    v28 = 2;
    v35 = vdupq_n_s64(1uLL);
    do
    {
      contents = [bufferCopy contents];
      v30 = ((*(contents + v27 + 12) * *(contents + 4 * v28)) + 511) >> 9;
      blitCommandEncoder = [simple_metalCopy blitCommandEncoder];
      [blitCommandEncoder fillBuffer:indexBufferCopy range:0 value:{objc_msgSend(indexBufferCopy, "length"), 0}];
      [blitCommandEncoder endEncoding];
      computeCommandEncoder = [simple_metalCopy computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:selfCopy->_listKeypointsSimplePipelineState];
      [computeCommandEncoder setBuffer:v37 offset:v26 atIndex:0];
      [computeCommandEncoder setBuffer:bufferCopy offset:v27 atIndex:1];
      [computeCommandEncoder setBuffer:v40 offset:v28 - 2 atIndex:2];
      [computeCommandEncoder setBuffer:v38 offset:0 atIndex:3];
      [computeCommandEncoder setBuffer:v39 offset:0 atIndex:4];
      [computeCommandEncoder setBuffer:pointsBufferCopy offset:v28 - 2 atIndex:5];
      [computeCommandEncoder setBuffer:indexBufferCopy offset:0 atIndex:6];
      [computeCommandEncoder setTexture:textureCopy atIndex:0];
      v45 = v30;
      v46 = v35;
      v43 = xmmword_254B8B130;
      v44 = 1;
      [computeCommandEncoder dispatchThreadgroups:&v45 threadsPerThreadgroup:&v43];
      [computeCommandEncoder endEncoding];

      v27 += 16;
      v26 += 12;
      v28 += 4;
      --count;
    }

    while (count);
  }
}

- (void)_listKeypoints2_metal:(id)keypoints2_metal suppressedResponseMapTexture:(id)texture tileBuffer:(id)buffer tileCountBuffer:(id)countBuffer tileCount:(unint64_t)count thresholdsBuffer:(id)thresholdsBuffer cumulativePointsBuffer:(id)pointsBuffer keypointLocationsBuffer:(id)self0 keypointResponsesBuffer:(id)self1 maxRegionHeight:(double)self2
{
  keypoints2_metalCopy = keypoints2_metal;
  textureCopy = texture;
  bufferCopy = buffer;
  countBufferCopy = countBuffer;
  thresholdsBufferCopy = thresholdsBuffer;
  pointsBufferCopy = pointsBuffer;
  locationsBufferCopy = locationsBuffer;
  responsesBufferCopy = responsesBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v26);
  }

  computeCommandEncoder = [keypoints2_metalCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_listKeypoints2PipelineState];
  [computeCommandEncoder setThreadgroupMemoryLength:128 atIndex:0];
  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:thresholdsBufferCopy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:responsesBufferCopy offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:locationsBufferCopy offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:pointsBufferCopy offset:0 atIndex:4];
  [computeCommandEncoder setBuffer:countBufferCopy offset:0 atIndex:5];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  countCopy = count;
  v31 = vdupq_n_s64(1uLL);
  v28 = 32;
  v29 = v31;
  [computeCommandEncoder dispatchThreadgroups:&countCopy threadsPerThreadgroup:&v28];
  [computeCommandEncoder endEncoding];
}

- (void)_listKeypoints3_metal:(id)keypoints3_metal suppressedResponseMapTexture:(id)texture tileBuffer:(id)buffer tileCountBuffer:(id)countBuffer tileCount:(unint64_t)count thresholdsBuffer:(id)thresholdsBuffer cumulativePointsBuffer:(id)pointsBuffer keypointLocationsBuffer:(id)self0 keypointResponsesBuffer:(id)self1 maxRegionHeight:(double)self2 maxRegionWidth:(double)self3
{
  keypoints3_metalCopy = keypoints3_metal;
  textureCopy = texture;
  bufferCopy = buffer;
  countBufferCopy = countBuffer;
  thresholdsBufferCopy = thresholdsBuffer;
  pointsBufferCopy = pointsBuffer;
  locationsBufferCopy = locationsBuffer;
  responsesBufferCopy = responsesBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v28 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v28);
  }

  [keypoints3_metalCopy computeCommandEncoder];
  v27 = v29 = keypoints3_metalCopy;
  [v27 setComputePipelineState:self->_listKeypoints3PipelineState];
  [v27 setThreadgroupMemoryLength:256 atIndex:0];
  [v27 setBuffer:bufferCopy offset:0 atIndex:0];
  [v27 setBuffer:thresholdsBufferCopy offset:0 atIndex:1];
  [v27 setBuffer:responsesBufferCopy offset:0 atIndex:2];
  [v27 setBuffer:locationsBufferCopy offset:0 atIndex:3];
  [v27 setBuffer:pointsBufferCopy offset:0 atIndex:4];
  [v27 setBuffer:countBufferCopy offset:0 atIndex:5];
  [v27 setTexture:textureCopy atIndex:0];
  v34[0] = (width + 31) >> 5;
  v34[1] = (height + 1) >> 1;
  v34[2] = count;
  v32 = xmmword_254B8B140;
  v33 = 1;
  [v27 dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
  [v27 endEncoding];
}

- (void)_refineKeypoints_metal:(id)keypoints_metal inputImageTexture:(id)texture keypointLocationsBuffer:(id)buffer refinedLocationsBuffer:(id)locationsBuffer keypointCountBuffer:(id)countBuffer keypointCount:(unint64_t)count debugIntermediatesBuffer:(id)intermediatesBuffer cumulativePointsBuffer:(id)self0 tileCountBuffer:(id)self1
{
  keypoints_metalCopy = keypoints_metal;
  textureCopy = texture;
  bufferCopy = buffer;
  locationsBufferCopy = locationsBuffer;
  countBufferCopy = countBuffer;
  intermediatesBufferCopy = intermediatesBuffer;
  pointsBufferCopy = pointsBuffer;
  tileCountBufferCopy = tileCountBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v25);
  }

  computeCommandEncoder = [keypoints_metalCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_refineKeypointPipelineState];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:locationsBufferCopy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:countBufferCopy offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:pointsBufferCopy offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:tileCountBufferCopy offset:0 atIndex:4];
  [computeCommandEncoder setBuffer:intermediatesBufferCopy offset:0 atIndex:5];
  [computeCommandEncoder setSamplerState:self->_clampedLinearNonNormSamplerState atIndex:0];
  if (count)
  {
    v28 = 1;
    v29 = (count + 31) >> 5;
    v30 = vdupq_n_s64(1uLL);
    v27 = xmmword_254B8B120;
    [computeCommandEncoder dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  }

  else
  {
    v29 = 32;
    v30 = vdupq_n_s64(1uLL);
    [computeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:countBufferCopy indirectBufferOffset:4 threadsPerThreadgroup:&v29];
  }

  [computeCommandEncoder endEncoding];
}

- (void)_extractORB_metal:(id)b_metal boxBlurredTexture:(id)texture keypointLocationsBuffer:(id)buffer outputORBDescriptorBuffer:(id)descriptorBuffer keypointCountBuffer:(id)countBuffer keypointCount:(unint64_t)count
{
  b_metalCopy = b_metal;
  textureCopy = texture;
  bufferCopy = buffer;
  descriptorBufferCopy = descriptorBuffer;
  countBufferCopy = countBuffer;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v20);
  }

  computeCommandEncoder = [b_metalCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_extractORBPipelineState];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setBuffer:countBufferCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:descriptorBufferCopy offset:0 atIndex:2];
  if (count)
  {
    *v23 = (count + 31) >> 5;
    *&v23[8] = vdupq_n_s64(1uLL);
    v21 = xmmword_254B8B120;
    v22 = 1;
    [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  }

  else
  {
    *v23 = xmmword_254B8B120;
    *&v23[16] = 1;
    [computeCommandEncoder dispatchThreadgroupsWithIndirectBuffer:countBufferCopy indirectBufferOffset:4 threadsPerThreadgroup:v23];
  }

  [computeCommandEncoder endEncoding];
}

- (void)_boxBlur_metal:(id)blur_metal inputImageTexture:(id)texture boxBlurredTexture:(id)blurredTexture
{
  blur_metalCopy = blur_metal;
  textureCopy = texture;
  blurredTextureCopy = blurredTexture;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v14);
  }

  v11 = ((([blurredTextureCopy width] + 3) >> 2) + 7) >> 3;
  v12 = ((([blurredTextureCopy height] + 1) >> 1) + 1) >> 1;
  computeCommandEncoder = [blur_metalCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_boxBlurPipelineState];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:blurredTextureCopy atIndex:1];
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = 1;
  v15 = xmmword_254B8B150;
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
}

- (void)_ORBDescriptorsFromTextures_part1_metal:(id)textures_part1_metal inputTexture_RGBA8Uint:(id)uint inputTexture_R8Unorm:(id)unorm responseBuffer:(id)buffer cumulativeKeypointsPerRegionBuffer:(id)regionBuffer intermediateBuffers:(id)buffers
{
  buffersCopy = buffers;
  regionBufferCopy = regionBuffer;
  bufferCopy = buffer;
  uintCopy = uint;
  textures_part1_metalCopy = textures_part1_metal;
  LODWORD(regionBuffer) = -[unorm width];
  responseTexture = [buffersCopy responseTexture];
  v39 = textures_part1_metalCopy;
  [(MetalFAST9BRIEF *)self _computeResponseMap_metal:textures_part1_metalCopy inputTexture:uintCopy outputTexture:responseTexture garbagePixelCount:regionBuffer & 3];

  responseTexture2 = [buffersCopy responseTexture];
  suppressedResponseTexture_RGBA8Uint = [buffersCopy suppressedResponseTexture_RGBA8Uint];
  selfCopy = self;
  [(MetalFAST9BRIEF *)self _suppressResponseMap_metal:textures_part1_metalCopy unsuppressedTexture:responseTexture2 suppressedTexture:suppressedResponseTexture_RGBA8Uint garbagePixelCount:regionBuffer & 3];

  suppressedResponseTexture_R8Unorm = [buffersCopy suppressedResponseTexture_R8Unorm];
  rectRegionsBuffer = [buffersCopy rectRegionsBuffer];
  rectRegionsDesiredKeypoints = [buffersCopy rectRegionsDesiredKeypoints];
  thresholdsBuffer = [buffersCopy thresholdsBuffer];
  histogramsBuffer = [buffersCopy histogramsBuffer];
  thresholdRangeBuffer = [buffersCopy thresholdRangeBuffer];
  countOfKeypointsPerRegion = [buffersCopy countOfKeypointsPerRegion];
  truncatedRegionsBuffer = [buffersCopy truncatedRegionsBuffer];
  -[MetalFAST9BRIEF _generateHistograms_metal:suppressedTexture:tileBuffer:desiredKeypointCountsBuffer:thresholdsBuffer:histogramBuffer:thresholdRangeBuffer:keypointsAtChosenThresholdBuffer:truncatedRegionsBuffer:tileCount:maxTileHeight:](selfCopy, "_generateHistograms_metal:suppressedTexture:tileBuffer:desiredKeypointCountsBuffer:thresholdsBuffer:histogramBuffer:thresholdRangeBuffer:keypointsAtChosenThresholdBuffer:truncatedRegionsBuffer:tileCount:maxTileHeight:", v39, suppressedResponseTexture_R8Unorm, rectRegionsBuffer, rectRegionsDesiredKeypoints, thresholdsBuffer, histogramsBuffer, thresholdRangeBuffer, countOfKeypointsPerRegion, truncatedRegionsBuffer, [buffersCopy countOfRectRegions], objc_msgSend(buffersCopy, "maxRegionHeight"));

  countOfKeypointsPerRegion2 = [buffersCopy countOfKeypointsPerRegion];
  rectRegionCount = [buffersCopy rectRegionCount];
  keypointCountBuffer = [buffersCopy keypointCountBuffer];
  v31 = selfCopy;
  [(MetalFAST9BRIEF *)selfCopy _cumulativeSum_metal:v39 expectedPointsBuffer:countOfKeypointsPerRegion2 cumulativePointsBuffer:regionBufferCopy regionCountBuffer:rectRegionCount keypointCountBuffer:keypointCountBuffer regionCount:0];

  suppressedResponseTexture_R8Uint = [buffersCopy suppressedResponseTexture_R8Uint];
  rectRegionsBuffer2 = [buffersCopy rectRegionsBuffer];
  rectRegionCount2 = [buffersCopy rectRegionCount];
  countOfRectRegions = [buffersCopy countOfRectRegions];
  thresholdsBuffer2 = [buffersCopy thresholdsBuffer];
  compactKeypointsBuffer = [buffersCopy compactKeypointsBuffer];
  LODWORD(selfCopy) = [buffersCopy maxRegionHeight];

  [(MetalFAST9BRIEF *)v31 _listKeypoints2_metal:v39 suppressedResponseMapTexture:suppressedResponseTexture_R8Uint tileBuffer:rectRegionsBuffer2 tileCountBuffer:rectRegionCount2 tileCount:countOfRectRegions thresholdsBuffer:thresholdsBuffer2 cumulativePointsBuffer:selfCopy keypointLocationsBuffer:regionBufferCopy keypointResponsesBuffer:compactKeypointsBuffer maxRegionHeight:bufferCopy];
}

- (void)_ORBDescriptorsFromTextures_part2_metal:(id)textures_part2_metal inputTexture_RGBA8Uint:(id)uint inputTexture_R8Unorm:(id)unorm descriptorBuffer:(id)buffer refinedKeypointsBuffer:(id)keypointsBuffer cumulativeKeypointsPerRegionBuffer:(id)regionBuffer intermediateBuffers:(id)buffers keypointCount:(int)self0
{
  buffersCopy = buffers;
  regionBufferCopy = regionBuffer;
  keypointsBufferCopy = keypointsBuffer;
  bufferCopy = buffer;
  unormCopy = unorm;
  uintCopy = uint;
  textures_part2_metalCopy = textures_part2_metal;
  compactKeypointsBuffer = [buffersCopy compactKeypointsBuffer];
  keypointCountBuffer = [buffersCopy keypointCountBuffer];
  refinementIntermediatesBuffer = [buffersCopy refinementIntermediatesBuffer];
  rectRegionCount = [buffersCopy rectRegionCount];
  [(MetalFAST9BRIEF *)self _refineKeypoints_metal:textures_part2_metalCopy inputImageTexture:unormCopy keypointLocationsBuffer:compactKeypointsBuffer refinedLocationsBuffer:keypointsBufferCopy keypointCountBuffer:keypointCountBuffer keypointCount:count debugIntermediatesBuffer:refinementIntermediatesBuffer cumulativePointsBuffer:regionBufferCopy tileCountBuffer:rectRegionCount];

  boxBlurredTexture_R8Uint = [buffersCopy boxBlurredTexture_R8Uint];
  [(MetalFAST9BRIEF *)self _boxBlur_metal:textures_part2_metalCopy inputImageTexture:uintCopy boxBlurredTexture:boxBlurredTexture_R8Uint];

  boxBlurredTexture_R8Uint2 = [buffersCopy boxBlurredTexture_R8Uint];
  keypointCountBuffer2 = [buffersCopy keypointCountBuffer];

  [(MetalFAST9BRIEF *)self _extractORB_metal:textures_part2_metalCopy boxBlurredTexture:boxBlurredTexture_R8Uint2 keypointLocationsBuffer:keypointsBufferCopy outputORBDescriptorBuffer:bufferCopy keypointCountBuffer:keypointCountBuffer2 keypointCount:count];
}

- (void)ORBDescriptorsFromPixelBuffer_metal:(id)buffer_metal inputBuffer:(__CVBuffer *)buffer descriptorBuffer:(id)descriptorBuffer refinedKeypointsBuffer:(id)keypointsBuffer responseBuffer:(id)responseBuffer cumulativeKeypointsPerRegionBuffer:(id)regionBuffer intermediateBuffers:(id)buffers
{
  buffer_metalCopy = buffer_metal;
  descriptorBufferCopy = descriptorBuffer;
  keypointsBufferCopy = keypointsBuffer;
  responseBufferCopy = responseBuffer;
  regionBufferCopy = regionBuffer;
  buffersCopy = buffers;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v30);
  }

  v19 = [(MetalFAST9BRIEF *)self _textureFromPixelBuffer:buffer forcedMetalPixelFormat:10 forcedWidthDivisior:1];
  v20 = [(MTLDevice *)self->_device supportsFeatureSet:4];
  v34 = buffer_metalCopy;
  commandBuffer = v34;
  if ((v20 & 1) == 0)
  {
    commandBuffer = [(MTLCommandQueue *)self->_queue commandBuffer];
  }

  v22 = keypointsBufferCopy;
  CleanRect = CVImageBufferGetCleanRect(buffer);
  x = CleanRect.origin.x;
  v24 = CVImageBufferGetEncodedSize(buffer).height - (CleanRect.origin.y + CleanRect.size.height);
  gaussianBlurredTexture_R8Unorm = [buffersCopy gaussianBlurredTexture_R8Unorm];
  *&x = x;
  [(MetalFAST9BRIEF *)self _gaussianishBlur_metal:commandBuffer inputTexture:v19 outputTexture:gaussianBlurredTexture_R8Unorm offset:*&x, v24];

  gaussianBlurredTexture_RGBA8Uint = [buffersCopy gaussianBlurredTexture_RGBA8Uint];
  gaussianBlurredTexture_R8Unorm2 = [buffersCopy gaussianBlurredTexture_R8Unorm];
  [(MetalFAST9BRIEF *)self _ORBDescriptorsFromTextures_part1_metal:commandBuffer inputTexture_RGBA8Uint:gaussianBlurredTexture_RGBA8Uint inputTexture_R8Unorm:gaussianBlurredTexture_R8Unorm2 responseBuffer:responseBufferCopy cumulativeKeypointsPerRegionBuffer:regionBufferCopy intermediateBuffers:buffersCopy];
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    keypointCountBuffer = [buffersCopy keypointCountBuffer];
    v28 = *[keypointCountBuffer contents];
  }

  LODWORD(v31) = v28;
  [(MetalFAST9BRIEF *)self _ORBDescriptorsFromTextures_part2_metal:v34 inputTexture_RGBA8Uint:gaussianBlurredTexture_RGBA8Uint inputTexture_R8Unorm:gaussianBlurredTexture_R8Unorm2 descriptorBuffer:descriptorBufferCopy refinedKeypointsBuffer:v22 cumulativeKeypointsPerRegionBuffer:regionBufferCopy intermediateBuffers:buffersCopy keypointCount:v31];
}

- (void)_gaussianishBlur_metal:(id)blur_metal inputTexture:(id)texture outputTexture:(id)outputTexture offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v24 = *MEMORY[0x277D85DE8];
  blur_metalCopy = blur_metal;
  textureCopy = texture;
  outputTextureCopy = outputTexture;
  if (![(PipelineStatePromise *)self->_pipelineStates groupWasSuccessful])
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Failed to create compute pipeline state" userInfo:0];
    objc_exception_throw(v19);
  }

  computeCommandEncoder = [blur_metalCopy computeCommandEncoder];
  v22[0] = rint(x);
  v22[1] = rint(y);
  v23 = 0;
  v15 = [(PipelineStatePromise *)self->_pipelineStates pipelineStateForFunction:self->_gaussianishBlurKernel];
  [computeCommandEncoder setComputePipelineState:v15];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:outputTextureCopy atIndex:1];
  [computeCommandEncoder setBytes:v22 length:16 atIndex:0];
  threadExecutionWidth = [v15 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v15 maxTotalThreadsPerThreadgroup];
  v18 = maxTotalThreadsPerThreadgroup / [v15 threadExecutionWidth];
  v21[0] = (threadExecutionWidth + [outputTextureCopy width] - 1) / threadExecutionWidth;
  v21[1] = (v18 + [outputTextureCopy height] - 1) / v18;
  v21[2] = 1;
  v20[0] = threadExecutionWidth;
  v20[1] = v18;
  v20[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
  [computeCommandEncoder endEncoding];
}

+ (id)_createMTLBufferFromRects:(id)rects device:(id)device storageMode:(unint64_t)mode maxRectWidth:(unint64_t *)width maxRectHeight:(unint64_t *)height
{
  rectsCopy = rects;
  deviceCopy = device;
  v13 = [deviceCopy newBufferWithLength:48 * objc_msgSend(rectsCopy options:{"count"), 16 * mode}];
  contents = [v13 contents];
  if ([rectsCopy count])
  {
    v15 = 0;
    v20 = 0u;
    do
    {
      v16 = [rectsCopy objectAtIndex:{v15, v20.i64[0]}];
      v21 = 0u;
      v22 = 0u;
      [v16 getValue:&v21 size:32];
      v17 = vcvtq_u64_f64(v22);
      v18 = vmovn_s64(v17);
      *(contents + 16 * v15) = vuzp1q_s32(vcvtq_u64_f64(v21), v17);
      v17.i64[1] = v20.i64[1];
      *v17.i8 = vmax_u32(*v20.i8, v18);
      v20 = v17;

      ++v15;
    }

    while ([rectsCopy count] > v15);
  }

  else
  {
    v20.i64[0] = 0;
  }

  if (width)
  {
    *width = v20.u32[0];
  }

  if (height)
  {
    *height = v20.u32[1];
  }

  return v13;
}

+ (id)_createMTLBufferFromRectRegionsDesiredKeypoints:(id)keypoints device:(id)device storageMode:(unint64_t)mode maxAllowedDescriptors:(unint64_t *)descriptors
{
  keypointsCopy = keypoints;
  deviceCopy = device;
  v11 = [deviceCopy newBufferWithLength:12 * objc_msgSend(keypointsCopy options:{"count"), 16 * mode}];
  contents = [v11 contents];
  if ([keypointsCopy count] >= 2)
  {
    v14 = 0;
    v13 = 0;
    v15 = (contents + 4);
    v16 = 1;
    do
    {
      v17 = [keypointsCopy objectAtIndex:v16 - 1];
      *(v15 - 1) = [v17 unsignedIntValue];

      v18 = [keypointsCopy objectAtIndex:v16];
      *v15 = [v18 unsignedIntValue];

      v19 = (*v15 + *(v15 - 1));
      v15[1] = v19;
      v13 += v19;
      ++v14;
      v15 += 3;
      v16 += 2;
    }

    while (v14 < [keypointsCopy count] >> 1);
  }

  else
  {
    v13 = 0;
  }

  if (descriptors)
  {
    *descriptors = v13;
  }

  return v11;
}

@end
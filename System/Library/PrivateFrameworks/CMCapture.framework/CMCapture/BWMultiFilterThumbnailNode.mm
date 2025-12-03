@interface BWMultiFilterThumbnailNode
- (BWMultiFilterThumbnailNode)initWithFilters:(id)filters thumbnailSize:(CGSize)size maxLossyCompressionLevel:(int)level;
- (uint64_t)_loadAndConfigureFilterBundle;
- (void)_releaseResources;
- (void)_supportedPixelFormats;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMultiFilterThumbnailNode

- (void)_supportedPixelFormats
{
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  format = [*(self + 8) format];
  if (!format)
  {
    [array addObject:&unk_1F2243F30];
    v8 = 1;
    goto LABEL_8;
  }

  v4 = format;
  IsFullRange = FigCapturePixelFormatIsFullRange([format pixelFormat]);
  v6 = FigCapturePixelFormatIsFullRange([v4 pixelFormat]);
  v7 = v6;
  if ((IsFullRange & 1) == 0)
  {
    [array addObject:&unk_1F2243F30];
    v8 = 1;
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_9;
    }

LABEL_8:
    [array addObject:&unk_1F2243F48];
    v9 = 1;
    goto LABEL_9;
  }

  v8 = 0;
  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    [array addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, *(self + 152), v8, v9, 0, 1, 0, 0)}];
  }

  return array;
}

- (BWMultiFilterThumbnailNode)initWithFilters:(id)filters thumbnailSize:(CGSize)size maxLossyCompressionLevel:(int)level
{
  height = size.height;
  width = size.width;
  v17.receiver = self;
  v17.super_class = BWMultiFilterThumbnailNode;
  v9 = [(BWNode *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_thumbnailSize.width = width;
    v9->_thumbnailSize.height = height;
    v9->_filters = [filters copy];
    v10->_maxLossyCompressionLevel = level;
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10 index:0];
    _supportedPixelFormats = [(BWMultiFilterThumbnailNode *)v10 _supportedPixelFormats];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:_supportedPixelFormats];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v12 primaryMediaConfiguration] setFormatRequirements:v14];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v12 primaryMediaConfiguration] setPassthroughMode:0];
    [(BWNode *)v10 addInput:v12];

    v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v10];
    v16 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:_supportedPixelFormats];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setFormatRequirements:v16];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setIndexOfInputWhichDrivesThisOutput:0];
    [(BWNode *)v10 addOutput:v15];

    v10->_colorLookupCache = objc_alloc_init(BWColorLookupCache);
  }

  return v10;
}

- (void)dealloc
{
  mostRecentFormatDescription = self->_mostRecentFormatDescription;
  if (mostRecentFormatDescription)
  {
    CFRelease(mostRecentFormatDescription);
  }

  [(BWMultiFilterThumbnailNode *)&self->super.super.isa _releaseResources];
  v4.receiver = self;
  v4.super_class = BWMultiFilterThumbnailNode;
  [(BWNode *)&v4 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  cf = 0;
  BWSampleBufferRemoveAttachedMedia(buffer, @"Depth");
  if (buffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    if (ImageBuffer)
    {
      v7 = ImageBuffer;
      newPixelBuffer = [(BWPixelBufferPool *)[(BWNodeOutput *)[(BWNode *)self output] livePixelBufferPool] newPixelBuffer];
      if (newPixelBuffer)
      {
        v9 = newPixelBuffer;
        [(FigColorCubeMetalFilter *)self->_filter setInputPixelBuffer:v7];
        [(FigColorCubeMetalFilter *)self->_filter setMattePixelbuffer:0];
        [(FigColorCubeMetalFilter *)self->_filter setOutputPixelBuffer:v9];
        if (![(FigColorCubeMetalFilter *)self->_filter process]&& ![(FigColorCubeMetalFilter *)self->_filter finishProcessing]&& !BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v9, &self->_mostRecentFormatDescription, &cf))
        {
          [(BWNodeOutput *)self->super._output emitSampleBuffer:cf];
        }

        CFRelease(v9);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        [BWMultiFilterThumbnailNode renderSampleBuffer:forInput:];
      }
    }

    else
    {
      [BWMultiFilterThumbnailNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [BWMultiFilterThumbnailNode renderSampleBuffer:forInput:];
  }
}

- (void)_releaseResources
{
  if (self)
  {

    self[20] = 0;
    self[21] = 0;

    self[18] = 0;
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  if (self)
  {
    output = self->super._output;
  }

  else
  {
    output = 0;
  }

  v7 = objc_alloc_init(BWVideoFormatRequirements);
  +[BWVideoFormatRequirements cacheModesForOptimizedHWAccess];
  [OUTLINED_FUNCTION_4() setSupportedCacheModes:?];
  if ([format colorSpaceProperties])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  else
  {
    v8 = 0;
  }

  [(BWVideoFormatRequirements *)v7 setSupportedColorSpaceProperties:v8];
  [(BWMultiFilterThumbnailNode *)self _supportedPixelFormats];
  [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
  [(BWVideoFormatRequirements *)v7 setWidth:self->_thumbnailSize.width];
  [(BWVideoFormatRequirements *)v7 setHeight:(self->_thumbnailSize.height * ([(NSArray *)self->_filters count]+ 1))];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)output primaryMediaConfiguration] setFormatRequirements:v7];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  [(BWMultiFilterThumbnailNode *)self _loadAndConfigureFilterBundle];
  [(BWColorLookupCache *)self->_colorLookupCache identityColorLookupTable];
  v3 = [OUTLINED_FUNCTION_4() arrayWithObject:?];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  filters = self->_filters;
  v12 = OUTLINED_FUNCTION_17_0(v3, v5, v6, v7, v8, v9, v10, v11, v27.receiver, v27.super_class, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, 0);
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v45 != v14)
      {
        objc_enumerationMutation(filters);
      }

      v16 = *(*(&v44 + 1) + 8 * v15);
      v17 = [(BWColorLookupCache *)self->_colorLookupCache colorLookupTablesForFilter:v16];
      if (!v17)
      {
        v17 = [(BWColorLookupCache *)self->_colorLookupCache fetchColorLookupTablesForFilter:v16];
        if (!v17)
        {
          break;
        }
      }

      [v17 foregroundColorLookupTable];
      v18 = [OUTLINED_FUNCTION_4() addObject:?];
      if (v13 == ++v15)
      {
        v13 = OUTLINED_FUNCTION_17_0(v18, v19, v20, v21, v22, v23, v24, v25, v27.receiver, v27.super_class, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    *([(FigColorCubeMetalFilter *)self->_filter filterDescriptor]+ 8) = 0;
    v26 = [(NSArray *)self->_filters count]+ 1;
    *([(FigColorCubeMetalFilter *)self->_filter filterDescriptor]+ 4) = v26;
    *[(FigColorCubeMetalFilter *)self->_filter filterDescriptor]= 32;
    if (![(FigColorCubeMetalFilter *)self->_filter prepareToProcess:0])
    {
      [(FigColorCubeMetalFilter *)self->_filter setForegroundCubesWithNames:0 data:v3];
    }
  }

  v27.receiver = self;
  v27.super_class = BWMultiFilterThumbnailNode;
  [(BWNode *)&v27 prepareForCurrentConfigurationToBecomeLive];
}

- (uint64_t)_loadAndConfigureFilterBundle
{
  if (result)
  {
    v1 = result;
    v5 = 0;
    v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/MetalFilter.bundle"];
    if (!v2)
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
      return FigSignalErrorAtGM();
    }

    v3 = v2;
    if ([v2 loadAndReturnError:&v5])
    {
      v4 = [objc_alloc(objc_msgSend(v3 classNamed:{@"FigColorCubeMetalFilter", "initWithCommandQueue:", 0}];
      *(v1 + 168) = v4;
      if (v4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
      return FigSignalErrorAtGM();
    }

    return 4294954510;
  }

  return result;
}

- (void)didReachEndOfDataForInput:(id)input
{
  [(BWMultiFilterThumbnailNode *)&self->super.super.isa _releaseResources];
  v5.receiver = self;
  v5.super_class = BWMultiFilterThumbnailNode;
  [(BWNode *)&v5 didReachEndOfDataForInput:input];
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end
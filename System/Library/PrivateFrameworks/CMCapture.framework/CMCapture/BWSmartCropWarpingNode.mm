@interface BWSmartCropWarpingNode
+ (void)initialize;
- (int)_initRTSCProcessorWithOutputDimensions:(id)dimensions;
- (int)_updateDetectedObjectsInfo:(id)info;
- (void)_updateOutputRequirements;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)initWithHomographyProvider:(int)provider aspectRatio:(uint64_t)ratio formatDimensions:(int)dimensions maxLossyCompressionLevel:;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setActiveAspectRatio:(int)ratio;
@end

@implementation BWSmartCropWarpingNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  [(RTSCProcessor *)self->_rtscProcessor purgeResources];

  v3.receiver = self;
  v3.super_class = BWSmartCropWarpingNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWSmartCropWarpingNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_rtscProcessor)
  {
    [(BWSmartCropWarpingNode *)self _initRTSCProcessorWithOutputDimensions:FigCaptureConvertDimensionsForAspectRatio(*&self->_formatDimensions, self->_activeAspectRatio)];
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {

    [(BWSmartCropWarpingNode *)self _updateOutputRequirements];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BWSmartCropWarpingNode;
    [(BWNode *)&v9 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v22 = 0;
  v23 = 0;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  memset(&v21, 0, sizeof(v21));
  CMSampleBufferGetPresentationTimeStamp(&v21, buffer);
  v7 = *off_1E798A420;
  if ([v6 objectForKeyedSubscript:*off_1E798A420])
  {
    CMTimeMakeFromDictionary(v19, [v6 objectForKeyedSubscript:v7]);
    v21 = *v19;
  }

  homographyProvider = self->_homographyProvider;
  *v19 = v21;
  v9 = [(BWSmartCropHomographyProvider *)homographyProvider smartCropHomographyDataForPTS:v19];
  if ([v9 length] != 48)
  {
    [BWSmartCropWarpingNode renderSampleBuffer:forInput:];
    goto LABEL_14;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer || (v11 = ImageBuffer, (v12 = [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->super._output primaryMediaProperties] livePixelBufferPool] newPixelBuffer]) == 0))
  {

    v16 = 4294954510;
LABEL_13:
    v9 = [BWNodeError newError:v16 sourceNode:self stillImageSettings:CMGetAttachment(buffer metadata:@"StillSettings", 0), v6];
    [(BWNodeOutput *)self->super._output emitNodeError:v9];
LABEL_14:

    goto LABEL_15;
  }

  v13 = v12;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  [v9 getBytes:v19 length:48];
  [(RTSCProcessor *)self->_rtscProcessor setRenderingHomography:*v19, *&v19[16], *&v20];
  [(RTSCProcessor *)self->_rtscProcessor setInputPixelBuffer:v11];
  v18 = v21;
  [(RTSCProcessor *)self->_rtscProcessor setInputPTS:&v18];
  [(RTSCProcessor *)self->_rtscProcessor setInputMetadata:v6];
  [(RTSCProcessor *)self->_rtscProcessor setOutputPixelBuffer:v13];
  process = [(RTSCProcessor *)self->_rtscProcessor process];
  if (process || (process = [(RTSCProcessor *)self->_rtscProcessor finishProcessing], process))
  {
    v16 = process;
  }

  else
  {
    FigCaptureMetadataUtilitiesPreventFurtherCropping(v6, v15);
    [(BWSmartCropWarpingNode *)self _updateDetectedObjectsInfo:v6];
    v16 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v13, &v22, &v23);
    if (v23)
    {
      v17 = CMSampleBufferGetImageBuffer(buffer);
      CVBufferPropagateAttachments(v17, v13);
      [(BWNodeOutput *)self->super._output emitSampleBuffer:v23];
    }
  }

  CFRelease(v13);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_15:
  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)_updateOutputRequirements
{
  v3 = objc_alloc_init(BWVideoFormatRequirements);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWVideoFormat pixelFormat](-[BWNodeInput videoFormat](self->super._input, "videoFormat"), "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v3, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
  v4 = FigCaptureConvertDimensionsForAspectRatio(*&self->_formatDimensions, self->_activeAspectRatio);
  [(BWVideoFormatRequirements *)v3 setWidth:v4];
  [(BWVideoFormatRequirements *)v3 setHeight:v4 >> 32];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v3];
}

uint64_t __53__BWSmartCropWarpingNode__updateDetectedObjectsInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:?];
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8.origin = *MEMORY[0x1E695F050];
  v8.size = v7;
  if (result)
  {
    result = CGRectMakeWithDictionaryRepresentation(result, &v8);
    if (result)
    {
      [*(*(a1 + 32) + 136) warpCGRect:{*&v8.origin, *&v8.size}];
      v8 = v9;
      return [a2 setObject:CGRectCreateDictionaryRepresentation(v9) forKeyedSubscript:a3];
    }
  }

  return result;
}

- (void)setActiveAspectRatio:(int)ratio
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_activeAspectRatio = ratio;
  [(BWSmartCropWarpingNode *)self _updateOutputRequirements];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)initWithHomographyProvider:(int)provider aspectRatio:(uint64_t)ratio formatDimensions:(int)dimensions maxLossyCompressionLevel:
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = BWSmartCropWarpingNode;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  if (v9)
  {
    v9[16] = a2;
    *(v9 + 36) = provider;
    *(v9 + 148) = ratio;
    v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
    v11 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F22482C8, dimensions);
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v11];
    [(BWNodeInput *)v10 setFormatRequirements:v12];
    [(BWNodeInput *)v10 setPassthroughMode:0];
    [v9 addInput:v10];
    v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:v11];
    [(BWNodeOutput *)v13 setFormatRequirements:v14];
    [(BWNodeOutput *)v13 setPassthroughMode:0];
    [(BWNodeOutput *)v13 setProvidesPixelBufferPool:1];
    *(v9 + 39) = 0;
    [v9 setSupportsLiveReconfiguration:1];
    [v9 addOutput:v13];
  }

  return v9;
}

- (int)_initRTSCProcessorWithOutputDimensions:(id)dimensions
{
  v4 = BWLoadProcessorBundle(@"RTSC", 1);
  if (!v4)
  {
    return -12786;
  }

  v5 = [v4 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"RTSCProcessorV%d", 1)}];
  if (!v5)
  {
    return -12786;
  }

  v6 = v5;

  v7 = objc_alloc_init(v6);
  self->_rtscProcessor = v7;
  if (!v7)
  {
    return -12786;
  }

  setup = [(RTSCProcessor *)v7 setup];
  if (setup || (setup = [(RTSCProcessor *)self->_rtscProcessor prewarm]) != 0)
  {
    v9 = setup;
    OUTLINED_FUNCTION_0_8();
LABEL_12:
    FigDebugAssert3();
    return v9;
  }

  v9 = [(RTSCProcessor *)self->_rtscProcessor prepareToProcess:1];
  if (v9)
  {
    OUTLINED_FUNCTION_0_8();
    goto LABEL_12;
  }

  return v9;
}

- (int)_updateDetectedObjectsInfo:(id)info
{
  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __53__BWSmartCropWarpingNode__updateDetectedObjectsInfo___block_invoke;
  v43 = &unk_1E7990608;
  selfCopy = self;
  v4 = *off_1E798B220;
  v5 = [info objectForKeyedSubscript:*off_1E798B220];
  if (v5)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v5, 1uLL);
    if (DeepCopy)
    {
      v7 = DeepCopy;
      v23 = v4;
      infoCopy = info;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = [DeepCopy countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v28)
      {
        v26 = *v37;
        v25 = *off_1E798ACE8;
        v8 = *off_1E798ACB8;
        v27 = v7;
        do
        {
          v9 = 0;
          do
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v7);
            }

            v29 = v9;
            v10 = *(*(&v36 + 1) + 8 * v9);
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v11 = [objc_msgSend(v7 objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", v25}];
            v12 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v32;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v32 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = OUTLINED_FUNCTION_1_32();
                  v17(v16);
                  if ([v10 isEqual:v8])
                  {
                    v18 = OUTLINED_FUNCTION_1_32();
                    v19(v18);
                    v20 = OUTLINED_FUNCTION_1_32();
                    v21(v20);
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
              }

              while (v13);
            }

            v9 = v29 + 1;
            v7 = v27;
          }

          while (v29 + 1 != v28);
          v28 = [v27 countByEnumeratingWithState:&v36 objects:v35 count:16];
        }

        while (v28);
      }

      [infoCopy setObject:v7 forKeyedSubscript:v23];
      CFRelease(v7);
      LODWORD(v5) = 0;
    }

    else
    {
      FigDebugAssert3();
      LODWORD(v5) = -1;
    }
  }

  return v5;
}

@end
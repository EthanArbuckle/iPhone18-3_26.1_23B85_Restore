@interface BWPointCloudDensificationNode
- (BWPointCloudDensificationNode)initWithConfiguration:(id)a3;
- (id)_newPointCloudFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_setupPointCloudMediaConfigurationForInput:(id)a3 inputAttachedMediaKey:(id)a4;
- (void)dealloc;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWPointCloudDensificationNode

- (BWPointCloudDensificationNode)initWithConfiguration:(id)a3
{
  v11.receiver = self;
  v11.super_class = BWPointCloudDensificationNode;
  v4 = [(BWNode *)&v11 init];
  if (v4)
  {
    v4->_configuration = a3;
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v5 setPassthroughMode:1];
    [(BWPointCloudDensificationNode *)v4 _setupPointCloudMediaConfigurationForInput:v5 inputAttachedMediaKey:0x1F219CD30];
    if ([(BWPointCloudDensificationNodeConfiguration *)v4->_configuration timeOfFlightCameraType]== 2)
    {
      [(BWPointCloudDensificationNode *)v4 _setupPointCloudMediaConfigurationForInput:v5 inputAttachedMediaKey:0x1F21AAE50];
    }

    [(BWNode *)v4 addInput:v5];
    v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v6 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v6 setPassthroughMode:1];
    [(BWNodeOutput *)v6 setIndexOfInputWhichDrivesThisOutput:0];
    v7 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v8 = objc_alloc_init(BWVideoFormatRequirements);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BWPointCloudDensificationNodeConfiguration depthPixelFormat](v4->_configuration, "depthPixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v8, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
    [(BWVideoFormatRequirements *)v8 setWidth:[(BWPointCloudDensificationNodeConfiguration *)v4->_configuration depthOutputDimensions]];
    [(BWVideoFormatRequirements *)v8 setHeight:[(BWPointCloudDensificationNodeConfiguration *)v4->_configuration depthOutputDimensions]>> 32];
    [(BWNodeOutputMediaConfiguration *)v7 setFormatRequirements:v8];
    [(BWNodeOutputMediaConfiguration *)v7 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v7 setProvidesPixelBufferPool:1];
    [(BWNodeOutput *)v6 setMediaConfiguration:v7 forAttachedMediaKey:@"Depth"];
    [(BWNode *)v4 addOutput:v6];
    v4->_executor = [objc_alloc(getADJasperColorV2ExecutorClass()) initWithInputPrioritization:2 engineType:4];
    [objc_msgSend(-[ADJasperColorV2Executor executorParameters](v4->_executor "executorParameters")];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPointCloudDensificationNode;
  [(BWNode *)&v3 dealloc];
}

- (void)_setupPointCloudMediaConfigurationForInput:(id)a3 inputAttachedMediaKey:(id)a4
{
  v6 = objc_alloc_init(BWNodeInputMediaConfiguration);
  [(BWNodeInputMediaConfiguration *)v6 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInputMediaConfiguration *)v6 setPassthroughMode:0];

  [a3 setMediaConfiguration:v6 forAttachedMediaKey:a4];
}

- (id)_newPointCloudFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F219CD30);
  if (!AttachedMedia)
  {
    [BWPointCloudDensificationNode _newPointCloudFromSampleBuffer:];
    v7 = 0;
    goto LABEL_12;
  }

  CVDataBuffer = BWSampleBufferGetCVDataBuffer(AttachedMedia);
  v7 = [objc_alloc(getADJasperPointCloudClass()) initWithDataBuffer:CVDataBuffer];
  if (!v7)
  {
    [BWPointCloudDensificationNode _newPointCloudFromSampleBuffer:];
    goto LABEL_12;
  }

  BWSampleBufferRemoveAttachedMedia(a3, 0x1F219CD30);
  if ([(BWPointCloudDensificationNodeConfiguration *)self->_configuration timeOfFlightCameraType]== 2)
  {
    v8 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAE50);
    if (v8)
    {
      v9 = BWSampleBufferGetCVDataBuffer(v8);
      v10 = [objc_alloc(getADJasperPointCloudClass()) initWithDataBuffer:v9];
      BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AAE50);
      if (v10)
      {
        v13[0] = v7;
        v13[1] = v10;
        v11 = [objc_alloc(getADJasperPointCloudClass()) initByMergingPointClouds:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 2)}];

        return v11;
      }

      [BWPointCloudDensificationNode _newPointCloudFromSampleBuffer:];
    }

    else
    {
      [BWPointCloudDensificationNode _newPointCloudFromSampleBuffer:];
    }

LABEL_12:

    return 0;
  }

  return v7;
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(BWNode *)self outputs];
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 attachedMediaKeyDrivenByInputAttachedMediaKey:a5 inputIndex:{objc_msgSend(a4, "index")}];
        if (v13)
        {
          v14 = v13;
          if (([a5 isEqualToString:0x1F219CD30] & 1) == 0 && (objc_msgSend(a5, "isEqualToString:", 0x1F21AAE50) & 1) == 0 && objc_msgSend(v12, "passthroughMode"))
          {
            -[ADJasperColorV2Executor prepareForColorROI:](self->_executor, "prepareForColorROI:", 0.0, 0.0, [objc_msgSend(a4 "videoFormat")], objc_msgSend(objc_msgSend(a4, "videoFormat"), "height"));
            v15 = [v12 mediaPropertiesForAttachedMediaKey:v14];
            if (!v15)
            {
              if ([v14 isEqualToString:@"PrimaryFormat"])
              {
                v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", self, v12, a5];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
              }

              v15 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v12 _setMediaProperties:v15 forAttachedMediaKey:v14];
            }

            [(BWNodeOutputMediaProperties *)v15 setResolvedFormat:a3];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  sampleBufferOut = 0;
  if (FigCaptureCreateColorCameraCalibrationForColorSampleBuffer(a3, [(BWPointCloudDensificationNodeConfiguration *)self->_configuration rgbSensorConfiguration:a3], [(BWPointCloudDensificationNodeConfiguration *)self->_configuration rgbCameraHorizontalSensorBinningFactor], [(BWPointCloudDensificationNodeConfiguration *)self->_configuration rgbCameraVerticalSensorBinningFactor], &v19) || (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, FigCaptureCreateJasperToColorCameraTransformForJasperSensorConfiguration([(BWPointCloudDensificationNodeConfiguration *)self->_configuration timeOfFlightSensorConfiguration], &v12)))
  {
    v6 = 0;
    goto LABEL_13;
  }

  v6 = [(BWPointCloudDensificationNode *)self _newPointCloudFromSampleBuffer:a3];
  if (!v6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_12_1();
LABEL_27:
    FigDebugAssert3();
    goto LABEL_13;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v16 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
  if (v16 && !FigCaptureCreateDepthMetadataForColorCameraCalibration(v19, [(BWPointCloudDensificationNodeConfiguration *)self->_configuration filteringEnabled], &v18))
  {
    if ([(ADJasperColorV2Executor *)self->_executor executeWithColor:ImageBuffer pointCloud:v6 jasperToColorTransform:v19 colorCamera:&v16 outputDepthMap:0 outputConfidenceMap:*&v12, *&v13, *&v14, *&v15]|| !v16)
    {
      goto LABEL_12;
    }

    formatDescriptionOut = 0;
    v8 = *MEMORY[0x1E695E480];
    CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], v16, &formatDescriptionOut);
    memset(&sampleTiming.presentationTimeStamp, 0, 48);
    *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
    sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    CMSampleBufferGetPresentationTimeStamp(&sampleTiming.presentationTimeStamp, a3);
    sampleTiming.decodeTimeStamp = sampleTiming.duration;
    v9 = CMSampleBufferCreateForImageBuffer(v8, v16, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (!v9)
    {
      CMSetAttachment(sampleBufferOut, *off_1E798D2B8, v18, 1u);
      BWSampleBufferSetAttachedMedia(a3, @"Depth", sampleBufferOut);
LABEL_12:
      [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
      goto LABEL_13;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_12_1();
    goto LABEL_27;
  }

LABEL_13:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

- (uint64_t)_newPointCloudFromSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_newPointCloudFromSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_newPointCloudFromSampleBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_newPointCloudFromSampleBuffer:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end
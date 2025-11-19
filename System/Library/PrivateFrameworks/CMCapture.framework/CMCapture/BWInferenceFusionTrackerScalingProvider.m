@interface BWInferenceFusionTrackerScalingProvider
- (BWInferenceExecutable)executable;
- (BWInferenceSubmittable)submittable;
- (NSArray)inputVideoRequirements;
- (NSArray)outputMetadataRequirements;
- (NSString)description;
- (id)newStorage;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (uint64_t)_executeOnSampleBuffer:(void *)a3 usingStorage:(uint64_t)a4 meanPixel:(uint64_t)a5 withExecutionTime:(uint64_t)a6 completionHandler:;
- (void)dealloc;
- (void)initWithInputRequirement:(void *)a3 orderBufferRequirement:(void *)a4 descriptor:(void *)a5 resourceProvider:(void *)a6 meanPixelCalculator:(uint64_t)a7 operation:;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWInferenceFusionTrackerScalingProvider

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWInferenceFusionTrackerScalingProvider;
  [(BWInferenceFusionTrackerScalingProvider *)&v4 dealloc];
}

- (NSString)description
{
  v5.receiver = self;
  v5.super_class = BWInferenceFusionTrackerScalingProvider;
  v3 = [(BWInferenceFusionTrackerScalingProvider *)&v5 description];
  return [(NSString *)v3 stringByAppendingString:FTCinematicHighPriorityTrackerOpDescription(self->_operation)];
}

- (NSArray)inputVideoRequirements
{
  orderBufferRequirement = self->_orderBufferRequirement;
  if (orderBufferRequirement)
  {
    v8[0] = self->_inputRequirement;
    v8[1] = orderBufferRequirement;
    v3 = MEMORY[0x1E695DEC8];
    p_inputRequirement = v8;
    v5 = 2;
  }

  else
  {
    inputRequirement = self->_inputRequirement;
    v3 = MEMORY[0x1E695DEC8];
    p_inputRequirement = &inputRequirement;
    v5 = 1;
  }

  return [v3 arrayWithObjects:p_inputRequirement count:v5];
}

- (NSArray)outputMetadataRequirements
{
  v2 = [(NSMutableArray *)self->_outputMetadataRequirements copy];

  return v2;
}

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
  }
}

- (BWInferenceExecutable)executable
{
  if (*(self + 10))
  {
    return 0;
  }

  return self;
}

- (BWInferenceSubmittable)submittable
{
  if (!*(self + 10))
  {
    return 0;
  }

  return self;
}

- (id)newStorage
{
  v3 = [BWInferenceProviderStorage alloc];
  inputRequirement = self->_inputRequirement;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&inputRequirement count:1];
  outputRequirement = self->_outputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v3, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", v4, [MEMORY[0x1E695DEC8] arrayWithObjects:&outputRequirement count:1]);
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  v12 = [a4 pixelBufferForRequirement:self->_inputRequirement];
  if (v12)
  {
    v13 = v12;
    meanPixelCalculator = self->_meanPixelCalculator;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __125__BWInferenceFusionTrackerScalingProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
    v17[3] = &unk_1E7991E98;
    v17[4] = self;
    v17[5] = a4;
    v18 = *&a5->var0;
    var3 = a5->var3;
    v17[6] = a7;
    v17[7] = a3;
    [(BWInferenceFusionTrackerMeanPixelCalculator *)meanPixelCalculator asyncMeanPixelForBuffer:v13 completionHandler:v17];
    return 0;
  }

  else
  {
    v15 = -31711;
    (*(a7 + 2))(a7, 4294935585, self);
  }

  return v15;
}

- (void)initWithInputRequirement:(void *)a3 orderBufferRequirement:(void *)a4 descriptor:(void *)a5 resourceProvider:(void *)a6 meanPixelCalculator:(uint64_t)a7 operation:
{
  if (!a1)
  {
    return 0;
  }

  v21.receiver = a1;
  v21.super_class = BWInferenceFusionTrackerScalingProvider;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  if (v13)
  {
    v13[2] = a2;
    v13[3] = a3;
    v13[7] = a7;
    v14 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    [a4 size];
    [(BWVideoFormatRequirements *)v14 setWidth:v15];
    [a4 size];
    [(BWVideoFormatRequirements *)v14 setHeight:v16];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a4, "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v14, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1]);
    [(BWVideoFormatRequirements *)v14 setBytesPerRowAlignment:64];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BWInferenceFusionTrackerNetworkInput_%lu_%@", a7, objc_msgSend(a4, "name")];
    v19 = v14;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v13[4] = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", v17, [OUTLINED_FUNCTION_28() formatByResolvingRequirements:?]);
    v13[8] = [objc_alloc(getFTMSRScalerClass()) init];
    v13[10] = a6;
    v13[9] = [a5 defaultDeviceMetalContext];
  }

  return v13;
}

- (uint64_t)_executeOnSampleBuffer:(void *)a3 usingStorage:(uint64_t)a4 meanPixel:(uint64_t)a5 withExecutionTime:(uint64_t)a6 completionHandler:
{
  if (!a1)
  {
    return 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_50();
  }

  v10 = CMGetAttachment(target, @"FusionTrackerInput", 0);
  if (v10)
  {
    v11 = [v10 highPriorityTrackerState];
  }

  else
  {
    v11 = 0;
  }

  v12 = [a3 pixelBufferForRequirement:a1[2]];
  if (!v12)
  {
    v21 = 4294935585;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [objc_msgSend(a3 pixelBufferPoolForRequirement:{a1[4]), "newPixelBuffer"}];
  if (!v14)
  {
    v21 = 4294935553;
    goto LABEL_21;
  }

  v15 = v14;
  [a3 setPixelBuffer:v14 forRequirement:a1[4]];
  if (([v11 completed] & 1) == 0)
  {
    CVPixelBufferLockBaseAddress(v15, 0);
    v16 = a1[7];
    if (v16 == 3)
    {
      v19 = CMGetAttachment(target, @"FusionTrackerInput", 0);
      FTTapToBoxClass = getFTTapToBoxClass();
      [objc_msgSend(objc_msgSend(v19 "input")];
      v18 = [FTTapToBoxClass renderTap:v15 inBuffer:?];
    }

    else
    {
      if (v16 == 2)
      {
        CVPixelBufferLockBaseAddress(v13, 1uLL);
        v17 = [OUTLINED_FUNCTION_0_47() preProcessInstanceInputFromSourceBuffer:? toDestinationBuffer:? meanPixel:? scaler:?];
      }

      else
      {
        if (v16 != 1)
        {
          CVPixelBufferUnlockBaseAddress(v15, 0);
LABEL_20:
          CFRelease(v15);
          v21 = 4294935580;
LABEL_21:
          [v11 abort];
          goto LABEL_22;
        }

        CVPixelBufferLockBaseAddress(v13, 1uLL);
        targetRectForSampleBuffer(target);
        v17 = [OUTLINED_FUNCTION_0_47() preProcessExemplarInputFromSourceBuffer:? toDestinationBuffer:? forTargetRect:? meanPixel:? scaler:?];
      }

      v18 = v17;
      CVPixelBufferUnlockBaseAddress(v13, 1uLL);
    }

    CVPixelBufferUnlockBaseAddress(v15, 0);
    if (v18)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_18:
  CFRelease(v15);
  v21 = 0;
LABEL_22:
  (*(a6 + 16))(a6, v21, a1);
  return v21;
}

@end
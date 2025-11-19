@interface BWSubjectRelightingCalculator
- (BWSubjectRelightingCalculator)initWithInferenceScheduler:(id)a3;
- (BWSubjectRelightingInferences)_runInferencesOnSampleBuffer:(uint64_t)a3 stillImageRequestSettings:(uint64_t)a4 stillImageCaptureSettings:;
- (double)_curveParameterForSampleBuffer:(uint64_t)a3 stillImageRequestSettings:(void *)a4 stillImageCaptureSettings:;
- (float)_runSubjectRelightingWithInferences:(void *)target sampleBuffer:(int)a4 stillImageCaptureType:(char)a5 stillImageCaptureFlags:;
- (id)startCalculationWithJPEGSampleBuffer:(opaqueCMSampleBuffer *)a3 stillImageRequestSettings:(id)a4 stillImageCaptureSettings:(id)a5;
- (uint64_t)_setupInferenceControllerWithInputVideoFormat:(uint64_t)result;
- (uint64_t)_setupSubjectRelightingStage;
- (void)dealloc;
- (void)prepareForVideoFormatAsync:(id)a3;
@end

@implementation BWSubjectRelightingCalculator

- (BWSubjectRelightingCalculator)initWithInferenceScheduler:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWSubjectRelightingCalculator;
  v4 = [(BWSubjectRelightingCalculator *)&v8 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4->_prepareQueue = dispatch_queue_create("com.apple.bwgraph.subject-relighting-calculator-prepare", v5);
    v4->_calculationQueue = FigDispatchQueueCreateWithPriority();
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = objc_alloc_init(BWInferenceScheduler);
    }

    v4->_inferenceScheduler = v6;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSubjectRelightingCalculator;
  [(BWSubjectRelightingCalculator *)&v3 dealloc];
}

- (void)prepareForVideoFormatAsync:(id)a3
{
  self->_startedPrepare = 1;

  self->_preparedVideoFormat = a3;
  prepareQueue = self->_prepareQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__BWSubjectRelightingCalculator_prepareForVideoFormatAsync___block_invoke;
  v6[3] = &unk_1E798F898;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(prepareQueue, v6);
}

void __60__BWSubjectRelightingCalculator_prepareForVideoFormatAsync___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ([v3 width] >= 0x241)
  {
    v4 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v4 setWidth:576];
    -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", FigCaptureRoundFloatToMultipleOf(2, (576 * [*(a1 + 32) height]) / objc_msgSend(*(a1 + 32), "width")));
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v4, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1]);
    v6 = v4;
    v3 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
  }

  v5 = *(a1 + 40);
  if (!*(v5 + 32))
  {
    *(*(a1 + 40) + 32) = -[BWPhotoDecompressor initWithPoolSize:outputPixelFormat:outputLargestDimension:]([BWPhotoDecompressor alloc], "initWithPoolSize:outputPixelFormat:outputLargestDimension:", 1, [*(a1 + 32) pixelFormat], 576);
    v5 = *(a1 + 40);
  }

  [(BWSubjectRelightingCalculator *)v5 _setupSubjectRelightingStage];
  [(BWSubjectRelightingCalculator *)*(a1 + 40) _setupInferenceControllerWithInputVideoFormat:v3];
  objc_autoreleasePoolPop(v2);
}

- (id)startCalculationWithJPEGSampleBuffer:(opaqueCMSampleBuffer *)a3 stillImageRequestSettings:(id)a4 stillImageCaptureSettings:(id)a5
{
  v9 = objc_alloc_init(BWSubjectRelightingCalculatorResult);
  if (!self->_startedPrepare)
  {
    [BWSubjectRelightingCalculator startCalculationWithJPEGSampleBuffer:stillImageRequestSettings:stillImageCaptureSettings:];
    goto LABEL_12;
  }

  if (!BWSampleBufferHasDetectedFaces(a3, 0, 0, 0, 1, 0))
  {
LABEL_12:
    [BWSubjectRelightingCalculator startCalculationWithJPEGSampleBuffer:v9 stillImageRequestSettings:v10 stillImageCaptureSettings:?];
    return v9;
  }

  if (!self->_waitedForPrepare)
  {
    prepareQueue = self->_prepareQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __122__BWSubjectRelightingCalculator_startCalculationWithJPEGSampleBuffer_stillImageRequestSettings_stillImageCaptureSettings___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_sync(prepareQueue, block);
  }

  v12 = [(BWPhotoDecompressor *)self->_jpegDecompressor newUncompressedSampleBufferFromSampleBuffer:a3];
  if (!v12)
  {
    [BWSubjectRelightingCalculator startCalculationWithJPEGSampleBuffer:stillImageRequestSettings:stillImageCaptureSettings:];
    goto LABEL_12;
  }

  v13 = v12;
  sampleBufferOut = 0;
  BWCMSampleBufferCreateCopyIncludingMetadata(v12, &sampleBufferOut);
  CFRelease(v13);
  if (!sampleBufferOut)
  {
    [BWSubjectRelightingCalculator startCalculationWithJPEGSampleBuffer:stillImageRequestSettings:stillImageCaptureSettings:];
    goto LABEL_12;
  }

  calculationQueue = self->_calculationQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __122__BWSubjectRelightingCalculator_startCalculationWithJPEGSampleBuffer_stillImageRequestSettings_stillImageCaptureSettings___block_invoke_2;
  v16[3] = &unk_1E7991C50;
  v16[7] = v9;
  v16[8] = sampleBufferOut;
  v16[4] = self;
  v16[5] = a4;
  v16[6] = a5;
  dispatch_async(calculationQueue, v16);
  return v9;
}

void __122__BWSubjectRelightingCalculator_startCalculationWithJPEGSampleBuffer_stillImageRequestSettings_stillImageCaptureSettings___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(BWSubjectRelightingCalculator *)*(a1 + 32) _curveParameterForSampleBuffer:*(a1 + 40) stillImageRequestSettings:*(a1 + 48) stillImageCaptureSettings:?];
  v4 = *&v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  *&v3 = v4;
  [*(a1 + 56) _completeWithRelightingRequired:v4 >= 0.0 curveParameter:v3];

  objc_autoreleasePoolPop(v2);
}

- (uint64_t)_setupSubjectRelightingStage
{
  if (result)
  {
    v1 = result;
    result = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
    if (!*(v1 + 72) && !*(v1 + 64))
    {
      v2 = BWLoadProcessorBundle(@"NRF", result);
      if (v2)
      {
        v3 = v2;
        result = [v2 classNamed:@"SubjectRelightingStage"];
        if (result)
        {
          v4 = result;
          result = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v3 andOptionalCommandQueue:0];
          *(v1 + 72) = result;
          if (result)
          {
            result = [[v4 alloc] initWithMetalContext:*(v1 + 72)];
            *(v1 + 64) = result;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        return FigDebugAssert3();
      }
    }
  }

  return result;
}

- (uint64_t)_setupInferenceControllerWithInputVideoFormat:(uint64_t)result
{
  if (result && !*(result + 48))
  {
    v28 = result;
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters cameraTuningParameters];
    v30 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v30)
    {
      v29 = *v46;
      v3 = MEMORY[0x1E695E0F8];
      do
      {
        v4 = 0;
        do
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v4;
          v5 = *(*(&v45 + 1) + 8 * v4);
          if ([v5 containsString:@"PortType"])
          {
            v6 = [(NSDictionary *)obj objectForKeyedSubscript:v5];
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v7 = [v6 countByEnumeratingWithState:&v40 objects:v39 count:16];
            if (v7)
            {
              v8 = v7;
              v9 = *v41;
              do
              {
                for (i = 0; i != v8; ++i)
                {
                  if (*v41 != v9)
                  {
                    objc_enumerationMutation(v6);
                  }

                  [v2 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v5, *(*(&v40 + 1) + 8 * i), objc_msgSend(v6, "objectForKeyedSubscript:", *(*(&v40 + 1) + 8 * i)), v3), v5}];
                }

                v8 = [v6 countByEnumeratingWithState:&v40 objects:v39 count:16];
              }

              while (v8);
            }
          }

          ++v4;
        }

        while (v32 + 1 != v30);
        v30 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v30);
    }

    if ([v2 count] && (v11 = objc_alloc_init(BWInferenceEngineControllerConfiguration), -[BWStillImageProcessorControllerConfiguration setSensorConfigurationsByPortType:](v11, "setSensorConfigurationsByPortType:", v2), -[BWInferenceEngineControllerConfiguration setInputFormat:](v11, "setInputFormat:", a2), -[BWStillImageProcessorControllerConfiguration setFigThreadPriority:](v11, "setFigThreadPriority:", 14), v12 = v28, -[BWStillImageProcessorControllerConfiguration setInferenceScheduler:](v11, "setInferenceScheduler:", *(v28 + 40)), v13 = objc_msgSend(MEMORY[0x1E695DF70], "array"), objc_msgSend(v13, "addObject:", @"PersonSemanticsSkin"), objc_msgSend(v13, "addObject:", 0x1F219E750), BWInferenceLowResPersonInstanceMaskKeys(), objc_msgSend(OUTLINED_FUNCTION_17(), "addObjectsFromArray:"), -[BWInferenceEngineControllerConfiguration setEnabledInferenceMasks:](v11, "setEnabledInferenceMasks:", v13), -[BWInferenceEngineControllerConfiguration setEnabledVisionInferences:](v11, "setEnabledVisionInferences:", 16), -[BWInferenceEngineControllerConfiguration setPersonSemanticsVersion:](v11, "setPersonSemanticsVersion:", -[FigCaptureCameraParameters personSemanticsVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "personSemanticsVersion")), v14 = -[BWInferenceEngineController initWithConfiguration:contextName:]([BWInferenceEngineController alloc], "initWithConfiguration:contextName:", v11, @"SubjectRelightingCalculator"), (*(v28 + 48) = v14) != 0))
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v33 = [*(v28 + 48) providedAttachedMediaKeys];
      v16 = [v33 countByEnumeratingWithState:&v35 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
LABEL_22:
        v19 = 0;
        while (1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v33);
          }

          v20 = *(*(&v35 + 1) + 8 * v19);
          result = [*(v12 + 48) outputVideoFormatForAttachedMediaKey:v20];
          if (!result)
          {
            break;
          }

          v21 = result;
          v22 = [BWPixelBufferPool alloc];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NRF %@ Output Pool", v20];
          v24 = +[BWMemoryPool sharedMemoryPool];
          v25 = v23;
          v12 = v28;
          result = [(BWPixelBufferPool *)v22 initWithVideoFormat:v21 capacity:1 name:v25 memoryPool:v24];
          if (!result)
          {
            break;
          }

          v26 = result;
          [v15 setObject:result forKeyedSubscript:v20];

          if (v17 == ++v19)
          {
            v17 = [v33 countByEnumeratingWithState:&v35 objects:v34 count:16];
            if (v17)
            {
              goto LABEL_22;
            }

            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:

        *(v12 + 56) = v15;
        return [*(v12 + 48) prepareWithPixelBufferPoolProvider:v12];
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (double)_curveParameterForSampleBuffer:(uint64_t)a3 stillImageRequestSettings:(void *)a4 stillImageCaptureSettings:
{
  if (!a1)
  {
    return 0.0;
  }

  v7 = [(BWSubjectRelightingCalculator *)a1 _runInferencesOnSampleBuffer:a2 stillImageRequestSettings:a3 stillImageCaptureSettings:a4];
  v8 = [a4 captureType];
  v9 = [a4 captureFlags];

  *&result = [(BWSubjectRelightingCalculator *)a1 _runSubjectRelightingWithInferences:v7 sampleBuffer:a2 stillImageCaptureType:v8 stillImageCaptureFlags:v9];
  return result;
}

- (BWSubjectRelightingInferences)_runInferencesOnSampleBuffer:(uint64_t)a3 stillImageRequestSettings:(uint64_t)a4 stillImageCaptureSettings:
{
  if (!a1)
  {
    return 0;
  }

  v8 = objc_alloc_init(BWSubjectRelightingInferences);
  v9 = *(a1 + 48);
  v10 = [CMGetAttachment(a2 *off_1E798A3C8];
  if (!a2 || (v11 = v10, !CMSampleBufferGetImageBuffer(a2)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v12 = 0;
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v12 = [[BWInferenceEngineControllerInput alloc] initWithSettings:[[BWStillImageSettings alloc] initWithRequestedSettings:a3 captureSettings:a4 processingSettings:[[BWStillImageProcessingSettings alloc] initWithPhotoManifest:objc_alloc_init(BWPhotoManifest) processIntelligentDistortionCorrection:0]] portType:v11];
  [(BWInferenceEngineControllerInput *)v12 addInferenceImage:a2];
  v13 = [MEMORY[0x1E695DF70] array];
  [v13 addObject:@"PersonSemanticsSkin"];
  [v13 addObject:0x1F219E750];
  [v13 addObjectsFromArray:BWInferenceLowResPersonInstanceMaskKeys()];
  [(BWInferenceEngineControllerInput *)v12 setEnabledInferenceMasks:v13];
  [(BWInferenceEngineControllerInput *)v12 setEnabledVisionInferences:16];
  if ([v9 enqueueInputForProcessing:v12 delegate:a1])
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_7;
  }

  [objc_opt_class() inferenceMaskFromSbuf:a2 attachedMediaKey:@"PersonSemanticsSkin"];
  [OUTLINED_FUNCTION_17() setSkinMask:?];
  [objc_opt_class() inferenceMaskFromSbuf:a2 attachedMediaKey:0x1F219E750];
  [OUTLINED_FUNCTION_17() setPersonMask:?];
  [objc_opt_class() lowResPersonInstanceMasksFromSbuf:a2];
  [OUTLINED_FUNCTION_17() setLowResPersonInstanceMasks:?];
  [objc_opt_class() lowResPersonInstanceConfidencesFromSbuf:a2];
  [OUTLINED_FUNCTION_17() setLowResPersonInstanceConfidences:?];
  [objc_opt_class() lowResPersonInstanceBoundingBoxesFromSbuf:a2];
  [OUTLINED_FUNCTION_17() setLowResPersonInstanceBoundingBoxes:?];
  [objc_opt_class() skinToneClassificationsFromSbuf:a2];
  [OUTLINED_FUNCTION_17() setSkinToneClassificationsForFaces:?];
LABEL_8:

  return v8;
}

- (float)_runSubjectRelightingWithInferences:(void *)target sampleBuffer:(int)a4 stillImageCaptureType:(char)a5 stillImageCaptureFlags:
{
  if (!a1)
  {
    return 0.0;
  }

  v11 = CMGetAttachment(target, *off_1E798A3C8, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(target);
  if (!ImageBuffer)
  {
    goto LABEL_29;
  }

  v13 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v13);
  FigCFDictionaryGetCGRectIfPresent();
  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B298), "floatValue"}];
  v15 = v14;
  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B2B0), "floatValue"}];
  v17 = v16;
  v18 = CMGetAttachment(target, @"UprightExifOrientation", 0);
  v19 = [v18 intValue];
  v20 = v18 ? v19 : 1;
  v21 = [objc_msgSend(objc_msgSend(-[FigCaptureCameraParameters sensorIDDictionaryForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
  if (a4 == 10)
  {
    v23 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1 ? @"DefaultUBModeQuadraParameters" : @"DefaultUBModeParameters";
  }

  else
  {
    if (a4 == 11)
    {
      [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      goto LABEL_9;
    }

    if ((a4 & 0xFFFFFFFE) == 0xC)
    {
      [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
      v23 = @"DefaultUBModeParameters";
    }

    else
    {
      v24 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
      v25 = @"SingleImageParametersForLearnedNR";
      if ((a5 & 0x80) == 0)
      {
        v25 = @"SingleImageParameters";
      }

      v26 = @"SingleImageQuadraParameters";
      if (a5 < 0)
      {
        v26 = @"SingleImageParametersForQuadraLearnedNR";
      }

      v23 = v24 == 1 ? v26 : v25;
    }
  }

  v27 = [objc_msgSend(v21 objectForKeyedSubscript:{v23), "objectForKeyedSubscript:", @"SRLv2"}];
  if (!v27)
  {
LABEL_29:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_9;
  }

  v28 = v27;
  v29 = *(a1 + 64);
  v30 = [a2 skinMask];
  v31 = [a2 personMask];
  v32 = [a2 lowResPersonInstanceMasks];
  v33 = [a2 lowResPersonInstanceConfidences];
  v34 = [a2 skinToneClassificationsForFaces];
  LODWORD(v42) = v20;
  LODWORD(v35) = v15;
  LODWORD(v36) = v17;
  v37 = [v29 runSRLForLivePhotosWithInputBuffer:v13 skinMask:v30 personMask:v31 instanceMasks:v32 instanceMaskConfidences:v33 skinToneClassification:v34 validROI:0.0 expBias:0.0 faceExpRatio:Width exifOrientation:Height srlV2Plist:{v35, v36, v42, v28}];
  if (!v37)
  {
    v38 = [*(a1 + 64) mitigationNeeded];
    [*(a1 + 64) curveParameter];
    if (v38)
    {
      v22 = v39;
    }

    else
    {
      v22 = -1.0;
    }

    goto LABEL_27;
  }

  v41 = v37;
  fig_log_get_emitter();
  v43 = v5;
  LODWORD(v42) = v41;
LABEL_9:
  FigDebugAssert3();
  v22 = -1.0;
LABEL_27:
  [*(a1 + 64) reset];
  return v22;
}

- (uint64_t)startCalculationWithJPEGSampleBuffer:stillImageRequestSettings:stillImageCaptureSettings:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)startCalculationWithJPEGSampleBuffer:stillImageRequestSettings:stillImageCaptureSettings:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)startCalculationWithJPEGSampleBuffer:stillImageRequestSettings:stillImageCaptureSettings:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end
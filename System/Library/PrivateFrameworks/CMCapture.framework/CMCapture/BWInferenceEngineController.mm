@interface BWInferenceEngineController
+ (__CVBuffer)inferenceMaskFromSbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key;
+ (id)faceObservationsFromSbuf:(opaqueCMSampleBuffer *)sbuf;
+ (id)smartCameraClassificationsFromSbuf:(opaqueCMSampleBuffer *)sbuf;
+ (opaqueCMSampleBuffer)inferenceMaskSbufFromSbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key;
- (BWInferenceEngineController)initWithConfiguration:(id)configuration contextName:(id)name;
- (OpaqueVTPixelTransferSession)_ensurePixelTransferSessionForAttachedMediaKey:(id)key;
- (id)_suppressedInferenceTypesForInput:(id)input;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)_unzoomAndBlackenBordersOnAttachedMediaSampleBuffer:(opaqueCMSampleBuffer *)buffer inputSbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key finalCropRect:(CGRect)rect;
- (int)prepareForReconfigurationWithInputAspectRatio:(double)ratio;
- (int)prepareWithPixelBufferPoolProvider:(id)provider;
- (int)process;
- (int)reconfigure;
- (void)_replaceAttachedSampleBuffer:(opaqueCMSampleBuffer *)buffer attachedMediaKey:(id)key primarySampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer aspectRatio:(int)ratio;
- (void)dealloc;
- (void)inputReceivedNewData:(id)data;
- (void)reset;
@end

@implementation BWInferenceEngineController

- (BWInferenceEngineController)initWithConfiguration:(id)configuration contextName:(id)name
{
  nameCopy = name;
  self->_contextName = nameCopy;
  v73.receiver = self;
  v73.super_class = BWInferenceEngineController;
  v54 = -[BWStillImageProcessorController initWithName:type:configuration:](&v73, sel_initWithName_type_configuration_, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"InferenceEngineController", nameCopy], 3, configuration);
  if (!v54)
  {
    [BWInferenceEngineController initWithConfiguration:contextName:];
LABEL_53:

    return 0;
  }

  if (![configuration inferenceScheduler])
  {
    goto LABEL_53;
  }

  figThreadPriority = [configuration figThreadPriority];
  if (FigCaptureOptimizedBWInferenceScalingPathSupported())
  {
    v8 = objc_alloc_init(BWInferenceProcessingConfiguration);
    [(BWInferenceProcessingConfiguration *)v8 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v8 setFilterType:2];
  }

  else
  {
    v8 = 0;
  }

  v9 = -[BWInferenceEngine initWithScheduler:priority:shareIntermediateBuffer:processingConfiguration:name:]([BWInferenceEngine alloc], "initWithScheduler:priority:shareIntermediateBuffer:processingConfiguration:name:", [configuration inferenceScheduler], figThreadPriority, 1, v8, name);
  v54->_inferenceEngine = v9;
  if (!v9)
  {
    goto LABEL_53;
  }

  if (![objc_msgSend(configuration "sensorConfigurationsByPortType")])
  {
    goto LABEL_53;
  }

  inputFormat = [configuration inputFormat];
  v54->_inputFormat = inputFormat;
  if (!inputFormat)
  {
    goto LABEL_53;
  }

  producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom = [configuration producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom];
  v54->_producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom = producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom;
  v54->_appliesFinalCropRect = producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom;
  if ([configuration enabledVisionInferences])
  {
    v12 = [[BWFaceSegmentsWithLandmarksInferenceConfiguration alloc] initWithInferenceType:802];
    [(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 setRequestTypes:5];
    [(BWInferenceConfiguration *)v12 setPriority:figThreadPriority];
    [(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 setIncludesInvalidContent:0];
    [(BWLandmarksInferenceConfiguration *)v12 setAlwaysExecuteForRedEyeReduction:1];
    [(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 setDetectFacesInFullSizeInput:1];
    [(BWLandmarksInferenceConfiguration *)v12 setDetectLandmarksInFullSizeInput:1];
    if (([configuration enabledVisionInferences] & 0x10) != 0)
    {
      [(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 setRequestTypes:[(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 requestTypes]| 0x10];
      [(BWLandmarksInferenceConfiguration *)v12 setMaximumNumberOfFaces:4];
      [(BWLandmarksInferenceConfiguration *)v12 setClampToLargestMaximumNumberOfFaces:1];
      [(BWLandmarksInferenceConfiguration *)v12 setConsiderISPRectsIfVisionFails:1];
    }

    else
    {
      [(BWLandmarksInferenceConfiguration *)v12 setMaximumNumberOfFaces:3];
    }

    if (([configuration enabledVisionInferences] & 2) != 0)
    {
      [(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 setRequestTypes:[(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 requestTypes]| 2];
    }

    if (([configuration enabledVisionInferences] & 8) != 0)
    {
      [(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 setRequestTypes:[(BWFaceSegmentsWithLandmarksInferenceConfiguration *)v12 requestTypes]| 8];
    }

    -[BWVisionInferenceConfiguration setSuppressTimeOutFailure:](v12, "setSuppressTimeOutFailure:", [configuration suppressVisionTimeOutFailure]);
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x3052000000;
    v72[3] = __Block_byref_object_copy__5;
    v72[4] = __Block_byref_object_dispose__5;
    v72[5] = v54;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __65__BWInferenceEngineController_initWithConfiguration_contextName___block_invoke;
    v71[3] = &unk_1E7990408;
    v71[4] = v72;
    [(BWVisionInferenceConfiguration *)v12 setShouldPreventRequestForSampleBuffer:v71];
    v13 = [(BWInferenceEngine *)v54->_inferenceEngine addInferenceOfType:802 version:[(BWLandmarksInferenceConfiguration *)v12 landmarksInferenceVersion]& 0xFFFFFFFFFFFFLL configuration:v12];
    _Block_object_dispose(v72, 8);
    if (v13)
    {
      goto LABEL_53;
    }
  }

  if ([objc_msgSend(configuration "enabledInferenceMasks")])
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [configuration enabledInferenceMasks];
    v14 = [obj countByEnumeratingWithState:&v67 objects:v66 count:16];
    if (v14)
    {
      v15 = v14;
      configurationCopy = configuration;
      v17 = 0;
      LODWORD(v18) = 0;
      v19 = *v68;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v67 + 1) + 8 * i);
          v22 = [BWMattingV2InferenceConfiguration mattingOutputTypeForAttachedMediaKey:v21];
          if (v22)
          {
            v23 = v22;
            v24 = [BWMattingV2InferenceConfiguration inputAttachedMediaKeyForMattingOutputType:v22];
            v25 = [BWPersonSemanticsConfiguration personSemanticForAttachedMediaKey:v24];
            v17 |= v23;
            if ([objc_msgSend(configurationCopy "enabledInferenceMasks")])
            {
              v17 |= +[BWMattingV2InferenceConfiguration mattingOutputTypeForAttachedMediaKey:](BWMattingV2InferenceConfiguration, "mattingOutputTypeForAttachedMediaKey:", [v24 stringByAppendingString:@"Clone"]);
            }
          }

          else
          {
            v25 = [BWPersonSemanticsConfiguration personSemanticForAttachedMediaKey:v21];
          }

          v18 = v25 | v18;
        }

        v15 = [obj countByEnumeratingWithState:&v67 objects:v66 count:16];
      }

      while (v15);
      configuration = configurationCopy;
      LODWORD(v26) = [configurationCopy personSemanticsVersion];
      if (v18)
      {
        v27 = (v18 & 0x40) != 0 ? 4 : 3;
        v26 = v26 ? v26 : v27;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      [configuration personSemanticsVersion];
      v18 = 0;
      v17 = 0;
      v26 = 0;
    }

    Major = BWInferenceVersionMakeMajor(v26);
    if (!Major)
    {
      goto LABEL_53;
    }

    v29 = Major;
    v30 = [(BWInferenceConfiguration *)[BWPersonSemanticsConfiguration alloc] initWithInferenceType:104];
    [(BWPersonSemanticsConfiguration *)v30 setEnabledSemantics:v18];
    [(BWInferenceConfiguration *)v30 setPriority:figThreadPriority];
    [(BWPersonSemanticsConfiguration *)v30 setAppliesFinalCropRect:v54->_appliesFinalCropRect];
    if ([(BWInferenceEngine *)v54->_inferenceEngine addInferenceOfType:104 version:v29 & 0xFFFFFFFFFFFFLL configuration:v30])
    {
      goto LABEL_53;
    }

    v31 = [configuration mattingOutputValidContentDetectionEnabled] ? v17 | 0x100 : v17;
    if (v31)
    {
      v32 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
      -[BWMattingV2InferenceConfiguration setSensorConfigurationsByPortType:](v32, "setSensorConfigurationsByPortType:", [configuration sensorConfigurationsByPortType]);
      [(BWMattingV2InferenceConfiguration *)v32 setEnabledMattes:v31];
      if ([configuration fastMattingEnabled])
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [(BWMattingV2InferenceConfiguration *)v32 setTuningConfiguration:v33];
      [(BWInferenceConfiguration *)v32 setPriority:figThreadPriority];
      [configuration mainImageDownscalingFactor];
      if (*&v34 == 0.0)
      {
        *&v34 = 1.0;
      }

      [(BWMattingV2InferenceConfiguration *)v32 setMainImageDownscalingFactor:v34];
      [(BWMattingV2InferenceConfiguration *)v32 setDepthDataDeliveryEnabled:0];
      -[BWMattingV2InferenceConfiguration setMetalCommandQueue:](v32, "setMetalCommandQueue:", [configuration metalCommandQueue]);
      [(BWMattingV2InferenceConfiguration *)v32 setSubmitWithoutSynchronization:0];
      [(BWMattingV2InferenceConfiguration *)v32 setAppliesFinalCropRect:v54->_appliesFinalCropRect];
      if ([(BWInferenceEngine *)v54->_inferenceEngine addInferenceOfType:201 version:BWInferenceVersionMakeMajor(2) & 0xFFFFFFFFFFFFLL configuration:v32])
      {
        goto LABEL_53;
      }
    }
  }

  if ([configuration smartCameraClassificationsEnabled] && -[BWInferenceEngine addInferenceOfType:version:configuration:](v54->_inferenceEngine, "addInferenceOfType:version:configuration:", 101, BWInferenceSmartCameraCurrentVersion() & 0xFFFFFFFFFFFFLL, -[BWInferenceConfiguration initWithInferenceType:]([BWSmartCameraInferenceConfiguration alloc], "initWithInferenceType:", 101)) || -[BWInferenceEngine prepareForInputVideoFormat:attachedMediaKey:](v54->_inferenceEngine, "prepareForInputVideoFormat:attachedMediaKey:", v54->_inputFormat, @"PrimaryFormat"))
  {
    goto LABEL_53;
  }

  providedVideoRequirementsByAttachedMediaKey = [(BWInferenceEngine *)v54->_inferenceEngine providedVideoRequirementsByAttachedMediaKey];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v39 = [(NSDictionary *)providedVideoRequirementsByAttachedMediaKey countByEnumeratingWithState:&v62 objects:v61 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v63;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v63 != v41)
        {
          objc_enumerationMutation(providedVideoRequirementsByAttachedMediaKey);
        }

        v43 = *(*(&v62 + 1) + 8 * j);
        v44 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](providedVideoRequirementsByAttachedMediaKey objectForKeyedSubscript:{v43), "videoFormat"), "underlyingVideoFormat"}];
        if (v44)
        {
          [dictionary setObject:v44 forKeyedSubscript:v43];
        }
      }

      v40 = [(NSDictionary *)providedVideoRequirementsByAttachedMediaKey countByEnumeratingWithState:&v62 objects:v61 count:16];
    }

    while (v40);
  }

  v45 = [dictionary count];
  if (v45 != [(NSDictionary *)providedVideoRequirementsByAttachedMediaKey count])
  {
    goto LABEL_53;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  enabledInferenceMasks = [configuration enabledInferenceMasks];
  v47 = [enabledInferenceMasks countByEnumeratingWithState:&v57 objects:v56 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v58;
LABEL_68:
    v50 = 0;
    while (1)
    {
      if (*v58 != v49)
      {
        objc_enumerationMutation(enabledInferenceMasks);
      }

      v51 = *(*(&v57 + 1) + 8 * v50);
      v52 = [(NSDictionary *)providedVideoRequirementsByAttachedMediaKey objectForKeyedSubscript:v51];
      if (!(v52 | -[NSDictionary objectForKeyedSubscript:](providedVideoRequirementsByAttachedMediaKey, "objectForKeyedSubscript:", [v51 stringByAppendingString:@"Clone"])))
      {
        goto LABEL_53;
      }

      if (v48 == ++v50)
      {
        v48 = [enabledInferenceMasks countByEnumeratingWithState:&v57 objects:v56 count:16];
        if (v48)
        {
          goto LABEL_68;
        }

        break;
      }
    }
  }

  v35 = v54;
  v54->_inferenceOutputFormatByAttachedMediaKey = dictionary;
  if (v54->_producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom)
  {
    v54->_pixelTransferSessionByMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54->_outputFormatDescriptionByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v35;
}

BOOL __65__BWInferenceEngineController_initWithConfiguration_contextName___block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(objc_msgSend(*(*(*(a1 + 32) + 8) + 40) "currentRequest")];
  v2 = (v1 & 4) == 0;
  v3 = (v1 & 0x17) == 0;
  getVNDetectFaceRectanglesRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  v3 = (v1 & 2) == 0;
  getVNDetectFaceLandmarksRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  getVNGenerateFaceSegmentsRequestClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    getVNClassifyFaceAttributesRequestClass();
    objc_opt_class();
    v2 = (v1 & 0x10) == 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      getVNRecognizeFoodAndDrinkRequestClass();
      objc_opt_class();
      return objc_opt_isKindOfClass() & ((v1 & 8) == 0);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceEngineController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)inputReceivedNewData:(id)data
{
  if ([(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input]== data)
  {

    [(BWStillImageProcessorController *)self currentRequestChanged];
  }
}

+ (__CVBuffer)inferenceMaskFromSbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key
{
  result = [self inferenceMaskSbufFromSbuf:sbuf attachedMediaKey:key];
  if (result)
  {

    return CMSampleBufferGetImageBuffer(result);
  }

  return result;
}

+ (opaqueCMSampleBuffer)inferenceMaskSbufFromSbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key
{
  result = BWSampleBufferGetAttachedMedia(sbuf, key);
  if (!result)
  {
    v7 = [key stringByAppendingString:@"Clone"];

    return BWSampleBufferGetAttachedMedia(sbuf, v7);
  }

  return result;
}

+ (id)smartCameraClassificationsFromSbuf:(opaqueCMSampleBuffer *)sbuf
{
  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(sbuf, 101);

  return [AttachedInferenceResult inferences];
}

+ (id)faceObservationsFromSbuf:(opaqueCMSampleBuffer *)sbuf
{
  AttachedInference = BWInferenceGetAttachedInference(sbuf, 802, 0x1F219E5F0);
  if ([AttachedInference count])
  {
    return AttachedInference;
  }

  return BWInferenceGetAttachedInference(sbuf, 802, @"VisionFaceDetectionObservations");
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key
{
  if (![key isEqualToString:@"PrimaryFormat"])
  {
    return 0;
  }

  WORD2(v6) = 0;
  LODWORD(v6) = 0;
  v4 = [BWInferenceVideoFormat initWithUnderlyingFormat:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" isDeviceOriented:self->_inputFormat videoContentMode:0 includesInvalidContent:0 cropDescriptor:0 histogramRequest:0 rotationDegrees:0 applyHorizontalFlip:v6 isLandscapeOriented:?];

  return v4;
}

- (void)reset
{
  [(NSMutableDictionary *)self->_pixelTransferSessionByMediaKey removeAllObjects];
  outputFormatDescriptionByAttachedMediaKey = self->_outputFormatDescriptionByAttachedMediaKey;

  [(NSMutableDictionary *)outputFormatDescriptionByAttachedMediaKey removeAllObjects];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWInferenceEngineControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (id)_suppressedInferenceTypesForInput:(id)input
{
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  enabledInferenceMasks = [input enabledInferenceMasks];
  v6 = [enabledInferenceMasks countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(enabledInferenceMasks);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([BWMattingV2InferenceConfiguration mattingOutputTypeForAttachedMediaKey:v11])
      {
        break;
      }

      v8 |= [BWPersonSemanticsConfiguration personSemanticForAttachedMediaKey:v11]!= 0;
      if (v7 == ++v10)
      {
        v7 = [enabledInferenceMasks countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        if (v8)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    [v4 addObject:&unk_1F2242AD8];
LABEL_11:
    [v4 addObject:&unk_1F2242AF0];
  }

  if (([input smartCameraClassificationsEnabled] & 1) == 0)
  {
    [v4 addObject:&unk_1F2242B08];
  }

  if (![input enabledVisionInferences])
  {
    [v4 addObject:&unk_1F2242B20];
  }

  if ([v4 containsObject:&unk_1F2242AF0] && (objc_msgSend(v4, "containsObject:", &unk_1F2242AD8) & 1) == 0)
  {
    [v4 removeObject:&unk_1F2242AF0];
  }

  [v4 count];
  return v4;
}

- (int)prepareForReconfigurationWithInputAspectRatio:(double)ratio
{
  v5 = FigCaptureAspectRatioForDimensions([(BWVideoFormat *)self->_inputFormat dimensions]);
  if ((ratio >= 1.0 || v5 <= 1.0) && (ratio <= 1.0 || v5 >= 1.0))
  {
    return 0;
  }

  v9 = __ROR8__([(BWVideoFormat *)self->_inputFormat dimensions], 32);
  v10 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:[(BWVideoFormat *)self->_inputFormat pixelBufferAttributes]];
  [(BWVideoFormatRequirements *)v10 setWidth:v9];
  [(BWVideoFormatRequirements *)v10 setHeight:v9 >> 32];
  v69 = v10;
  v11 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1]);
  result = [(BWInferenceEngine *)self->_inferenceEngine prepareForReconfigurationWithInputFormat:v11];
  if (!result)
  {
    result = [(BWInferenceEngine *)self->_inferenceEngine prepareForInputVideoFormat:v11 attachedMediaKey:@"PrimaryFormat"];
    if (!result)
    {
      providedVideoRequirementsByAttachedMediaKey = [(BWInferenceEngine *)self->_inferenceEngine providedVideoRequirementsByAttachedMediaKey];
      v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_inferenceOutputFormatByAttachedMediaKey];
      v21 = OUTLINED_FUNCTION_4_2(v13, v14, v15, v16, v17, v18, v19, v20, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, 0);
      if (v21)
      {
        v22 = v21;
        v23 = MEMORY[0];
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (MEMORY[0] != v23)
            {
              objc_enumerationMutation(providedVideoRequirementsByAttachedMediaKey);
            }

            v25 = *(8 * i);
            v26 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](providedVideoRequirementsByAttachedMediaKey objectForKeyedSubscript:{v25), "videoFormat"), "underlyingVideoFormat"}];
            if (v26)
            {
              v26 = [v13 setObject:v26 forKeyedSubscript:v25];
            }
          }

          v22 = OUTLINED_FUNCTION_4_2(v26, v27, v28, v29, v30, v31, v32, v33, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68);
        }

        while (v22);
      }

      v34 = [v13 count];
      if (v34 == [(NSDictionary *)providedVideoRequirementsByAttachedMediaKey count])
      {

        self->_inferenceOutputFormatByAttachedMediaKey = v13;
        self->_inferenceEnginePreparedToReconfigure = 1;

        v35 = v11;
        result = 0;
        self->_inputFormat = v35;
      }

      else
      {
        return -12780;
      }
    }
  }

  return result;
}

- (int)reconfigure
{
  if (!self->_inferenceEnginePreparedToReconfigure)
  {
    return 0;
  }

  self->_inferenceEnginePreparedToReconfigure = 0;
  result = [(BWInferenceEngine *)self->_inferenceEngine reconfigure];
  if (!result)
  {
    self->_inferenceEnginePrepared = 0;
  }

  return result;
}

- (int)prepareWithPixelBufferPoolProvider:(id)provider
{
  result = [(BWInferenceEngine *)self->_inferenceEngine enableIntermediateBufferSharingWithNetworksLoadedFromPath:@"/System/Library/Frameworks/Vision.framework/"];
  if (!result)
  {
    result = [(BWInferenceEngine *)self->_inferenceEngine prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:provider];
    if (!result)
    {
      self->_inferenceEnginePrepared = 1;
    }
  }

  return result;
}

- (int)process
{
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  input = [(BWStillImageProcessorControllerRequest *)currentRequest input];
  inferenceEngine = self->_inferenceEngine;
  v61 = currentRequest;
  if (!inferenceEngine || ![(BWInferenceEngine *)inferenceEngine isConfiguredForInference]|| !self->_inferenceEnginePrepared || (v7 = [(BWStillImageProcessorControllerInput *)input inferenceImage]) == 0 || (v8 = v7, ImageBuffer = CMSampleBufferGetImageBuffer(v7), Width = CVPixelBufferGetWidth(ImageBuffer), CVPixelBufferGetHeight(ImageBuffer), (IOSurface = CVPixelBufferGetIOSurface(ImageBuffer)) == 0))
  {
    v28 = 4294954516;
    goto LABEL_59;
  }

  v12 = IOSurface;
  v59 = Width;
  if (![-[BWStillImageProcessorControllerInput enabledInferenceMasks](input "enabledInferenceMasks")] && (-[BWStillImageProcessorControllerInput smartCameraClassificationsEnabled](input, "smartCameraClassificationsEnabled") & 1) == 0 && !-[BWStillImageProcessorControllerInput enabledVisionInferences](input, "enabledVisionInferences"))
  {
    goto LABEL_58;
  }

  IOSurfaceLock(v12, 5u, 0);
  IOSurfaceUnlock(v12, 5u, 0);
  v13 = [(BWInferenceEngineController *)self _suppressedInferenceTypesForInput:input];
  v14 = CMGetAttachment(v8, *off_1E798A3C8, 0);
  FigCaptureMetadataUtilitiesGetFinalCropRect();
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = 1.0 / v17;
  v19 = v18 > 1.25 && self->_producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom;
  if (self->_appliesFinalCropRect && !v19)
  {
    [v14 removeObjectForKey:*off_1E798A5C8];
  }

  v20 = [(BWInferenceEngine *)self->_inferenceEngine performInferencesOnSampleBuffer:v8 attachingResultsToSampleBuffer:v8 skippingInferencesWithTypes:v13];
  if (v20 != -31740)
  {
    v28 = v20;
    if (v20)
    {
      goto LABEL_59;
    }

    if (v19 || !self->_appliesFinalCropRect)
    {
      if (!self->_appliesFinalCropRect)
      {
        goto LABEL_40;
      }
    }

    else
    {
      OUTLINED_FUNCTION_3();
      v20 = FigCFDictionarySetCGRect();
      if (!self->_appliesFinalCropRect)
      {
LABEL_40:
        v44 = [v14 objectForKeyedSubscript:*off_1E798B540];
        v45 = (([v44 isEqualToString:*off_1E798A0F8] & 1) != 0 || objc_msgSend(v44, "isEqualToString:", *off_1E798A0E0)) && FigCaptureFrontCameraRotationAngle() % 180 == 90;
        if ([(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)input settings] aspectRatio]|| v45)
        {
          mach_absolute_time();
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          enabledInferenceMasks = [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] enabledInferenceMasks];
          v47 = [enabledInferenceMasks countByEnumeratingWithState:&v100 objects:&v84 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v101;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v101 != v49)
                {
                  objc_enumerationMutation(enabledInferenceMasks);
                }

                [(BWInferenceEngineController *)self _replaceAttachedSampleBuffer:BWSampleBufferGetAttachedMedia(v8 attachedMediaKey:*(*(&v100 + 1) + 8 * i)) primarySampleBuffer:*(*(&v100 + 1) + 8 * i) aspectRatio:v8, [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)input settings] aspectRatio]];
              }

              v48 = [enabledInferenceMasks countByEnumeratingWithState:&v100 objects:&v84 count:16];
            }

            while (v48);
          }

          if ([-[BWStillImageProcessorControllerConfiguration enabledInferenceMasks](-[BWStillImageProcessorController configuration](self "configuration")])
          {
            AttachedMedia = BWSampleBufferGetAttachedMedia(v8, 0x1F21AADF0);
            if (AttachedMedia)
            {
              [(BWInferenceEngineController *)self _replaceAttachedSampleBuffer:AttachedMedia attachedMediaKey:0x1F21AADF0 primarySampleBuffer:v8 aspectRatio:[(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)input settings] aspectRatio]];
            }
          }

          if (dword_1EB58E320)
          {
            HIDWORD(v83) = 0;
            BYTE3(v83) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

LABEL_58:
        v28 = 0;
        goto LABEL_59;
      }
    }

    if (self->_producesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      inferenceOutputFormatByAttachedMediaKey = self->_inferenceOutputFormatByAttachedMediaKey;
      v30 = OUTLINED_FUNCTION_3_17(v20, v21, v22, v23, v24, v25, v26, v27, v54, v55, v56, v2, v59, currentRequest, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104);
      if (v30)
      {
        v31 = v30;
        v32 = *v106;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v106 != v32)
            {
              objc_enumerationMutation(inferenceOutputFormatByAttachedMediaKey);
            }

            v34 = BWSampleBufferGetAttachedMedia(v8, *(*(&v105 + 1) + 8 * j));
            if (v34)
            {
              if (v19)
              {
                v42 = OUTLINED_FUNCTION_3();
                v34 = [v43 _unzoomAndBlackenBordersOnAttachedMediaSampleBuffer:v42 inputSbuf:? attachedMediaKey:? finalCropRect:?];
                if (v34)
                {
                  v28 = v34;
                  v55 = v58;
                  LODWORD(v54) = v34;
                  FigDebugAssert3();
                  goto LABEL_59;
                }
              }

              else
              {
                BWPropagateZoomInformationToAttachedMediaSampleBuffer(v8, v34);
              }
            }
          }

          v31 = OUTLINED_FUNCTION_3_17(v34, v35, v36, v37, v38, v39, v40, v41, v54, v55, v57, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104);
        }

        while (v31);
      }
    }

    goto LABEL_40;
  }

  if ([(BWVideoFormat *)self->_inputFormat width]>= Width)
  {
    [(BWVideoFormat *)self->_inputFormat height];
  }

  v28 = 4294935556;
LABEL_59:
  [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v61 delegate:v54] processorController:self didFinishProcessingSampleBuffer:[(BWStillImageProcessorControllerInput *)input inferenceImage] type:16 processorInput:input err:v28];
  return v28;
}

- (void)_replaceAttachedSampleBuffer:(opaqueCMSampleBuffer *)buffer attachedMediaKey:(id)key primarySampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer aspectRatio:(int)ratio
{
  cf = 0;
  v24 = 0;
  if (!buffer)
  {
    goto LABEL_13;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_0_6();
    FigDebugAssert3();
    goto LABEL_13;
  }

  v11 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v11);
  v14 = Width | (Height << 32);
  v15 = BWAspectRatioValueFromAspectRatio(ratio);
  v16 = FigCaptureAspectRatioForDimensions(v14);
  if (v15 <= 1.0 || v16 >= 1.0)
  {
    if (Width != Height)
    {
      if (v15 >= 1.0 || v16 <= 1.0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

LABEL_15:
    v20 = BWAspectRatioValueFromAspectRatio(ratio);
    v21 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v14, v20);
    goto LABEL_17;
  }

  if (Width == Height)
  {
    goto LABEL_15;
  }

LABEL_16:
  v21 = __ROR8__(v14, 32);
LABEL_17:
  if (v14 == v21)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_22;
  }

  v19 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v21 pixelFormat:CVPixelBufferGetPixelFormatType(v11) name:objc_msgSend(MEMORY[0x1E696AEC0] memoryPool:"stringWithFormat:", @"%@ attached media correction", key), +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool")), "newPixelBuffer"];
  if (!v19)
  {
    goto LABEL_22;
  }

  if (BWScalePixelBuffer(v11, v19, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
  {
    OUTLINED_FUNCTION_0_6();
  }

  else
  {
    v22 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v19, &cf, &v24);
    BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v24);
    if (!v22)
    {
      BWSampleBufferSetAttachedMedia(sampleBuffer, key, v24);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_0_6();
  }

  FigDebugAssert3();
LABEL_22:
  CVPixelBufferRelease(v19);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

- (int)_unzoomAndBlackenBordersOnAttachedMediaSampleBuffer:(opaqueCMSampleBuffer *)buffer inputSbuf:(opaqueCMSampleBuffer *)sbuf attachedMediaKey:(id)key finalCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cf = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    return -12780;
  }

  v14 = ImageBuffer;
  CVPixelBufferGetWidth(ImageBuffer);
  CVPixelBufferGetHeight(v14);
  v15 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] type:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input] inferenceInputBufferType] attachedMediaKey:key];
  if (v15)
  {
    v16 = v15;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(x, y, width, height);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v25);
    v18 = [(BWInferenceEngineController *)self _ensurePixelTransferSessionForAttachedMediaKey:key];
    if (v18)
    {
      v19 = v18;
      v20 = VTSessionSetProperty(v18, *MEMORY[0x1E6983DD0], DictionaryRepresentation);
      if (v20 || (v20 = VTPixelTransferSessionTransferImage(v19, v14, v16)) != 0)
      {
        v22 = v20;
      }

      else
      {
        v21 = [(NSMutableDictionary *)self->_outputFormatDescriptionByAttachedMediaKey objectForKeyedSubscript:key];
        if (v21)
        {
          v21 = CFRetain(v21);
        }

        cf = v21;
        BWSampleBufferSetAttachedMediaFromPixelBuffer(sbuf, key, v16, &cf, 0, 0, 1);
        [(NSMutableDictionary *)self->_outputFormatDescriptionByAttachedMediaKey setObject:cf forKeyedSubscript:key];
        v22 = 0;
      }
    }

    else
    {
      v22 = -12783;
    }

    CFRelease(v16);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  else
  {
    v22 = -12786;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

- (OpaqueVTPixelTransferSession)_ensurePixelTransferSessionForAttachedMediaKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_pixelTransferSessionByMediaKey objectForKeyedSubscript:?];
  pixelTransferSessionOut = v5;
  if (!v5)
  {
    v6 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
    v5 = pixelTransferSessionOut;
    if (!v6)
    {
      [(NSMutableDictionary *)self->_pixelTransferSessionByMediaKey setObject:pixelTransferSessionOut forKeyedSubscript:key];
      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
        return pixelTransferSessionOut;
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

@end
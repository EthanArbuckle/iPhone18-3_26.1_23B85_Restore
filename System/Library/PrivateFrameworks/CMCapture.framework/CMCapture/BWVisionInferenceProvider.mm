@interface BWVisionInferenceProvider
+ (void)initialize;
- (BWVisionInferenceProvider)initWithConfiguration:(id)configuration requests:(id)requests executesRequestsIndividually:(BOOL)individually executionTarget:(int)target preventionReasons:(id)reasons resourceProvider:(id)provider;
- (id)_validatedBoundingBoxInObservationsWithMetadata:(CGAffineTransform *)metadata exifOrientation:(uint64_t)orientation fromPreviousRequest:(uint64_t)request wasForwardedToCurrentRequest:(int)currentRequest didFallBackToISPFaces:(uint64_t)faces forCaptureSettingsID:;
- (id)bindIdealInputForRequest:(id)request fromAttachedMediaUsingKey:(id)key;
- (id)bindInputForRequest:(id)request fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)bindInputForRequest:(id)request fromMetadataUsingKeys:(id)keys;
- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key;
- (id)bindOutputForRequest:(id)request asAttachedMediaUsingKey:(id)key withVideoFormat:(id)format;
- (id)bindOutputForRequest:(id)request asConsolidatedMetadataUsingKeys:(id)keys;
- (id)bindOutputForRequest:(id)request asMetadataUsingKey:(id)key;
- (id)bindOutputForRequest:(id)request asMetadataUsingKeys:(id)keys;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForExecution;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (void)_tapToRadarVisionTimeOutError:(uint64_t)error performingRequests:settingsID:;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWVisionInferenceProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWVisionInferenceProvider)initWithConfiguration:(id)configuration requests:(id)requests executesRequestsIndividually:(BOOL)individually executionTarget:(int)target preventionReasons:(id)reasons resourceProvider:(id)provider
{
  v10 = *&target;
  v23.receiver = self;
  v23.super_class = BWVisionInferenceProvider;
  v14 = [(BWVisionInferenceProvider *)&v23 init];
  if (v14)
  {
    v14->_configuration = configuration;
    objc_opt_class();
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? configuration : 0;
    v14->_executesRequestsIndividually = individually;
    v14->_type = [configuration inferenceType];
    v14->_executionTarget = v10;
    v16 = [reasons copy];
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    *&v14->_indexOfRequestForMergedFaceDetection = vnegq_f64(v17);
    v14->_preventionReasons = v16;
    v14->_indexOfRequestForMaximumNumberOfFaces = 0x7FFFFFFFFFFFFFFFLL;
    v14->_maximumNumberOfFaces = [v15 maximumNumberOfFaces];
    v14->_clampToLargestMaximumNumberOfFaces = [v15 clampToLargestMaximumNumberOfFaces];
    v14->_considerISPRectsIfVisionFails = [v15 considerISPRectsIfVisionFails];
    v14->_alwaysExecuteForRedEyeReduction = [v15 alwaysExecuteForRedEyeReduction];
    v14->_prototypeRequests = [requests copy];
    v14->_context = [provider visionContextForExecutionTarget:v10];
    v14->_requestIndexByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->_requestIndexByRequest = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(requests, "count")}];
    if ([requests count])
    {
      v18 = 0;
      while (1)
      {
        v19 = [requests objectAtIndexedSubscript:v18];
        -[NSMapTable setObject:forKey:](v14->_requestIndexByRequest, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18], v19);
        getVNDetectFaceRectanglesRequestClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        getVNRecognizeFoodAndDrinkRequestClass();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        p_indexOfRequestForMergedFoodAndDrinkRecognition = &v14->_indexOfRequestForMergedFoodAndDrinkRecognition;
        if (isKindOfClass)
        {
          goto LABEL_10;
        }

LABEL_11:
        if (++v18 >= [requests count])
        {
          return v14;
        }
      }

      v14->_indexOfRequestForMaximumNumberOfFaces = v18;
      p_indexOfRequestForMergedFoodAndDrinkRecognition = &v14->_indexOfRequestForMergedFaceDetection;
LABEL_10:
      *p_indexOfRequestForMergedFoodAndDrinkRecognition = v18;
      goto LABEL_11;
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVisionInferenceProvider;
  [(BWVisionInferenceProvider *)&v3 dealloc];
}

- (id)newStorage
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputVideoRequirements];
  [array addObjectsFromArray:self->_outputVideoRequirements];
  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObjectsFromArray:self->_outputVideoRequirements];
  v5 = [BWVisionInferenceStorage alloc];

  return [(BWVisionInferenceStorage *)v5 initWithRequirementsNeedingPixelBuffers:array requirementsNeedingPixelBufferPools:array2];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  outputVideoRequirements = self->_outputVideoRequirements;
  v11 = [(NSMutableArray *)outputVideoRequirements countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(outputVideoRequirements);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = [storage newSampleBufferSatisfyingRequirement:v15 withPropagationSampleBuffer:sampleBuffer];
        BWSampleBufferSetAttachedMedia(sampleBuffer, [v15 attachedMediaKey], v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      v12 = [(NSMutableArray *)outputVideoRequirements countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v12);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  cloneVideoRequirements = self->_cloneVideoRequirements;
  v18 = [(NSMutableArray *)cloneVideoRequirements countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(cloneVideoRequirements);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        v23 = [storage newSampleBufferSatisfyingCloneRequirement:v22];
        BWSampleBufferSetAttachedMedia(sampleBuffer, [v22 attachedMediaKey], v23);
        if (v23)
        {
          CFRelease(v23);
        }
      }

      v19 = [(NSMutableArray *)cloneVideoRequirements countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v19);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  outputMetadataRequirements = self->_outputMetadataRequirements;
  v25 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(outputMetadataRequirements);
        }

        v29 = [storage newMetadataDictionarySatisfyingRequirement:*(*(&v31 + 1) + 8 * k)];
        [dictionary addEntriesFromDictionary:v29];
      }

      v26 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v26);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  handlerCopy = handler;
  if ([(BWVisionInferenceProvider *)self primaryInputVideoRequirement])
  {
    v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (v10)
    {
      v11 = v10;
      v12 = [v10 objectForKeyedSubscript:*off_1E798A5B0];
      if (v12 || (v12 = CMGetAttachment(buffer, @"UprightExifOrientation", 0)) != 0)
      {
        intValue = [v12 intValue];
      }

      else
      {
        intValue = 1;
      }

      v13 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
      v14 = [v13 captureStreamSettingsForPortType:{objc_msgSend(v11, "objectForKeyedSubscript:", *off_1E798B540)}];
      v75 = v13;
      v73 = v11;
      v84 = [v13 captureType] == 2 && (objc_msgSend(v14, "captureFlags", v11) & 0x10000) != 0 && self->_alwaysExecuteForRedEyeReduction;
      v117[0] = 0;
      sequenceRequestHandler = [(BWVisionInferenceContext *)self->_context sequenceRequestHandler];
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_prototypeRequests copyItems:1];
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      requestIndexByRequirement = self->_requestIndexByRequirement;
      v17 = [(NSMutableDictionary *)requestIndexByRequirement countByEnumeratingWithState:&v113 objects:v112 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v114;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v114 != v19)
            {
              objc_enumerationMutation(requestIndexByRequirement);
            }

            [storage setRequest:objc_msgSend(v15 forRequirement:{"objectAtIndexedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_requestIndexByRequirement, "objectForKeyedSubscript:", *(*(&v113 + 1) + 8 * i)), "unsignedIntegerValue")), *(*(&v113 + 1) + 8 * i)}];
          }

          v18 = [(NSMutableDictionary *)requestIndexByRequirement countByEnumeratingWithState:&v113 objects:v112 count:16];
        }

        while (v18);
      }

      if (self->_executesRequestsIndividually)
      {
        indexSet = [MEMORY[0x1E696AD50] indexSet];
        if (self->_indexOfRequestForMergedFaceDetection == 0x7FFFFFFFFFFFFFFFLL || self->_indexOfRequestForMergedFoodAndDrinkRecognition == 0x7FFFFFFFFFFFFFFFLL)
        {
          v78 = 0;
          v22 = 0;
        }

        else
        {
          v22 = [v15 objectAtIndexedSubscript:?];
          v78 = 1;
        }

        v41 = [v15 count];
        if (v41)
        {
          v42 = v41;
          v79 = 0;
          v80 = v41;
          v43 = 0;
          v44 = 0;
          bufferCopy = buffer;
          v83 = indexSet;
          while (1)
          {
            v45 = [v15 objectAtIndexedSubscript:v44];
            if (([indexSet containsIndex:v44] & 1) == 0)
            {
              v86 = v45;
              results = [v43 results];
              v47 = self->_considerISPRectsIfVisionFails && (getVNDetectFaceRectanglesRequestClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [results count] == 0;
              objc_opt_class();
              v48 = (objc_opt_isKindOfClass() & 1) != 0 && (-[BWVisionInferenceConfiguration requestTypes](self->_configuration, "requestTypes") & 1) == 0 && [results count] == 0;
              if ((v47 | v48))
              {
                v70 = -[BWVisionInferenceProvider _validatedBoundingBoxInObservationsWithMetadata:exifOrientation:fromPreviousRequest:wasForwardedToCurrentRequest:didFallBackToISPFaces:forCaptureSettingsID:](self, v74, intValue, v43, v86, v47, [v75 settingsID]);
                if ([v70 count] != 0 || v48)
                {
                  results = v70;
                }
              }

              if (self->_clampToLargestMaximumNumberOfFaces)
              {
                getVNDetectFaceRectanglesRequestClass();
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (getVNDetectFaceLandmarksRequestClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (getVNGenerateFaceSegmentsRequestClass(), objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  if ([results count] > self->_maximumNumberOfFaces)
                  {
                    v111 = 0u;
                    v110 = 0u;
                    v108 = 0u;
                    v109 = 0u;
                    v49 = [results countByEnumeratingWithState:&v108 objects:v107 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v109;
                      while (1)
                      {
                        if (*v109 != v51)
                        {
                          objc_enumerationMutation(results);
                        }

                        if (!--v50)
                        {
                          v50 = [results countByEnumeratingWithState:&v108 objects:v107 count:16];
                          if (!v50)
                          {
                            break;
                          }
                        }
                      }
                    }

                    v52 = [results sortedArrayUsingComparator:&__block_literal_global_131];
                    results = [objc_msgSend(v52 subarrayWithRange:{objc_msgSend(v52, "count") - self->_maximumNumberOfFaces), "copy"}];
                    v103 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    v106 = 0u;
                    v53 = [results countByEnumeratingWithState:&v103 objects:v102 count:16];
                    if (v53)
                    {
                      v54 = v53;
                      v55 = *v104;
                      while (1)
                      {
                        if (*v104 != v55)
                        {
                          objc_enumerationMutation(results);
                        }

                        if (!--v54)
                        {
                          v54 = [results countByEnumeratingWithState:&v103 objects:v102 count:16];
                          if (!v54)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (v43 && ![results count] || self->_maximumNumberOfFaces != 0 && !v84 && !self->_clampToLargestMaximumNumberOfFaces && objc_msgSend(objc_msgSend(objc_msgSend(v15, "objectAtIndexedSubscript:", self->_indexOfRequestForMaximumNumberOfFaces), "results"), "count") > self->_maximumNumberOfFaces)
              {
                goto LABEL_126;
              }

              if (-[BWVisionInferenceConfiguration shouldPreventRequestForSampleBuffer](self->_configuration, "shouldPreventRequestForSampleBuffer") && (v56 = -[BWVisionInferenceConfiguration shouldPreventRequestForSampleBuffer](self->_configuration, "shouldPreventRequestForSampleBuffer"), v56[2](v56, [v86 copy], buffer)))
              {
                [storage removeRequest:v86];
                indexSet = v83;
                v42 = v80;
              }

              else
              {
                if ([v86 conformsToProtocol:&unk_1F22C4730])
                {
                  [v86 setInputFaceObservations:results];
                }

                v85 = v22;
                primaryInputVideoRequirement = [(BWVisionInferenceProvider *)self primaryInputVideoRequirement];
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v101 = 0u;
                inputVideoRequirements = self->_inputVideoRequirements;
                v59 = [(NSMutableArray *)inputVideoRequirements countByEnumeratingWithState:&v98 objects:v97 count:16];
                if (v59)
                {
                  v60 = v59;
                  v61 = *v99;
                  do
                  {
                    for (j = 0; j != v60; ++j)
                    {
                      if (*v99 != v61)
                      {
                        objc_enumerationMutation(inputVideoRequirements);
                      }

                      v63 = *(*(&v98 + 1) + 8 * j);
                      if (v44 == [-[NSMutableDictionary objectForKeyedSubscript:](self->_requestIndexByRequirement objectForKeyedSubscript:{v63), "intValue"}])
                      {
                        primaryInputVideoRequirement = v63;
                      }
                    }

                    v60 = [(NSMutableArray *)inputVideoRequirements countByEnumeratingWithState:&v98 objects:v97 count:16];
                  }

                  while (v60);
                }

                v64 = [storage pixelBufferForRequirement:primaryInputVideoRequirement];
                if (!v64)
                {
                  v79 = -31712;
                  v22 = v85;
                  goto LABEL_126;
                }

                v65 = v64;
                if ([(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)primaryInputVideoRequirement videoFormat] deviceOriented])
                {
                  v66 = 1;
                }

                else
                {
                  v66 = intValue;
                }

                v67 = [MEMORY[0x1E695DF70] arrayWithObject:v86];
                v68 = v67;
                v22 = v85;
                if (v78 && v44 == self->_indexOfRequestForMergedFaceDetection)
                {
                  buffer = bufferCopy;
                  if (v85)
                  {
                    [v67 addObject:v85];
                    [v83 addIndex:self->_indexOfRequestForMergedFoodAndDrinkRecognition];

                    v22 = 0;
                  }
                }

                else
                {
                  buffer = bufferCopy;
                }

                v69 = [(VNSequenceRequestHandler *)sequenceRequestHandler performRequests:v68 onCVPixelBuffer:v65 orientation:v66 error:v117];
                if (-[BWVisionInferenceConfiguration suppressTimeOutFailure](self->_configuration, "suppressTimeOutFailure") && [objc_msgSend(v117[0] "domain")] && objc_msgSend(v117[0], "code") == 20)
                {
                  [v75 settingsID];
                  [BWVisionInferenceProvider _tapToRadarVisionTimeOutError:? performingRequests:? settingsID:?];
                  v42 = v80;
                  v44 = v80;
                  indexSet = v83;
                }

                else
                {
                  indexSet = v83;
                  if (!v69)
                  {
                    v79 = -31710;
                    goto LABEL_126;
                  }

                  v42 = v80;
                }

                v43 = v86;
              }
            }

            if (++v44 >= v42)
            {
              goto LABEL_126;
            }
          }
        }

LABEL_125:
        v79 = 0;
        goto LABEL_126;
      }

      if ([(BWVisionInferenceConfiguration *)self->_configuration shouldPreventRequestForSampleBuffer])
      {
        v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v24 = [v15 countByEnumeratingWithState:&v93 objects:v92 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v94;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v94 != v26)
              {
                objc_enumerationMutation(v15);
              }

              v28 = *(*(&v93 + 1) + 8 * k);
              shouldPreventRequestForSampleBuffer = [(BWVisionInferenceConfiguration *)self->_configuration shouldPreventRequestForSampleBuffer];
              if (shouldPreventRequestForSampleBuffer[2](shouldPreventRequestForSampleBuffer, [v28 copy], buffer))
              {
                [v23 addObject:v28];
                [storage removeRequest:v28];
              }
            }

            v25 = [v15 countByEnumeratingWithState:&v93 objects:v92 count:16];
          }

          while (v25);
        }

        [v15 removeObjectsInArray:v23];
      }

      if ([(BWVisionInferenceConfiguration *)self->_configuration reuseUpstreamFaceObservations])
      {
        AttachedInference = BWInferenceGetAttachedInference(buffer, 802, 0x1F219E5F0);
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v31 = [v15 countByEnumeratingWithState:&v88 objects:v87 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v89;
          do
          {
            for (m = 0; m != v32; ++m)
            {
              if (*v89 != v33)
              {
                objc_enumerationMutation(v15);
              }

              v35 = *(*(&v88 + 1) + 8 * m);
              if ([v35 conformsToProtocol:&unk_1F22C4730])
              {
                [v35 setInputFaceObservations:AttachedInference];
              }
            }

            v32 = [v15 countByEnumeratingWithState:&v88 objects:v87 count:16];
          }

          while (v32);
        }
      }

      primaryInputVideoRequirement2 = [(BWVisionInferenceProvider *)self primaryInputVideoRequirement];
      v37 = [storage pixelBufferForRequirement:primaryInputVideoRequirement2];
      if (v37)
      {
        v38 = v37;
        if ([(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)primaryInputVideoRequirement2 videoFormat] deviceOriented])
        {
          v39 = 1;
        }

        else
        {
          v39 = intValue;
        }

        v40 = [(VNSequenceRequestHandler *)sequenceRequestHandler performRequests:v15 onCVPixelBuffer:v38 orientation:v39 error:v117];
        if (-[BWVisionInferenceConfiguration suppressTimeOutFailure](self->_configuration, "suppressTimeOutFailure") && [objc_msgSend(v117[0] "domain")] && objc_msgSend(v117[0], "code") == 20)
        {
          [v75 settingsID];
          [BWVisionInferenceProvider _tapToRadarVisionTimeOutError:? performingRequests:? settingsID:?];
          goto LABEL_52;
        }

        if (v40)
        {
LABEL_52:
          v22 = 0;
          goto LABEL_125;
        }

        [BWVisionInferenceProvider executeOnSampleBuffer:usingStorage:withExecutionTime:completionHandler:];
        v22 = 0;
        v72 = -31710;
      }

      else
      {
        v22 = 0;
        v72 = -31712;
      }
    }

    else
    {
      [BWVisionInferenceProvider executeOnSampleBuffer:usingStorage:withExecutionTime:completionHandler:];
      v22 = 0;
      v72 = -31714;
    }
  }

  else
  {
    [BWVisionInferenceProvider executeOnSampleBuffer:usingStorage:withExecutionTime:completionHandler:];
    v22 = 0;
    v72 = -31711;
  }

  v79 = v72;
LABEL_126:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  return v79;
}

uint64_t __100__BWVisionInferenceProvider_executeOnSampleBuffer_usingStorage_withExecutionTime_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = bwvip_boundingBoxArea(a2);
  v5 = bwvip_boundingBoxArea(a3);
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (id)bindInputForRequest:(id)request fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  v8 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:key videoFormatProvider:provider];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v8];
  if (![(BWVisionInferenceProvider *)self primaryInputVideoRequirement]&& [(NSString *)[(BWInferenceMediaRequirement *)v8 attachedMediaKey] isEqualToString:@"PrimaryFormat"])
  {
    [(BWVisionInferenceProvider *)self setPrimaryInputVideoRequirement:v8];
  }

  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v8];

  return v8;
}

- (id)bindIdealInputForRequest:(id)request fromAttachedMediaUsingKey:(id)key
{
  v7 = [objc_msgSend(request "supportedImageSizeSet")];
  v8 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v8, "setWidth:", [objc_msgSend(v7 "pixelsWideRange")]);
  -[BWVideoFormatRequirements setHeight:](v8, "setHeight:", [objc_msgSend(v7 "pixelsHighRange")]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v7, "idealImageFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v8, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]);
  v9 = ([v7 isOrientationAgnostic] & 1) == 0 && objc_msgSend(v7, "idealOrientation") == 1;
  [(BWInferenceVideoFormatRequirements *)v8 setDeviceOriented:v9];
  [(BWVideoFormatRequirements *)v8 setSupportedColorSpaceProperties:&unk_1F2249D68];
  [(BWVideoFormatRequirements *)v8 setBytesPerRowAlignment:64];
  v12 = v8;
  v10 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:]([BWInferenceVideoRequirement alloc], "initWithAttachedMediaKey:videoFormat:", key, +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]));
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v10];
  if (![(BWVisionInferenceProvider *)self primaryInputVideoRequirement]&& [(NSString *)[(BWInferenceMediaRequirement *)v10 attachedMediaKey] isEqualToString:@"PrimaryFormat"])
  {
    [(BWVisionInferenceProvider *)self setPrimaryInputVideoRequirement:v10];
  }

  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v10];
  return v10;
}

- (id)bindInputForRequest:(id)request fromMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_inputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v6];

  return v6;
}

- (id)bindOutputForRequest:(id)request asAttachedMediaUsingKey:(id)key withVideoFormat:(id)format
{
  v7 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format];
  [(NSMutableArray *)self->_outputVideoRequirements addObject:v7];
  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v7];

  return v7;
}

- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key
{
  v5 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:key sourceVideoRequirement:requirement];
  [(NSMutableArray *)self->_cloneVideoRequirements addObject:v5];

  return v5;
}

- (id)bindOutputForRequest:(id)request asMetadataUsingKey:(id)key
{
  v7 = [BWInferenceMetadataRequirement alloc];
  keyCopy = key;
  v8 = -[BWInferenceMetadataRequirement initWithMetadataKeys:mappingOption:](v7, "initWithMetadataKeys:mappingOption:", [MEMORY[0x1E695DEC8] arrayWithObjects:&keyCopy count:1], 1);
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v8];
  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v8];
  return v8;
}

- (id)bindOutputForRequest:(id)request asMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v6];

  return v6;
}

- (id)bindOutputForRequest:(id)request asConsolidatedMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys mappingOption:2];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_requestIndexByRequirement setObject:[(NSMapTable *)self->_requestIndexByRequest objectForKey:request] forKeyedSubscript:v6];

  return v6;
}

- (void)_tapToRadarVisionTimeOutError:(uint64_t)error performingRequests:settingsID:
{
  if (error)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(10, v2, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/Vision/BWVisionInferenceProvider.m", 389, @"LastShownDate:BWVisionInferenceProvider.m:389", @"LastShownBuild:BWVisionInferenceProvider.m:389", 0);
    free(v2);
  }
}

- (id)_validatedBoundingBoxInObservationsWithMetadata:(CGAffineTransform *)metadata exifOrientation:(uint64_t)orientation fromPreviousRequest:(uint64_t)request wasForwardedToCurrentRequest:(int)currentRequest didFallBackToISPFaces:(uint64_t)faces forCaptureSettingsID:
{
  HIDWORD(v72) = currentRequest;
  if (result)
  {
    HIDWORD(v68) = metadata;
    v8 = BWFaceDetectionObservationsFromISPDetectedFacesMetadata(a2, metadata);
    v9 = [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
    v10 = FigCaptureUnityRect();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v78 = v9;
    if (!v9)
    {
      v78 = [a2 objectForKeyedSubscript:*off_1E798B218];
    }

    array = [MEMORY[0x1E695DF70] array];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v25 = OUTLINED_FUNCTION_7_80(array, v18, v19, v20, v21, v22, v23, v24, v56, v58, v60, v62, v64, v66, v68, orientation, v72, faces, request, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, *&recta.origin.x, *&recta.origin.y, *&recta.size.width, *&recta.size.height, v137);
    if (v25)
    {
      v26 = v25;
      v27 = *v139;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v139 != v27)
          {
            objc_enumerationMutation(v8);
          }

          v29 = *(*(&v138 + 1) + 8 * i);
          getVNDetectedObjectObservationClass();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            [v29 boundingBox];
            isKindOfClass = CGRectIsEmpty(v142);
            if ((isKindOfClass & 1) == 0)
            {
              [v29 boundingBox];
              v145.origin.x = v38;
              v145.origin.y = v39;
              v145.size.width = v40;
              v145.size.height = v41;
              v143.origin.x = v10;
              v143.origin.y = v12;
              v143.size.width = v14;
              v143.size.height = v16;
              isKindOfClass = CGRectIntersectsRect(v143, v145);
              if (isKindOfClass)
              {
                isKindOfClass = [array addObject:v29];
              }
            }
          }
        }

        v26 = OUTLINED_FUNCTION_7_80(isKindOfClass, v31, v32, v33, v34, v35, v36, v37, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, *&recta.origin.x, *&recta.origin.y, *&recta.size.width, *&recta.size.height, v137);
      }

      while (v26);
    }

    v42 = [v8 count];
    v43 = v77;
    if (v42 != [array count] && objc_msgSend(v8, "count"))
    {
      v44 = 0;
      v45 = *off_1E798D040;
      do
      {
        v46 = [v8 objectAtIndexedSubscript:v44];
        v47 = [v79 objectAtIndexedSubscript:v44];
        memset(&recta, 0, sizeof(recta));
        CGRectMakeWithDictionaryRepresentation([v47 objectForKeyedSubscript:v45], &recta);
        [v43 conformsToProtocol:&unk_1F22C4730];
        [v46 boundingBox];
        if (CGRectIsEmpty(v144))
        {
          OUTLINED_FUNCTION_4_96();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v135)))
          {
            v49 = HIDWORD(v135);
          }

          else
          {
            v49 = HIDWORD(v135) & 0xFFFFFFFE;
          }

          if (v49)
          {
            BWStringFromCGRect(recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
            OUTLINED_FUNCTION_6_80();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_3_109();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else if (dword_1EB58E2E0)
        {
          OUTLINED_FUNCTION_4_96();
          v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(v50, BYTE3(v135)))
          {
            v51 = HIDWORD(v135);
          }

          else
          {
            v51 = HIDWORD(v135) & 0xFFFFFFFE;
          }

          if (v51)
          {
            [v46 boundingBox];
            BWStringFromCGRect(v52, v53, v54, v55);
            BWStringFromCGRect(recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
            OUTLINED_FUNCTION_6_80();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_3_109();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v43 = v77;
        }

        ++v44;
      }

      while ([v8 count] > v44);
    }

    return [array copy];
  }

  return result;
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  type = self->_type;
  if (type != [provider type])
  {
    return -31783;
  }

  [provider customInferenceIdentifier];
  if (![OUTLINED_FUNCTION_8() isEqualToString:?])
  {
    return -31783;
  }

  [(NSMutableArray *)self->_inputVideoRequirements removeAllObjects];
  [provider inputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_inputMetadataRequirements removeAllObjects];
  [provider inputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputVideoRequirements removeAllObjects];
  [provider outputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputMetadataRequirements removeAllObjects];
  [provider outputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_cloneVideoRequirements removeAllObjects];
  [provider cloneVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];

  self->_primaryInputVideoRequirement = [provider primaryInputVideoRequirement];
  [(NSMutableDictionary *)self->_requestIndexByRequirement removeAllObjects];
  if (provider)
  {
    v6 = *(provider + 13);
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableDictionary *)self->_requestIndexByRequirement addEntriesFromDictionary:v6];
  return 0;
}

- (int)prepareForExecution
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_124();
    kdebug_trace();
  }

  BWInferenceTypeDescription(self->_type);
  mach_absolute_time();
  prepareForInference = [(BWVisionInferenceContext *)self->_context prepareForInference];
  if (prepareForInference)
  {
    v7 = prepareForInference;
  }

  else
  {
    if (self->_didLoadResourcesForAllRequests)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }

    sequenceRequestHandler = [(BWVisionInferenceContext *)self->_context sequenceRequestHandler];
    if (sequenceRequestHandler)
    {
      v9 = 0;
      if ([(VNSequenceRequestHandler *)sequenceRequestHandler prepareForPerformingRequests:self->_prototypeRequests error:&v9])
      {
        self->_didLoadResourcesForAllRequests = 1;
        if (dword_1EB58E2E0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_9;
      }

      v7 = -31710;
    }

    else
    {
      v7 = -31702;
    }
  }

LABEL_10:
  if (*v3 == 1)
  {
    OUTLINED_FUNCTION_2_124();
    kdebug_trace();
  }

  return v7;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  memoryCopy = memory;
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  prepareForInference = [(BWVisionInferenceContext *)self->_context prepareForInference];
  if (prepareForInference)
  {
    v32 = prepareForInference;
  }

  else
  {
    sequenceRequestHandler = [(BWVisionInferenceContext *)self->_context sequenceRequestHandler];
    if (sequenceRequestHandler)
    {
      v8 = sequenceRequestHandler;
      array = [MEMORY[0x1E695DF70] array];
      v17 = array;
      if (memoryCopy)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        prototypeRequests = self->_prototypeRequests;
        v19 = OUTLINED_FUNCTION_17_0(array, v10, v11, v12, v13, v14, v15, v16, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, 0);
        if (v19)
        {
          v20 = v19;
          v21 = *v54;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(prototypeRequests);
              }

              v23 = *(*(&v53 + 1) + 8 * i);
              getVNDetectFaceRectanglesRequestClass();
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                isKindOfClass = [v17 addObject:v23];
              }
            }

            v20 = OUTLINED_FUNCTION_17_0(isKindOfClass, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
          }

          while (v20);
        }
      }

      else
      {
        [array addObjectsFromArray:self->_prototypeRequests];
      }

      v36 = 0;
      if (([(VNSequenceRequestHandler *)v8 prepareForPerformingRequests:v17 error:&v36]& 1) != 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = -31710;
      }
    }

    else
    {
      v32 = -31702;
    }
  }

  if (*v5 == 1)
  {
    OUTLINED_FUNCTION_2_124();
    kdebug_trace();
  }

  return v32;
}

@end
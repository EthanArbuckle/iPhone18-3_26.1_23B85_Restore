@interface BWIntelligentDistortionCorrectionProcessorController
+ (BOOL)idcSupportedForCaptureType:(int)a3 captureFlags:(unint64_t)a4;
- (BWIntelligentDistortionCorrectionProcessorController)initWithConfiguration:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4;
- (uint64_t)_applyExistingCorrectionToDepthPixelBuffer:(uint64_t)a3 primaryImageDimensions:;
- (uint64_t)_determineWorkingBufferRequirementsWithProcessorConfig:(unint64_t)a3 processor:(void *)a4 metalBufferSizeOut:(unint64_t *)a5;
- (uint64_t)_prepareProcessor:(void *)a1;
- (uint64_t)_resetProcessor;
- (uint64_t)_serviceNextRequest;
- (uint64_t)_updateStateIfNeeded;
- (void)_getAndAttachGDCInformationToDemosaicedRawSampleBuffer:(id *)a1 inputDimensions:(const void *)a2 finalImageDimensions:(unint64_t)a3 settingsID:(uint64_t)a4;
- (void)_loadSetupAndPrepareProcessor;
- (void)_process;
- (void)cancelProcessing;
- (void)dealloc;
- (void)inputReceivedNewInputData:(id)a3;
@end

@implementation BWIntelligentDistortionCorrectionProcessorController

- (BWIntelligentDistortionCorrectionProcessorController)initWithConfiguration:(id)a3
{
  v50.receiver = self;
  v50.super_class = BWIntelligentDistortionCorrectionProcessorController;
  v4 = [(BWStillImageProcessorController *)&v50 initWithName:@"DistortionCorrectionPC" type:7 configuration:a3];
  if (v4)
  {
    if (![objc_msgSend(a3 "sensorConfigurationsByPortType")])
    {
      [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
      goto LABEL_26;
    }

    if ([a3 horizontalSensorBinningFactor] > 1 || objc_msgSend(a3, "verticalSensorBinningFactor") >= 2)
    {
      v5 = [a3 horizontalSensorBinningFactor];
      if (v5 != [a3 verticalSensorBinningFactor])
      {
        goto LABEL_26;
      }

      v35 = v4;
      v39 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(objc_msgSend(a3, "sensorConfigurationsByPortType"), "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = [a3 sensorConfigurationsByPortType];
      v6 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v6)
      {
        v7 = v6;
        v38 = *v47;
        v8 = *off_1E7989F18;
        v9 = *off_1E7989F10;
        v37 = *MEMORY[0x1E695EFF8];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v47 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v46 + 1) + 8 * i);
            v12 = [objc_msgSend(a3 "sensorConfigurationsByPortType")];
            v13 = [objc_msgSend(v12 "cameraInfo")];
            [objc_msgSend(v13 objectForKeyedSubscript:{v8), "floatValue"}];
            *&v15 = v14 * [a3 horizontalSensorBinningFactor];
            [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v15), v8}];
            point = v37;
            if (CGPointMakeWithDictionaryRepresentation([v13 objectForKeyedSubscript:v9], &point))
            {
              v16 = [a3 horizontalSensorBinningFactor];
              point.x = point.x / v16;
              v17 = [a3 verticalSensorBinningFactor];
              point.y = point.y / v17;
              DictionaryRepresentation = CGPointCreateDictionaryRepresentation(point);
              [v13 setObject:DictionaryRepresentation forKeyedSubscript:v9];
            }

            [v39 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v11, objc_msgSend(v12, "sensorIDString"), objc_msgSend(v12, "sensorIDDictionary"), v13), v11}];
          }

          v7 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v7);
      }

      [a3 setSensorConfigurationsByPortType:v39];
      v4 = v35;
    }

    if ([a3 depthDataCorrectionEnabled])
    {
      v19 = [a3 primaryFormat];
      if (!v19)
      {
        [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
        goto LABEL_26;
      }

      v20 = v19;
      v21 = [a3 depthFormat];
      if (!v21)
      {
        [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
        goto LABEL_26;
      }

      v22 = v21;
      v23 = [v20 width];
      v24 = v23 >= [v20 height];
      v25 = [v22 width];
      if (v24 == v25 < [v22 height])
      {
        v26 = [v22 height];
        v27 = [v22 width];
      }

      else
      {
        v26 = [v22 width];
        v27 = [v22 height];
      }

      v28 = v27;
      v42[0] = *MEMORY[0x1E6966130];
      v43[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v22, "pixelFormat")}];
      v42[1] = *MEMORY[0x1E6966208];
      v43[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v26];
      v42[2] = *MEMORY[0x1E69660B8];
      v43[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v28];
      v42[3] = *MEMORY[0x1E69660D8];
      v29 = *MEMORY[0x1E696CFA0];
      v40[0] = *MEMORY[0x1E696CE60];
      v40[1] = v29;
      v41[0] = &unk_1F2247D40;
      v41[1] = MEMORY[0x1E695E118];
      v43[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
      if ([a3 baseDepthRotationDegrees])
      {
        v31 = *MEMORY[0x1E695E480];
        if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v26, v28, [v22 pixelFormat], v30, &v4->_intermediateDepthInputBuffer))
        {
          [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
          goto LABEL_26;
        }

        if (CVPixelBufferCreate(v31, v26, v28, [v22 pixelFormat], v30, &v4->_intermediateDepthOutputBuffer))
        {
          [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
          goto LABEL_26;
        }
      }
    }

    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = [[FigStateMachine alloc] initWithLabel:@"BWIntelligentDistortionCorrectionProcessorController state machine" stateCount:4 initialState:1 owner:v4];
    [(FigStateMachine *)v32 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v32 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v32 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v32 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v32 setLabel:@"ProcessIntelligentDistortionCorrection" forState:8];
    [(FigStateMachine *)v32 whenTransitioningToStates:1 callHandler:&__block_literal_global_139];
    [(FigStateMachine *)v32 whenTransitioningToStates:2 callHandler:&__block_literal_global_530];
    [(FigStateMachine *)v32 whenTransitioningToState:4 callHandler:&__block_literal_global_532];
    [(FigStateMachine *)v32 whenTransitioningToState:8 callHandler:&__block_literal_global_534];
    v4->_stateMachine = v32;
    v4->_outputFormatDescriptionByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = objc_autoreleasePoolPush();
    LODWORD(v32) = [(BWIntelligentDistortionCorrectionProcessorController *)v4 _loadSetupAndPrepareProcessor];
    objc_autoreleasePoolPop(v33);
    if (v32)
    {
LABEL_26:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(FigIntelligentDistortionCorrectionProcessor *)self->_processor finishProcessing];
  [(BWIntelligentDistortionCorrectionProcessorController *)self _resetProcessor];

  outputImageFormatDescription = self->_outputImageFormatDescription;
  if (outputImageFormatDescription)
  {
    CFRelease(outputImageFormatDescription);
  }

  CVPixelBufferRelease(self->_intermediateDepthInputBuffer);
  CVPixelBufferRelease(self->_intermediateDepthOutputBuffer);
  v4.receiver = self;
  v4.super_class = BWIntelligentDistortionCorrectionProcessorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (void)inputReceivedNewInputData:(id)a3
{
  [(BWIntelligentDistortionCorrectionProcessorRequest *)self->_currentRequest input];

  [(BWIntelligentDistortionCorrectionProcessorController *)self _updateStateIfNeeded];
}

+ (BOOL)idcSupportedForCaptureType:(int)a3 captureFlags:(unint64_t)a4
{
  v4 = (a4 & 0x100000080) == 128;
  if (a3 != 1)
  {
    v4 = 0;
  }

  return (a3 - 10) < 4 || v4;
}

- (void)_process
{
  [*(a1 + 72) globalTransform];
  v8 = BWRowMajorArrayFrom3x3Matrix(v5, v6, v7);
  CMSetAttachment(*a2, a3, v8, 1u);
}

- (void)_loadSetupAndPrepareProcessor
{
  if (result)
  {
    v1 = result;
    v2 = [result configuration];
    v3 = [v2 intelligentDistortionCorrectionVersion];
    v4 = [v2 intelligentDistortionCorrectionVersion];
    v5 = [v2 sensorConfigurationsByPortType];
    v6 = [v2 metalCommandQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__BWIntelligentDistortionCorrectionProcessorController__loadSetupAndPrepareProcessor__block_invoke;
    v20[3] = &unk_1E7991C78;
    v20[4] = v1;
    result = BWLoadCreateSetupAndPrepareMetalImageBufferProcessor(@"IntelligentDistortionCorrection", v3, @"Fig", @"IntelligentDistortionCorrection", v4, &unk_1F22C4790, 1, v5, v6, 0, v20, 0, v1 + 9);
    if (!result)
    {
      v14 = v1;
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v2 sensorConfigurationsByPortType];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [v7 setObject:objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v2 forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", *(*(&v16 + 1) + 8 * i)), "sensorIDDictionary"), "objectForKeyedSubscript:", @"IntelligentDistortionCorrectionParameters", "objectForKeyedSubscript:", @"CaptureConfiguration", "objectForKeyedSubscript:", @"IDCMaxZoomScaleFactor", *(*(&v16 + 1) + 8 * i)}];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v10);
      }

      result = [v7 count];
      if (result)
      {
        v13 = v7;
        result = 0;
        v14[8] = v13;
      }
    }
  }

  return result;
}

- (uint64_t)_resetProcessor
{
  if (result)
  {
    v1 = result;
    [*(result + 72) setProcessIntelligentDistortionCorrection:0];
    [OUTLINED_FUNCTION_2_130() setProcessGeometricDistortionCorrection:?];
    [OUTLINED_FUNCTION_2_130() setUseDeepTransferAccommodations:?];
    [OUTLINED_FUNCTION_3_116() setApplyZoom:1];
    [OUTLINED_FUNCTION_2_130() setApplyStereoRectificationHomography:?];
    [*(v1 + 72) setStereoRectificationInverseHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
    [OUTLINED_FUNCTION_2_130() setUseBilinearInterpolation:?];
    [OUTLINED_FUNCTION_1_136() setGdcForwardPolynomial:?];
    [OUTLINED_FUNCTION_1_136() setGdcInversePolynomial:?];
    [OUTLINED_FUNCTION_3_116() setOpticalCenterOffset:{0.0, 0.0}];
    [OUTLINED_FUNCTION_2_130() setUsePrecomputedPolynomialsAndOpticalCenterOffset:?];
    [OUTLINED_FUNCTION_1_136() setInputImage:?];
    [OUTLINED_FUNCTION_1_136() setInputImageMetadataDictionary:?];
    [OUTLINED_FUNCTION_1_136() setLowResSegmentationMask:?];
    [OUTLINED_FUNCTION_1_136() setFaceObservations:?];
    [OUTLINED_FUNCTION_2_130() setDeviceWasStationaryDuringCapture:?];
    [OUTLINED_FUNCTION_3_116() setInputImageCropRect:?];
    [OUTLINED_FUNCTION_1_136() setOutputImage:?];
    [OUTLINED_FUNCTION_1_136() setFinalImageDimensions:?];
    [OUTLINED_FUNCTION_2_130() setReplicatePixelsOutsideOfFinalImageDimensions:?];
    v2 = OUTLINED_FUNCTION_3_116();
    __asm { FMOV            V0.2S, #1.0 }

    [v2 setInputImageAppliedScalingFactors:_D0];
    [OUTLINED_FUNCTION_3_116() setInputImageAppliedOffsets:0.0];
    v8 = OUTLINED_FUNCTION_3_116();

    return [v8 resetState];
  }

  return result;
}

- (uint64_t)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    v3 = [*(result + 96) currentState];
    if (v2)
    {
      if (v3 == 2)
      {
        v4 = 4;
      }

      else if (v3 == 4)
      {
        v4 = [objc_msgSend(v2 "input")] ? 8 : 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    result = [*(v1 + 96) currentState];
    if (v4 != result)
    {
      v5 = *(v1 + 96);

      return [v5 transitionToState:v4];
    }
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4
{
  v5 = [[BWIntelligentDistortionCorrectionProcessorRequest alloc] initWithInput:a3 delegate:a4];
  [(NSMutableArray *)self->_requestQueue addObject:v5];

  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWIntelligentDistortionCorrectionProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWIntelligentDistortionCorrectionProcessorController *)self _serviceNextRequest];

  [(BWIntelligentDistortionCorrectionProcessorController *)self _resetProcessor];
}

- (uint64_t)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 112) delegate];
    v3 = [*(v1 + 112) input];
    v4 = [*(v1 + 112) err];

    *(v1 + 112) = 0;
    [v2 processorController:v1 didFinishProcessingInput:v3 err:v4];

    v5 = [*(v1 + 104) firstObject];
    *(v1 + 112) = v5;
    if (v5)
    {
      [*(v1 + 104) removeObjectAtIndex:0];
      [objc_msgSend(*(v1 + 112) "input")];
    }

    return [(BWIntelligentDistortionCorrectionProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (void)_getAndAttachGDCInformationToDemosaicedRawSampleBuffer:(id *)a1 inputDimensions:(const void *)a2 finalImageDimensions:(unint64_t)a3 settingsID:(uint64_t)a4
{
  if (a1)
  {
    v8 = [a1 configuration];
    AttachedMedia = BWSampleBufferGetAttachedMedia(a2, 0x1F21AAE10);
    if (AttachedMedia)
    {
      v10 = AttachedMedia;
      v11 = CMGetAttachment(AttachedMedia, @"RawDNGDictionary", 0);
      if (!v11 || (v12 = v11, v66 = 0.0, v64 = 0u, v65 = 0u, v62 = 0u, v63 = 0u, [a1[9] getAdjustedGDCInformation:&v62]) || (LODWORD(v13) = v64, v58 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13), LODWORD(v14) = DWORD1(v64), v59 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v14), LODWORD(v15) = DWORD2(v64), v60 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v15), LODWORD(v16) = HIDWORD(v64), v61 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v16), v17 = objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v58, 4), v18 = BWPixelBufferDimensionsFromSampleBuffer(v10), (v19 = BWCreateDNGDictionaryWithZoomedGDCParameters(v12, v17, v18, *&v62, *(&v62 + 1), *&v63, *(&v63 + 1), *(&v65 + 1), v66)) == 0))
      {
        BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAE10);
        return;
      }

      v57 = v19;
      CMSetAttachment(v10, @"RawDNGDictionary", v19, 1u);
      if (a3 == v18 && HIDWORD(a3) == HIDWORD(v18))
      {
        v21 = llround(vabdd_f64(a4, *&v63));
        v22 = llround(vabdd_f64(SHIDWORD(a4), *(&v63 + 1)));
        if (v21 <= 4 && v22 <= 4)
        {
          v71.origin.x = *&v62 - (v21 / 2);
          v71.origin.y = *(&v62 + 1) - (v22 / 2);
          v72.origin.x = 0.0;
          v72.origin.y = 0.0;
          v72.size.width = a3;
          v72.size.height = SHIDWORD(a3);
          v71.size.width = a4;
          v71.size.height = SHIDWORD(a4);
          *&v24 = CGRectIntersection(v71, v72);
        }

        else
        {
          FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
        }

        FigCaptureMetadataUtilitiesNormalizeCropRect(v24, v25, v26, v27);
        v28 = [MEMORY[0x1E695DF70] arrayWithObject:0x1F21AAE10];
        v29 = [objc_msgSend(v8 "providedInferenceAttachedMediaByMode")];
        v30 = [v29 count];
        if (v30)
        {
          v30 = [v28 addObjectsFromArray:v29];
        }

        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v38 = OUTLINED_FUNCTION_5_92(v30, v31, v32, v33, v34, v35, v36, v37, v55, v57, v58, v59, v60, v61, v62, *(&v62 + 1));
        if (v38)
        {
          v39 = v38;
          v40 = *v68;
          v41 = *off_1E798A3C8;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v68 != v40)
              {
                objc_enumerationMutation(v28);
              }

              v43 = *(*(&v67 + 1) + 8 * i);
              v44 = BWSampleBufferGetAttachedMedia(a2, v43);
              if (v44)
              {
                v52 = v44;
                v53 = [CMGetAttachment(v44 v41];
                CMSetAttachment(v52, v41, v53, 1u);

                v44 = FigCFDictionarySetCGRect();
                if (v44)
                {
                  BWSampleBufferRemoveAttachedMedia(a2, v43);
                }
              }
            }

            v39 = OUTLINED_FUNCTION_5_92(v44, v45, v46, v47, v48, v49, v50, v51, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1));
          }

          while (v39);
        }
      }

      v54 = v57;
    }

    else
    {
      v54 = 0;
    }
  }
}

- (uint64_t)_applyExistingCorrectionToDepthPixelBuffer:(uint64_t)a3 primaryImageDimensions:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 "configuration")];
  if (!v6)
  {
    v12 = *(a1 + 128);
    if (!v12)
    {
      Width = CVPixelBufferGetWidth(a2);
      Height = CVPixelBufferGetHeight(a2);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v22[0] = *MEMORY[0x1E6966130];
      v23[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
      v22[1] = *MEMORY[0x1E6966208];
      v23[1] = [MEMORY[0x1E696AD98] numberWithInt:Width];
      v22[2] = *MEMORY[0x1E69660B8];
      v23[2] = [MEMORY[0x1E696AD98] numberWithInt:Height];
      v22[3] = *MEMORY[0x1E69660D8];
      v16 = *MEMORY[0x1E696CFA0];
      v20[0] = *MEMORY[0x1E696CE60];
      v20[1] = v16;
      v21[0] = &unk_1F2247D40;
      v21[1] = MEMORY[0x1E695E118];
      v23[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, PixelFormatType, v17, (a1 + 128)))
      {
        goto LABEL_18;
      }

      v12 = *(a1 + 128);
    }

    v18 = [*(a1 + 72) applyExistingCorrectionToSecondaryAsset:a2 outputPixelBuffer:v12 primaryImageDimensions:a3];
    if (v18)
    {
      v11 = v18;
      OUTLINED_FUNCTION_0_26();
      goto LABEL_17;
    }

    if (!BWScalePixelBuffer(*(a1 + 128), a2, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
    {
      return 0;
    }

LABEL_18:
    OUTLINED_FUNCTION_0_26();
    FigDebugAssert3();
    return 4294967281;
  }

  v7 = v6;
  v8 = FigCaptureConvertRotationAndMirroringToExifOrientation(360 - v6, 0);
  v9 = FigDepthRotateBuffer(a2, *(a1 + 120), v8);
  if (v9 || (v9 = [*(a1 + 72) applyExistingCorrectionToSecondaryAsset:*(a1 + 120) outputPixelBuffer:*(a1 + 128) primaryImageDimensions:a3], v9))
  {
    v11 = v9;
    OUTLINED_FUNCTION_0_26();
LABEL_17:
    FigDebugAssert3();
    return v11;
  }

  v10 = FigCaptureConvertRotationAndMirroringToExifOrientation(v7, 0);
  v11 = FigDepthRotateBuffer(*(a1 + 128), a2, v10);
  if (v11)
  {
    goto LABEL_17;
  }

  return v11;
}

- (uint64_t)_prepareProcessor:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v12 = 0;
  v4 = [objc_msgSend(a1 "configuration")];
  v6 = [(BWIntelligentDistortionCorrectionProcessorController *)a1 _determineWorkingBufferRequirementsWithProcessorConfig:v4 processor:v5 metalBufferSizeOut:a2, &v12];
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = [MEMORY[0x1E6991778] metalDevice];
  if (!v7)
  {
    v9 = 0;
    v10 = 4294954510;
    goto LABEL_6;
  }

  v8 = [v7 newBufferWithLength:v12 options:0];
  if (!v8)
  {
    FigDebugAssert3();
    v6 = FigSignalErrorAtGM();
LABEL_10:
    v10 = v6;
    v9 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [a2 setSharedMetalBuffer:v8 offset:0 size:{objc_msgSend(v8, "allocatedSize")}];
LABEL_6:

  return v10;
}

- (uint64_t)_determineWorkingBufferRequirementsWithProcessorConfig:(unint64_t)a3 processor:(void *)a4 metalBufferSizeOut:(unint64_t *)a5
{
  if (result)
  {
    v9 = 0;
    result = [a4 determineWorkingBufferRequirements:&v9 maximumInputImageWidth:a2 maximumInputImageHeight:HIDWORD(a2) maximumSegmentationMaskWidth:a3 maximumSegmentationMaskHeight:HIDWORD(a3)];
    if (!result)
    {
      if (v9)
      {
        if (v9 >> 23 < 0x19)
        {
          result = 0;
          if (a5)
          {
            *a5 = v9;
          }

          return result;
        }

        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWIntelligentDistortionCorrectionProcessorController.m", 1734, @"LastShownDate:BWIntelligentDistortionCorrectionProcessorController.m:1734", @"LastShownBuild:BWIntelligentDistortionCorrectionProcessorController.m:1734", 0);
        free(v8);
      }

      return 4294954516;
    }
  }

  return result;
}

@end
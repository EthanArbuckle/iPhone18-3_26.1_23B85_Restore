@interface BWMetadataDetectorGatingNode
- (BWMetadataDetectorGatingNode)initWithMRCEnabled:(BOOL)a3 appClipCodeEnabled:(BOOL)a4 textLocalizationEnabled:(BOOL)a5 lowPowerModeEnabled:(BOOL)a6 compressed8BitInputEnabled:(BOOL)a7;
- (BWMetadataDetectorGatingNode)initWithSceneClassifierVersion:(id)a3 mrcEnabled:(BOOL)a4 appClipCodeEnabled:(BOOL)a5 textLocalizationEnabled:(BOOL)a6 lowPowerModeEnabled:(BOOL)a7 compressed8BitInputEnabled:(BOOL)a8;
- (CVPixelBufferRef)_createOutputPixelBufferFromSbuf:(_BYTE *)a3 appliedPrimaryCaptureRect:;
- (uint64_t)_anyOutputShouldApplySceneMotion;
- (uint64_t)_anyOutputShouldRunDetection;
- (uint64_t)_ensureOutputBufferPoolWithDimensions:(uint64_t)a1;
- (uint64_t)_ensureTransferSession;
- (uint64_t)_synchronizeOutputControllersWhenApplicable;
- (uint64_t)_updateInputRequirements:(uint64_t)result;
- (uint64_t)_updateOutputRequirementsIfNecessary;
- (void)_updateNodeOutputPassthroughMode:(void *)result;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)sceneDidChangeQRConfidence:(float)a3 appClipCodeConfidence:(float)a4 documentConfidence:(float)a5 textConfidence:(float)a6;
@end

@implementation BWMetadataDetectorGatingNode

- (uint64_t)_updateOutputRequirementsIfNecessary
{
  if (result)
  {
    v1 = result;
    result = [*(result + 8) passthroughMode];
    if (!result)
    {
      result = [v1[1] videoFormat];
      if (result)
      {
        v2 = result;
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        obj = [v1 outputs];
        result = [obj countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (result)
        {
          v3 = result;
          v4 = *v11;
          do
          {
            v5 = 0;
            do
            {
              if (*v11 != v4)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v10 + 1) + 8 * v5) formatRequirements];
              v8[0] = MEMORY[0x1E69E9820];
              v8[1] = 3221225472;
              v8[2] = __68__BWMetadataDetectorGatingNode__updateOutputRequirementsIfNecessary__block_invoke;
              v8[3] = &unk_1E7999200;
              v8[4] = v2;
              [&unk_1F2248D78 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v8)}];
              [OUTLINED_FUNCTION_28() setSupportedPixelFormats:?];
              [v2 width];
              [OUTLINED_FUNCTION_28() setWidth:?];
              [v2 height];
              [OUTLINED_FUNCTION_28() setHeight:?];
              v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "colorSpaceProperties")}];
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
              [OUTLINED_FUNCTION_28() setSupportedColorSpaceProperties:?];
              ++v5;
            }

            while (v3 != v5);
            result = [obj countByEnumeratingWithState:&v10 objects:v9 count:16];
            v3 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

- (BWMetadataDetectorGatingNode)initWithMRCEnabled:(BOOL)a3 appClipCodeEnabled:(BOOL)a4 textLocalizationEnabled:(BOOL)a5 lowPowerModeEnabled:(BOOL)a6 compressed8BitInputEnabled:(BOOL)a7
{
  if (a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (!a4)
  {
    v7 = a3;
  }

  v8 = (v7 + a5);
  if (!(v7 + a5))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No detectors enabled" userInfo:{0, a6, a7}]);
  }

  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v22.receiver = self;
  v22.super_class = BWMetadataDetectorGatingNode;
  v14 = [(BWFanOutNode *)&v22 initWithFanOutCount:v8 mediaType:1986618469];
  if (v14)
  {
    v14->_sceneStabilityMonitor = objc_alloc_init(BWSceneStabilityMonitor);
    v14->_outputControllers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    v14->_detectorsAvailableGroup = dispatch_group_create();
    if (v13)
    {
      v14->_mrcOutput = [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:0];
      v16 = [[BWMetadataDetectorGatingOutputController alloc] initWithOutput:v14->_mrcOutput name:@"MRC Output Controller" sceneStabilityMonitor:v14->_sceneStabilityMonitor detectorAvailableGroup:v14->_detectorsAvailableGroup];
      v14->_mrcOutputController = v16;
      [(BWMetadataDetectorGatingOutputController *)v16 setLowPowerModeEnabled:v10];
      v13 = 1;
      [(BWMetadataDetectorGatingOutputController *)v14->_mrcOutputController setSceneMotionEstimatesSupported:1];
      [(BWMetadataDetectorGatingOutputController *)v14->_mrcOutputController setShouldEmitFirstBufferAfterSceneChange:1];
      [(BWMetadataDetectorGatingOutputController *)v14->_mrcOutputController setSynchronizeWithOtherControllers:1];
      [(NSMutableArray *)v14->_outputControllers addObject:v14->_mrcOutputController];
      if (!v12)
      {
LABEL_11:
        p_superclass = (BWMultitaskingSessionAnalyticsPayload + 8);
        v18 = 240;
LABEL_14:
        if (v11)
        {
          v14->_textLocalizationOutput = [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:v13];
          v20 = [objc_alloc((p_superclass + 84)) initWithOutput:v14->_textLocalizationOutput name:@"Text Localization Output Controller" sceneStabilityMonitor:v14->_sceneStabilityMonitor detectorAvailableGroup:*(&v14->super.super.super.isa + v18)];
          v14->_textLocalizationOutputController = v20;
          [(BWMetadataDetectorGatingOutputController *)v20 setLowPowerModeEnabled:v10];
          [(NSMutableArray *)v14->_outputControllers addObject:v14->_textLocalizationOutputController];
        }

        [(BWMetadataDetectorGatingNode *)v14 _updateInputRequirements:v9];
        [(BWNodeInput *)v14->super.super._input setPassthroughMode:0];
        [(BWMetadataDetectorGatingNode *)v14 _updateNodeOutputPassthroughMode:?];
        v14->_lowPowerModeEnabled = v10;
        v14->_needsSynchronization = 1;
        return v14;
      }
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

    v14->_appClipCodeOutput = [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:v13];
    p_superclass = BWMultitaskingSessionAnalyticsPayload.superclass;
    v18 = v21;
    v19 = [[BWMetadataDetectorGatingOutputController alloc] initWithOutput:v14->_appClipCodeOutput name:@"AppClipCode Output Controller" sceneStabilityMonitor:v14->_sceneStabilityMonitor detectorAvailableGroup:*(&v14->super.super.super.isa + v21)];
    v14->_appClipCodeOutputController = v19;
    [(BWMetadataDetectorGatingOutputController *)v19 setLowPowerModeEnabled:v10];
    [(BWMetadataDetectorGatingOutputController *)v14->_appClipCodeOutputController setSynchronizeWithOtherControllers:1];
    [(NSMutableArray *)v14->_outputControllers addObject:v14->_appClipCodeOutputController];
    ++v13;
    goto LABEL_14;
  }

  return v14;
}

- (BWMetadataDetectorGatingNode)initWithSceneClassifierVersion:(id)a3 mrcEnabled:(BOOL)a4 appClipCodeEnabled:(BOOL)a5 textLocalizationEnabled:(BOOL)a6 lowPowerModeEnabled:(BOOL)a7 compressed8BitInputEnabled:(BOOL)a8
{
  v9 = [(BWMetadataDetectorGatingNode *)self initWithMRCEnabled:a4 appClipCodeEnabled:a5 textLocalizationEnabled:a6 lowPowerModeEnabled:a7 compressed8BitInputEnabled:a8];
  v10 = v9;
  if (v9)
  {
    [BWMetadataDetectorGatingNode initWithSceneClassifierVersion:v9 mrcEnabled:a8 appClipCodeEnabled:? textLocalizationEnabled:? lowPowerModeEnabled:? compressed8BitInputEnabled:?];
  }

  return v10;
}

- (void)dealloc
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  v4.receiver = self;
  v4.super_class = BWMetadataDetectorGatingNode;
  [(BWFanOutNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v7.receiver = self;
  v7.super_class = BWMetadataDetectorGatingNode;
  [(BWFanOutNode *)&v7 didSelectFormat:a3 forInput:a4];
  if (self)
  {
    v6 = &unk_1F2248D78;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "pixelFormat"))}])
  {
    [BWMetadataDetectorGatingNode didSelectFormat:? forInput:?];
  }

  [(BWMetadataDetectorGatingNode *)self _updateOutputRequirementsIfNecessary];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v17.receiver = self;
  v17.super_class = BWMetadataDetectorGatingNode;
  [(BWNode *)&v17 prepareForCurrentConfigurationToBecomeLive];
  v3 = [(BWVideoFormat *)[(BWNodeInput *)self->super.super._input videoFormat] pixelFormat];
  if (self)
  {
    v4 = &unk_1F2248D78;
  }

  else
  {
    v4 = 0;
  }

  if (![v4 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}] || -[BWVideoFormat cacheMode](-[BWNodeInput videoFormat](self->super.super._input, "videoFormat"), "cacheMode") == 1792)
  {
    [(BWMetadataDetectorGatingNode *)self _ensureTransferSession];
  }

  if (self->_mrcOutputController)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if (self->_lowPowerModeEnabled)
    {
      v6 = 5;
      do
      {
        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 10.0)}];
        --v6;
      }

      while (v6);
      v7 = 5;
      do
      {
        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 7.5)}];
        --v7;
      }

      while (v7);
      v8 = 5;
    }

    else
    {
      v9 = 15;
      do
      {
        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 15.0)}];
        --v9;
      }

      while (v9);
      LODWORD(v8) = 15;
      do
      {
        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 7.5)}];
        v8 = (v8 - 1);
      }

      while (v8);
    }

    [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 5.0)}];
    [(BWMetadataDetectorGatingOutputController *)self->_mrcOutputController enableDetectionFrameRateControllingWithRamp:v5 startIndex:v8];
  }

  if (self->_appClipCodeOutputController)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = 5;
    if (+[BWInferenceEngine isNeuralEngineSupported])
    {
      do
      {
        [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 10.0)}];
        --v11;
      }

      while (v11);
      v12 = 5;
      do
      {
        [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 7.5)}];
        --v12;
      }

      while (v12);
      v13 = 5.0;
    }

    else
    {
      do
      {
        [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 10.0)}];
        --v11;
      }

      while (v11);
      v14 = 5;
      do
      {
        [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 2.0)}];
        --v14;
      }

      while (v14);
      v13 = 1.0;
    }

    [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v13)}];
    [(BWMetadataDetectorGatingOutputController *)self->_appClipCodeOutputController enableDetectionFrameRateControllingWithRamp:v10 startIndex:5];
  }

  textLocalizationOutputController = self->_textLocalizationOutputController;
  if (textLocalizationOutputController)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:5.5];
    -[BWMetadataDetectorGatingOutputController enableDetectionFrameRateControllingWithRamp:startIndex:](textLocalizationOutputController, "enableDetectionFrameRateControllingWithRamp:startIndex:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1], 0);
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
    self->_transferSession = 0;
  }

  self->_outputBufferPool = 0;
  v8.receiver = self;
  v8.super_class = BWMetadataDetectorGatingNode;
  [(BWFanOutNode *)&v8 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)sceneDidChangeQRConfidence:(float)a3 appClipCodeConfidence:(float)a4 documentConfidence:(float)a5 textConfidence:(float)a6
{
  if ([(BWMetadataDetectorGatingOutputController *)self->_mrcOutputController usesSceneClassifierToGateDetection]|| [(BWMetadataDetectorGatingOutputController *)self->_appClipCodeOutputController usesSceneClassifierToGateDetection]|| [(BWMetadataDetectorGatingOutputController *)self->_textLocalizationOutputController usesSceneClassifierToGateDetection])
  {
    os_unfair_lock_lock(&self->_sceneLock);
    BWSmartCameraSceneUpdateWithConfidence(&self->_qrCodeScene, a3);
    BWSmartCameraSceneUpdateWithConfidence(&self->_appClipCodeScene, a4);
    BWSmartCameraSceneUpdateWithConfidence(&self->_textScene, a6);
    confident = self->_qrCodeScene.confident;
    v11 = self->_appClipCodeScene.confident;
    v12 = self->_textScene.confident;
    os_unfair_lock_unlock(&self->_sceneLock);
    [(BWMetadataDetectorGatingOutputController *)self->_mrcOutputController setSmartCameraSceneConfident:confident];
    [(BWMetadataDetectorGatingOutputController *)self->_appClipCodeOutputController setSmartCameraSceneConfident:v11];
    textLocalizationOutputController = self->_textLocalizationOutputController;

    [(BWMetadataDetectorGatingOutputController *)textLocalizationOutputController setSmartCameraSceneConfident:v12];
  }
}

- (uint64_t)_updateInputRequirements:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [*(result + 8) formatRequirements];
    v5 = [MEMORY[0x1E695DF70] array];
    [v5 addObjectsFromArray:&unk_1F2248D78];
    if ([v3[25] usesSceneClassifierToGateDetection] & 1) != 0 || (objc_msgSend(v3[26], "usesSceneClassifierToGateDetection"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v3[27] usesSceneClassifierToGateDetection];
    }

    [v5 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(1, 0, 1, 1, 0, v6, 1, 1)}];
    [v5 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, 3, 1, 1, 0, v6 | a2, 1, 1)}];
    [v5 addObjectsFromArray:&unk_1F2248D90];

    return [v4 setSupportedPixelFormats:v5];
  }

  return result;
}

- (void)_updateNodeOutputPassthroughMode:(void *)result
{
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [result outputs];
    result = [v3 countByEnumeratingWithState:&v8 objects:v7 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v6) setPassthroughMode:a2];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v8 objects:v7 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_ensureTransferSession
{
  if (!a1 || *(a1 + 256))
  {
    return 0;
  }

  v1 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (a1 + 256));
  if (v1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3();
  }

  return v1;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v9 = self;
  if (self->_needsSynchronization)
  {
    self = [(BWMetadataDetectorGatingNode *)self _synchronizeOutputControllersWhenApplicable];
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  outputControllers = v9->_outputControllers;
  v11 = OUTLINED_FUNCTION_10_32(self, a2, a3, a4, v4, v5, v6, v7, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v115, v117, v119, v121, v123, v125, v127.value, *&v127.timescale, v127.epoch, v128, v129.value, *&v129.timescale, v129.epoch, v130, v131);
  if (v11)
  {
    v12 = v11;
    v13 = *v133;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v133 != v13)
        {
          objc_enumerationMutation(outputControllers);
        }

        v15 = [*(*(&v132 + 1) + 8 * i) prepareToEmitBuffer:a3];
      }

      v12 = OUTLINED_FUNCTION_10_32(v15, v16, v17, v18, v19, v20, v21, v22, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v116, v118, v120, v122, v124, v126, v127.value, *&v127.timescale, v127.epoch, v128, v129.value, *&v129.timescale, v129.epoch, v130, v131);
    }

    while (v12);
  }

  HIBYTE(v130) = 0;
  v23 = [(BWMetadataDetectorGatingNode *)v9 _createOutputPixelBufferFromSbuf:a3 appliedPrimaryCaptureRect:&v130 + 7];
  if (v23)
  {
    v24 = v23;
    memset(&v129, 0, sizeof(v129));
    BWGetOriginalPresentationTimeStampFromBuffer(a3, &v129);
    v25 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    sceneStabilityMonitor = v9->_sceneStabilityMonitor;
    ShouldApplyScene = [(BWMetadataDetectorGatingNode *)v9 _anyOutputShouldApplySceneMotion:v27];
    v127 = v129;
    v35 = [(BWSceneStabilityMonitor *)sceneStabilityMonitor calculateStabilityWithPixelBuffer:v24 pts:&v127 metadataDictionary:v25 forceSceneMotion:ShouldApplyScene];
    v36 = v9->_outputControllers;
    v44 = OUTLINED_FUNCTION_4_2(v35, v37, v38, v39, v40, v41, v42, v43, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, 0);
    if (v44)
    {
      v45 = v44;
      v46 = MEMORY[0];
      v47 = HIBYTE(v130);
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (MEMORY[0] != v46)
          {
            objc_enumerationMutation(v36);
          }

          v49 = *(8 * j);
          v50 = [(BWMetadataDetectorGatingOutputController *)v49 shouldEmitBuffer];
          if (v50)
          {
            if (v49 == v9->_textLocalizationOutputController)
            {
              ImageBuffer = CMSampleBufferGetImageBuffer(a3);
              v59 = v49;
              v61 = a3;
              v58 = 0;
            }

            else
            {
              v58 = v47 & 1;
              v59 = v49;
              ImageBuffer = v24;
              v61 = a3;
            }

            v50 = [(BWMetadataDetectorGatingOutputController *)v59 emitPixelBuffer:ImageBuffer inputSampleBuffer:v61 appliedPrimaryCaptureRect:v58];
          }
        }

        v45 = OUTLINED_FUNCTION_4_2(v50, v51, v52, v53, v54, v55, v56, v57, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112);
      }

      while (v45);
    }

    CFRelease(v24);
  }
}

- (uint64_t)_synchronizeOutputControllersWhenApplicable
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF70] array];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v4 = *(v1 + 224);
  v12 = OUTLINED_FUNCTION_9_39(v3, v5, v6, v7, v8, v9, v10, v11, v58, v61, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v115, v118, v121, v124, v127, v130, v133, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159);
  if (!v12)
  {
    goto LABEL_23;
  }

  v20 = v12;
  v21 = 0;
  v22 = *v161;
  do
  {
    v23 = 0;
    do
    {
      if (*v161 != v22)
      {
        objc_enumerationMutation(v4);
      }

      v24 = *(*(&v160 + 1) + 8 * v23);
      v25 = [v24 synchronizeWithOtherControllers];
      if (v25)
      {
        if ([v24 forceSynchronizedControllersToRunDetectionImmediately])
        {
          v21 = 1;
          v25 = v3;
LABEL_10:
          v25 = [v25 addObject:v24];
          goto LABEL_13;
        }

        v25 = [v24 usesSceneClassifierToGateDetection];
        if ((v25 & 1) == 0)
        {
          v33 = [v24 lastDetectedCodesCount];
          v25 = v2;
          if (!v33)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_13:
      ++v23;
    }

    while (v20 != v23);
    v12 = OUTLINED_FUNCTION_9_39(v25, v26, v27, v28, v29, v30, v31, v32, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v116, v119, v122, v125, v128, v131, v134, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159);
    v20 = v12;
  }

  while (v12);
  if (v21)
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v12 = OUTLINED_FUNCTION_8_39(0, v13, v14, v15, v16, v17, v18, v19, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v116, v119, v122, v125, v128, v131, v134, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, 0);
    if (v12)
    {
      v34 = v12;
      v35 = *v156;
      v59 = *MEMORY[0x1E6960C70];
      v36 = *(MEMORY[0x1E6960C70] + 16);
      do
      {
        v37 = 0;
        do
        {
          if (*v156 != v35)
          {
            objc_enumerationMutation(v2);
          }

          v38 = *(*(&v155 + 1) + 8 * v37);
          v136 = v59;
          v137 = v36;
          v39 = [v38 setLastDetectionPTS:{&v136, v59}];
          ++v37;
        }

        while (v34 != v37);
        v12 = OUTLINED_FUNCTION_8_39(v39, v40, v41, v42, v43, v44, v45, v46, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v113, v117, v120, v123, v126, v129, v132, v135, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
        v34 = v12;
      }

      while (v12);
    }
  }

LABEL_23:
  result = OUTLINED_FUNCTION_11_2(v12, v13, v14, v15, v16, v17, v18, v19, v59, *(&v59 + 1), v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, 0);
  if (result)
  {
    v47 = result;
    v48 = MEMORY[0];
    do
    {
      v49 = 0;
      do
      {
        if (MEMORY[0] != v48)
        {
          objc_enumerationMutation(v3);
        }

        v50 = [*(8 * v49++) setForceSynchronizedControllersToRunDetectionImmediately:0];
      }

      while (v47 != v49);
      result = OUTLINED_FUNCTION_11_2(v50, v51, v52, v53, v54, v55, v56, v57, v60, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v114);
      v47 = result;
    }

    while (result);
  }

  return result;
}

- (CVPixelBufferRef)_createOutputPixelBufferFromSbuf:(_BYTE *)a3 appliedPrimaryCaptureRect:
{
  if (!a1)
  {
    return 0;
  }

  *a3 = 0;
  v6 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v6;
  v7 = CMGetAttachment(target, *off_1E798A430, 0);
  CGRectMakeWithDictionaryRepresentation(v7, &rect);
  if ([*(a1 + 208) shouldRunDetection] && !CGRectIsNull(rect) && -[BWMetadataDetectorGatingNode _ensureTransferSession](a1))
  {
    goto LABEL_26;
  }

  if (([(BWMetadataDetectorGatingNode *)a1 _anyOutputShouldRunDetection:v8]& 1) == 0 && ![(BWMetadataDetectorGatingNode *)a1 _anyOutputShouldApplySceneMotion:v15]|| !*(a1 + 256))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(target);
    return CVPixelBufferRetain(ImageBuffer);
  }

  v22 = CMSampleBufferGetImageBuffer(target);
  Width = CVPixelBufferGetWidth(v22);
  Height = CVPixelBufferGetHeight(v22);
  if (!CGRectIsNull(rect))
  {
    v25 = Width;
    v26 = Height;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    rect.origin.x = v27;
    rect.origin.y = v28;
    v31 = round(v30 * 0.5);
    v32 = v31 + v31;
    if (v32 < Width)
    {
      v25 = v32;
    }

    v33 = round(v29 * 0.5);
    v34 = v33 + v33;
    if (v34 < v26)
    {
      v26 = v34;
    }

    rect.size.width = v25;
    rect.size.height = v26;
    v35 = v25;
    v36 = v26;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v27);
    v38 = VTSessionSetProperty(*(a1 + 256), *MEMORY[0x1E6983E40], DictionaryRepresentation);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    if (v38)
    {
      goto LABEL_26;
    }

    Width = v25;
    Height = v26;
  }

  if ([(BWMetadataDetectorGatingNode *)a1 _ensureOutputBufferPoolWithDimensions:?])
  {
LABEL_26:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    v39 = 0;
    goto LABEL_27;
  }

  v39 = [*(a1 + 264) newPixelBuffer];
  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    return v39;
  }

  if (VTPixelTransferSessionTransferImage(*(a1 + 256), v22, v39))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
LABEL_27:
    CVPixelBufferRelease(v39);
    return 0;
  }

  *a3 = 1;
  return v39;
}

- (uint64_t)_anyOutputShouldApplySceneMotion
{
  if (result)
  {
    v8 = *(result + 224);
    result = OUTLINED_FUNCTION_57(result, a2, a3, a4, a5, a6, a7, a8, v20);
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0];
      while (2)
      {
        v11 = 0;
        do
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(8 * v11) shouldApplySceneMotion];
          if (v12)
          {
            return 1;
          }

          ++v11;
        }

        while (v9 != v11);
        result = OUTLINED_FUNCTION_57(v12, v13, v14, v15, v16, v17, v18, v19, v21);
        v9 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_ensureOutputBufferPoolWithDimensions:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = HIDWORD(a2);
  if (*(a1 + 272) == a2)
  {
    return 0;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [a1 name];
  v8 = objc_alloc_init(BWVideoFormatRequirements);
  if (FigCapturePixelFormatIsFullRange([objc_msgSend(*(a1 + 8) "videoFormat")]))
  {
    v9 = 875704422;
  }

  else
  {
    v9 = 875704438;
  }

  [(BWVideoFormatRequirements *)v8 setWidth:a2];
  [(BWVideoFormatRequirements *)v8 setHeight:a2 >> 32];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v8, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1]);
  v16 = v8;
  v10 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]);
  if (v10)
  {
    v11 = v10;
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = @"MRC PixelTransfer";
    }

    if (*(a1 + 232))
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v11, v13, v12, [*(a1 + 16) memoryPool]);
    v5 = 0;
    *(a1 + 264) = v14;
    *(a1 + 272) = a2;
    *(a1 + 276) = v4;
  }

  else
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
  }

  objc_autoreleasePoolPop(v6);
  return v5;
}

- (uint64_t)_anyOutputShouldRunDetection
{
  if (result)
  {
    v8 = *(result + 224);
    result = OUTLINED_FUNCTION_57(result, a2, a3, a4, a5, a6, a7, a8, v20);
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0];
      while (2)
      {
        v11 = 0;
        do
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(8 * v11) shouldRunDetection];
          if (v12)
          {
            return 1;
          }

          ++v11;
        }

        while (v9 != v11);
        result = OUTLINED_FUNCTION_57(v12, v13, v14, v15, v16, v17, v18, v19, v21);
        v9 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)initWithSceneClassifierVersion:(uint64_t)a1 mrcEnabled:(char)a2 appClipCodeEnabled:textLocalizationEnabled:lowPowerModeEnabled:compressed8BitInputEnabled:.cold.1(uint64_t a1, char a2)
{
  *(a1 + 280) = 0;
  *(a1 + 248) = 0;
  v4 = *(a1 + 200);
  if (v4)
  {
    [v4 setUsesSceneClassifierToGateDetection:1];
    [*(a1 + 200) setLogger:{-[FigCaptureLogSmartCameraGating initWithGateIdentifier:]([FigCaptureLogSmartCameraGating alloc], "initWithGateIdentifier:", 0)}];
    OUTLINED_FUNCTION_3_67("QR", 288, 0.06, 0.05);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    [v5 setUsesSceneClassifierToGateDetection:1];
    [*(a1 + 208) setLogger:{-[FigCaptureLogSmartCameraGating initWithGateIdentifier:]([FigCaptureLogSmartCameraGating alloc], "initWithGateIdentifier:", 1)}];
    OUTLINED_FUNCTION_3_67("AppClipCode", 328, 0.108, 0.05);
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    [v6 setUsesSceneClassifierToGateDetection:1];
    [*(a1 + 216) setLogger:{-[FigCaptureLogSmartCameraGating initWithGateIdentifier:]([FigCaptureLogSmartCameraGating alloc], "initWithGateIdentifier:", 2)}];
    OUTLINED_FUNCTION_3_67("TextScene", 368, 0.091, 0.05);
  }

  return [(BWMetadataDetectorGatingNode *)a1 _updateInputRequirements:?];
}

@end
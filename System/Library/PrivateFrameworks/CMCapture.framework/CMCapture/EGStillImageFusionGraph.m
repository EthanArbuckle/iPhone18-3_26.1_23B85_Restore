@interface EGStillImageFusionGraph
+ (void)initialize;
- (EGStillImageFusionGraph)initWithStillImageSettings:(id)a3 nodeConfiguration:(id)a4 resourceCoordinator:(id)a5 delegate:(id)a6;
- (uint64_t)_build;
- (uint64_t)_processorControllerOutputForType:(uint64_t)result;
- (void)dealloc;
@end

@implementation EGStillImageFusionGraph

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (EGStillImageFusionGraph)initWithStillImageSettings:(id)a3 nodeConfiguration:(id)a4 resourceCoordinator:(id)a5 delegate:(id)a6
{
  v11 = MEMORY[0x1E696AEC0];
  if ([a4 deferredPhotoProcessorEnabled])
  {
    v12 = @"Deferred";
  }

  else
  {
    v12 = @"Synchronous";
  }

  v13 = [v11 stringWithFormat:@"%@_%@_captureID%lld_%@", v12, BWPhotoEncoderStringFromEncodingScheme(objc_msgSend(objc_msgSend(a3, "captureSettings"), "captureType")), objc_msgSend(objc_msgSend(a3, "requestedSettings"), "settingsID"), objc_msgSend(objc_msgSend(a3, "captureSettings"), "masterPortType")];
  v17.receiver = self;
  v17.super_class = EGStillImageFusionGraph;
  v14 = [(EGStillImageGraph *)&v17 initWithName:v13 stillImageSettings:a3 delegate:a6];
  if (v14)
  {
    v14->_stillImageSettings = a3;
    v14->_nodeConfiguration = a4;
    v14->_resourceCoordinator = a5;
    v14->_delegate = a6;
    v14->_processorControllerSourceNodesByType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = objc_autoreleasePoolPush();
    if ([(EGStillImageFusionGraph *)v14 _build])
    {

      v14 = 0;
    }

    objc_autoreleasePoolPop(v16);
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageFusionGraph;
  [(EGStillImageGraph *)&v3 dealloc];
}

- (uint64_t)_build
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [objc_msgSend(*(result + 104) "captureSettings")];
  v3 = [OUTLINED_FUNCTION_13_32() captureStreamSettingsForPortType:v2];
  v4 = [OUTLINED_FUNCTION_5_68() deferredPhotoProcessorEnabled];
  if ([OUTLINED_FUNCTION_5_68() deferredPhotoProcessorEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = [OUTLINED_FUNCTION_5_68() deferredCaptureSupportEnabled] ^ 1;
  }

  if (((v4 | v5) & 1) == 0)
  {
    return 4294954516;
  }

  v6 = [OUTLINED_FUNCTION_13_32() captureType];
  v7 = [OUTLINED_FUNCTION_13_32() captureType];
  v8 = v6 == 12 || v7 == 13;
  if (!v8)
  {
    return 4294954516;
  }

  LODWORD(v245) = v7;
  if (v5)
  {
    v9 = [OUTLINED_FUNCTION_0_91() areInferencesRequiredByProcessorControllersForSettings:?];
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v262) = v5;
  LODWORD(v250) = v4;
  if (v6 == 12 && [OUTLINED_FUNCTION_0_91() isInferenceInputImageRequiredForSettings:? portType:?])
  {
    v10 = [OUTLINED_FUNCTION_13_32() downgradedDeepFusionEnhancedResolutionCapture];
  }

  else
  {
    v10 = 0;
  }

  v259 = [OUTLINED_FUNCTION_13_32() captureFlags];
  HIDWORD(v258) = [OUTLINED_FUNCTION_0_91() isSmartStyleRenderingCapture:?];
  v11 = OUTLINED_FUNCTION_5_68();
  v13 = [(BWPhotonicEngineNodeConfiguration *)v11 deepZoomVersion]> 0 && v6 == 12;
  HIDWORD(v261) = v13;
  v14 = [OUTLINED_FUNCTION_5_68() isIDCCaptureForPortType:v2 settings:*(v1 + 104)];
  v15 = [OUTLINED_FUNCTION_5_68() isGDCCaptureForPortType:v2 settings:*(v1 + 104)];
  HIDWORD(v245) = [OUTLINED_FUNCTION_5_68() scalerProcessorControllerConfiguration] && objc_msgSend(OUTLINED_FUNCTION_0_91(), "isScalerRequiredForSettings:portType:preNoiseReductionScalerOut:");
  HIDWORD(v238) = v15;
  LODWORD(v240) = v14;
  v16 = v14 | v15;
  v17 = (v259 >> 33) & 1;
  if (v6 != 12)
  {
    LODWORD(v17) = 0;
  }

  HIDWORD(v244) = v17;
  HIDWORD(v257) = (v16 & HIDWORD(v261) & 1) != 0 && (v259 & 0x4200000000) == 0x200000000;
  v18 = (v262 & ((v259 & 0x800) != 0)) == 1 && [OUTLINED_FUNCTION_5_68() depthDataType] == 8 && (v259 & 0x200) == 0;
  v265 = v2;
  LODWORD(v258) = v6;
  if (v262)
  {
    LODWORD(v242) = [OUTLINED_FUNCTION_0_91() isReferenceOrClientBracketFrameEmissionNeededForSettings:? portType:?];
  }

  else
  {
    LODWORD(v242) = 0;
  }

  HIDWORD(v253) = v9 | v10;
  LODWORD(v248) = [v3 expectedFrameCount];
  if ((v259 & 0x100000) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (dword_1EB58DE00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = v16 ^ 1u;
  v247 = [MEMORY[0x1E695DF70] array];
  v264 = [MEMORY[0x1E695DF70] array];
  v255 = [MEMORY[0x1E695DF70] array];
  v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  if (v250)
  {
    v103 = v16 ^ 1u;
    v104 = [[EGStillImageSampleBufferEnqueuerNode alloc] initWithName:@"SampleBufferSource" primaryPortType:v265 numPrimarySbufOutputs:1 numSecondarySbufOutputs:0 stillImageSettings:*(v1 + 104)];
    [OUTLINED_FUNCTION_2_89() installNode:?];
    [OUTLINED_FUNCTION_12_0() setSampleBufferEntryPoint:?];
    v105 = [EGStillImageDeferredProcessingNode alloc];
    OUTLINED_FUNCTION_11_40();
    v107 = [v106 initWithName:@"DeferredProcessing" stillImageSettings:? resourceCoordinator:? numSbufOutputs:? portType:? delegate:?];
    [*(v1 + 120) deferredProcessorControllerQueue];
    [OUTLINED_FUNCTION_28() handleAllInputAsyncOnQueue:?];
    [v1 installNode:v107];
    v108 = [objc_msgSend(v22 "primarySbufOutputs")];
    [v107 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v108 toInput:?];
    v109 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v107 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v109 toInput:?];
    v33 = [v107 referenceFrameOutput];
    v34 = 0;
    if ((v253 & 0x100000000) == 0)
    {
      v34 = [v107 inferencesDeliveredOutput];
    }

    v35 = [v107 sbufOutputs];
    v22 = v103;
    v37 = v250;
    goto LABEL_64;
  }

  if (!v262)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_66;
  }

  HIDWORD(v240) = v16 ^ 1;
  v25 = v248;
  v26 = [[EGStillImageSampleBufferEnqueuerNode alloc] initWithName:@"SampleBufferSource" primaryPortType:v265 numPrimarySbufOutputs:v248 numSecondarySbufOutputs:v20 stillImageSettings:*(v1 + 104)];
  [v1 installNode:v26];
  [v1 setSampleBufferEntryPoint:v26];
  v27 = [[EGStillImageReferenceFrameSelectionNode alloc] initWithName:@"primaryPortReferenceFrameSelection" numSampleBufferInputs:v248];
  [v1 installNode:v27];
  if (v248 >= 1)
  {
    v25 = 0;
    do
    {
      v28 = [(NSArray *)[(EGStillImageSampleBufferEnqueuerNode *)v26 primarySbufOutputs] objectAtIndexedSubscript:v25];
      [(NSArray *)[(EGStillImageReferenceFrameSelectionNode *)v27 sampleBufferInputs] objectAtIndexedSubscript:v25];
      [OUTLINED_FUNCTION_1_15() connectOutput:v28 toInput:?];
      ++v25;
    }

    while (v248 != v25);
  }

  [v255 addObject:{-[EGStillImageReferenceFrameSelectionNode fusionModeInput](v27, "fusionModeInput")}];
  if (v18)
  {
    v29 = [[EGStillImageReferenceFrameSelectionNode alloc] initWithName:@"secondaryPortReferenceFrameSelection" numSampleBufferInputs:v19];
    [OUTLINED_FUNCTION_2_89() installNode:?];
    for (i = 0; i != v19; ++i)
    {
      v31 = [(NSArray *)[(EGStillImageSampleBufferEnqueuerNode *)v26 secondarySbufOutputs] objectAtIndexedSubscript:i];
      [objc_msgSend(v25 "sampleBufferInputs")];
      [OUTLINED_FUNCTION_1_15() connectOutput:v31 toInput:?];
    }

    [v255 addObject:{objc_msgSend(v25, "fusionModeInput")}];
    v32 = [v25 referenceFrameOutput];
  }

  else
  {
    v32 = 0;
  }

  v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  v36 = [(EGStillImageReferenceFrameSelectionNode *)v27 referenceFrameOutput];
  v35 = [(EGStillImageSampleBufferEnqueuerNode *)v26 primarySbufOutputs];
  v37 = 0;
  if (v18)
  {
    v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v38 = [[EGStillImageDisparitySubgraph alloc] initWithName:@"Disparity" stillImageSettings:*(v1 + 104) nodeConfiguration:*(v1 + 112) resourceCoordinator:*(v1 + 120) delegate:*(v1 + 128)];
    [OUTLINED_FUNCTION_2_89() installSubgraph:?];
    [v25 primaryReferenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v36 toInput:?];
    [v25 secondaryReferenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v32 toInput:?];
    [v264 addObjectsFromArray:{objc_msgSend(v25, "softISPProcessingCompleteSubgraphOutputs")}];
    v39 = [v25 captureCompleteSubgraphOutputs];
    [OUTLINED_FUNCTION_18_24(v39 v40];
  }

  else
  {
    v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (v242)
    {
      v47 = [[EGStillImagePrepareUnprocessedReferenceFrameNode alloc] initWithName:@"PrepareUnprocessedReferenceFrame"];
      [OUTLINED_FUNCTION_2_89() installNode:?];
      [v25 sbufInput];
      v33 = v36;
      [OUTLINED_FUNCTION_1_15() connectOutput:v36 toInput:?];
      v48 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"ReferenceFrameEmitter" description:@"Reference Frame emitter"];
      [v1 installNode:v48];
      v49 = [v25 sbufOutput];
      [(EGStillImageSampleBufferEmitterNode *)v48 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v49 toInput:?];
      v50 = [(EGStillImageSampleBufferEmitterNode *)v48 captureCompleteOutput];
      [OUTLINED_FUNCTION_18_24(v50 v51];
      v34 = 0;
      v22 = HIDWORD(v240);
      goto LABEL_64;
    }
  }

  v34 = 0;
  v22 = HIDWORD(v240);
  v33 = v36;
LABEL_64:
  if ((HIDWORD(v258) & v22 & v37) == 1)
  {
    v150 = [EGStillImagePiecemealEncodingNode alloc];
    OUTLINED_FUNCTION_11_40();
    OUTLINED_FUNCTION_14_33();
    v152 = v34;
    v153 = v22;
    v154 = [v151 initWithName:? stillImageSettings:? resourceCoordinator:? portType:? mode:? delegate:?];
    [*(v1 + v24[254]) workerQueue];
    [OUTLINED_FUNCTION_8() handleAllInputAsyncOnQueue:?];
    [OUTLINED_FUNCTION_12_0() installNode:?];
    v155 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v154 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v155 toInput:?];
    [v154 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v33 toInput:?];
    v156 = v154;
    v22 = v153;
    v34 = v152;
    v157 = [v156 encodingCompleteOutput];
    [OUTLINED_FUNCTION_18_24(v157 v158];
  }

LABEL_66:
  v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
  if (v258 == 12)
  {
    v242 = v33;
    v250 = v34;
    HIDWORD(v240) = v22;
    v110 = [MEMORY[0x1E695DF70] array];
    if (v248 >= 1)
    {
      v111 = 0;
      v262 = v248;
      do
      {
        v112 = [EGStillImageSoftISPNode alloc];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP_%d", v111];
        OUTLINED_FUNCTION_15_31();
        OUTLINED_FUNCTION_9_47();
        OUTLINED_FUNCTION_14_33();
        v114 = [v113 initWithName:? stillImageSettings:? nodeConfiguration:? portType:? processingMode:? addGatingInput:? delegate:?];
        [*(v1 + v24[254]) workerQueue];
        [OUTLINED_FUNCTION_8() handleAllInputAsyncOnQueue:?];
        [OUTLINED_FUNCTION_12_0() installNode:?];
        v115 = [(NSArray *)v35 objectAtIndexedSubscript:v111];
        [v114 sbufInput];
        [OUTLINED_FUNCTION_1_15() connectOutput:v115 toInput:?];
        v116 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
        [v114 processorInput];
        v117 = OUTLINED_FUNCTION_1_15();
        v118 = v116;
        v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        [v117 connectOutput:v118 toInput:?];
        [v114 sbufOutput];
        [OUTLINED_FUNCTION_28() addObject:?];
        [v264 addObject:{objc_msgSend(v114, "processingCompleteOutput")}];
        ++v111;
      }

      while (v248 != v111);
    }

    v119 = [EGStillImageDeepFusionNode alloc];
    OUTLINED_FUNCTION_15_31();
    v230 = v265;
    v232 = *(v1 + 128);
    BYTE1(v228) = BYTE4(v253) & 1;
    LOBYTE(v228) = BYTE4(v244);
    v121 = [v120 initWithName:@"DeepFusion" stillImageSettings:? nodeConfiguration:? resourceCoordinator:? numSbufInputs:? processSmartStyleRenderingInput:? processQuadraForEnhancedResolution:? processInferenceInputImage:? portType:? delegate:?];
    [v121 setDeepZoomEnabled:HIDWORD(v261)];
    [v1 installNode:v121];
    v122 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v121 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v122 toInput:?];
    [v121 referenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v33 toInput:?];
    v60 = [v121 inferencesDeliveredInput];
    if ((v253 & 0x100000000) != 0)
    {
      v62 = [v121 inferenceInputImageOutput];
    }

    else
    {
      v62 = 0;
    }

    OUTLINED_FUNCTION_12_38();
    [OUTLINED_FUNCTION_15() handleAllInputAsyncOnQueue:?];
    v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (v248 >= 1)
    {
      v122 = 0;
      do
      {
        v165 = [v110 objectAtIndexedSubscript:v122];
        [objc_msgSend(v121 "sbufInputs")];
        [OUTLINED_FUNCTION_1_15() connectOutput:v165 toInput:?];
        [v121 specifyInput:objc_msgSend(objc_msgSend(v121 handledSyncAndAssertQueue:{"sbufInputs"), "objectAtIndexedSubscript:", v122++), OUTLINED_FUNCTION_12_38()}];
      }

      while (v248 != v122);
    }

    v63 = [v121 sbufOutput];
    if ((v244 & 0x100000000) != 0)
    {
      v215 = [EGStillImageInferenceEngineNode alloc];
      OUTLINED_FUNCTION_9_47();
      v122 = [v216 initWithName:@"InferenceProcessingForQuadraForEnhancedRes" stillImageSettings:? portType:? nodeConfiguration:? resourceCoordinator:? inferenceInputBufferType:? delegate:?];
      [*(v1 + 120) inferenceControllerQueue];
      [OUTLINED_FUNCTION_8() handleAllInputAsyncOnQueue:?];
      [OUTLINED_FUNCTION_12_0() installNode:?];
      v217 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
      [v122 processorInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v217 toInput:?];
      v218 = [v121 quadraForEnhancedResolutionInferenceInputImageOutput];
      [v122 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v218 toInput:?];
    }

    if ([v121 sbufForEarlyEmissionOutput])
    {
      v166 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"DeepFusionEarlyEmitter" description:@"Deep Fusion Early Output"];
      [OUTLINED_FUNCTION_2_89() installNode:?];
      v167 = [v121 sbufForEarlyEmissionOutput];
      [v122 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v167 toInput:?];
      v168 = [v122 captureCompleteOutput];
      [OUTLINED_FUNCTION_18_24(v168 v169];
    }

    v61 = 0;
  }

  else
  {
    v59 = v245;
    if (v245 != 13)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      goto LABEL_69;
    }

    HIDWORD(v240) = v22;
    v252 = v34;
    if (v262)
    {
      v149 = v248;
      LODWORD(v238) = (v248 > 3) & (v259 >> 20);
    }

    else
    {
      LODWORD(v238) = 0;
      v149 = v248;
    }

    v180 = [[EGStillImageLearnedFusionRoutingNode alloc] initWithName:@"LearnedFusionRouting" numSampleBufferInputs:v149];
    [v1 installNode:v180];
    if (v149 >= 1)
    {
      v181 = 0;
      do
      {
        v182 = [(NSArray *)v35 objectAtIndexedSubscript:v181];
        [(NSArray *)[(EGStillImageLearnedFusionRoutingNode *)v180 sampleBufferInputs] objectAtIndexedSubscript:v181];
        [OUTLINED_FUNCTION_1_15() connectOutput:v182 toInput:?];
        ++v181;
      }

      while (v149 != v181);
    }

    v183 = [MEMORY[0x1E695DF70] array];
    [(EGStillImageLearnedFusionRoutingNode *)v180 evZeroOutput];
    [OUTLINED_FUNCTION_15() addObject:?];
    [(EGStillImageLearnedFusionRoutingNode *)v180 longOutput];
    [OUTLINED_FUNCTION_15() addObject:?];
    if ((v259 & 0x100000) != 0)
    {
      [(EGStillImageLearnedFusionRoutingNode *)v180 evMinusOutput];
    }

    else
    {
      [(EGStillImageLearnedFusionRoutingNode *)v180 secondEvZeroOutput];
    }

    [OUTLINED_FUNCTION_15() addObject:?];
    v184 = [MEMORY[0x1E695DF70] array];
    v192 = OUTLINED_FUNCTION_21_24(v184, v185, v186, v187, v188, v189, v190, v191, v228, v230, v232, v234, v236, v238, v240, v33, v244, v245, v247, v180, v252, v253, v255, v257, v258, v259, v261, v262, v264, v265, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331);
    if (v192)
    {
      v193 = v192;
      v194 = MEMORY[0];
      do
      {
        for (j = 0; j != v193; ++j)
        {
          if (MEMORY[0] != v194)
          {
            objc_enumerationMutation(v183);
          }

          v196 = *(8 * j);
          v197 = [EGStillImageSoftISPNode alloc];
          v198 = MEMORY[0x1E696AEC0];
          v229 = [v196 name];
          [v198 stringWithFormat:@"SoftISP_%@"];
          OUTLINED_FUNCTION_9_47();
          OUTLINED_FUNCTION_14_33();
          v200 = [v199 initWithName:? stillImageSettings:? nodeConfiguration:? portType:? processingMode:? addGatingInput:? delegate:?];
          OUTLINED_FUNCTION_10_41([*(v1 + 120) workerQueue]);
          [OUTLINED_FUNCTION_27_1() installNode:?];
          [v200 sbufInput];
          [OUTLINED_FUNCTION_1_15() connectOutput:v196 toInput:?];
          [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
          [OUTLINED_FUNCTION_18_0() processorInput];
          [OUTLINED_FUNCTION_1_15() connectOutput:v196 toInput:?];
          [v200 sbufOutput];
          [OUTLINED_FUNCTION_28() addObject:?];
          v201 = [v264 addObject:{objc_msgSend(v200, "processingCompleteOutput")}];
        }

        v193 = OUTLINED_FUNCTION_21_24(v201, v202, v203, v204, v205, v206, v207, v208, v229, v230, v232, v234, v236, v238, v240, v242, v244, v245, v247, v248, v250, v253, v255, v257, v258, v259, v261, v262, v264, v265, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332);
      }

      while (v193);
    }

    v209 = [EGStillImageLearnedFusionNRFNode alloc];
    OUTLINED_FUNCTION_9_47();
    v211 = [v210 initWithName:@"LearnedFusion" stillImageSettings:? nodeConfiguration:? provideInferenceInputImageForProcessing:? addSyncErrorRecoveryPorts:? portType:? delegate:?];
    [v211 handleAllInputAsyncOnQueue:OUTLINED_FUNCTION_12_38()];
    if (v262)
    {
      [v211 specifyInput:objc_msgSend(v211 handledSyncAndAssertQueue:{"referenceFrameInput"), OUTLINED_FUNCTION_12_38()}];
    }

    [v211 setProcessSmartStyleRenderingInput:HIDWORD(v258)];
    [v1 installNode:v211];
    v212 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v211 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v212 toInput:?];
    [v211 referenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v242 toInput:?];
    if ([v184 count])
    {
      v213 = 0;
      do
      {
        v214 = [v184 objectAtIndexedSubscript:v213];
        [objc_msgSend(v211 "primarySbufInputs")];
        [OUTLINED_FUNCTION_1_15() connectOutput:v214 toInput:?];
        [v211 specifyInput:objc_msgSend(objc_msgSend(v211 handledSyncAndAssertQueue:{"primarySbufInputs"), "objectAtIndexedSubscript:", v213++), OUTLINED_FUNCTION_12_38()}];
      }

      while ([v184 count] > v213);
    }

    if (v238)
    {
      v219 = [v248 secondEvZeroOutput];
      v220 = [EGStillImageSoftISPNode alloc];
      v221 = MEMORY[0x1E696AEC0];
      v228 = [v219 name];
      [v221 stringWithFormat:@"SoftISP_%@"];
      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_14_33();
      v223 = [v222 initWithName:? stillImageSettings:? nodeConfiguration:? portType:? processingMode:? addGatingInput:? delegate:?];
      OUTLINED_FUNCTION_12_38();
      [OUTLINED_FUNCTION_28() handleAllInputAsyncOnQueue:?];
      [v1 installNode:v223];
      [v223 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v219 toInput:?];
      v224 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
      [v223 processorInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v224 toInput:?];
      v225 = [v211 attemptErrorRecoveryOutput];
      [v223 gatingInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v225 toInput:?];
      [v264 addObject:{objc_msgSend(v223, "processingCompleteOutput")}];
      v226 = [v223 sbufOutput];
      [v211 hdrErrorRecoveryEVZeroInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v226 toInput:?];
    }

    v62 = [v211 inferenceInputImageOutput];
    v61 = [v211 fusionModeOutput];
    v63 = [v211 sbufOutput];
    v60 = 0;
    v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  }

  v59 = v245;
  v22 = HIDWORD(v240);
  v34 = v250;
  v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
LABEL_69:
  v8 = v59 == 13;
  v64 = 52;
  if (!v8)
  {
    v64 = 0;
  }

  if (v258 == 12)
  {
    v65 = 13;
  }

  else
  {
    v65 = v64;
  }

  v66 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
  if (((v22 | HIDWORD(v257)) & 1) == 0)
  {
    v123 = [EGStillImageDCNode alloc];
    OUTLINED_FUNCTION_11_40();
    v232 = v265;
    v234 = *(v1 + v124);
    v230 = v65;
    LOBYTE(v228) = BYTE4(v261);
    v126 = v34;
    v127 = [v125 initWithName:@"DistortionCorrection" stillImageSettings:? nodeConfiguration:? addConfigurationInput:? processIDC:? processGDC:? deepZoomEnabled:? inputImageBufferType:? portType:? delegate:?];
    OUTLINED_FUNCTION_10_41([*(v1 + 120) workerQueue]);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [v127 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
    v128 = v127;
    v34 = v126;
    v66 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
    v129 = [v128 sbufOutput];
    v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
    v63 = v129;
  }

  if ((v245 & 0x100000000) != 0)
  {
    v130 = [EGStillImageScalerNode alloc];
    v22 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v228 = v265;
    v230 = *(v1 + v23[255]);
    v131 = [EGStillImageScalerNode initWithName:v130 stillImageSettings:"initWithName:stillImageSettings:nodeConfiguration:resourceCoordinator:deepZoomEnabled:inputImageBufferType:portType:delegate:" nodeConfiguration:@"Scaler" resourceCoordinator:*(v1 + 104) deepZoomEnabled:*(v1 + 112) inputImageBufferType:*(v1 + 120) portType:HIDWORD(v261) delegate:v65];
    v132 = v66;
    v133 = v34;
    v134 = v131;
    OUTLINED_FUNCTION_10_41([*(v1 + 120) workerQueue]);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    [(EGStillImageScalerNode *)v134 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
    v135 = v134;
    v34 = v133;
    v66 = v132;
    v136 = [(EGStillImageScalerNode *)v135 sbufOutput];
    v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
    v63 = v136;
  }

  if ((v253 & 0x100000000) != 0)
  {
    if (!v62)
    {
      return 4294954516;
    }

    v67 = objc_alloc(&v58[51]);
    v22 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    OUTLINED_FUNCTION_9_47();
    v69 = [v68 initWithName:@"InferenceProcessing" stillImageSettings:? portType:? nodeConfiguration:? resourceCoordinator:? inferenceInputBufferType:? delegate:?];
    OUTLINED_FUNCTION_10_41([*(v1 + 120) inferenceControllerQueue]);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    [v69 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v62 toInput:?];
    v34 = [v69 inferencesDeliveredOutput];
  }

  if (v60)
  {
    if (!v34)
    {
      return 4294954516;
    }

    [OUTLINED_FUNCTION_27_1() connectOutput:? toInput:?];
  }

  v70 = v255;
  v71 = [v255 count];
  if (v71)
  {
    if (v61)
    {
      v79 = OUTLINED_FUNCTION_20_19(v71, v72, v73, v74, v75, v76, v77, v78, v228, v230, v232, v234, v236, v238, v240, v242, v244, v245, v247, v248, v250, v253, v255, v257, v258, v259, v261, v262, v264, v265, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, 0);
      if (v79)
      {
        v22 = v79;
        v34 = MEMORY[0];
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (MEMORY[0] != v34)
            {
              objc_enumerationMutation(v70);
            }

            v81 = [v1 connectOutput:v61 toInput:*(8 * k)];
          }

          v22 = OUTLINED_FUNCTION_20_19(v81, v82, v83, v84, v85, v86, v87, v88, v228, v231, v233, v235, v237, v239, v241, v243, v244, v246, v247, v249, v251, v254, v256, v257, v258, v260, v261, v263, v264, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295, v297, v299);
        }

        while (v22);
      }

      goto LABEL_93;
    }

    return 4294954516;
  }

LABEL_93:
  if (HIDWORD(v261))
  {
    v137 = [[EGStillImageDeepZoomNode alloc] initWithName:@"DeepZoom" stillImageSettings:*(v1 + 104) portType:v265 delegate:*(v1 + 128)];
    v138 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v138);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [v34 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
    v63 = [v34 sbufOutput];
  }

  if (HIDWORD(v257))
  {
    v139 = objc_alloc(&v66[58]);
    OUTLINED_FUNCTION_11_40();
    LOBYTE(v228) = BYTE4(v261);
    v142 = [v141 initWithName:@"DistortionCorrection" stillImageSettings:v228 nodeConfiguration:1 addConfigurationInput:v265 processIDC:*(v1 + v140) processGDC:? deepZoomEnabled:? inputImageBufferType:? portType:? delegate:?];
    v143 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v143);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [v34 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
    v63 = [v34 sbufOutput];
  }

  v89 = [*(v1 + 104) requestedSettings];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([objc_msgSend(*(v1 + 104) "requestedSettings")] != 0) & BYTE4(v244)) == 1)
  {
    v176 = [EGStillImageSemanticStyleWithDeepFusionNode alloc];
    OUTLINED_FUNCTION_7_55();
    v178 = [v177 initWithName:@"DeepFusionForSemStyles" stillImageSettings:? resourceCoordinator:? portType:? delegate:?];
    v179 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v179);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [v89 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
    v63 = [v89 sbufOutput];
  }

  if (HIDWORD(v258))
  {
    v22 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v144 = [[EGStillImageSmartStyleRenderingNode alloc] initWithName:@"SmartStyleRendering" stillImageSettings:*(v1 + 104) portType:v265 delegate:*(v1 + 128)];
    -[EGQueueManagementNode handleAllInputAsyncOnQueue:](v144, "handleAllInputAsyncOnQueue:", [*(v1 + 120) workerQueue]);
    [v1 installNode:v144];
    v89 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [(EGStillImageSmartStyleRenderingNode *)v144 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v89 toInput:?];
    [(EGStillImageSmartStyleRenderingNode *)v144 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
    v63 = [(EGStillImageSmartStyleRenderingNode *)v144 sbufOutput];
    v145 = [EGStillImagePiecemealEncodingNode alloc];
    OUTLINED_FUNCTION_7_55();
    v147 = [v146 initWithName:@"piecemealEncodingSmartStyleAuxImages" stillImageSettings:? resourceCoordinator:? portType:? mode:? delegate:?];
    v148 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v148);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    [(EGStillImageSmartStyleRenderingNode *)v144 sbufOutput];
    [OUTLINED_FUNCTION_18_0() sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    v90 = v247;
    [v247 addObject:{objc_msgSend(v89, "encodingCompleteOutput")}];
  }

  else
  {
    v90 = v247;
  }

  v91 = [EGStillImageInferenceMergingNode alloc];
  OUTLINED_FUNCTION_7_55();
  v93 = [v92 initWithName:@"InferenceMerging" stillImageSettings:? resourceCoordinator:?];
  v94 = OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_10_41(v94);
  [OUTLINED_FUNCTION_27_1() installNode:?];
  [v89 sbufInput];
  [OUTLINED_FUNCTION_1_15() connectOutput:v63 toInput:?];
  v95 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"SampleBufferEmitter" description:@"Final fused image"];
  [OUTLINED_FUNCTION_2_89() installNode:?];
  v96 = [v89 sbufOutput];
  [v22 sbufInput];
  [OUTLINED_FUNCTION_1_15() connectOutput:v96 toInput:?];
  [v90 addObject:{objc_msgSend(v22, "captureCompleteOutput")}];
  v97 = [v264 count];
  if (v97)
  {
    v98 = [[EGStillImageSoftISPProcessingCompleteNode alloc] initWithName:@"SoftISPProcessingComplete" resourceCoordinator:*(v1 + 120) numInputs:v97];
    [OUTLINED_FUNCTION_27_1() installNode:?];
    if (v97 >= 1)
    {
      v99 = 0;
      do
      {
        [v264 objectAtIndexedSubscript:v99];
        [objc_msgSend(OUTLINED_FUNCTION_18_0() "processingCompleteInputs")];
        [OUTLINED_FUNCTION_1_15() connectOutput:v97 toInput:?];
        ++v99;
      }

      while ((v97 & 0x7FFFFFFF) != v99);
    }
  }

  v100 = -[EGStillImageCaptureCompleteNode initWithName:numInputs:]([EGStillImageCaptureCompleteNode alloc], "initWithName:numInputs:", @"CaptureComplete", [v90 count]);
  [OUTLINED_FUNCTION_27_1() installNode:?];
  if ([v90 count])
  {
    v101 = 0;
    do
    {
      v102 = [v90 objectAtIndexedSubscript:v101];
      [(NSArray *)[(EGStillImageCaptureCompleteNode *)v100 captureCompleteInputs] objectAtIndexedSubscript:v101];
      [OUTLINED_FUNCTION_1_15() connectOutput:v102 toInput:?];
      ++v101;
    }

    while ([v90 count] > v101);
  }

  return [EGStillImageProcessorControllerSourceNode enqueueProcessorControllersToGraph:v1 fromResourceCoordinator:*(v1 + 120)];
}

- (uint64_t)_processorControllerOutputForType:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
    if (!v4)
    {
      v5 = [[EGStillImageProcessorControllerSourceNode alloc] initWithType:a2];
      [OUTLINED_FUNCTION_18_0() installNode:0];
      [*(v3 + 136) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a2)}];
    }

    return [v4 processorControllerOutput];
  }

  return result;
}

@end
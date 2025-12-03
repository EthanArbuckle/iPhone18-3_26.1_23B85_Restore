@interface FigCaptureStillImageSinkPipeline
- (FigCaptureStillImageSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type captureStatusDelegate:(id)delegate inferenceScheduler:(id)scheduler graph:(id)graph name:(id)name;
- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(void *)configuration sourceOutputsByPortType:(uint64_t)type captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)scheduler graph:;
- (void)dealloc;
@end

@implementation FigCaptureStillImageSinkPipeline

- (FigCaptureStillImageSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type captureStatusDelegate:(id)delegate inferenceScheduler:(id)scheduler graph:(id)graph name:(id)name
{
  v18.receiver = self;
  v18.super_class = FigCaptureStillImageSinkPipeline;
  v15 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v18, sel_initWithGraph_name_sinkID_, graph, name, [objc_msgSend(configuration "sinkConfiguration")]);
  if (v15)
  {
    v15->_captureDevice = device;
    v16 = [(FigCaptureStillImageSinkPipeline *)v15 _buildStillImageSinkPipelineWithConfiguration:configuration sourceOutputsByPortType:type captureStatusDelegate:delegate inferenceScheduler:scheduler graph:graph];
    if (v16)
    {
      [FigCaptureStillImageSinkPipeline initWithConfiguration:v16 captureDevice:v15 sourceOutputsByPortType:? captureStatusDelegate:? inferenceScheduler:? graph:? name:?];
      return 0;
    }
  }

  return v15;
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(void *)configuration sourceOutputsByPortType:(uint64_t)type captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)scheduler graph:
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  v373 = 0;
  v372 = 0;
  [a2 sinkConfiguration];
  objc_opt_class();
  sinkConfiguration = 0;
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration = [a2 sinkConfiguration];
  }

  v263 = objc_alloc_init(BWStillImageNodeConfiguration);
  [(BWStillImageNodeConfiguration *)v263 setFigThreadPriority:14];
  v10 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage" priority:14];
  v270 = [objc_msgSend(*(v8 + 48) "captureStream")];
  v258 = +[FigCaptureCameraParameters sharedInstance];
  cameraTuningParameters = [(FigCaptureCameraParameters *)v258 cameraTuningParameters];
  v11 = [objc_msgSend(*(v8 + 48) "bravoTelephotoCaptureStream")];
  v12 = [objc_msgSend(*(v8 + 48) "pearlInfraredCaptureStream")];
  v255 = v12;
  obj = configuration;
  if (v12)
  {
    v289 = [configuration objectForKeyedSubscript:v12];
  }

  else
  {
    v289 = 0;
  }

  isBravoVariant = [*(v8 + 48) isBravoVariant];
  pearlInfraredCaptureStream = [*(v8 + 48) pearlInfraredCaptureStream];
  v264 = [objc_msgSend(*(v8 + 48) "captureStream")];
  v262 = [objc_msgSend(*(v8 + 48) "bravoTelephotoCaptureStream")];
  v246 = [objc_msgSend(*(v8 + 48) "pearlInfraredCaptureStream")];
  captureStream = [*(v8 + 48) captureStream];
  v269 = isBravoVariant;
  if (isBravoVariant)
  {
    captureStream = [*(v8 + 48) bravoTelephotoCaptureStream];
  }

  else if (pearlInfraredCaptureStream)
  {
    captureStream = [*(v8 + 48) pearlInfraredCaptureStream];
  }

  v16 = captureStream;
  [*(v8 + 48) setStillImageCaptureEnabled:1];
  [*(v8 + 48) setIrisFrameHarvestingEnabled:{objc_msgSend(sinkConfiguration, "irisFrameHarvestingEnabled")}];
  [*(v8 + 48) setStillImageFusionScheme:{objc_msgSend(a2, "noiseReductionAndFusionScheme")}];
  depthDataDeliveryEnabled = [sinkConfiguration depthDataDeliveryEnabled];
  if (a2)
  {
    v17 = *(a2 + 112);
  }

  else
  {
    v17 = 0;
  }

  portraitEffectsMatteDeliveryEnabled = [sinkConfiguration portraitEffectsMatteDeliveryEnabled];
  [a2 portraitEffectsMatteMainImageDownscalingFactor];
  v19 = v18;
  v267 = v11;
  v254 = pearlInfraredCaptureStream;
  if (a2 && *(a2 + 115) == 1)
  {
    v275 = *(a2 + 116);
    v261 = 1;
  }

  else
  {
    v261 = 0;
    v275 = 0;
  }

  v285 = v8;
  allowsMultipleInflightCaptures = [a2 allowsMultipleInflightCaptures];
  bravoConstituentPhotoDeliveryEnabled = [sinkConfiguration bravoConstituentPhotoDeliveryEnabled];
  v22 = bravoConstituentPhotoDeliveryEnabled;
  v271 = depthDataDeliveryEnabled | bravoConstituentPhotoDeliveryEnabled;
  v272 = allowsMultipleInflightCaptures;
  if (a2 && ((depthDataDeliveryEnabled | bravoConstituentPhotoDeliveryEnabled) & 1) == 0 && (*(a2 + 113) & 1) != 0)
  {
    v247 = 1;
    v274 = 1;
    v23 = depthDataDeliveryEnabled;
  }

  else
  {
    v247 = 0;
    v23 = depthDataDeliveryEnabled;
    v274 = bravoConstituentPhotoDeliveryEnabled | depthDataDeliveryEnabled & v269;
  }

  filterRenderingEnabled = [sinkConfiguration filterRenderingEnabled];
  [*(v285 + 48) requestedZoomFactorRelativeToPortType:{objc_msgSend(v16, "portType")}];
  v26 = v25;
  portType = [v16 portType];
  sensorIDString = [v16 sensorIDString];
  LODWORD(v29) = v26;
  v30 = [(FigCaptureCameraParameters *)v258 disparityRefinementTypeForPortType:portType sensorIDString:sensorIDString zoomFactor:v29];
  v257 = filterRenderingEnabled;
  if ((v23 & portraitEffectsMatteDeliveryEnabled) == 1)
  {
    if (v30)
    {
      v31 = filterRenderingEnabled;
    }

    else
    {
      v31 = 0;
    }

    v243 = v31;
  }

  else
  {
    v243 = 0;
  }

  [*(v285 + 48) setStillImageISPChromaNoiseReductionEnabled:v17 & 1];
  [*(v285 + 48) setStillImageGNRHDREnabled:v275 & 1];
  v32 = [MEMORY[0x1E695DF70] arrayWithObject:v270];
  v259 = v10;
  v33 = v10;
  v34 = v10;
  if (v274)
  {
    v34 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.gnr.default" priority:14];
    v33 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.gnr.telephoto" priority:14];
    v259 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.stereofusion" priority:14];
  }

  v278 = v32;
  v249 = v22;
  v240 = v34;
  v280 = [a2 stillImageStabilizationSupported] && (objc_msgSend(a2, "allowedToModifyInputBuffers") & 1) != 0;
  v242 = sinkConfiguration;
  irisFrameHarvestingEnabled = [sinkConfiguration irisFrameHarvestingEnabled];
  v35 = *(v285 + 48);
  stillImageStabilizationSupported = [a2 stillImageStabilizationSupported];
  v376 = 0u;
  v377 = 0u;
  v378 = 0u;
  v379 = 0u;
  captureStreams = [v35 captureStreams];
  v38 = [captureStreams countByEnumeratingWithState:&v376 objects:&v374 count:16];
  if (v38)
  {
    v39 = *v377;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v377 != v39)
        {
          objc_enumerationMutation(captureStreams);
        }

        if ([*(*(&v376 + 1) + 8 * i) hasSphere])
        {
          LODWORD(v38) = 1;
          goto LABEL_44;
        }
      }

      v38 = [captureStreams countByEnumeratingWithState:&v376 objects:&v374 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:
  noiseReductionAndFusionScheme = [a2 noiseReductionAndFusionScheme];
  if (noiseReductionAndFusionScheme >= 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Only FigCaptureStillImageNoiseReductionAndFusionSchemeGeneralNoiseReductionAndFusion and bellow supported" userInfo:0]);
  }

  v42 = noiseReductionAndFusionScheme;
  v239 = v33;
  v286 = noiseReductionAndFusionScheme != 2;
  if (!v261)
  {
    v251 = 0;
    v250 = 0;
    goto LABEL_49;
  }

  if (((noiseReductionAndFusionScheme == 2) & v275) != 0)
  {
    v250 = 0;
    v251 = v247;
LABEL_49:
    v43 = v285;
    goto LABEL_54;
  }

  v44 = [BWHDRNode alloc];
  v43 = v285;
  if (a2)
  {
    v45 = *(a2 + 96);
  }

  else
  {
    v45 = 0;
  }

  v46 = [(BWHDRNode *)v44 initWithClientPID:v45 sensorIDDictionary:v264];
  v371.receiver = v285;
  v371.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v371, sel_addNode_error_, v46, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWHDRNode *)v46 setAttachesInputBracketToOutputSampleBuffer:0];
  [(BWHDRNode *)v46 setAlwaysRequestsPreBracketedEV0:irisFrameHarvestingEnabled];
  v250 = v46;
  [(BWHDRNode *)v46 setSupportsStereoFusionCaptures:v247];
  v251 = v247;
LABEL_54:
  v47 = stillImageStabilizationSupported & v38;
  v48 = [objc_msgSend(v43[6] "captureStream")];
  v49 = [objc_msgSend(v43[6] "bravoTelephotoCaptureStream")];
  v238 = [objc_msgSend(v43[6] "pearlInfraredCaptureStream")];
  v268 = v42;
  v241 = v48;
  v248 = v49;
  v265 = stillImageStabilizationSupported;
  if (v42 == 2)
  {
    v50 = [BWGNRNode alloc];
    v51 = v267;
    if ((v269 & (v274 ^ 1)) != 0)
    {
      v52 = v49;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v53 = v262;
    if ((v269 & (v274 ^ 1)) == 0)
    {
      v53 = 0;
    }

    v54 = [BWGNRNode initWithSISEnabled:v50 OISEnabled:"initWithSISEnabled:OISEnabled:LTMHDREnabled:processingLTMHDRFusion:portType:sensorID:sensorIDDictionary:telephotoPortType:telephotoSensorID:telephotoSensorIDDictionary:" LTMHDREnabled:stillImageStabilizationSupported processingLTMHDRFusion:v264 portType:v51 sensorID:v52 sensorIDDictionary:v53 telephotoPortType:? telephotoSensorID:? telephotoSensorIDDictionary:?];
    v370.receiver = v43;
    v370.super_class = FigCaptureStillImageSinkPipeline;
    if (!objc_msgSendSuper2(&v370, sel_addNode_error_, v54, &v372))
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWGNRNode *)v54 setAttachesInputBracketToOutputSampleBuffer:0];
    [(BWGNRNode *)v54 setUsesHDRPreBracketFrameForErrorRecoveryDownstream:v275 & 1];
    [(BWGNRNode *)v54 setAllowedToModifyInputBuffers:v280];
    [v43[6] registerForAEMatrixMetadata];
    if (v274)
    {
      v270 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GNR-%@", v270];
    }

    else
    {
      v270 = @"GNR";
    }

    v56 = v267;
    v47 = v47;
    v57 = v286;
    [(BWNode *)v54 setName:v270];
  }

  else
  {
    v54 = 0;
    v56 = v267;
    v57 = v286;
  }

  if ((v57 & v265) != 0)
  {
    v58 = [[BWSISNode alloc] initWithCameraTuningDictionary:cameraTuningParameters sensorIDDictionary:v264 fusionScheme:v268];
    v59 = v58;
    if (v268 == 1)
    {
      v60 = @"TMBNR";
    }

    else
    {
      v60 = 0;
    }

    [(BWNode *)v58 setName:v60];
    v369.receiver = v43;
    v369.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v369, sel_addNode_error_, v59, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWSISNode *)v59 setAttachesInputBracketToOutputSampleBuffer:0];
    v260 = v59;
    [(BWSISNode *)v59 setAlwaysRequestsPreBracketedEV0:irisFrameHarvestingEnabled];
    if (a2)
    {
      v61 = *(a2 + 114);
    }

    else
    {
      v61 = 0;
    }

    v62 = &classRef_BWDerectificationInferenceProvider;
    [(BWSISNode *)v59 setLivePhotoSupported:v61 & 1];
    [(BWSISNode *)v59 setOISSupported:v47];
    [*(v285 + 48) registerForAEMatrixMetadata];
    *(v285 + 96) = v59;
  }

  else
  {
    v260 = 0;
    v62 = &classRef_BWDerectificationInferenceProvider;
  }

  v256 = v54;
  if (v274)
  {
    if (v47)
    {
      v63 = v285;
      v64 = [objc_msgSend(*(v285 + 48) "bravoTelephotoCaptureStream")];
    }

    else
    {
      v64 = 0;
      v63 = v285;
    }

    v65 = [[BWGNRNode alloc] initWithSISEnabled:v265 OISEnabled:v64 LTMHDREnabled:v271 & v275 & 1 processingLTMHDRFusion:v271 & v275 & 1 portType:v56 sensorID:v248 sensorIDDictionary:v262 telephotoPortType:0 telephotoSensorID:0 telephotoSensorIDDictionary:0];
    v68 = v62[304];
    v368.receiver = v63;
    v368.super_class = v68;
    v66 = obj;
    v67 = v278;
    if (!objc_msgSendSuper2(&v368, sel_addNode_error_, v65, &v372))
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWGNRNode *)v65 setAttachesInputBracketToOutputSampleBuffer:0];
    [(BWGNRNode *)v65 setUsesHDRPreBracketFrameForErrorRecoveryDownstream:v275 & 1];
    [(BWGNRNode *)v65 setAllowedToModifyInputBuffers:v280];
    -[BWNode setName:](v65, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"GNR-%@", v56]);
  }

  else
  {
    v65 = 0;
    v66 = obj;
    v67 = v278;
  }

  v253 = v65;
  if (!v289)
  {
    v290 = 0;
    if (!v56)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v69 = [BWAttachedMediaSplitNode alloc];
  v367 = @"Depth";
  v70 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v69, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v367 count:1]);
  v71 = v62[304];
  v366.receiver = v285;
  v366.super_class = v71;
  if ((objc_msgSendSuper2(&v366, sel_addNode_error_, v70, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:v289 toInput:-[BWNode input](v70 pipelineStage:{"input"), v10}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWNode *)v70 setName:@"Still Image IR-Depth Splitter"];
  [(BWAttachedMediaSplitNode *)v70 setEmitsNodeErrorsForMissingAttachedMedia:1];
  v290 = [(NSArray *)[(BWNode *)v70 outputs] objectAtIndexedSubscript:0];
  if (v56)
  {
LABEL_88:
    if ([v66 objectForKeyedSubscript:v56])
    {
      [v67 addObject:v56];
    }
  }

LABEL_90:
  if (v255 && [v66 objectForKeyedSubscript:v255])
  {
    [v67 addObject:v255];
  }

  if ([*(v285 + 48) zeroShutterLagEnabled])
  {
    v72 = [[BWStillImageTimeMachineFrameCoordinatorNode alloc] initWithPortTypes:v67];
    v73 = v62[304];
    v365.receiver = v285;
    v365.super_class = v73;
    if ((objc_msgSendSuper2(&v365, sel_addNode_error_, v72, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  else
  {
    v72 = 0;
  }

  v74 = [[BWStillImageCoordinatorNode alloc] initWithNodeConfiguration:v263 captureDevice:*(v285 + 48) inputPortTypes:v67 sensorRawInputPortTypes:0 highResStillImageDimensions:0];
  [(BWStillImageCoordinatorNode *)v74 setStillImageCaptureStatusDelegate:type];
  [(BWStillImageCoordinatorNode *)v74 setStillImageCapturePipeliningMode:v272];
  v75 = v62[304];
  v76 = v285;
  v364.receiver = v285;
  v364.super_class = v75;
  if ((objc_msgSendSuper2(&v364, sel_addNode_error_, v74, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v273 = a2;
  v287 = v74;
  *(v285 + 56) = v74;
  v281 = v10;
  if (v72)
  {
    v363 = 0uLL;
    v362 = 0uLL;
    v361 = 0uLL;
    v360 = 0uLL;
    v77 = [v66 countByEnumeratingWithState:&v360 objects:v359 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v361;
      v80 = *off_1E798A0E8;
      while (2)
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v361 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v82 = *(*(&v360 + 1) + 8 * j);
          v83 = [obj objectForKeyedSubscript:v82];
          v84 = [(BWStillImageTimeMachineFrameCoordinatorNode *)v72 inputForPortType:v82];
          if ([v82 isEqualToString:v80])
          {
            v85 = v290;
          }

          else
          {
            v85 = v83;
          }

          v10 = v281;
          if (([scheduler connectOutput:v85 toInput:v84 pipelineStage:v281] & 1) == 0)
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            goto LABEL_374;
          }

          if (([scheduler connectOutput:-[BWStillImageTimeMachineFrameCoordinatorNode outputForPortType:](v72 toInput:"outputForPortType:" pipelineStage:{v82), objc_msgSend(*(v285 + 56), "inputForPortType:", v82), v281}] & 1) == 0)
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            goto LABEL_374;
          }
        }

        v78 = [obj countByEnumeratingWithState:&v360 objects:v359 count:16];
        v76 = v285;
        if (v78)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v358 = 0uLL;
    v357 = 0uLL;
    v356 = 0uLL;
    v355 = 0uLL;
    v86 = [v66 countByEnumeratingWithState:&v355 objects:v354 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v356;
      v89 = *off_1E798A0E8;
      while (2)
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v356 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v91 = *(*(&v355 + 1) + 8 * k);
          v92 = [obj objectForKeyedSubscript:v91];
          v93 = [*(v285 + 56) inputForPortType:v91];
          if ([v91 isEqualToString:v89])
          {
            v94 = v290;
          }

          else
          {
            v94 = v92;
          }

          if (![scheduler connectOutput:v94 toInput:v93 pipelineStage:v10])
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            goto LABEL_374;
          }
        }

        v87 = [obj countByEnumeratingWithState:&v355 objects:v354 count:16];
        if (v87)
        {
          continue;
        }

        break;
      }
    }
  }

  v95 = [BWStillImageBufferRouterNode alloc];
  if (v268 == 2)
  {
    v96 = v265;
  }

  else
  {
    v96 = 0;
  }

  v97 = [(BWStillImageBufferRouterNode *)v95 initWithInputPortTypes:v278 HDRSupported:v261 SISSupported:v265 GNRSISSupported:v96 LTMHDRSupported:v275 & 1 depthDataDeliveryEnabled:depthDataDeliveryEnabled];
  v98 = v76;
  v353.receiver = v76;
  v353.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v353, sel_addNode_error_, v97, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v352 = 0u;
  v351 = 0u;
  v350 = 0u;
  v349 = 0u;
  v99 = [v278 countByEnumeratingWithState:&v349 objects:v348 count:16];
  schedulerCopy6 = scheduler;
  if (v99)
  {
    v101 = v99;
    v102 = *v350;
    while (2)
    {
      for (m = 0; m != v101; ++m)
      {
        if (*v350 != v102)
        {
          objc_enumerationMutation(v278);
        }

        if (![scheduler connectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v287 toInput:"outputForPortType:" pipelineStage:{*(*(&v349 + 1) + 8 * m)), -[BWStillImageBufferRouterNode inputForPortType:](v97, "inputForPortType:", *(*(&v349 + 1) + 8 * m)), v10}])
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }
      }

      v101 = [v278 countByEnumeratingWithState:&v349 objects:v348 count:16];
      if (v101)
      {
        continue;
      }

      break;
    }
  }

  defaultOutput = [(BWStillImageBufferRouterNode *)v97 defaultOutput];
  bravoTelephotoOutput = [(BWStillImageBufferRouterNode *)v97 bravoTelephotoOutput];
  pearlInfraredOutput = [(BWStillImageBufferRouterNode *)v97 pearlInfraredOutput];
  if (v250)
  {
    if ((v271 | v251))
    {
      if (v271 & v269)
      {
        if (([scheduler connectOutput:-[BWStillImageBufferRouterNode bravoTelephotoOutput](v97 toInput:"bravoTelephotoOutput") pipelineStage:{-[BWNode input](v250, "input"), v10}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        bravoTelephotoOutput = [(BWNode *)v250 output];
      }
    }

    else if (([scheduler connectOutput:-[BWStillImageBufferRouterNode HDROutput](v97 toInput:"HDROutput") pipelineStage:{-[BWNode input](v250, "input"), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  if (v260 && ([scheduler connectOutput:-[BWStillImageBufferRouterNode SISOutput](v97 toInput:"SISOutput") pipelineStage:{-[BWNode input](v260, "input"), v10}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v106 = bravoTelephotoOutput;
  if (v250)
  {
    v107 = v251;
  }

  else
  {
    v107 = 1;
  }

  if (v268)
  {
    v108 = 1;
  }

  else
  {
    v108 = v260 == 0;
  }

  v109 = !v108;
  if (((v271 | v107) & 1) == 0 || v109)
  {
    if ((v271 | v107))
    {
      v110 = 1;
    }

    else
    {
      v110 = 2;
    }

    if (v109)
    {
      v111 = v110;
    }

    else
    {
      v111 = ((v271 | v107) & 1) == 0;
    }

    v112 = [[BWFunnelNode alloc] initWithNumberOfInputs:(v111 + 1) mediaType:1986618469];
    v347.receiver = v98;
    v347.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v347, sel_addNode_error_, v112, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:-[BWStillImageBufferRouterNode defaultOutput](v97 toInput:"defaultOutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v112, "inputs"), "objectAtIndexedSubscript:", 0), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (v107)
    {
      v113 = 1;
      if (!v109)
      {
LABEL_169:
        defaultOutput = [(BWNode *)v112 output];
        goto LABEL_170;
      }
    }

    else
    {
      if (([scheduler connectOutput:-[BWNode output](v250 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v112, "inputs"), "objectAtIndexedSubscript:", 1), v10}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      v113 = 2;
      if (!v109)
      {
        goto LABEL_169;
      }
    }

    if (([scheduler connectOutput:-[BWNode output](v260 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v112, "inputs"), "objectAtIndexedSubscript:", v113), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    goto LABEL_169;
  }

LABEL_170:
  if (v274 & 1 | ((v269 & 1) == 0))
  {
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  }

  else
  {
    v115 = [[BWCrossoverNode alloc] initWithMediaType:1986618469 numberOfInputs:2];
    v346.receiver = v98;
    v346.super_class = FigCaptureStillImageSinkPipeline;
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if ((objc_msgSendSuper2(&v346, sel_addNode_error_, v115, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:defaultOutput toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v115 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:v106 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v115 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    defaultOutput = [(BWNode *)v115 output];
  }

  v116 = objc_alloc_init(BWPixelTransferNode);
  [(BWNode *)v116 setName:@"Still Image Format Converter"];
  -[BWPixelTransferNode setOutputPixelFormat:](v116, "setOutputPixelFormat:", [v273 outputPixelFormat]);
  -[BWPixelTransferNode setOutputColorSpaceProperties:](v116, "setOutputColorSpaceProperties:", [v273 outputColorSpaceProperties]);
  [(BWPixelTransferNode *)v116 setCropMode:3];
  v345.receiver = v98;
  v345.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v345, sel_addNode_error_, v116, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:defaultOutput toInput:-[BWNode input](v116 pipelineStage:{"input"), v10}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  output = [(BWNode *)v116 output];
  if (v253)
  {
    v118 = objc_alloc_init(BWPixelTransferNode);
    [(BWNode *)v118 setName:@"Telephoto Still Image Format Converter"];
    -[BWPixelTransferNode setOutputPixelFormat:](v118, "setOutputPixelFormat:", [v273 outputPixelFormat]);
    -[BWPixelTransferNode setOutputColorSpaceProperties:](v118, "setOutputColorSpaceProperties:", [v273 outputColorSpaceProperties]);
    [(BWPixelTransferNode *)v118 setCropMode:3];
    v344.receiver = v285;
    v344.super_class = FigCaptureStillImageSinkPipeline;
    v119 = pearlInfraredOutput;
    if ((objc_msgSendSuper2(&v344, sel_addNode_error_, v118, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:v106 toInput:-[BWNode input](v118 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output2 = [(BWNode *)v118 output];
  }

  else
  {
    output2 = v106;
    v119 = pearlInfraredOutput;
  }

  if (v119)
  {
    v121 = [[BWDepthSynchronizerNode alloc] initForStreaming:0 separateDepthComponentsEnabled:0];
    v343.receiver = v285;
    v343.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v343, sel_addNode_error_, v121, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [v121 setName:@"Still Image Depth Synchronizer"];
    if (([scheduler connectOutput:output toInput:objc_msgSend(v121 pipelineStage:{"imageInput"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:v119 toInput:objc_msgSend(v121 pipelineStage:{"depthInput"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [v121 output];
  }

  v122 = v273;
  if (v256)
  {
    if (([scheduler connectOutput:output toInput:-[BWNode input](v256 pipelineStage:{"input"), v240}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v256 output];
  }

  if (v253)
  {
    if (([scheduler connectOutput:output2 toInput:-[BWNode input](v253 pipelineStage:{"input"), v239}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output2 = [(BWNode *)v253 output];
  }

  if (v268 != 2)
  {
    v123 = [[BWNoiseReducerNode alloc] initWithCameraTuningDictionary:cameraTuningParameters sensorIDDictionary:v264];
    v342.receiver = v285;
    v342.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v342, sel_addNode_error_, v123, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:output toInput:-[BWNode input](v123 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v256 = v123;
    output = [(BWNode *)v123 output];
    if (v268 == 1)
    {
      if (v260)
      {
        v124 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
        v341.receiver = v285;
        v341.super_class = FigCaptureStillImageSinkPipeline;
        if ((objc_msgSendSuper2(&v341, sel_addNode_error_, v124, &v372) & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([scheduler connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v124 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v281}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([scheduler connectOutput:-[BWNode output](v260 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v124, "inputs"), "objectAtIndexedSubscript:", 1), v281}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        output = [(BWNode *)v124 output];
      }
    }
  }

  v125 = depthDataDeliveryEnabled;
  if (!v254)
  {
    v125 = 0;
  }

  v292 = v125;
  if (v271 & v257)
  {
    v126 = objc_alloc_init(BWPortraitHDRStagingNode);
    v340.receiver = v285;
    v340.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v340, sel_addNode_error_, v126, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v127 = v126;
    *(v285 + 88) = v127;
    if (v269)
    {
      if (([scheduler connectOutput:output2 toInput:-[BWNode input](v127 pipelineStage:{"input"), v259}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output2 = [*(v285 + 88) output];
    }

    else if (v254)
    {
      if (([scheduler connectOutput:output toInput:-[BWNode input](v127 pipelineStage:{"input"), v259}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [*(v285 + 88) output];
    }
  }

  if (v292)
  {
    v128 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v285 + v114[4]) scheduler:delegate priority:14];
    [(BWNode *)v128 setName:@"RGB Segmentation and Landmarks"];
    [(BWInferenceNode *)v128 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration portraitVersion]& 0xFFFFFFFFFFFFLL];
    v129 = +[BWLandmarksInferenceConfiguration configuration];
    [v129 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
    -[BWInferenceNode addInferenceOfType:version:configuration:](v128, "addInferenceOfType:version:configuration:", 801, [v129 landmarksInferenceVersion] & 0xFFFFFFFFFFFFLL, v129);
    v339.receiver = v285;
    v339.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v339, sel_addNode_error_, v128, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    input = [(BWNode *)v128 input];
    if ((v274 & 1) == 0)
    {
      v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
      if (([scheduler connectOutput:output toInput:input pipelineStage:v281] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [(BWNode *)v128 output];
      v132 = v270;
      goto LABEL_288;
    }

    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if (([scheduler connectOutput:output2 toInput:input pipelineStage:v281] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output2 = [(BWNode *)v128 output];
  }

  else if ((v274 & 1) == 0)
  {
    v132 = v270;
    goto LABEL_291;
  }

  if (v271)
  {
    v131 = objc_alloc_init(BWStillImageDisparitySplitterNode);
    [(BWNode *)v131 setName:@"Disparity/HDR Splitter"];
    v338.receiver = v285;
    v338.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v338, sel_addNode_error_, v131, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:output2 toInput:-[BWNode input](v131 pipelineStage:{"input"), v259}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    obja = v131;
    output2 = [(BWStillImageDisparitySplitterNode *)v131 disparityOutput];
  }

  else
  {
    if (!v247)
    {
      goto LABEL_267;
    }

    obja = 0;
  }

  v337[0] = v270;
  v337[1] = v267;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v337 count:2];
  v134 = [[BWStillImageMultiCameraDoserNode alloc] initWithPortTypes:v133];
  v336.receiver = v285;
  v336.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v336, sel_addNode_error_, v134, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v135 = [v133 indexOfObject:v270];
  if (v135 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_379;
  }

  v136 = v135;
  v137 = [v133 indexOfObject:v267];
  if (v137 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_379;
  }

  v138 = v137;
  v139 = [(NSArray *)[(BWNode *)v134 inputs] objectAtIndexedSubscript:v136];
  schedulerCopy6 = scheduler;
  if (([scheduler connectOutput:output toInput:v139 pipelineStage:v259] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:output2 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v134 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", v138), v259}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v140 = [(BWStillImageMultiCameraDoserNode *)v134 outputIndexForPortType:v270];
  if (v140 == 0x7FFFFFFFFFFFFFFFLL || (v141 = v140, v142 = [(BWStillImageMultiCameraDoserNode *)v134 outputIndexForPortType:v267], v142 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_379:
    v373 = -12780;
    goto LABEL_374;
  }

  v143 = v142;
  output = [(NSArray *)[(BWNode *)v134 outputs] objectAtIndexedSubscript:v141];
  output2 = [(NSArray *)[(BWNode *)v134 outputs] objectAtIndexedSubscript:v143];
  if (v249)
  {
    array = [MEMORY[0x1E695DF70] array];
    v145 = v114[4];
    v146 = v114;
    v147 = v285;
    if ([*(v285 + v145) bravoTelephotoCaptureStream])
    {
      v148 = MEMORY[0x1E696AD98];
      [objc_msgSend(*(v285 + v146[4]) "bravoTelephotoCaptureStream")];
      [array addObject:{objc_msgSend(v148, "numberWithFloat:")}];
      v149 = MEMORY[0x1E696AD98];
      [objc_msgSend(*(v285 + v146[4]) "masterCaptureStream")];
      [array addObject:{objc_msgSend(v149, "numberWithFloat:")}];
    }

    else
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v335 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v147 = v285;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      captureStreams2 = [*(v285 + 48) captureStreams];
      v374 = 138412290;
      v375 = captureStreams2;
      v152 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v152, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureStillImageSinkPipeline.m", 986, @"LastShownDate:FigCaptureStillImageSinkPipeline.m:986", @"LastShownBuild:FigCaptureStillImageSinkPipeline.m:986", 0);
      free(v152);
      schedulerCopy6 = scheduler;
    }

    v153 = [[BWStillImageDualPhotoFacePropagatorNode alloc] initWithBaseZoomFactors:array];
    v333.receiver = v147;
    v333.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v333, sel_addNode_error_, v153, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v122 = v273;
    if (([schedulerCopy6 connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v153 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v259}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output2 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v153 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v259}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(NSArray *)[(BWNode *)v153 outputs] objectAtIndexedSubscript:0];
    output2 = [(NSArray *)[(BWNode *)v153 outputs] objectAtIndexedSubscript:1];
  }

  else
  {
    v122 = v273;
  }

  if (!v247)
  {
    if (v271)
    {
      v288 = output2;
      if (v257)
      {
        v161 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:14];
        v162 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v285 + v114[4]) scheduler:delegate priority:14];
        [(BWNode *)v162 setName:@"Disparity/Landmarks Inference Node"];
        v163 = +[BWLandmarksInferenceConfiguration configuration];
        [v163 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
        -[BWInferenceNode addInferenceOfType:version:configuration:](v162, "addInferenceOfType:version:configuration:", 801, [v163 landmarksInferenceVersion] & 0xFFFFFFFFFFFFLL, v163);
        v328.receiver = v285;
        v328.super_class = FigCaptureStillImageSinkPipeline;
        if ((objc_msgSendSuper2(&v328, sel_addNode_error_, v162, &v372) & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        processedOutput = [(BWStillImageDisparitySplitterNode *)obja processedOutput];
        objb = v162;
        v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
        if (([schedulerCopy6 connectOutput:processedOutput toInput:-[BWNode input](v162 pipelineStage:{"input"), v161}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }
      }

      else
      {
        objb = 0;
      }

      depthDataSourceDimensions = [v122 depthDataSourceDimensions];
      cameraInfoByPortType = [*(v285 + v114[4]) cameraInfoByPortType];
      v169 = -[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc], "initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v267, v248, v262, [cameraInfoByPortType objectForKeyedSubscript:v267]);
      v170 = -[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc], "initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v270, v241, v264, [cameraInfoByPortType objectForKeyedSubscript:v270]);
      v326[0] = v270;
      v326[1] = v267;
      v327[0] = v169;
      v327[1] = v170;
      v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v327 forKeys:v326 count:2];

      v172 = [[BWStillImageBravoDisparityNode alloc] initWithNodeConfiguration:0 sensorConfigurationsByPortType:v171 disparityMapWidth:depthDataSourceDimensions disparityMapHeight:depthDataSourceDimensions >> 32 outputDisparityBufferCount:0];
      v325.receiver = v285;
      v325.super_class = FigCaptureStillImageSinkPipeline;
      if ((objc_msgSendSuper2(&v325, sel_addNode_error_, v172, &v372) & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      *(v285 + 72) = v172;
      -[BWStillImageBravoDisparityNode setShouldComputeDisparityWhenCalibrationFails:](v172, "setShouldComputeDisparityWhenCalibrationFails:", [*(v285 + v114[4]) shallowDepthOfFieldEffectEnabled] ^ 1);
      [(BWStillImageBravoDisparityNode *)v172 setAttachesInputBracketToOutputSampleBuffer:0];
      if (([schedulerCopy6 connectOutput:output toInput:-[BWStillImageBravoDisparityNode wideInput](v172 pipelineStage:{"wideInput"), v259}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      v122 = v273;
      if (([schedulerCopy6 connectOutput:v288 toInput:-[BWStillImageBravoDisparityNode telephotoInput](v172 pipelineStage:{"telephotoInput"), v259}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [(BWNode *)v172 output];
      if (v257)
      {
        v173 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
        [(BWNode *)v173 setName:@"Disparity/Landmarks Sync"];
        [(BWInferenceSynchronizerNode *)v173 setSynchronizesTopLevelAttachments:1];
        v324.receiver = v285;
        v324.super_class = FigCaptureStillImageSinkPipeline;
        if ((objc_msgSendSuper2(&v324, sel_addNode_error_, v173, &v372) & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([schedulerCopy6 connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v173 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v259}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([schedulerCopy6 connectOutput:-[BWNode output](objb toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v173, "inputs"), "objectAtIndexedSubscript:", 1), v259}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        output = [(BWNode *)v173 output];
      }

      goto LABEL_282;
    }

LABEL_267:
    v132 = v270;
    if ((v249 & 1) == 0)
    {
      goto LABEL_287;
    }

    v165 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    v323.receiver = v285;
    v323.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v323, sel_addNode_error_, v165, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v165 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v259}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output2 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v165 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v259}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output4 = [(NSArray *)[(BWNode *)v165 outputs] objectAtIndexedSubscript:0];
    goto LABEL_286;
  }

  v154 = -[BWStereoFusionNode initWithTelephotoSensorIDDictionary:cameraInfoByPortType:]([BWStereoFusionNode alloc], "initWithTelephotoSensorIDDictionary:cameraInfoByPortType:", v262, [*(v285 + v114[4]) cameraInfoByPortType]);
  v332.receiver = v285;
  v332.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v332, sel_addNode_error_, v154, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWStereoFusionNode *)v154 setAttachesInputBracketToOutputSampleBuffer:0];
  if (([schedulerCopy6 connectOutput:output toInput:-[BWStereoFusionNode wideInput](v154 pipelineStage:{"wideInput"), v259}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([schedulerCopy6 connectOutput:output2 toInput:-[BWStereoFusionNode telephotoInput](v154 pipelineStage:{"telephotoInput"), v259}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  defaultOutput2 = [(BWStereoFusionNode *)v154 defaultOutput];
  if (!v251)
  {
    output = defaultOutput2;
LABEL_282:
    v132 = v270;
    goto LABEL_287;
  }

  v156 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
  v331.receiver = v285;
  v331.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v331, sel_addNode_error_, v156, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v157 = [[BWGNRNode alloc] initWithSISEnabled:0 OISEnabled:0 LTMHDREnabled:v275 & 1 processingLTMHDRFusion:v275 & 1 portType:v270 sensorID:v241 sensorIDDictionary:v264 telephotoPortType:v267 telephotoSensorID:v248 telephotoSensorIDDictionary:v262];
  v330.receiver = v285;
  v330.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v330, sel_addNode_error_, v157, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWGNRNode *)v157 setAttachesInputBracketToOutputSampleBuffer:0];
  [(BWNode *)v157 setName:@"GNR"];
  v158 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
  v329.receiver = v285;
  v329.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v329, sel_addNode_error_, v158, &v372) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:-[BWStillImageBufferRouterNode HDROutput](v97 toInput:"HDROutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v156, "inputs"), "objectAtIndexedSubscript:", 0), v281}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v132 = v270;
  if (([scheduler connectOutput:-[BWStereoFusionNode stereoHDROutput](v154 toInput:"stereoHDROutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v156, "inputs"), "objectAtIndexedSubscript:", 1), v281}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:-[BWStereoFusionNode defaultOutput](v154 toInput:"defaultOutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v158, "inputs"), "objectAtIndexedSubscript:", 0), v281}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:-[BWNode output](v157 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v158, "inputs"), "objectAtIndexedSubscript:", 1), v281}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  output3 = [(BWNode *)v156 output];
  if (v275)
  {
    input2 = [(BWNode *)v157 input];
    schedulerCopy6 = scheduler;
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v122 = v273;
    if (([scheduler connectOutput:output3 toInput:input2 pipelineStage:v281] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  else
  {
    v122 = v273;
    if (([scheduler connectOutput:output3 toInput:-[BWNode input](v250 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v174 = [scheduler connectOutput:-[BWNode output](v250 toInput:"output") pipelineStage:{-[BWNode input](v157, "input"), v281}];
    schedulerCopy6 = scheduler;
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if ((v174 & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  output4 = [(BWNode *)v158 output];
LABEL_286:
  output = output4;
LABEL_287:
  if (v292)
  {
LABEL_288:
    clientIsCameraOrDerivative = [v122 clientIsCameraOrDerivative];
    v176 = v114[4];
    LOBYTE(v236) = 0;
    v177 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", 0, [*(v285 + v176) cameraInfoByPortType], v246, 1, clientIsCameraOrDerivative, 0, v236);
    v322.receiver = v285;
    v322.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v322, sel_addNode_error_, v177, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWNode *)v177 setName:@"Still Image Depth Converter"];
    -[BWDepthConverterNode setHorizontalSensorBinningFactor:](v177, "setHorizontalSensorBinningFactor:", [v122 horizontalSensorBinningFactor]);
    -[BWDepthConverterNode setVerticalSensorBinningFactor:](v177, "setVerticalSensorBinningFactor:", [v122 verticalSensorBinningFactor]);
    v178 = FigCaptureFrontDepthDataToRGBRotationAngle();
    [(BWDepthConverterNode *)v177 setStillGDRFilteringSupportEnabled:1];
    [(BWDepthConverterNode *)v177 setOutputFormat:1751411059];
    -[BWDepthConverterNode setOutputDimensions:](v177, "setOutputDimensions:", [v122 depthDataTargetDimensions]);
    [(BWDepthConverterNode *)v177 setBaseRotationDegrees:v178];
    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v177 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    *(v285 + 80) = v177;
    output = [(BWNode *)v177 output];
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  }

LABEL_291:
  if (depthDataDeliveryEnabled)
  {
    v179 = v255;
    if (!v254)
    {
      v179 = v132;
    }

    v180 = v241;
    if (v254)
    {
      v180 = v238;
    }

    v181 = v264;
    if (v254)
    {
      v181 = v246;
    }

    if (v269)
    {
      v182 = v267;
    }

    else
    {
      v182 = v179;
    }

    if (v269)
    {
      v183 = v248;
    }

    else
    {
      v183 = v180;
    }

    if (v269)
    {
      v184 = v262;
    }

    else
    {
      v184 = v181;
    }

    v185 = -[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc], "initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v182, v183, v184, [objc_msgSend(*(v285 + v114[4]) "cameraInfoByPortType")]);
    LODWORD(v186) = v26;
    v187 = [(FigCaptureCameraParameters *)v258 sdofRenderingVersionForPortType:v182 sensorIDString:v183 zoomFactor:v186];
    v188 = [BWStillImagePortraitMetadataNode alloc];
    v320 = v182;
    v293 = v185;
    v321 = v185;
    v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
    LODWORD(v190) = v26;
    v191 = [(BWStillImagePortraitMetadataNode *)v188 initWithNodeConfiguration:0 sdofRenderingVersion:v187 sensorConfigurationsByPortType:v189 defaultPortType:v182 defaultZoomFactor:v190];
    v319.receiver = v285;
    v319.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v319, sel_addNode_error_, v191, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v191 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v191 output];
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  }

  else
  {
    v182 = 0;
    v293 = 0;
  }

  if (portraitEffectsMatteDeliveryEnabled)
  {
    if ((v257 & 1) == 0)
    {
      v192 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v285 + v114[4]) scheduler:delegate priority:14];
      [(BWNode *)v192 setName:@"Landmarks Inference Node"];
      v193 = +[BWLandmarksInferenceConfiguration configuration];
      [v193 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
      -[BWInferenceNode addInferenceOfType:version:configuration:](v192, "addInferenceOfType:version:configuration:", 801, [v193 landmarksInferenceVersion] & 0xFFFFFFFFFFFFLL, v193);
      v318.receiver = v285;
      v318.super_class = FigCaptureStillImageSinkPipeline;
      if ((objc_msgSendSuper2(&v318, sel_addNode_error_, v192, &v372) & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v192 pipelineStage:{"input"), v281}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [(BWNode *)v192 output];
    }

    v194 = +[BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration personSegmentationAndMattingConfiguration];
    v195 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v194];
    [(BWNode *)v195 setName:@"Person Segmentation and Matting Conditional Router"];
    v317.receiver = v285;
    v317.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v317, sel_addNode_error_, v195, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v196 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v285 + 48) scheduler:delegate priority:14];
    v197 = v264;
    if (v254)
    {
      v197 = v246;
    }

    if (v269)
    {
      v198 = v262;
    }

    else
    {
      v198 = v197;
    }

    v199 = [(BWInferenceConfiguration *)[BWMattingInferenceConfiguration alloc] initWithInferenceType:201];
    [(BWInferenceConfiguration *)v199 setPriority:14];
    [(BWInferenceConfiguration *)v199 setTuningParameters:v198];
    LODWORD(v200) = v26;
    [(BWMattingInferenceConfiguration *)v199 setSdofRenderingTuningParameters:[FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v198 zoomFactor:v200]];
    LODWORD(v201) = v19;
    [(BWMattingInferenceConfiguration *)v199 setMainImageDownscalingFactor:v201];
    [(BWMattingInferenceConfiguration *)v199 setRefinedDepthDeliveryEnabled:v243];
    [(BWMattingInferenceConfiguration *)v199 setMetalCommandQueue:0];
    v202 = +[BWPersonSegmentationConfiguration portraitVersion];
    [(BWInferenceNode *)v196 addInferenceOfType:102 version:v202 & 0xFFFFFFFFFFFFLL];
    [(BWInferenceNode *)v196 addInferenceOfType:201 version:v202 & 0xFFFFFFFFFFFFLL configuration:v199];
    [(BWNode *)v196 setName:@"Person Segmentation and Matting Node"];
    v316.receiver = v285;
    v316.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v316, sel_addNode_error_, v196, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v203 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    [(BWNode *)v203 setName:@"Person Segmentation and Matting Funnel"];
    v315.receiver = v285;
    v315.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v315, sel_addNode_error_, v203, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:output toInput:-[BWNode input](v195 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v195 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v194, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v203, "inputs"), "objectAtIndexedSubscript:", 0), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v195 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v194, "personSegmentationAndMattingOuputIndex")), -[BWNode input](v196, "input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    schedulerCopy6 = scheduler;
    if (([scheduler connectOutput:-[BWNode output](v196 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v203, "inputs"), "objectAtIndexedSubscript:", 1), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v203 output];
    v114 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v122 = v273;
  }

  if (v257)
  {
    v204 = [BWStillImageFilterNode alloc];
    if (v293)
    {
      portType2 = [(BWSensorConfiguration *)v293 portType];
      v314 = v293;
      v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v314 forKeys:&portType2 count:1];
    }

    else
    {
      v206 = 0;
    }

    LOBYTE(v237) = 0;
    LODWORD(v236) = 0;
    LODWORD(v205) = v26;
    v207 = [(BWStillImageFilterNode *)v204 initWithNodeConfiguration:v263 sensorConfigurationsByPortType:v206 statusDelegate:0 depthDataDeliveryEnabled:depthDataDeliveryEnabled personSegmentationEnabled:portraitEffectsMatteDeliveryEnabled refinedDepthEnabled:v243 portraitRenderQuality:0.0 targetAspectRatio:v205 defaultPortType:v236 defaultZoomFactor:v182 backPressureDrivenPipelining:v237];
    v312.receiver = v285;
    v312.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v312, sel_addNode_error_, v207, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v207 pipelineStage:{"input"), v259}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v207 output];
  }

  if ([v122 allowsMultipleInflightCaptures])
  {
    v208 = [[BWStillImageTurnstileNode alloc] initWithStillImageCoordinator:*(v285 + 56)];
    v311.receiver = v285;
    v311.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v311, sel_addNode_error_, v208, &v372) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v208 pipelineStage:{"input"), v281}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v208 output];
  }

  v209 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:1 nodeConfiguration:0];
  [(BWStillImageScalerNode *)v209 setBlackFillingRequired:v249 & 1];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [v122 portraitEffectsMatteMainImageDownscalingFactor];
  if (v211 != 0.0)
  {
    v212 = MEMORY[0x1E696AD98];
    [v122 portraitEffectsMatteMainImageDownscalingFactor];
    [dictionary setObject:objc_msgSend(v212 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
  }

  [(BWStillImageScalerNode *)v209 setMainImageDownscalingFactorByAttachedMediaKey:dictionary];
  v310.receiver = v285;
  v310.super_class = FigCaptureStillImageSinkPipeline;
  if (objc_msgSendSuper2(&v310, sel_addNode_error_, v209, &v372))
  {
    if ([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v209 pipelineStage:{"input"), v281}])
    {
      output5 = [(BWNode *)v209 output];
      if ((v275 & 1) == 0)
      {
        v215 = v285;
        goto LABEL_349;
      }

      v214 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:0 sensorConfigurationsByPortType:0];
      [(BWMeteorHeadroomNode *)v214 setHeadroomProcessingType:[(FigCaptureCameraParameters *)v258 meteorHeadroomProcessingType]];
      v215 = v285;
      v309.receiver = v285;
      v309.super_class = FigCaptureStillImageSinkPipeline;
      if (objc_msgSendSuper2(&v309, sel_addNode_error_, v214, &v372))
      {
        if ([schedulerCopy6 connectOutput:output5 toInput:-[BWNode input](v214 pipelineStage:{"input"), v281}])
        {
          output5 = [(BWNode *)v214 output];
LABEL_349:
          v216 = [BWPhotoEncoderNode alloc];
          BYTE1(v236) = [v273 clientIsCameraOrDerivative];
          LOBYTE(v236) = 0;
          v217 = [(BWPhotoEncoderNode *)v216 initWithNodeConfiguration:v263 sensorConfigurationsByPortType:0 semanticDevelopmentVersion:0 inferenceScheduler:0 alwaysAwaitInference:0 portraitRenderQuality:0 deferredPhotoProcessorEnabled:v236 clientIsCameraOrDerivative:?];
          if (v273)
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:v273 sourceOutputsByPortType:v217 captureStatusDelegate:v256 inferenceScheduler:? graph:?];
          }

          -[BWPhotoEncoderNode setCameraSupportsFlash:](v217, "setCameraSupportsFlash:", [*(v215 + v114[4]) hasFlash]);
          if (portraitEffectsMatteDeliveryEnabled)
          {
            v218 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
            LODWORD(v219) = v19;
            v307 = 0x1F21AABB0;
            v308 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v218 initWithMainImageDownscalingFactor:0 propagationMode:v219];
            -[BWPhotoEncoderNode setAttachedMediaConfigurationByAttachedMediaKey:](v217, "setAttachedMediaConfigurationByAttachedMediaKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1]);
          }

          -[BWPhotoEncoderNode setUsesHighEncodingPriority:](v217, "setUsesHighEncodingPriority:", [v273 usesHighEncodingPriority]);
          -[BWPhotoEncoderNode setZeroShutterLagEnabled:](v217, "setZeroShutterLagEnabled:", [*(v215 + v114[4]) zeroShutterLagEnabled]);
          v306.receiver = v215;
          v306.super_class = FigCaptureStillImageSinkPipeline;
          if (objc_msgSendSuper2(&v306, sel_addNode_error_, v217, &v372))
          {
            if ([schedulerCopy6 connectOutput:output5 toInput:-[BWNode input](v217 pipelineStage:{"input"), v281}])
            {
              output6 = [(BWNode *)v217 output];
              if ([v242 optimizesImagesForOfflineVideoStabilization] && (v221 = objc_msgSend(v273, "horizontalSensorBinningFactor"), v222 = objc_msgSend(v273, "verticalSensorBinningFactor"), objc_msgSend(v273, "maxSupportedFrameRate"), output6 = FigCaptureBuildMotionAttachmentsNode(v215, output6, v221, v222, v281, objc_msgSend(v273, "motionAttachmentsSource"), objc_msgSend(*(v215 + v114[4]), "sensorIDDictionaryByPortType"), objc_msgSend(*(v215 + v114[4]), "cameraInfoByPortType"), v223, objc_msgSend(*(v215 + v114[4]), "activePortTypes"), 0, 0, 1, 1, 0, &v373), v373))
              {
                [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
              }

              else
              {
                v224 = -[BWStillImageSampleBufferSinkNode initWithSinkID:]([BWStillImageSampleBufferSinkNode alloc], "initWithSinkID:", [v215 sinkID]);
                [(BWNode *)v224 setName:@"Still Image Sink"];
                -[BWStillImageSampleBufferSinkNode setCameraSupportsFlash:](v224, "setCameraSupportsFlash:", [*(v215 + v114[4]) hasFlash]);
                v305.receiver = v215;
                v305.super_class = FigCaptureStillImageSinkPipeline;
                if (objc_msgSendSuper2(&v305, sel_addNode_error_, v224, &v372))
                {
                  *(v215 + 64) = v224;
                  if ([schedulerCopy6 connectOutput:output6 toInput:-[BWNode input](v224 pipelineStage:{"input"), v281}])
                  {
                    v303 = 0u;
                    v304 = 0u;
                    v301 = 0u;
                    v302 = 0u;
                    nodes = [v215 nodes];
                    v226 = [nodes countByEnumeratingWithState:&v301 objects:v300 count:16];
                    if (v226)
                    {
                      v227 = v226;
                      v228 = *v302;
                      do
                      {
                        for (n = 0; n != v227; ++n)
                        {
                          if (*v302 != v228)
                          {
                            objc_enumerationMutation(nodes);
                          }

                          v230 = *(*(&v301 + 1) + 8 * n);
                          [v230 setDeferredPreparePriority:1];
                          v298 = 0u;
                          v299 = 0u;
                          v296 = 0u;
                          v297 = 0u;
                          inputs = [v230 inputs];
                          v232 = [inputs countByEnumeratingWithState:&v296 objects:v295 count:16];
                          if (v232)
                          {
                            v233 = v232;
                            v234 = *v297;
                            do
                            {
                              for (ii = 0; ii != v233; ++ii)
                              {
                                if (*v297 != v234)
                                {
                                  objc_enumerationMutation(inputs);
                                }

                                [objc_msgSend(*(*(&v296 + 1) + 8 * ii) "connection")];
                              }

                              v233 = [inputs countByEnumeratingWithState:&v296 objects:v295 count:16];
                            }

                            while (v233);
                          }
                        }

                        v227 = [nodes countByEnumeratingWithState:&v301 objects:v300 count:16];
                      }

                      while (v227);
                    }

                    [*(v215 + 56) setDeferredPreparePriority:4];
                  }

                  else
                  {
                    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
                  }
                }

                else
                {
                  [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
                }
              }
            }

            else
            {
              [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            }
          }

          else
          {
            fig_log_get_emitter();
            FigDebugAssert3();
          }

          goto LABEL_374;
        }

        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      }

      else
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      }
    }

    else
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    }
  }

  else
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
  }

LABEL_374:
  result = v373;
  if (!v373)
  {
    if (v372)
    {
      return [v372 code];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)a1 captureDevice:(void *)a2 sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:name:.cold.1(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.22()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.23()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.24()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.25()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.26()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.27()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.28()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.29()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.30()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.31()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.32()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.33()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.34()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.35()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.36()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.37()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.38()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.39()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.40()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.41()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.42()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.43()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.44()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.45()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.46()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.47()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.48()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.49()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.50()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.51()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.52()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.53()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.54()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.55()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.56()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.57()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.58()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.59()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.60()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.61()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.62()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.63()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.64()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.65()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.66()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.67()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.68()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.69()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.70()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.71()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.72()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.73()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.74()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.75()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.76()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.77()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.78()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.79()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.80()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.81()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.82()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.83()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.84()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.85()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.86()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.87()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.88()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.89()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.90()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.91()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.92()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.93()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.94()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.95()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.96()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)_buildStillImageSinkPipelineWithConfiguration:(void *)a3 sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.97(void *result, void *a2, void *a3)
{
  if (result[13])
  {
    v5 = result;
    result = [result outputPixelFormat];
    if (result == 875704438)
    {
      result = [objc_msgSend(a3 "output")];
      if (!result)
      {
        return [a2 setInputColorInfo:v5[13]];
      }
    }
  }

  return result;
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.98()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.99()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.100()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.101()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end
@interface FigCaptureCinematographyPipeline
- (id)_buildPreviewOutputNetworkWithGraph:(id)result previewOutput:;
- (id)_buildVideoCaptureOutputNetworkWithGraph:(id)result videoCaptureOutput:;
- (uint64_t)_buildCinematographyPipeline:(uint64_t)pipeline videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(uint64_t)masksOutput previewOutput:(uint64_t)previewOutput auxiliaryOutput:(void *)auxiliaryOutput sourceID:(void *)d graph:(void *)graph captureDevice:(uint64_t)self0 inferenceScheduler:;
- (uint64_t)cinematicVideoFocusDetectionsProvider;
- (uint64_t)depthOutputDimensions;
- (uint64_t)detectedObjectsOutput;
- (uint64_t)getSmartStyle;
- (uint64_t)globalMetadata;
- (uint64_t)loadInferenceNetworksForSmartStyle;
- (uint64_t)nextPreviewOutput;
- (uint64_t)nextVideoCaptureOutput;
- (uint64_t)previewOutputTransform;
- (uint64_t)semanticStyleSceneObserver;
- (uint64_t)setSmartStyle:(uint64_t)result;
- (uint64_t)sourceID;
- (uint64_t)videoCaptureOutputTransform;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)configuration videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(uint64_t)masksOutput previewOutput:(uint64_t)previewOutput auxiliaryOutput:(void *)auxiliaryOutput graph:(uint64_t)graph name:(void *)name sourceID:(void *)self0 captureDevice:(uint64_t)self1 inferenceScheduler:(_DWORD *)self2 errorOut:;
@end

@implementation FigCaptureCinematographyPipeline

- (uint64_t)cinematicVideoFocusDetectionsProvider
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCinematographyPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)configuration videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(uint64_t)masksOutput previewOutput:(uint64_t)previewOutput auxiliaryOutput:(void *)auxiliaryOutput graph:(uint64_t)graph name:(void *)name sourceID:(void *)self0 captureDevice:(uint64_t)self1 inferenceScheduler:(_DWORD *)self2 errorOut:
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = FigCaptureCinematographyPipeline;
  v18 = objc_msgSendSuper2(&v23, sel_initWithGraph_name_, auxiliaryOutput, graph);
  v19 = v18;
  if (v18)
  {
    v21 = [(FigCaptureCinematographyPipeline *)v18 _buildCinematographyPipeline:a2 videoSourceCaptureOutput:configuration sourceSemanticMasksOutput:output previewOutput:masksOutput auxiliaryOutput:previewOutput sourceID:name graph:auxiliaryOutput captureDevice:d inferenceScheduler:device];
    if (v21)
    {
      v22 = v21;
      fig_log_get_emitter();
      FigDebugAssert3();
      if (scheduler)
      {
        *scheduler = v22;
      }

      return 0;
    }
  }

  return v19;
}

- (uint64_t)_buildCinematographyPipeline:(uint64_t)pipeline videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(uint64_t)masksOutput previewOutput:(uint64_t)previewOutput auxiliaryOutput:(void *)auxiliaryOutput sourceID:(void *)d graph:(void *)graph captureDevice:(uint64_t)self0 inferenceScheduler:
{
  if (!result)
  {
    return result;
  }

  v15 = result;
  v137[0] = 0;
  v136 = 0;
  *(result + 32) = a2;
  if (masksOutput)
  {
    pipelineCopy = masksOutput;
  }

  else
  {
    pipelineCopy = pipeline;
  }

  v17 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.cinematic_video.color_inferences" priority:14];
  v120 = v15;
  pipelineCopy2 = pipeline;
  v122 = a2;
  [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.cinematic_video.depth" priority:14];
  [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.cinematic_video.cinematography" priority:14];
  masksOutputCopy2 = masksOutput;
  if (a2)
  {
    auxiliaryOutputCopy = auxiliaryOutput;
    v18 = *(a2 + 60);
    v19 = v18 == 3;
    if (v18 == 3)
    {
      previewOutputCopy = previewOutput;
      v123 = v18 == 3;
      v20 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
      [(FigCaptureConnectionConfiguration *)v20 setSourceConfiguration:*(a2 + 32)];
      [(FigVideoCaptureConnectionConfiguration *)v20 setVideoStabilizationMethod:3];
      v21 = [FigCaptureVISPipeline alloc];
      OUTLINED_FUNCTION_6_81();
      dCopy4 = d;
      OUTLINED_FUNCTION_8_62();
      v29 = OUTLINED_FUNCTION_10_56(v22, pipelineCopy, v23, v24, v25, v26, v27, v28, v85, HIDWORD(v85), v88, v91, *v93, v93[4], v95, HIDWORD(v95), v97, v99, v101, v103, SHIBYTE(v103), v105, v107, BYTE4(v107), BYTE5(v107), SBYTE6(v107), HIBYTE(v107), v109[0], v109[1], v109[2], v109[3], v109[4], v111, v113);
      if (!v29 || (v30 = [-[FigCaptureVISPipeline visNode](v29) output], v31 = [FigCaptureVISPipeline alloc], OUTLINED_FUNCTION_6_81(), OUTLINED_FUNCTION_8_62(), (v39 = OUTLINED_FUNCTION_10_56(v32, previewOutputCopy, v33, v34, v35, v36, v37, v38, v86, HIDWORD(v86), v89, v92, *v94, v94[4], v96, HIDWORD(v96), v98, v100, v102, v104, SHIBYTE(v104), v106, v108, BYTE4(v108), BYTE5(v108), SBYTE6(v108), HIBYTE(v108), v110[0], v110[1], v110[2], v110[3], v110[4], v112, v114)) == 0))
      {
        OUTLINED_FUNCTION_3_19();
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_110();
        FigDebugAssert3();
        OUTLINED_FUNCTION_3_19();
        fig_log_get_emitter();
        goto LABEL_106;
      }

      previewOutput = [-[FigCaptureVISPipeline visNode](v39) output];
      if (*(a2 + 57))
      {
        v40 = &unk_1F224A0E0;
      }

      else
      {
        v40 = 0;
      }

      if (*(a2 + 58))
      {
        v41 = &unk_1F224A0F8;
      }

      else
      {
        v41 = 0;
      }

      if (*(a2 + 59))
      {
        v42 = &unk_1F224A110;
      }

      else
      {
        v42 = 0;
      }

      BYTE12(v90) = 0;
      *(&v90 + 4) = 1;
      LOBYTE(v90) = 1;
      v43 = [BWSlaveFrameSynchronizerNode initWithDepthEnabled:"initWithDepthEnabled:numberOfInputs:syncSlaveForMasterPortTypes:separateDepthComponentsEnabled:preLTMThumbnailEnabledInputs:postColorProcessingThumbnailEnabledInputs:weightSegmentMapEnabledInputs:differentInputFormatsSupported:bufferSize:numberOfSlaveFramesToSkip:startEmittingMasterFramesBeforeSlaveStreamStarts:" numberOfInputs:0 syncSlaveForMasterPortTypes:2 separateDepthComponentsEnabled:0 preLTMThumbnailEnabledInputs:0 postColorProcessingThumbnailEnabledInputs:v40 weightSegmentMapEnabledInputs:v41 differentInputFormatsSupported:v42 bufferSize:v90 numberOfSlaveFramesToSkip:? startEmittingMasterFramesBeforeSlaveStreamStarts:?];
      [(BWNode *)v43 setName:@"REF/AUX sync node"];
      if (([v15 addNode:v43 error:&v136] & 1) == 0 || (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v43, "inputs"), "objectAtIndexedSubscript:", 1), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", v30) & 1) == 0) || (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v43, "inputs"), "objectAtIndexedSubscript:", 0), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", previewOutput) & 1) == 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_118();
LABEL_108:
        FigDebugAssert3();
        goto LABEL_86;
      }

      pipelineCopy = [(BWNode *)v43 output];
      if (*(a2 + 40) == 1)
      {
        previewOutputCopy2 = previewOutput;
        v44 = *(a2 + 56);
        graphCopy5 = graph;
        v45 = +[BWSmartStyleLearningNode newISPSMGProcessingSession:](BWSmartStyleLearningNode, "newISPSMGProcessingSession:", [graph device]);
        v46 = -[BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:]([BWSmartStyleLearningNode alloc], "initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:", 1, 1, v44, v45, [objc_msgSend(*(a2 + 32) "requiredFormat")], objc_msgSend(objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider, "sharedCaptureSourceBackingsProvider"), "commonSettings"), "smartStyleRenderingVersion"));

        if (!v46)
        {
          goto LABEL_86;
        }

        [(BWNode *)v46 setName:@"Cinematic SmartStyle Learning"];
        [(BWSmartStyleLearningNode *)v46 setDisableWaitForCoefficientsOnFirstFrame:0];
        [(BWSmartStyleLearningNode *)v46 setSubjectRelightingEnabled:0];
        -[BWSmartStyleLearningNode setCameraInfoByPortType:](v46, "setCameraInfoByPortType:", [graph cameraInfoByPortType]);
        [(BWSmartStyleLearningNode *)v46 setSmartStyle:*(a2 + 48)];
        v135.receiver = v15;
        v135.super_class = FigCaptureCinematographyPipeline;
        if ((objc_msgSendSuper2(&v135, sel_addNode_error_, v46, &v136) & 1) == 0)
        {
          goto LABEL_107;
        }

        [(NSArray *)[(BWNode *)v46 inputs] objectAtIndexedSubscript:0];
        if (([OUTLINED_FUNCTION_129() connectOutput:pipelineCopy toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_107;
        }

        if (output)
        {
          [(NSArray *)[(BWNode *)v46 inputs] objectAtIndexedSubscript:1];
          if (([OUTLINED_FUNCTION_129() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        pipelineCopy = [(BWNode *)v46 output];
        *(v15 + 64) = v46;
        v19 = v123;
        previewOutput = previewOutputCopy2;
      }

      else
      {
        graphCopy5 = graph;
        v19 = v123;
      }
    }

    else
    {
      dCopy4 = d;
      graphCopy5 = graph;
    }

    previewOutputCopy3 = previewOutput;
    *(v15 + 72) = auxiliaryOutputCopy;
    outputAspectRatio = [*(a2 + 32) outputAspectRatio];
    if (outputAspectRatio)
    {
      v50 = outputAspectRatio;
      v51 = pipelineCopy;
      dCopy3 = dCopy4;
      goto LABEL_36;
    }

    v51 = pipelineCopy;
    v53 = *(a2 + 32);
  }

  else
  {
    previewOutputCopy4 = previewOutput;
    v51 = pipelineCopy;
    previewOutputCopy3 = previewOutputCopy4;
    *(v15 + 72) = auxiliaryOutput;
    outputAspectRatio2 = [0 outputAspectRatio];
    v19 = 0;
    if (outputAspectRatio2)
    {
      v50 = outputAspectRatio2;
      dCopy3 = d;
      graphCopy5 = graph;
      goto LABEL_36;
    }

    v53 = 0;
    dCopy4 = d;
    graphCopy5 = graph;
  }

  dCopy3 = dCopy4;
  v54 = [objc_msgSend(v53 "requiredFormat")];
  if (v54 > SHIDWORD(v54))
  {
    v50 = 3;
  }

  else
  {
    v50 = 4;
  }

LABEL_36:
  *(v15 + 48) = [[BWCinematicPerceptionNode alloc] initWithConvEngineSupportWithCaptureDevice:graphCopy5 scheduler:device priority:6 depthInferenceEnabled:v19 aspectRatio:v50];
  [*(v15 + 48) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ %@", objc_msgSend(v15, "name"), @"Cinematic Perception"}];
  if (([v15 addNode:*(v15 + 48) error:&v136] & 1) == 0)
  {
    goto LABEL_107;
  }

  if (([dCopy3 connectOutput:v51 toInput:objc_msgSend(*(v15 + 48) pipelineStage:{"input"), v17}] & 1) == 0)
  {
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_110();
    FigDebugAssert3();
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
LABEL_106:
    v137[0] = FigSignalErrorAtGM();
    goto LABEL_86;
  }

  output = [*(v15 + 48) output];
  v124 = v19;
  if ([graphCopy5 depthType] - 1 > 1)
  {
    output2 = output;
    goto LABEL_44;
  }

  v56 = [[BWDepthSynchronizerNode alloc] initForStreaming:1 separateDepthComponentsEnabled:0];
  [v56 setName:@"Cinematography Depth Synchronizer"];
  [v56 setFlushOnDepthEOD:1];
  if (([v15 addNode:v56 error:&v136] & 1) == 0 || (objc_msgSend(v56, "imageInput"), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", output) & 1) == 0) || (objc_msgSend(v56, "depthInput"), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", previewOutputCopy3) & 1) == 0))
  {
LABEL_107:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_118();
    goto LABEL_108;
  }

  output2 = [v56 output];
LABEL_44:
  v128 = +[FigCaptureCameraParameters sharedInstance];
  v57 = *off_1E798A0C0;
  sensorIDString = [objc_msgSend(graphCopy5 "captureStream")];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  activePortTypes = [graphCopy5 activePortTypes];
  v60 = [activePortTypes countByEnumeratingWithState:&v131 objects:v130 count:16];
  v61 = *off_1E798A0E8;
  v116 = v57;
  if (!v60)
  {
    goto LABEL_58;
  }

  v62 = v60;
  v63 = *v132;
  v64 = *off_1E798A0D8;
  v65 = *off_1E798A0F8;
  do
  {
    for (i = 0; i != v62; ++i)
    {
      if (*v132 != v63)
      {
        objc_enumerationMutation(activePortTypes);
      }

      v67 = *(*(&v131 + 1) + 8 * i);
      if ([v67 isEqualToString:v64])
      {
        bravoTelephotoCaptureStream = [graph bravoTelephotoCaptureStream];
LABEL_53:
        sensorIDString = [bravoTelephotoCaptureStream sensorIDString];
        v57 = v67;
        continue;
      }

      if ([v67 isEqualToString:v61])
      {
        bravoTelephotoCaptureStream = [graph pearlInfraredCaptureStream];
        goto LABEL_53;
      }

      if ([v67 isEqualToString:v65])
      {
        v57 = v67;
      }
    }

    v62 = [activePortTypes countByEnumeratingWithState:&v131 objects:v130 count:16];
  }

  while (v62);
LABEL_58:
  v69 = [v57 isEqualToString:v61];
  LODWORD(v70) = 1.0;
  if ((v69 & 1) == 0)
  {
    [graph requestedZoomFactorRelativeToPortType:{v116, v70}];
  }

  v71 = [(FigCaptureCameraParameters *)v128 portraitSceneMonitoringParametersForPortType:v57 sensorIDString:sensorIDString zoomFactorRelativeToWidePortType:v70];
  videoDepthConfiguration = [*(v120 + 48) videoDepthConfiguration];
  if (v122)
  {
    v73 = *(v122 + 16);
  }

  else
  {
    v73 = 0;
  }

  v74 = [FigCaptureConnectionConfigurationWithSinkType(v73 4)];
  if (pipelineCopy2)
  {
    v75 = masksOutputCopy2 == 0;
  }

  else
  {
    v75 = 1;
  }

  v76 = !v75;
  v77 = [BWRealtimeCinematographyNode alloc];
  if (v122)
  {
    v78 = *(v122 + 8);
    [graph simulatedAperture];
    v79 = *(v122 + 40);
  }

  else
  {
    [graph simulatedAperture];
    v78 = 0;
    v79 = 0;
  }

  LOBYTE(v87) = v74 == 0;
  *(v120 + 56) = [(BWRealtimeCinematographyNode *)v77 initWithObjectMetadataIdentifiers:v78 cachedSimulatedAperture:graph captureDevice:v71 tuningParameters:videoDepthConfiguration videoDepthConfiguration:v79 & 1 smartStyleLearningEnabled:v76 highResolutionInputEnabled:v87 transformCinematographyDetectionsForMovieFileOutput:?];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(v120, "name"), @"Cinematography"];
  [OUTLINED_FUNCTION_9_67() setName:?];
  if (([v120 addNode:*(v120 + 56) error:&v136] & 1) == 0)
  {
LABEL_104:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_118();
    goto LABEL_108;
  }

  if ((v124 & 1) == 0)
  {
    *(v120 + 40) = [[BWVideoDepthNode alloc] initWithInferenceScheduler:device captureDevice:graph videoDepthConfiguration:videoDepthConfiguration extraDepthOutputRetainedBufferCount:0 error:v137];
    if (v137[0])
    {
      goto LABEL_91;
    }

    [*(v120 + 40) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ %@", objc_msgSend(v120, "name"), @"Video Depth Node"}];
    if ([v120 addNode:*(v120 + 40) error:&v136])
    {
      [*(v120 + 40) input];
      if ([OUTLINED_FUNCTION_129() connectOutput:output2 toInput:? pipelineStage:?])
      {
        output3 = [*(v120 + 40) output];
        goto LABEL_77;
      }
    }

    goto LABEL_104;
  }

  output3 = output2;
LABEL_77:
  [OUTLINED_FUNCTION_9_67() input];
  if (([OUTLINED_FUNCTION_129() connectOutput:output3 toInput:? pipelineStage:?] & 1) == 0 || v76 && (objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_9_67(), "inputs"), "objectAtIndexedSubscript:", 1), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", pipelineCopy2) & 1) == 0))
  {
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_110();
    FigDebugAssert3();
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    goto LABEL_106;
  }

  if (v122)
  {
    v81 = *(v122 + 16);
  }

  else
  {
    v81 = 0;
  }

  if ([v81 count] >= 2 && (objc_msgSend(OUTLINED_FUNCTION_9_67(), "movieFileOutput"), -[FigCaptureCinematographyPipeline _buildVideoCaptureOutputNetworkWithGraph:videoCaptureOutput:](v120)) || (!v122 ? (v82 = 0) : (v82 = *(v122 + 24)), objc_msgSend(v82, "count") >= 2 && (objc_msgSend(OUTLINED_FUNCTION_9_67(), "previewOutput"), -[FigCaptureCinematographyPipeline _buildPreviewOutputNetworkWithGraph:previewOutput:](v120))))
  {
LABEL_91:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_35();
    goto LABEL_108;
  }

LABEL_86:
  result = v137[0];
  if (!v137[0])
  {
    if (v136)
    {
      return [v136 code];
    }
  }

  return result;
}

- (id)_buildVideoCaptureOutputNetworkWithGraph:(id)result videoCaptureOutput:
{
  if (result)
  {
    OUTLINED_FUNCTION_11_55();
    v2 = [BWFanOutNode alloc];
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0;
    }

    v5 = OUTLINED_FUNCTION_12_54([v4 count]);

    v6 = v5;
    *(v1 + 80) = v6;
    [v6 setName:@"Cinematography Video Capture Splitter Node"];
    *(v1 + 88) = 0;
    v7.receiver = v1;
    v7.super_class = FigCaptureCinematographyPipeline;
    if ((objc_msgSendSuper2(&v7, sel_addNode_error_, v5, &v8) & 1) == 0 || (OUTLINED_FUNCTION_13_44([v5 input]) & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    result = v8;
    if (v8)
    {
      return [v8 code];
    }
  }

  return result;
}

- (id)_buildPreviewOutputNetworkWithGraph:(id)result previewOutput:
{
  if (result)
  {
    OUTLINED_FUNCTION_11_55();
    v2 = [BWFanOutNode alloc];
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = *(v3 + 24);
    }

    else
    {
      v4 = 0;
    }

    v5 = OUTLINED_FUNCTION_12_54([v4 count]);

    v6 = v5;
    *(v1 + 96) = v6;
    [v6 setName:@"Cinematography Preview Splitter Node"];
    *(v1 + 104) = 0;
    v7.receiver = v1;
    v7.super_class = FigCaptureCinematographyPipeline;
    if ((objc_msgSendSuper2(&v7, sel_addNode_error_, v5, &v8) & 1) == 0 || (OUTLINED_FUNCTION_13_44([v5 input]) & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    result = v8;
    if (v8)
    {
      return [v8 code];
    }
  }

  return result;
}

- (uint64_t)depthOutputDimensions
{
  if (result)
  {
    videoDepthConfiguration = [*(result + 48) videoDepthConfiguration];

    return [videoDepthConfiguration outputDimensions];
  }

  return result;
}

- (uint64_t)detectedObjectsOutput
{
  if (result)
  {
    return [*(result + 56) detectedObjectsOutput];
  }

  return result;
}

- (uint64_t)globalMetadata
{
  if (result)
  {
    return [*(result + 56) globalMetadata];
  }

  return result;
}

- (uint64_t)setSmartStyle:(uint64_t)result
{
  if (result)
  {
    return [*(result + 64) setSmartStyle:a2];
  }

  return result;
}

- (uint64_t)getSmartStyle
{
  if (result)
  {
    return [*(result + 64) smartStyle];
  }

  return result;
}

- (uint64_t)loadInferenceNetworksForSmartStyle
{
  if (result)
  {
    return [*(result + 64) loadInferenceNetwork];
  }

  return result;
}

- (uint64_t)semanticStyleSceneObserver
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)nextVideoCaptureOutput
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    v3 = *(v1 + 88);
    if (v2)
    {
      if ([objc_msgSend(v2 "outputs")] > v3)
      {
        result = [objc_msgSend(*(v1 + 80) "outputs")];
LABEL_7:
        ++*(v1 + 88);
        return result;
      }
    }

    else if (!v3)
    {
      result = [*(v1 + 56) movieFileOutput];
      goto LABEL_7;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  return result;
}

- (uint64_t)videoCaptureOutputTransform
{
  if (self)
  {
    if (*(self + 80))
    {
      movieFileOutput = [objc_msgSend(*(self + 80) "outputs")];
    }

    else
    {
      movieFileOutput = [*(self + 56) movieFileOutput];
    }

    v2 = movieFileOutput;
    if (movieFileOutput)
    {
      while (1)
      {
        formatRequirements = [v2 formatRequirements];
        if ([formatRequirements width])
        {
          if ([formatRequirements height])
          {
            break;
          }
        }

        v2 = [objc_msgSend(objc_msgSend(objc_msgSend(v2 "node")];
        if (!v2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      formatRequirements = 0;
    }

    [formatRequirements width];
    [formatRequirements height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (uint64_t)nextPreviewOutput
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    v3 = *(v1 + 104);
    if (v2)
    {
      if ([objc_msgSend(v2 "outputs")] > v3)
      {
        result = [objc_msgSend(*(v1 + 96) "outputs")];
LABEL_7:
        ++*(v1 + 104);
        return result;
      }
    }

    else if (!v3)
    {
      result = [*(v1 + 56) previewOutput];
      goto LABEL_7;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  return result;
}

- (uint64_t)previewOutputTransform
{
  if (self)
  {
    if (*(self + 96))
    {
      previewOutput = [objc_msgSend(*(self + 96) "outputs")];
    }

    else
    {
      previewOutput = [*(self + 56) previewOutput];
    }

    v2 = previewOutput;
    if (previewOutput)
    {
      while (1)
      {
        formatRequirements = [v2 formatRequirements];
        if ([formatRequirements width])
        {
          if ([formatRequirements height])
          {
            break;
          }
        }

        v2 = [objc_msgSend(objc_msgSend(objc_msgSend(v2 "node")];
        if (!v2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      formatRequirements = 0;
    }

    [formatRequirements width];
    [formatRequirements height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (uint64_t)sourceID
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

@end
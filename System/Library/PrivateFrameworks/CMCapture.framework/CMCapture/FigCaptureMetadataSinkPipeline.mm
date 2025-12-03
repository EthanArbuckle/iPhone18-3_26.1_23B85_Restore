@interface FigCaptureMetadataSinkPipeline
- (id)_buildMetadataDetectorSinkPipeline:(void *)pipeline graph:(void *)graph mrcSourceOutput:(void *)output captureDevice:(void *)device mrcOutputsOut:(uint64_t)out inferenceScheduler:;
- (id)_buildSceneClassificationPipeline:(uint64_t)pipeline graph:(void *)graph upstreamOutput:(uint64_t)output metadataGatingNode:(uint64_t)node captureDevice:(uint64_t)device inferenceScheduler:(void *)scheduler outputOut:;
- (uint64_t)_buildFaceTrackingPipeline:(uint64_t)pipeline graph:(void *)graph videoCaptureOutput:(void *)output pipelineStage:;
- (uint64_t)_buildMetadataSinkPipeline:(uint64_t)result graph:(uint64_t)graph videoPreviewOutput:(uint64_t)output offlineVISMotionDataSourceOutput:(id)sourceOutput metadataSourceOutputsByCategory:(void *)category captureDevice:(void *)device faceTrackingPipelineStage:(void *)stage clientAuditToken:(uint64_t)token inferenceScheduler:(__int128 *)scheduler delegate:(uint64_t)self0;
- (uint64_t)detectedObjectBoxedMetadataOutputs;
- (uint64_t)extendForNodeOutputs:(void *)outputs withConnectionConfiguration:;
- (uint64_t)mrcLowPowerModeEnabled;
- (uint64_t)mrcSceneObserver;
- (uint64_t)removeNodeOutputs:(void *)outputs withConnectionConfiguration:;
- (uint64_t)setDiscardsFaceDetectionSampleData:(uint64_t)result;
- (uint64_t)setDiscardsFaceTrackingSampleData:(uint64_t)result;
- (uint64_t)setDiscardsMRCSampleData:(uint64_t)result;
- (uint64_t)setFaceTrackingSuspended:(uint64_t)result;
- (uint64_t)setMrcSuspended:(uint64_t)result;
- (uint64_t)setRectOfInterest:(double)interest;
- (uint64_t)setSceneClassifierSuspended:(uint64_t)result;
- (uint64_t)setSemanticStyleSceneObserver:(uint64_t)result;
- (uint64_t)smartCameraInferenceOutput;
- (uint64_t)sourceDeviceType;
- (uint64_t)sourceID;
- (void)_buildMetadataObjectRemoteQueueSinkPipeline:(void *)pipeline graph:(void *)graph metadataNodeOutputs:(uint64_t)outputs videoPreviewEnabled:(uint64_t)enabled delegate:(_OWORD *)delegate clientAuditToken:;
- (void)_buildPreviewHistogramSinkPipeline:(void *)pipeline graph:(void *)graph videoPreviewHistogramOutput:;
- (void)dealloc;
- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name videoPreviewOutput:(uint64_t)output offlineVISMotionDataSourceOutput:(void *)sourceOutput metadataSourceOutputsByCategory:(void *)category captureDevice:(void *)device faceTrackingPipelineStage:(void *)stage clientAuditToken:(uint64_t)token inferenceScheduler:(__int128 *)configuration0 delegate:(uint64_t)configuration1;
@end

@implementation FigCaptureMetadataSinkPipeline

- (uint64_t)sourceDeviceType
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)sourceID
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)smartCameraInferenceOutput
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)mrcSceneObserver
{
  if (result)
  {
    if (*(result + 80))
    {
      return 0;
    }

    else
    {
      return *(result + 56);
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMetadataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (id)_buildMetadataDetectorSinkPipeline:(void *)pipeline graph:(void *)graph mrcSourceOutput:(void *)output captureDevice:(void *)device mrcOutputsOut:(uint64_t)out inferenceScheduler:
{
  if (result)
  {
    v9 = result;
    v44 = 0;
    if (a2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    v38 = +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.mrc", [v10 sourceConfiguration]), 0, 1);
    [graph setName:@"MRC"];
    LODWORD(v11) = 30.0;
    [graph setMaxSampleDataOutputRate:v11];
    if (a2)
    {
      v12 = FigCaptureMetadataObjectConfigurationRequiresMRCNode(*(a2 + 8));
      v13 = FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(*(a2 + 8));
      v14 = FigCaptureMetadataObjectConfigurationRequiresTextLocalization(*(a2 + 8));
      v15 = *(a2 + 49);
      v16 = *(a2 + 33);
      v17 = [BWMetadataDetectorGatingNode alloc];
      if (v16 == 1)
      {
        v18 = [(BWMetadataDetectorGatingNode *)v17 initWithSceneClassifierVersion:*(a2 + 34) | (*(a2 + 38) << 32) mrcEnabled:v12 appClipCodeEnabled:v13 textLocalizationEnabled:v14 lowPowerModeEnabled:*(a2 + 32) compressed8BitInputEnabled:v15];
        goto LABEL_9;
      }

      v19 = *(a2 + 32);
    }

    else
    {
      v12 = FigCaptureMetadataObjectConfigurationRequiresMRCNode(0);
      v13 = FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(0);
      v14 = FigCaptureMetadataObjectConfigurationRequiresTextLocalization(0);
      v17 = [BWMetadataDetectorGatingNode alloc];
      v15 = 0;
      v19 = 0;
    }

    v18 = [(BWMetadataDetectorGatingNode *)v17 initWithMRCEnabled:v12 appClipCodeEnabled:v13 textLocalizationEnabled:v14 lowPowerModeEnabled:v19 & 1 compressed8BitInputEnabled:v15];
LABEL_9:
    v20 = v18;
    v43.receiver = v9;
    v43.super_class = FigCaptureMetadataSinkPipeline;
    if ((objc_msgSendSuper2(&v43, sel_addNode_error_, v20, &v44) & 1) == 0)
    {
      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
      goto LABEL_25;
    }

    if (([pipeline connectOutput:graph toInput:-[BWNode input](v20 pipelineStage:{"input"), v38}] & 1) == 0)
    {
      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
      goto LABEL_25;
    }

    v9[7] = v20;
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[BWNode outputs](v20, "outputs"), "count")}];
    v22 = v21;
    if (v12)
    {
      v34 = v21;
      v23 = objc_alloc_init(BWMRCNode);
      if (a2)
      {
        v24 = *(a2 + 8);
        v25 = *(a2 + 32);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      -[BWMRCNode setMrcIdentifiers:](v23, "setMrcIdentifiers:", [v24 metadataIdentifiers]);
      [v24 metadataRectOfInterest];
      [(BWMRCNode *)v23 setRectOfInterest:?];
      [(BWMRCNode *)v23 setLowPowerModeEnabled:v25 & 1];
      [(BWMRCNode *)v23 setDetectedResultsObserver:[(BWMetadataDetectorGatingNode *)v20 mrcResultsObserver]];
      v42.receiver = v9;
      v42.super_class = FigCaptureMetadataSinkPipeline;
      if ((objc_msgSendSuper2(&v42, sel_addNode_error_, v23, &v44) & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      v9[8] = v23;
      if (([pipeline connectOutput:-[BWMetadataDetectorGatingNode mrcOutput](v20 toInput:"mrcOutput") pipelineStage:{objc_msgSend(v9[8], "input"), +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", @"com.apple.coremedia.capture.mrc.barcode", 0, 0)}] & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      v22 = v34;
      [v34 addObject:{-[BWNode output](v23, "output")}];
    }

    if (v13)
    {
      v26 = [[BWAppClipCodeNode alloc] initWithProcessingQueuePriority:[(BWPipelineStage *)v38 priority]];
      [(BWAppClipCodeNode *)v26 setDetectedResultsObserver:[(BWMetadataDetectorGatingNode *)v20 appClipCodeResultsObserver]];
      v41.receiver = v9;
      v41.super_class = FigCaptureMetadataSinkPipeline;
      if ((objc_msgSendSuper2(&v41, sel_addNode_error_, v26, &v44) & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      if (([pipeline connectOutput:-[BWMetadataDetectorGatingNode appClipCodeOutput](v20 toInput:"appClipCodeOutput") pipelineStage:{-[BWNode input](v26, "input"), +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", @"com.apple.coremedia.capture.mrc.app-clip-code", 0, 0)}] & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      [v22 addObject:{-[BWNode output](v26, "output")}];
    }

    if (!v14)
    {
LABEL_22:
      if (device)
      {
        *device = v22;
      }

      [output registerForAEMatrixMetadata];
      goto LABEL_25;
    }

    v27 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:output scheduler:out priority:6];
    [(BWNode *)v27 setName:@"Text Localization"];
    if (a2)
    {
      v28 = *(a2 + 96);
      if (v28 >= 0)
      {
        v29 = *(a2 + 96);
      }

      else
      {
        v29 = -v28;
      }

      if (v29 == 90)
      {
        v30 = v22;
        v31 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = v22;
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v31 = v28 == 270;
LABEL_47:
    textLocalizationResultsObserver = [(BWMetadataDetectorGatingNode *)v20 textLocalizationResultsObserver];
    [(BWInferenceNode *)v27 setPassthroughInputSampleBuffer:0];
    objc_initWeak(location, v27);
    objc_initWeak(&from, textLocalizationResultsObserver);
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __msp_configureTextLocalizationNode_block_invoke;
    v45[3] = &unk_1E799CB28;
    objc_copyWeak(&v46, &from);
    v45[4] = v48;
    objc_copyWeak(&v47, location);
    [(BWInferenceNode *)v27 setPostprocessFilter:v45];
    v33 = +[BWTextLocalizationInferenceConfiguration configuration];
    [v33 setLogger:{objc_msgSend(objc_loadWeak(&from), "logger")}];
    [v33 setInferenceInputUsesPortraitOrientation:v31];
    -[BWInferenceNode addInferenceOfType:version:configuration:](v27, "addInferenceOfType:version:configuration:", 116, [v33 version] & 0xFFFFFFFFFFFFLL, v33);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&v46);
    _Block_object_dispose(v48, 8);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
    v40.receiver = v9;
    v40.super_class = FigCaptureMetadataSinkPipeline;
    if (objc_msgSendSuper2(&v40, sel_addNode_error_, v27, &v44))
    {
      if ([pipeline connectOutput:-[BWMetadataDetectorGatingNode textLocalizationOutput](v20 toInput:"textLocalizationOutput") pipelineStage:{-[BWNode input](v27, "input"), +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", @"com.apple.coremedia.capture.mrc.text-localization", 0, 0)}])
      {
        v22 = v30;
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:v27 graph:v30 mrcSourceOutput:? captureDevice:? mrcOutputsOut:? inferenceScheduler:?];
        goto LABEL_22;
      }

      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
    }

    else
    {
      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
    }

LABEL_25:
    result = v44;
    if (v44)
    {
      return [v44 code];
    }
  }

  return result;
}

- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name videoPreviewOutput:(uint64_t)output offlineVISMotionDataSourceOutput:(void *)sourceOutput metadataSourceOutputsByCategory:(void *)category captureDevice:(void *)device faceTrackingPipelineStage:(void *)stage clientAuditToken:(uint64_t)token inferenceScheduler:(__int128 *)configuration0 delegate:(uint64_t)configuration1
{
  if (!configuration)
  {
    return 0;
  }

  if (graph)
  {
    v18 = *(graph + 8);
  }

  else
  {
    v18 = 0;
  }

  v25.receiver = configuration;
  v25.super_class = FigCaptureMetadataSinkPipeline;
  v19 = objc_msgSendSuper2(&v25, sel_initWithGraph_name_sinkID_, name, output, [objc_msgSend(v18 "sinkConfiguration")]);
  if (v19)
  {
    if (graph)
    {
      v19[16] = [objc_msgSend(*(graph + 8) "sourceConfiguration")];
      v21 = *(graph + 8);
    }

    else
    {
      v23 = [objc_msgSend(0 "sourceConfiguration")];
      v21 = 0;
      v19[16] = v23;
    }

    *(v19 + 34) = [v21 underlyingDeviceType];
    v22 = scheduler[1];
    v24[0] = *scheduler;
    v24[1] = v22;
    if ([FigCaptureMetadataSinkPipeline _buildMetadataSinkPipeline:v19 graph:graph videoPreviewOutput:name offlineVISMotionDataSourceOutput:sourceOutput metadataSourceOutputsByCategory:category captureDevice:device faceTrackingPipelineStage:stage clientAuditToken:token inferenceScheduler:v24 delegate:delegate])
    {
      fig_log_get_emitter();
      FigDebugAssert3();

      return 0;
    }
  }

  return v19;
}

- (uint64_t)_buildMetadataSinkPipeline:(uint64_t)result graph:(uint64_t)graph videoPreviewOutput:(uint64_t)output offlineVISMotionDataSourceOutput:(id)sourceOutput metadataSourceOutputsByCategory:(void *)category captureDevice:(void *)device faceTrackingPipelineStage:(void *)stage clientAuditToken:(uint64_t)token inferenceScheduler:(__int128 *)scheduler delegate:(uint64_t)self0
{
  stageCopy = stage;
  tokenCopy = token;
  categoryCopy = category;
  if (!result)
  {
    return result;
  }

  v14 = result;
  v166[0] = 0;
  v165 = 0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  deviceCopy = device;
  v116 = array;
  if (!sourceOutput)
  {
    goto LABEL_37;
  }

  if (graph)
  {
    v16 = FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(*(graph + 8));
    v17 = *(graph + 8);
  }

  else
  {
    v16 = FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(0);
    v17 = 0;
  }

  delegateCopy2 = delegate;
  v19 = FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v17);
  v20 = v19;
  if (v16)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v16;
  }

  if (graph)
  {
    v23 = *(graph + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(v23);
  v26 = v24;
  v27 = (v22 + v24);
  if (v27 >= 2)
  {
    if (graph)
    {
      v28 = *(graph + 8);
    }

    else
    {
      v28 = 0;
    }

    +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.video-preview-metadata-fanout", [v28 sourceConfiguration]), 0, 1);
    v29 = [[BWFanOutNode alloc] initWithFanOutCount:v27 mediaType:1986618469];
    [(BWNode *)v29 setName:@"Video Preview Metadata Fan Out"];
    v164.receiver = v14;
    v164.super_class = FigCaptureMetadataSinkPipeline;
    if ((objc_msgSendSuper2(&v164, sel_addNode_error_, v29, &v165) & 1) == 0)
    {
      goto LABEL_116;
    }

    [(BWNode *)v29 input];
    if (([OUTLINED_FUNCTION_40_9() connectOutput:sourceOutput toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_116;
    }

    if (v16)
    {
      sourceOutput = [(NSArray *)[(BWNode *)v29 outputs] objectAtIndexedSubscript:0];
    }

    else
    {
      sourceOutput = 0;
    }

    delegateCopy2 = delegate;
    if (v20)
    {
      v30 = [(NSArray *)[(BWNode *)v29 outputs] objectAtIndexedSubscript:v16];
    }

    else
    {
      v30 = 0;
    }

    array = v116;
    if (v26)
    {
      v31 = [(NSArray *)[(BWNode *)v29 outputs] objectAtIndexedSubscript:v22];
    }

    else
    {
      v31 = 0;
    }

    device = deviceCopy;
    if (!sourceOutput)
    {
LABEL_35:
      sourceOutput = v30;
      if (!v30)
      {
        goto LABEL_36;
      }

      goto LABEL_110;
    }

LABEL_33:
    *&v123 = 0;
    v32 = OUTLINED_FUNCTION_7_76();
    v166[0] = [(FigCaptureMetadataSinkPipeline *)v32 _buildMetadataDetectorSinkPipeline:v33 graph:v34 mrcSourceOutput:sourceOutput captureDevice:stageCopy mrcOutputsOut:v35 inferenceScheduler:delegateCopy2];
    if (!v166[0])
    {
      v25 = v123;
      goto LABEL_35;
    }

LABEL_116:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
    goto LABEL_101;
  }

  if (v16)
  {
    v30 = 0;
    v31 = 0;
    device = deviceCopy;
    array = v116;
    goto LABEL_33;
  }

  device = deviceCopy;
  if (v20)
  {
    v31 = 0;
    array = v116;
LABEL_110:
    *&v123 = 0;
    v166[0] = [(FigCaptureMetadataSinkPipeline *)v14 _buildSceneClassificationPipeline:graph graph:v25 upstreamOutput:sourceOutput metadataGatingNode:*(v14 + 56) captureDevice:stageCopy inferenceScheduler:delegateCopy2 outputOut:&v123];
    if (v166[0])
    {
      goto LABEL_100;
    }

    if (v123)
    {
      [array2 addObject:?];
    }

LABEL_36:
    sourceOutput = v31;
    if (!v31)
    {
      goto LABEL_37;
    }

LABEL_106:
    v103 = OUTLINED_FUNCTION_7_76();
    v166[0] = [(FigCaptureMetadataSinkPipeline *)v103 _buildPreviewHistogramSinkPipeline:v104 graph:v105 videoPreviewHistogramOutput:sourceOutput];
    if (v166[0])
    {
      goto LABEL_100;
    }

    [*(v14 + 104) output];
    [OUTLINED_FUNCTION_47() addObject:?];
    goto LABEL_37;
  }

  array = v116;
  if (v24)
  {
    goto LABEL_106;
  }

LABEL_37:
  outputCopy = output;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  obj = [device allKeys];
  v36 = [obj countByEnumeratingWithState:&v160 objects:v159 count:16];
  graphCopy = graph;
  if (!v36)
  {
    goto LABEL_81;
  }

  v37 = v36;
  v38 = *v161;
  v113 = v14;
  do
  {
    v39 = 0;
    do
    {
      if (*v161 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v160 + 1) + 8 * v39);
      if ([v40 isEqualToNumber:&unk_1F2246CC0])
      {
        v41 = [OUTLINED_FUNCTION_9_63() objectForKeyedSubscript:?];
        if ([v41 mediaType] != 1986618469)
        {
          if ([v41 mediaType] != 1835365473)
          {
            goto LABEL_76;
          }

          v42 = array;
          v43 = v41;
          goto LABEL_75;
        }

        v79 = tokenCopy;
        if (!tokenCopy)
        {
          if (graph)
          {
            v80 = *(graph + 8);
          }

          else
          {
            v80 = 0;
          }

          v79 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.facetracking", [v80 sourceConfiguration]), 13);
        }

        tokenCopy = v79;
        v166[0] = [(FigCaptureMetadataSinkPipeline *)v14 _buildFaceTrackingPipeline:graph graph:outputCopy videoCaptureOutput:v41 pipelineStage:v79];
        if (v166[0])
        {
          goto LABEL_100;
        }

        v78 = 112;
LABEL_73:
        [*(v14 + v78) output];
LABEL_74:
        v42 = OUTLINED_FUNCTION_47();
LABEL_75:
        [v42 addObject:v43];
        goto LABEL_76;
      }

      if (([v40 isEqualToNumber:&unk_1F2246C90] & 1) == 0 && !objc_msgSend(v40, "isEqualToNumber:", &unk_1F2246CA8))
      {
        [OUTLINED_FUNCTION_9_63() objectForKeyedSubscript:?];
        goto LABEL_74;
      }

      v44 = [OUTLINED_FUNCTION_9_63() objectForKeyedSubscript:?];
      if (v44 && !*(v14 + 120))
      {
        v45 = v44;
        if (graph)
        {
          metadataIdentifiers = [*(graph + 8) metadataIdentifiers];
          if ([*(graph + 56) count] && *(graph + 48) == 1)
          {
            array3 = [MEMORY[0x1E695DF70] array];
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v47 = *(graph + 56);
            v55 = OUTLINED_FUNCTION_11_51(array3, v48, v49, v50, v51, v52, v53, v54, v106, v107, v108, v109, v110, stageCopy, categoryCopy, v113, graphCopy, deviceCopy, v116, outputCopy, tokenCopy, metadataIdentifiers, obj, array2, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144, *(&v144 + 1), v145.receiver, v145.super_class, v146, v147, v148, v149, v150, v151, v152, v153, v154);
            if (v55)
            {
              v56 = v55;
              v57 = *v156;
              do
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v156 != v57)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v59 = [array3 addObject:{CMMetadataFormatDescriptionGetIdentifiers(objc_msgSend(*(*(&v155 + 1) + 8 * i), "formatDescription"))}];
                }

                v56 = OUTLINED_FUNCTION_11_51(v59, v60, v61, v62, v63, v64, v65, v66, v106, v107, v108, v109, v110, stageCopy, categoryCopy, v113, graphCopy, deviceCopy, v116, outputCopy, tokenCopy, v120, obj, array2, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144, *(&v144 + 1), v145.receiver, v145.super_class, v146, v147, v148, v149, v150, v151, v152, v153, v154);
              }

              while (v56);
              v14 = v113;
              graph = graphCopy;
            }

            array = v116;
          }

          *&v123 = 0;
          [*(graph + 8) metadataRectOfInterest];
          OUTLINED_FUNCTION_2_3();
          v67 = *(graph + 8);
        }

        else
        {
          [0 metadataIdentifiers];
          [0 count];
          *&v123 = 0;
          [0 metadataRectOfInterest];
          OUTLINED_FUNCTION_2_3();
          v67 = 0;
        }

        [v67 emitsEmptyObjectDetectionMetadata];
        v68 = OUTLINED_FUNCTION_3();
        v166[0] = FigCaptureBuildObjectDetectionPipeline(v69, v70, v71, v72, v45, v73, v68, v74, v75, v76);
        if (v166[0])
        {
          goto LABEL_100;
        }

        v77 = v123;
        *(v14 + 120) = v77;
        if ([v77 metadataObjectOutputEnabled])
        {
          v78 = 120;
          goto LABEL_73;
        }
      }

LABEL_76:
      ++v39;
    }

    while (v39 != v37);
    v81 = [obj countByEnumeratingWithState:&v160 objects:v159 count:16];
    v37 = v81;
  }

  while (v81);
LABEL_81:
  if (!categoryCopy)
  {
    goto LABEL_88;
  }

  [categoryCopy setName:@"OfflineVISMotionData"];
  if (graph)
  {
    v82 = *(graph + 16);
  }

  else
  {
    v82 = 0;
  }

  v83 = [objc_msgSend(v82 "sourceConfiguration")];
  v84 = [objc_msgSend(v82 "sourceConfiguration")];
  FigCapturePixelFormatIsPackedBayerRaw([v83 format]);
  horizontalSensorBinningFactor = [v83 horizontalSensorBinningFactor];
  verticalSensorBinningFactor = [v83 verticalSensorBinningFactor];
  [v83 maxSupportedFrameRate];
  if (graph)
  {
    v88 = *(graph + 44);
  }

  else
  {
    v88 = 0;
  }

  v89 = FigCaptureBuildMotionAttachmentsNode(v14, categoryCopy, horizontalSensorBinningFactor, verticalSensorBinningFactor, 0, v88, [stageCopy sensorIDDictionaryByPortType], objc_msgSend(stageCopy, "cameraInfoByPortType"), v87, objc_msgSend(stageCopy, "activePortTypes"), v84 == 4, 0, objc_msgSend(objc_msgSend(v82, "irisSinkConfiguration"), "optimizesImagesForOfflineVideoStabilization"), 0, 1, v166);
  if (v166[0])
  {
LABEL_100:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
LABEL_101:
    FigDebugAssert3();
    goto LABEL_102;
  }

  array = v116;
  [v116 addObject:v89];
LABEL_88:
  if ([array2 count])
  {
    v90 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWMetadataPropagatorNode alloc], "initWithNumberOfInputs:mediaType:", [array2 count], 1836016234);
    v145.receiver = v14;
    v145.super_class = FigCaptureMetadataSinkPipeline;
    if ((objc_msgSendSuper2(&v145, sel_addNode_error_, v90, &v165) & 1) == 0)
    {
      goto LABEL_100;
    }

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v91 = [array2 countByEnumeratingWithState:&v141 objects:&v125 count:16];
    if (v91)
    {
      v92 = v91;
      LODWORD(v93) = 0;
      v94 = *v142;
LABEL_92:
      v95 = 0;
      v93 = v93;
      while (1)
      {
        if (*v142 != v94)
        {
          objc_enumerationMutation(array2);
        }

        v96 = *(*(&v141 + 1) + 8 * v95);
        [(NSArray *)[(BWNode *)v90 inputs] objectAtIndexedSubscript:v93];
        if (![OUTLINED_FUNCTION_40_9() connectOutput:v96 toInput:? pipelineStage:?])
        {
          goto LABEL_100;
        }

        ++v93;
        if (v92 == ++v95)
        {
          v92 = [array2 countByEnumeratingWithState:&v141 objects:&v125 count:16];
          if (v92)
          {
            goto LABEL_92;
          }

          break;
        }
      }
    }

    [(BWNode *)v90 output];
    [OUTLINED_FUNCTION_47() addObject:?];
  }

  v97 = scheduler[1];
  v123 = *scheduler;
  v124 = v97;
  v98 = OUTLINED_FUNCTION_7_76();
  v166[0] = [(FigCaptureMetadataSinkPipeline *)v98 _buildMetadataObjectRemoteQueueSinkPipeline:v99 graph:v100 metadataNodeOutputs:array videoPreviewEnabled:0 delegate:v101 clientAuditToken:v102];
LABEL_102:
  result = v166[0];
  if (!v166[0])
  {
    if (v165)
    {
      return [v165 code];
    }
  }

  return result;
}

- (uint64_t)setSemanticStyleSceneObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 80) setSemanticStyleSceneObserver:a2];
  }

  return result;
}

- (uint64_t)detectedObjectBoxedMetadataOutputs
{
  if (result)
  {
    return [*(result + 120) boxedMetadataOutputs];
  }

  return result;
}

- (uint64_t)mrcLowPowerModeEnabled
{
  if (result)
  {
    return [*(result + 64) lowPowerModeEnabled];
  }

  return result;
}

- (uint64_t)setDiscardsMRCSampleData:(uint64_t)result
{
  if (result)
  {
    v3 = [objc_msgSend(objc_msgSend(*(result + 64) "input")];

    return [v3 setDiscardsSampleData:a2];
  }

  return result;
}

- (uint64_t)setSceneClassifierSuspended:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 80))
    {
      v4 = *(result + 88);
      if (!v4)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v4 = *(v2 + 88);
      }

      return [v4 setDiscardsSampleData:a2];
    }
  }

  return result;
}

- (uint64_t)setDiscardsFaceDetectionSampleData:(uint64_t)result
{
  if (result)
  {
    metadataObjectOutput = [*(result + 120) metadataObjectOutput];

    return [metadataObjectOutput setDiscardsSampleData:a2];
  }

  return result;
}

- (uint64_t)setDiscardsFaceTrackingSampleData:(uint64_t)result
{
  if (result)
  {
    v3 = [objc_msgSend(objc_msgSend(*(result + 112) "input")];

    return [v3 setDiscardsSampleData:a2];
  }

  return result;
}

- (uint64_t)setRectOfInterest:(double)interest
{
  if (result)
  {
    v9 = result;
    [*(result + 64) setRectOfInterest:?];
    v10 = *(v9 + 120);

    return [v10 setRectOfInterest:{a2, interest, a4, a5}];
  }

  return result;
}

- (uint64_t)setFaceTrackingSuspended:(uint64_t)result
{
  if (result)
  {
    return [*(result + 112) setSkipProcessing:a2];
  }

  return result;
}

- (uint64_t)extendForNodeOutputs:(void *)outputs withConnectionConfiguration:
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [a2 allKeys];
  result = [allKeys countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *v29;
  while (2)
  {
    v8 = 0;
    do
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v28 + 1) + 8 * v8);
      if (([v9 isEqualToNumber:&unk_1F2246C90] & 1) != 0 || objc_msgSend(v9, "isEqualToNumber:", &unk_1F2246CA8))
      {
        if (v4[15])
        {
          [outputs metadataIdentifiers];
          [outputs metadataRectOfInterest];
          OUTLINED_FUNCTION_2_3();
          [outputs emitsEmptyObjectDetectionMetadata];
          v10 = OUTLINED_FUNCTION_3();
          [v11 updateMetadataIdentifiers:v10 rectOfInterest:? emitsEmptyObjectDetectionMetadata:?];
          goto LABEL_15;
        }

        [outputs metadataIdentifiers];
        [outputs metadataRectOfInterest];
        OUTLINED_FUNCTION_2_3();
        emitsEmptyObjectDetectionMetadata = [outputs emitsEmptyObjectDetectionMetadata];
        [a2 objectForKeyedSubscript:v9];
        v13 = OUTLINED_FUNCTION_3();
        if (FigCaptureBuildObjectDetectionPipeline(v14, v15, v16, emitsEmptyObjectDetectionMetadata, v17, v18, v13, v19, v20, v21))
        {
          fig_log_get_emitter();
          return FigDebugAssert3();
        }

        v4[15] = 0;
        addExtendedInput = [v4[18] addExtendedInput];
        graph = [v4 graph];
        output = [v4[15] output];
        v25 = graph;
      }

      else
      {
        addExtendedInput = [v4[18] addExtendedInput];
        [v4 graph];
        [a2 objectForKeyedSubscript:v9];
        v25 = OUTLINED_FUNCTION_47();
      }

      [v25 connectOutput:output toInput:addExtendedInput pipelineStage:0];
LABEL_15:
      ++v8;
    }

    while (v6 != v8);
    result = [allKeys countByEnumeratingWithState:&v28 objects:v27 count:16];
    v6 = result;
    if (result)
    {
      continue;
    }

    return result;
  }
}

- (uint64_t)removeNodeOutputs:(void *)outputs withConnectionConfiguration:
{
  if (result)
  {
    v3 = result;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [a2 allKeys];
    result = [allKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v21;
      v7 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
      do
      {
        v8 = 0;
        v16 = v5;
        do
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          if (([v9 isEqualToNumber:&unk_1F2246C90] & 1) != 0 || objc_msgSend(v9, "isEqualToNumber:", &unk_1F2246CA8))
          {
            v10 = [objc_msgSend(objc_msgSend(v3[15] "output")];
            v11 = v3[15];
            v12 = v7[112];
            v18.receiver = v3;
            v18.super_class = v12;
            objc_msgSendSuper2(&v18, sel_removeNode_, v11);
            [v3[18] removeInput:v10];

            v3[15] = 0;
          }

          else
          {
            if (v3[15])
            {
              [outputs metadataIdentifiers];
              [outputs metadataRectOfInterest];
              OUTLINED_FUNCTION_2_3();
              v5 = v16;
              [outputs emitsEmptyObjectDetectionMetadata];
              v13 = OUTLINED_FUNCTION_3();
              [v14 updateMetadataIdentifiers:v13 rectOfInterest:? emitsEmptyObjectDetectionMetadata:?];
            }

            [v3[18] removeInput:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", v9), "connection"), "input")}];
            v7 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
          }

          ++v8;
        }

        while (v5 != v8);
        result = [allKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

- (id)_buildSceneClassificationPipeline:(uint64_t)pipeline graph:(void *)graph upstreamOutput:(uint64_t)output metadataGatingNode:(uint64_t)node captureDevice:(uint64_t)device inferenceScheduler:(void *)scheduler outputOut:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v15 = *(a2 + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.scene-classification", [v15 sourceConfiguration]), 13);
  if (a2)
  {
    v17 = *(a2 + 40);
    if (*(a2 + 40))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(a2 + 34) | (*(a2 + 38) << 32);
    v22[0] = *(a2 + 64);
    *(v22 + 12) = *(a2 + 76);
  }

  else
  {
    v19 = 0;
    v17 = 0;
    memset(v22, 0, 28);
    v18 = 1;
  }

  v23 = 0;
  v24 = 0;
  v20 = FigCaptureBuildSceneClassifierPipeline(self, graph, v19, 13, v16, v18, v22, node, device, 0, &v24, &v23);
  if (v20)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  else
  {
    self[10] = v23;
    self[11] = graph;
    if (v17)
    {
      self[12] = [v24 lastObject];
    }

    if (a2 && *(a2 + 33) == 1)
    {
      [(BWSceneClassifierSinkNode *)v23 setMrcSceneObserver:output];
    }

    if (scheduler)
    {
      *scheduler = [v24 firstObject];
    }
  }

  return v20;
}

- (void)_buildPreviewHistogramSinkPipeline:(void *)pipeline graph:(void *)graph videoPreviewHistogramOutput:
{
  if (result)
  {
    v6 = result;
    v12 = 0;
    if (a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.video-preview-histogram", [v7 sourceConfiguration]), 0, 1);
    [graph setName:@"Preview Histogram"];
    v9 = objc_alloc_init(BWPreviewHistogramNode);
    FigCaptureSessionIsLaunchPrewarmingEnabled();
    [OUTLINED_FUNCTION_37_0() setMsrHistogramsEnabled:?];
    FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
    [OUTLINED_FUNCTION_37_0() setIspHistogramsEnabled:?];
    v11.receiver = v6;
    v11.super_class = FigCaptureMetadataSinkPipeline;
    if ((objc_msgSendSuper2(&v11, sel_addNode_error_, v9, &v12) & 1) == 0 || (v10 = v9, v6[13] = v10, ([pipeline connectOutput:graph toInput:-[BWNode input](v10 pipelineStage:{"input"), v8}] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3();
    }

    result = v12;
    if (v12)
    {
      return [v12 code];
    }
  }

  return result;
}

- (uint64_t)_buildFaceTrackingPipeline:(uint64_t)pipeline graph:(void *)graph videoCaptureOutput:(void *)output pipelineStage:
{
  if (result)
  {
    v7 = result;
    v15 = 0;
    [graph setName:@"FaceTracking"];
    v8 = [BWFaceTrackingNode alloc];
    priority = [output priority];
    if (a2)
    {
      v10 = *(a2 + 52);
    }

    else
    {
      v10 = 0;
    }

    v11 = [(BWFaceTrackingNode *)v8 initWithFigThreadPriority:priority pearlModuleType:v10 useUnfilteredDepth:1 queueDepth:2 passthroughInputs:0 allowPixelTransfer:0];
    if (v11)
    {
      v12 = v11;
      if (a2)
      {
        v13 = *(a2 + 8);
        a2 = *(a2 + 16);
      }

      else
      {
        v13 = 0;
      }

      [a2 mirroringEnabled];
      [OUTLINED_FUNCTION_37_0() setMirrored:?];
      [a2 rotationDegrees];
      [OUTLINED_FUNCTION_37_0() setRotationDegrees:?];
      [v13 faceTrackingMaxFaces];
      [OUTLINED_FUNCTION_37_0() setMaxFaces:?];
      [v13 faceTrackingUsesFaceRecognition];
      [OUTLINED_FUNCTION_37_0() setUsesFaceRecognition:?];
      [v13 faceTrackingPlusEnabled];
      [OUTLINED_FUNCTION_37_0() setFaceTrackingPlusEnabled:?];
      [v13 faceTrackingNetworkFailureThresholdMultiplier];
      [(BWFaceTrackingNode *)v12 setNetworkFailureThresholdMultiplier:?];
      [v13 faceTrackingFailureFieldOfViewModifier];
      [(BWFaceTrackingNode *)v12 setTrackingFailureFieldOfViewModifier:?];
      [v13 faceTrackingSuspended];
      [OUTLINED_FUNCTION_37_0() setSkipProcessing:?];
      v14.receiver = v7;
      v14.super_class = FigCaptureMetadataSinkPipeline;
      if ((objc_msgSendSuper2(&v14, sel_addNode_error_, v12, &v15) & 1) == 0 || (v7[14] = v12, -[BWNode input](v12, "input"), ([OUTLINED_FUNCTION_9_63() connectOutput:? toInput:? pipelineStage:?] & 1) == 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigDebugAssert3();
      }

      result = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      result = FigSignalErrorAtGM();
      if (result)
      {
        return result;
      }
    }

    if (v15)
    {
      return [v15 code];
    }
  }

  return result;
}

- (void)_buildMetadataObjectRemoteQueueSinkPipeline:(void *)pipeline graph:(void *)graph metadataNodeOutputs:(uint64_t)outputs videoPreviewEnabled:(uint64_t)enabled delegate:(_OWORD *)delegate clientAuditToken:
{
  if (result)
  {
    v12 = result;
    v65[0] = 0;
    v13 = [graph count];
    v14 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
    if (v13)
    {
      v15 = [[BWFunnelNode alloc] initWithNumberOfInputs:v13 mediaType:1836016234];
      v12[18] = v15;
      [(BWNode *)v15 setName:@"Metadata Funnel"];
      v64.receiver = v12;
      v64.super_class = FigCaptureMetadataSinkPipeline;
      v16 = objc_msgSendSuper2(&v64, sel_addNode_error_, v15, v65);
      if ((v16 & 1) == 0)
      {
LABEL_27:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        goto LABEL_28;
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v24 = OUTLINED_FUNCTION_12_50(v16, v17, v18, v19, v20, v21, v22, v23, v48, v50, sel_addNode_error_, enabled, a2, v55);
      if (v24)
      {
        v25 = v24;
        LODWORD(v26) = 0;
        v27 = *v61;
LABEL_6:
        v28 = 0;
        v26 = v26;
        while (1)
        {
          if (*v61 != v27)
          {
            objc_enumerationMutation(graph);
          }

          v29 = *(*(&v60 + 1) + 8 * v28);
          [(NSArray *)[(BWNode *)v15 inputs] objectAtIndexedSubscript:v26];
          v30 = [OUTLINED_FUNCTION_40_9() connectOutput:v29 toInput:? pipelineStage:?];
          if (!v30)
          {
            goto LABEL_27;
          }

          ++v26;
          if (v25 == ++v28)
          {
            v25 = OUTLINED_FUNCTION_12_50(v30, v31, v32, v33, v34, v35, v36, v37, v49, v51, v52, v53, v54, v56);
            if (v25)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      output = [(BWNode *)v15 output];
      enabled = v53;
      a2 = v54;
      v14 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
      v39 = v52;
    }

    else
    {
      output = 0;
      v39 = sel_addNode_error_;
    }

    v40 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v12 sinkID];
    v42 = delegate[1];
    v59[0] = *delegate;
    v59[1] = v42;
    v43 = [(BWRemoteQueueSinkNode *)v40 initWithMediaType:1836016234 clientAuditToken:v59 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v43 setName:@"Metadata Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v43 setDelegate:enabled];
    v44 = v14[112];
    v58.receiver = v12;
    v58.super_class = v44;
    if (objc_msgSendSuper2(&v58, v39, v43, v65))
    {
      v45 = v14[112];
      v57.receiver = v12;
      v57.super_class = v45;
      objc_msgSendSuper2(&v57, sel_setSinkNode_, v43);
      if ([pipeline deferredNodePrepareSupported])
      {
        if (a2)
        {
          v46 = *(a2 + 8);
        }

        else
        {
          v46 = 0;
        }

        +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.metadata-object-remote-queue", [v46 sourceConfiguration]), 0);
        if (a2)
        {
          v47 = *(a2 + 8);
        }

        else
        {
          v47 = 0;
        }

        if (([objc_msgSend(v47 "sinkConfiguration")] & 1) == 0)
        {
          [pipeline enableDeferredPrepareForNodesNotInPathOfSinkNode:v43];
          if (v12[10])
          {
            [pipeline enableDeferredPrepareForNodesNotInPathOfSinkNode:?];
          }
        }
      }

      [(BWNode *)v43 input];
      if ([OUTLINED_FUNCTION_40_9() connectOutput:output toInput:? pipelineStage:?])
      {
        goto LABEL_24;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

LABEL_28:
    FigDebugAssert3();
LABEL_24:
    result = v65[0];
    if (v65[0])
    {
      return [v65[0] code];
    }
  }

  return result;
}

- (uint64_t)setMrcSuspended:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end
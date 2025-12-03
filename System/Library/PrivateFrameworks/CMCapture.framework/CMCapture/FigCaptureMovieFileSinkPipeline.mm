@interface FigCaptureMovieFileSinkPipeline
+ (void)initialize;
- (double)irisVISCleanOutputRectForCLAP;
- (id)initWithConfiguration:(uint64_t)configuration videoSourceCaptureOutputsByConnectionID:(uint64_t)d audioSourceCaptureOutput:(uint64_t)output audioSourceCinematicAudioCaptureOutput:(uint64_t)captureOutput smartCameraInferenceOutput:(void *)inferenceOutput detectedObjectBoxedMetadataOutputs:(uint64_t)outputs objectDetectionSourceOutput:(uint64_t)sourceOutput metadataSourcePipelineOutputs:(uint64_t)self0 graph:(uint64_t)self1 name:(uint64_t)self2 inferenceScheduler:(void *)self3 captureDevicesByConnectionID:(uint64_t)self4 audioSourceDelegate:(uint64_t)self5 fileCoordinatorStatusDelegate:(uint64_t)self6 recordingStatusDelegate:(uint64_t)self7 irisRequestDelegate:(uint64_t)self8 multiCamClientCompositingCallback:(uint64_t)self9 masterClock:(unsigned __int8)clock delayedCompressorCleanupEnabled:;
- (uint64_t)atLeastOneTailIsRecording;
- (uint64_t)fileCoordinatorNode;
- (uint64_t)irisStagingNode;
- (uint64_t)ispProcessingSession;
- (uint64_t)liveReconfigureForOutputDimensions:(uint64_t)result;
- (uint64_t)movieFileSinkNodes;
- (uint64_t)overCaptureEnabled;
- (uint64_t)primaryCaptureDevice;
- (uint64_t)primaryMovieFileVideoCaptureConnectionConfiguration;
- (uint64_t)sdofCompressorNodes;
- (uint64_t)setMrcSceneObserver:(uint64_t)result;
- (uint64_t)setRecording:(unint64_t)recording forTailPipelineIndex:;
- (uint64_t)setSceneClassifierSuspended:(uint64_t)result;
- (uint64_t)setSemanticStyleSceneObserver:(uint64_t)result;
- (uint64_t)setUpBackPressureForResolvedRetainedBufferCounts;
- (uint64_t)smartStyleReversibilityEnabled;
- (uint64_t)videoCompressorNodes;
- (uint64_t)videoConnectionID;
- (uint64_t)videoOrientationMetadataNode;
- (uint64_t)videoSourceDeviceType;
- (uint64_t)videoSourceID;
- (uint64_t)videoStabilizationStrength;
- (unint64_t)setOverCaptureTailPipelineRenderingEnabled:(unint64_t)result;
- (unint64_t)setRecordingForAllTailPipelines:(unint64_t)result;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkPipeline

- (uint64_t)videoSourceDeviceType
{
  if (result)
  {
    return [*(result + 56) videoSourceDeviceType];
  }

  return result;
}

- (uint64_t)videoSourceID
{
  if (result)
  {
    return [*(result + 56) videoSourceID];
  }

  return result;
}

- (uint64_t)setUpBackPressureForResolvedRetainedBufferCounts
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 72);
    result = OUTLINED_FUNCTION_1_3(result, a2, a3, a4, a5, a6, a7, a8, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, 0);
    if (result)
    {
      v10 = result;
      v11 = MEMORY[0];
      do
      {
        v12 = 0;
        do
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v9);
          }

          irisIntermediateJPEGPhotoDecompressorNode = [*(v8 + 56) irisIntermediateJPEGPhotoDecompressorNode];
          [*(v8 + 56) videoDefringingNode];
          v14 = OUTLINED_FUNCTION_7();
          v16 = [(FigCaptureMovieFileSinkTailPipeline *)v14 setUpBackPressureSemaphoresWithIrisIntermediateJPEGPhotoDecompressorNode:irisIntermediateJPEGPhotoDecompressorNode videoDefringingNode:v15];
          ++v12;
        }

        while (v10 != v12);
        result = OUTLINED_FUNCTION_1_3(v16, v17, v18, v19, v20, v21, v22, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v56);
        v10 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)irisStagingNode
{
  if (result)
  {
    return [*(result + 56) irisStagingNode];
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (uint64_t)setRecording:(unint64_t)recording forTailPipelineIndex:
{
  if (result)
  {
    v5 = result;
    if ([*(result + 72) count] < recording)
    {
      [FigCaptureMovieFileSinkPipeline setRecording:forTailPipelineIndex:];
    }

    return [(FigCaptureMovieFileSinkPipeline *)v5 setRecording:recording forTailPipelineIndex:a2];
  }

  return result;
}

- (uint64_t)videoOrientationMetadataNode
{
  if (result)
  {
    return [*(result + 56) videoOrientationMetadataNode];
  }

  return result;
}

- (id)initWithConfiguration:(uint64_t)configuration videoSourceCaptureOutputsByConnectionID:(uint64_t)d audioSourceCaptureOutput:(uint64_t)output audioSourceCinematicAudioCaptureOutput:(uint64_t)captureOutput smartCameraInferenceOutput:(void *)inferenceOutput detectedObjectBoxedMetadataOutputs:(uint64_t)outputs objectDetectionSourceOutput:(uint64_t)sourceOutput metadataSourcePipelineOutputs:(uint64_t)self0 graph:(uint64_t)self1 name:(uint64_t)self2 inferenceScheduler:(void *)self3 captureDevicesByConnectionID:(uint64_t)self4 audioSourceDelegate:(uint64_t)self5 fileCoordinatorStatusDelegate:(uint64_t)self6 recordingStatusDelegate:(uint64_t)self7 irisRequestDelegate:(uint64_t)self8 multiCamClientCompositingCallback:(uint64_t)self9 masterClock:(unsigned __int8)clock delayedCompressorCleanupEnabled:
{
  selfCopy = self;
  if (self)
  {
    if (a2)
    {
      v27 = *(a2 + 16);
      if ([v27 sinkConfiguration])
      {
        v28 = v27;
      }

      else
      {
        if (![*(a2 + 32) sinkConfiguration])
        {
          goto LABEL_94;
        }

        v28 = *(a2 + 32);
      }
    }

    else
    {
      if (![0 sinkConfiguration] && !objc_msgSend(0, "sinkConfiguration"))
      {
        goto LABEL_94;
      }

      v28 = 0;
      v27 = 0;
    }

    if ([objc_msgSend(v28 "sinkConfiguration")])
    {
      v29 = [inferenceOutput count];
      if (!outputs || !v29)
      {
        v93.receiver = selfCopy;
        v93.super_class = FigCaptureMovieFileSinkPipeline;
        selfCopy = objc_msgSendSuper2(&v93, sel_initWithGraph_name_sinkID_);
        if (!selfCopy)
        {
LABEL_86:
          [objc_msgSend(objc_msgSend(selfCopy "graph")];
          return selfCopy;
        }

        if (a2)
        {
          v30 = *(a2 + 56);
        }

        else
        {
          v30 = 0;
        }

        outputsCopy = outputs;
        outputCopy = output;
        if (([v30 enabled] & 1) == 0 && objc_msgSend(v27, "enabled"))
        {
          [objc_msgSend(v27 "sourceConfiguration")];
        }

        v74 = v27;
        v31 = BWCreateWorkgroupWithName();
        selfCopy[16] = v31;
        v32 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.moviefile" priority:14 workgroup:v31];
        [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.moviefile.transfer" priority:14 workgroup:selfCopy[16]];
        v33 = objc_alloc_init(FigCaptureMovieFileSinkHeadPipelineConfiguration);
        [(FigCaptureMovieFileSinkHeadPipelineConfiguration *)v33 setMovieFileSinkPipelineConfiguration:a2];
        [(FigCaptureMovieFileSinkHeadPipelineConfiguration *)v33 setMovieFilePipelineStage:v32];
        [OUTLINED_FUNCTION_20_5() setTransferPipelineStage:?];
        v34 = [FigCaptureMovieFileSinkHeadPipeline alloc];
        if (a2)
        {
          v35 = *(a2 + 149);
        }

        else
        {
          v35 = 0;
        }

        LOBYTE(v71) = v35 & 1;
        selfCopy[7] = [(FigCaptureMovieFileSinkHeadPipeline *)v34 initWithConfiguration:v33 videoSourceCaptureOutputsByConnectionID:configuration audioSourceCaptureOutput:d audioSourceCinematicAudioCaptureOutput:outputCopy smartCameraInferenceOutput:captureOutput detectedObjectBoxedMetadataOutputs:inferenceOutput objectDetectionSourceOutput:outputsCopy metadataSourcePipelineOutputs:sourceOutput graph:pipelineOutputs parentPipeline:selfCopy inferenceScheduler:name captureDevicesByConnectionID:scheduler audioSourceDelegate:iD fileCoordinatorStatusDelegate:delegate irisRequestDelegate:recordingStatusDelegate masterClock:callback workgroup:selfCopy[16] videoGreenGhostMitigationEnabled:v71];

        if (selfCopy[7])
        {
          *(selfCopy + 114) = 0;
          if (a2)
          {
            v36 = 1;
            v37 = v27;
            if (*(a2 + 138) == 1)
            {
              *(selfCopy + 114) = 1;
              v36 = 2;
            }
          }

          else
          {
            v36 = 1;
            v37 = v27;
          }

          *(selfCopy + 115) = [v37 stereoVideoCaptureEnabled];
          [v37 connectionID];
          v38 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
          v39 = v38 ? *(v38 + 20) : 0;
          *(selfCopy + 29) = v39;
          v40 = a2 ? *(a2 + 211) : 0;
          *(selfCopy + 120) = v40 & 1;
          v41 = objc_alloc_init(FigCaptureMovieFileSinkMiddlePipelineConfiguration);
          [(FigCaptureMovieFileSinkMiddlePipelineConfiguration *)v41 setMovieFileSinkPipelineConfiguration:a2];
          [(FigCaptureMovieFileSinkMiddlePipelineConfiguration *)v41 setMovieFilePipelineStage:v32];
          selfCopy[8] = [[FigCaptureMovieFileSinkMiddlePipeline alloc] initWithConfiguration:v41 graph:pipelineOutputs parentPipeline:selfCopy headPipeline:selfCopy[7] captureDevicesByConnectionID:scheduler workgroup:selfCopy[16]];

          if (selfCopy[8])
          {
            selfCopy[9] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v36];
            selfCopy[10] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v36];
            selfCopy[11] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v36];
            v42 = 0;
            selfCopy[12] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v36];
            do
            {
              if (v42)
              {
                +[BWPipelineStage pipelineStageWithName:priority:workgroup:](BWPipelineStage, "pipelineStageWithName:priority:workgroup:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.tail.%d", -[BWPipelineStage name](v32, "name"), 1], 14, selfCopy[16]);
              }

              v43 = objc_alloc_init(FigCaptureMovieFileSinkTailPipelineConfiguration);
              [(FigCaptureMovieFileSinkTailPipelineConfiguration *)v43 setMovieFileSinkPipelineConfiguration:a2];
              [OUTLINED_FUNCTION_40() setMovieFilePipelineStage:?];
              [OUTLINED_FUNCTION_23_4() irisIntermediateJPEGPhotoDecompressorNode];
              [OUTLINED_FUNCTION_4() setIrisIntermediateJPEGPhotoDecompressorNode:?];
              [OUTLINED_FUNCTION_26_3() videoOutputForTailIndex:v42];
              [OUTLINED_FUNCTION_4() setVideoSourceOutput:?];
              [OUTLINED_FUNCTION_26_3() audioOutputForTailIndex:v42];
              [OUTLINED_FUNCTION_4() setAudioSourceOutput:?];
              [OUTLINED_FUNCTION_23_4() cinematicAudioOutput];
              [OUTLINED_FUNCTION_4() setCinematicAudioSourceOutput:?];
              -[FigCaptureMovieFileSinkTailPipelineConfiguration setIndexOfAudioRemixInMetadataOutputs:](v43, "setIndexOfAudioRemixInMetadataOutputs:", [OUTLINED_FUNCTION_23_4() indexOfAudioRemixInMetadataOutputs]);
              [OUTLINED_FUNCTION_26_3() metadataOutputsForTailIndex:v42];
              [OUTLINED_FUNCTION_4() setMetadataSourceOutputs:?];
              [OUTLINED_FUNCTION_23_4() indexesOfDetectedObjectsInMetadataOutputs];
              [OUTLINED_FUNCTION_4() setIndexesOfDetectedObjectsInMetadataOutputs:?];
              -[FigCaptureMovieFileSinkTailPipelineConfiguration setIndexOfVideoOrientationInMetadataOutputs:](v43, "setIndexOfVideoOrientationInMetadataOutputs:", [OUTLINED_FUNCTION_23_4() indexOfVideoOrientationInMetadataOutputs]);
              v44 = 0;
              if (a2 && !v42)
              {
                v44 = *(a2 + 136);
              }

              [(FigCaptureMovieFileSinkTailPipelineConfiguration *)v43 setVitalityScoringEnabled:v44 & 1];
              [(FigCaptureMovieFileSinkTailPipelineConfiguration *)v43 setDelayedCompressorCleanupEnabled:clock];
              v45 = [[FigCaptureMovieFileSinkTailPipeline alloc] initWithConfiguration:v43 tailIndex:v42 numTailPipelines:v36 graph:pipelineOutputs parentPipeline:selfCopy captureDevicesByConnectionID:scheduler inferenceScheduler:name recordingStatusDelegate:statusDelegate multiCamClientCompositingCallback:requestDelegate workgroup:selfCopy[16]];

              if (!v45)
              {
                goto LABEL_90;
              }

              [selfCopy[9] addObject:v45];
              [(FigCaptureMovieFileSinkTailPipeline *)v45 movieFileSinkNode];
              [OUTLINED_FUNCTION_4() addObject:?];
              if ([(FigCaptureMovieFileSinkTailPipeline *)v45 videoCompressorNode])
              {
                [(FigCaptureMovieFileSinkTailPipeline *)v45 videoCompressorNode];
                [OUTLINED_FUNCTION_4() addObject:?];
              }

              if ([(FigCaptureMovieFileSinkTailPipeline *)v45 sdofCompressorNode])
              {
                [(FigCaptureMovieFileSinkTailPipeline *)v45 sdofCompressorNode];
                [OUTLINED_FUNCTION_4() addObject:?];
              }

              ++v42;
            }

            while (v36 != v42);
            if ([v74 irisVISEnabled] && (a2 && *(a2 + 138) == 1 && !FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata() || objc_msgSend(v74, "irisVISMethod") == 3 || objc_msgSend(v74, "irisVISMethod") == 5))
            {
              for (i = 0; v36 != i; ++i)
              {
                if (![OUTLINED_FUNCTION_47_6(72) movieFileSinkNode])
                {
                  continue;
                }

                if (i == 1)
                {
                  overCaptureVISPipeline = [OUTLINED_FUNCTION_26_3() overCaptureVISPipeline];
                  if (![(FigCaptureVISPipeline *)overCaptureVISPipeline visNode])
                  {
                    goto LABEL_54;
                  }

                  overCaptureVISPipeline2 = [OUTLINED_FUNCTION_26_3() overCaptureVISPipeline];
                }

                else
                {
                  if (i)
                  {
                    goto LABEL_54;
                  }

                  visPipeline = [OUTLINED_FUNCTION_26_3() visPipeline];
                  if (![(FigCaptureVISPipeline *)visPipeline visNode])
                  {
                    goto LABEL_54;
                  }

                  overCaptureVISPipeline2 = [OUTLINED_FUNCTION_26_3() visPipeline];
                }

                visNode = [(FigCaptureVISPipeline *)overCaptureVISPipeline2 visNode];
                if (visNode)
                {
                  goto LABEL_55;
                }

LABEL_54:
                visPipeline2 = [OUTLINED_FUNCTION_47_6(72) visPipeline];
                visNode = [(FigCaptureVISPipeline *)visPipeline2 visNode];
                if (visNode)
                {
LABEL_55:
                  v52 = visNode;
                  v53 = objc_alloc_init(BWIrisStillImageMovieMetadataCache);
                  [v52 setIrisStillImageMovieMetadataCache:v53];
                  [objc_msgSend(OUTLINED_FUNCTION_47_6(72) "movieFileSinkNode")];
                }
              }
            }

            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            obj = [selfCopy nodes];
            v54 = [obj countByEnumeratingWithState:&v89 objects:v88 count:16];
            if (v54)
            {
              v55 = v54;
              v77 = *v90;
              do
              {
                for (j = 0; j != v55; ++j)
                {
                  if (*v90 != v77)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v57 = *(*(&v89 + 1) + 8 * j);
                  [v57 setDeferredPreparePriority:3];
                  v86 = 0u;
                  v87 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  inputs = [v57 inputs];
                  v59 = [inputs countByEnumeratingWithState:&v84 objects:v83 count:16];
                  if (v59)
                  {
                    v60 = v59;
                    v61 = *v85;
                    do
                    {
                      for (k = 0; k != v60; ++k)
                      {
                        if (*v85 != v61)
                        {
                          objc_enumerationMutation(inputs);
                        }

                        v63 = *(*(&v84 + 1) + 8 * k);
                        [OUTLINED_FUNCTION_23_4() inferenceConnections];
                        [v63 connection];
                        if (([OUTLINED_FUNCTION_36() containsObject:?] & 1) == 0)
                        {
                          [objc_msgSend(v63 "connection")];
                        }
                      }

                      v60 = [inputs countByEnumeratingWithState:&v84 objects:v83 count:16];
                    }

                    while (v60);
                  }
                }

                v55 = [obj countByEnumeratingWithState:&v89 objects:v88 count:16];
              }

              while (v55);
            }

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            inferenceConnections = [OUTLINED_FUNCTION_23_4() inferenceConnections];
            v65 = [inferenceConnections countByEnumeratingWithState:&v79 objects:v78 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v80;
              do
              {
                for (m = 0; m != v66; ++m)
                {
                  if (*v80 != v67)
                  {
                    objc_enumerationMutation(inferenceConnections);
                  }

                  [objc_msgSend(objc_msgSend(*(*(&v79 + 1) + 8 * m) "input")];
                }

                v66 = [inferenceConnections countByEnumeratingWithState:&v79 objects:v78 count:16];
              }

              while (v66);
            }

            if (![selfCopy[11] count])
            {

              selfCopy[11] = 0;
            }

            if (![selfCopy[12] count])
            {

              selfCopy[12] = 0;
            }

            selfCopy[6] = [scheduler objectForKeyedSubscript:{objc_msgSend(v74, "connectionID")}];
            selfCopy[13] = v74;
            irisSinkConfiguration = [v74 irisSinkConfiguration];
            if ([irisSinkConfiguration irisMovieCaptureEnabled])
            {
              *(selfCopy + 112) = [irisSinkConfiguration momentCaptureMovieRecordingEnabled];
            }

            goto LABEL_86;
          }
        }

LABEL_90:
        OUTLINED_FUNCTION_0();
LABEL_95:
        FigDebugAssert3();

        return 0;
      }
    }

LABEL_94:
    OUTLINED_FUNCTION_0();
    goto LABEL_95;
  }

  return selfCopy;
}

- (uint64_t)setMrcSceneObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 56) setMrcSceneObserver:a2];
  }

  return result;
}

- (uint64_t)setSemanticStyleSceneObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 56) setSemanticStyleSceneObserver:a2];
  }

  return result;
}

- (uint64_t)videoConnectionID
{
  if (result)
  {
    return [*(result + 56) videoConnectionID];
  }

  return result;
}

- (uint64_t)fileCoordinatorNode
{
  if (result)
  {
    return [*(result + 56) fileCoordinatorNode];
  }

  return result;
}

- (uint64_t)ispProcessingSession
{
  if (result)
  {
    v8 = *(result + 72);
    result = OUTLINED_FUNCTION_57(result, a2, a3, a4, a5, a6, a7, a8, v19);
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v8);
        }

        result = [-[FigCaptureVISPipeline visNode](objc_msgSend(*(8 * v11) "visPipeline"))];
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          result = OUTLINED_FUNCTION_57(0, v12, v13, v14, v15, v16, v17, v18, v20);
          v9 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  return result;
}

- (uint64_t)primaryMovieFileVideoCaptureConnectionConfiguration
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (double)irisVISCleanOutputRectForCLAP
{
  if (!self)
  {
    return 0.0;
  }

  [objc_msgSend(*(self + 72) objectAtIndexedSubscript:{0), "irisVISCleanOutputRectForCLAP"}];
  return result;
}

- (uint64_t)setSceneClassifierSuspended:(uint64_t)result
{
  if (result)
  {
    return [*(result + 56) setSceneClassifierSuspended:a2];
  }

  return result;
}

- (unint64_t)setRecordingForAllTailPipelines:(unint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 72) count];
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        if ((*(v3 + 113) & 1) != 0 || i != 1)
        {
          [objc_msgSend(*(v3 + 72) objectAtIndexedSubscript:{i), "setRecording:", a2}];
        }

        result = [*(v3 + 72) count];
      }
    }
  }

  return result;
}

- (uint64_t)atLeastOneTailIsRecording
{
  if (result)
  {
    result = OUTLINED_FUNCTION_59_2(result);
    if (result)
    {
      v3 = 0;
      while ((*(v1 + 113) & 1) == 0 && v3 == 1 || ([OUTLINED_FUNCTION_47_6(*(v2 + 2884)) recording] & 1) == 0)
      {
        if (++v3 >= [*(v1 + *(v2 + 2884)) count])
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

- (unint64_t)setOverCaptureTailPipelineRenderingEnabled:(unint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 72) count];
    if (result >= 2)
    {
      *(v3 + 113) = a2;
    }
  }

  return result;
}

- (uint64_t)liveReconfigureForOutputDimensions:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    -[FigCaptureVISPipeline liveReconfigureForOutputDimensions:]([*(result + 64) overCaptureVISPipeline], a2);
    -[FigCaptureVISPipeline liveReconfigureForOutputDimensions:]([*(v3 + 64) visPipeline], a2);
    v4 = *(v3 + 72);
    result = OUTLINED_FUNCTION_1_3(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, 0);
    if (result)
    {
      v13 = result;
      v14 = MEMORY[0];
      do
      {
        v15 = 0;
        do
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(8 * v15);
          -[FigCaptureVISPipeline liveReconfigureForOutputDimensions:]([v16 visPipeline], a2);
          [objc_msgSend(v16 "scalerNode")];
          [objc_msgSend(v16 "scalerNode")];
          v17 = [objc_msgSend(v16 "smartCropNode")];
          ++v15;
        }

        while (v13 != v15);
        result = OUTLINED_FUNCTION_1_3(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v57);
        v13 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)movieFileSinkNodes
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)videoCompressorNodes
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)sdofCompressorNodes
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)overCaptureEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 114));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)videoStabilizationStrength
{
  if (result)
  {
    return *(result + 116);
  }

  return result;
}

- (uint64_t)smartStyleReversibilityEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 120));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)primaryCaptureDevice
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)setRecording:(char)a3 forTailPipelineIndex:.cold.2(uint64_t result, uint64_t a2, char a3)
{
  if (a2 != 1 || (*(result + 113) & 1) != 0)
  {
    v4 = [*(result + 72) objectAtIndexedSubscript:a2];

    return [v4 setRecording:a3 & 1];
  }

  return result;
}

@end
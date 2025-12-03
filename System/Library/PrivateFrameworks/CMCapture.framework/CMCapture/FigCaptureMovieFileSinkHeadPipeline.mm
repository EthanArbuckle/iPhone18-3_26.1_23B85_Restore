@interface FigCaptureMovieFileSinkHeadPipeline
- (FigCaptureMovieFileSinkHeadPipeline)initWithConfiguration:(id)configuration videoSourceCaptureOutputsByConnectionID:(id)d audioSourceCaptureOutput:(id)output audioSourceCinematicAudioCaptureOutput:(id)captureOutput smartCameraInferenceOutput:(id)inferenceOutput detectedObjectBoxedMetadataOutputs:(id)outputs objectDetectionSourceOutput:(id)sourceOutput metadataSourcePipelineOutputs:(id)self0 graph:(id)self1 parentPipeline:(id)self2 inferenceScheduler:(id)self3 captureDevicesByConnectionID:(id)self4 audioSourceDelegate:(id)self5 fileCoordinatorStatusDelegate:(id)self6 irisRequestDelegate:(id)self7 masterClock:(OpaqueCMClock *)self8 workgroup:(id)self9 videoGreenGhostMitigationEnabled:(BOOL)enabled;
- (id)_buildFaceDetectionNode:(uint64_t)node parentPipeline:objectDetectionSourceOutput:faceDetectionNodeOut:;
- (uint64_t)_buildMovieFileSinkHeadPipeline:(uint64_t)pipeline videoSourceCaptureOutputsByConnectionID:(void *)d audioSourceCaptureOutput:(void *)output audioSourceCinematicAudioCaptureOutput:(uint64_t)captureOutput smartCameraInferenceOutput:(uint64_t)inferenceOutput detectedObjectBoxedMetadataOutputs:(uint64_t)outputs objectDetectionSourceOutput:(void *)sourceOutput metadataSourcePipelineOutputs:(uint64_t)pipelineOutputs graph:(void *)graph parentPipeline:(void *)pipeline0 inferenceScheduler:(void *)pipeline1 captureDevicesByConnectionID:(uint64_t)pipeline2 audioSourceDelegate:(void *)pipeline3 fileCoordinatorStatusDelegate:(uint64_t)pipeline4 irisRequestDelegate:(uint64_t)pipeline5 masterClock:(uint64_t)pipeline6 workgroup:(uint64_t)pipeline7 videoGreenGhostMitigationEnabled:(uint64_t)pipeline8;
- (void)dealloc;
- (void)setSceneClassifierSuspended:(BOOL)suspended;
@end

@implementation FigCaptureMovieFileSinkHeadPipeline

- (FigCaptureMovieFileSinkHeadPipeline)initWithConfiguration:(id)configuration videoSourceCaptureOutputsByConnectionID:(id)d audioSourceCaptureOutput:(id)output audioSourceCinematicAudioCaptureOutput:(id)captureOutput smartCameraInferenceOutput:(id)inferenceOutput detectedObjectBoxedMetadataOutputs:(id)outputs objectDetectionSourceOutput:(id)sourceOutput metadataSourcePipelineOutputs:(id)self0 graph:(id)self1 parentPipeline:(id)self2 inferenceScheduler:(id)self3 captureDevicesByConnectionID:(id)self4 audioSourceDelegate:(id)self5 fileCoordinatorStatusDelegate:(id)self6 irisRequestDelegate:(id)self7 masterClock:(OpaqueCMClock *)self8 workgroup:(id)self9 videoGreenGhostMitigationEnabled:(BOOL)enabled
{
  v30.receiver = self;
  v30.super_class = FigCaptureMovieFileSinkHeadPipeline;
  v26 = [(FigCapturePipeline *)&v30 initWithGraph:graph name:@"Head Pipeline"];
  v27 = v26;
  if (v26)
  {
    v26->_indexOfVideoOrientationInMetadataOutputs = -1;
    v26->_inferenceConnections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:v27 videoSourceCaptureOutputsByConnectionID:configuration audioSourceCaptureOutput:d audioSourceCinematicAudioCaptureOutput:output smartCameraInferenceOutput:captureOutput detectedObjectBoxedMetadataOutputs:inferenceOutput objectDetectionSourceOutput:outputs metadataSourcePipelineOutputs:sourceOutput graph:pipelineOutputs parentPipeline:graph inferenceScheduler:pipeline captureDevicesByConnectionID:scheduler audioSourceDelegate:iD fileCoordinatorStatusDelegate:delegate irisRequestDelegate:statusDelegate masterClock:requestDelegate workgroup:clock videoGreenGhostMitigationEnabled:workgroup];
    if (v28)
    {
      [FigCaptureMovieFileSinkHeadPipeline initWithConfiguration:v28 videoSourceCaptureOutputsByConnectionID:v27 audioSourceCaptureOutput:? audioSourceCinematicAudioCaptureOutput:? smartCameraInferenceOutput:? detectedObjectBoxedMetadataOutputs:? objectDetectionSourceOutput:? metadataSourcePipelineOutputs:? graph:? parentPipeline:? inferenceScheduler:? captureDevicesByConnectionID:? audioSourceDelegate:? fileCoordinatorStatusDelegate:? irisRequestDelegate:? masterClock:? workgroup:? videoGreenGhostMitigationEnabled:?];
      return 0;
    }
  }

  return v27;
}

- (uint64_t)_buildMovieFileSinkHeadPipeline:(uint64_t)pipeline videoSourceCaptureOutputsByConnectionID:(void *)d audioSourceCaptureOutput:(void *)output audioSourceCinematicAudioCaptureOutput:(uint64_t)captureOutput smartCameraInferenceOutput:(uint64_t)inferenceOutput detectedObjectBoxedMetadataOutputs:(uint64_t)outputs objectDetectionSourceOutput:(void *)sourceOutput metadataSourcePipelineOutputs:(uint64_t)pipelineOutputs graph:(void *)graph parentPipeline:(void *)pipeline0 inferenceScheduler:(void *)pipeline1 captureDevicesByConnectionID:(uint64_t)pipeline2 audioSourceDelegate:(void *)pipeline3 fileCoordinatorStatusDelegate:(uint64_t)pipeline4 irisRequestDelegate:(uint64_t)pipeline5 masterClock:(uint64_t)pipeline6 workgroup:(uint64_t)pipeline7 videoGreenGhostMitigationEnabled:(uint64_t)pipeline8
{
  if (!pipeline)
  {
    return 0;
  }

  pipelineCopy = pipeline;
  v269[0] = 0;
  movieFileSinkPipelineConfiguration = [d movieFileSinkPipelineConfiguration];
  v24 = movieFileSinkPipelineConfiguration;
  if (movieFileSinkPipelineConfiguration)
  {
    v25 = *(movieFileSinkPipelineConfiguration + 16);
  }

  else
  {
    v25 = 0;
  }

  v204 = [delegate objectForKeyedSubscript:{objc_msgSend(v25, "connectionID")}];
  irisSinkConfiguration = [v25 irisSinkConfiguration];
  movieFilePipelineStage = [d movieFilePipelineStage];
  v27 = [output count];
  v28 = captureOutput != 0;
  v29 = 1;
  if (captureOutput)
  {
    v29 = 2;
  }

  if (inferenceOutput)
  {
    v28 = v29;
  }

  v198 = v28;
  v199 = v27;
  v30 = [graph count];
  if (!v24 || (*(v24 + 112) & 1) == 0)
  {
    movieFileSinkPipelineConfiguration2 = [d movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration2)
    {
      movieFileSinkPipelineConfiguration2 = movieFileSinkPipelineConfiguration2[6];
    }

    v30 += [movieFileSinkPipelineConfiguration2 count];
  }

  dCopy = d;
  v194 = v25 != 0;
  array = [MEMORY[0x1E695DF70] array];
  v215 = v25;
  outputCopy = output;
  output = [output objectForKeyedSubscript:{objc_msgSend(v25, "connectionID")}];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v192 = movieFilePipelineStage;
  inferenceOutputCopy = inferenceOutput;
  if (v24)
  {
    v34 = *(v24 + 138);
  }

  else
  {
    v34 = 0;
  }

  if ([v215 outputWidth] < 1441)
  {
    v35 = 3;
  }

  else
  {
    v35 = 4;
  }

  v36 = v35;
  [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  if (v37 > 0.0)
  {
    v36 = v37;
  }

  if (v36 == 0.0)
  {
    v38 = 0.8;
  }

  else
  {
    v38 = 0.0;
  }

  irisMovieCaptureEnabled = [irisSinkConfiguration irisMovieCaptureEnabled];
  v212 = pipelineCopy;
  v213 = array3;
  v205 = v24;
  if (!irisMovieCaptureEnabled)
  {
    v51 = 0;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v52 = [graph countByEnumeratingWithState:&v241 objects:v240 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v242;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v242 != v54)
          {
            objc_enumerationMutation(graph);
          }

          [array2 addObject:*(*(&v241 + 1) + 8 * i)];
        }

        v53 = [graph countByEnumeratingWithState:&v241 objects:v240 count:16];
      }

      while (v53);
    }

    if (output)
    {
      if (v24)
      {
        if (*(v24 + 151) == 1 && (*(v24 + 150) & 1) == 0)
        {
          v56 = objc_alloc_init(BWFrameRateGovernorNode);
          [(BWNode *)v56 setName:@"Movie File Frame Rate Governor"];
          [(BWFrameRateGovernorNode *)v56 setDropsStartupFramesWithUnstableAE:1];
          [(BWFrameRateGovernorNode *)v56 setAeStabilityTuning:2];
          if (([scheduler addNode:v56 error:v269] & 1) == 0)
          {
            [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
            goto LABEL_280;
          }

          if (([parentPipeline connectOutput:output toInput:-[BWNode input](v56 pipelineStage:{"input"), 0}] & 1) == 0)
          {
            [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
            goto LABEL_280;
          }

          output = [(BWNode *)v56 output];
        }

        v57 = [BWFileCoordinatorNode alloc];
        v58 = 1;
        goto LABEL_168;
      }

      pipelineOutputsCopy3 = pipelineOutputs;
      v57 = [BWFileCoordinatorNode alloc];
      v104 = 0;
      v58 = 1;
LABEL_169:
      LOBYTE(v176) = v104 & 1;
      v105 = -[BWFileCoordinatorNode initWithNumberOfVideoInputs:numberOfAudioInputs:numberOfMetadataInputs:numberOfActionOnlyOutputs:overCaptureEnabled:allowLowLatencyWhenPossible:useTrueVideoFileRecordingStaging:motionDataTimeMachine:](v57, "initWithNumberOfVideoInputs:numberOfAudioInputs:numberOfMetadataInputs:numberOfActionOnlyOutputs:overCaptureEnabled:allowLowLatencyWhenPossible:useTrueVideoFileRecordingStaging:motionDataTimeMachine:", v199, v198, v30, v194, v24 & 1, v58, v176, [*(pipelineCopy + 32) motionDataTimeMachine]);
      -[BWFileCoordinatorNode setFlagsLastFrameForVideoCompressor:](v105, "setFlagsLastFrameForVideoCompressor:", [irisSinkConfiguration irisMovieCaptureEnabled] ^ 1);
      [(BWFileCoordinatorNode *)v105 setAudioSourceDelegate:statusDelegate];
      [(BWFileCoordinatorNode *)v105 setFileCoordinatorStatusDelegate:requestDelegate];
      if (([scheduler addNode:v105 error:v269] & 1) == 0)
      {
        [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
        goto LABEL_280;
      }

      v106 = v105;
      *(pipelineCopy + 40) = v106;
      inputs = [(BWNode *)v106 inputs];
      outputs = [*(pipelineCopy + 40) outputs];
      if (output)
      {
        v109 = v215;
        if (([parentPipeline connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](inputs pipelineStage:{"objectAtIndexedSubscript:", 0), 0}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v211 = [outputs objectAtIndexedSubscript:0];
        v110 = 1;
      }

      else
      {
        v110 = 0;
        v211 = 0;
        v109 = v215;
      }

      if ([outputCopy count] >= 2)
      {
        v239 = 0u;
        v238 = 0u;
        v237 = 0u;
        v236 = 0u;
        v111 = [outputCopy countByEnumeratingWithState:&v236 objects:v235 count:16];
        if (v111)
        {
          v112 = v111;
          v113 = *v237;
          do
          {
            for (j = 0; j != v112; ++j)
            {
              if (*v237 != v113)
              {
                objc_enumerationMutation(outputCopy);
              }

              v115 = *(*(&v236 + 1) + 8 * j);
              if (([v115 isEqualToString:{objc_msgSend(v109, "connectionID")}] & 1) == 0)
              {
                if (![parentPipeline connectOutput:objc_msgSend(outputCopy toInput:"objectForKeyedSubscript:" pipelineStage:{v115), -[NSArray objectAtIndexedSubscript:](inputs, "objectAtIndexedSubscript:", v110), 0}])
                {
                  [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                  goto LABEL_280;
                }

                ++v110;
                v109 = v215;
              }
            }

            v112 = [outputCopy countByEnumeratingWithState:&v236 objects:v235 count:16];
          }

          while (v112);
        }
      }

      if (captureOutput)
      {
        v116 = v213;
        if (([parentPipeline connectOutput:captureOutput toInput:-[NSArray objectAtIndexedSubscript:](inputs pipelineStage:{"objectAtIndexedSubscript:", v110), 0}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v207 = [outputs objectAtIndexedSubscript:v110++];
      }

      else
      {
        v207 = 0;
        v116 = v213;
      }

      if (inferenceOutputCopy)
      {
        if (([parentPipeline connectOutput:inferenceOutputCopy toInput:-[NSArray objectAtIndexedSubscript:](inputs pipelineStage:{"objectAtIndexedSubscript:", v110), 0}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v200 = [outputs objectAtIndexedSubscript:v110++];
      }

      else
      {
        v200 = 0;
      }

      v233 = 0u;
      v234 = 0u;
      v231 = 0u;
      v232 = 0u;
      v117 = [array2 countByEnumeratingWithState:&v231 objects:v230 count:16];
      if (v117)
      {
        v118 = v117;
        v119 = *v232;
        v120 = v110;
        do
        {
          v121 = 0;
          v122 = v120;
          do
          {
            if (*v232 != v119)
            {
              objc_enumerationMutation(array2);
            }

            if (![parentPipeline connectOutput:*(*(&v231 + 1) + 8 * v121) toInput:-[NSArray objectAtIndexedSubscript:](inputs pipelineStage:{"objectAtIndexedSubscript:", v122), 0}])
            {
              [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
              goto LABEL_280;
            }

            [v116 addObject:{objc_msgSend(outputs, "objectAtIndexedSubscript:", v122++)}];
            ++v121;
          }

          while (v118 != v121);
          v118 = [array2 countByEnumeratingWithState:&v231 objects:v230 count:16];
          v120 = v122;
        }

        while (v118);
      }

      else
      {
        LODWORD(v122) = v110;
      }

      v123 = [sourceOutput count];
      if (pipelineOutputsCopy3 || v123)
      {
        movieFileSinkPipelineConfiguration3 = [dCopy movieFileSinkPipelineConfiguration];
        v124 = array;
        if (!movieFileSinkPipelineConfiguration3 || (*(movieFileSinkPipelineConfiguration3 + 112) & 1) == 0)
        {
          if (pipelineOutputsCopy3)
          {
            *time = 0;
            [dCopy movieFileSinkPipelineConfiguration];
            v175 = [FigCaptureMovieFileSinkHeadPipeline _buildFaceDetectionNode:v212 parentPipeline:? objectDetectionSourceOutput:? faceDetectionNodeOut:?];
            if (v175)
            {
              v68 = v175;
              [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
              return v68;
            }

            sourceOutput = [*time boxedMetadataOutputs];
          }

          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v126 = [sourceOutput countByEnumeratingWithState:&v226 objects:v225 count:16];
          if (v126)
          {
            v127 = v126;
            v128 = *v227;
            v129 = v122;
            do
            {
              v130 = 0;
              v122 = v129;
              do
              {
                if (*v227 != v128)
                {
                  objc_enumerationMutation(sourceOutput);
                }

                if (![parentPipeline connectOutput:*(*(&v226 + 1) + 8 * v130) toInput:objc_msgSend(objc_msgSend(*(v212 + 40) pipelineStage:{"inputs"), "objectAtIndexedSubscript:", v122), 0}])
                {
                  [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                  goto LABEL_280;
                }

                [v213 addObject:{objc_msgSend(outputs, "objectAtIndexedSubscript:", v122)}];
                [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v213, "count") - 1)}];
                ++v122;
                ++v130;
              }

              while (v127 != v130);
              v127 = [sourceOutput countByEnumeratingWithState:&v226 objects:v225 count:16];
              v129 = v122;
            }

            while (v127);
          }
        }
      }

      else
      {
        v124 = array;
      }

      if (v215)
      {
        v217 = [outputs objectAtIndexedSubscript:v122];
        [v213 addObject:?];
        *(v212 + 184) = [v213 count] - 1;
      }

      else
      {
        v217 = 0;
      }

      v131 = v124;
      v132 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.moviefile.head" priority:14 workgroup:enabled];
      output2 = v211;
      if (v211)
      {
        v134 = v132;
        if ([irisSinkConfiguration irisMovieCaptureEnabled])
        {
          v135 = [BWPhotoDecompressorNode alloc];
          v136 = v205;
          if (v205)
          {
            v136 = *(v205 + 138);
          }

          v137 = [(BWPhotoDecompressorNode *)v135 initWithSynchronizedSlaveAttachedMediaDecompressionEnabled:v136 & 1];
          if (([scheduler addNode:v137 error:v269] & 1) == 0)
          {
            [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
            goto LABEL_280;
          }

          if (([parentPipeline connectOutput:v211 toInput:-[BWNode input](v137 pipelineStage:{"input"), v134}] & 1) == 0)
          {
            [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
            goto LABEL_280;
          }

          output2 = [(BWNode *)v137 output];
          *(v212 + 48) = v137;
        }
      }

      if (v205)
      {
        v138 = *(v205 + 8);
      }

      else
      {
        v138 = 0;
      }

      requiredMaxFrameRate = [v138 requiredMaxFrameRate];
      v141 = FigCaptureFrameRateAsInt(requiredMaxFrameRate, v140);
      v142 = +[FigCaptureCameraParameters sharedInstance];
      v221 = 0u;
      v222 = 0u;
      v223 = 0u;
      v224 = 0u;
      captureStreams = [v204 captureStreams];
      v144 = [captureStreams countByEnumeratingWithState:&v221 objects:v220 count:16];
      if (v144)
      {
        v145 = v144;
        v146 = output2;
        v147 = *v222;
LABEL_231:
        v148 = 0;
        while (1)
        {
          if (*v222 != v147)
          {
            objc_enumerationMutation(captureStreams);
          }

          v149 = *(*(&v221 + 1) + 8 * v148);
          portType = [v149 portType];
          sensorIDString = [v149 sensorIDString];
          if (v141 < 61)
          {
            if ([(FigCaptureCameraParameters *)v142 chromaticDefringingEnabledForVideoForPortType:portType sensorIDString:sensorIDString])
            {
LABEL_241:
              sensorIDString2 = [v149 sensorIDString];
              portType2 = [v149 portType];
              if (v205)
              {
                v155 = *(v205 + 138);
              }

              else
              {
                v155 = 0;
              }

              v152 = v212;
              v131 = array;
              v156 = [[BWVideoDefringingNode alloc] initWithSensorIDString:sensorIDString2 portType:portType2 propagateSynchronizedSlaveFrame:v155 & 1 isSlomo:v141 > 60];
              if (v156)
              {
                v157 = v156;
                if ([scheduler addNode:v156 error:v269])
                {
                  if ([parentPipeline connectOutput:v146 toInput:-[BWNode input](v157 pipelineStage:{"input"), +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", @"com.apple.coremedia.capture.moviefile.defringing", 14)}])
                  {
                    output2 = [(BWNode *)v157 output];
                    [*(v212 + 48) setDownstreamIsSharingOutputPool:1];
                    *(v212 + 56) = v157;
                    goto LABEL_248;
                  }

                  [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                }

                else
                {
                  [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                }
              }

              else
              {
                [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
              }

              goto LABEL_280;
            }
          }

          else if ([(FigCaptureCameraParameters *)v142 chromaticDefringingEnabledForSlomoForPortType:portType sensorIDString:sensorIDString])
          {
            goto LABEL_241;
          }

          if (v145 == ++v148)
          {
            v145 = [captureStreams countByEnumeratingWithState:&v221 objects:v220 count:16];
            if (v145)
            {
              goto LABEL_231;
            }

            v152 = v212;
            v131 = array;
            output2 = v146;
            goto LABEL_248;
          }
        }
      }

      v152 = v212;
LABEL_248:
      v158 = v215;
      output3 = v207;
      output5 = v200;
      if (v207 && ([irisSinkConfiguration irisMovieCaptureEnabled] & 1) == 0)
      {
        v161 = objc_alloc_init(BWAudioConverterNode);
        [(BWNode *)v161 setName:@"AudioConverterNode"];
        [(BWAudioConverterNode *)v161 setCinematicAudioCapture:0];
        -[BWAudioConverterNode setExpectsToRecordOnlyOnce:](v161, "setExpectsToRecordOnlyOnce:", [objc_msgSend(v215 "movieFileSinkConfiguration")]);
        if (([scheduler addNode:v161 error:v269] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v162 = v161;
        *(v152 + 72) = v162;
        if (([parentPipeline connectOutput:v207 toInput:-[BWNode input](v162 pipelineStage:{"input"), v192}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        output3 = [*(v152 + 72) output];
      }

      if (v205 && *(v205 + 152) == 1 && v200)
      {
        *(v152 + 192) = -1;
        v163 = objc_alloc_init(BWAudioRemixAnalysisMetadataNode);
        if (!v163)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v164 = v163;
        -[BWAudioRemixAnalysisMetadataNode setMultiCamClientCompositingEnabled:](v163, "setMultiCamClientCompositingEnabled:", [objc_msgSend(v215 "sinkConfiguration")]);
        -[BWAudioRemixAnalysisMetadataNode setExpectsToRecordOnlyOnce:](v164, "setExpectsToRecordOnlyOnce:", [objc_msgSend(v215 "movieFileSinkConfiguration")]);
        if (![scheduler addNode:v164 error:v269] || v269[0])
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v165 = v164;
        *(v152 + 88) = v165;
        if (([parentPipeline connectOutput:v200 toInput:-[BWNode input](v165 pipelineStage:{"input"), v192}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        output4 = [*(v152 + 88) output];
        [v213 addObject:{objc_msgSend(*(v152 + 88), "metadataOutput")}];
        *(v152 + 192) = [v213 count] - 1;
        v167 = objc_alloc_init(BWAudioConverterNode);
        [(BWNode *)v167 setName:@"Cinematic Audio Converter"];
        v168 = [objc_msgSend(objc_msgSend(v215 "sourceConfiguration")];
        if (!v168 || (FigCapturePixelFormatIsUsedForProRes(v168) & 1) == 0)
        {
          *time = xmmword_1AD046F08;
          *&time[16] = unk_1AD046F18;
          v218[0] = 0x1F2175490;
          v218[1] = 0x1F21754D0;
          v219[0] = &unk_1F2242F88;
          v219[1] = &unk_1F2242FA0;
          v218[2] = 0x1F2175610;
          v219[2] = [MEMORY[0x1E695DEF0] dataWithBytes:time length:32];
          -[BWAudioConverterNode setSettings:](v167, "setSettings:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v219 forKeys:v218 count:3]);
        }

        [(BWAudioConverterNode *)v167 setCinematicAudioCapture:1];
        -[BWAudioConverterNode setMultiCamClientCompositingEnabled:](v167, "setMultiCamClientCompositingEnabled:", [objc_msgSend(v215 "sinkConfiguration")]);
        -[BWAudioConverterNode setExpectsToRecordOnlyOnce:](v167, "setExpectsToRecordOnlyOnce:", [objc_msgSend(v215 "movieFileSinkConfiguration")]);
        if (([scheduler addNode:v167 error:v269] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        v169 = v167;
        *(v152 + 80) = v169;
        if (([parentPipeline connectOutput:output4 toInput:-[BWNode input](v169 pipelineStage:{"input"), v192}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        output5 = [*(v152 + 80) output];
        v158 = v215;
      }

      if (v217)
      {
        v170 = objc_alloc_init(BWVideoOrientationMetadataNode);
        v171 = v170;
        if (v205)
        {
          -[BWVideoOrientationMetadataNode setSourcePosition:](v170, "setSourcePosition:", [*(v205 + 8) sourcePosition]);
          v172 = *(v205 + 8);
        }

        else
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:v170 videoSourceCaptureOutputsByConnectionID:? audioSourceCaptureOutput:? audioSourceCinematicAudioCaptureOutput:? smartCameraInferenceOutput:? detectedObjectBoxedMetadataOutputs:? objectDetectionSourceOutput:? metadataSourcePipelineOutputs:? graph:? parentPipeline:? inferenceScheduler:? captureDevicesByConnectionID:? audioSourceDelegate:? fileCoordinatorStatusDelegate:? irisRequestDelegate:? masterClock:? workgroup:? videoGreenGhostMitigationEnabled:?];
          v172 = 0;
        }

        -[BWVideoOrientationMetadataNode setSourceDeviceType:](v171, "setSourceDeviceType:", [v172 sourceDeviceType]);
        [(BWVideoOrientationMetadataNode *)v171 setMasterClock:workgroup];
        -[BWVideoOrientationMetadataNode setPhysicalMirroringForMovieRecordingEnabled:](v171, "setPhysicalMirroringForMovieRecordingEnabled:", [v158 physicalMirroringForMovieRecordingEnabled]);
        if (([scheduler addNode:v171 error:v269] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        if (([parentPipeline connectOutput:v217 toInput:-[BWNode input](v171 pipelineStage:{"input"), v192}] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        [v213 setObject:-[BWNode output](v171 atIndexedSubscript:{"output"), *(v152 + 184)}];
        *(v152 + 120) = [v158 connectionID];
        *(v152 + 128) = [objc_msgSend(v158 "sourceConfiguration")];
        *(v152 + 188) = [v158 underlyingDeviceType];
        *(v152 + 96) = v171;
      }

      *(v152 + 144) = output2;
      *(v152 + 152) = output3;
      *(v152 + 160) = output5;
      if ([v213 count])
      {
        *(v152 + 168) = v213;
      }

      if ([v131 count])
      {
        *(v152 + 176) = v131;
      }

LABEL_280:
      if (v269[0])
      {
        return [v269[0] code];
      }

      return 0;
    }

    output = 0;
LABEL_167:
    v58 = v51 ^ 1u;
    v57 = [BWFileCoordinatorNode alloc];
    if (v24)
    {
LABEL_168:
      pipelineOutputsCopy3 = pipelineOutputs;
      v103 = v24;
      LOBYTE(v24) = *(v24 + 138);
      v104 = *(v103 + 151);
      goto LABEL_169;
    }

    pipelineOutputsCopy3 = pipelineOutputs;
    v104 = 0;
    goto LABEL_169;
  }

  v183 = irisMovieCaptureEnabled;
  if (v24)
  {
    v195 = *(v24 + 136);
  }

  else
  {
    v195 = 0;
  }

  v40 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695DFF8] fileURLWithPath:NSTemporaryDirectory() isDirectory:{1), "URLByAppendingPathComponent:isDirectory:", 0x1F2187490, 1), "URLByAppendingPathComponent:isDirectory:", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString"), 1}];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v267 = *MEMORY[0x1E696A3A0];
  v268 = *MEMORY[0x1E696A388];
  v190 = v40;
  [defaultManager createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObjects:forKeys:count:", &v268, &v267, 1), 0}];
  output6 = output;
  if (!output)
  {
    v47 = 0;
LABEL_57:
    v50 = v215;
    goto LABEL_58;
  }

  if (v24)
  {
    v43 = *(v24 + 208) ^ 1 | v34;
    if ((v43 & 1) == 0)
    {
      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v204 overCaptureEnabled])
      {
        [v44 addObject:@"SynchronizedSlaveFrame"];
      }

      if (*(v24 + 210) == 1)
      {
        [v44 addObjectsFromArray:{BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v24 + 211))}];
      }

      v45 = [BWAttachedMediaSplitNode alloc];
      v266 = @"PrimaryFormat";
      v46 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:attachedMediaToPropagateToPrimaryOutput:](v45, "initWithAttachedMediaKeys:attachedMediaToPropagateToPrimaryOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v266 count:1], v44);
      [(BWNode *)v46 setName:@"Movie File Depth Remover"];
      if (([scheduler addNode:v46 error:v269] & 1) == 0)
      {
        [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
        goto LABEL_280;
      }

      if (([parentPipeline connectOutput:output toInput:-[BWNode input](v46 pipelineStage:{"input"), 0}] & 1) == 0)
      {
        [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
        goto LABEL_280;
      }

      output6 = [(NSArray *)[(BWNode *)v46 outputs] objectAtIndexedSubscript:0];
      if (!output6)
      {
        v47 = 1;
        v50 = v215;
        goto LABEL_59;
      }
    }

    v47 = v43 ^ 1;
    v48 = *(v24 + 72);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  if (![objc_msgSend(v48 "irisSinkConfiguration")])
  {
    goto LABEL_57;
  }

  v49 = objc_alloc_init(BWFrameRateGovernorNode);
  [(BWNode *)v49 setName:@"Movie File Frame Rate Governor"];
  [(BWFrameRateGovernorNode *)v49 setDropsStillBracketFramesToMaintainConsistentFrameRate:1];
  [(BWFrameRateGovernorNode *)v49 setDropsStartupFramesWithUnstableAE:1];
  [(BWFrameRateGovernorNode *)v49 setPreservesMotionDataFromDroppedFrames:1];
  v50 = v215;
  if (([scheduler addNode:v49 error:v269] & 1) == 0)
  {
    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
    goto LABEL_280;
  }

  if (([parentPipeline connectOutput:output6 toInput:-[BWNode input](v49 pipelineStage:{"input"), 0}] & 1) == 0)
  {
    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
    goto LABEL_280;
  }

  output6 = [(BWNode *)v49 output];
LABEL_58:
  if (v24)
  {
LABEL_59:
    v201 = v47;
    v182 = *(v24 + 114) | (*(v24 + 118) << 32);
    goto LABEL_60;
  }

  v201 = v47;
  v182 = 0;
LABEL_60:
  if ((v195 & 1) == 0)
  {
    v181 = 0;
    outputs = 0;
LABEL_64:
    v210 = output6;
    if (v24)
    {
      v59 = *(v24 + 104);
    }

    else
    {
      v59 = 0;
    }

    v60 = [v59 objectForKeyedSubscript:{objc_msgSend(v50, "connectionID")}];
    v61 = v50;
    if (v60)
    {
      v62 = *(v60 + 16);
      if ([v61 irisVISMethod] == 3)
      {
        if (!v62)
        {
          v63 = 0;
          goto LABEL_104;
        }

        goto LABEL_103;
      }
    }

    else
    {
      v62 = 0;
      v63 = 0;
      if ([v61 irisVISMethod] == 3)
      {
        goto LABEL_104;
      }
    }

    irisVISMethod = [v215 irisVISMethod];
    v63 = 0;
    if (!v62 || irisVISMethod != 5)
    {
      goto LABEL_104;
    }

LABEL_103:
    v63 = 1;
LABEL_104:
    v189 = v63;
    if ([objc_msgSend(objc_msgSend(v215 "sourceConfiguration")])
    {
      v187 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")] > 2;
    }

    else
    {
      v187 = 0;
    }

    cameraInfoByPortType = [v204 cameraInfoByPortType];
    v71 = [BWIrisStagingNode alloc];
    irisMovieAutoTrimMethod = [irisSinkConfiguration irisMovieAutoTrimMethod];
    v188 = v71;
    v184 = cameraInfoByPortType;
    if (v24)
    {
      v185 = *(v24 + 138);
      v186 = *(v24 + 137);
      if ((v201 & 1) == 0)
      {
        v73 = *(v24 + 208);
LABEL_111:
        if (v60)
        {
          v74 = *(v60 + 40);
        }

        else
        {
          v74 = 0;
        }

        pipelineOutputsCopy4 = pipelineOutputs;
        v75 = irisMovieAutoTrimMethod;
        if (v24)
        {
          v76 = v24;
          LOBYTE(v24) = *(v24 + 139);
          v77 = *(v76 + 144);
          v78 = *(v76 + 210);
          v79 = *(v76 + 211);
        }

        else
        {
          v78 = 0;
          v77 = 0;
          v79 = 0;
        }

        BYTE2(v180) = [v204 smartFramingEnabled];
        BYTE1(v180) = v79 & 1;
        LOBYTE(v180) = v78 & 1;
        HIDWORD(v178) = v77;
        BYTE1(v178) = v187;
        LOBYTE(v178) = v24 & 1;
        HIDWORD(v176) = v189;
        BYTE2(v176) = 1;
        BYTE1(v176) = v73 & 1;
        LOBYTE(v176) = v185;
        LODWORD(v80) = v74;
        *&v81 = v38;
        *&v82 = v36;
        v83 = [BWIrisStagingNode initWithNumberOfVideoInputs:v188 numberOfAudioInputs:"initWithNumberOfVideoInputs:numberOfAudioInputs:numberOfMetadataInputs:autoTrimMethod:vitalityScoringEnabled:captureDeviceHasOverCaptureEnabled:overCaptureEnabled:depthEnabled:videoStabilizationOverscanOverride:sequenceAdjusterEnabled:visMotionMetadataPreloadingMode:frameReconstructionEnabled:subjectRelightingEnabled:intermediateJPEGCompressionQuality:intermediateJPEGCompressionRate:maxLossyCompressionLevel:temporaryMovieDirectoryURL:cameraInfoByPortType:smartStyleRenderingEnabled:smartStyleReversibilityEnabled:smartFramingEnabled:irisRequestDelegate:inferenceScheduler:" numberOfMetadataInputs:v199 autoTrimMethod:v198 vitalityScoringEnabled:v30 captureDeviceHasOverCaptureEnabled:v75 overCaptureEnabled:v195 & 1 depthEnabled:v186 videoStabilizationOverscanOverride:v80 sequenceAdjusterEnabled:v81 visMotionMetadataPreloadingMode:v82 frameReconstructionEnabled:v176 subjectRelightingEnabled:v178 intermediateJPEGCompressionQuality:v190 intermediateJPEGCompressionRate:v184 maxLossyCompressionLevel:v180 temporaryMovieDirectoryURL:clock cameraInfoByPortType:iD smartStyleRenderingEnabled:? smartStyleReversibilityEnabled:? smartFramingEnabled:? irisRequestDelegate:? inferenceScheduler:?];
        if (([scheduler addNode:v83 error:v269] & 1) == 0)
        {
          [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
          goto LABEL_280;
        }

        *(v212 + 32) = v83;
        [(BWNode *)v83 setName:@"Movie File Staging Node"];
        [(BWIrisStagingNode *)v83 setIntermediateJPEGDownstreamRetainedBufferCount:5];
        if (irisSinkConfiguration)
        {
          [irisSinkConfiguration irisMovieDuration];
        }

        else
        {
          memset(time, 0, 24);
        }

        CMTimeMultiplyByRatio(&v262, time, 1, 2);
        *time = v262;
        [(BWIrisStagingNode *)v83 setBufferingTime:time];
        if (irisSinkConfiguration)
        {
          [irisSinkConfiguration irisMovieVideoFrameDuration];
        }

        else
        {
          v260 = 0uLL;
          v261 = 0;
        }

        *time = v260;
        *&time[16] = v261;
        [(BWIrisStagingNode *)v83 setTargetFrameDuration:time];
        if (v195)
        {
          [(BWIrisStagingNode *)v83 setVitalityScoringSmartCameraPipelineVersion:v182];
        }

        [(BWIrisStagingNode *)v83 setMasterClock:workgroup];
        -[BWIrisStagingNode setApplyPreviewShift:](v83, "setApplyPreviewShift:", [irisSinkConfiguration irisApplyPreviewShift]);
        if (dword_1ED8440B0)
        {
          LODWORD(v265) = 0;
          LOBYTE(v264) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v85 = v265;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v264))
          {
            v86 = v85;
          }

          else
          {
            v86 = v85 & 0xFFFFFFFE;
          }

          if (v86)
          {
            irisMovieCaptureSuspended = [irisSinkConfiguration irisMovieCaptureSuspended];
            *v256 = 136315394;
            *&v256[4] = "[FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:]";
            v257 = 1024;
            v258 = irisMovieCaptureSuspended;
            LODWORD(v179) = 18;
            v177 = v256;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ([irisSinkConfiguration irisMovieCaptureSuspended])
        {
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&v255, HostTimeClock);
          *time = v255;
          [(BWIrisStagingNode *)v83 setEndIrisMovieCaptureTime:time];
        }

        inputs2 = [(BWNode *)v83 inputs];
        outputs2 = [(BWNode *)v83 outputs];
        v91 = v210;
        if (v210)
        {
          if (([parentPipeline connectOutput:v210 toInput:-[NSArray objectAtIndexedSubscript:](inputs2 pipelineStage:{"objectAtIndexedSubscript:", 0), 0}] & 1) == 0)
          {
            [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
            goto LABEL_280;
          }

          output = [(NSArray *)outputs2 objectAtIndexedSubscript:0];
          v91 = 1;
          if (captureOutput)
          {
            goto LABEL_136;
          }
        }

        else
        {
          output = 0;
          if (captureOutput)
          {
LABEL_136:
            if (([parentPipeline connectOutput:captureOutput toInput:-[NSArray objectAtIndexedSubscript:](inputs2 pipelineStage:{"objectAtIndexedSubscript:", v91), 0}] & 1) == 0)
            {
              [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
              goto LABEL_280;
            }

            v92 = [(NSArray *)outputs2 objectAtIndexedSubscript:v91++];
LABEL_140:
            captureOutput = v92;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v93 = [graph countByEnumeratingWithState:&v251 objects:v250 count:16];
            if (v93)
            {
              v94 = v93;
              v95 = *v252;
              do
              {
                for (k = 0; k != v94; ++k)
                {
                  if (*v252 != v95)
                  {
                    objc_enumerationMutation(graph);
                  }

                  if (![parentPipeline connectOutput:*(*(&v251 + 1) + 8 * k) toInput:-[NSArray objectAtIndexedSubscript:](inputs2 pipelineStage:{"objectAtIndexedSubscript:", v91), 0}])
                  {
                    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                    goto LABEL_280;
                  }

                  [array2 addObject:{-[NSArray objectAtIndexedSubscript:](outputs2, "objectAtIndexedSubscript:", v91++)}];
                }

                v94 = [graph countByEnumeratingWithState:&v251 objects:v250 count:16];
              }

              while (v94);
            }

            v97 = [sourceOutput count];
            if (pipelineOutputsCopy4 || v97)
            {
              pipelineCopy = v212;
              v24 = v205;
              if (pipelineOutputsCopy4)
              {
                *time = 0;
                [dCopy movieFileSinkPipelineConfiguration];
                v174 = [FigCaptureMovieFileSinkHeadPipeline _buildFaceDetectionNode:v212 parentPipeline:? objectDetectionSourceOutput:? faceDetectionNodeOut:?];
                if (v174)
                {
                  v68 = v174;
                  [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                  return v68;
                }

                sourceOutput = [*time boxedMetadataOutputs];
              }

              array4 = [MEMORY[0x1E695DF70] array];
              v246 = 0u;
              v247 = 0u;
              v248 = 0u;
              v249 = 0u;
              v99 = [sourceOutput countByEnumeratingWithState:&v246 objects:v245 count:16];
              if (!v99)
              {
                sourceOutput = array4;
LABEL_163:
                if (outputs)
                {
                  if (v91 != [(NSArray *)inputs2 count]- 1)
                  {
                    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                  }

                  if (([parentPipeline connectOutput:outputs toInput:-[NSArray objectAtIndexedSubscript:](inputs2 pipelineStage:{"objectAtIndexedSubscript:", v91), v181}] & 1) == 0)
                  {
                    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                    goto LABEL_280;
                  }
                }

                pipelineOutputs = 0;
                v51 = v183;
                goto LABEL_167;
              }

              v100 = v99;
              v101 = *v247;
              do
              {
                for (m = 0; m != v100; ++m)
                {
                  if (*v247 != v101)
                  {
                    objc_enumerationMutation(sourceOutput);
                  }

                  if (![parentPipeline connectOutput:*(*(&v246 + 1) + 8 * m) toInput:-[NSArray objectAtIndexedSubscript:](inputs2 pipelineStage:{"objectAtIndexedSubscript:", v91), 0}])
                  {
                    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
                    goto LABEL_280;
                  }

                  [array4 addObject:{-[NSArray objectAtIndexedSubscript:](outputs2, "objectAtIndexedSubscript:", v91++)}];
                }

                v100 = [sourceOutput countByEnumeratingWithState:&v246 objects:v245 count:16];
              }

              while (v100);
              sourceOutput = array4;
            }

            pipelineCopy = v212;
            v24 = v205;
            goto LABEL_163;
          }
        }

        v92 = 0;
        goto LABEL_140;
      }
    }

    else
    {
      v185 = 0;
      v186 = 0;
    }

    v73 = 0;
    goto LABEL_111;
  }

  if (outputs)
  {
    v181 = 0;
    goto LABEL_64;
  }

  v64 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:1986618469];
  [(BWNode *)v64 setName:@"Inferences (SmartCam and VitalityScoring) Splitter"];
  if (([scheduler addNode:v64 error:v269] & 1) == 0)
  {
    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
    goto LABEL_280;
  }

  if (([parentPipeline connectOutput:output6 toInput:-[BWNode input](v64 pipelineStage:{"input"), 0}] & 1) == 0)
  {
    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
    goto LABEL_280;
  }

  output6 = [(NSArray *)[(BWNode *)v64 outputs] objectAtIndexedSubscript:0];
  v181 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.moviefile.smartmedia" priority:0 workgroup:enabled discardsLateSampleData:1];
  if (!v24 || !*(v24 + 80))
  {
    v67 = FigCaptureCreateAndConfigureSmartCameraInferenceNode(13, v182, v204, iD, 0);
    if (([scheduler addNode:v67 error:v269] & 1) == 0)
    {
      [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
      goto LABEL_280;
    }

    if (([parentPipeline connectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v64 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", 1), -[BWNode input](v67, "input"), v181}] & 1) == 0)
    {
      [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
      goto LABEL_280;
    }

    [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:v67 videoSourceCaptureOutputsByConnectionID:pipelineCopy audioSourceCaptureOutput:time audioSourceCinematicAudioCaptureOutput:? smartCameraInferenceOutput:? detectedObjectBoxedMetadataOutputs:? objectDetectionSourceOutput:? metadataSourcePipelineOutputs:? graph:? parentPipeline:? inferenceScheduler:? captureDevicesByConnectionID:? audioSourceDelegate:? fileCoordinatorStatusDelegate:? irisRequestDelegate:? masterClock:? workgroup:? videoGreenGhostMitigationEnabled:?];
    outputs = *time;
    goto LABEL_77;
  }

  *v256 = 0;
  v264 = 0;
  v265 = 0;
  v65 = [(NSArray *)[(BWNode *)v64 outputs] objectAtIndexedSubscript:1];
  *time = *(v24 + 180);
  *&time[12] = *(v24 + 192);
  v66 = FigCaptureBuildSceneClassifierPipeline(scheduler, v65, v182, 13, v181, 1, time, v204, iD, v256, &v265, &v264);
  if (!v66)
  {
    outputs = [v265 objectAtIndexedSubscript:0];
    *(pipelineCopy + 64) = v264;
    *(pipelineCopy + 104) = [(NSArray *)[(BWNode *)v64 outputs] objectAtIndexedSubscript:1];
    [*(pipelineCopy + 112) addObjectsFromArray:*v256];
LABEL_77:
    v50 = v215;
    if ([v204 overCaptureEnabled])
    {
      v263 = @"SynchronizedSlaveFrame";
      -[BWFanOutNode setAllowedAttachedMediaKeys:forOutputIndex:](v64, "setAllowedAttachedMediaKeys:forOutputIndex:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v263 count:1], 1);
    }

    else
    {
      [(BWFanOutNode *)v64 setDiscardsAttachedMedia:1 forOutputIndex:1];
    }

    goto LABEL_64;
  }

  v68 = v66;
  [FigCaptureMovieFileSinkHeadPipeline _buildMovieFileSinkHeadPipeline:videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:];
  return v68;
}

- (void)dealloc
{
  if ([(BWIrisStagingNode *)self->_irisStagingNode temporaryMovieDirectoryURL])
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkHeadPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (void)setSceneClassifierSuspended:(BOOL)suspended
{
  if (self->_sceneClassifierSinkNode)
  {
    suspendedCopy = suspended;
    sceneClassifierPipelineUpstreamOutput = self->_sceneClassifierPipelineUpstreamOutput;
    if (!sceneClassifierPipelineUpstreamOutput)
    {
      [(FigCaptureMovieFileSinkHeadPipeline *)&self->_sceneClassifierPipelineUpstreamOutput setSceneClassifierSuspended:?];
      sceneClassifierPipelineUpstreamOutput = v5;
    }

    [(BWNodeOutput *)sceneClassifierPipelineUpstreamOutput setDiscardsSampleData:suspendedCopy];
  }
}

- (id)_buildFaceDetectionNode:(uint64_t)node parentPipeline:objectDetectionSourceOutput:faceDetectionNodeOut:
{
  if (!node)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_4();
  if (v3)
  {
    v4 = v2[6];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 count])
  {
    [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_51_3();
    if (v2)
    {
      v2 = v2[6];
    }

    v13 = OUTLINED_FUNCTION_14_8(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63);
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = 0;
        do
        {
          OUTLINED_FUNCTION_50_3();
          if (!v16)
          {
            objc_enumerationMutation(v2);
          }

          CMMetadataFormatDescriptionGetIdentifiers([*(v65 + 8 * v15) formatDescription]);
          v17 = [OUTLINED_FUNCTION_28() addObject:?];
          ++v15;
        }

        while (v14 != v15);
        v14 = OUTLINED_FUNCTION_14_8(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64);
      }

      while (v14);
    }
  }

  v25 = OUTLINED_FUNCTION_18_8();
  if (v25)
  {
    OUTLINED_FUNCTION_48_3();
    FigDebugAssert3();
  }

  else
  {
    *v1 = v66;
  }

  return v25;
}

- (void)initWithConfiguration:(uint64_t)a1 videoSourceCaptureOutputsByConnectionID:(void *)a2 audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:.cold.1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
}

- (uint64_t)_buildMovieFileSinkHeadPipeline:(void *)a3 videoSourceCaptureOutputsByConnectionID:audioSourceCaptureOutput:audioSourceCinematicAudioCaptureOutput:smartCameraInferenceOutput:detectedObjectBoxedMetadataOutputs:objectDetectionSourceOutput:metadataSourcePipelineOutputs:graph:parentPipeline:inferenceScheduler:captureDevicesByConnectionID:audioSourceDelegate:fileCoordinatorStatusDelegate:irisRequestDelegate:masterClock:workgroup:videoGreenGhostMitigationEnabled:.cold.12(void *a1, uint64_t a2, void *a3)
{
  *a3 = [a1 output];
  [objc_msgSend(a1 "input")];
  return [OUTLINED_FUNCTION_17() addObject:?];
}

- (uint64_t)setSceneClassifierSuspended:(void *)a1 .cold.1(void *a1, void *a2)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

@end
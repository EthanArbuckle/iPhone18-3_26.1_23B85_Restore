@interface FigCaptureMovieFileSinkMiddlePipeline
- (FigCaptureMovieFileSinkMiddlePipeline)initWithConfiguration:(id)configuration graph:(id)graph parentPipeline:(id)pipeline headPipeline:(id)headPipeline captureDevicesByConnectionID:(id)d workgroup:(id)workgroup;
- (id)audioOutputForTailIndex:(unint64_t)index;
- (id)metadataOutputsForTailIndex:(unint64_t)index;
- (id)videoOutputForTailIndex:(unint64_t)index;
- (uint64_t)_buildMovieFileSinkExtendedCVISMiddleWithConfiguration:(void *)configuration graph:(id *)graph parentPipeline:(void *)pipeline headPipeline:(uint64_t)headPipeline captureDevicesByConnectionID:(uint64_t)d workgroup:;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkMiddlePipeline

- (FigCaptureMovieFileSinkMiddlePipeline)initWithConfiguration:(id)configuration graph:(id)graph parentPipeline:(id)pipeline headPipeline:(id)headPipeline captureDevicesByConnectionID:(id)d workgroup:(id)workgroup
{
  v23.receiver = self;
  v23.super_class = FigCaptureMovieFileSinkMiddlePipeline;
  v14 = [(FigCapturePipeline *)&v23 initWithGraph:graph name:@"Middle Pipeline"];
  if (v14)
  {
    movieFileSinkPipelineConfiguration = [configuration movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration)
    {
      v16 = 1;
      if (*(movieFileSinkPipelineConfiguration + 138))
      {
        v16 = 2;
      }
    }

    else
    {
      v16 = 1;
    }

    v14->_numberOfTailsToSupport = v16;
    movieFileSinkPipelineConfiguration2 = [configuration movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration2)
    {
      v18 = *(movieFileSinkPipelineConfiguration2 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = ([v18 irisVISMethod] == 3 || objc_msgSend(v18, "irisVISMethod") == 5) && v14->_numberOfTailsToSupport == 1;
    v14->_headPipeline = headPipeline;
    movieFileSinkPipelineConfiguration3 = [configuration movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration3)
    {
      if (((*(movieFileSinkPipelineConfiguration3 + 138) | v19) & 1) == 0)
      {
        return v14;
      }
    }

    else if (!v19)
    {
      return v14;
    }

    v22 = [(FigCaptureMovieFileSinkMiddlePipeline *)v14 _buildMovieFileSinkExtendedCVISMiddleWithConfiguration:configuration graph:graph parentPipeline:pipeline headPipeline:headPipeline captureDevicesByConnectionID:d workgroup:workgroup];
    if (v22)
    {
      [FigCaptureMovieFileSinkMiddlePipeline initWithConfiguration:v22 graph:v14 parentPipeline:? headPipeline:? captureDevicesByConnectionID:? workgroup:?];
      return 0;
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkMiddlePipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (id)videoOutputForTailIndex:(unint64_t)index
{
  if (self->_videoFanOut)
  {
    outputs = [(BWNode *)self->_videoFanOut outputs];

    return [(NSArray *)outputs objectAtIndexedSubscript:index];
  }

  else
  {
    headPipeline = self->_headPipeline;

    return [(FigCaptureMovieFileSinkHeadPipeline *)headPipeline videoOutput];
  }
}

- (id)audioOutputForTailIndex:(unint64_t)index
{
  if (self->_audioFanOut)
  {
    outputs = [(BWNode *)self->_audioFanOut outputs];

    return [(NSArray *)outputs objectAtIndexedSubscript:index];
  }

  else
  {
    headPipeline = self->_headPipeline;

    return [(FigCaptureMovieFileSinkHeadPipeline *)headPipeline audioOutput];
  }
}

- (id)metadataOutputsForTailIndex:(unint64_t)index
{
  metadataFanOuts = self->_metadataFanOuts;
  if (metadataFanOuts)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](metadataFanOuts, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_metadataFanOuts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:{objc_msgSend(objc_msgSend(*(*(&v15 + 1) + 8 * i), "outputs"), "objectAtIndexedSubscript:", index)}];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v9);
    }

    return v6;
  }

  else
  {
    headPipeline = self->_headPipeline;

    return [(FigCaptureMovieFileSinkHeadPipeline *)headPipeline metadataOutputs];
  }
}

- (uint64_t)_buildMovieFileSinkExtendedCVISMiddleWithConfiguration:(void *)configuration graph:(id *)graph parentPipeline:(void *)pipeline headPipeline:(uint64_t)headPipeline captureDevicesByConnectionID:(uint64_t)d workgroup:
{
  if (result)
  {
    v11 = result;
    v102[0] = 0;
    movieFileSinkPipelineConfiguration = [a2 movieFileSinkPipelineConfiguration];
    [a2 movieFilePipelineStage];
    v13 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.moviefile.middle" priority:14 workgroup:d];
    videoOutput = [OUTLINED_FUNCTION_22_4() videoOutput];
    if (!videoOutput)
    {
      goto LABEL_61;
    }

    output = videoOutput;
    movieFileSinkPipelineConfiguration2 = [a2 movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration2)
    {
      v100 = *(movieFileSinkPipelineConfiguration2 + 16);
      if (movieFileSinkPipelineConfiguration)
      {
LABEL_5:
        v96 = *(movieFileSinkPipelineConfiguration + 215);
        goto LABEL_6;
      }
    }

    else
    {
      v100 = 0;
      if (movieFileSinkPipelineConfiguration)
      {
        goto LABEL_5;
      }
    }

    v96 = 0;
LABEL_6:
    [(__CFString *)v100 connectionID];
    v17 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
    if (v17)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v18];
    v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (!v19 && (!movieFileSinkPipelineConfiguration || *(movieFileSinkPipelineConfiguration + 120) != 1))
    {
      v22 = 0;
LABEL_52:
      if (graph)
      {
        [*(graph + v20[715]) irisStagingNode];
      }

      if (movieFileSinkPipelineConfiguration && *(movieFileSinkPipelineConfiguration + 138) == 1)
      {
        v59 = [[BWOverCaptureAttachedMediaSplitNode alloc] initWithBackPressureExtraRetainBufferCount:0];
      }

      else
      {
        v59 = [[BWFanOutNode alloc] initWithFanOutCount:1 mediaType:1986618469];
        [(BWNode *)v59 setName:@"Just Here To Drop Tagged Buffers"];
      }

      [(BWNodeInput *)[(BWNode *)v59 input] setDiscardsSampleDataTaggedToBeDropped:v22];
      if (([graph addNode:v59 error:0] & 1) == 0)
      {
        goto LABEL_77;
      }

      [(BWNode *)v59 input];
      if (([OUTLINED_FUNCTION_24_0() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_77;
      }

      *(v11 + 40) = v59;
LABEL_61:
      if ([OUTLINED_FUNCTION_22_4() audioOutput] && *(v11 + 80) >= 2uLL)
      {
        v60 = [(BWFanOutNode *)[BWOverCaptureFanOutNode alloc] initWithFanOutCount:2 mediaType:1936684398];
        if (([graph addNode:v60 error:0] & 1) == 0)
        {
          goto LABEL_77;
        }

        audioOutput = [OUTLINED_FUNCTION_22_4() audioOutput];
        [(BWNode *)v60 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:audioOutput toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_77;
        }

        *(v11 + 56) = v60;
      }

      result = [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
      if (!result)
      {
        goto LABEL_74;
      }

      if (*(v11 + 80) < 2uLL)
      {
        goto LABEL_73;
      }

      v62 = objc_alloc(MEMORY[0x1E695DF70]);
      [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
      *(v11 + 64) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
      result = [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
      if (!result)
      {
        goto LABEL_74;
      }

      v63 = 0;
      while (1)
      {
        v64 = [(BWFanOutNode *)[BWOverCaptureFanOutNode alloc] initWithFanOutCount:2 mediaType:1835365473];
        if (([graph addNode:v64 error:0] & 1) == 0)
        {
          break;
        }

        v65 = [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
        [(BWNode *)v64 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:v65 toInput:? pipelineStage:?] & 1) == 0)
        {
          break;
        }

        [*(v11 + 64) addObject:v64];
        if ([objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")] <= ++v63)
        {
          goto LABEL_73;
        }
      }

LABEL_77:
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
LABEL_73:
      result = 0;
LABEL_74:
      if (v102[0])
      {
        return [v102[0] code];
      }

      return result;
    }

    v98 = [objc_msgSend(pipeline "irisStagingNode")];
    v95 = [(__CFString *)mfsp_avVideoCodec(v100) isEqualToString:@"hvc1"];
    [(__CFString *)v100 connectionID];
    [OUTLINED_FUNCTION_24_1() objectForKeyedSubscript:?];
    if (v96)
    {
      v94 = 1;
      v21 = 1;
    }

    else if (movieFileSinkPipelineConfiguration && (*(movieFileSinkPipelineConfiguration + 120) & 1) != 0)
    {
      v94 = 0;
      v21 = 4;
    }

    else
    {
      if (graph)
      {
        v21 = [graph[7] irisStagingNode] != 0;
      }

      else
      {
        v21 = 0;
      }

      v94 = 1;
    }

    v23 = [FigCaptureVISPipeline alloc];
    if (v17)
    {
      if (movieFileSinkPipelineConfiguration)
      {
        goto LABEL_22;
      }
    }

    else if (movieFileSinkPipelineConfiguration)
    {
LABEL_22:
      if (v17)
      {
        goto LABEL_23;
      }

      goto LABEL_96;
    }

    if (v17)
    {
LABEL_23:
      if (movieFileSinkPipelineConfiguration)
      {
LABEL_24:
        v24 = *(movieFileSinkPipelineConfiguration + 144);
        v25 = *(movieFileSinkPipelineConfiguration + 148);
        v26 = *(movieFileSinkPipelineConfiguration + 149);
        v27 = *(movieFileSinkPipelineConfiguration + 176);
        v28 = *(movieFileSinkPipelineConfiguration + 212);
        v29 = *(movieFileSinkPipelineConfiguration + 213);
        v30 = *(movieFileSinkPipelineConfiguration + 210);
        v31 = *(movieFileSinkPipelineConfiguration + 211);
        v32 = *(movieFileSinkPipelineConfiguration + 128);
        goto LABEL_25;
      }

LABEL_97:
      v31 = 0;
      v29 = 0;
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v26 = 0;
      v28 = 0;
      v30 = 0;
      v32 = 0;
LABEL_25:
      v91 = v32;
      v90 = v31 & 1;
      v88 = v30 & 1;
      v86 = v29 & 1;
      v84 = v28 & 1;
      v82 = v27 & 1;
      v81 = v26 & 1;
      v79 = v25 & 1;
      v77 = v24;
      v93 = *MEMORY[0x1E6960CF8];
      v76 = *MEMORY[0x1E6960CF8];
      OUTLINED_FUNCTION_42_4();
      HIBYTE(v66) = v33 & 1;
      LOBYTE(v66) = v95;
      v40 = [FigCaptureVISPipeline initWithUpstreamOutput:v34 graph:output name:configuration parentPipeline:@"Middle Over-Capture VIS Pipeline Transforms" videoCaptureConnectionConfiguration:graph pipelineStage:v100 sdofPipelineStage:v13 videoStabilizationType:0 motionAttachmentsSource:v36 fillExtendedRowsOfOutputBuffer:v37 overCaptureEnabled:v66 stereoMode:0 videoStabilizationOverscanOverride:v38 videoStabilizationStrength:v35 motionMetadataPreloadingEnabled:v21 visExecutionMode:v39 pipelineTraceID:v68 captureDevice:v70 outputDimensions:v72 generatedTransformsOutputDimensionsOverride:v74 P3ToBT2020ConversionEnabled:SHIBYTE(v74) stabilizeDepthAttachments:v76 outputDepthDimensions:v77 maxLossyCompressionLevel:v79 videoSTFEnabled:v81 videoGreenGhostMitigationEnabled:v82 lightSourceMaskAndKeypointDescriptorDataEnabled:v84 videoGreenGhostOfflineMetadataEnabled:v86 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v88 smartStyleRenderingEnabled:v90 smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v91 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
      *(v11 + 32) = v40;
      if (v40)
      {
        if (movieFileSinkPipelineConfiguration)
        {
          v41 = *(movieFileSinkPipelineConfiguration + 138) ^ 1;
        }

        else
        {
          v41 = 1;
        }

        v42 = v94 & v41;
        if (v98)
        {
          v22 = v42;
        }

        else
        {
          v22 = 0;
        }

        [-[FigCaptureVISPipeline visNode](v40) setGeneratesDroppedSampleMarkerBuffers:v22];
        if (v98)
        {
          [objc_msgSend(pipeline "fileCoordinatorNode")];
        }

        output = [-[FigCaptureVISPipeline visNode](*(v11 + 32)) output];
        if (!movieFileSinkPipelineConfiguration || *(movieFileSinkPipelineConfiguration + 138) != 1)
        {
LABEL_51:
          v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          goto LABEL_52;
        }

        v43 = [BWAttachedMediaSwapNode alloc];
        v101 = *off_1E798D470;
        v44 = -[BWAttachedMediaSwapNode initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:](v43, "initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:", 0x1F216E930, @"SynchronizedSlaveFrame", [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1], 0);
        if (!v44)
        {
          goto LABEL_77;
        }

        v45 = v44;
        [(BWNode *)v44 setName:@"Swap Primary and Synchronized Slave"];
        if (([graph addNode:v45 error:v102] & 1) == 0)
        {
          goto LABEL_77;
        }

        [(BWNode *)v45 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_77;
        }

        output2 = [(BWNode *)v45 output];
        if (v96)
        {
          v97 = 1;
          v47 = 1;
        }

        else
        {
          v97 = *(movieFileSinkPipelineConfiguration + 120) ^ 1;
          if (*(movieFileSinkPipelineConfiguration + 120))
          {
            v47 = 4;
          }

          else
          {
            v47 = 2;
          }
        }

        v48 = [FigCaptureVISPipeline alloc];
        v92 = *(movieFileSinkPipelineConfiguration + 128);
        v89 = *(movieFileSinkPipelineConfiguration + 210);
        v87 = *(movieFileSinkPipelineConfiguration + 213);
        v85 = *(movieFileSinkPipelineConfiguration + 212);
        v83 = *(movieFileSinkPipelineConfiguration + 176);
        v80 = *(movieFileSinkPipelineConfiguration + 148);
        v78 = *(movieFileSinkPipelineConfiguration + 144);
        OUTLINED_FUNCTION_42_4();
        HIBYTE(v67) = v49 & 1;
        LOBYTE(v67) = v95;
        v55 = [FigCaptureVISPipeline initWithUpstreamOutput:v50 graph:output2 name:configuration parentPipeline:@"Middle Over-Capture VIS Pipeline Synchronized Slave Transforms" videoCaptureConnectionConfiguration:graph pipelineStage:v100 sdofPipelineStage:v13 videoStabilizationType:0 motionAttachmentsSource:v52 fillExtendedRowsOfOutputBuffer:v51 overCaptureEnabled:v67 stereoMode:0 videoStabilizationOverscanOverride:v53 videoStabilizationStrength:0 motionMetadataPreloadingEnabled:v47 visExecutionMode:v54 pipelineTraceID:v69 captureDevice:v71 outputDimensions:v73 generatedTransformsOutputDimensionsOverride:v75 P3ToBT2020ConversionEnabled:SHIBYTE(v75) stabilizeDepthAttachments:v93 outputDepthDimensions:v78 maxLossyCompressionLevel:v80 videoSTFEnabled:HIBYTE(v80) videoGreenGhostMitigationEnabled:v83 lightSourceMaskAndKeypointDescriptorDataEnabled:v85 videoGreenGhostOfflineMetadataEnabled:v87 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v89 smartStyleRenderingEnabled:HIBYTE(v89) smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v92 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
        *(v11 + 48) = v55;
        if (v55)
        {
          output3 = [-[FigCaptureVISPipeline visNode](v55) output];
          if (v98)
          {
            v22 = v97;
          }

          else
          {
            v22 = 0;
          }

          v57 = [[BWAttachedMediaSwapNode alloc] initWithPrimaryFormatToAttachedMediaKey:@"SynchronizedSlaveFrame" attachedMediaKeyToPrimaryFormat:0x1F216E930 sampleBufferAttachmentsToTransfer:0 generatesDroppedSampleMarkerBuffers:v22];
          if (!v57)
          {
            goto LABEL_77;
          }

          v58 = v57;
          [(BWNode *)v57 setName:@"Unswap Primary and Synchronized Slave"];
          if (([graph addNode:v58 error:v102] & 1) == 0)
          {
            goto LABEL_77;
          }

          [(BWNode *)v58 input];
          if (([OUTLINED_FUNCTION_24_0() connectOutput:output3 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_77;
          }

          output = [(BWNode *)v58 output];
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_16_13();
        FigDebugAssert3();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        FigDebugAssert3();
      }

      result = FigSignalErrorAtGM();
      if (result)
      {
        return result;
      }

      goto LABEL_74;
    }

LABEL_96:
    if (movieFileSinkPipelineConfiguration)
    {
      goto LABEL_24;
    }

    goto LABEL_97;
  }

  return result;
}

- (void)initWithConfiguration:(uint64_t)a1 graph:(void *)a2 parentPipeline:headPipeline:captureDevicesByConnectionID:workgroup:.cold.1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
}

@end
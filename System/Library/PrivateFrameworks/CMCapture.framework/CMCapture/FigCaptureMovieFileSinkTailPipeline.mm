@interface FigCaptureMovieFileSinkTailPipeline
- ($2825F4736939C4A6D3AD43837233062D)offlineVISDimensions;
- (CGRect)irisVISCleanOutputRectForCLAP;
- (FigCaptureMovieFileSinkTailPipeline)initWithConfiguration:(id)a3 tailIndex:(unint64_t)a4 numTailPipelines:(unint64_t)a5 graph:(id)a6 parentPipeline:(id)a7 captureDevicesByConnectionID:(id)a8 inferenceScheduler:(id)a9 recordingStatusDelegate:(id)a10 multiCamClientCompositingCallback:(id)a11 workgroup:(id)a12;
- (id)_buildFaceDetectionNode:(uint64_t)a1 parentPipeline:objectDetectionSourceOutput:faceDetectionNodeOut:;
- (id)_metalCommandQueueWithName:(uint64_t)a1 priority:;
- (uint64_t)_appendBackPressureNodeToPreviousVideoOutput:(void *)a3 graph:(void *)a4 parentPipeline:(uint64_t)a5 pipelineStage:(uint64_t)a6 nodeName:(void *)a7 backPressureNodeOut:;
- (uint64_t)_buildMovieFileSinkTailPipeline:(uint64_t)result tailIndex:(void *)a2 numTailPipelines:(BWBackPressureNode *)a3 graph:(uint64_t)a4 parentPipeline:(void *)a5 captureDevicesByConnectionID:(id *)a6 inferenceScheduler:(void *)a7 recordingStatusDelegate:(uint64_t)a8 multiCamClientCompositingCallback:(uint64_t)a9 workgroup:(uint64_t)a10;
- (uint64_t)setUpBackPressureSemaphoresWithIrisIntermediateJPEGPhotoDecompressorNode:(void *)a3 videoDefringingNode:;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkTailPipeline

- (FigCaptureMovieFileSinkTailPipeline)initWithConfiguration:(id)a3 tailIndex:(unint64_t)a4 numTailPipelines:(unint64_t)a5 graph:(id)a6 parentPipeline:(id)a7 captureDevicesByConnectionID:(id)a8 inferenceScheduler:(id)a9 recordingStatusDelegate:(id)a10 multiCamClientCompositingCallback:(id)a11 workgroup:(id)a12
{
  v22.receiver = self;
  v22.super_class = FigCaptureMovieFileSinkTailPipeline;
  v18 = -[FigCapturePipeline initWithGraph:name:](&v22, sel_initWithGraph_name_, a6, [MEMORY[0x1E696AEC0] stringWithFormat:@"Tail Pipeline %d", a4]);
  v19 = v18;
  if (v18)
  {
    v21 = [FigCaptureMovieFileSinkTailPipeline _buildMovieFileSinkTailPipeline:v18 tailIndex:a3 numTailPipelines:a4 graph:a5 parentPipeline:a6 captureDevicesByConnectionID:a7 inferenceScheduler:a8 recordingStatusDelegate:a9 multiCamClientCompositingCallback:a10 workgroup:a11];
    if (v21)
    {
      [FigCaptureMovieFileSinkTailPipeline initWithConfiguration:v21 tailIndex:v19 numTailPipelines:? graph:? parentPipeline:? captureDevicesByConnectionID:? inferenceScheduler:? recordingStatusDelegate:? multiCamClientCompositingCallback:? workgroup:?];
      return 0;
    }
  }

  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkTailPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (CGRect)irisVISCleanOutputRectForCLAP
{
  visPipeline = self->_visPipeline;
  if (visPipeline)
  {
    v3 = [(FigCaptureVISPipeline *)visPipeline irisVISCleanOutputRect];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- ($2825F4736939C4A6D3AD43837233062D)offlineVISDimensions
{
  if (self->_offlineVISEnabled)
  {
    v2 = [(BWNodeInput *)[(BWNode *)self->_videoCompressorNode input] videoFormat];
    v3 = [(BWVideoFormat *)v2 width];
    return (v3 | ([(BWVideoFormat *)v2 height]<< 32));
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_buildMovieFileSinkTailPipeline:(uint64_t)result tailIndex:(void *)a2 numTailPipelines:(BWBackPressureNode *)a3 graph:(uint64_t)a4 parentPipeline:(void *)a5 captureDevicesByConnectionID:(id *)a6 inferenceScheduler:(void *)a7 recordingStatusDelegate:(uint64_t)a8 multiCamClientCompositingCallback:(uint64_t)a9 workgroup:(uint64_t)a10
{
  v598 = a8;
  if (!result)
  {
    return result;
  }

  v11 = a3;
  v13 = result;
  v587 = a4;
  v667[0] = 0;
  v666 = 0;
  *(result + 136) = a3;
  v14 = [a2 movieFileSinkPipelineConfiguration];
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  v542 = a7;
  v586 = [a7 objectForKeyedSubscript:{-[__CFString connectionID](v15, "connectionID")}];
  v619 = [v586 cameraInfoByPortTypeIncludingLSCGains:1 includeCameraInfoForSensorRawProcessing:0];
  if (v16)
  {
    HIDWORD(v550) = *(v16 + 215);
  }

  else
  {
    HIDWORD(v550) = 0;
  }

  v17 = v16;
  v18 = [(__CFString *)v15 irisSinkConfiguration];
  HIDWORD(v524) = [(__CFString *)v15 irisVISEnabled];
  v19 = [(__CFString *)v15 irisSDOFEnabled];
  v632 = v17;
  if (v17)
  {
    v20 = *(v17 + 56);
  }

  else
  {
    v20 = 0;
  }

  if ([v20 enabled])
  {
    HIDWORD(v594) = 1;
  }

  else
  {
    HIDWORD(v594) = [-[__CFString sourceConfiguration](v15 "sourceConfiguration")];
  }

  v21 = [a2 movieFileSinkPipelineConfiguration];
  if (v21)
  {
    v595 = *(v21 + 211);
  }

  else
  {
    v595 = 0;
  }

  if ([a2 videoSourceOutput])
  {
    if (v18)
    {
      v22 = 1;
    }

    else
    {
      v22 = [(__CFString *)v15 livePhotoMetadataWritingEnabled];
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [a2 videoSourceOutput];
  v621 = 0;
  v567 = v18;
  v601 = v22;
  if (v632 && v23)
  {
    v621 = *(v632 + 40) != 0;
  }

  [a2 videoSourceOutput];
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = v24;
  if (v595)
  {
    [v24 addObject:0x1F21AB110];
    [v25 addObject:0x1F21AB130];
    [v25 addObject:0x1F21AAED0];
    [v25 addObject:0x1F21AAEF0];
    [v25 addObject:0x1F21AAF30];
  }

  v26 = [a2 videoSourceOutput];
  v27 = v26 != 0;
  v28 = 1;
  if (v26)
  {
    v28 = 2;
  }

  if (v19)
  {
    v27 = v28;
  }

  v560 = v27;
  v558 = [v25 count];
  v29 = [a2 audioSourceOutput];
  v30 = [a2 cinematicAudioSourceOutput] != 0;
  if (v29)
  {
    ++v30;
  }

  v559 = v30;
  if (v26)
  {
    if (v632)
    {
      v31 = *(v632 + 8);
    }

    else
    {
      v31 = 0;
    }

    HIDWORD(v590) = BWColorSpaceIsHDR([v31 colorSpace]);
  }

  else
  {
    HIDWORD(v590) = 0;
  }

  v32 = [a2 metadataSourceOutputs];
  v629 = [a2 indexesOfDetectedObjectsInMetadataOutputs];
  v600 = [v32 count];
  v637 = [a2 videoSourceOutput];
  v548 = [a2 audioSourceOutput];
  v547 = [a2 cinematicAudioSourceOutput];
  v464 = v11;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.tail.%d"];
  v614 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  v625 = [(__CFString *)v15 stereoVideoCaptureEnabled];
  if (v625)
  {
    [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.stereo.companion.vis.tail.%d"];
    v581 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  }

  else
  {
    v581 = 0;
  }

  [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.compressor.tail.%d"];
  obj = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  v592 = v32;
  if (v19)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.sdof-vis.tail.%d", v11];
    v576 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
    v464 = v11;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.sdof-compressor.tail.%d"];
    v533 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  }

  else
  {
    v576 = 0;
    v533 = 0;
  }

  if (HIDWORD(v594))
  {
    [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.depth-compressor.tail.%d"];
    v530 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  }

  else
  {
    v530 = 0;
  }

  v634 = a2;
  v597 = v15;
  v617 = v11;
  if ([v25 count])
  {
    v639 = [MEMORY[0x1E695DF90] dictionary];
    v662 = 0u;
    v663 = 0u;
    v664 = 0u;
    v665 = 0u;
    v33 = OUTLINED_FUNCTION_58_5();
    if (v33)
    {
      v34 = v33;
      v35 = *v663;
      v36 = v11;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v663 != v35)
          {
            objc_enumerationMutation(v25);
          }

          v38 = *(*(&v662 + 1) + 8 * i);
          v39 = mfsp_pipelineNameFromSmartStyleAttachedMediaKey(v38);
          v40 = MEMORY[0x1E696AEC0];
          v464 = [(__CFString *)v39 lowercaseString];
          v469 = v36;
          [v40 stringWithFormat:@"com.apple.coremedia.capture.moviefile.%@-compressor.tail.%d"];
          [v639 setObject:objc_msgSend(OUTLINED_FUNCTION_28() forKeyedSubscript:{"pipelineStageWithName:priority:workgroup:"), v38}];
        }

        v34 = OUTLINED_FUNCTION_58_5();
      }

      while (v34);
      v15 = v597;
      v11 = v617;
    }
  }

  else
  {
    v639 = 0;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v42 = [MEMORY[0x1E695DF70] array];
  v644 = [MEMORY[0x1E695DF90] dictionary];
  v549 = v42;
  if (v632)
  {
    v570 = *(v632 + 96);
    v572 = *(v632 + 88);
  }

  else
  {
    v570 = 0;
    v572 = 0;
  }

  v43 = [a2 irisIntermediateJPEGPhotoDecompressorNode];
  HIDWORD(v535) = v43 != 0;
  if (v43)
  {
    [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.iris.decompression.backpressure.%d"];
    v526 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:?];
  }

  else
  {
    v526 = 0;
  }

  v44 = a6;
  [(__CFString *)v15 connectionID];
  v45 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
  if (v45)
  {
    v46 = *(v45 + 16);
  }

  else
  {
    v46 = 0;
  }

  *(v13 + 148) = v46;
  if (v632)
  {
    v47 = *(v632 + 138);
  }

  else
  {
    v47 = 0;
  }

  v605 = v45;
  if (a6)
  {
    v48 = [a6[7] irisStagingNode] == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v632;
  if (v632)
  {
    v49 = *(v632 + 120);
  }

  HIDWORD(v568) = 0;
  v603 = v47;
  v50 = v47 ^ 1u;
  if ((v49 & 1) == 0 && ((v47 ^ 1) & 1) == 0)
  {
    if (v11)
    {
      v48 = 0;
    }

    HIDWORD(v568) = v48;
  }

  v610 = mfsp_avVideoCodec(v15);
  LODWORD(v599) = [(__CFString *)v610 isEqualToString:@"hvc1"];
  v51 = v632;
  if (v632)
  {
    v52 = *(v632 + 8);
  }

  else
  {
    v52 = 0;
  }

  v53 = [objc_msgSend(v52 "depthDataFormat")];
  v635 = v13;
  if (v632)
  {
    v54 = *(v632 + 64);
    if (HIDWORD(v54))
    {
      v55 = v54 == 0;
    }

    else
    {
      v55 = 1;
    }

    if (!v55)
    {
      v53 = *(v632 + 64);
    }

    v56 = v605;
    v537 = v53;
    v531 = HIDWORD(v53);
    if (!v15)
    {
      v60 = v634;
      v61 = [v634 vitalityScoringEnabled];
      v577 = 0;
      OUTLINED_FUNCTION_52_4();
      goto LABEL_186;
    }

    v57 = *(v632 + 120);
  }

  else
  {
    v537 = v53;
    v531 = HIDWORD(v53);
    if (!v15)
    {
      v61 = [v634 vitalityScoringEnabled];
      v577 = 0;
      v192 = 0;
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_191;
    }

    v57 = 0;
    v11 = v617;
    v56 = v605;
  }

  *(v13 + 152) = v57 & 1;
  if (v56)
  {
    v58 = *(v56 + 16);
  }

  else
  {
    v58 = 0;
  }

  if ([FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v58])
  {
    v59 = 1;
  }

  else
  {
    v59 = *(v13 + 152);
  }

  ShouldIncludeDiagnosticMetadata = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
  v63 = ShouldIncludeDiagnosticMetadata & v603;
  v44 = (!(*(v13 + 152) & (v11 == 0) & v603) | ShouldIncludeDiagnosticMetadata & v603) & (HIDWORD(v568) ^ 1u);
  v64 = ([(__CFString *)v597 irisVISMethod]== 3 || [(__CFString *)v597 irisVISMethod]== 5) && v587 == 1;
  v11 = (v44 & v59);
  if (*(v635 + 152) == 1)
  {
    v44 = !v64 & v44;
    v11 = (!v64 & v11);
  }

  if (v632)
  {
    LODWORD(v587) = *(v632 + 141);
  }

  else
  {
    LODWORD(v587) = 0;
  }

  v65 = [v634 movieFileSinkPipelineConfiguration];
  if (v65 && !(v11 & 1 | ((*(v65 + 210) & 1) == 0)))
  {
    v66 = [objc_msgSend(-[__CFString sourceConfiguration](v597 "sourceConfiguration")];
    v67 = [BWSmartStyleApplyNode alloc];
    v68 = [v634 movieFileSinkPipelineConfiguration];
    if (v68)
    {
      v69 = *(v68 + 216);
    }

    else
    {
      v69 = 0;
    }

    v70 = [(BWSmartStyleApplyNode *)v67 initWithMetalCommandQueue:0 renderingMethod:v69 squareAspectRatioConfigEnabled:v66];
    if (!v70)
    {
      OUTLINED_FUNCTION_0_31();
      FigDebugAssert3();
      v667[0] = -12786;
      goto LABEL_580;
    }

    v71 = v70;
    [(BWNode *)v70 setName:@"SmartStyle Movie File Apply"];
    v72 = [v634 movieFileSinkPipelineConfiguration];
    if (v72)
    {
      v73 = *(v72 + 144);
    }

    else
    {
      v73 = 0;
    }

    [(BWSmartStyleApplyNode *)v71 setMaxLossyCompressionLevel:v73];
    if (([OUTLINED_FUNCTION_32_3() addNode:v71 error:?] & 1) == 0)
    {
      goto LABEL_650;
    }

    [(BWNode *)v71 input];
    v74 = OUTLINED_FUNCTION_6_21();
    if ((OUTLINED_FUNCTION_65_0(v74, v75, v76, v77, v78, v79, v80, v81, v464, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v539, v542, v545, v547, v548, v549, v550, v552, v554, v556, v558, v559, v560, v561, v563, v566, v567, v568, v570, v572, v576, v580, v581, v585, v586, v587, v590, v592, v594, v595, v597, v598, v599) & 1) == 0)
    {
      goto LABEL_650;
    }

    v637 = [(BWNode *)v71 output];
  }

  if ((v11 & 1) == 0)
  {
    if ((v44 & 1) == 0)
    {
      v577 = 0;
      v13 = v635;
      v60 = v634;
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_185;
    }

    v13 = v635;
    v83 = v597;
    v50 = 0x1E696A000;
    if (CFPreferenceNumberWithDefault)
    {
      v84 = [-[__CFString sourceConfiguration](v597 "sourceConfiguration")];
      v85 = [-[__CFString sourceConfiguration](v597 "sourceConfiguration")];
      v86 = [v84 horizontalSensorBinningFactor];
      v87 = [v84 verticalSensorBinningFactor];
      [v84 maxSupportedFrameRate];
      v89 = v88;
      if (v605)
      {
        v90 = *(v605 + 24);
      }

      else
      {
        v90 = 0;
      }

      v11 = (v85 == 4);
      v44 = [v586 sensorIDDictionaryByPortType];
      v91 = FigCaptureBuildMotionAttachmentsNode(a6, v637, v86, v87, v614, v90, v44, [v586 cameraInfoByPortType], v89, objc_msgSend(v586, "activePortTypes"), v11, 0, objc_msgSend(v567, "optimizesImagesForOfflineVideoStabilization"), 1, 0, v667);
      if (v667[0])
      {
        goto LABEL_579;
      }

      CFPreferenceNumberWithDefault = v91;
      v83 = v597;
      OUTLINED_FUNCTION_25_4();
      v92 = v632;
      v50 = 0x1E696A000;
      if (v632)
      {
        goto LABEL_115;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_4();
      v92 = v632;
      CFPreferenceNumberWithDefault = v637;
      if (v632)
      {
LABEL_115:
        if (*(v92 + 214) == 1)
        {
          if (v44)
          {
            v93 = [*(v44 + 56) videoSourceDeviceType];
          }

          else
          {
            v93 = 0;
          }

          if (BWDeviceTypeIsExtensionDeviceType(v93))
          {
            v578 = *(MEMORY[0x1E69E9B10] + 16);
            v582 = *MEMORY[0x1E69E9B10];
            v564 = *(MEMORY[0x1E69E9B10] + 32);
            v94 = v586;
          }

          else
          {
            v94 = v586;
            *&v172 = FigCaptureGetDeviceToCameraTransform([v586 position] == 2);
            v578 = v173;
            v582 = v172;
            v564 = v174;
          }

          v175 = [-[__CFString sourceConfiguration](v83 "sourceConfiguration")];
          v176 = FigCaptureConvertDimensionsForAspectRatio([v175 dimensions], objc_msgSend(-[__CFString sourceConfiguration](v83, "sourceConfiguration"), "outputAspectRatio"));
          v177 = [BWSmartCropNode alloc];
          v44 = [v94 cameraInfoByPortType];
          v474 = v94;
          LOBYTE(v464) = 0;
          v178 = -[BWSmartCropNode initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxLossyCompressionLevel:cameraExtrinsicMatrix:processingMode:stillCaptureEnabled:objectMetadataIdentifiers:captureDevice:](v177, "initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxLossyCompressionLevel:cameraExtrinsicMatrix:processingMode:stillCaptureEnabled:objectMetadataIdentifiers:captureDevice:", v176, v44, [v175 horizontalSensorBinningFactor], objc_msgSend(v175, "verticalSensorBinningFactor"), *(v632 + 144), 1, *&v582, *&v578, *&v564);
          [(BWNode *)v178 setName:@"Low Latency Stabilization"];
          if ((OUTLINED_FUNCTION_62_1() & 1) == 0)
          {
            goto LABEL_672;
          }

          [(BWNode *)v178 input];
          v179 = OUTLINED_FUNCTION_6_21();
          v11 = v617;
          v50 = 0x1E696A000uLL;
          if ((OUTLINED_FUNCTION_65_0(v179, v180, v181, v182, v183, v184, v185, v186, v464, 0, v474, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v539, v542, v545, v547, v548, v549, v550, v552, v554, v556, v558, v559, v560, v561, v564, *(&v564 + 1), v567, v568, v570, v572, v578, *(&v578 + 1), v582, *(&v582 + 1), v586, v587, v590, v592, v594, v595, v597, v598, v599) & 1) == 0)
          {
            goto LABEL_672;
          }

          CFPreferenceNumberWithDefault = [(BWNode *)v178 output];
          *(v635 + 160) = v178;
          v92 = v632;
        }

        if ((v550 & 0x100000000) != 0)
        {
          goto LABEL_179;
        }

        v188 = v92;
        [v635 name];
        v189 = *(v188 + 144);
        goto LABEL_181;
      }
    }

    if ((v550 & 0x100000000) != 0)
    {
      v13 = v635;
      OUTLINED_FUNCTION_25_4();
LABEL_179:
      v187 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      goto LABEL_182;
    }

    v13 = v635;
    [v635 name];
    v83 = v597;
    OUTLINED_FUNCTION_25_4();
LABEL_181:
    v187 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    CFPreferenceNumberWithDefault = mfsp_buildMovieFileScalerNode(v83, CFPreferenceNumberWithDefault, v572, v570, a5, v44, v614, (v13 + 32), v587 & 1, v189);
LABEL_182:
    [v43 setDownstreamIsSharingOutputPool:{objc_msgSend(*(v13 + v187[693]), "passesBuffersThroughWhenPossible") | objc_msgSend(v43, "downstreamIsSharingOutputPool")}];
    v577 = 0;
    if (([*(v13 + 32) passesBuffersThroughWhenPossible] & 1) != 0 || !v43)
    {
      goto LABEL_184;
    }

    v463 = OUTLINED_FUNCTION_12_12(@"Iris Intermediate JPEG Decompression Back Pressure", 88, v464, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526);
    if (v463)
    {
      CFPreferenceNumberWithDefault = v463;
      HIDWORD(v535) = 0;
      v577 = 0;
LABEL_184:
      v60 = v634;
      goto LABEL_185;
    }

LABEL_672:
    OUTLINED_FUNCTION_0_31();
    goto LABEL_579;
  }

  if (v605)
  {
    v11 = v617;
    v44 = a6;
    if ((*(v605 + 16) - 3) > 1)
    {
      v570 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_13_12();
      [v82 stringWithFormat:@"com.apple.coremedia.capture.moviefile.post-isp-digital-zoom.tail.%d"];
      v570 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:?];
    }
  }

  else
  {
    v570 = 0;
    OUTLINED_FUNCTION_25_4();
  }

  v95 = [-[__CFString irisSinkConfiguration](v597 "irisSinkConfiguration")];
  v96 = v95;
  if (v95)
  {
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v97 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v97 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v97 setFilterType:2];
    }

    else
    {
      v97 = 0;
    }

    v98 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:v586 scheduler:v598 priority:13 processingConfiguration:v97];
    OUTLINED_FUNCTION_13_12();
    [v99 stringWithFormat:@"Tail Pipeline %d Person Segmentation Inference Node"];
    [OUTLINED_FUNCTION_17() setName:?];
    if (([OUTLINED_FUNCTION_9_11() addNode:v98 error:?] & 1) == 0)
    {
      goto LABEL_650;
    }

    v100 = [(BWInferenceConfiguration *)[BWStreamingPersonSegmentationConfiguration alloc] initWithInferenceType:105];
    [(BWStreamingPersonSegmentationConfiguration *)v100 setInputRotationAngle:0];
    [(BWStreamingPersonSegmentationConfiguration *)v100 setPropagateColorInput:0];
    LODWORD(v101) = 10.0;
    [(BWInferenceConfiguration *)v100 setMaximumFramesPerSecond:v101];
    [(BWInferenceConfiguration *)v100 setPropagatesFrameRatePrevention:1];
    [(BWStreamingPersonSegmentationConfiguration *)v100 setUseLowFrameRateOptimizedNetwork:1];
    [(BWInferenceNode *)v98 addInferenceOfType:105 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v100];

    v102 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
    [(BWOpticalFlowInferenceConfiguration *)v102 setInputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v102 setOutputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v102 setConcurrencyWidth:2];
    [(BWOpticalFlowInferenceConfiguration *)v102 setAttachedMediaKeyForPropagatedColorInput:0x1F219EA70];
    [(BWInferenceNode *)v98 addInferenceOfType:117 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v102];

    [(BWNode *)v98 input];
    v103 = OUTLINED_FUNCTION_6_21();
    if ((OUTLINED_FUNCTION_65_0(v103, v104, v105, v106, v107, v108, v109, v110, v464, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v539, v542, v545, v547, v548, v549, v550, v552, v554, v556, v558, v559, v560, v561, v563, v566, v567, v568, v570, v572, v576, v580, v581, v585, v586, v587, v590, v592, v594, v595, v597, v598, v599) & 1) == 0)
    {
      goto LABEL_650;
    }

    v111 = [(BWNode *)v98 output];
    v112 = [[BWPersonSegmentationFilteringNode alloc] initWithGPUPriority:1 frameRateUpsamplingEnabled:1 metalCommandQueue:[FigCaptureMovieFileSinkTailPipeline _metalCommandQueueWithName:v635 priority:?]];
    OUTLINED_FUNCTION_13_12();
    [v113 stringWithFormat:@"Tail Pipeline %d Person Segmentation Filtering Node"];
    [OUTLINED_FUNCTION_8() setName:?];
    if (([OUTLINED_FUNCTION_9_11() addNode:v112 error:?] & 1) == 0)
    {
      goto LABEL_650;
    }

    [(BWNode *)v112 input];
    if (([OUTLINED_FUNCTION_6_21() connectOutput:v111 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_650;
    }

    v637 = [(BWNode *)v112 output];
  }

  if (!v625)
  {
    goto LABEL_136;
  }

  v114 = [BWStereoVideoMetadataNode alloc];
  v44 = *off_1E798A0D0;
  [v586 cameraInfoByPortType];
  v115 = [OUTLINED_FUNCTION_12_0() initWithPorts:? secondaryPort:? cameraInfoByPortType:? errStatus:?];
  if (!v115 || (v116 = v115, [v115 setName:@"Stereo Video Metadata Node"], (OUTLINED_FUNCTION_62_1() & 1) == 0) || (objc_msgSend(v116, "input"), v117 = OUTLINED_FUNCTION_6_21(), (OUTLINED_FUNCTION_65_0(v117, v118, v119, v120, v121, v122, v123, v124, v464, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v539, v542, v545, v547, v548, v549, v550, v552, v554, v556, v558, v559, v560, v561, v563, v566, v567, v568, v570, v572, v576, v580, v581, v585, v586, v587, v590, v592, v594, v595, v597, v598, v599) & 1) == 0))
  {
LABEL_650:
    OUTLINED_FUNCTION_0_31();
    goto LABEL_579;
  }

  v637 = [v116 output];
LABEL_136:
  if ((v550 & 0x100000000) != 0)
  {
    v125 = 1;
  }

  else if (*(v635 + 152))
  {
    v125 = 4;
  }

  else
  {
    if (v64)
    {
      v126 = 3;
    }

    else
    {
      v126 = 0;
    }

    if ((v50 | v63))
    {
      v125 = v126;
    }

    else
    {
      v125 = 3;
    }
  }

  v127 = [FigCaptureVISPipeline alloc];
  v50 = 0x1E696A000;
  [OUTLINED_FUNCTION_7_18() stringWithFormat:@"Tail %d VIS Pipeline"];
  v13 = v635;
  v128 = v605;
  if (v605)
  {
    v129 = *(v605 + 20);
    v130 = *(v605 + 8);
    v131 = *(v605 + 44);
  }

  else
  {
    v130 = 0;
    v129 = 0;
    v131 = 0;
  }

  v132 = v632;
  if (!v632)
  {
    v141 = 0;
    v139 = 0;
    v137 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v136 = 0;
    v138 = 0;
    v140 = 0;
    if (!v605)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  v133 = *(v632 + 144);
  v134 = *(v632 + 148);
  v135 = *(v632 + 149);
  v136 = *(v632 + 176);
  v137 = *(v632 + 212);
  v138 = *(v632 + 213);
  v139 = *(v632 + 210);
  v140 = *(v632 + 211);
  v141 = *(v632 + 209);
  v132 = *(v632 + 128);
  if (v605)
  {
LABEL_150:
    v128 = *(v605 + 32);
  }

LABEL_151:
  v516 = v132;
  v521 = v128;
  v513 = v141 & 1;
  v511 = v140 & 1;
  v509 = v139 & 1;
  v507 = v138 & 1;
  v505 = v137 & 1;
  v504 = v136 & 1;
  v502 = v135 & 1;
  v500 = v134 & 1;
  v496 = v133;
  v482 = v130;
  v487 = v131;
  v472 = v129;
  BYTE1(v469) = v603 & 1;
  OUTLINED_FUNCTION_35_4();
  v144 = [FigCaptureVISPipeline initWithUpstreamOutput:v127 graph:v637 name:a5 parentPipeline:v142 videoCaptureConnectionConfiguration:v44 pipelineStage:v597 sdofPipelineStage:v614 videoStabilizationType:v143 motionAttachmentsSource:v464 fillExtendedRowsOfOutputBuffer:HIDWORD(v464) overCaptureEnabled:v469 stereoMode:v625 videoStabilizationOverscanOverride:v472 videoStabilizationStrength:0 motionMetadataPreloadingEnabled:v125 visExecutionMode:0x51u pipelineTraceID:v586 captureDevice:v482 outputDimensions:v487 generatedTransformsOutputDimensionsOverride:v587 & 1 P3ToBT2020ConversionEnabled:SBYTE4(v594) stabilizeDepthAttachments:v537 outputDepthDimensions:v496 maxLossyCompressionLevel:v500 videoSTFEnabled:v502 videoGreenGhostMitigationEnabled:v504 lightSourceMaskAndKeypointDescriptorDataEnabled:v505 videoGreenGhostOfflineMetadataEnabled:v507 videoGreenGhostOfflineLightSourceMaskEnabled:v96 personSegmentationRenderingEnabled:v509 smartStyleRenderingEnabled:v511 smartStyleReversibilityEnabled:v513 lowResImageUsedByVideoEncoderEnabled:v516 portTypesWithGeometricDistortionCorrectionInVISEnabled:v521 visProcessingSemaphore:?];
  *(v635 + 40) = v144;
  if (v144)
  {
    CFPreferenceNumberWithDefault = [-[FigCaptureVISPipeline visNode](v144) output];
    v577 = [-[FigCaptureVISPipeline sdofVISNode](*(v635 + 40)) output];
    if (v625)
    {
      v145 = CFPreferenceNumberWithDefault;
      v146 = [BWAttachedMediaSwapNode alloc];
      v661[0] = *off_1E798D468;
      v147 = -[BWAttachedMediaSwapNode initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:](v146, "initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:", 0x1F216E930, @"SynchronizedSlaveFrame", [MEMORY[0x1E695DEC8] arrayWithObjects:v661 count:1], 0);
      if (!v147)
      {
        goto LABEL_609;
      }

      v148 = v147;
      [(BWNode *)v147 setName:@"Swap Primary and Synchronized Slave"];
      if (([OUTLINED_FUNCTION_9_11() addNode:v148 error:?] & 1) == 0)
      {
        goto LABEL_609;
      }

      [(BWNode *)v148 input];
      if (([OUTLINED_FUNCTION_6_21() connectOutput:v145 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_609;
      }

      v149 = [(BWNode *)v148 output];
      v150 = [FigCaptureVISPipeline alloc];
      OUTLINED_FUNCTION_13_12();
      [v151 stringWithFormat:@"Tail %d stereo video companion VIS Pipeline"];
      v152 = v605;
      if (v605)
      {
        v153 = *(v605 + 20);
        v152 = *(v605 + 8);
      }

      else
      {
        v153 = 0;
      }

      v154 = v632;
      if (v632)
      {
        v155 = *(v632 + 144);
        v156 = *(v632 + 148);
        v157 = *(v632 + 149);
        v158 = *(v632 + 210);
        v159 = *(v632 + 211);
        v160 = *(v632 + 209);
        v154 = *(v632 + 128);
      }

      else
      {
        v160 = 0;
        v158 = 0;
        v156 = 0;
        v155 = 0;
        v157 = 0;
        v159 = 0;
      }

      v517 = v154;
      v514 = v160 & 1;
      v512 = v159 & 1;
      v510 = v158 & 1;
      v503 = v157 & 1;
      v501 = v156 & 1;
      v497 = v155;
      v492 = *MEMORY[0x1E6960CF8];
      v483 = v152;
      v473 = v153;
      OUTLINED_FUNCTION_35_4();
      v161 = v150;
      v44 = a6;
      v163 = [FigCaptureVISPipeline initWithUpstreamOutput:v161 graph:v149 name:a5 parentPipeline:v162 videoCaptureConnectionConfiguration:a6 pipelineStage:v597 sdofPipelineStage:v581 videoStabilizationType:0 motionAttachmentsSource:v464 fillExtendedRowsOfOutputBuffer:HIDWORD(v464) overCaptureEnabled:v469 stereoMode:2u videoStabilizationOverscanOverride:v473 videoStabilizationStrength:0 motionMetadataPreloadingEnabled:0 visExecutionMode:0x51u pipelineTraceID:v586 captureDevice:v483 outputDimensions:0 generatedTransformsOutputDimensionsOverride:0 P3ToBT2020ConversionEnabled:0 stabilizeDepthAttachments:v492 outputDepthDimensions:v497 maxLossyCompressionLevel:v501 videoSTFEnabled:v503 videoGreenGhostMitigationEnabled:SBYTE1(v503) lightSourceMaskAndKeypointDescriptorDataEnabled:BYTE2(v503) videoGreenGhostOfflineMetadataEnabled:HIBYTE(v503) videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v510 smartStyleRenderingEnabled:v512 smartStyleReversibilityEnabled:v514 lowResImageUsedByVideoEncoderEnabled:v517 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
      *(v635 + 48) = v163;
      v164 = [-[FigCaptureVISPipeline visNode](v163) output];
      v165 = [BWAttachedMediaSwapNode alloc];
      OUTLINED_FUNCTION_53();
      v167 = [v166 initWithPrimaryFormatToAttachedMediaKey:? attachedMediaKeyToPrimaryFormat:? sampleBufferAttachmentsToTransfer:? generatesDroppedSampleMarkerBuffers:?];
      if (!v167)
      {
        goto LABEL_609;
      }

      v168 = v167;
      [v167 setName:@"Unswap Primary and Synchronized Slave"];
      v50 = 0x1E696A000;
      if (([OUTLINED_FUNCTION_9_11() addNode:v168 error:?] & 1) == 0)
      {
        goto LABEL_609;
      }

      [v168 input];
      if (([OUTLINED_FUNCTION_6_21() connectOutput:v164 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_609;
      }

      CFPreferenceNumberWithDefault = [v168 output];
    }

    v169 = v605;
    if (v43 && (*(v635 + 152) & 1) == 0)
    {
      v462 = OUTLINED_FUNCTION_12_12(@"Iris Intermediate JPEG Decompression Back Pressure", 88, v464, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526);
      v60 = v634;
      if (!v462)
      {
        goto LABEL_609;
      }

      CFPreferenceNumberWithDefault = v462;
      HIDWORD(v535) = 0;
      v169 = v605;
      if (!v605)
      {
LABEL_185:
        v61 = [v60 vitalityScoringEnabled];
        v51 = v632;
        if (!v632)
        {
LABEL_190:
          v192 = 0;
LABEL_191:
          v191 = v601;
LABEL_192:
          v583 = v191 | v621;
          if ((v191 | v621))
          {
            v193 = 2;
          }

          else
          {
            v193 = 1;
          }

          HIDWORD(v528) = v193 + (v595 & 1) + HIDWORD(v590) + v61;
          v194 = (HIDWORD(v528) + v192);
          LODWORD(v563) = v61;
          if (v194 < 2)
          {
            v205 = 0;
          }

          else
          {
            v195 = v50;
            v196 = [[BWFanOutNode alloc] initWithFanOutCount:v194 mediaType:1986618469];
            if (([v44 addNode:v196 error:&v666] & 1) == 0)
            {
              goto LABEL_609;
            }

            [(BWNode *)v196 input];
            v197 = OUTLINED_FUNCTION_6_21();
            if ((OUTLINED_FUNCTION_63_1(v197, v198, v199, v200, v201, v202, v203, v204, v464, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v539, v542, v545, v547, v548, v549, v550, v552, v554, v556, v558, v559, v560, v561, v563, v566, v567, v568, v570, v572, v577, v580, v583, v585, v586, v587, v590, v592, v594, v595, v597, v598, v599) & 1) == 0)
            {
              goto LABEL_609;
            }

            CFPreferenceNumberWithDefault = [(NSArray *)[(BWNode *)v196 outputs] objectAtIndexedSubscript:(v194 - 1)];
            v205 = v196;
            v50 = v195;
          }

          v615 = v205;
          if (v583)
          {
            v206 = [(NSArray *)[(BWNode *)v205 outputs] objectAtIndexedSubscript:0];
            v207 = [[BWCameraInfoMetadataNode alloc] initForLivePhotosMetadata:v191 generateDebugMetadata:v621 generateMotionMetadata:0];
            if (([OUTLINED_FUNCTION_9_11() addNode:v207 error:?] & 1) == 0)
            {
              goto LABEL_609;
            }

            [v207 input];
            if (([OUTLINED_FUNCTION_6_21() connectOutput:v206 toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_609;
            }

            v562 = [v207 boxedMetadataOutput];
            v208 = 1;
            v209 = v592;
            v205 = v615;
          }

          else
          {
            v208 = 0;
            v562 = 0;
            v209 = v592;
          }

          if (HIDWORD(v590))
          {
            v210 = [(NSArray *)[(BWNode *)v205 outputs] objectAtIndexedSubscript:v208];
            v211 = objc_alloc_init(BWVideoPlaybackSupportMetadataNode);
            if (([OUTLINED_FUNCTION_9_11() addNode:v211 error:?] & 1) == 0)
            {
              goto LABEL_609;
            }

            [(BWNode *)v211 input];
            if (([OUTLINED_FUNCTION_6_21() connectOutput:v210 toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_609;
            }

            ++v208;
            v555 = [(BWVideoPlaybackSupportMetadataNode *)v211 boxedMetadataOutput];
            v209 = v592;
            v205 = v615;
          }

          else
          {
            v555 = 0;
          }

          if ((v595 & 1) == 0)
          {
            v553 = 0;
            goto LABEL_215;
          }

          v212 = [(NSArray *)[(BWNode *)v205 outputs] objectAtIndexedSubscript:v208];
          v213 = objc_alloc_init(BWSmartStyleInfoMetadataNode);
          if ([OUTLINED_FUNCTION_9_11() addNode:v213 error:?])
          {
            [(BWNode *)v213 input];
            if ([OUTLINED_FUNCTION_6_21() connectOutput:v212 toInput:? pipelineStage:?])
            {
              ++v208;
              v553 = [(BWSmartStyleInfoMetadataNode *)v213 boxedMetadataOutput];
              v209 = v592;
              v205 = v615;
LABEL_215:
              v571 = (v595 & 1) + (v583 & 1) + HIDWORD(v594) + HIDWORD(v590) + v600;
              v214 = [v634 movieFileSinkPipelineConfiguration];
              if (v214 && v192 && *(v214 + 48))
              {
                [(NSArray *)[(BWNode *)v205 outputs] objectAtIndexedSubscript:v208];
                time.value = 0;
                [v634 movieFileSinkPipelineConfiguration];
                v667[0] = [FigCaptureMovieFileSinkTailPipeline _buildFaceDetectionNode:v13 parentPipeline:? objectDetectionSourceOutput:? faceDetectionNodeOut:?];
                if (v667[0])
                {
                  OUTLINED_FUNCTION_1_5();
                  goto LABEL_579;
                }

                v449 = MEMORY[0x1E695E0F0];
                ++v208;
                if (!v209)
                {
                  v209 = MEMORY[0x1E695E0F0];
                }

                if (v629)
                {
                  v449 = v629;
                }

                v631 = v449;
                v450 = [MEMORY[0x1E695DF70] array];
                v50 = [MEMORY[0x1E695DF70] array];
                v624 = v209;
                v451 = [v209 count];
                v657 = 0u;
                v658 = 0u;
                v659 = 0u;
                v660 = 0u;
                v452 = [time.value boxedMetadataOutputs];
                v453 = [v452 countByEnumeratingWithState:&v657 objects:v656 count:16];
                if (v453)
                {
                  v454 = v453;
                  v455 = *v658;
                  do
                  {
                    CFPreferenceNumberWithDefault = 0;
                    v456 = v451;
                    do
                    {
                      if (*v658 != v455)
                      {
                        objc_enumerationMutation(v452);
                      }

                      [v450 addObject:*(*(&v657 + 1) + 8 * CFPreferenceNumberWithDefault)];
                      v451 = v456 + 1;
                      [v50 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v456)}];
                      ++CFPreferenceNumberWithDefault;
                      ++v456;
                    }

                    while (v454 != CFPreferenceNumberWithDefault);
                    v454 = [v452 countByEnumeratingWithState:&v657 objects:v656 count:16];
                  }

                  while (v454);
                }

                v209 = [v624 arrayByAddingObjectsFromArray:v450];
                v629 = [v631 arrayByAddingObjectsFromArray:v50];
                v571 += [objc_msgSend(time.value "boxedMetadataOutputs")];
                v13 = v635;
                v215 = v634;
                v205 = v615;
                v11 = v617;
                OUTLINED_FUNCTION_52_4();
              }

              else
              {
                v215 = v634;
              }

              v593 = v209;
              if (v563)
              {
                v216 = CFPreferenceNumberWithDefault;
                v217 = [(NSArray *)[(BWNode *)v205 outputs] objectAtIndexedSubscript:v208];
                [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.metadata.tail.%d"];
                [OUTLINED_FUNCTION_8() pipelineStageWithName:? priority:?];
                v218 = [[BWInferenceBufferingNode alloc] initWithConvEngineSupportWithCaptureDevice:v586 scheduler:v598 priority:13];
                v464 = v11;
                [*(v50 + 3776) stringWithFormat:@"Tail Pipeline %lu Motion Analysis Inference Node"];
                [OUTLINED_FUNCTION_7() setName:?];
                [(BWInferenceNode *)v218 setEndOfDataBehavior:2];
                if (v567)
                {
                  [v567 irisMovieDuration];
                }

                else
                {
                  OUTLINED_FUNCTION_36_5();
                }

                v220 = (CMTimeGetSeconds(&time) * 15.0 + 2.0);
                v221 = [[BWInferenceConfiguration alloc] initWithInferenceType:2001];
                LODWORD(v222) = 15.0;
                [(BWInferenceConfiguration *)v221 setMaximumFramesPerSecond:v222];
                [(BWInferenceBufferingNode *)v218 addInferenceOfType:2001 version:BWInferenceVersionMake(1u configuration:0 ringBufferCapacity:0) & 0xFFFFFFFFFFFFLL, v221, v220];
                v223 = [(BWInferenceBufferingNode *)v218 ringBuffers];
                v219 = v597;
                if (([OUTLINED_FUNCTION_32_3() addNode:v218 error:?] & 1) == 0)
                {
                  goto LABEL_615;
                }

                [(BWNode *)v218 input];
                if (([OUTLINED_FUNCTION_6_21() connectOutput:v217 toInput:? pipelineStage:?] & 1) == 0)
                {
                  goto LABEL_615;
                }

                v557 = v223;
                v540 = [(BWNode *)v218 output];
                CFPreferenceNumberWithDefault = v216;
                v215 = v634;
              }

              else
              {
                v557 = 0;
                v540 = 0;
                v219 = v597;
              }

              if (((CFPreferenceNumberWithDefault != 0) & BYTE4(v594)) != 1)
              {
                v546 = 0;
                v588 = 0;
                if (!CFPreferenceNumberWithDefault)
                {
                  goto LABEL_238;
                }

                goto LABEL_240;
              }

              v224 = [[BWRefinedCinematographyNode alloc] initWithAudioEnabled:0];
              v225 = MEMORY[0x1E696AEC0];
              v465 = [v13 name];
              [v225 stringWithFormat:@"%@ %@"];
              [OUTLINED_FUNCTION_17() setName:?];
              if ([v13 addNode:v224 error:&v666] & 1) != 0 && (objc_msgSend(OUTLINED_FUNCTION_32_3(), "addNode:error:", v224))
              {
                [(BWRefinedCinematographyNode *)v224 videoInput];
                v226 = OUTLINED_FUNCTION_6_21();
                if (OUTLINED_FUNCTION_63_1(v226, v227, v228, v229, v230, v231, v232, v233, v465, @"Refined Cinematography", v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v540, v542, v545, v547, v548, v549, v550, v553, v555, v557, v558, v559, v560, v562, v563, v566, v567, v568, v571, v572, v577, v580, v583, v585, v586, v587, v590, v593, v594, v595, v597, v598, v599))
                {
                  v234 = [(BWRefinedCinematographyNode *)v224 videoOutput];
                  v235 = objc_alloc_init(BWCinematicVideoMetadataNode);
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(v13, "name"), @"Cinematic Video Metadata"];
                  [OUTLINED_FUNCTION_8() setName:?];
                  if ([OUTLINED_FUNCTION_20_5() addNode:? error:?] & 1) != 0 && (objc_msgSend(OUTLINED_FUNCTION_32_3(), "addNode:error:", v235))
                  {
                    [(BWNode *)v235 input];
                    if ([OUTLINED_FUNCTION_6_21() connectOutput:v234 toInput:? pipelineStage:?])
                    {
                      v236 = [(BWCinematicVideoMetadataNode *)v235 passthruOutput];
                      v546 = [(BWCinematicVideoMetadataNode *)v235 metadataOutput];
                      v654[0] = @"PrimaryFormat";
                      v654[1] = @"Depth";
                      v237 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:]([BWAttachedMediaSplitNode alloc], "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:v654 count:2]);
                      v238 = MEMORY[0x1E696AEC0];
                      v464 = [v13 name];
                      v469 = @"Depth/YUV Splitter";
                      [v238 stringWithFormat:@"%@ %@"];
                      [OUTLINED_FUNCTION_8() setName:?];
                      if (([OUTLINED_FUNCTION_20_5() addNode:? error:?] & 1) == 0)
                      {
                        goto LABEL_621;
                      }

                      if (([OUTLINED_FUNCTION_32_3() addNode:v237 error:?] & 1) == 0)
                      {
                        goto LABEL_621;
                      }

                      [(BWNode *)v237 input];
                      if (([OUTLINED_FUNCTION_6_21() connectOutput:v236 toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_621;
                      }

                      CFPreferenceNumberWithDefault = [(NSArray *)[(BWNode *)v237 outputs] objectAtIndexedSubscript:0];
                      [CFPreferenceNumberWithDefault setName:@"Primary"];
                      v588 = [(NSArray *)[(BWNode *)v237 outputs] objectAtIndexedSubscript:1];
                      [v588 setName:@"Depth"];
                      if (!CFPreferenceNumberWithDefault)
                      {
LABEL_238:
                        v638 = 0;
                        v543 = 0;
                        v239 = a6;
                        v240 = 0x1E696A000;
LABEL_357:
                        v354 = -[BWQuickTimeMovieFileSinkNode initWithNumberOfVideoInputs:numberOfAuxiliaryPictureInputs:numberOfAudioInputs:numberOfMetadataInputs:cameraInfoByPortType:pipelineIndex:sinkID:]([BWQuickTimeMovieFileSinkNode alloc], "initWithNumberOfVideoInputs:numberOfAuxiliaryPictureInputs:numberOfAudioInputs:numberOfMetadataInputs:cameraInfoByPortType:pipelineIndex:sinkID:", v560, v558 + HIDWORD(v594), v559, v571, v619, v11, [v239 sinkID]);
                        [(BWQuickTimeMovieFileSinkNode *)v354 setIrisMotionAnalysisRingBuffer:v557];
                        if (v632)
                        {
                          v355 = *(v632 + 160);
                        }

                        else
                        {
                          v355 = 0;
                        }

                        [(BWQuickTimeMovieFileSinkNode *)v354 setClientApplicationID:v355];
                        if (v11 == 1)
                        {
                          v356 = 82;
                        }

                        else
                        {
                          v356 = 81;
                        }

                        [(BWQuickTimeMovieFileSinkNode *)v354 setPipelineTraceID:v356];
                        if (v632)
                        {
                          v357 = *(v632 + 168);
                        }

                        else
                        {
                          v357 = 0;
                        }

                        [(BWQuickTimeMovieFileSinkNode *)v354 setMaximumAllowedInFlightCompressedBytes:v357];
                        if (v567)
                        {
                          [v567 irisMovieDuration];
                        }

                        else
                        {
                          OUTLINED_FUNCTION_36_5();
                        }

                        v358 = CMTimeGetSeconds(&time) + 2.0;
                        v359 = v358;
                        if (v567)
                        {
                          [v567 irisMovieVideoFrameDuration];
                        }

                        else
                        {
                          OUTLINED_FUNCTION_36_5();
                        }

                        v360 = ceil(v359 / CMTimeGetSeconds(&time));
                        v361 = v360;
                        if (v11 == 1)
                        {
                          [(BWQuickTimeMovieFileSinkNode *)v354 setupOverCaptureQualityMetricsForLivePhotoHistory:v361];
                        }

                        if ([v567 irisMovieCaptureEnabled])
                        {
                          [(BWQuickTimeMovieFileSinkNode *)v354 setupRingBufferForStabilizedTrajectoryHomographies:v361];
                        }

                        if (([OUTLINED_FUNCTION_9_11() addNode:v354 error:?] & 1) == 0)
                        {
                          goto LABEL_578;
                        }

                        *(v13 + 120) = v354;
                        [(BWQuickTimeMovieFileSinkNode *)v354 setIrisSampleReferenceMoviesEnabled:0];
                        [(BWFileSinkNode *)v354 setRecordingStatusDelegate:a9];
                        if (v239)
                        {
                          v362 = [v239[7] videoOrientationMetadataNode];
                        }

                        else
                        {
                          v362 = 0;
                        }

                        [v362 videoOrientationTimeMachine];
                        [OUTLINED_FUNCTION_36() setVideoOrientationTimeMachine:?];
                        [*(v240 + 3776) stringWithFormat:@"Tail Pipeline %lu Movie File Sink Node", v11];
                        [OUTLINED_FUNCTION_36() setName:?];
                        v574 = CFPreferenceNumberWithDefault;
                        if (CFPreferenceNumberWithDefault)
                        {
                          v363 = [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:0];
                          [v215 movieFilePipelineStage];
                          if (([OUTLINED_FUNCTION_11_16() connectOutput:CFPreferenceNumberWithDefault toInput:v363 pipelineStage:?] & 1) == 0)
                          {
                            goto LABEL_578;
                          }

                          CFPreferenceNumberWithDefault = 1;
                        }

                        if (v577)
                        {
                          [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:CFPreferenceNumberWithDefault];
                          [v215 movieFilePipelineStage];
                          OUTLINED_FUNCTION_11_16();
                          OUTLINED_FUNCTION_53();
                          if (([v364 connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                          {
                            goto LABEL_578;
                          }

                          v636 = CFPreferenceNumberWithDefault;
                          OUTLINED_FUNCTION_21_6();
                        }

                        else
                        {
                          v636 = -1;
                        }

                        [(BWQuickTimeMovieFileSinkNode *)v354 setStereoVideoCaptureEnabled:v625];
                        -[BWQuickTimeMovieFileSinkNode setCinematicVideoEnabled:](v354, "setCinematicVideoEnabled:", [v586 cinematicVideoEnabled]);
                        -[BWQuickTimeMovieFileSinkNode setFrontRearSimultaneousVideoRecording:](v354, "setFrontRearSimultaneousVideoRecording:", [-[__CFString sinkConfiguration](v597 "sinkConfiguration")]);
                        if (!v588)
                        {
                          v367 = -1;
                          v366 = v638;
LABEL_388:
                          v633 = v367;
                          memset(v646, 0, sizeof(v646));
                          v368 = [v366 allKeys];
                          v369 = [v368 countByEnumeratingWithState:v646 objects:v645 count:16];
                          if (v369)
                          {
                            v370 = v369;
                            v371 = 0;
                            v372 = CFPreferenceNumberWithDefault;
LABEL_390:
                            v373 = 0;
                            CFPreferenceNumberWithDefault = v372;
                            while (1)
                            {
                              OUTLINED_FUNCTION_50_3();
                              if (!v55)
                              {
                                objc_enumerationMutation(v368);
                              }

                              v374 = *(*(&v646[0] + 1) + 8 * v373);
                              [v366 objectForKeyedSubscript:v374];
                              [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:CFPreferenceNumberWithDefault];
                              [v634 movieFilePipelineStage];
                              if (![OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?])
                              {
                                goto LABEL_442;
                              }

                              [v644 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", CFPreferenceNumberWithDefault), v374}];
                              if (!v371)
                              {
                                v371 = [MEMORY[0x1E695DF70] array];
                              }

                              [MEMORY[0x1E696AD98] numberWithInt:CFPreferenceNumberWithDefault];
                              [OUTLINED_FUNCTION_36() addObject:?];
                              ++CFPreferenceNumberWithDefault;
                              ++v373;
                              v366 = v638;
                              if (v370 == v373)
                              {
                                v370 = [v368 countByEnumeratingWithState:v646 objects:v645 count:16];
                                v372 = CFPreferenceNumberWithDefault;
                                if (v370)
                                {
                                  goto LABEL_390;
                                }

                                goto LABEL_400;
                              }
                            }
                          }

                          v371 = 0;
LABEL_400:
                          if (v548)
                          {
                            v375 = OUTLINED_FUNCTION_46_4();
                            OUTLINED_FUNCTION_43_4(v375, v376);
                            v377 = v634;
                            [v634 movieFilePipelineStage];
                            v378 = v549;
                            v379 = v593;
                            v380 = 0x1E696A000;
                            if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                            {
                              goto LABEL_442;
                            }

                            v626 = CFPreferenceNumberWithDefault;
                            OUTLINED_FUNCTION_21_6();
                          }

                          else
                          {
                            v626 = -1;
                            v377 = v634;
                            v378 = v549;
                            v379 = v593;
                            v380 = 0x1E696A000uLL;
                          }

                          if (v547)
                          {
                            v381 = [*(v13 + 120) inputs];
                            OUTLINED_FUNCTION_43_4(v381, v382);
                            OUTLINED_FUNCTION_44_4();
                            if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                            {
                              goto LABEL_442;
                            }

                            v623 = CFPreferenceNumberWithDefault;
                            OUTLINED_FUNCTION_21_6();
                          }

                          else
                          {
                            v623 = -1;
                          }

                          if (v546)
                          {
                            v383 = [*(v13 + 120) inputs];
                            OUTLINED_FUNCTION_43_4(v383, v384);
                            OUTLINED_FUNCTION_44_4();
                            if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                            {
                              goto LABEL_442;
                            }

                            v616 = CFPreferenceNumberWithDefault;
                            OUTLINED_FUNCTION_21_6();
                          }

                          else
                          {
                            v616 = -1;
                          }

                          if ([v379 count])
                          {
                            v385 = 0;
                            CFPreferenceNumberWithDefault = CFPreferenceNumberWithDefault;
                            do
                            {
                              [v379 objectAtIndexedSubscript:v385];
                              [objc_msgSend(*(v13 + 120) "inputs")];
                              [v377 movieFilePipelineStage];
                              if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                              {
                                goto LABEL_442;
                              }

                              ++CFPreferenceNumberWithDefault;
                            }

                            while (++v385 < [v379 count]);
                          }

                          if ([v377 indexOfAudioRemixInMetadataOutputs] == -1)
                          {
                            v387 = -1;
                          }

                          else
                          {
                            v386 = CFPreferenceNumberWithDefault - [v379 count];
                            v387 = v386 + [v377 indexOfAudioRemixInMetadataOutputs];
                          }

                          v620 = v387;
                          v388 = [v379 count];
                          v389 = OUTLINED_FUNCTION_56_3();
                          if (v389)
                          {
                            v390 = v389;
                            v391 = MEMORY[0];
                            v392 = CFPreferenceNumberWithDefault - v388;
                            do
                            {
                              for (j = 0; j != v390; ++j)
                              {
                                if (MEMORY[0] != v391)
                                {
                                  objc_enumerationMutation(v629);
                                }

                                [v378 addObject:{objc_msgSend(*(v380 + 3480), "numberWithInteger:", v392 + objc_msgSend(*(8 * j), "integerValue"))}];
                              }

                              v390 = OUTLINED_FUNCTION_56_3();
                            }

                            while (v390);
                          }

                          if (([v377 indexOfVideoOrientationInMetadataOutputs] & 0x80000000) != 0)
                          {
                            v395 = -1;
                          }

                          else
                          {
                            v394 = CFPreferenceNumberWithDefault - [v593 count];
                            v395 = v394 + [v377 indexOfVideoOrientationInMetadataOutputs];
                          }

                          objb = v395;
                          if (v562)
                          {
                            v396 = [*(v13 + 120) inputs];
                            OUTLINED_FUNCTION_43_4(v396, v397);
                            OUTLINED_FUNCTION_44_4();
                            if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                            {
                              goto LABEL_442;
                            }

                            v606 = CFPreferenceNumberWithDefault;
                            OUTLINED_FUNCTION_21_6();
                            if (v555)
                            {
                              goto LABEL_432;
                            }
                          }

                          else
                          {
                            v606 = -1;
                            if (v555)
                            {
LABEL_432:
                              v398 = [*(v13 + 120) inputs];
                              OUTLINED_FUNCTION_43_4(v398, v399);
                              OUTLINED_FUNCTION_44_4();
                              OUTLINED_FUNCTION_11_16();
                              OUTLINED_FUNCTION_53();
                              if (([v400 connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                              {
                                goto LABEL_442;
                              }

                              OUTLINED_FUNCTION_21_6();
LABEL_436:
                              v604 = v401;
                              if (v553)
                              {
                                v402 = [*(v13 + 120) inputs];
                                OUTLINED_FUNCTION_43_4(v402, v403);
                                OUTLINED_FUNCTION_44_4();
                                if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                                {
                                  goto LABEL_442;
                                }

                                v613 = CFPreferenceNumberWithDefault;
                                OUTLINED_FUNCTION_21_6();
                              }

                              else
                              {
                                v613 = -1;
                              }

                              if (v543)
                              {
                                v404 = [*(v13 + 120) inputs];
                                OUTLINED_FUNCTION_43_4(v404, v405);
                                OUTLINED_FUNCTION_44_4();
                                OUTLINED_FUNCTION_11_16();
                                OUTLINED_FUNCTION_53();
                                if (([v406 connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                                {
LABEL_442:
                                  OUTLINED_FUNCTION_0_31();
LABEL_579:
                                  FigDebugAssert3();
                                  goto LABEL_580;
                                }
                              }

                              else
                              {
                                CFPreferenceNumberWithDefault = 0xFFFFFFFFLL;
                              }

                              [*(v13 + 120) setNonCriticalAudioVideoTrackInputIndices:v371];
                              v407 = [v638 count];
                              v408 = [v638 count];
                              v643 = [MEMORY[0x1E695DF70] arrayWithCapacity:12];
                              v630 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
                              v628 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                              v641 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v407 + 2];
                              v618 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                              v409 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                              v410 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v408 + 6];
                              if (v574)
                              {
                                if (v636 != -1 || v633 != -1 || v616 != -1)
                                {
                                  v413 = [*(v380 + 3480) numberWithInt:0];
                                  if (v636 != -1)
                                  {
                                    [v643 addObject:OUTLINED_FUNCTION_66_0()];
                                    [OUTLINED_FUNCTION_12_0() addObject:?];
                                  }

                                  v414 = v630;
                                  v602 = v409;
                                  if (v633 == -1 || (v415 = [*(v380 + 3480) numberWithInt:v633], objc_msgSend(OUTLINED_FUNCTION_40(), "addObject:"), objc_msgSend(v641, "addObject:", v415), objc_msgSend(v410, "addObject:", v415), objc_msgSend(v410, "addObject:", @"com.apple.quicktime.video-map"), objc_msgSend(v410, "addObject:", v415), objc_msgSend(v410, "addObject:", @"com.apple.quicktime.video-map.depth"), v616 == -1))
                                  {
                                    v416 = v410;
                                  }

                                  else
                                  {
                                    [v643 addObject:{objc_msgSend(*(v380 + 3480), "numberWithInt:", v616)}];
                                    [OUTLINED_FUNCTION_40() addObject:?];
                                    [v630 addObject:{objc_msgSend(*(v380 + 3480), "numberWithInt:", v616)}];
                                    [OUTLINED_FUNCTION_20_5() addObject:?];
                                    [v410 addObject:v415];
                                    v416 = v410;
                                    [v410 addObject:@"com.apple.quicktime.cinematic-video-map.depth"];
                                  }

                                  goto LABEL_474;
                                }

                                if ([v644 count] || (v613 == -1 ? (v417 = CFPreferenceNumberWithDefault == -1) : (v417 = 0), !v417 || objc_msgSend(v378, "count") || (objb == -1 ? (v418 = v606 == -1) : (v418 = 0), v418 ? (v419 = v604 == -1) : (v419 = 0), !v419)))
                                {
                                  v602 = v409;
                                  v416 = v410;
                                  v413 = [*(v380 + 3480) numberWithInt:0];
                                  v414 = v630;
LABEL_474:
                                  v420 = OUTLINED_FUNCTION_61_0();
                                  if (v420)
                                  {
                                    v421 = v420;
                                    v422 = MEMORY[0];
                                    do
                                    {
                                      for (k = 0; k != v421; ++k)
                                      {
                                        if (MEMORY[0] != v422)
                                        {
                                          objc_enumerationMutation(v378);
                                        }

                                        v424 = *(8 * k);
                                        [v643 addObject:v424];
                                        [v643 addObject:v413];
                                        [v414 addObject:v424];
                                        [OUTLINED_FUNCTION_20_5() addObject:?];
                                      }

                                      v421 = OUTLINED_FUNCTION_61_0();
                                    }

                                    while (v421);
                                  }

                                  if (objb != -1)
                                  {
                                    OUTLINED_FUNCTION_64_3();
                                    [OUTLINED_FUNCTION_17() addObject:?];
                                    [OUTLINED_FUNCTION_12_0() addObject:?];
                                    [v414 addObject:OUTLINED_FUNCTION_64_3()];
                                    [OUTLINED_FUNCTION_20_5() addObject:?];
                                  }

                                  if (v606 != -1)
                                  {
                                    OUTLINED_FUNCTION_64_3();
                                    [OUTLINED_FUNCTION_17() addObject:?];
                                    [OUTLINED_FUNCTION_12_0() addObject:?];
                                    [v414 addObject:OUTLINED_FUNCTION_64_3()];
                                    [OUTLINED_FUNCTION_20_5() addObject:?];
                                  }

                                  if (v604 != -1)
                                  {
                                    [v628 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")}];
                                    [OUTLINED_FUNCTION_12_0() addObject:?];
                                  }

                                  v425 = OUTLINED_FUNCTION_60_4();
                                  if (v425)
                                  {
                                    v426 = v425;
                                    v427 = MEMORY[0];
                                    do
                                    {
                                      for (m = 0; m != v426; ++m)
                                      {
                                        if (MEMORY[0] != v427)
                                        {
                                          objc_enumerationMutation(v644);
                                        }

                                        v429 = *(8 * m);
                                        v430 = [v644 objectForKeyedSubscript:v429];
                                        [v641 addObject:v430];
                                        [v641 addObject:v413];
                                        [v416 addObject:v430];
                                        v431 = [v429 isEqualToString:0x1F21AAED0];
                                        v432 = @"com.apple.quicktime.video-map.person";
                                        if ((v431 & 1) == 0)
                                        {
                                          v433 = [v429 isEqualToString:0x1F21AAEF0];
                                          v432 = @"com.apple.quicktime.video-map.skin";
                                          if ((v433 & 1) == 0)
                                          {
                                            v434 = [v429 isEqualToString:0x1F21AAF30];
                                            v432 = @"com.apple.quicktime.video-map.sky";
                                            if ((v434 & 1) == 0)
                                            {
                                              v435 = [v429 isEqualToString:0x1F21AB110];
                                              v432 = @"com.apple.quicktime.video-map.smart-style-linear-thumbnail";
                                              if ((v435 & 1) == 0)
                                              {
                                                if ([v429 isEqualToString:0x1F21AB130])
                                                {
                                                  v432 = @"com.apple.quicktime.video-map.smart-style-delta-map";
                                                }

                                                else
                                                {
                                                  v432 = @"Unknown";
                                                }
                                              }
                                            }
                                          }
                                        }

                                        [v416 addObject:v432];
                                      }

                                      v426 = OUTLINED_FUNCTION_60_4();
                                    }

                                    while (v426);
                                  }

                                  v380 = 0x1E696A000uLL;
                                  if (v613 != -1)
                                  {
                                    [v643 addObject:OUTLINED_FUNCTION_66_0()];
                                    [OUTLINED_FUNCTION_12_0() addObject:?];
                                    [v630 addObject:OUTLINED_FUNCTION_66_0()];
                                    [OUTLINED_FUNCTION_12_0() addObject:?];
                                  }

                                  v13 = v635;
                                  v410 = v416;
                                  v409 = v602;
                                  if (CFPreferenceNumberWithDefault != -1)
                                  {
                                    [v643 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", CFPreferenceNumberWithDefault)}];
                                    [OUTLINED_FUNCTION_40() addObject:?];
                                    [v630 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", CFPreferenceNumberWithDefault)}];
                                    [OUTLINED_FUNCTION_40() addObject:?];
                                  }
                                }
                              }

                              if (v626 != -1 && v623 != -1)
                              {
                                [*(v380 + 3480) numberWithInt:v623];
                                [OUTLINED_FUNCTION_7() addObject:?];
                                OUTLINED_FUNCTION_66_0();
                                [OUTLINED_FUNCTION_7() addObject:?];
                              }

                              if (v623 != -1 && v620 != -1)
                              {
                                [*(v380 + 3480) numberWithInt:?];
                                [OUTLINED_FUNCTION_36() addObject:?];
                                [*(v380 + 3480) numberWithInt:v623];
                                [OUTLINED_FUNCTION_36() addObject:?];
                              }

                              if ([v643 count])
                              {
                                [OUTLINED_FUNCTION_17_7() setTrackReferenceListForMetadataInputs:?];
                              }

                              if ([v628 count])
                              {
                                [OUTLINED_FUNCTION_17_7() setTrackReferenceListForRenderMetadataInputs:?];
                              }

                              if ([v630 count])
                              {
                                [OUTLINED_FUNCTION_17_7() setStructuralDependentTrackReferenceListForMetadataInputs:?];
                              }

                              if ([v641 count])
                              {
                                [OUTLINED_FUNCTION_17_7() setTrackReferenceListForVideoInputs:?];
                              }

                              if ([v618 count])
                              {
                                [*(v13 + 120) setTrackReferenceListForAudioInputs:v618];
                              }

                              if ([v409 count])
                              {
                                [*(v13 + 120) setTrackReferenceListForAudioRemixInputs:v409];
                              }

                              if ([v410 count])
                              {
                                [*(v13 + 120) setTaggedMediaCharacteristicsForInputs:v410];
                              }

                              goto LABEL_580;
                            }
                          }

                          v401 = -1;
                          goto LABEL_436;
                        }

                        v365 = [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:CFPreferenceNumberWithDefault];
                        [v215 movieFilePipelineStage];
                        v366 = v638;
                        if ([OUTLINED_FUNCTION_11_16() connectOutput:v588 toInput:v365 pipelineStage:?])
                        {
                          OUTLINED_FUNCTION_21_6();
                          goto LABEL_388;
                        }

LABEL_578:
                        OUTLINED_FUNCTION_0_31();
                        goto LABEL_579;
                      }

LABEL_240:
                      if ([v25 count])
                      {
                        v241 = [MEMORY[0x1E695DF70] arrayWithObject:@"PrimaryFormat"];
                        [v241 addObjectsFromArray:v25];
                        v242 = [[BWAttachedMediaSplitNode alloc] initWithAttachedMediaKeys:v241];
                        v243 = MEMORY[0x1E696AEC0];
                        v466 = [v13 name];
                        [v243 stringWithFormat:@"%@ %@"];
                        [OUTLINED_FUNCTION_8() setName:?];
                        [(BWAttachedMediaSplitNode *)v242 setEmitsDroppedSampleForMissingAttachedMedia:1];
                        if (([OUTLINED_FUNCTION_20_5() addNode:? error:?] & 1) == 0)
                        {
                          goto LABEL_621;
                        }

                        if (([OUTLINED_FUNCTION_32_3() addNode:v242 error:?] & 1) == 0)
                        {
                          goto LABEL_621;
                        }

                        [(BWNode *)v242 input];
                        v244 = OUTLINED_FUNCTION_6_21();
                        if ((OUTLINED_FUNCTION_63_1(v244, v245, v246, v247, v248, v249, v250, v251, v466, @"Smart Style Media Splitter", v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v540, v542, v546, v547, v548, v549, v550, v553, v555, v557, v558, v559, v560, v562, v563, v566, v567, v568, v571, v572, v577, v580, v583, v585, v586, v588, v590, v593, v594, v595, v597, v598, v599) & 1) == 0)
                        {
                          goto LABEL_621;
                        }

                        v252 = v215;
                        v253 = [(NSArray *)[(BWNode *)v242 outputs] objectAtIndexedSubscript:0];
                        [v253 setName:@"Primary"];
                        v254 = [MEMORY[0x1E695DF90] dictionary];
                        if ([v241 count] >= 2)
                        {
                          v255 = 1;
                          do
                          {
                            v256 = [(NSArray *)[(BWNode *)v242 outputs] objectAtIndexedSubscript:v255];
                            v257 = [v241 objectAtIndexedSubscript:v255];
                            mfsp_pipelineNameFromSmartStyleAttachedMediaKey(v257);
                            [OUTLINED_FUNCTION_28() setName:?];
                            [v254 setObject:v256 forKeyedSubscript:v257];
                            ++v255;
                          }

                          while ([v241 count] > v255);
                        }

                        v638 = v254;
                        v258 = v625;
                        CFPreferenceNumberWithDefault = v253;
                        if (!v253)
                        {
                          v543 = 0;
                          v239 = a6;
                          v240 = 0x1E696A000;
                          v215 = v252;
                          goto LABEL_357;
                        }

                        v239 = a6;
                        v259 = 0x1E696A000;
                        v215 = v252;
                        v219 = v597;
                      }

                      else
                      {
                        v638 = 0;
                        v239 = a6;
                        v258 = v625;
                        v259 = 0x1E696A000uLL;
                      }

                      v622 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
                      [v622 setObject:v610 forKeyedSubscript:@"AVVideoCodecKey"];
                      if (![(__CFString *)v219 outputFormat])
                      {
                        [v622 setObject:&unk_1F224A9F0 forKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
                        [(__CFString *)v610 isEqualToString:@"hvc1"];
                      }

                      if (*(v13 + 152) == 1)
                      {
                        [v622 setObject:0 forKeyedSubscript:@"AVVideoWidthKey"];
                        v260 = v622;
                        v261 = 0;
                        goto LABEL_265;
                      }

                      if ([(__CFString *)v219 outputWidth]< 1 || [(__CFString *)v219 outputHeight]< 1)
                      {
                        v271 = [objc_msgSend(-[__CFString sourceConfiguration](v219 "sourceConfiguration")];
                        v272 = HIDWORD(v271);
                        if (v271 < 1 || SHIDWORD(v271) < 1)
                        {
                          [v622 setObject:&unk_1F2242FB8 forKeyedSubscript:@"AVVideoWidthKey"];
                          v261 = &unk_1F2242FD0;
                          v260 = v622;
                          goto LABEL_265;
                        }

                        v266 = v622;
                        [v622 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"AVVideoWidthKey"}];
                        v270 = MEMORY[0x1E696AD98];
                        v269 = v272;
                      }

                      else
                      {
                        v262 = [MEMORY[0x1E696AD98] numberWithInt:{-[__CFString outputWidth](v219, "outputWidth")}];
                        v263 = v215;
                        v264 = v259;
                        v265 = v219;
                        v266 = v622;
                        [v622 setObject:v262 forKeyedSubscript:@"AVVideoWidthKey"];
                        v267 = MEMORY[0x1E696AD98];
                        v268 = v265;
                        v259 = v264;
                        v215 = v263;
                        v269 = [(__CFString *)v268 outputHeight];
                        v270 = v267;
                      }

                      v261 = [v270 numberWithInt:v269];
                      v260 = v266;
LABEL_265:
                      [v260 setObject:v261 forKeyedSubscript:@"AVVideoHeightKey"];
                      if (v632)
                      {
                        v274 = *(v632 + 8);
                      }

                      else
                      {
                        v274 = 0;
                      }

                      [objc_msgSend(v274 "requiredFormat")];
                      *(v13 + 144) = 2;
                      if (v258)
                      {
                        ++*(v13 + 144);
                      }

                      [v622 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v13 + 144)), @"CVPixelBufferRecyclingSlop"}];
                      if ([(__CFString *)v610 isEqualToString:@"hvc1"])
                      {
                        [v622 setObject:&unk_1F2242FE8 forKeyedSubscript:@"AVVideoHEVCExtraRetainedBufferCount"];
                      }

                      if (!a10)
                      {
                        v544 = 0;
                        goto LABEL_293;
                      }

                      v275 = CFPreferenceNumberWithDefault;
                      if (v632)
                      {
                        v276 = *(v632 + 24);
                      }

                      else
                      {
                        v276 = 0;
                      }

                      v277 = [v276 objectAtIndex:1];
                      v278 = [[BWMultiCamClientCompositingNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 compositingStrategy:0 gainMapSupported:0 clientCompositingCallback:a10];
                      if (!v278)
                      {
                        goto LABEL_621;
                      }

                      v279 = v278;
                      if (([OUTLINED_FUNCTION_9_11() addNode:v278 error:?] & 1) == 0)
                      {
                        goto LABEL_621;
                      }

                      [(BWNode *)v279 input];
                      if (([OUTLINED_FUNCTION_6_21() connectOutput:v275 toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_621;
                      }

                      [(BWNode *)v279 setName:@"Movie File Client Compositing"];
                      v280 = [objc_msgSend(objc_msgSend(objc_msgSend(v239 "headPipeline")];
                      [v215 movieFileSinkPipelineConfiguration];
                      [v277 connectionID];
                      v281 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
                      if (v281)
                      {
                        v282 = *(v281 + 16);
                      }

                      else
                      {
                        v282 = 0;
                      }

                      if (![FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v282]&& (!v632 || *(v632 + 120) != 1))
                      {
                        v239 = a6;
LABEL_291:
                        [(NSArray *)[(BWNode *)v279 inputs] objectAtIndexedSubscript:1];
                        if (([OUTLINED_FUNCTION_6_21() connectOutput:v280 toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_621;
                        }

                        [(BWNode *)v279 output];
                        ++v571;
                        v544 = [(BWMultiCamClientCompositingNode *)v279 compositionPictureInPictureRectMetadataOutput];
LABEL_293:
                        [v215 delayedCompressorCleanupEnabled];
                        v293 = [BWVideoCompressorNode alloc];
                        OUTLINED_FUNCTION_34_4();
                        *&v294 = OUTLINED_FUNCTION_55_3();
                        v296 = [v295 initWithCompressionSettings:v294 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                        if ([OUTLINED_FUNCTION_9_11() addNode:v296 error:?])
                        {
                          *(v13 + 56) = v296;
                          v467 = OUTLINED_FUNCTION_33_6();
                          [v296 stringWithFormat:@"%@ Video Compressor"];
                          [OUTLINED_FUNCTION_19_8() setName:?];
                          v297 = OUTLINED_FUNCTION_19_8();
                          v611 = v298;
                          [v297 setPipelineTraceID:?];
                          [OUTLINED_FUNCTION_19_8() setMaximumAllowedInFlightCompressedBytes:?];
                          if (v605 && *(v605 + 20) >= 3 && (*(v13 + 152) & 1) == 0)
                          {
                            [OUTLINED_FUNCTION_19_8() setCompressionDimensionsFromInputEnabled:1];
                          }

                          if (v258)
                          {
                            LODWORD(time.value) = 0;
                            v667[0] = BWStereoUtilitiesComputeStereoBaseline(*off_1E798A0C0, *off_1E798A0D0, [v586 cameraInfoByPortType], &time);
                            if (v667[0])
                            {
                              OUTLINED_FUNCTION_1_5();
                              goto LABEL_579;
                            }

                            [OUTLINED_FUNCTION_19_8() setStereoVideoBaseline:?];
                          }

                          if (v603)
                          {
                            [OUTLINED_FUNCTION_19_8() setPrioritizeEncodingSpeedOverQuality:1];
                          }

                          [OUTLINED_FUNCTION_19_8() input];
                          v299 = OUTLINED_FUNCTION_6_21();
                          if (OUTLINED_FUNCTION_63_1(v299, v300, v301, v302, v303, v304, v305, v306, v467, v469, v471, v477, v479, v481, v486, v489, v491, v495, v506, v515, v520, v524, v526, v528, v530, v531, v533, v534, v535, v537, v540, v544, v546, v547, v548, v549, v550, v553, v555, v557, v558, v559, v560, v562, v563, v566, v567, v568, v571, v572, v577, v580, v583, v585, v586, v588, v590, v593, v594, v595, v597, v598, v599))
                          {
                            v573 = [OUTLINED_FUNCTION_19_8() output];
                            if (!v589)
                            {
                              v588 = 0;
LABEL_309:
                              v653 = 0u;
                              v652 = 0u;
                              v651 = 0u;
                              v650 = 0u;
                              obja = [v638 allKeys];
                              v312 = [obja countByEnumeratingWithState:&v650 objects:v649 count:16];
                              if (v312)
                              {
                                v313 = v312;
                                v314 = *v651;
LABEL_311:
                                v315 = 0;
                                while (1)
                                {
                                  if (*v651 != v314)
                                  {
                                    objc_enumerationMutation(obja);
                                  }

                                  v316 = *(*(&v650 + 1) + 8 * v315);
                                  v317 = [BWVideoCompressorNode alloc];
                                  OUTLINED_FUNCTION_34_4();
                                  *&v318 = OUTLINED_FUNCTION_55_3();
                                  v320 = [v319 initWithCompressionSettings:v318 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                                  if (([OUTLINED_FUNCTION_9_11() addNode:v320 error:?] & 1) == 0)
                                  {
                                    goto LABEL_649;
                                  }

                                  v321 = MEMORY[0x1E696AEC0];
                                  v322 = [v635 name];
                                  v470 = mfsp_pipelineNameFromSmartStyleAttachedMediaKey(v316);
                                  [v321 stringWithFormat:@"%@ %@ Compressor", v322];
                                  [OUTLINED_FUNCTION_24_1() setName:?];
                                  [v320 setPipelineTraceID:v611];
                                  if (v632)
                                  {
                                    v323 = *(v632 + 168);
                                  }

                                  else
                                  {
                                    v323 = 0;
                                  }

                                  [v320 setMaximumAllowedInFlightCompressedBytes:v323];
                                  [v320 setCompressionDimensionsFromInputEnabled:1];
                                  v324 = [v316 isEqualToString:0x1F21AAED0];
                                  v325 = 0x1F21A9870;
                                  if ((v324 & 1) == 0)
                                  {
                                    v326 = [v316 isEqualToString:0x1F21AAEF0];
                                    v325 = 0x1F21A9870;
                                    if ((v326 & 1) == 0)
                                    {
                                      v327 = [v316 isEqualToString:0x1F21AAF30];
                                      v325 = 0x1F21A9870;
                                      if ((v327 & 1) == 0)
                                      {
                                        v328 = [v316 isEqualToString:0x1F21AB110];
                                        v325 = 0x1F21A9890;
                                        if ((v328 & 1) == 0)
                                        {
                                          if ([v316 isEqualToString:0x1F21AB130])
                                          {
                                            v325 = 0x1F21A98B0;
                                          }

                                          else
                                          {
                                            v325 = 0;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  [v320 setAlternateCompressionSettingsKey:v325];
                                  v329 = [v638 objectForKeyedSubscript:v316];
                                  v330 = [v320 input];
                                  [v639 objectForKeyedSubscript:v316];
                                  if (([OUTLINED_FUNCTION_11_16() connectOutput:v329 toInput:v330 pipelineStage:?] & 1) == 0)
                                  {
                                    goto LABEL_649;
                                  }

                                  [v320 output];
                                  [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                                  v331 = *(v635 + 80);
                                  if (!v331)
                                  {
                                    v331 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                    *(v635 + 80) = v331;
                                  }

                                  [v331 setObject:v320 forKeyedSubscript:v316];
                                  ++v315;
                                  v11 = v617;
                                  v239 = a6;
                                  if (v313 == v315)
                                  {
                                    v332 = [obja countByEnumeratingWithState:&v650 objects:v649 count:16];
                                    v313 = v332;
                                    if (v332)
                                    {
                                      goto LABEL_311;
                                    }

                                    break;
                                  }
                                }
                              }

                              v13 = v635;
                              if ([(FigCaptureVISPipeline *)*(v635 + 40) visNode])
                              {
                                v333 = (*(v635 + 152) | v551) ^ 1;
                              }

                              else
                              {
                                v333 = 0;
                              }

                              v334 = 0;
                              v335 = v333 | v569;
                              v215 = v634;
                              CFPreferenceNumberWithDefault = v573;
                              if (((v333 | v569) & 1) == 0 && !v541)
                              {
                                v334 = 0;
                                if (v239)
                                {
                                  if (*(v635 + 32))
                                  {
                                    v336 = v333;
                                    v337 = [v239[7] irisStagingNode];
                                    LOBYTE(v333) = v336;
                                    v334 = v337 != 0;
                                  }
                                }
                              }

                              v338 = 0x1E7988000uLL;
                              if (((v536 | v335) & 1) == 0 && !v541 && !v334)
                              {
                                goto LABEL_342;
                              }

                              v612 = v334;
                              v640 = v333;
                              v240 = v573;
                              v349 = [v638 count];
                              if (v588)
                              {
                                v350 = v529 + 1;
                              }

                              else
                              {
                                v350 = v529;
                              }

                              v11 = [[BWBackPressureNode alloc] initWithNumberOfInputsAndOutputs:(v350 + v349) initialSemaphoreValue:0];
                              if ([OUTLINED_FUNCTION_9_11() addNode:v11 error:?])
                              {
                                [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.post-compressor-backpressure.tail.%d", v617];
                                [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
                                v351 = v562;
                                v352 = v638;
                                if (v584)
                                {
                                  [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:0];
                                  if (([OUTLINED_FUNCTION_6_21() connectOutput:v562 toInput:? pipelineStage:?] & 1) == 0)
                                  {
                                    goto LABEL_649;
                                  }

                                  v351 = [(NSArray *)[(BWNode *)v11 outputs] objectAtIndexedSubscript:0];
                                  v353 = 1;
                                }

                                else
                                {
                                  v353 = 0;
                                }

                                if (v591)
                                {
                                  [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v353];
                                  if (([OUTLINED_FUNCTION_6_21() connectOutput:v555 toInput:? pipelineStage:?] & 1) == 0)
                                  {
                                    goto LABEL_649;
                                  }

                                  v555 = [(NSArray *)[(BWNode *)v11 outputs] objectAtIndexedSubscript:v353++];
                                }

                                if (v596)
                                {
                                  [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v353];
                                  if (([OUTLINED_FUNCTION_6_21() connectOutput:v553 toInput:? pipelineStage:?] & 1) == 0)
                                  {
                                    goto LABEL_649;
                                  }

                                  v553 = [(NSArray *)[(BWNode *)v11 outputs] objectAtIndexedSubscript:v353++];
                                }

                                if (v565)
                                {
                                  [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v353];
                                  if (([OUTLINED_FUNCTION_6_21() connectOutput:v541 toInput:? pipelineStage:?] & 1) == 0)
                                  {
                                    goto LABEL_649;
                                  }

                                  ++v353;
                                }

                                [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v353];
                                if ([OUTLINED_FUNCTION_6_21() connectOutput:v573 toInput:? pipelineStage:?])
                                {
                                  v438 = [objc_msgSend(v573 "connection")];
                                  if (v438 != [objc_msgSend(objc_msgSend(*(v635 + 56) "output")])
                                  {
                                    OUTLINED_FUNCTION_0_31();
                                    FigDebugAssert3();
                                  }

                                  v575 = [(NSArray *)[(BWNode *)v11 outputs] objectAtIndexedSubscript:v353];
                                  v439 = (v353 + 1);
                                  v562 = v351;
                                  if (!v588)
                                  {
                                    v588 = 0;
                                    goto LABEL_550;
                                  }

                                  [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v353 + 1];
                                  if ([OUTLINED_FUNCTION_6_21() connectOutput:v588 toInput:? pipelineStage:?])
                                  {
                                    v440 = [objc_msgSend(v588 "connection")];
                                    if (v440 != [objc_msgSend(objc_msgSend(*(v635 + 72) "output")])
                                    {
                                      OUTLINED_FUNCTION_0_31();
                                      FigDebugAssert3();
                                    }

                                    v588 = [(NSArray *)[(BWNode *)v11 outputs] objectAtIndexedSubscript:v353 + 1];
                                    v439 = (v353 + 2);
                                    v352 = v638;
LABEL_550:
                                    memset(v648, 0, sizeof(v648));
                                    v441 = [v352 allKeys];
                                    v442 = [v441 countByEnumeratingWithState:v648 objects:v647 count:16];
                                    if (v442)
                                    {
                                      v443 = v442;
LABEL_552:
                                      v444 = 0;
                                      while (1)
                                      {
                                        OUTLINED_FUNCTION_50_3();
                                        if (!v55)
                                        {
                                          objc_enumerationMutation(v441);
                                        }

                                        v240 = [v352 objectForKeyedSubscript:*(*(&v648[0] + 1) + 8 * v444)];
                                        [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v439];
                                        if (![OUTLINED_FUNCTION_6_21() connectOutput:v240 toInput:? pipelineStage:?])
                                        {
                                          goto LABEL_578;
                                        }

                                        [(NSArray *)[(BWNode *)v11 outputs] objectAtIndexedSubscript:v439];
                                        [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                                        ++v439;
                                        if (v443 == ++v444)
                                        {
                                          v443 = [v441 countByEnumeratingWithState:v648 objects:v647 count:16];
                                          if (v443)
                                          {
                                            goto LABEL_552;
                                          }

                                          break;
                                        }
                                      }
                                    }

                                    v338 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                                    if (v640)
                                    {
                                      v240 = 0x1E696A000uLL;
                                      v445 = MEMORY[0x1E696AEC0];
                                      v13 = v635;
                                      v468 = [v635 name];
                                      [v445 stringWithFormat:@"%@ VIS Back Pressure"];
                                      [OUTLINED_FUNCTION_24_1() setName:?];
                                      *(v635 + 96) = v11;
                                      v215 = v634;
                                      v239 = a6;
                                      CFPreferenceNumberWithDefault = v575;
                                      if ([v567 irisMovieCaptureEnabled])
                                      {
                                        v11 = v617;
                                        v338 = 0x1E7988000;
                                        if (HIDWORD(v525))
                                        {
                                          v446 = OUTLINED_FUNCTION_54_4();
                                          *(v635 + 128) = [(FigCaptureVISPipeline *)v446 visNode];
                                        }

                                        else
                                        {
                                          *(v635 + 128) = *(v635 + 32);
                                        }

                                        if (v536)
                                        {
LABEL_594:
                                          CFPreferenceNumberWithDefault = OUTLINED_FUNCTION_12_12(@"Iris Intermediate JPEG Decompression Back Pressure", 88, v468, v470, v476, v478, v480, v485, v488, v490, v494, v499, v508, v519, v523, v525, v527);
                                          if (!CFPreferenceNumberWithDefault)
                                          {
                                            goto LABEL_578;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v457 = OUTLINED_FUNCTION_54_4();
                                        v458 = [(FigCaptureVISPipeline *)v457 visNode];
                                        OUTLINED_FUNCTION_41_4(v458);
                                        if (v459)
                                        {
                                          goto LABEL_594;
                                        }
                                      }

LABEL_343:
                                      if (v579)
                                      {
                                        v339 = [BWVideoCompressorNode alloc];
                                        OUTLINED_FUNCTION_34_4();
                                        *&v340 = OUTLINED_FUNCTION_55_3();
                                        v342 = [v341 initWithCompressionSettings:v340 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                                        if (([OUTLINED_FUNCTION_9_11() addNode:v342 error:?] & 1) == 0)
                                        {
                                          goto LABEL_578;
                                        }

                                        v343 = v342;
                                        *(v13 + 64) = v343;
                                        [v343 input];
                                        if (([OUTLINED_FUNCTION_6_21() connectOutput:v579 toInput:? pipelineStage:?] & 1) == 0)
                                        {
                                          goto LABEL_578;
                                        }

                                        v344 = [*(v13 + 64) output];
                                        *(v13 + 112) = [objc_alloc(*(v338 + 3472)) initWithNumberOfInputsAndOutputs:1 initialSemaphoreValue:0];
                                        [*(v13 + 112) setName:{objc_msgSend(*(v240 + 3776), "stringWithFormat:", @"%@ Iris SDOF Back Pressure", objc_msgSend(v13, "name"))}];
                                        if (([OUTLINED_FUNCTION_9_11() addNode:? error:?] & 1) == 0)
                                        {
                                          goto LABEL_578;
                                        }

                                        [objc_msgSend(*(v13 + 112) "inputs")];
                                        if (([OUTLINED_FUNCTION_6_21() connectOutput:v344 toInput:? pipelineStage:?] & 1) == 0)
                                        {
                                          goto LABEL_578;
                                        }

                                        v577 = [objc_msgSend(*(v13 + 112) "outputs")];
                                        v345 = [v344 stringWithFormat:@"%@ Iris SDOF VIS", OUTLINED_FUNCTION_33_6()];
                                        v346 = OUTLINED_FUNCTION_54_4();
                                        [-[FigCaptureVISPipeline sdofVISNode](v346) setName:v345];
                                        [*(v13 + 64) setName:{objc_msgSend(v345, "stringWithFormat:", @"%@ Iris SDOF Compressor", OUTLINED_FUNCTION_33_6())}];
                                        v347 = [v345 stringWithFormat:@"%@ Iris VIS", OUTLINED_FUNCTION_33_6()];
                                        v348 = OUTLINED_FUNCTION_54_4();
                                        [-[FigCaptureVISPipeline visNode](v348) setName:v347];
                                        [*(v13 + 56) setName:{objc_msgSend(v347, "stringWithFormat:", @"%@ Iris Compressor", OUTLINED_FUNCTION_33_6())}];
                                        v215 = v634;
                                      }

                                      else
                                      {
                                        v577 = 0;
                                      }

                                      goto LABEL_357;
                                    }

                                    v13 = v635;
                                    v215 = v634;
                                    v239 = a6;
                                    CFPreferenceNumberWithDefault = v575;
                                    if (v569)
                                    {
                                      v468 = OUTLINED_FUNCTION_30_2();
                                      [v439 stringWithFormat:@"%@ Middle Pipeline VIS Back Pressure"];
                                      [OUTLINED_FUNCTION_24_1() setName:?];
                                      *(v635 + 96) = v11;
                                      v447 = -[FigCaptureVISPipeline visNode]([objc_msgSend(a6 "middlePipeline")]);
                                      OUTLINED_FUNCTION_41_4(v447);
                                      if (v448)
                                      {
                                        goto LABEL_594;
                                      }

                                      goto LABEL_343;
                                    }

                                    v338 = 0x1E7988000;
                                    if (v536)
                                    {
                                      [v439 stringWithFormat:@"%@ Iris Intermediate JPEG Decompression Back Pressure", OUTLINED_FUNCTION_30_2()];
                                      [OUTLINED_FUNCTION_24_1() setName:?];
                                      v460 = v11;
                                      v461 = 88;
                                    }

                                    else
                                    {
                                      if (v541)
                                      {
                                        [v439 stringWithFormat:@"%@ Motion Analysius Back Pressure", OUTLINED_FUNCTION_30_2()];
                                        [OUTLINED_FUNCTION_24_1() setName:?];
                                        goto LABEL_598;
                                      }

                                      if (!v612)
                                      {
                                        v11 = v617;
LABEL_342:
                                        v240 = 0x1E696A000uLL;
                                        goto LABEL_343;
                                      }

                                      [v439 stringWithFormat:@"%@ Scaler Back Pressure Node", OUTLINED_FUNCTION_30_2()];
                                      [OUTLINED_FUNCTION_24_1() setName:?];
                                      v460 = v11;
                                      v461 = 104;
                                    }

                                    *(v635 + v461) = v460;
LABEL_598:
                                    v11 = v617;
                                    goto LABEL_343;
                                  }
                                }
                              }

LABEL_649:
                              OUTLINED_FUNCTION_0_31();
                              goto LABEL_579;
                            }

                            v307 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v622];
                            [v307 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v538), @"AVVideoWidthKey"}];
                            [v307 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v532), @"AVVideoHeightKey"}];
                            v308 = [BWVideoCompressorNode alloc];
                            *&v309 = OUTLINED_FUNCTION_55_3();
                            v311 = [v310 initWithCompressionSettings:v309 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                            [*(v259 + 3776) stringWithFormat:@"%@ Depth Compressor", objc_msgSend(v13, "name")];
                            [OUTLINED_FUNCTION_17() setName:?];
                            [v311 setAlternateCompressionSettingsKey:0x1F21A9850];
                            if ([OUTLINED_FUNCTION_9_11() addNode:v311 error:?])
                            {
                              [v311 input];
                              if ([OUTLINED_FUNCTION_6_21() connectOutput:v589 toInput:? pipelineStage:?])
                              {
                                v588 = [v311 output];
                                *(v13 + 72) = v311;
                                goto LABEL_309;
                              }
                            }
                          }
                        }

LABEL_621:
                        OUTLINED_FUNCTION_0_31();
                        goto LABEL_579;
                      }

                      v283 = [v542 objectForKeyedSubscript:{objc_msgSend(v277, "connectionID")}];
                      v284 = [FigCaptureVISPipeline alloc];
                      OUTLINED_FUNCTION_13_12();
                      [v285 stringWithFormat:@"Tail %d Secondary VIS Pipeline"];
                      if (v281)
                      {
                        v286 = *(v281 + 20);
                        v287 = *(v281 + 8);
                      }

                      else
                      {
                        v286 = 0;
                        v287 = 0;
                      }

                      v288 = v632;
                      if (v632)
                      {
                        v289 = *(v632 + 144);
                        v288 = *(v632 + 128);
                        if (v281)
                        {
LABEL_286:
                          v290 = *(v281 + 32);
LABEL_287:
                          v518 = v288;
                          v522 = v290;
                          v498 = v289;
                          v493 = *MEMORY[0x1E6960CF8];
                          v484 = v287;
                          v475 = v286;
                          OUTLINED_FUNCTION_35_4();
                          v239 = a6;
                          v292 = [FigCaptureVISPipeline initWithUpstreamOutput:v284 graph:v280 name:a5 parentPipeline:v291 videoCaptureConnectionConfiguration:a6 pipelineStage:v277 sdofPipelineStage:obj videoStabilizationType:0 motionAttachmentsSource:v464 fillExtendedRowsOfOutputBuffer:HIDWORD(v464) overCaptureEnabled:v469 stereoMode:0 videoStabilizationOverscanOverride:v475 videoStabilizationStrength:0 motionMetadataPreloadingEnabled:0 visExecutionMode:0x52u pipelineTraceID:v283 captureDevice:v484 outputDimensions:0 generatedTransformsOutputDimensionsOverride:0 P3ToBT2020ConversionEnabled:0 stabilizeDepthAttachments:v493 outputDepthDimensions:v498 maxLossyCompressionLevel:0 videoSTFEnabled:0 videoGreenGhostMitigationEnabled:0 lightSourceMaskAndKeypointDescriptorDataEnabled:0 videoGreenGhostOfflineMetadataEnabled:0 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:0 smartStyleRenderingEnabled:0 smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v518 portTypesWithGeometricDistortionCorrectionInVISEnabled:v522 visProcessingSemaphore:?];
                          if (!v292)
                          {
                            goto LABEL_621;
                          }

                          v280 = [-[FigCaptureVISPipeline visNode](v292) output];
                          v259 = 0x1E696A000;
                          goto LABEL_291;
                        }
                      }

                      else
                      {
                        v289 = 0;
                        if (v281)
                        {
                          goto LABEL_286;
                        }
                      }

                      v290 = 0;
                      goto LABEL_287;
                    }
                  }
                }
              }

LABEL_615:
              OUTLINED_FUNCTION_0_31();
              goto LABEL_579;
            }
          }

LABEL_609:
          OUTLINED_FUNCTION_0_31();
          goto LABEL_579;
        }

LABEL_186:
        if (*(v51 + 112) == 1)
        {
          v190 = [v60 movieFileSinkPipelineConfiguration];
          if (v190)
          {
            v190 = v190[6];
          }

          v191 = v601;
          v192 = [v190 count];
          goto LABEL_192;
        }

        goto LABEL_190;
      }
    }

    else
    {
      v60 = v634;
      if (!v605)
      {
        goto LABEL_185;
      }
    }

    if ((*(v169 + 16) - 3) <= 1)
    {
      v170 = [-[FigCaptureVISPipeline visNode](*(v635 + 40)) outputDimensions];
      [v635 name];
      v171 = v632;
      if (v632)
      {
        v171 = *(v632 + 144);
      }

      CFPreferenceNumberWithDefault = mfsp_buildMovieFileScalerNode(v597, CFPreferenceNumberWithDefault, v572, v170, a5, v44, v570, (v635 + 32), v587 & 1, v171);
    }

    goto LABEL_185;
  }

  OUTLINED_FUNCTION_16_13();
  FigDebugAssert3();
  v667[0] = FigSignalErrorAtGM();
LABEL_580:
  result = v667[0];
  if (!v667[0])
  {
    if (v666)
    {
      return [v666 code];
    }
  }

  return result;
}

- (uint64_t)setUpBackPressureSemaphoresWithIrisIntermediateJPEGPhotoDecompressorNode:(void *)a3 videoDefringingNode:
{
  if (result)
  {
    v5 = result;
    if (*(result + 96))
    {
      OUTLINED_FUNCTION_45_5([objc_msgSend(objc_msgSend(*(result + 128) "output")]);
      [*(v5 + 128) setEmitSampleBufferSemaphore:{objc_msgSend(*(v5 + 96), "semaphore")}];
      result = [*(v5 + 96) setBackPressureSourceNode:*(v5 + 128)];
      if (*(v5 + 112))
      {
        v6 = [objc_msgSend(objc_msgSend(-[FigCaptureVISPipeline sdofVISNode](*(v5 + 40)) "output")];
        OUTLINED_FUNCTION_45_5(v6);
        result = [-[FigCaptureVISPipeline sdofVISNode](*(v5 + 40)) setEmitSampleBufferSemaphore:{objc_msgSend(*(v5 + 112), "semaphore")}];
      }
    }

    if (*(v5 + 88))
    {
      if (!*(v5 + 136))
      {
        v7 = [objc_msgSend(objc_msgSend(a2 "output")];
        if ((v7 - [objc_msgSend(a3 "input")] + 1) <= 0)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
        }

        [OUTLINED_FUNCTION_31_5() setInitialSemaphoreValue:?];
        [OUTLINED_FUNCTION_31_5() semaphore];
        [OUTLINED_FUNCTION_4() addEmitSampleBufferSemaphore:?];
        v8 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_31_5() "input")];
        [objc_msgSend(objc_msgSend(objc_msgSend(a2 "input")];
        result = [OUTLINED_FUNCTION_28() isEqual:?];
        if ((result & 1) == 0)
        {
          result = [OUTLINED_FUNCTION_31_5() setSemaphoreSignalQueue:v8];
        }
      }

      if (*(v5 + 136) == 1)
      {
        v9 = @"SynchronizedSlaveFrame";
        v10 = [objc_msgSend(objc_msgSend(a2 "output")];
        if (!*(v5 + 136))
        {
          v9 = @"PrimaryFormat";
        }

        v11 = v10 - [objc_msgSend(objc_msgSend(a3 "input")] + 1;
        if (v11 <= 0)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
        }

        [OUTLINED_FUNCTION_31_5() setInitialSemaphoreValue:v11];
        [OUTLINED_FUNCTION_31_5() semaphore];
        result = [OUTLINED_FUNCTION_4() addEmitSynchronizedSlaveSampleBufferSemaphore:?];
      }
    }

    if (*(v5 + 104))
    {
      [*(v5 + 104) setInitialSemaphoreValue:{objc_msgSend(objc_msgSend(objc_msgSend(*(v5 + 32), "output"), "primaryMediaProperties"), "resolvedRetainedBufferCount") + 1}];
      v12 = [*(v5 + 104) semaphore];
      v13 = *(v5 + 32);

      return [v13 setEmitSampleBufferSemaphore:v12];
    }
  }

  return result;
}

- (id)_buildFaceDetectionNode:(uint64_t)a1 parentPipeline:objectDetectionSourceOutput:faceDetectionNodeOut:
{
  if (!a1)
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

- (id)_metalCommandQueueWithName:(uint64_t)a1 priority:
{
  if (!a1)
  {
    return 0;
  }

  v1 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  v2 = FigDispatchQueueCreateWithPriority();
  [v1 setCompletionQueue:v2];
  [v1 setSubmissionQueue:v2];

  return v1;
}

- (uint64_t)_appendBackPressureNodeToPreviousVideoOutput:(void *)a3 graph:(void *)a4 parentPipeline:(uint64_t)a5 pipelineStage:(uint64_t)a6 nodeName:(void *)a7 backPressureNodeOut:
{
  if (!a1)
  {
    return 0;
  }

  v17 = 0;
  v14 = [[BWBackPressureNode alloc] initWithNumberOfInputsAndOutputs:1 initialSemaphoreValue:0];
  -[BWNode setName:](v14, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(a1, "name"), a6]);
  if (([a4 addNode:v14 error:&v17] & 1) == 0 || (objc_msgSend(a3, "connectOutput:toInput:pipelineStage:", a2, -[BWNode input](v14, "input"), a5) & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v15 = [(BWNode *)v14 output];
  if (a7)
  {
    *a7 = v14;
  }

  return v15;
}

- (void)initWithConfiguration:(uint64_t)a1 tailIndex:(void *)a2 numTailPipelines:graph:parentPipeline:captureDevicesByConnectionID:inferenceScheduler:recordingStatusDelegate:multiCamClientCompositingCallback:workgroup:.cold.1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
}

@end
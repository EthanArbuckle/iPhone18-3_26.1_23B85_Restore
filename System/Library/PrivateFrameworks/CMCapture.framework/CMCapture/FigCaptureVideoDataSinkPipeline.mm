@interface FigCaptureVideoDataSinkPipeline
- (id)initWithConfiguration:(uint64_t)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph name:(uint64_t)name delegate:(void *)delegate sourceStillImageOutputsByPortType:;
- (uint64_t)_buildVideoDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph delegate:(void *)delegate sourceStillImageOutputsByPortType:;
- (uint64_t)faceTrackingVideoCaptureOutput;
- (uint64_t)filterNode;
- (uint64_t)liveReconfigureForOutputDimensions:(uint64_t)result stabilizationCropDimensions:(uint64_t)dimensions;
- (uint64_t)offlineVISMotionDataCaptureOutput;
- (uint64_t)optimizedForPreview;
- (uint64_t)prepareForRendering;
- (uint64_t)sourceDeviceType;
- (uint64_t)sourceID;
- (void)dealloc;
- (void)setDiscardsSampleData:(BOOL)data;
- (void)setVideoHDRImageStatisticsEnabled:(void *)result;
- (void)videoHDRImageStatisticsEnabled;
@end

@implementation FigCaptureVideoDataSinkPipeline

- (uint64_t)faceTrackingVideoCaptureOutput
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)offlineVISMotionDataCaptureOutput
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (void)dealloc
{
  backgroundBlurNode = self->_backgroundBlurNode;
  if (backgroundBlurNode)
  {
  }

  v4.receiver = self;
  v4.super_class = FigCaptureVideoDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v4 dealloc];
}

- (void)setDiscardsSampleData:(BOOL)data
{
  dataCopy = data;
  if ([(BWPipelineStage *)self->_visPipelineStage queue])
  {
    v5 = !dataCopy;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && ![(FigCaptureSinkPipeline *)self discardsSampleData])
  {
    objc_initWeak(&location, self);
    queue = [(BWPipelineStage *)self->_visPipelineStage queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__FigCaptureVideoDataSinkPipeline_setDiscardsSampleData___block_invoke;
    block[3] = &unk_1E798F9C0;
    objc_copyWeak(&v11, &location);
    dispatch_async(queue, block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v9.receiver = self;
  v9.super_class = FigCaptureVideoDataSinkPipeline;
  [(FigCaptureSinkPipeline *)&v9 setDiscardsSampleData:dataCopy];
  if ([(NSString *)[(FigCaptureSinkPipeline *)self sinkID] isEqualToString:@"CMCaptureLocalSessionSinkID_DeskcamVideo"])
  {
    [(BWFigVideoCaptureDevice *)self->_captureDevice setDeskCamActive:dataCopy ^ 1];
  }

  else if ([(NSString *)[(FigCaptureSinkPipeline *)self sinkID] isEqualToString:@"CMCaptureLocalSessionSinkID_MainVideo"])
  {
    captureDevice = self->_captureDevice;
    if (dataCopy)
    {
      [(BWFigVideoCaptureDevice *)captureDevice setCenterStageActive:0];
      [(BWFigVideoCaptureDevice *)self->_captureDevice setManualCinematicFramingActive:0];
      isManualCinematicFramingActive = 0;
    }

    else
    {
      [(BWFigVideoCaptureDevice *)self->_captureDevice setCenterStageActive:[(BWFigVideoCaptureDevice *)captureDevice cinematicFramingEnabled]];
      [(BWFigVideoCaptureDevice *)self->_captureDevice setManualCinematicFramingActive:[(BWFigVideoCaptureDevice *)self->_captureDevice manualCinematicFramingEnabled]];
      isManualCinematicFramingActive = [(BWFigVideoCaptureDevice *)self->_captureDevice cinematicFramingEnabled]|| [(BWFigVideoCaptureDevice *)self->_captureDevice isManualCinematicFramingActive];
    }

    [(BWFigVideoCaptureDevice *)self->_captureDevice setUltraWideActive:isManualCinematicFramingActive];
  }
}

void *__57__FigCaptureVideoDataSinkPipeline_setDiscardsSampleData___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = [(FigCaptureVISPipeline *)result[8] visNode];

    return [v2 flush];
  }

  return result;
}

- (id)initWithConfiguration:(uint64_t)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph name:(uint64_t)name delegate:(void *)delegate sourceStillImageOutputsByPortType:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v15 = *(a2 + 88);
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = self;
  v18.super_class = FigCaptureVideoDataSinkPipeline;
  v16 = objc_msgSendSuper2(&v18, sel_initWithGraph_name_sinkID_, device, graph, [objc_msgSend(v15 "sinkConfiguration")]);
  if (v16)
  {
    if (!a2 || (*(v16 + 7) = output, *(v16 + 16) = [*(a2 + 64) sourceID], *(v16 + 34) = *(a2 + 72), -[FigCaptureVideoDataSinkPipeline _buildVideoDataSinkPipelineWithConfiguration:sourceVideoOutput:captureDevice:graph:delegate:sourceStillImageOutputsByPortType:](v16, a2, configuration, output, device, name, delegate)))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();

      return 0;
    }
  }

  [objc_msgSend(device "memoryAnalyticsPayload")];
  return v16;
}

- (uint64_t)_buildVideoDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph delegate:(void *)delegate sourceStillImageOutputsByPortType:
{
  configurationCopy = configuration;
  if (!result)
  {
    return result;
  }

  v11 = result;
  v425[0] = 0;
  v424 = 0;
  graphCopy = graph;
  if (a2)
  {
    v12 = *(a2 + 88);
  }

  else
  {
    v12 = 0;
  }

  v389 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.videodata", [v12 sourceConfiguration]), 13);
  deviceCopy = device;
  outputCopy = output;
  if (a2)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 16);
    v366 = HIDWORD(v13);
    v15 = *(a2 + 88);
    v16 = *(a2 + 64);
    v17 = *(a2 + 28);
    LODWORD(v378) = *(a2 + 32);
    requiredFormat = [v16 requiredFormat];
    LODWORD(v351) = *(a2 + 24);
    v357 = v13;
    v363 = v13;
  }

  else
  {
    requiredFormat = [0 requiredFormat];
    LODWORD(v378) = 0;
    v15 = 0;
    v363 = 0;
    v366 = 0;
    v357 = 0;
    v14 = 0;
    v17 = 0;
    v16 = 0;
    LODWORD(v351) = 0;
  }

  HIDWORD(v360) = v17;
  v18 = [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v17];
  v369 = v16;
  imageControlMode = [v16 imageControlMode];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v390 = v15;
  v21 = [objc_msgSend(v15 "sinkConfiguration")];
  v22 = 0;
  if (a2 && v21 == 6)
  {
    v22 = *(a2 + 128);
  }

  if ([objc_msgSend(v15 "sinkConfiguration")] != 6)
  {
    OUTLINED_FUNCTION_8_64();
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    v23 = *(a2 + 129);
LABEL_13:
    HIDWORD(v376) = *(a2 + 48);
    v25 = *(a2 + 36);
    v26 = *(a2 + 60);
    v24 = v26 & (v25 ^ 1);
    LODWORD(v360) = v26 & v25;
    LODWORD(v354) = v23;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_64();
LABEL_14:
  HIDWORD(v351) = v24;
  HIDWORD(v354) = v25;
  if ([objc_msgSend(v15 "sinkConfiguration")] == 6)
  {
    if (a2)
    {
      output = configurationCopy;
      if (*(a2 + 130) == 1)
      {
        v28 = CFPreferenceNumberWithDefault;
        [(BWPipelineStage *)v389 priority];
        v29 = [[BWPocketDetectionNode alloc] initWithMetalCommandQueue:[FigCaptureMovieFileSinkTailPipeline _metalCommandQueueWithName:v11 priority:?] clientApplicationID:*(a2 + 160)];
        if (!v29)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          goto LABEL_174;
        }

        v30 = v29;
        [(BWNode *)v29 setName:@"Pocket Detection"];
        v423.receiver = v11;
        v423.super_class = FigCaptureVideoDataSinkPipeline;
        if ((objc_msgSendSuper2(&v423, sel_addNode_error_, v30, &v424) & 1) == 0 || ([deviceCopy connectOutput:configurationCopy toInput:-[BWNode input](v30 pipelineStage:{"input"), v389}] & 1) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          goto LABEL_169;
        }

        output = [(BWNode *)v30 output];
        CFPreferenceNumberWithDefault = v28;
      }

      goto LABEL_22;
    }
  }

  else
  {
    output = configurationCopy;
    if (a2)
    {
LABEL_22:
      if (!v18 && (*(a2 + 168) & 1) != 0)
      {
        LODWORD(v383) = CFPreferenceNumberWithDefault;
        v31 = -[BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:]([BWSmartStyleApplyNode alloc], "initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:", 0, *(a2 + 172), [objc_msgSend(*(a2 + 64) "requiredFormat")]);
        if (!v31)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          goto LABEL_174;
        }

        v32 = v31;
        LODWORD(v342) = v18;
        [(BWNode *)v31 setName:@"SmartStyle Video Data Output Apply"];
        v33 = *(a2 + 56);
        if (v33 <= FigCapturePixelFormatGetLossyCompressionLevel([v390 outputFormat]))
        {
          LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel([v390 outputFormat]);
        }

        else
        {
          LossyCompressionLevel = *(a2 + 56);
        }

        [(BWSmartStyleApplyNode *)v32 setMaxLossyCompressionLevel:LossyCompressionLevel];
        v422.receiver = v11;
        v422.super_class = FigCaptureVideoDataSinkPipeline;
        if ((objc_msgSendSuper2(&v422, sel_addNode_error_, v32, &v424) & 1) == 0 || (v35 = [(BWNode *)v32 input], (OUTLINED_FUNCTION_10_57(deviceCopy, v36, v37, v35, v38, v39, v40, v41, v261, v265, v268, v271, allKeys, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v319, v326, v14, v333, v336, graphCopy, v342, v348, v351, v354, v357, v360, v363, v366, v369, requiredFormat, v376, configurationCopy, v378, deviceCopy, outputCopy, v383, v389) & 1) == 0))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          goto LABEL_169;
        }

        output = [(BWNode *)v32 output];
        v14 = v329;
        v18 = v342;
      }

      if (![*(a2 + 64) cinematicFramingEnabled])
      {
        goto LABEL_37;
      }

      v42 = *(a2 + 64);
      goto LABEL_32;
    }
  }

  cinematicFramingEnabled = [0 cinematicFramingEnabled];
  v42 = 0;
  output = configurationCopy;
  if ((cinematicFramingEnabled & 1) == 0)
  {
    output = configurationCopy;
    goto LABEL_38;
  }

LABEL_32:
  if ([objc_msgSend(v42 "requiredFormat")])
  {
    if (a2)
    {
      v43 = *(a2 + 64);
    }

    else
    {
      v43 = 0;
    }

    v14 = [objc_msgSend(v43 "requiredFormat")];
  }

  if (a2)
  {
LABEL_37:
    v42 = *(a2 + 64);
    goto LABEL_38;
  }

  v42 = 0;
LABEL_38:
  outputDimensions = FigCaptureConvertDimensionsForAspectRatio(v14, [v42 outputAspectRatio]);
  if (v22)
  {
    v44 = [objc_msgSend(objc_msgSend(outputCopy "captureStreamsByFocalLength")];
    if (!v18)
    {
LABEL_40:
      if (imageControlMode == 4 || CFPreferenceNumberWithDefault)
      {
        v52 = output;
        v53 = imageControlMode == 4;
        horizontalSensorBinningFactor = [requiredFormat horizontalSensorBinningFactor];
        verticalSensorBinningFactor = [requiredFormat verticalSensorBinningFactor];
        [requiredFormat maxSupportedFrameRate];
        v57 = FigCaptureBuildMotionAttachmentsNode(v11, v52, horizontalSensorBinningFactor, verticalSensorBinningFactor, v389, v378, [outputCopy sensorIDDictionaryByPortType], objc_msgSend(outputCopy, "cameraInfoByPortType"), v56, objc_msgSend(outputCopy, "activePortTypes"), v53, 0, objc_msgSend(objc_msgSend(v390, "irisSinkConfiguration"), "optimizesImagesForOfflineVideoStabilization"), 1, 0, v425);
        v46 = deviceCopy;
        if (v425[0])
        {
          fig_log_get_emitter();
          goto LABEL_169;
        }

        output = v57;
      }

      else
      {
        v45 = v22;
        v46 = deviceCopy;
        if ((v354 | v44))
        {
          if (BWDeviceTypeIsExtensionDeviceType(*(v11 + 136)))
          {
            v343 = *MEMORY[0x1E69E9B10];
            v320 = *(MEMORY[0x1E69E9B10] + 32);
            v330 = *(MEMORY[0x1E69E9B10] + 16);
          }

          else
          {
            *&v102 = FigCaptureGetDeviceToCameraTransform([*(v11 + 56) position] == 2);
            v343 = v102;
            v320 = v104;
            v330 = v103;
          }

          dimensions = [requiredFormat dimensions];
          if (a2)
          {
            v106 = *(a2 + 64);
          }

          else
          {
            v106 = 0;
          }

          v388 = FigCaptureConvertDimensionsForAspectRatio(dimensions, [v106 outputAspectRatio]);
          if (v44)
          {
            v107 = 2;
          }

          else
          {
            v107 = 1;
          }

          v108 = [BWSmartCropNode alloc];
          cameraInfoByPortType = [outputCopy cameraInfoByPortType];
          horizontalSensorBinningFactor2 = [requiredFormat horizontalSensorBinningFactor];
          verticalSensorBinningFactor2 = [requiredFormat verticalSensorBinningFactor];
          if (a2)
          {
            v112 = *(a2 + 56);
          }

          else
          {
            v112 = 0;
          }

          LOBYTE(v261) = 0;
          v113 = [(BWSmartCropNode *)v108 initWithOutputDimensions:v388 cameraInfoByPortType:cameraInfoByPortType horizontalSensorBinningFactor:horizontalSensorBinningFactor2 verticalSensorBinningFactor:verticalSensorBinningFactor2 maxLossyCompressionLevel:v112 cameraExtrinsicMatrix:v107 processingMode:*&v343 stillCaptureEnabled:*&v330 objectMetadataIdentifiers:*&v320 captureDevice:v261];
          v114 = v113;
          if (v44)
          {
            v115 = @"Rolling Shutter Correction";
          }

          else
          {
            v115 = @"Low Latency Stabilization";
          }

          [(BWNode *)v113 setName:v115];
          v421.receiver = v11;
          v421.super_class = FigCaptureVideoDataSinkPipeline;
          if ((OUTLINED_FUNCTION_9_69(&v421, sel_addNode_error_) & 1) == 0 || (v116 = [(BWNode *)v114 input], v46 = deviceCopy, v59 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex, (OUTLINED_FUNCTION_10_57(deviceCopy, v117, v118, v116, v119, v120, v121, v122, v263, 0, outputCopy, v271, allKeys, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v320, *(&v320 + 1), v330, *(&v330 + 1), v336, graphCopy, v343, *(&v343 + 1), v351, v354, v357, v360, v363, v366, v369, requiredFormat, v376, configurationCopy, output, deviceCopy, outputCopy, v388, v389) & 1) == 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_123();
            goto LABEL_169;
          }

          output2 = [(BWNode *)v114 output];
          *(v11 + 104) = v114;
          if (((v354 ^ 1) & v45 & 1) == 0)
          {
            LODWORD(v329) = 0;
            v47 = v390;
            output = output2;
            goto LABEL_58;
          }

          goto LABEL_94;
        }

        if (v45)
        {
          output2 = output;
          v59 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
LABEL_94:
          cameraInfoByPortType2 = [outputCopy cameraInfoByPortType];
          v124 = [outputCopy autoImageControlMode] == 0;
          [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters previewStabilizationParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
          v126 = v125;
          v127 = [BWPreviewStabilizationNode alloc];
          LODWORD(v128) = v126;
          v129 = [(BWPreviewStabilizationNode *)v127 initWithCameraInfoByPortType:cameraInfoByPortType2 forStillImagePreview:v124 updateFinalCropRectWithStabilizationShift:1 minimumSupportedUIZoomFactor:v128];
          if (v129)
          {
            v130 = v129;
            [(BWNode *)v129 setName:@"Preview Stabilization"];
            v420.receiver = v11;
            v420.super_class = FigCaptureVideoDataSinkPipeline;
            v47 = v390;
            if ((OUTLINED_FUNCTION_9_69(&v420, sel_addNode_error_) & 1) == 0 || ([v46 connectOutput:output2 toInput:-[BWNode input](v130 pipelineStage:{"input"), v389}] & 1) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_123();
              goto LABEL_169;
            }

            output = [(BWNode *)v130 output];
            LODWORD(v329) = 1;
            goto LABEL_58;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
LABEL_174:
          FigDebugAssert3();
          return 4294954510;
        }
      }

      LODWORD(v329) = 0;
      v47 = v390;
      v59 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
      goto LABEL_58;
    }
  }

  else
  {
    v44 = 0;
    if (!v18)
    {
      goto LABEL_40;
    }
  }

  v47 = v390;
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([v390 outputFormat]);
  *(v11 + 72) = [BWPipelineStage pipelineStageWithName:FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.videodata-stabilization" priority:v369), 13];
  *v406 = 0;
  source = [v369 source];
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v50)
  {
    v46 = deviceCopy;
    v50(source, @"AttributesDictionary", *MEMORY[0x1E695E480], v406);
    v51 = *v406;
  }

  else
  {
    v51 = 0;
    v46 = deviceCopy;
  }

  v60 = [objc_msgSend(v51 objectForKeyedSubscript:{@"HEVC", "BOOLValue"}];

  v61 = [FigCaptureVISPipeline alloc];
  if (a2)
  {
    v62 = *(a2 + 76);
    v63 = *(a2 + 188);
    v64 = *(a2 + 56);
    v65 = *(a2 + 61);
    v66 = *(a2 + 168);
    v67 = *(a2 + 40);
  }

  else
  {
    v66 = 0;
    v64 = 0;
    v62 = 0;
    v63 = 0;
    v65 = 0;
    v67 = 0;
  }

  v68 = [FigCaptureVISPipeline initWithUpstreamOutput:v61 graph:output name:v46 parentPipeline:@"Video Data Sink VIS Pipeline" videoCaptureConnectionConfiguration:v11 pipelineStage:v390 sdofPipelineStage:*(v11 + 72) videoStabilizationType:0 motionAttachmentsSource:HIDWORD(v360) fillExtendedRowsOfOutputBuffer:v378 overCaptureEnabled:v60 stereoMode:0 videoStabilizationOverscanOverride:0 videoStabilizationStrength:0 motionMetadataPreloadingEnabled:IsPackedBayerRaw visExecutionMode:0x5Au pipelineTraceID:outputCopy captureDevice:v62 outputDimensions:v63 generatedTransformsOutputDimensionsOverride:BYTE4(v376) & 1 P3ToBT2020ConversionEnabled:0 stabilizeDepthAttachments:0 outputDepthDimensions:v64 maxLossyCompressionLevel:v65 & 1 videoSTFEnabled:0 videoGreenGhostMitigationEnabled:0 lightSourceMaskAndKeypointDescriptorDataEnabled:0 videoGreenGhostOfflineMetadataEnabled:0 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v66 & 1 smartStyleRenderingEnabled:0 smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v67 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
  *(v11 + 64) = v68;
  v59 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
  if (!v68)
  {
    goto LABEL_183;
  }

  [-[FigCaptureVISPipeline motionAttachmentsNode](v68) setAdjustsValidBufferRectForDarkShade:1];
  output = [-[FigCaptureVISPipeline visNode](*(v11 + 64)) output];
  outputDimensions = [-[FigCaptureVISPipeline visNode](*(v11 + 64)) outputDimensions];
  LODWORD(v329) = 0;
LABEL_58:
  IsRunningInMacCatalystEnvironment = BWCaptureIsRunningInMacCatalystEnvironment();
  v373 = v11;
  if (!a2)
  {
    output4 = output;
    if ((IsRunningInMacCatalystEnvironment & 1) == 0)
    {
      [OUTLINED_FUNCTION_13_46(56 v261];
    }

LABEL_167:
    v47 = v390;
    goto LABEL_119;
  }

  LODWORD(v342) = *(a2 + 149);
  if ((IsRunningInMacCatalystEnvironment & 1) == 0)
  {
    cameraInfoByPortType3 = [OUTLINED_FUNCTION_3_114() cameraInfoByPortType];
    v71 = cameraInfoByPortType3;
    if (*(a2 + 140) == 1)
    {
      v319 = cameraInfoByPortType3;
      outputWidth = [v47 outputWidth];
      outputHeight = [v47 outputHeight];
      *v406 = 0;
      source2 = [v369 source];
      v75 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v75)
      {
        v75(source2, @"OverheadCameraMode", *MEMORY[0x1E695E480], v406);
      }

      v76 = *v406;
      v378 = output;
      v385 = outputHeight;
      v77 = outputWidth;
      if (*v406)
      {
        intValue = [*v406 intValue];
      }

      else
      {
        intValue = *(a2 + 144);
      }

      v96 = [BWDeskCamNode alloc];
      v97 = [objc_msgSend(v369 "requiredFormat")];
      [objc_msgSend(v369 "requiredFormat")];
      v98 = *(a2 + 56);
      v99 = [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
      LOBYTE(allKeys) = v342;
      v271 = *(v11 + v59[190]);
      LODWORD(v268) = intValue;
      v265 = v99;
      LODWORD(v261) = v98;
      outputDimensions = v77 | (v385 << 32);
      v100 = [BWDeskCamNode initWithOutputDimensions:v96 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:stillImageCaptureEnabled:objectMetadataIdentifiers:maxLossyCompressionLevel:portType:overheadCameraMode:captureDevice:downStreamRequires10BitPixelFormat:" horizontalSensorBinningFactor:? verticalSensorBinningFactor:? stillImageCaptureEnabled:? objectMetadataIdentifiers:? maxLossyCompressionLevel:? portType:? overheadCameraMode:? captureDevice:? downStreamRequires10BitPixelFormat:?];
      [OUTLINED_FUNCTION_2_128() applicationID];
      [OUTLINED_FUNCTION_17() setClientApplicationID:?];
      v419.receiver = v11;
      v419.super_class = FigCaptureVideoDataSinkPipeline;
      if (OUTLINED_FUNCTION_9_69(&v419, sel_addNode_error_))
      {
        if ([v97 videoCaptureInput])
        {
          v46 = deviceCopy;
          if ([deviceCopy connectOutput:v378 toInput:objc_msgSend(v97 pipelineStage:{"videoCaptureInput"), v389}])
          {
            if ([v97 videoCaptureOutput])
            {
              output = [v97 videoCaptureOutput];
              [outputCopy deskViewCameraZoomFactor];
              [v97 setDeskViewCameraZoomFactor:v101];
              v47 = v390;
              goto LABEL_114;
            }
          }
        }
      }

LABEL_183:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      goto LABEL_169;
    }

    if (*(a2 + 131) != 1)
    {
      goto LABEL_114;
    }

    v379 = output;
    outputWidth2 = [v47 outputWidth];
    v79 = v47;
    outputHeight2 = [v47 outputHeight];
    v314 = [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
    v81 = v314 != 0;
    [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
    v83 = v82;
    v84 = v82 > 0.0;
    v321 = v71;
    v85 = [BWSubjectSelectionNode alloc];
    v86 = [objc_msgSend(v369 "requiredFormat")];
    v87 = [objc_msgSend(v369 "requiredFormat")];
    deviceOrientationCorrectionEnabled = [v79 deviceOrientationCorrectionEnabled];
    v261 = [objc_msgSend(OUTLINED_FUNCTION_13_46(v59[190] v261];
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v261 count:1];
    LOBYTE(v266) = *(a2 + 142);
    HIDWORD(v262) = *(a2 + 136);
    BYTE1(v262) = v84;
    LOBYTE(v262) = v81;
    v90 = [BWSubjectSelectionNode initWithOutputDimensions:v85 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:portTypes:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageFramingMode:gazeSelectionEnabled:" horizontalSensorBinningFactor:outputWidth2 | (outputHeight2 << 32) verticalSensorBinningFactor:v322 deviceOrientationCorrectionEnabled:v86 portTypes:v87 cameraHasDistortionCoefficients:deviceOrientationCorrectionEnabled cameraHasCalibrationValidMaxRadius:v89 centerStageFramingMode:? gazeSelectionEnabled:?];
    v417.receiver = v374;
    v417.super_class = FigCaptureVideoDataSinkPipeline;
    if ((objc_msgSendSuper2(&v417, sel_addNode_error_, v90, &v424) & 1) == 0)
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v90 videoCaptureInputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    if (![OUTLINED_FUNCTION_17() objectForKeyedSubscript:?])
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v90 videoCaptureInputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    if (([deviceCopy connectOutput:v379 toInput:objc_msgSend(OUTLINED_FUNCTION_17() pipelineStage:{"objectForKeyedSubscript:"), v389}] & 1) == 0)
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v90 videoCaptureOutputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    if (![OUTLINED_FUNCTION_17() objectForKeyedSubscript:?])
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v90 videoCaptureOutputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    v302 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
    [OUTLINED_FUNCTION_3_114() setSubjectSelectionDelegate:v90];
    v91 = OUTLINED_FUNCTION_3_114();
    LODWORD(v92) = 1.0;
    [v91 setZoomFactor:v92];
    outputWidth3 = [v390 outputWidth];
    outputHeight3 = [v390 outputHeight];
    v416 = 0;
    source3 = [v370 source];
    v94 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v94)
    {
      v94(source3, @"AttributesDictionary", *MEMORY[0x1E695E480], &v416);
    }

    v378 = sel_addNode_error_;
    if (v416)
    {
      v95 = [v416 objectForKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
    }

    else
    {
      v95 = 0;
    }

    [*(a2 + 64) videoZoomFactor];
    v132 = v131;
    if (v131 < 1.0)
    {
      [objc_msgSend(v95 objectForKeyedSubscript:{@"ManualFramingDefaultZoomFactor", "floatValue"}];
      v132 = v133;
    }

    [*(a2 + 64) manualFramingPanningAngleX];
    v135 = v134;
    [*(a2 + 64) manualFramingPanningAngleY];
    v137 = v136;
    [objc_msgSend(v95 objectForKeyedSubscript:{@"ManualFramingDefaultZoomFactor", "floatValue"}];
    v139 = v138;
    v140 = [v95 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleX"];
    v141 = [v95 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleY"];
    v142 = [v95 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleZ"];
    v143 = 0;
    v144 = 0;
    if (v140)
    {
      [v140 floatValue];
      v144 = v145;
    }

    if (v141)
    {
      [v141 floatValue];
      v143 = v146;
    }

    v147 = v139;
    if (v142)
    {
      [v142 floatValue];
      v149 = v148;
    }

    else
    {
      v149 = 0;
    }

    HIDWORD(v305) = v83 > 0.0;
    v150 = v315 != 0;
    v151 = *(a2 + 132);
    v152 = [objc_msgSend(v95 objectForKeyedSubscript:{@"FishEyeEffectEnabled", "BOOLValue"}];

    [OUTLINED_FUNCTION_11_57() setCenterStageRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
    [OUTLINED_FUNCTION_11_57() setCinematicFramingSupported:1];
    [OUTLINED_FUNCTION_11_57() setCinematicFramingEnabled:v151];
    [OUTLINED_FUNCTION_11_57() setManualCinematicFramingEnabled:v151 ^ 1];
    v153 = [BWCinematicFramingNode alloc];
    [objc_msgSend(v370 "requiredFormat")];
    [objc_msgSend(v370 "requiredFormat")];
    [v390 deviceOrientationCorrectionEnabled];
    v154 = *(a2 + 56);
    v262 = [OUTLINED_FUNCTION_13_46(56 v262];
    v406[0] = v151;
    v406[1] = v152;
    memset(&v406[2], 0, 22);
    __asm { FMOV            V0.2D, #1.0 }

    *&v406[24] = _Q0;
    v407 = 0;
    v408 = v132;
    v409 = v135;
    v410 = v137;
    v411 = v147;
    v412 = v144;
    v413 = v143;
    v414 = v149;
    v415 = 0;
    LOBYTE(v280) = v342;
    v277 = 1;
    *(&allKeys + 1) = BYTE4(v304);
    LOBYTE(allKeys) = v150;
    v268 = v262;
    v271 = v406;
    LODWORD(v265) = v154;
    v11 = v373;
    v261 = 0;
    outputDimensions = outputWidth3 | (v307 << 32);
    v161 = [BWCinematicFramingNode initWithOutputDimensions:v153 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:stillImageCaptureEnabled:objectMetadataIdentifiers:maxLossyCompressionLevel:portTypes:cinematicFramingControls:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageMetadataDeliveryEnabled:pipelineType:downStreamRequires10BitPixelFormat:" horizontalSensorBinningFactor:? verticalSensorBinningFactor:? deviceOrientationCorrectionEnabled:? stillImageCaptureEnabled:? objectMetadataIdentifiers:? maxLossyCompressionLevel:? portTypes:? cinematicFramingControls:? cameraHasDistortionCoefficients:? cameraHasCalibrationValidMaxRadius:? centerStageMetadataDeliveryEnabled:? pipelineType:? downStreamRequires10BitPixelFormat:?];
    [OUTLINED_FUNCTION_2_128() applicationID];
    [OUTLINED_FUNCTION_17() setClientApplicationID:?];
    v405.receiver = v373;
    v405.super_class = FigCaptureVideoDataSinkPipeline;
    if ((objc_msgSendSuper2(&v405, sel_addNode_error_, v151, &v424) & 1) == 0 || (v46 = deviceCopy, ![objc_msgSend(v151 "videoCaptureInputsByPortType")]) || (v47 = v390, (objc_msgSend(deviceCopy, "connectOutput:toInput:pipelineStage:", v301, objc_msgSend(objc_msgSend(v151, "videoCaptureInputsByPortType"), "objectForKeyedSubscript:", objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_114(), "captureStream"), "portType")), v389) & 1) == 0) || !objc_msgSend(v151, "videoCaptureOutput"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      goto LABEL_169;
    }

    output = [v151 videoCaptureOutput];
    [v151 setCinematicFramingControlMode:1];
    [OUTLINED_FUNCTION_3_114() setCenterStageDelegate:v151];
    [OUTLINED_FUNCTION_3_114() setManualCinematicFramingDelegate:v151];
  }

LABEL_114:
  if (*(a2 + 148) == 1)
  {
    v162 = *(a2 + 56);
    v163 = [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
    v164 = +[FigCaptureCameraParameters temporalFilterSessionConfigurationForPortType:sensorIDString:](FigCaptureCameraParameters, "temporalFilterSessionConfigurationForPortType:sensorIDString:", v163, [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")]);
    v165 = [[BWTemporalFilterNode alloc] initWithMaxLossyCompression:v162 filterSessionConfiguration:v164 lowLightBandingMitigationEnabled:v342];
    [v11 sinkID];
    [OUTLINED_FUNCTION_17() setName:?];
    v404.receiver = v11;
    v404.super_class = FigCaptureVideoDataSinkPipeline;
    if ((OUTLINED_FUNCTION_9_69(&v404, sel_addNode_error_) & 1) == 0 || (v166 = [v165 input], (OUTLINED_FUNCTION_10_57(v46, v167, v168, v166, v169, v170, v171, v172, v261, v265, v268, v271, allKeys, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v319, v326, v329, v333, v336, graphCopy, v342, v348, v351, v354, v357, v360, v363, v366, v369, v373, v376, configurationCopy, v378, deviceCopy, outputCopy, outputDimensions, v389) & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      goto LABEL_169;
    }

    output = [v165 output];
  }

  output4 = output;
  if (*(a2 + 150) == 1)
  {
    v208 = [objc_msgSend(*(a2 + 64) "requiredFormat")];
    v209 = [FigCaptureMovieFileSinkTailPipeline _metalCommandQueueWithName:v11 priority:?];
    v210 = [BWStreamingFilterNode alloc];
    v211 = *(a2 + 56);
    v212 = *(a2 + 168);
    transform = [*(a2 + 88) transform];
    v214 = [*(a2 + 88) transform] >> 32;
    *(&v277 + 1) = 0;
    LOBYTE(v277) = v208;
    allKeys = [delegate allKeys];
    LODWORD(v271) = v214;
    BYTE4(v268) = transform & 1;
    LODWORD(v268) = 13;
    v265 = v209;
    LOBYTE(v261) = 0;
    v215 = [BWStreamingFilterNode initWithCaptureDevice:v210 maxLossyCompressionLevel:"initWithCaptureDevice:maxLossyCompressionLevel:semanticStyleRenderingEnabled:cinematicVideoEnabled:smartStyleRenderingEnabled:portraitPreviewForegroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:metalCommandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:sourceStillImageOutputPortTypes:squareAspectRatioConfigEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:" semanticStyleRenderingEnabled:outputCopy cinematicVideoEnabled:v211 smartStyleRenderingEnabled:0 portraitPreviewForegroundBlurEnabled:1 depthFilterRenderingIsAfterPreviewStitcher:v212 metalCommandQueue:0 priority:? mirroredForMetadataAdjustment:? rotationDegreesForMetadataAdjustment:? sourceStillImageOutputPortTypes:? squareAspectRatioConfigEnabled:? cropDepthToPrimaryCaptureAspectRatio:? disableDepthAndSegmentationRotationInLandscape:?];
    v403 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffect"];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v403 count:1];
    [OUTLINED_FUNCTION_17() changeToFilters:? animated:?];
    [(BWStreamingFilterNode *)v215 setMetadataProcessingEnabled:1];
    LODWORD(v216) = *(a2 + 152);
    [(BWStreamingFilterNode *)v215 setSimulatedAperture:v216];
    v373[10] = v215;
    v402.receiver = v373;
    v402.super_class = FigCaptureVideoDataSinkPipeline;
    if (OUTLINED_FUNCTION_9_69(&v402, sel_addNode_error_) & 1) != 0 && ([deviceCopy connectOutput:output toInput:-[BWNode input](v215 pipelineStage:{"input"), v389}])
    {
      output3 = [(BWNode *)v215 output];
      v47 = v390;
      output4 = output3;
      if (!delegate)
      {
        goto LABEL_119;
      }

      v400 = 0u;
      v401 = 0u;
      v398 = 0u;
      v399 = 0u;
      v225 = OUTLINED_FUNCTION_14_45(output3, v218, v219, v220, v221, v222, v223, v224, v261, v209, v268, v271, allKeys, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v313, v319, v326, v329, v333, v336, graphCopy, v342, v348, v351, v354, v357, v360, v363, v366, v369, v373, v376, configurationCopy, output3, deviceCopy, outputCopy, outputDimensions, v389, v390, v391.receiver, v391.super_class, v392.receiver, v392.super_class, v393.receiver, v393.super_class, v394.receiver, v394.super_class, v395.receiver, v395.super_class, v396.receiver, v396.super_class, v397);
      if (!v225)
      {
        goto LABEL_119;
      }

      v226 = v225;
      v227 = *v399;
LABEL_160:
      v228 = 0;
      while (1)
      {
        if (*v399 != v227)
        {
          objc_enumerationMutation(delegate);
        }

        v229 = *(*(&v398 + 1) + 8 * v228);
        v230 = [delegate objectForKeyedSubscript:v229];
        v231 = [objc_msgSend(v230 "connection")];
        if (!v231)
        {
          [(NSDictionary *)[(BWStreamingFilterNode *)v215 stillImageInputsByPortType] objectForKeyedSubscript:v229];
          v231 = [OUTLINED_FUNCTION_129() connectOutput:v230 toInput:? pipelineStage:?];
          if (!v231)
          {
            break;
          }
        }

        if (v226 == ++v228)
        {
          v226 = OUTLINED_FUNCTION_14_45(v231, v232, v233, v234, v235, v236, v237, v238, v261, v265, v268, v271, allKeys, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v318, v325, v326, v329, v333, v336, graphCopy, v347, v348, v351, v354, v357, v360, v363, v366, v369, v373, v376, configurationCopy, output4, deviceCopy, outputCopy, outputDimensions, v389, v390, v391.receiver, v391.super_class, v392.receiver, v392.super_class, v393.receiver, v393.super_class, v394.receiver, v394.super_class, v395.receiver, v395.super_class, v396.receiver, v396.super_class, v397);
          if (v226)
          {
            goto LABEL_160;
          }

          goto LABEL_167;
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_123();
    goto LABEL_169;
  }

LABEL_119:
  transform2 = [v47 transform];
  v316 = HIDWORD(transform2);
  v323 = v174;
  v175 = HIDWORD(transform2) != v366;
  v345 = transform2;
  v176 = transform2 ^ v363;
  v177 = [v47 requiresScalingForInputTransForm:v357 nodeName:{outputDimensions, @"Video Data Converter/Rotator/Scaler"}];
  v178 = (HIDWORD(v360) == 2) | v351;
  deviceOrientationCorrectionEnabled2 = [v47 deviceOrientationCorrectionEnabled];
  v180 = FigCaptureVideoAspectRatiosAreEqual(outputDimensions, [v47 nonRotatedOutputDimensions], 0.01);
  v181 = v175 | v176;
  v182 = v181 | v177;
  v183 = off_1E7989000;
  if (FigCapturePixelFormatIsPackedBayerRaw([v47 outputFormat]))
  {
    v184 = v182 | ~v178 | BYTE4(v376) | deviceOrientationCorrectionEnabled2 | !v180;
    v185 = v373;
    v186 = deviceCopy;
    v187 = outputCopy;
    if (v184)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      LODWORD(result) = FigSignalErrorAtGM();
      goto LABEL_170;
    }

    goto LABEL_152;
  }

  LODWORD(v366) = !v180;
  v188 = v180 & ~(v182 | BYTE4(v376) | BYTE4(v351));
  [v47 outputFormat];
  v2612 = [OUTLINED_FUNCTION_13_46(56 v261];
  v190 = [[BWPixelTransferNode alloc] initWithfractionalSourceRectEnabled:((v332 | v356) | v2612) & 1];
  [(BWPixelTransferNode *)v190 setPassesBuffersThroughWhenPossible:v188 & 1];
  v191 = [MEMORY[0x1E696AD60] stringWithString:@"Video Data Converter"];
  v192 = v191;
  if (v181)
  {
    [v191 appendString:@"/Rotator"];
  }

  if (v177)
  {
    [v192 appendString:@"/Scaler"];
  }

  if ((v178 & 1) == 0)
  {
    [v192 appendString:@"/Zoomer"];
  }

  if ((v376 & 0x100000000) != 0)
  {
    [v192 appendString:@"/ColorConverter"];
  }

  if ((v353 & 0x100000000) == 0)
  {
    if (!deviceOrientationCorrectionEnabled2)
    {
      goto LABEL_132;
    }

LABEL_142:
    [v192 appendString:@"/DeviceOrientationCorrection"];
    if (v180)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  [v192 appendString:@"/Copier"];
  if (deviceOrientationCorrectionEnabled2)
  {
    goto LABEL_142;
  }

LABEL_132:
  if (!v180)
  {
LABEL_133:
    [v192 appendString:@"/Cropper"];
  }

LABEL_134:
  [(BWNode *)v190 setName:v192];
  supportsWideColor = [outputCopy supportsWideColor];
  if (a2)
  {
    v195 = *(a2 + 52);
    v194 = *(a2 + 56);
  }

  else
  {
    v194 = 0;
    v195 = 0;
  }

  FigCaptureConfigureVideoDataConverterRotatorNode(v190, v390, v359, outputDimensions, supportsWideColor, BYTE4(v376) & 1, v194, v195);
  if (v182 & 1 | ((v178 & 1) == 0) | (HIDWORD(v376) | deviceOrientationCorrectionEnabled2) & 1 | v368 & 1)
  {
    v185 = v375;
    v183 = off_1E7989000;
    if ([v371 sourceDeviceType] == 8 && ((objc_msgSend(v371, "manualCinematicFramingEnabled") & 1) != 0 || objc_msgSend(v371, "cinematicFramingEnabled")))
    {
      [(BWPixelTransferNode *)v190 setCropMode:3];
    }

    else if (!v180)
    {
      [(BWPixelTransferNode *)v190 setCropMode:0];
      -[BWPixelTransferNode setInputCropRect:](v190, "setInputCropRect:", FigCaptureMakeRectWithAspectRatioInsideDimensions(outputDimensions, 1, [v390 nonRotatedOutputDimensions] / (objc_msgSend(v390, "nonRotatedOutputDimensions") >> 32)));
    }
  }

  else
  {
    [(BWPixelTransferNode *)v190 setCropMode:3];
    v185 = v375;
    v183 = off_1E7989000;
  }

  if (v362)
  {
    [(BWPixelTransferNode *)v190 setOutputPixelFormat:0];
  }

  v396.receiver = v185;
  v396.super_class = FigCaptureVideoDataSinkPipeline;
  v186 = deviceCopy;
  v187 = outputCopy;
  if ((objc_msgSendSuper2(&v396, sel_addNode_error_, v190, &v424) & 1) == 0 || (v185[11] = v190, [(BWNode *)v190 input], v196 = OUTLINED_FUNCTION_129(), (OUTLINED_FUNCTION_10_57(v196, v197, v198, v199, v200, v201, v202, v203, v264, v267, v270, v273, v276, v279, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v317, v324, v328, v332, v335, v338, v341, v346, v350, v353, v356, v359, v362, v365, v368, v371, v375, v376, configurationCopy, output4, deviceCopy, outputCopy, outputDimensions, v389) & 1) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_123();
    goto LABEL_169;
  }

  output4 = [(BWNode *)v190 output];
  outputDimensions = v323;
  v363 = v345;
  v366 = v316;
  v47 = v390;
LABEL_152:
  if (a2)
  {
    v204 = *(a2 + 37);
    v205 = BYTE4(v354);
    if (*(a2 + 88))
    {
      v206 = 0;
      v207 = 1;
      goto LABEL_210;
    }
  }

  else
  {
    v204 = 0;
    v205 = BYTE4(v354);
  }

  v207 = 0;
  v206 = 1;
LABEL_210:
  v240 = (v204 & 1) + (v205 & 1u) + v207;
  if (v240 >= 2)
  {
    v241 = [[BWFanOutNode alloc] initWithFanOutCount:v240 mediaType:1986618469];
    [(BWNode *)v241 setName:@"Video Splitter"];
    v395.receiver = v185;
    v395.super_class = FigCaptureVideoDataSinkPipeline;
    if ((objc_msgSendSuper2(&v395, sel_addNode_error_, v241, &v424) & 1) == 0 || (-[BWNode input](v241, "input"), ([OUTLINED_FUNCTION_129() connectOutput:output4 toInput:? pipelineStage:?] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      goto LABEL_169;
    }

    v242 = v186;
    v243 = v183;
    if (v206)
    {
      configurationCopy = 0;
      v244 = 0;
    }

    else
    {
      configurationCopy = [(NSArray *)[(BWNode *)v241 outputs] objectAtIndexedSubscript:0];
      v244 = 1;
    }

    if ((v354 & 0x100000000) != 0)
    {
      v185[14] = [(NSArray *)[(BWNode *)v241 outputs] objectAtIndexedSubscript:v244++];
    }

    if (v204)
    {
      v185[15] = [(NSArray *)[(BWNode *)v241 outputs] objectAtIndexedSubscript:v244];
    }

    if (v360)
    {
      v246 = [objc_alloc(v243[92]) initWithfractionalSourceRectEnabled:0];
      [v246 setName:@"Video Data Copier"];
      supportsWideColor2 = [v187 supportsWideColor];
      if (a2)
      {
        v249 = *(a2 + 52);
        v248 = *(a2 + 56);
      }

      else
      {
        v248 = 0;
        v249 = 0;
      }

      v186 = v242;
      FigCaptureConfigureVideoDataConverterRotatorNode(v246, v47, v363 | (v366 << 32), outputDimensions, supportsWideColor2, 0, v248, v249);
      v394.receiver = v185;
      v394.super_class = FigCaptureVideoDataSinkPipeline;
      if ((objc_msgSendSuper2(&v394, sel_addNode_error_, v246, &v424) & 1) == 0 || ([v246 input], (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", configurationCopy) & 1) == 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_123();
        goto LABEL_169;
      }

      [v246 output];
      v185[12] = v246;
      if (v206)
      {
        goto LABEL_245;
      }
    }

    else
    {
      v186 = v242;
      if (v206)
      {
        goto LABEL_245;
      }
    }

    goto LABEL_236;
  }

  if (v205)
  {
    v245 = 14;
    goto LABEL_219;
  }

  if (v204)
  {
    v245 = 15;
LABEL_219:
    v185[v245] = output4;
    if (v206)
    {
      goto LABEL_245;
    }

LABEL_236:
    v250 = [BWRemoteQueueSinkNode alloc];
    if (a2)
    {
      v251 = *(a2 + 112);
      *v406 = *(a2 + 96);
      *&v406[16] = v251;
    }

    else
    {
      memset(v406, 0, 32);
    }

    v252 = -[BWRemoteQueueSinkNode initWithMediaType:clientAuditToken:sinkID:cameraInfoByPortType:](v250, "initWithMediaType:clientAuditToken:sinkID:cameraInfoByPortType:", 1986618469, v406, [v185 sinkID], objc_msgSend(v187, "cameraInfoByPortTypeIncludingLSCGains:includeCameraInfoForSensorRawProcessing:", 1, 0));
    [(BWNode *)v252 setName:@"Video Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v252 setDelegate:graphCopy];
    [(BWRemoteQueueSinkNode *)v252 setFrameSenderSupportEnabled:1];
    if ([objc_msgSend(v47 "videoDataSinkConfiguration")])
    {
      [v187 registerForAEMatrixMetadata];
    }

    [objc_msgSend(v47 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setDiscardsLateSampleBuffers:?];
    [v47 retainedBufferCount];
    [OUTLINED_FUNCTION_17() setClientVideoRetainedBufferCount:?];
    -[BWRemoteQueueSinkNode setAttachPanoramaMetadata:](v252, "setAttachPanoramaMetadata:", [objc_msgSend(v47 "sourceConfiguration")] == 4);
    [v187 hasFlash];
    [OUTLINED_FUNCTION_17() setCameraSupportsFlash:?];
    -[BWRemoteQueueSinkNode setRemoveCameraIntrinsicMatrixAttachment:](v252, "setRemoveCameraIntrinsicMatrixAttachment:", [v47 cameraIntrinsicMatrixDeliveryEnabled] ^ 1);
    -[FigCaptureCameraParameters panoramaRequiresLTMLockingForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "panoramaRequiresLTMLockingForPortType:sensorIDString:", [objc_msgSend(v187 "captureStream")], objc_msgSend(objc_msgSend(v187, "captureStream"), "sensorIDString"));
    [OUTLINED_FUNCTION_17() setPanoramaRequiresLTMLocking:?];
    [objc_msgSend(v47 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setSceneStabilityMetadataEnabled:?];
    [objc_msgSend(v47 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setRequestedBufferAttachmentsTrie:?];
    [objc_msgSend(v47 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setVideoHDRImageStatisticsEnabled:?];
    v393.receiver = v185;
    v393.super_class = FigCaptureVideoDataSinkPipeline;
    if (OUTLINED_FUNCTION_9_69(&v393, sel_addNode_error_))
    {
      [(BWNode *)v252 input];
      v253 = OUTLINED_FUNCTION_129();
      if (OUTLINED_FUNCTION_10_57(v253, v254, v255, v256, v257, v258, v259, v260, v261, v265, v268, v271, allKeys, v277, v280, v283, v286, v289, v292, v295, v298, v301, v304, v307, v310, v316, v323, v326, v329, v333, v336, graphCopy, v345, v348, v351, v354, v357, v360, v363, v366, v369, v373, v376, configurationCopy, output4, deviceCopy, outputCopy, outputDimensions, v389))
      {
        v392.receiver = v185;
        v392.super_class = FigCaptureVideoDataSinkPipeline;
        objc_msgSendSuper2(&v392, sel_setSinkNode_, v252);
        if ([v186 deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(v47, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [v186 enableDeferredPrepareForNodesNotInPathOfSinkNode:v252];
        }

        goto LABEL_245;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_123();
LABEL_169:
    FigDebugAssert3();
    LODWORD(result) = v425[0];
LABEL_170:
    if (result)
    {
      return result;
    }

    else
    {
      return 4294954516;
    }
  }

  if ((v206 & 1) == 0)
  {
    goto LABEL_236;
  }

LABEL_245:
  *(v185 + 140) = [objc_msgSend(v47 "videoDataSinkConfiguration")];
  v391.receiver = v185;
  v391.super_class = FigCaptureVideoDataSinkPipeline;
  objc_msgSendSuper2(&v391, sel_setUpstreamOutput_, configurationCopy);
  result = v425[0];
  if (!v425[0] && v424)
  {
    return [v424 code];
  }

  return result;
}

- (uint64_t)prepareForRendering
{
  if (result)
  {
    return [*(result + 80) prepareForRenderingWithPreparedPixelBufferPool];
  }

  return result;
}

- (uint64_t)filterNode
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)setVideoHDRImageStatisticsEnabled:(void *)result
{
  if (result)
  {
    sinkNode = [result sinkNode];

    return [sinkNode setVideoHDRImageStatisticsEnabled:a2];
  }

  return result;
}

- (void)videoHDRImageStatisticsEnabled
{
  if (result)
  {
    sinkNode = [result sinkNode];

    return [sinkNode videoHDRImageStatisticsEnabled];
  }

  return result;
}

- (uint64_t)liveReconfigureForOutputDimensions:(uint64_t)result stabilizationCropDimensions:(uint64_t)dimensions
{
  if (result)
  {
    v3 = result;
    [*(result + 104) setOutputDimensions:?];
    [(FigCaptureVISPipeline *)*(v3 + 64) liveReconfigureForOutputDimensions:dimensions];
    dimensionsCopy = dimensions;
    [*(v3 + 88) setOutputWidth:dimensions];
    v5 = dimensions >> 32;
    [*(v3 + 88) setOutputHeight:v5];
    [*(v3 + 96) setOutputWidth:dimensionsCopy];
    v6 = *(v3 + 96);

    return [v6 setOutputHeight:v5];
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

- (uint64_t)sourceDeviceType
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)optimizedForPreview
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 140));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

@end
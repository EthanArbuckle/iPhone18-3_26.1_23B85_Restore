uint64_t FigCapturePixelFormatIs16Bit(int a1)
{
  result = 1;
  if (a1 > 1751527983)
  {
    if (a1 == 1751527984)
    {
      return result;
    }

    v3 = 2087216688;
  }

  else
  {
    if (a1 == 761816624)
    {
      return result;
    }

    v3 = 795371056;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DF20];
    if (a2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
      if (a3)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:a3];
      }

      else
      {
        v7 = 0;
      }

      return [v5 dictionaryWithObjectsAndKeys:{v4, @"SectionID", v6, @"SettingsID", v7, @"ErrorStatus", 0}];
    }

    else
    {
      if (a3)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInt:a3];
      }

      else
      {
        v8 = 0;
      }

      return [v5 dictionaryWithObjectsAndKeys:{v4, @"SectionID", v8, @"ErrorStatus", 0, v9, v10}];
    }
  }

  return result;
}

FigCaptureMetadataSinkPipelineConfiguration *captureSession_createMetadataSinkPipelineConfiguration(uint64_t a1, void *a2, int a3, _DWORD *a4)
{
  v29 = 0;
  v7 = [a2 metadataObjectConnectionConfiguration];
  v8 = [a2 sceneClassifierConnectionConfiguration];
  v9 = [v7 sourceConfiguration];
  v10 = [a2 videoDataConnectionConfiguration];
  v11 = [a2 movieFileVideoConnectionConfiguration];
  v12 = [a2 videoPreviewSinkConnectionConfiguration];
  v13 = [a2 movieFileDetectedObjectMetadataConnectionConfigurations];
  v14 = objc_alloc_init(FigCaptureMetadataSinkPipelineConfiguration);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setPrimaryCameraConfiguration:v7];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setPrimaryVideoConnectionConfiguration:v10];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setVideoConnectionConfigurations:v8];
  IsCameraOrDerivativeRunningInPhotoMode = captureSession_clientIsCameraOrDerivativeRunningInPhotoMode(a1);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setMrcLowPowerModeEnabled:?];
  shouldUseSceneClassifierToGateMetadataDetection = captureSession_shouldUseSceneClassifierToGateMetadataDetection(a1, v8, v7);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setUseSceneClassifierToGateMetadataDetection:?];
  v17 = BWInferenceSmartCameraCurrentVersion();
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setSmartCameraPipelineVersion:?];
  isIrisMovieVitalityScoringEnabled = cs_isIrisMovieVitalityScoringEnabled([v11 irisSinkConfiguration]);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setVitalityScoringEnabled:?];
  -[FigCapturePreviewSinkPipelineConfiguration setSourcePixelFormatIsFullRange:](v14, [objc_msgSend(v7 "sinkConfiguration")]);
  -[FigCaptureMetadataSinkPipelineConfiguration setPreviewEnabled:](v14, [v12 enabled]);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v14 setMotionAttachmentsSource:a3];
  v19 = [v9 lensSmudgeDetectionEnabled];
  if (v9)
  {
    [v9 lensSmudgeDetectionInterval];
  }

  else
  {
    memset(v27, 0, 24);
  }

  v20 = (*v27 << 24) | (v27[4] << 56);
  *v28 = *&v27[5];
  *&v28[15] = *&v27[20];
  v27[0] = v19;
  *&v27[1] = v20;
  *&v27[9] = *v28;
  *&v27[24] = *&v28[15];
  v21 = [v11 videoStabilizationType];
  v22 = [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v21];
  [(FigCaptureCameraSourcePipelineConfiguration *)v14 setStrictDepthModePreferred:?];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v14 setDepthDataConnectionConfiguration:v13];
  if ([objc_msgSend(v7 "sourceConfiguration")] && (IntAttribute = FigCaptureSourceGetIntAttribute(objc_msgSend(objc_msgSend(v7, "sourceConfiguration"), "source"), @"PearlModuleType", &v29), -[FigCaptureCameraSourcePipelineConfiguration setRGBIRStereoFusionMinDepthThresholdMM:](v14, IntAttribute), v29))
  {
    captureSession_createMetadataSinkPipelineConfiguration_cold_1();
  }

  else
  {
    -[FigCaptureMetadataSinkPipelineConfiguration setInputRotationRelativeToSource:](v14, [v12 transform] >> 32);
    -[FigCaptureMetadataSinkPipelineConfiguration setCompressed8BitInputEnabled:](v14, [v10 videoStabilizationType] == 4);
  }

  v24 = v29;
  if (a4)
  {
    *a4 = v29;
  }

  if (v24)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t captureSession_clientIsCameraOrDerivativeRunningInPhotoMode(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v3 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_87_2() "requiredFormat")];
  v4 = *(v1 + 399);
  v5 = v4 | captureSession_clientIsCameraOrDerivative(a1);
  if (!v3)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

BOOL captureSession_shouldUseSceneClassifierToGateMetadataDetection(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    if ((captureSession_clientIsVisualIntelligenceCamera(a1) & 1) != 0 || ([a3 sourceConfiguration], captureSession_clientIsCameraOrDerivativeRunningInPhotoMode(a1)))
    {
      v6 = [a3 metadataIdentifiers];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v7 = *off_1E798D0E8;
      v12[0] = *MEMORY[0x1E69629B8];
      v12[1] = v7;
      v12[2] = *off_1E798D120;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __captureSession_shouldUseSceneClassifierToGateMetadataDetection_block_invoke;
      v11[3] = &unk_1E7998D10;
      v11[4] = v8;
      v11[5] = &v13;
      v9 = [v6 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v11)}];
      v3 = *(v14 + 24) == 1 && [v9 count] == 0;
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t __captureSession_shouldUseSceneClassifierToGateMetadataDetection_block_invoke(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) containsObject:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return 0;
  }

  else
  {

    return [a2 hasPrefix:@"mdta/com.apple.quicktime.detected-machine-readable-code."];
  }
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresMRCNode(void *a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 metadataIdentifiers];
  result = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v10;
    v5 = *off_1E798D0E8;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 isEqualToString:v5] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"mdta/com.apple.quicktime.detected-machine-readable-code."))
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresTextLocalization(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D120;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMainScreenDimensions(int a1)
{
  v2 = MGGetSInt32Answer();
  v3 = MGGetSInt32Answer();
  v4 = v3 > v2;
  v5 = (a1 & v4) == 0;
  if ((a1 & v4) != 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (v5)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  return v7 | (v6 << 32);
}

uint64_t getFTBipartiteMatcherClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTBipartiteMatcherClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTBipartiteMatcherClass_softClass;
  if (!getFTBipartiteMatcherClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTBipartiteMatcherClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTBipartiteMatcherClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC96BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FigCaptureBuildObjectDetectionPipeline(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BWFaceDetectionNode **a6, double a7, double a8, double a9, double a10)
{
  v20 = 0;
  v18 = [[BWFaceDetectionNode alloc] initWithObjectMetadataIdentifiers:a2 movieFileOutputMetadataIdentifierGroups:a3];
  [(BWNode *)v18 setName:@"Face Detection"];
  [(BWFaceDetectionNode *)v18 setRectOfInterest:a7, a8, a9, a10];
  [(BWFaceDetectionNode *)v18 setEmitsEmptyObjectDetectionMetadata:a4];
  if ([a1 addNode:v18 error:&v20])
  {
    if (([objc_msgSend(a1 "graph")] & 1) == 0)
    {
      FigCaptureBuildObjectDetectionPipeline_cold_2();
    }
  }

  else
  {
    FigCaptureBuildObjectDetectionPipeline_cold_1();
  }

  *a6 = v18;
  result = v20;
  if (v20)
  {
    return [v20 code];
  }

  return result;
}

uint64_t FigCaptureClientIsRunningInCameracaptured(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopySigningIdentifier(v3, 0);
  if (([(__CFString *)v5 isEqualToString:0x1F2185350]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(__CFString *)v5 isEqualToString:0x1F2185370];
  }

  CFRelease(v4);
  return v6;
}

void OUTLINED_FUNCTION_189(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{

  [(BWPhotonicEngineNode *)v53 _emitError:v55 stillImageSettings:v56 metadata:v54 description:a1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
}

FigCaptureMovieFileSinkPipelineConfiguration *captureSession_createMovieFileSinkPipelineConfigurationFromParsedConfiguration(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = [a2 primaryVideoConnectionConfiguration];
  v107 = DerivedStorage;
  v112 = *(DerivedStorage + 784);
  v15 = [v112 cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v14, "sourceConfiguration"), "sourceID")}];
  v16 = objc_alloc_init(FigCaptureMovieFileSinkPipelineConfiguration);
  [v14 sourceConfiguration];
  v17 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v17 setPrimaryCameraConfiguration:v18];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setPrimaryVideoConnectionConfiguration:v14];
  [a2 videoConnectionConfigurations];
  v19 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v19 setVideoConnectionConfigurations:v20];
  [a2 audioConnectionConfiguration];
  v21 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v21 setAudioConnectionConfiguration:v22];
  [a2 depthDataConnectionConfiguration];
  v23 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v23 setDepthDataConnectionConfiguration:v24];
  [a2 detectedObjectMetadataConnectionConfigurations];
  v25 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v25 setDetectedObjectMetadataConnectionConfigurations:v26];
  [a2 cameraDebugInfoMetadataConnectionConfiguration];
  v27 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v27 setCameraDebugInfoMetadataConnectionConfiguration:v28];
  [a2 stillImageConnectionConfiguration];
  v29 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v29 setStillImageConnectionConfiguration:v30];
  v109 = a2;
  [a2 sceneClassifierConnectionConfiguration];
  v31 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v31 setSceneClassifierConnectionConfiguration:v32];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setVideoSourceCaptureTransform:a3, a4];
  v33 = [(FigCaptureCameraSourcePipeline *)v15 videoCaptureDimensionsWithoutOverscan];
  LOBYTE(a4) = [objc_msgSend(v14 "irisSinkConfiguration")];
  v34 = [-[FigCaptureMovieFileSinkPipelineConfiguration audioConnectionConfiguration](v16) audioCaptureMode] == 2;
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setCinematicAudioEnabled:?];
  v35 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")];
  v36 = HIDWORD(v35);
  v37 = v35 == 3840 && v36 == 2160 || v35 == 2160 && v36 == 3840;
  v39 = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) videoStabilizationStrength];
  if ([-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) cinematicFramingEnabled])
  {
    v40 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")];
    if (![objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")])
    {
      v42 = HIDWORD(v40);
      goto LABEL_23;
    }

    v41 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v16) "requiredFormat")];
    goto LABEL_21;
  }

  if ([v14 irisVISEnabled])
  {
    LODWORD(v40) = [v14 outputWidth];
    v42 = [v14 outputHeight];
    goto LABEL_23;
  }

  if (v39 > 2 && v37)
  {
    v41 = cs_actionCamera2p8kOutputDimensions(v39);
LABEL_21:
    v42 = HIDWORD(v41);
    LODWORD(v40) = v41;
    goto LABEL_23;
  }

  v42 = HIDWORD(v33);
  LODWORD(v40) = v33;
LABEL_23:
  v44 = [v14 videoStabilizationType];
  [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v44];
  v45 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v45 setBoxedMetadataPostVISEnabled:v46];
  v47 = BWInferenceSmartCameraCurrentVersion();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartCameraPipelineVersion:?];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setOfflineVISEnabled:?];
  cs_getPortTypesWithGDCInVIS(v15);
  v48 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v48 setPortTypesWithGeometricDistortionCorrectionInVISEnabled:v49];
  cs_isIrisMovieVitalityScoringEnabled([v14 irisSinkConfiguration]);
  v50 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v50 setVitalityScoringEnabled:v51];
  v52 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 primaryCameraConfiguration];
  cs_shouldEnableOverCapture(v52);
  v53 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v53 setCaptureDeviceHasOverCaptureEnabled:v54];
  if ([(FigCaptureMovieFileSinkPipelineConfiguration *)v16 captureDeviceHasOverCaptureEnabled])
  {
    v55 = [objc_msgSend(v14 "irisSinkConfiguration")];
  }

  else
  {
    v55 = 0;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setOverCaptureEnabled:v55];
  if ([objc_msgSend(v14 "sourceConfiguration")])
  {
    v56 = [(FigCaptureCameraSourcePipeline *)v15 depthType]!= 0;
  }

  else
  {
    v56 = 0;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setDepthDataDeliveryEnabled:v56];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setFrameReconstructionEnabled:?];
  [objc_msgSend(v14 "irisSinkConfiguration")];
  v57 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v57 setSemanticStyleRenderingEnabled:v58];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartStyleRenderingEnabled:a5];
  if ([(FigCaptureMovieFileSinkPipelineConfiguration *)v16 smartStyleRenderingEnabled])
  {
    v59 = [objc_msgSend(v14 "irisSinkConfiguration")];
  }

  else
  {
    v59 = 0;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartStyleReversibilityEnabled:v59];
  v60 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 primaryCameraConfiguration];
  if ([v60 cinematicFramingEnabled])
  {
    v61 = 2;
  }

  else if ([v60 manualCinematicFramingEnabled])
  {
    v61 = 2;
  }

  else
  {
    v61 = 1;
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setSmartStyleRenderingMethod:v61];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setIspFastSwitchEnabled:a8];
  [objc_msgSend(v14 "movieFileSinkConfiguration")];
  v62 = OUTLINED_FUNCTION_26_13();
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v62 setTrueVideoCaptureEnabled:v63];
  v105 = v15;
  v104 = v37;
  v68 = v14 && (v64 = [v14 sourceConfiguration], FigCapturePlatformIdentifier() >= 11) && (v65 = objc_msgSend(objc_msgSend(v64, "requiredFormat"), "dimensions"), (HIDWORD(v65) * v65) >= 0x7E9000) && (v66 = objc_msgSend(v64, "requiredMaxFrameRate"), FigCaptureFrameRateAsInt(v66, v67) >= 60) && objc_msgSend(v14, "videoStabilizationType") == 4;
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setLowResImageUsedByVideoEncoderEnabled:v68];
  v69 = [MEMORY[0x1E695DF90] dictionary];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v111 = v16;
  v70 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 videoConnectionConfigurations];
  v71 = [v70 countByEnumeratingWithState:&v116 objects:v115 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v117;
    v108 = v40 | (v42 << 32);
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v117 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v116 + 1) + 8 * i);
        v76 = [v75 connectionID];
        v77 = objc_alloc_init(FigCaptureMovieFileSinkPipelineVISConfiguration);
        v78 = [v112 cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v75, "sourceConfiguration"), "sourceID")}];
        [v75 videoStabilizationType];
        v79 = OUTLINED_FUNCTION_10_29();
        [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v79 setVideoStabilizationType:v80];
        [objc_msgSend(v75 "sourceConfiguration")];
        v81 = OUTLINED_FUNCTION_10_29();
        [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v81 setVideoStabilizationStrength:v82];
        [(FigCaptureCameraSourcePipeline *)v78 motionAttachmentsSource];
        v83 = OUTLINED_FUNCTION_10_29();
        [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v83 setMotionAttachmentsSource:v84];
        if (v75 == v14)
        {
          [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v77 setVisOutputDimensions:v108];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 primaryCameraConfiguration];
          if ([objc_msgSend(objc_msgSend(v109 "stillImageConnectionConfiguration")])
          {
            v87 = 0.1;
          }

          else
          {
            v87 = 0.0;
          }

          [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v77 setVideoStabilizationOverscanOverride:v87];
          if ([objc_msgSend(v14 "movieFileSinkConfiguration")])
          {
            os_unfair_lock_lock((v107 + 868));
            [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v77 setVisProcessingSemaphore:?];
            os_unfair_lock_unlock((v107 + 868));
          }
        }

        else
        {
          [(FigCaptureCameraSourcePipeline *)v78 videoCaptureDimensionsWithoutOverscan];
          v85 = OUTLINED_FUNCTION_10_29();
          [(FigCaptureMovieFileSinkPipelineVISConfiguration *)v85 setVisOutputDimensions:v86];
        }

        -[FigCaptureMovieFileSinkPipelineVISConfiguration setVisGeneratedTransformsOutputDimensionsOverride:](v77, [objc_msgSend(objc_msgSend(v14 "sourceConfiguration")] | (objc_msgSend(objc_msgSend(objc_msgSend(v14, "sourceConfiguration"), "requiredFormat"), "videoStabilizationGeneratedTransformsOutputHeightOverride") << 32));
        [v69 setObject:v77 forKeyedSubscript:v76];
      }

      v72 = OUTLINED_FUNCTION_73_3(v88, v89, &v116, v115);
    }

    while (v72);
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setVisConfigurationsByConnectionID:v69];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setClientApplicationID:?];
  if (v14)
  {
    [objc_msgSend(objc_msgSend(v14 "sourceConfiguration")];
    v90 = [OUTLINED_FUNCTION_4() movieFileMaxLossyCompressionLevelForPixelFormat:?];
    [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setMaxLossyCompressionLevel:v90];
  }

  if ([(FigCaptureMovieFileSinkPipelineConfiguration *)v111 primaryCameraConfiguration])
  {
    v91 = [objc_msgSend(-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v111) "requiredFormat")];
    if ((v104 & FigCapturePixelFormatIsUsedForProRes(v91)) == 1)
    {
      v92 = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v111) requiredMaxFrameRate];
      if (FigCaptureFrameRateAsInt(v92, v93) <= 60)
      {
        v95 = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v111) requiredMaxFrameRate];
        if (FigCaptureFrameRateAsInt(v95, v96) <= 30)
        {
          v94 = 419430400;
        }

        else
        {
          v94 = 524288000;
        }
      }

      else
      {
        v94 = 629145600;
      }
    }

    else
    {
      v94 = 419430400;
    }

    [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setMaximumAllowedInFlightCompressedBytes:v94];
  }

  [v105 sourceID];
  v97 = [OUTLINED_FUNCTION_4() cinematographyPipelineWithSourceID:?];
  if (v97)
  {
    [(FigCaptureCinematographyPipeline *)v97 depthOutputDimensions];
    v98 = OUTLINED_FUNCTION_44_11();
    [(FigCaptureMovieFileSinkPipelineConfiguration *)v98 setDepthOutputDimensions:v99];
  }

  v114[0] = [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v111) lensSmudgeDetectionEnabled];
  v100 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 primaryCameraConfiguration];
  if (v100)
  {
    [v100 lensSmudgeDetectionInterval];
  }

  else
  {
    memset(&v114[4], 0, 24);
  }

  v113[0] = *v114;
  *(v113 + 12) = *&v114[12];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setLensSmudgeDetectionConfiguration:v113];
  if (a6)
  {
    v101 = 0;
  }

  else
  {
    v101 = cs_shouldEnableLowLatencyStabilization(v14);
  }

  [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setLowLatencyStabilizationEnabled:v101];
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(objc_msgSend(v14 "sourceConfiguration")]);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v111 setProResRawCaptureEnabled:?];
  return v111;
}

uint64_t __captureSourceRemote_copyClock_block_invoke(uint64_t a1, int64_t a2, uint64_t a3, _DWORD *a4, int64_t *a5, int64_t *a6)
{
  xdict = 0;
  v11 = captureSourceRemote_createBasicMessage(*(a1 + 40), 1667460203, &xdict);
  if (v11)
  {
    v16 = v11;
    __captureSourceRemote_copyClock_block_invoke_cold_1();
  }

  else
  {
    xpc_dictionary_set_mach_send();
    xpc_dictionary_set_int64(xdict, kFigCaptureSourceRemoteCopyClockMessagePayload_ClientClockToken, a2);
    v12 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (v12)
    {
      v16 = v12;
      __captureSourceRemote_copyClock_block_invoke_cold_2();
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, kFigCaptureSourceServerCopyClockMessagePayload_ClockObjectToken);
      v14 = xpc_dictionary_get_int64(0, kFigCaptureSourceServerCopyClockMessagePayload_ClockTimeoutToken);
      v15 = xpc_dictionary_copy_mach_send();
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(0, kFigCaptureSourceServerCopyClockMessagePayload_ClockType);
      if (int64)
      {
        v16 = 0;
      }

      else
      {
        v16 = 1315914603;
      }

      *a4 = v15;
      *a5 = int64;
      *a6 = v14;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

void *cs_getPortTypesWithGDCInVIS(uint64_t a1)
{
  v2 = [(FigCaptureCameraSourcePipeline *)a1 portTypesWithGeometricDistortionCorrectionOnPreviewOutputsEnabled];
  v3 = [(FigCaptureCameraSourcePipeline *)a1 portTypesWithGeometricDistortionCorrectionOnVideoCaptureOutputsEnabled];
  v4 = [MEMORY[0x1E695DF70] array];
  if ([-[FigCaptureCameraSourcePipeline captureDevice](a1) stereoVideoCaptureEnabled])
  {
    [v4 addObjectsFromArray:{objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](a1), "activePortTypes")}];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (([v3 containsObject:v9] & 1) == 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

uint64_t captureSourceServer_handleCopyClockMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v20 = 0;
  v21 = 0;
  cf = 0;
  v6 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v6)
  {
    v15 = v6;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
  }

  else
  {
    v7 = v20;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8)
    {
      v15 = 4294954514;
      goto LABEL_12;
    }

    v9 = *MEMORY[0x1E695E480];
    v10 = v8(v20, 0x1F21A0A30, *MEMORY[0x1E695E480], &cf);
    if (v10)
    {
      v15 = v10;
      goto LABEL_12;
    }

    v11 = [cf intValue];
    if (v11 != 2)
    {
LABEL_14:
      xpc_dictionary_set_int64(a3, kFigCaptureSourceServerCopyClockMessagePayload_ClockObjectToken, 0);
      v16 = kFigCaptureSourceServerCopyClockMessagePayload_ClockTimeoutToken;
      ServerTimeoutToken = FigRemote_GetServerTimeoutToken();
      xpc_dictionary_set_int64(a3, v16, ServerTimeoutToken);
      xpc_dictionary_set_mach_send();
      xpc_dictionary_set_int64(a3, kFigCaptureSourceServerCopyClockMessagePayload_ClockType, v11);
      v15 = 0;
      goto LABEL_15;
    }

    if ((FigCaptureAudiomxdSupportEnabled() & 1) == 0)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = v12(v7, @"Clock", v9, &v21);
        if (!v13)
        {
          if (!v21)
          {
            goto LABEL_14;
          }

          xpc_dictionary_copy_mach_send();
          xpc_dictionary_get_int64(a2, kFigCaptureSourceRemoteCopyClockMessagePayload_ClientClockToken);
          xpc_connection_get_pid(a1);
          WrapperForClockWithManualCommandPortSendRightInsertion = FigAudioDeviceClockServer_MakeWrapperForClockWithManualCommandPortSendRightInsertion();
          if (!WrapperForClockWithManualCommandPortSendRightInsertion)
          {
            goto LABEL_14;
          }

          v15 = WrapperForClockWithManualCommandPortSendRightInsertion;
          OUTLINED_FUNCTION_1_5();
LABEL_13:
          FigDebugAssert3();
          goto LABEL_15;
        }

        v15 = v13;
      }

      else
      {
        v15 = 4294954514;
      }

LABEL_12:
      OUTLINED_FUNCTION_2_118();
      goto LABEL_13;
    }

    v15 = 4294954509;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v15;
}

uint64_t captureSession_buildGraphWithConfiguration_cold_22()
{
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t cs_shouldConvertToBT2020(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](result) format];
    result = FigCapturePixelFormatIsTenBit(v4);
    if (result)
    {
      result = [objc_msgSend(-[FigCaptureCameraSourcePipeline videoOutputColorInfo](v3) objectForKeyedSubscript:{*MEMORY[0x1E6965D88]), "isEqualToString:", *MEMORY[0x1E6965DD0]}];
      if (result)
      {
        LODWORD(result) = [objc_msgSend(-[FigCaptureCameraSourcePipeline videoOutputColorInfo](v3) objectForKeyedSubscript:{*MEMORY[0x1E6965F30]), "isEqualToString:", *MEMORY[0x1E6965F48]}];
        if (a2 == 2)
        {
          return result;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t cs_shouldEnableVideoGreenGhostMitigation(void *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v5 = a1;
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v3 = [OUTLINED_FUNCTION_4() videoStabilizationMethods:? includeIris:?];
  if ([v3 containsObject:&unk_1F2244D70])
  {
    return [a1 videoGreenGhostMitigationEnabled];
  }

  if ([v3 containsObject:&unk_1F2244D88])
  {
    return [a1 videoGreenGhostMitigationEnabled];
  }

  result = [v3 containsObject:&unk_1F2244DA0];
  if (result)
  {
    return [a1 videoGreenGhostMitigationEnabled];
  }

  return result;
}

id FigCaptureBuildSceneClassifierPipeline(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, BWSceneClassifierSinkNode **a12)
{
  HIDWORD(v64) = a6;
  v66 = a3;
  v67 = a5;
  v17 = 0;
  v71 = 0;
  v62 = a11;
  if (a11)
  {
    v17 = [MEMORY[0x1E695DF70] array];
  }

  if (a10)
  {
    v18 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v18 = 0;
  }

  v19 = FigCaptureCreateAndConfigureSmartCameraInferenceNode(a4, v66 & 0xFFFFFFFFFFFFLL, a8, a9, *a7);
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = v19;
  if (([OUTLINED_FUNCTION_3_91() addNode:v19 error:?] & 1) == 0)
  {
    goto LABEL_35;
  }

  v65 = a8;
  if (([objc_msgSend(a1 "graph")] & 1) == 0)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_4_82([a2 connection]);
  v21 = [(BWNode *)v20 output];
  if (*a7 != 1)
  {
    v22 = 0;
    v26 = a10;
    goto LABEL_17;
  }

  v22 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:a8 scheduler:a9 priority:a4];
  [(BWNode *)v22 setName:@"Lens Smudge Detection Inference Node"];
  v23 = [(BWInferenceConfiguration *)[BWLensSmudgeDetectionInferenceConfiguration alloc] initWithInferenceType:120];
  [(BWLensSmudgeDetectionInferenceConfiguration *)v23 setInferenceInputMediaKey:0x1F21AB210];
  [(BWInferenceConfiguration *)v23 setPriority:13];
  LODWORD(v24) = 5.0;
  [(BWInferenceConfiguration *)v23 setMaximumFramesPerSecond:v24];
  v25 = +[FigCaptureCameraParameters sharedInstance];
  if (![(FigCaptureCameraParameters *)v25 lensSmudgeDetectionVersion]|| (v26 = a10, [(BWInferenceNode *)v22 addInferenceOfType:120 version:BWInferenceVersionMakeMajor([(FigCaptureCameraParameters *)v25 lensSmudgeDetectionVersion]) & 0xFFFFFFFFFFFFLL configuration:v23]))
  {

    goto LABEL_35;
  }

  [(BWInferenceNode *)v22 setApplyRecommendedMasterPortType:1];
  if (!v22)
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
    v22 = 0;
    goto LABEL_29;
  }

  if (([OUTLINED_FUNCTION_3_91() addNode:v22 error:?] & 1) == 0)
  {
    goto LABEL_38;
  }

  [a1 graph];
  v27 = [(BWNode *)v22 input];
  if ((OUTLINED_FUNCTION_2_103(v27, v28, v29, v30, v31, v32, v33, v34, v59, v60, v61, a11, v64, v65, v66, v67) & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_4_82([(BWNodeOutput *)v21 connection]);
  v21 = [(BWNode *)v22 output];
LABEL_17:
  if (SHIDWORD(v64) < 1)
  {
    goto LABEL_23;
  }

  v35 = (HIDWORD(v64) + 1);
  v36 = [[BWFanOutNode alloc] initWithFanOutCount:v35 mediaType:1986618469];
  [(BWNode *)v36 setName:@"Post Smart Camera Inferences Fan Out"];
  if (([OUTLINED_FUNCTION_3_91() addNode:v36 error:?] & 1) == 0 || (objc_msgSend(a1, "graph"), v37 = -[BWNode input](v36, "input"), (OUTLINED_FUNCTION_2_103(v37, v38, v39, v40, v41, v42, v43, v44, v59, v60, v61, v62, v64, v65, v66, v67) & 1) == 0))
  {
LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_4_82([(BWNodeOutput *)v21 connection]);
  v21 = [(NSArray *)[(BWNode *)v36 outputs] objectAtIndexedSubscript:0];
  if (v17)
  {
    v45 = 1;
    do
    {
      [v17 addObject:{-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v36, "outputs"), "objectAtIndexedSubscript:", v45)}];
      [(BWFanOutNode *)v36 setDiscardsAttachedMedia:1 forOutputIndex:v45++];
    }

    while (v35 != v45);
  }

LABEL_23:
  v46 = [BWSceneClassifierSinkNode alloc];
  v47 = [a1 sinkID];
  v70[0] = *a7;
  *(v70 + 12) = *(a7 + 12);
  v48 = [(BWSceneClassifierSinkNode *)v46 initWithCaptureDevice:v65 version:v66 & 0xFFFFFFFFFFFFLL lensSmudgeDetectionConfiguration:v70 sinkID:v47];
  v49 = [FigWeakReference weakReferenceToObject:v22];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __FigCaptureBuildSceneClassifierPipeline_block_invoke;
  v69[3] = &unk_1E798F870;
  v69[4] = v49;
  [(BWSceneClassifierSinkNode *)v48 setInferenceEngineToTearDownBlock:v69];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __FigCaptureBuildSceneClassifierPipeline_block_invoke_2;
  v68[3] = &unk_1E799B9C8;
  v68[4] = v49;
  [(BWSceneClassifierSinkNode *)v48 setInferencesToSkipBlock:v68];
  if (([OUTLINED_FUNCTION_3_91() addNode:v48 error:?] & 1) == 0 || (objc_msgSend(a1, "graph"), v50 = -[BWNode input](v48, "input"), (OUTLINED_FUNCTION_2_103(v50, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v64, v65, v66, v67) & 1) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
LABEL_39:
    FigDebugAssert3();
    goto LABEL_29;
  }

  *a12 = v48;
  OUTLINED_FUNCTION_4_82([(BWNodeOutput *)v21 connection]);
  [objc_msgSend(a1 "graph")];
  if (v26)
  {
    *v26 = v18;
  }

  if (v63)
  {
    *v63 = v17;
  }

LABEL_29:

  result = v71;
  if (v71)
  {
    return [v71 code];
  }

  return result;
}

BWInferenceNode *FigCaptureCreateAndConfigureSmartCameraInferenceNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:a3 scheduler:a4 priority:a1];
  [(BWNode *)v7 setName:@"Smart Camera Inference Node"];
  v8 = [(BWInferenceConfiguration *)[BWSmartCameraInferenceConfiguration alloc] initWithInferenceType:101];
  LODWORD(v9) = 5.0;
  [(BWInferenceConfiguration *)v8 setMaximumFramesPerSecond:v9];
  if (a5)
  {
    [(BWSmartCameraInferenceConfiguration *)v8 setClonedIntermediateMediaKey:0x1F21AB210];
    [(BWSmartCameraInferenceConfiguration *)v8 setClonedIntermediateMediaVideoFormatRequirements:BWLensSmudgeDetectionInputVideoFormatRequirements(1)];
  }

  if ([(BWInferenceNode *)v7 addInferenceOfType:101 version:a2 & 0xFFFFFFFFFFFFLL configuration:v8])
  {
    return 0;
  }

  [(BWInferenceNode *)v7 setApplyRecommendedMasterPortType:1];
  return v7;
}

BWInferenceVideoFormatRequirements *BWLensSmudgeDetectionInputVideoFormatRequirements(uint64_t a1)
{
  v2 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v2 setWidth:512];
  [(BWVideoFormatRequirements *)v2 setHeight:512];
  [(BWVideoFormatRequirements *)v2 setSupportedPixelFormats:&unk_1F22498A0];
  [(BWInferenceVideoFormatRequirements *)v2 setDeviceOriented:a1];
  [(BWInferenceVideoFormatRequirements *)v2 setHistogramRequest:&__block_literal_global_111];
  return v2;
}

void *BWInferenceSmartCameraOutputs(unsigned __int16 a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  if (a1 >= 5uLL)
  {
    v3 = *off_1E798C320;
    v12[0] = *off_1E798C318;
    v12[1] = v3;
    v4 = *off_1E798C350;
    v12[2] = *off_1E798C338;
    v12[3] = v4;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v12, 4), @"semdev/probabilities"}];
    v11 = *off_1E798C358;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v11, 1), @"text/probabilities"}];
    v10 = *off_1E798C360;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v10, 1), @"water/probabilities"}];
    v5 = *off_1E798C308;
    v9[0] = *off_1E798C300;
    v9[1] = v5;
    v6 = *off_1E798C328;
    v9[2] = *off_1E798C310;
    v9[3] = v6;
    v7 = *off_1E798C340;
    v9[4] = *off_1E798C330;
    v9[5] = v7;
    v9[6] = *off_1E798C348;
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v9, 7), @"leaf/probabilities"}];
  }

  return v2;
}

uint64_t BWAttachedMediaKeysAvailableOnSmartStyleLearnedFramesOnly()
{
  v1[0] = 0x1F21AAED0;
  v1[1] = 0x1F21AAEF0;
  v1[2] = 0x1F21AAF30;
  v1[3] = 0x1F21AB070;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:4];
}

__CFString *mfsp_avVideoCodec(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if ([(__CFString *)result outputFormat])
    {
      [(__CFString *)v1 outputFormat];

      return BWStringForOSType();
    }

    else if (FigCaptureSourceGetBoolAttribute([-[__CFString sourceConfiguration](v1 "sourceConfiguration")], @"HEVC", 0))
    {
      return @"hvc1";
    }

    else
    {
      return @"avc1";
    }
  }

  return result;
}

uint64_t FigCaptureFrameRateFromCMTime(CMTime *a1)
{
  flags = a1->flags;
  v2 = flags & 0x1D;
  if ((flags & 0x1D) <= 0x11)
  {
    value = 1;
    if (((1 << v2) & 0x30) != 0)
    {
      i = 0;
      goto LABEL_19;
    }

    if (((1 << v2) & 0x300) != 0)
    {
      i = 0;
      value = 0xFFFFFFFFLL;
      goto LABEL_19;
    }

    if (((1 << v2) & 0x30000) != 0)
    {
      i = 0;
LABEL_6:
      value = 0;
LABEL_19:
      v5 = value << 32;
      v2 = i;
LABEL_20:
      v6 = *MEMORY[0x1E695E480];
      v9 = *a1;
      v7 = CMTimeCopyDescription(v6, &v9);
      CFRelease(v7);
      return v5 | v2;
    }
  }

  if ((flags & 0x1D) == 0)
  {
    v5 = flags & 0x1D;
    return v5 | v2;
  }

  if (v2 != 1)
  {
    v2 = 0;
    v5 = 0;
    goto LABEL_20;
  }

  value = a1->value;
  for (i = a1->timescale; value != value; i = i >> 1)
  {
    value >>= 1;
  }

  if (!value)
  {
    goto LABEL_6;
  }

  if (!i || (i & 0x80000000) != 0 || (value & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v5 = value << 32;
  v2 = i;
  if ((i / value) != (a1->timescale / a1->value))
  {
    goto LABEL_20;
  }

  return v5 | v2;
}

double vp_irisVISCleanOutputRectForOutputDimensions(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = a1 / 1.1;
  v4 = FigCaptureRoundFloatToMultipleOf(4, v3);
  v5 = v2 / 1.1;
  FigCaptureRoundFloatToMultipleOf(4, v5);
  return ((v1 - v4) / 2);
}

uint64_t BWDeviceModelIsD23Proto1()
{
  if (BWDeviceModelIsD23Proto1_identifyBuildPhaseOnceToken != -1)
  {
    BWDeviceModelIsD23Proto1_cold_1();
  }

  return BWDeviceModelIsD23Proto1_isD23Proto1;
}

void *BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(int a1, int a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a1)
  {
    v8[0] = 0x1F21AB0D0;
    v8[1] = 0x1F21AB070;
    [v4 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)}];
    if (FigCapturePlatformIdentifier() <= 11)
    {
      if (FigCapturePlatformIdentifier() != 11)
      {
        goto LABEL_7;
      }

      v5 = BWAttachedMediaKey_PreLTMThumbnail;
    }

    else
    {
      v5 = BWAttachedMediaKey_LTMThumbnail;
    }

    [v4 addObject:*v5];
  }

LABEL_7:
  if (a2)
  {
    v7[0] = 0x1F21AAED0;
    v7[1] = 0x1F21AAEF0;
    v7[2] = 0x1F21AAF30;
    v7[3] = 0x1F21AB110;
    [v4 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 4)}];
  }

  return v4;
}

double FigCaptureGetDeviceToCameraTransform(int a1)
{
  if (!a1)
  {
    return *&_PromotedConst_51;
  }

  v1 = -FigCaptureFrontCameraRotationAngle() / 180.0 * 3.14159265;
  v2 = __sincosf_stret(v1 * 0.5);
  v3 = 0;
  _Q4 = vmulq_n_f32(xmmword_1ACF06340, v2.__sinval);
  _S5 = _Q4.i32[1];
  _S6 = _Q4.i32[2];
  __asm { FMLS            S0, S6, V4.S[2] }

  _Q0.f32[0] = _Q0.f32[0] + (v2.__cosval * v2.__cosval);
  v11 = vmuls_lane_f32(v2.__cosval, _Q4, 2);
  v12 = (v11 + (_Q4.f32[0] * _Q4.f32[1])) + (v11 + (_Q4.f32[0] * _Q4.f32[1]));
  v13 = vmuls_lane_f32(v2.__cosval, *_Q4.f32, 1);
  v14 = -(v13 - (_Q4.f32[0] * _Q4.f32[2])) - (v13 - (_Q4.f32[0] * _Q4.f32[2]));
  v20.f32[0] = -(v11 - (_Q4.f32[0] * _Q4.f32[1])) - (v11 - (_Q4.f32[0] * _Q4.f32[1]));
  __asm { FMLA            S3, S5, V4.S[1] }

  v15 = (_Q3.f32[0] + (v2.__cosval * v2.__cosval)) - (_Q4.f32[0] * _Q4.f32[0]);
  __asm { FMLA            S3, S6, V4.S[1] }

  *&v16 = _Q3.f32[0] + _Q3.f32[0];
  _Q3.f32[0] = (v13 + (_Q4.f32[2] * _Q4.f32[0])) + (v13 + (_Q4.f32[2] * _Q4.f32[0]));
  __asm
  {
    FMLA            S16, S6, V4.S[1]
    FMLA            S1, S6, V4.S[2]
  }

  _Q0.f32[1] = v12;
  _Q0.f32[2] = v14;
  v20.f32[1] = v15;
  v20.i64[1] = v16;
  _Q3.f32[1] = _S16 + _S16;
  __asm { FMLS            S1, S5, V4.S[1] }

  _Q3.i32[2] = _S1;
  v24[0] = xmmword_1AD055210;
  v24[1] = xmmword_1AD046FE0;
  v24[2] = xmmword_1ACF06340;
  memset(v25, 0, sizeof(v25));
  do
  {
    v25[v3] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(_Q0, COERCE_FLOAT(v24[v3])), v20, *&v24[v3], 1), _Q3, v24[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  return *v25;
}

uint64_t OUTLINED_FUNCTION_74_1()
{
  LODWORD(STACK[0x230]) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{

  return [a48 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t getVCPCaptureAnalysisSubjectMotionScoreKey()
{
  VCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc = getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc();
  if (!VCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc)
  {
    getVCPCaptureAnalysisSubjectMotionScoreKey_cold_1();
  }

  return *VCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc;
}

uint64_t getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr;
  v6 = getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr;
  if (!getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPCaptureAnalysisSubjectMotionScoreKey");
    getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC970458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getVCPCaptureAnalysisMotionDivScoreKey()
{
  VCPCaptureAnalysisMotionDivScoreKeySymbolLoc = getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc();
  if (!VCPCaptureAnalysisMotionDivScoreKeySymbolLoc)
  {
    getVCPCaptureAnalysisMotionDivScoreKey_cold_1();
  }

  return *VCPCaptureAnalysisMotionDivScoreKeySymbolLoc;
}

uint64_t getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr;
  v6 = getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr;
  if (!getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPCaptureAnalysisMotionDivScoreKey");
    getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC970568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_87_0@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(x8_0 + 132) = 1;
  a7 = 0;
  a8 = 0;

  return [a1 getBytes:&a7 length:16];
}

uint64_t OUTLINED_FUNCTION_87_1(float a1)
{

  return FigCaptureMetadataUtilitiesCreateExifCompositeImageMetadata(v1, v3, v4, a1);
}

BOOL OUTLINED_FUNCTION_87_4(NSObject *a1)
{
  v2 = STACK[0x35B];

  return os_log_type_enabled(a1, v2);
}

CFTypeRef OUTLINED_FUNCTION_239(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_47_6@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 objectAtIndexedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return [v47 countByEnumeratingWithState:&a47 objects:&a31 count:16];
}

uint64_t OUTLINED_FUNCTION_47_10()
{
  *(v0 - 92) = 0;
  *(v0 - 93) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_47_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t captureSession_purgeFileSinkCache()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [DerivedStorage[110] allKeys];
  result = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [DerivedStorage[98] movieFileSinkPipelineWithSinkID:v6];
        if (!(v7 | [DerivedStorage[98] audioFileSinkPipelineWithSinkID:v6]))
        {
          [DerivedStorage[110] setObject:0 forKeyedSubscript:v6];
          [DerivedStorage[111] setObject:0 forKeyedSubscript:v6];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t captureSession_updateGraphConnectionEnabledState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 784);
  v105 = DerivedStorage;
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphConnectionEnabledState_cold_1();
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v106 = a2;
  v5 = [a2 parsedVideoDataSinkConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v182 objects:v181 count:16];
  v112 = v4;
  if (v6)
  {
    v7 = v6;
    v8 = *v183;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v183 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v182 + 1) + 8 * i);
        v11 = [v4 videoDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(v10, "videoDataConnectionConfiguration", v99, v100), "sinkConfiguration"), "sinkID")}];
        [v11 setDiscardsSampleData:{objc_msgSend(objc_msgSend(v10, "videoDataConnectionConfiguration"), "enabled") ^ 1}];
        if (dword_1ED844050)
        {
          v180 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v180;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v15 = [v11 sinkID];
            v16 = [v11 discardsSampleData];
            v173 = 136315650;
            v17 = "No";
            if (v16)
            {
              v17 = "Yes";
            }

            v174 = "captureSession_updateGraphConnectionEnabledState";
            v175 = 2114;
            v176 = v15;
            v177 = 2082;
            v178 = v17;
            LODWORD(v100) = 32;
            v99 = &v173;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = v112;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v182 objects:v181 count:16];
    }

    while (v7);
  }

  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v18 = [v106 parsedDepthDataSinkConfigurations];
  v19 = [v18 countByEnumeratingWithState:&v169 objects:v168 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v170;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v170 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [objc_msgSend(v4 depthDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v169 + 1) + 8 * j), "depthDataConnectionConfiguration"), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(objc_msgSend(*(*(&v169 + 1) + 8 * j), "depthDataConnectionConfiguration"), "enabled") ^ 1}];
      }

      v20 = [v18 countByEnumeratingWithState:&v169 objects:v168 count:16];
    }

    while (v20);
  }

  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v23 = [v106 audioDataSinkConnectionConfigurations];
  v24 = [v23 countByEnumeratingWithState:&v164 objects:v163 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v165;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v165 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [objc_msgSend(v4 audioDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v164 + 1) + 8 * k), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v164 + 1) + 8 * k), "enabled") ^ 1}];
      }

      v25 = [v23 countByEnumeratingWithState:&v164 objects:v163 count:16];
    }

    while (v25);
  }

  os_unfair_lock_lock((v105 + 224));
  v109 = *(v105 + 232);
  os_unfair_lock_unlock((v105 + 224));
  v162 = 0u;
  v161 = 0u;
  v160 = 0u;
  v159 = 0u;
  obj = [v106 parsedPreviewSinkConfigurations];
  v110 = [obj countByEnumeratingWithState:&v159 objects:v158 count:16];
  if (v110)
  {
    v107 = *v160;
    do
    {
      for (m = 0; m != v110; ++m)
      {
        if (*v160 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v159 + 1) + 8 * m);
        v30 = [v4 previewSinkPipelineWithSinkID:{objc_msgSend(v29, "sinkID")}];
        v31 = [MEMORY[0x1E695DF70] array];
        if ([v29 videoPreviewSinkConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "videoPreviewSinkConnectionConfiguration")}];
        }

        if ([v29 videoThumbnailConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "videoThumbnailConnectionConfiguration")}];
        }

        if ([v29 depthDataConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "depthDataConnectionConfiguration")}];
        }

        if ([v29 previewTimeMachineConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "previewTimeMachineConnectionConfiguration")}];
        }

        if ([v29 previewSmartStyleCoefficientsTimeMachineConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "previewSmartStyleCoefficientsTimeMachineConnectionConfiguration")}];
        }

        if ([v29 sceneClassifierConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "sceneClassifierConnectionConfiguration")}];
        }

        if ([v29 sensitiveContentAnalyzerConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "sensitiveContentAnalyzerConnectionConfiguration")}];
        }

        if ([v29 metadataObjectConnectionConfiguration])
        {
          [v31 addObject:{objc_msgSend(v29, "metadataObjectConnectionConfiguration")}];
        }

        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v154 = 0u;
        v32 = [v31 countByEnumeratingWithState:&v154 objects:v153 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v155;
          while (1)
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v155 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v154 + 1) + 8 * n);
              v38 = [v37 enabled];
              if ([objc_msgSend(v37 "sinkConfiguration")] == 14)
              {
                v39 = [objc_msgSend(v37 "sinkConfiguration")];
                if (v39 < 2)
                {
                  goto LABEL_63;
                }

                if (v39 != 4)
                {
                  if (v39 != 3)
                  {
                    goto LABEL_65;
                  }

LABEL_63:
                  [v37 enabled];
                  goto LABEL_65;
                }

                [objc_msgSend(v30 "sensitiveContentAnalyzerSinkOutput")];
              }

LABEL_65:
              v34 |= v38;
            }

            v33 = [v31 countByEnumeratingWithState:&v154 objects:v153 count:16];
            if (!v33)
            {
              v40 = v34 ^ 1;
              goto LABEL_69;
            }
          }
        }

        v40 = 1;
LABEL_69:
        [v30 setDiscardsSampleData:v40 & 1];
        v41 = [v29 videoPreviewSinkConnectionConfiguration];
        v4 = v112;
        if (v41)
        {
          v42 = v41;
          v43 = [v41 enabled];
          if (v109)
          {
            v44 = 1;
          }

          else
          {
            v44 = v43;
          }

          [v30 setDiscardsImageQueueSampleData:v44 ^ 1u];
          [v30 setPreviewSinkEnabled:{objc_msgSend(v42, "enabled")}];
          [v30 setPreviewTapRegistered:v109 != 0];
        }
      }

      v110 = [obj countByEnumeratingWithState:&v159 objects:v158 count:16];
    }

    while (v110);
  }

  v152 = 0u;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v45 = [v106 parsedMetadataSinkConfigurations];
  v46 = [v45 countByEnumeratingWithState:&v149 objects:v148 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v150;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v150 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v149 + 1) + 8 * ii) metadataObjectConnectionConfiguration];
        v51 = [v4 metadataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(v50, "sinkConfiguration"), "sinkID")}];
        if (FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v50))
        {
          -[FigCaptureMetadataSinkPipeline setDiscardsMRCSampleData:](v51, [v50 enabled] ^ 1);
        }

        if (FigCaptureMetadataObjectConfigurationRequiresFaceDetection(v50))
        {
          -[FigCaptureMetadataSinkPipeline setDiscardsFaceDetectionSampleData:](v51, [v50 enabled] ^ 1);
        }

        if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v50))
        {
          -[FigCaptureMetadataSinkPipeline setDiscardsFaceTrackingSampleData:](v51, [v50 enabled] ^ 1);
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v149 objects:v148 count:16];
    }

    while (v47);
  }

  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v52 = [v106 videoThumbnailSinkConfigurations];
  v53 = [v52 countByEnumeratingWithState:&v144 objects:v143 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v145;
    do
    {
      for (jj = 0; jj != v54; ++jj)
      {
        if (*v145 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [objc_msgSend(v4 videoThumbnailSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v144 + 1) + 8 * jj), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v144 + 1) + 8 * jj), "enabled") ^ 1}];
      }

      v54 = [v52 countByEnumeratingWithState:&v144 objects:v143 count:16];
    }

    while (v54);
  }

  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v57 = [v106 parsedVisionDataSinkConfigurations];
  v58 = [v57 countByEnumeratingWithState:&v139 objects:v138 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v140;
    do
    {
      for (kk = 0; kk != v59; ++kk)
      {
        if (*v140 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [objc_msgSend(v4 visionDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v139 + 1) + 8 * kk), "visionDataConnectionConfiguration"), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(objc_msgSend(*(*(&v139 + 1) + 8 * kk), "visionDataConnectionConfiguration"), "enabled") ^ 1}];
      }

      v59 = [v57 countByEnumeratingWithState:&v139 objects:v138 count:16];
    }

    while (v59);
  }

  v137 = 0u;
  v136 = 0u;
  v134 = 0u;
  v135 = 0u;
  v62 = [v106 pointCloudDataSinkConnectionConfigurations];
  v63 = [v62 countByEnumeratingWithState:&v134 objects:v133 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v135;
    do
    {
      for (mm = 0; mm != v64; ++mm)
      {
        if (*v135 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [objc_msgSend(v4 pointCloudDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v134 + 1) + 8 * mm), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v134 + 1) + 8 * mm), "enabled") ^ 1}];
      }

      v64 = [v62 countByEnumeratingWithState:&v134 objects:v133 count:16];
    }

    while (v64);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v67 = [v106 cameraCalibrationDataSinkConnectionConfigurations];
  v68 = [v67 countByEnumeratingWithState:&v129 objects:v128 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v130;
    do
    {
      for (nn = 0; nn != v69; ++nn)
      {
        if (*v130 != v70)
        {
          objc_enumerationMutation(v67);
        }

        [objc_msgSend(v4 cameraCalibrationDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(*(*(&v129 + 1) + 8 * nn), "sinkConfiguration"), "sinkID")), "setDiscardsSampleData:", objc_msgSend(*(*(&v129 + 1) + 8 * nn), "enabled") ^ 1}];
      }

      v69 = [v67 countByEnumeratingWithState:&v129 objects:v128 count:16];
    }

    while (v69);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v102 = [v106 parsedCameraSourceConfigurations];
  result = [v102 countByEnumeratingWithState:&v124 objects:v123 count:16];
  v108 = result;
  if (result)
  {
    v73 = *v125;
    v101 = *v125;
    do
    {
      v74 = 0;
      do
      {
        if (*v125 != v73)
        {
          objc_enumerationMutation(v102);
        }

        v111 = v74;
        v75 = *(*(&v124 + 1) + 8 * v74);
        v76 = [v4 cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v75, "cameraConfiguration"), "sourceID")}];
        if ([v106 isMultiCamSession])
        {
          v77 = [MEMORY[0x1E695DF70] array];
          if ([v75 videoPreviewSinkConnectionConfiguration])
          {
            [v77 addObject:{objc_msgSend(v75, "videoPreviewSinkConnectionConfiguration")}];
          }

          if ([v75 previewDerivedConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "previewDerivedConnectionConfigurations")}];
          }

          if ([v75 videoCaptureConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "videoCaptureConnectionConfigurations")}];
          }

          if ([v75 videoDataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "videoDataConnectionConfigurations")}];
          }

          if ([v75 stillImageConnectionConfiguration])
          {
            [v77 addObject:{objc_msgSend(v75, "stillImageConnectionConfiguration")}];
          }

          if ([v75 depthDataConnectionConfiguration])
          {
            [v77 addObject:{objc_msgSend(v75, "depthDataConnectionConfiguration")}];
          }

          if ([v75 visionDataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "visionDataConnectionConfigurations")}];
          }

          if ([v75 metadataObjectConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "metadataObjectConnectionConfigurations")}];
          }

          if ([v75 movieFileDetectedObjectMetadataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "movieFileDetectedObjectMetadataConnectionConfigurations")}];
          }

          obja = v76;
          if ([v75 cameraCalibrationDataConnectionConfigurations])
          {
            [v77 addObjectsFromArray:{objc_msgSend(v75, "cameraCalibrationDataConnectionConfigurations")}];
          }

          v78 = [MEMORY[0x1E695DF90] dictionary];
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v79 = [v77 countByEnumeratingWithState:&v119 objects:v118 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v120;
            do
            {
              for (i1 = 0; i1 != v80; ++i1)
              {
                if (*v120 != v81)
                {
                  objc_enumerationMutation(v77);
                }

                v83 = *(*(&v119 + 1) + 8 * i1);
                if ([objc_msgSend(v83 "sinkConfiguration")] != 14)
                {
                  v84 = [v83 underlyingDeviceType];
                  if ([v78 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v84)}])
                  {
                    v85 = [objc_msgSend(v78 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v84)), "BOOLValue"}];
                  }

                  else
                  {
                    v85 = 1;
                  }

                  v86 = [v83 enabled];
                  v87 = [MEMORY[0x1E696AD98] numberWithBool:(v86 ^ 1) & v85];
                  [v78 setObject:v87 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v84)}];
                }
              }

              v80 = [v77 countByEnumeratingWithState:&v119 objects:v118 count:16];
            }

            while (v80);
          }

          [FigCaptureCameraSourcePipeline setStreamsSuspendedBySourceDeviceType:?];
          v4 = v112;
          v73 = v101;
        }

        v88 = [*(v105 + 776) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v75, "cameraConfiguration"), "sourceID")}];
        if (v88)
        {
          v89 = *(v88 + 16);
        }

        else
        {
          v89 = 0;
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v90 = [v75 visionDataConnectionConfigurations];
        v91 = [v90 countByEnumeratingWithState:&v114 objects:v113 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v115;
          do
          {
            for (i2 = 0; i2 != v92; ++i2)
            {
              if (*v115 != v93)
              {
                objc_enumerationMutation(v90);
              }

              v95 = *(*(&v114 + 1) + 8 * i2);
              v96 = [v89 captureStream];
              if ([v89 isBravoVariant])
              {
                v97 = [v95 underlyingDeviceType];
                if (v97 == 3)
                {
                  v98 = [v89 bravoTelephotoCaptureStream];
                }

                else
                {
                  if (v97 != 7)
                  {
                    goto LABEL_169;
                  }

                  v98 = [v89 bravoSuperWideCaptureStream];
                }

                v96 = v98;
              }

LABEL_169:
              [v96 setVisionDataSuspended:{objc_msgSend(v95, "enabled") ^ 1}];
            }

            v92 = [v90 countByEnumeratingWithState:&v114 objects:v113 count:16];
          }

          while (v92);
        }

        [v89 setZoomPIPSuspended:v109 != 0];
        v74 = v111 + 1;
      }

      while (v111 + 1 != v108);
      result = [v102 countByEnumeratingWithState:&v124 objects:v123 count:16];
      v108 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresFaceDetection(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E6960388];

  return [v1 containsObject:v2];
}

void captureSession_buildGraphDidBecomeLiveObserver(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = [MEMORY[0x1E695DF70] array];
  v52 = DerivedStorage;
  v5 = *(DerivedStorage + 784);
  v51 = [v5 micSourcePipeline] && !objc_msgSend(objc_msgSend(v5, "cameraSourcePipelines"), "count") && objc_msgSend(objc_msgSend(v5, "metadataSourcePipelines"), "count") == 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = v5;
  v7 = [v5 previewSinkPipelines];
  v8 = [v7 countByEnumeratingWithState:&v77 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v49 = 0;
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        if ([v12 imageQueueSinkNode])
        {
          v13 = [v6 cameraSourcePipelineWithSourceID:{objc_msgSend(v12, "sourceID")}];
          v14 = [v12 depthFilterRenderingEnabled];
          if ([objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v13) "captureStreams")] > 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          a2 |= v15;
          if ((a2 & 1) != 0 && [v12 previewSinkEnabled] && (!objc_msgSend(*(v52 + 752), "deferredNodePrepareSupported") || objc_msgSend(objc_msgSend(*(v52 + 752), "deferredPreparePrioritySinks"), "containsObject:", objc_msgSend(v12, "imageQueueSinkNode"))))
          {
            v16 = v49;
            if (!v49)
            {
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v49 = v16;
            [v16 addObject:v12];
          }

          [v4 addObject:{objc_msgSend(v12, "imageQueueSinkNode")}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v77 objects:v76 count:16];
    }

    while (v9);
  }

  else
  {
    v49 = 0;
  }

  v17 = v49;
  if ([v49 count])
  {
    os_unfair_lock_lock((v52 + 384));
    *(v52 + 528) = v49;
    os_unfair_lock_unlock((v52 + 384));
    v18 = 0;
    goto LABEL_58;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v19 = [v48 previewSinkPipelines];
  v20 = [v19 countByEnumeratingWithState:&v72 objects:v71 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v73;
LABEL_30:
    v23 = 0;
    while (1)
    {
      if (*v73 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v72 + 1) + 8 * v23);
      if ([v24 imageQueueSinkNode])
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v72 objects:v71 count:16];
        if (v21)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    v25 = [v24 imageQueueSinkNode];
    if (v25)
    {
      goto LABEL_57;
    }
  }

LABEL_38:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v26 = v48;
  v27 = [v48 videoDataSinkPipelines];
  v28 = [v27 countByEnumeratingWithState:&v67 objects:v66 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v68;
    while (2)
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v68 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v67 + 1) + 8 * j);
        if ([v32 sinkNode])
        {
          v18 = [v32 sinkNode];
          goto LABEL_48;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_48:
    v26 = v48;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v33 = 1;
  }

  else
  {
    v33 = !v51;
  }

  if (!v33)
  {
    v18 = [objc_msgSend(objc_msgSend(v26 "audioDataSinkPipelines")];
  }

  v17 = v49;
  if (!v18)
  {
    v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v48 "stillImageSinkPipelineSessionStorages")];
    if (v25)
    {
LABEL_57:
      v18 = v25;
      v17 = v49;
      goto LABEL_58;
    }

    v18 = [-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](objc_msgSend(objc_msgSend(v48 "movieFileSinkPipelines")];
    if (!v18 && v51)
    {
      v18 = -[FigCaptureAudioFileSinkPipeline audioFileSinkNode]([objc_msgSend(v48 "audioFileSinkPipelines")]);
    }

    v17 = v49;
    if (!v18)
    {
      v25 = [objc_msgSend(objc_msgSend(v48 "metadataSinkPipelines")];
      if (!v25)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v42 = [v48 depthDataSinkPipelines];
        v43 = [v42 countByEnumeratingWithState:&v62 objects:v61 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v63;
LABEL_88:
          v46 = 0;
          while (1)
          {
            if (*v63 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v62 + 1) + 8 * v46);
            if ([v47 sinkNode])
            {
              break;
            }

            if (v44 == ++v46)
            {
              v44 = [v42 countByEnumeratingWithState:&v62 objects:v61 count:16];
              if (v44)
              {
                goto LABEL_88;
              }

              goto LABEL_96;
            }
          }

          v25 = [v47 sinkNode];
          if (v25)
          {
            goto LABEL_57;
          }
        }

LABEL_96:
        v25 = [objc_msgSend(objc_msgSend(v48 "visionDataSinkPipelines")];
        if (!v25)
        {
          v25 = [objc_msgSend(objc_msgSend(v48 "pointCloudDataSinkPipelines")];
          if (!v25)
          {
            v25 = [objc_msgSend(objc_msgSend(v48 "cameraCalibrationDataSinkPipelines")];
          }
        }
      }

      goto LABEL_57;
    }
  }

LABEL_58:
  if ([v17 count] || v18)
  {
    if (v18 && ([v4 containsObject:v18] & 1) == 0)
    {
      [v4 addObject:v18];
    }

    *(v52 + 800) = 0;
    *(v52 + 792) = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = [v4 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v58;
      do
      {
        v38 = v4;
        for (k = 0; k != v35; ++k)
        {
          if (*v58 != v37)
          {
            objc_enumerationMutation(v38);
          }

          v40 = *(*(&v57 + 1) + 8 * k);
          v41 = [[FigBWNodeRenderObserver alloc] initWithBWNode:v40];
          [(FigBWNodeRenderObserver *)v41 setWillRenderSampleBufferHandler:0];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __captureSession_buildGraphDidBecomeLiveObserver_block_invoke;
          v53[3] = &__block_descriptor_50_e37_v32__0__BWFormat_8__BWNodeInput_16q24l;
          v54 = v51;
          v53[4] = v52;
          v53[5] = a1;
          v55 = v40 == v18;
          [(FigBWNodeRenderObserver *)v41 setFormatDidBecomeLiveHandler:v53];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v36)
            {
              v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v36 addObject:v41];
          }

          if (v40 == v18)
          {
            *(v52 + 792) = v41;
          }

          else
          {
          }
        }

        v4 = v38;
        v35 = [v38 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    *(v52 + 800) = v36;
  }
}

uint64_t captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_15;
  }

  v5 = DerivedStorage;
  if (*DerivedStorage)
  {
    goto LABEL_15;
  }

  result = FigCaptureAudiomxdSupportEnabled();
  if (result)
  {
    result = cs_configurationUsesSourceType(a2, 2);
    if (result)
    {
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      if (!v5[44] && !v5[45])
      {
        v7 = [v5[113] objectForKeyedSubscript:0x1F21702D0];
        if (v7)
        {
          result = [objc_msgSend(v7 "supportedProperties")];
          if (!result)
          {
            return result;
          }

          v8 = [FigWeakReference weakReferenceToObject:a1];
          v9 = [MEMORY[0x1E69AED10] sharedInstance];
          v10 = MEMORY[0x1E69AECC8];
          v19 = *MEMORY[0x1E69AECC8];
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
          [v9 setAttribute:v11 forKey:*MEMORY[0x1E69AECD8] error:0];
          v12 = [MEMORY[0x1E696AD88] defaultCenter];
          v13 = *v10;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke;
          v18[3] = &unk_1E798FC90;
          v18[4] = v8;
          v14 = [v12 addObserverForName:v13 object:v9 queue:0 usingBlock:v18];
          if (v14)
          {
            v5[44] = v14;
            v15 = [MEMORY[0x1E696AD88] defaultCenter];
            v16 = *MEMORY[0x1E698D6D0];
            [MEMORY[0x1E698D710] sharedInstance];
            OUTLINED_FUNCTION_8_7();
            v17 = [v15 addObserverForName:v16 object:? queue:? usingBlock:?];
            if (v17)
            {
              v5[45] = v17;
              return captureSession_handlePlaybackOrRouteStateChange();
            }
          }

          OUTLINED_FUNCTION_0();
          return FigDebugAssert3();
        }
      }

LABEL_15:
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }
  }

  return result;
}

uint64_t captureSession_handlePlaybackOrRouteStateChange()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return captureSession_handlePlaybackOrRouteStateChange_cold_4();
  }

  v1 = DerivedStorage;
  if (*DerivedStorage)
  {
    return captureSession_handlePlaybackOrRouteStateChange_cold_4();
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_handlePlaybackOrRouteStateChange_cold_1();
  }

  v2 = [v1[113] objectForKeyedSubscript:0x1F21702D0];
  if (!v2)
  {
    return captureSession_handlePlaybackOrRouteStateChange_cold_3();
  }

  result = [v2 setProperty:*off_1E7989FB8 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", cs_audioIsPlayingToBuiltInSpeaker(objc_msgSend(MEMORY[0x1E698D710], "sharedInstance"), 0))}];
  if (result)
  {
    return captureSession_handlePlaybackOrRouteStateChange_cold_2();
  }

  if (dword_1ED844050)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void *cs_audioIsPlayingToBuiltInSpeaker(void *a1, _DWORD *a2)
{
  result = [a1 isOtherAudioPlaying];
  if (result)
  {
    result = [a1 currentRoute];
    if (result)
    {
      v5 = [result outputs];
      memset(v13, 0, sizeof(v13));
      result = [v5 countByEnumeratingWithState:v13 objects:v12 count:16];
      if (result)
      {
        v6 = result;
        v7 = *MEMORY[0x1E698D680];
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            OUTLINED_FUNCTION_49_7();
            if (!v9)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v13[0] + 1) + 8 * i) portType];
            if (v10 == v7)
            {
              return cs_isOtherAppExcludingWhitelistedAppsPlayingAudio(a2);
            }
          }

          v6 = OUTLINED_FUNCTION_37(v10, v11, v13, v12);
          result = 0;
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

uint64_t nc_addRequirementsForInputToMutableArray(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = [objc_msgSend(a1 mediaConfigurationForAttachedMediaKey:{a2), "formatRequirements"}];
  v27 = a5;
  v28 = a6;
  nc_addFormatRequirementsFromInputWithAttachedMediaKey(a1, a2, a3, a4, a5, a6);
  v26 = a2;
  result = [a1 _passthroughModeForAttachedMediaKey:a2];
  v25 = result;
  if (result)
  {
    v14 = [a1 mediaType];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [objc_msgSend(a1 "node")];
    result = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (result)
    {
      v16 = result;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          if ([v19 mediaType] == v14)
          {
            v20 = [v19 attachedMediaKeyDrivenByInputAttachedMediaKey:v26 inputIndex:{objc_msgSend(a1, "index")}];
            if (v20)
            {
              v21 = v20;
              v22 = [v19 _passthroughModeForAttachedMediaKey:v20];
              if (v22 != v25)
              {
                v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input %@[%@] and output %@[%@] passthrough modes don't match: %d vs. %d", a1, v26, v19, v21, v25, v22];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v24 userInfo:0]);
              }

              nc_addFormatRequirementsFromOutputWithAttachedMediaKey(v19, v21, a3, a4);
              nc_addRequirementsForInputsDrivingOutputToMutableArray(v19, v21, a3, a4, a1, v27, v28);
              v23 = [objc_msgSend(v19 "connection")];
              if (v23)
              {
                nc_addRequirementsForInputToMutableArray(v23, v21, a3, a4, v27, v28);
              }
            }
          }

          ++v18;
        }

        while (v16 != v18);
        result = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
        v16 = result;
      }

      while (result);
    }
  }

  else if (!v12)
  {

    return [a2 isEqualToString:@"PrimaryFormat"];
  }

  return result;
}

uint64_t nc_addFormatRequirementsFromInputWithAttachedMediaKey(void *a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t *a6)
{
  v12 = [a1 mediaConfigurationForAttachedMediaKey:a2];
  result = [v12 formatRequirements];
  if (result)
  {
    v14 = result;
    result = [result isEmpty];
    if ((result & 1) == 0)
    {
      result = [a3 containsObject:v14];
      if ((result & 1) == 0)
      {
        if (a4)
        {
          [a3 addObject:a1];
        }

        result = [a3 addObject:v14];
      }

      if (a5)
      {
        if (!*a5)
        {
          result = [v12 conversionToPassthroughModeNeverAllowed];
          if (result)
          {
            result = [v12 passthroughMode];
            if (result)
            {
              *a5 = a1;
              *a6 = a2;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t nc_addFormatRequirementsFromOutputWithAttachedMediaKey(void *a1, uint64_t a2, void *a3, int a4)
{
  result = [objc_msgSend(a1 mediaConfigurationForAttachedMediaKey:{a2), "formatRequirements"}];
  if (result)
  {
    v8 = result;
    result = [result isEmpty];
    if ((result & 1) == 0)
    {
      result = [a3 containsObject:v8];
      if ((result & 1) == 0)
      {
        if (a4)
        {
          [a3 addObject:a1];
        }

        return [a3 addObject:v8];
      }
    }
  }

  return result;
}

uint64_t nc_addRequirementsForInputsDrivingOutputToMutableArray(void *a1, void *a2, void *a3, int a4, void *a5, void *a6, uint64_t *a7)
{
  v11 = [a1 node];
  v27 = a3;
  v28 = a4;
  nc_addFormatRequirementsFromOutputWithAttachedMediaKey(a1, a2, a3, a4);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v11 inputs];
  result = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
  v25 = result;
  if (result)
  {
    v23 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v13;
        v14 = *(*(&v37 + 1) + 8 * v13);
        if (v14 != a5)
        {
          v15 = [MEMORY[0x1E695DF70] arrayWithObject:@"PrimaryFormat"];
          [v15 addObjectsFromArray:{objc_msgSend(v14, "specifiedAttachedMediaKeys")}];
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = v15;
          v17 = [v15 countByEnumeratingWithState:&v32 objects:v31 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v32 + 1) + 8 * i);
                if ([v14 _passthroughModeForAttachedMediaKey:v21])
                {
                  if ([a2 isEqualToString:{objc_msgSend(a1, "attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:", v21, objc_msgSend(v14, "index"))}])
                  {
                    nc_addFormatRequirementsFromInputWithAttachedMediaKey(v14, v21, v27, v28, a6, a7);
                    nc_addRequirementsForInputsDrivingOutputToMutableArray([objc_msgSend(v14 "connection")], a2, v27, v28, 0, a6, a7);
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v31 count:16];
            }

            while (v18);
          }
        }

        v13 = v26 + 1;
      }

      while (v26 + 1 != v25);
      result = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
      v25 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigCapturePixelFormatWithLeastAverageBandwidth(void *a1)
{
  v1 = [objc_msgSend(a1 sortedArrayUsingComparator:{&__block_literal_global_132), "firstObject"}];

  return [v1 unsignedIntValue];
}

uint64_t __FigCapturePixelFormatWithLeastAverageBandwidth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  AverageBandwidthInBytesPerPixel = FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel([a2 intValue]);
  v5 = FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel([a3 intValue]);
  if (AverageBandwidthInBytesPerPixel < v5)
  {
    return -1;
  }

  else
  {
    return v5 < AverageBandwidthInBytesPerPixel;
  }
}

float FigCapturePixelFormatGetAverageBandwidthInBytesPerPixel(uint64_t a1)
{
  v2 = FigCapturePixelFormatBytesPerPixel(a1);
  CompressionType = FigCapturePixelFormatGetCompressionType(a1);
  if ((CompressionType - 1) < 3)
  {
    return v2 * 0.5;
  }

  if (CompressionType == 4)
  {
    LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(a1);
    if (LossyCompressionLevel)
    {
      v5 = LossyCompressionLevel;
      v6 = FigCapturePixelFormatLosslessCompressedFormatForLossyCompressedFormat(a1);
      v2 = FigCapturePixelFormatBytesPerPixel(v6);
      if (v5 == 1)
      {
        v7 = 2.1;
      }

      else if (v5 == 3)
      {
        v7 = 2.3;
      }

      else
      {
        v7 = 2.2;
      }
    }

    else
    {
      v7 = 2.0;
    }

    return v2 / v7;
  }

  return v2;
}

float FigCapturePixelFormatBytesPerPixel(uint64_t a1)
{
  v1 = a1;
  LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(a1);
  if (!LossyCompressionLevel)
  {
    v6 = 1.0;
    goto LABEL_12;
  }

  v4 = LossyCompressionLevel;
  if (v1 > 792872768)
  {
    if (v1 == 792872769 || v1 == 2084718401)
    {
      goto LABEL_10;
    }

    v5 = 1111970369;
LABEL_9:
    if (v1 == v5)
    {
      goto LABEL_10;
    }

    IsTenBit = FigCapturePixelFormatIsTenBit(v1);
    v12 = 0.625;
    if (v1 > 1751527983)
    {
      if (v1 != 1751527984)
      {
        v13 = 2087216688;
LABEL_93:
        if (v1 != v13)
        {
          v12 = 0.75;
        }
      }
    }

    else if (v1 != 761816624)
    {
      v13 = 795371056;
      goto LABEL_93;
    }

    v16 = FigCapturePixelFormatIs422(v1);
    v17 = 0.5;
    v18 = 1.0;
    if (!v16)
    {
      v18 = 0.5;
    }

    if (v4 == 3)
    {
      v19 = 0.6;
      if (!IsTenBit)
      {
        v19 = 0.5;
      }
    }

    else if (v4 == 2)
    {
      v19 = 0.6;
      v17 = 0.625;
      if (IsTenBit)
      {
        v17 = 0.6;
      }

      else
      {
        v19 = v12;
      }
    }

    else
    {
      v17 = 0.8;
      if (!IsTenBit)
      {
        v17 = 0.75;
      }

      v19 = v17;
    }

    v6 = (v17 + (v18 * v19)) / (v18 + 1.0);
    goto LABEL_11;
  }

  if (v1 != 641877825)
  {
    v5 = 759318337;
    goto LABEL_9;
  }

LABEL_10:
  v6 = flt_1AD056E28[LossyCompressionLevel - 1];
LABEL_11:
  LODWORD(v1) = FigCapturePixelFormatLosslessCompressedFormatForLossyCompressedFormat(v1);
LABEL_12:
  LODWORD(v3) = 4.0;
  if (v1 <= 1652056887)
  {
    if (v1 > 1278226735)
    {
      if (v1 > 1650946097)
      {
        if (v1 > 1651798065)
        {
          if (v1 <= 1651925815)
          {
            if (v1 == 1651798066)
            {
              goto LABEL_151;
            }

            v8 = 1651847472;
            goto LABEL_150;
          }

          if (v1 != 1651925816)
          {
            if (v1 == 1651926376)
            {
              goto LABEL_151;
            }

            v8 = 1651927153;
            goto LABEL_150;
          }

          goto LABEL_121;
        }

        if (v1 > 1651519797)
        {
          if (v1 != 1651519798)
          {
            if (v1 == 1651587122)
            {
              LODWORD(v3) = 1.25;
              return v6 * *&v3;
            }

            goto LABEL_164;
          }
        }

        else if (v1 != 1650946098)
        {
          if (v1 == 1651519537)
          {
            LODWORD(v3) = 0.5;
            return v6 * *&v3;
          }

          goto LABEL_164;
        }
      }

      else if (v1 <= 1534617135)
      {
        if (v1 > 1530422831)
        {
          if (v1 == 1530422832)
          {
            goto LABEL_147;
          }

          v14 = 1530426928;
          goto LABEL_146;
        }

        if (v1 != 1278226736)
        {
          v9 = 12598;
LABEL_70:
          v8 = v9 | 0x4C300000;
          goto LABEL_150;
        }
      }

      else
      {
        if (v1 <= 1647392368)
        {
          if (v1 == 1534617136)
          {
LABEL_159:
            LODWORD(v3) = 1.875;
            return v6 * *&v3;
          }

          v22 = 1534621232;
          goto LABEL_158;
        }

        if (v1 != 1647392369 && v1 != 1647719528)
        {
          v8 = 1650943796;
          goto LABEL_150;
        }
      }
    }

    else
    {
      if (v1 <= 825306676)
      {
        if (v1 > 645424689)
        {
          if (v1 > 645428785)
          {
            if (v1 != 645428786)
            {
              if (v1 == 759318337)
              {
                return v6 * *&v3;
              }

              v7 = 792872769;
              goto LABEL_154;
            }

LABEL_131:
            LODWORD(v3) = 2.5;
            return v6 * *&v3;
          }

          if (v1 == 645424690)
          {
            goto LABEL_131;
          }

          v20 = 30256;
          goto LABEL_157;
        }

        if (v1 > 641877824)
        {
          if (v1 == 641877825)
          {
            return v6 * *&v3;
          }

          v20 = 26160;
LABEL_157:
          v22 = v20 | 0x26780000;
LABEL_158:
          if (v1 == v22)
          {
            goto LABEL_159;
          }

LABEL_164:
          v24 = MEMORY[0x1E695DF30];
          v25 = *MEMORY[0x1E695D930];
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown pixel format (%c%c%c%c)", v3, BYTE3(v1), BYTE2(v1), BYTE1(v1), v1];
LABEL_163:
          objc_exception_throw([v24 exceptionWithName:v25 reason:v26 userInfo:0]);
        }

        if (v1 == 641230384)
        {
LABEL_147:
          LODWORD(v3) = 1.5;
          return v6 * *&v3;
        }

        v14 = 641234480;
LABEL_146:
        if (v1 != v14)
        {
          goto LABEL_164;
        }

        goto LABEL_147;
      }

      if (v1 > 1111970368)
      {
        if (v1 <= 1278226487)
        {
          if (v1 == 1111970369)
          {
            return v6 * *&v3;
          }

          if (v1 == 1278226481)
          {
            LODWORD(v3) = 0.125;
            return v6 * *&v3;
          }

          goto LABEL_164;
        }

        if (v1 != 1278226488)
        {
          if (v1 == 1278226534)
          {
            return v6 * *&v3;
          }

          v9 = 12392;
          goto LABEL_70;
        }

        goto LABEL_121;
      }

      if (v1 > 875704421)
      {
        if (v1 == 875704422)
        {
          goto LABEL_147;
        }

        v14 = 875704438;
        goto LABEL_146;
      }

      if (v1 != 825306677)
      {
        v8 = 825437747;
        goto LABEL_150;
      }
    }

LABEL_151:
    LODWORD(v3) = 2.0;
    return v6 * *&v3;
  }

  if (v1 > 1882468911)
  {
    if (v1 <= 2019963441)
    {
      if (v1 <= 1919379251)
      {
        if (v1 > 1885745711)
        {
          if (v1 == 1885745712)
          {
            goto LABEL_151;
          }

          v15 = 1885745714;
        }

        else
        {
          if (v1 == 1882468912)
          {
            goto LABEL_151;
          }

          v15 = 1882468914;
        }

        if (v1 == v15)
        {
          LODWORD(v3) = 1076552008;
          return v6 * *&v3;
        }

        goto LABEL_164;
      }

      if (v1 <= 2016686639)
      {
        if (v1 == 1919379252)
        {
          goto LABEL_151;
        }

        v8 = 1932996149;
        goto LABEL_150;
      }

      if (v1 != 2016686640)
      {
        if (v1 == 2016686642)
        {
          return v6 * *&v3;
        }

        if (v1 != 2019963440)
        {
          goto LABEL_164;
        }
      }

LABEL_60:
      LODWORD(v3) = 3.0;
      return v6 * *&v3;
    }

    if (v1 > 2084718400)
    {
      if (v1 <= 2100852271)
      {
        if (v1 == 2084718401)
        {
          return v6 * *&v3;
        }

        v10 = 26160;
      }

      else
      {
        if (v1 == 2105046576 || v1 == 2105042480)
        {
          goto LABEL_159;
        }

        v10 = 30256;
      }

      v14 = v10 | 0x7D380000;
      goto LABEL_146;
    }

    if (v1 <= 2037741157)
    {
      if (v1 == 2019963442)
      {
        return v6 * *&v3;
      }

      v14 = 2033463856;
      goto LABEL_146;
    }

    if (v1 == 2037741158)
    {
      goto LABEL_151;
    }

    v8 = 2037741171;
    goto LABEL_150;
  }

  if (v1 > 1714696751)
  {
    if (v1 > 1735549491)
    {
      if (v1 <= 1751411058)
      {
        if (v1 == 1735549492)
        {
          goto LABEL_151;
        }

        v21 = 25968;
      }

      else
      {
        if (v1 > 1751527983)
        {
          if (v1 != 1751527984)
          {
            if (v1 == 1785950307 || v1 == 1785950320)
            {
              v24 = MEMORY[0x1E695DF30];
              v25 = *MEMORY[0x1E695D930];
              v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This function does not support point cloud formats (%c%c%c%c)", v3, BYTE3(v1), BYTE2(v1), BYTE1(v1), v1];
              goto LABEL_163;
            }

            goto LABEL_164;
          }

          goto LABEL_60;
        }

        v21 = 26995;
      }

      v8 = v21 | 0x68640000;
LABEL_150:
      if (v1 != v8)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    }

    if (v1 > 1717856626)
    {
      if (v1 == 1717856627)
      {
        return v6 * *&v3;
      }

      v8 = 1734505012;
      goto LABEL_150;
    }

    if (v1 == 1714696752)
    {
      goto LABEL_147;
    }

    v7 = 1717855600;
  }

  else
  {
    if (v1 > 1701734002)
    {
      if (v1 > 1701734514)
      {
        if (v1 != 1701734515)
        {
          if (v1 != 1701738598 && v1 != 1701738614)
          {
            goto LABEL_164;
          }

          LODWORD(v3) = 1067030938;
          return v6 * *&v3;
        }

        goto LABEL_151;
      }

      if (v1 == 1701734003)
      {
        return v6 * *&v3;
      }

      v8 = 1701734512;
      goto LABEL_150;
    }

    if (v1 <= 1701722229)
    {
      if (v1 != 1652056888 && v1 != 1701722214)
      {
        goto LABEL_164;
      }

      goto LABEL_121;
    }

    if (v1 == 1701722230)
    {
LABEL_121:
      LODWORD(v3) = 1.0;
      return v6 * *&v3;
    }

    v7 = 1701734000;
  }

LABEL_154:
  if (v1 != v7)
  {
    goto LABEL_164;
  }

  return v6 * *&v3;
}

uint64_t FigCapturePixelFormatLosslessCompressedFormatForLossyCompressedFormat(uint64_t a1)
{
  v1 = 641234480;
  if (a1 > 796419631)
  {
    if (a1 > 2084718400)
    {
      if (a1 > 2088265265)
      {
        if (a1 != 2088265266)
        {
          if (a1 == 2088269360)
          {
            return 645428784;
          }

          if (a1 == 2088269362)
          {
LABEL_39:
            v2 = 30258;
            return v2 | 0x26780000u;
          }

          return a1;
        }

        return 645424690;
      }

      if (a1 == 2084718401)
      {
        return 641877825;
      }

      if (a1 == 2087216688)
      {
        return 1751527984;
      }

      if (a1 != 2088265264)
      {
        return a1;
      }
    }

    else
    {
      if (a1 > 796423729)
      {
        if (a1 != 796423730)
        {
          if (a1 != 2084070960)
          {
            if (a1 != 2084075056)
            {
              return a1;
            }

            return v1;
          }

          return 641230384;
        }

        goto LABEL_39;
      }

      if (a1 != 796419632)
      {
        if (a1 != 796419634)
        {
          if (a1 != 796423728)
          {
            return a1;
          }

          return 645428784;
        }

        return 645424690;
      }
    }

LABEL_40:
    v2 = 26160;
    return v2 | 0x26780000u;
  }

  if (a1 > 762869295)
  {
    if (a1 <= 792229423)
    {
      if (a1 != 762869296)
      {
        if (a1 != 762869298)
        {
          if (a1 != 792225328)
          {
            return a1;
          }

          return 641230384;
        }

        goto LABEL_39;
      }

      return 645428784;
    }

    if (a1 == 792229424)
    {
      return v1;
    }

    if (a1 != 792872769)
    {
      if (a1 == 795371056)
      {
        return 1751527984;
      }

      return a1;
    }

    return 641877825;
  }

  if (a1 > 761816623)
  {
    if (a1 != 761816624)
    {
      if (a1 != 762865200)
      {
        if (a1 != 762865202)
        {
          return a1;
        }

        return 645424690;
      }

      goto LABEL_40;
    }

    return 1751527984;
  }

  if (a1 == 758670896)
  {
    return 641230384;
  }

  if (a1 != 758674992)
  {
    if (a1 != 759318337)
    {
      return a1;
    }

    return 641877825;
  }

  return v1;
}

uint64_t satisfiedVideoRequirementCheck(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isSatisfiedByRequirement:a2];
  }
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithInt:a2];
}

uint64_t OUTLINED_FUNCTION_141_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return [v47 countByEnumeratingWithState:v48 - 208 objects:&a47 count:16];
}

uint64_t FigCaptureVideoRangePixelFormatForPixelFormat(uint64_t result)
{
  if (result <= 1701738597)
  {
    if (result > 792225327)
    {
      if (result <= 875704421)
      {
        switch(result)
        {
          case 0x2F386630:
            return 792229424;
          case 0x2F786630:
            v3 = 792229424;
            return v3 | 0x400000u;
          case 0x2F786632:
            return 796423730;
        }
      }

      else if (result > 1534617135)
      {
        if (result == 1534617136)
        {
          v3 = 1530426928;
          return v3 | 0x400000u;
        }

        if (result == 1701722214)
        {
          return 1701722230;
        }
      }

      else if (result == 875704422)
      {
        return 875704438;
      }

      else if (result == 1530422832)
      {
        return 1530426928;
      }
    }

    else
    {
      if (result > 645424691)
      {
        if (result <= 762865199)
        {
          if (result == 645424692)
          {
            return 645428788;
          }

          if (result == 758670896)
          {
            return 758674992;
          }

          return result;
        }

        if (result != 762865200)
        {
          if (result == 762865202)
          {
            return 762869298;
          }

          return result;
        }

        v3 = 758674992;
        return v3 | 0x400000u;
      }

      switch(result)
      {
        case 0x26386630:
          return 641234480;
        case 0x26786630:
          v3 = 641234480;
          return v3 | 0x400000u;
        case 0x26786632:
          return 645428786;
      }
    }

    return result;
  }

  if (result <= 2019963955)
  {
    if (result <= 1885745713)
    {
      switch(result)
      {
        case 0x656E7866:
          return 1701738614;
        case 0x66343230:
          return 2033463856;
        case 0x70663230:
          return 1882468912;
      }

      return result;
    }

    if (result > 2019963439)
    {
      if (result == 2019963440)
      {
        return 2016686640;
      }

      if (result != 2019963442)
      {
        return result;
      }

      v2 = 2016686640;
    }

    else
    {
      if (result != 1885745714)
      {
        if (result != 1885746228)
        {
          return result;
        }

        v1 = 1882468912;
        return (v1 + 516);
      }

      v2 = 1882468912;
    }

    return v2 | 2u;
  }

  if (result <= 2088265263)
  {
    if (result != 2019963956)
    {
      if (result == 2037741158)
      {
        return 2037741171;
      }

      if (result == 2084070960)
      {
        return 2084075056;
      }

      return result;
    }

    v1 = 2016686640;
    return (v1 + 516);
  }

  if (result > 2100848175)
  {
    if (result == 2100848176)
    {
      return 2100852272;
    }

    if (result != 2105042480)
    {
      return result;
    }

    v3 = 2100852272;
    return v3 | 0x400000u;
  }

  if (result == 2088265264)
  {
    v3 = 2084075056;
    return v3 | 0x400000u;
  }

  if (result == 2088265266)
  {
    return 2088269362;
  }

  return result;
}

uint64_t FigCaptureFullRangePixelFormatForPixelFormat(uint64_t result)
{
  if (result <= 1701738613)
  {
    if (result > 792229423)
    {
      if (result <= 875704437)
      {
        switch(result)
        {
          case 0x2F387630:
            return 792225328;
          case 0x2F787630:
            v3 = 792225328;
            return v3 | 0x400000u;
          case 0x2F787632:
            return 796419634;
        }
      }

      else if (result > 1534621231)
      {
        if (result == 1534621232)
        {
          v3 = 1530422832;
          return v3 | 0x400000u;
        }

        if (result == 1701722230)
        {
          return 1701722214;
        }
      }

      else if (result == 875704438)
      {
        return 875704422;
      }

      else if (result == 1530426928)
      {
        return 1530422832;
      }
    }

    else
    {
      if (result > 645428787)
      {
        if (result <= 762869295)
        {
          if (result == 758674992)
          {
            return 758670896;
          }

          return result;
        }

        if (result != 762869296)
        {
          if (result == 762869298)
          {
            return 762865202;
          }

          return result;
        }

        v3 = 758670896;
        return v3 | 0x400000u;
      }

      switch(result)
      {
        case 0x26387630:
          return 641230384;
        case 0x26787630:
          v3 = 641230384;
          return v3 | 0x400000u;
        case 0x26787632:
          return 645424690;
      }
    }

    return result;
  }

  if (result <= 2033463855)
  {
    if (result <= 1882469427)
    {
      if (result == 1701738614)
      {
        return 1701738598;
      }

      if (result == 1882468912)
      {
        return 1885745712;
      }

      if (result != 1882468914)
      {
        return result;
      }

      v1 = 1885745712;
    }

    else
    {
      if (result <= 2016686641)
      {
        if (result != 1882469428)
        {
          if (result == 2016686640)
          {
            return 2019963440;
          }

          return result;
        }

        v2 = 1885745712;
        return (v2 + 516);
      }

      if (result != 2016686642)
      {
        if (result != 2016687156)
        {
          return result;
        }

        v2 = 2019963440;
        return (v2 + 516);
      }

      v1 = 2019963440;
    }

    return v1 | 2u;
  }

  if (result <= 2088269359)
  {
    switch(result)
    {
      case 0x79343230:
        return 1714696752;
      case 0x79757673:
        return 2037741158;
      case 0x7C387630:
        return 2084070960;
    }
  }

  else if (result > 2100852271)
  {
    if (result == 2100852272)
    {
      return 2100848176;
    }

    if (result == 2105046576)
    {
      v3 = 2100848176;
      return v3 | 0x400000u;
    }
  }

  else
  {
    if (result == 2088269360)
    {
      v3 = 2084070960;
      return v3 | 0x400000u;
    }

    if (result == 2088269362)
    {
      return 2088265266;
    }
  }

  return result;
}

unint64_t FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = a1 >> 32;
  v5 = FigCaptureUnityRect();
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v3, v4, v5, v6, v7, v8, a2);
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsNull(v12))
  {
    FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions_cold_1();
  }

  return width | (height << 32);
}

uint64_t FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  if (!a1)
  {
    return FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect_cold_4();
  }

  if (!a2)
  {
    return FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect_cold_3();
  }

  if (a7 >= 0.0 && a7 <= 0.0)
  {
    return FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect_cold_2();
  }

  result = FigCaptureMetadataUtilitiesDenormalizeCropRect(a3, a4, a5, a6);
  __asm { FMOV            V5.2D, #0.5 }

  return result;
}

id bwmia_mv2ipOutputMatteInferenceVideoFormat(void *a1, float a2, float a3)
{
  v5 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  v6 = [a1 width];
  v7 = [a1 height];
  LODWORD(a1) = v7;
  if (a3 != 0.0)
  {
    v9 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v6 | (v7 << 32), a3);
    v6 = v9;
    a1 = HIDWORD(v9);
  }

  [(BWVideoFormatRequirements *)v5 setWidth:(v6 / a2)];
  [(BWVideoFormatRequirements *)v5 setHeight:(a1 / a2)];
  [(BWVideoFormatRequirements *)v5 setSupportedPixelFormats:&unk_1F224A290];
  [(BWInferenceVideoFormatRequirements *)v5 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v5 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v5 setWidthAlignment:16];
  [(BWVideoFormatRequirements *)v5 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v5 setPlaneAlignment:64];
  [(BWVideoFormatRequirements *)v5 setMemoryPoolUseAllowed:0];
  v11 = v5;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
}

void *FigCaptureEncodedByteStreamFormatForPixelFormat(int a1)
{
  if (a1 > 1717855599)
  {
    if (a1 <= 1751410031)
    {
      if (a1 == 1717855600)
      {
        return &unk_1F2247338;
      }

      if (a1 == 1717856627)
      {
        return &unk_1F2247308;
      }
    }

    else
    {
      switch(a1)
      {
        case 1751410032:
          return &unk_1F2247320;
        case 1815491698:
          return &unk_1F2247368;
        case 1751411059:
          return &unk_1F22472F0;
      }
    }
  }

  else
  {
    result = 0;
    if (a1 <= 1701722229)
    {
      if (a1 == 1278226488)
      {
        return &unk_1F2247350;
      }

      v3 = 14438;
    }

    else
    {
      if (a1 == 1701722230 || a1 == 1701738598)
      {
        return result;
      }

      v3 = 30838;
    }

    if (a1 == (v3 | 0x656E0000))
    {
      return result;
    }
  }

  if (!FigCapturePixelFormatIsYCbCr(a1))
  {
    goto LABEL_29;
  }

  if (a1 <= 1751527983)
  {
    if (a1 != 761816624)
    {
      v4 = 795371056;
      goto LABEL_28;
    }

LABEL_29:
    if (a1 == 1651798066 || a1 == 1650946098)
    {
      return &unk_1F22473E0;
    }

    else
    {
      return 0;
    }
  }

  if (a1 == 1751527984)
  {
    goto LABEL_29;
  }

  v4 = 2087216688;
LABEL_28:
  if (a1 == v4)
  {
    goto LABEL_29;
  }

  IsTenBit = FigCapturePixelFormatIsTenBit(a1);
  IsFullRange = FigCapturePixelFormatIsFullRange(a1);
  if (IsTenBit)
  {
    v8 = &unk_1F2247398;
    v9 = &unk_1F2247380;
  }

  else
  {
    v8 = &unk_1F22473C8;
    v9 = &unk_1F22473B0;
  }

  if (IsFullRange)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

__CFData *FigLivePhotoMetadataCopySetupDataAddingDimensions(const __CFData *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (a1)
  {
    Length = CFDataGetLength(a1);
    MutableCopy = CFDataCreateMutableCopy(v3, Length + 16, a1);
  }

  else
  {
    MutableCopy = CFDataCreateMutable(*MEMORY[0x1E695E480], 16);
  }

  v7 = MutableCopy;
  if (MutableCopy)
  {
    *bytes = 0x736D696410000000;
    v9[0] = bswap32(a2);
    v9[1] = bswap32(HIDWORD(a2));
    CFDataAppendBytes(MutableCopy, bytes, 8);
    CFDataAppendBytes(v7, v9, 8);
  }

  return v7;
}

uint64_t gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay(void *a1, uint64_t a2, unsigned int a3, int a4, int a5, _DWORD *a6)
{
  v12 = [a1 mediaType];
  v13 = [objc_msgSend(a1 "connection")];
  if (gr_outputAndInputShareAPipelineStage(a1, a2, v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = gr_outputOrInputIsStillImagePipelineStage(a1, a2, v13) ^ 1;
  }

  v15 = [v13 mediaConfigurationForAttachedMediaKey:a2];
  v47 = [v15 indefinitelyHeldBufferCount];
  v16 = a4 - 1;
  if (a4 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a4;
  }

  if (a5)
  {
    v16 = a5 - v17;
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v17 = (v17 - a5) & ~((v17 - a5) >> 31);
  }

  v19 = v16 & ~(v16 >> 31);
  v20 = v17 + a3;
  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = a3;
  }

  if (v14)
  {
    a4 = v18;
    a5 = v19;
  }

  if (!v15)
  {
    v15 = [v13 unspecifiedAttachedMediaConfiguration];
    if ([v15 retainedBufferCount] <= 0)
    {
      v22 = [v15 delayedBufferCount];
      if (v15 && v22 >= 1)
      {
        goto LABEL_24;
      }
    }

    else if (v15)
    {
      goto LABEL_24;
    }

    v15 = [v13 mediaConfigurationForAttachedMediaKey:@"PrimaryFormat"];
  }

LABEL_24:
  v23 = [v15 retainedBufferCount];
  v24 = [v15 delayedBufferCount];
  if (a4 <= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = a4;
  }

  v26 = a4 - v24;
  if (a4 <= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = a4;
  }

  if (a5)
  {
    v26 = a5 - v27;
    v28 = a4;
  }

  else
  {
    v28 = 0;
  }

  if (a5)
  {
    v27 = (v27 - a5) & ~((v27 - a5) >> 31);
  }

  v29 = v26 & ~(v26 >> 31);
  v30 = v27 + v21;
  if (v24)
  {
    v25 = v28;
  }

  else
  {
    v29 = a5;
  }

  v44 = v25;
  v45 = v29;
  if (v24)
  {
    v31 = v30;
  }

  else
  {
    v31 = v21;
  }

  v46 = v31;
  if ([v13 _passthroughModeForAttachedMediaKey:a2] == 1)
  {
    v43 = a6;
    v53[0] = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v32 = [objc_msgSend(v13 "node")];
    v33 = [v32 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      v36 = v46;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v49 + 1) + 8 * i);
          v39 = [v38 attachedMediaKeyDrivenByInputAttachedMediaKey:a2 inputIndex:{objc_msgSend(v13, "index")}];
          if (v39)
          {
            v40 = v39;
            if ([v38 mediaType] == v12 && objc_msgSend(v38, "_passthroughModeForAttachedMediaKey:", v40) == 1)
            {
              v41 = gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay(v38, v40, v46, v44, v45, v53);
              v47 += v53[0];
              if (v41 > v36)
              {
                v36 = v41;
              }
            }
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v34);
    }

    else
    {
      v36 = v46;
    }

    v46 = v36;
    a6 = v43;
  }

  else if ([v15 retainedBufferCount])
  {
    v46 += (v44 - v45) & ~((v44 - v45) >> 31);
  }

  if (a6)
  {
    *a6 = v47;
  }

  else
  {
    gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay_cold_1();
  }

  return v46;
}

uint64_t gr_pipelineStageForNodeOutput(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 mediaConfigurationForAttachedMediaKey:{a2), "indexOfInputWhichDrivesThisOutput"}];
  v4 = [objc_msgSend(a1 "node")];
  if ([v4 count] <= v3)
  {
    return 0;
  }

  v5 = [objc_msgSend(v4 objectAtIndexedSubscript:{v3), "connection"}];

  return [v5 pipelineStage];
}

uint64_t gr_outputAndInputShareAPipelineStage(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = [objc_msgSend(a3 "connection")];
  v6 = gr_pipelineStageForNodeOutput(a1, a2);
  if (!(v6 | v5))
  {
    return 1;
  }

  return [v6 isEqual:v5];
}

uint64_t gr_outputOrInputIsStillImagePipelineStage(void *a1, uint64_t a2, void *a3)
{
  if ([objc_msgSend(objc_msgSend(a3 "connection")])
  {
    return 1;
  }

  v6 = gr_pipelineStageForNodeOutput(a1, a2);

  return [v6 stillImagePipelineStage];
}

uint64_t gr_addRetainCountsOfOutputsWithSharedPoolsForAttachedMediaToParentNodeOutputs(void *a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v14 = 0;
        ParentOutputOfOutputWithSharedPool = gr_findParentOutputOfOutputWithSharedPool(v8, a2, &v14);
        if (!ParentOutputOfOutputWithSharedPool)
        {
          gr_addRetainCountsOfOutputsWithSharedPoolsForAttachedMediaToParentNodeOutputs_cold_1();
        }

        v10 = ParentOutputOfOutputWithSharedPool;
        v11 = [v8 mediaPropertiesForAttachedMediaKey:a2];
        v12 = [v10 mediaPropertiesForAttachedMediaKey:v14];
        if (v11)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [v12 setResolvedRetainedBufferCount:{objc_msgSend(v11, "resolvedRetainedBufferCount") + objc_msgSend(v12, "resolvedRetainedBufferCount") + 1}];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *gr_findParentOutputOfOutputWithSharedPool(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a2;
  while ([a1 _passthroughModeForAttachedMediaKey:v6])
  {
    v7 = [a1 mediaConfigurationForAttachedMediaKey:a2];
    v8 = [objc_msgSend(objc_msgSend(a1 "node")];
    v6 = [v7 attachedMediaKeyOfInputWhichDrivesThisOutput];
    a1 = [objc_msgSend(v8 "connection")];
    if (!a1)
    {
      gr_findParentOutputOfOutputWithSharedPool_cold_1();
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  return a1;
}

double OUTLINED_FUNCTION_72_0(double a1)
{
  *&STACK[0x350] = a1;
  result = *&STACK[0x2F8];
  STACK[0x348] = STACK[0x2F8];
  return result;
}

double OUTLINED_FUNCTION_72_3()
{
  result = 0.0;
  *(v0 - 64) = 0u;
  *(v0 - 48) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return [a1 arrayWithObjects:va count:3];
}

BOOL OUTLINED_FUNCTION_72_6(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t captureSession_commitInflightConfiguration(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_commitInflightConfiguration_cold_1();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  [*(DerivedStorage + 504) configurationID];
  v3 = captureSession_checkClientSessionIsAllowedToRun(a1, *(DerivedStorage + 504), 0, 0, 0);
  if (v3)
  {
    started = v3;
    os_unfair_lock_unlock((DerivedStorage + 384));
    v98 = 0;
    v97 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = 0;
    v9 = 0;
    goto LABEL_124;
  }

  v6 = *(DerivedStorage + 504);
  if (v6 == *(DerivedStorage + 512))
  {
    if (BWCaptureIsRunningInMacCatalystEnvironment() && !os_variant_is_darwinos())
    {
      v9 = 0;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 504);
      v9 = 0;
      v7 = 0;
    }
  }

  else
  {
    v8 = v6;
    v7 = *(DerivedStorage + 453);
    if ([*(DerivedStorage + 536) isEqual:*(DerivedStorage + 544)])
    {
      v9 = 0;
    }

    else
    {
      v9 = [*(DerivedStorage + 536) mutableCopy];
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  if (*(DerivedStorage + 96))
  {
    v10 = [*(DerivedStorage + 120) mediaEnvironmentTCCIdentity];
    if (!v10)
    {
      captureSession_commitInflightConfiguration_cold_3(&block);
      goto LABEL_127;
    }

    v11 = *(DerivedStorage + 36);
    block = *(DerivedStorage + 20);
    v94 = v11;
    v12 = soft_PAAuthenticatedClientIdentity(&block, v10);
    if (!v12)
    {
      captureSession_commitInflightConfiguration_cold_2(&block);
LABEL_127:
      started = block;
      goto LABEL_124;
    }
  }

  else
  {
    if (![v8 tccIdentity])
    {
      goto LABEL_20;
    }

    v13 = [v8 tccIdentity];
    v14 = *(DerivedStorage + 36);
    block = *(DerivedStorage + 20);
    v94 = v14;
    v12 = soft_PAAuthenticatedClientIdentity(&block, v13);
    if (!v12)
    {
      captureSession_commitInflightConfiguration_cold_4(&block);
      goto LABEL_127;
    }
  }

  [v8 setTccIdentity:v12];
LABEL_20:
  v76 = v9;
  if (!v8)
  {
    v98 = 0;
    v97 = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = v98;
    if (os_log_type_enabled(v19, v97))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v22 = *(DerivedStorage + 104);
      valuePtr = 136315394;
      v88 = "captureSession_commitInflightConfiguration";
      v89 = 2114;
      v90 = v22;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = 0;
    started = 0;
    goto LABEL_124;
  }

  v77 = v8;
  if (dword_1ED844050)
  {
    v98 = 0;
    v97 = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v98;
    if (os_log_type_enabled(v15, v97))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = *(DerivedStorage + 104);
      valuePtr = 136315650;
      v88 = "captureSession_commitInflightConfiguration";
      v89 = 2114;
      v90 = v18;
      v9 = v76;
      v91 = 2112;
      *v92 = [v8 briefDescription];
      LODWORD(v75) = 32;
      p_valuePtr = &valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = v8;
  v24 = v9;
  os_unfair_lock_lock((DerivedStorage + 384));
  v25 = *(DerivedStorage + 512);
  *(DerivedStorage + 512) = v8;
  if (v7)
  {
    *(DerivedStorage + 454) = 1;
  }

  v26 = *(DerivedStorage + 544);
  if (v9)
  {
    goto LABEL_36;
  }

  if (!v26)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_36:
    *(DerivedStorage + 544) = v9;
    goto LABEL_39;
  }

  v26 = 0;
LABEL_39:
  os_unfair_lock_unlock((DerivedStorage + 384));
  v97 = OS_LOG_TYPE_DEFAULT;
  v86 = 0;
  if (*(DerivedStorage + 752))
  {
    updated = captureSession_updateGraphConfiguration(a1, v25, v8, &v97, &v86);
    if (updated)
    {
      started = updated;
      v98 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = v98;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
LABEL_63:
        v40 = *(DerivedStorage + 104);
        valuePtr = 136315650;
        v88 = "captureSession_commitInflightConfiguration";
        v89 = 2114;
        v90 = v40;
        v91 = 1024;
        *v92 = started;
        LODWORD(v75) = 28;
        p_valuePtr = &valuePtr;
        _os_log_send_and_compose_impl();
      }

LABEL_64:
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      if (started == -12785 || started == -12681 || started == -12689)
      {
        v98 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v42 = v98;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (v43)
        {
          v44 = *(DerivedStorage + 104);
          valuePtr = 136315906;
          v88 = "captureSession_commitInflightConfiguration";
          v89 = 2114;
          v90 = v44;
          v91 = 1024;
          *v92 = started;
          *&v92[4] = 1024;
          *&v92[6] = -16407;
          LODWORD(v75) = 34;
          p_valuePtr = &valuePtr;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        started = 4294950889;
      }

      goto LABEL_77;
    }
  }

  else
  {
    if (![v8 eligibleToAttachToExistingCaptureSession])
    {
      goto LABEL_58;
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    v31 = *(DerivedStorage + 712);
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (v31)
    {
      if (dword_1ED844050)
      {
        v98 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v33 = v98;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          v35 = *(DerivedStorage + 8);
          valuePtr = 136315394;
          v88 = "captureSession_commitInflightConfiguration";
          v89 = 2112;
          v90 = v35;
          LODWORD(v75) = 22;
          p_valuePtr = &valuePtr;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __captureSession_commitInflightConfiguration_block_invoke;
      v84[3] = &unk_1E7991EF8;
      v84[4] = v8;
      v84[5] = v31;
      v84[6] = DerivedStorage;
      captureSession_performBlockOnWorkerQueue(v31, v84);
      captureSession_makeCommittedConfigurationLive(a1, [v8 configurationID]);
      goto LABEL_76;
    }

    if ([+[FigCaptureSessionObservatory sharedObservatory](FigCaptureSessionObservatory "sharedObservatory")])
    {
      v86 = 1;
    }

    else
    {
LABEL_58:
      v36 = captureSession_buildGraphWithConfiguration();
      if (v36)
      {
        started = v36;
        v98 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = v98;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          goto LABEL_63;
        }

        goto LABEL_64;
      }
    }
  }

LABEL_76:

  started = 0;
LABEL_77:
  IsFatal = cs_errorIsFatal(started);
  v46 = IsFatal;
  if (IsFatal)
  {
    v47 = cs_notificationPayloadWithConfigurationIDAndErrorStatus([v8 configurationID], started);
    v98 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v49 = v98;
    if (os_log_type_enabled(v48, type))
    {
      v50 = v49;
    }

    else
    {
      v50 = v49 & 0xFFFFFFFE;
    }

    if (v50)
    {
      v51 = *(DerivedStorage + 104);
      valuePtr = 136315650;
      v88 = "captureSession_commitInflightConfiguration";
      v89 = 2114;
      v90 = v51;
      v91 = 1024;
      *v92 = started;
      LODWORD(v75) = 28;
      p_valuePtr = &valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *&block = 0;
    valuePtr = 0;
    cs_getMasterClockAndType(*(DerivedStorage + 784), &block, &valuePtr);
    v52 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v53 = [v8 configurationID];
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v53), @"ConfigurationID", block, @"MasterClock", v52, @"MasterClockType", 0}];
    if (v52)
    {
      CFRelease(v52);
    }
  }

  captureSession_postNotificationWithPayload(a1, @"ConfigurationCommitted", v47);
  v54 = CMBaseObjectGetDerivedStorage();
  if (cs_configurationContainsVideoSource(v8))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v55 = *(v54 + 200);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    *&v94 = __captureSession_ensureAVAudioSessionForIsUsingCameraIfNecessary_block_invoke;
    *(&v94 + 1) = &__block_descriptor_48_e5_v8__0l;
    v95 = v54;
    v96 = a1;
    dispatch_async(v55, &block);
  }

  if ((v46 & 1) == 0)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v56 = [*(DerivedStorage + 784) previewSinkPipelines];
    v57 = [v56 countByEnumeratingWithState:&v80 objects:v79 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v81;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v81 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v80 + 1) + 8 * i);
          if ([v61 sinkID])
          {
            if (([v61 imageQueueUpdatedNotificationSent] & 1) == 0)
            {
              v62 = [v61 imageQueueUpdatedPayloadToBeSentAfterCommitConfiguration];
              if (v62)
              {
                v63 = v62;
                if (*(DerivedStorage + 452) != 1 || !*(DerivedStorage + 448))
                {
                  [v61 setImageQueueUpdatedNotificationSent:1];
                  captureSession_postNotificationWithPayload(a1, @"ImageQueueUpdated", v63);
                  captureSession_updateSavedPreviewImageQueueUpdatedNotificationSent(a1, v61);
                }
              }
            }
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v80 objects:v79 count:16];
      }

      while (v58);
    }
  }

  if (v97 == OS_LOG_TYPE_INFO)
  {
    started = captureSession_startGraph(a1);
    v9 = v76;
    if (started)
    {
      v98 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v65 = v98;
      if (os_log_type_enabled(v64, type))
      {
        v66 = v65;
      }

      else
      {
        v66 = v65 & 0xFFFFFFFE;
      }

      if (v66)
      {
        v67 = *(DerivedStorage + 104);
        valuePtr = 136315650;
        v88 = "captureSession_commitInflightConfiguration";
        v89 = 2114;
        v90 = v67;
        v91 = 1024;
        *v92 = started;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      captureSession_resetSessionRunningStateOnFatalError(a1, started);
      captureSession_transitionToSessionStatus(a1, 0, started);
    }

    goto LABEL_121;
  }

  v9 = v76;
  if (v86 != 1)
  {
LABEL_121:
    v8 = v77;
    goto LABEL_124;
  }

  v68 = *(DerivedStorage + 712);
  v8 = v77;
  if (v68)
  {
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __captureSession_commitInflightConfiguration_block_invoke_756;
    v78[3] = &__block_descriptor_40_e5_v8__0l;
    v78[4] = DerivedStorage;
    captureSession_performBlockOnWorkerQueueSynchronously(v68, v78);
  }

  if (dword_1ED844050)
  {
    v98 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v70 = v98;
    if (os_log_type_enabled(v69, type))
    {
      v71 = v70;
    }

    else
    {
      v71 = v70 & 0xFFFFFFFE;
    }

    if (v71)
    {
      v72 = *(DerivedStorage + 104);
      valuePtr = 136315394;
      v88 = "captureSession_commitInflightConfiguration";
      v89 = 2114;
      v90 = v72;
      LODWORD(v75) = 22;
      p_valuePtr = &valuePtr;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = v77;
  }

  captureSession_makeCommittedConfigurationLive(a1, [v8 configurationID]);
LABEL_124:

  return started;
}

uint64_t cs_errorIsFatal(int a1)
{
  result = 0;
  if (a1 <= -16409)
  {
    if (a1 != -73176 && a1 != -16952)
    {
      return 1;
    }
  }

  else if (((a1 + 16408) > 5 || ((1 << (a1 + 24)) & 0x33) == 0) && a1)
  {
    return 1;
  }

  return result;
}

void __captureSession_updateRunningCondition_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    __captureSession_updateRunningCondition_block_invoke_cold_1();
  }

  if (!*DerivedStorage)
  {
    os_unfair_lock_lock((DerivedStorage + 384));
    v4 = *(DerivedStorage + 456);
    if (*(DerivedStorage + 388) == 1 && (v4 != 3 ? (v5 = v4 == 0) : (v5 = 1), v5))
    {
      *(DerivedStorage + 480) = 0;
      *(DerivedStorage + 392) = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(DerivedStorage + 392);
    v17 = *(DerivedStorage + 397);
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v6)
      {
LABEL_20:
        captureSession_transitionToSessionStatus(v1, 1, 0);
        v11 = CMBaseObjectGetDerivedStorage();
        if (!_FigIsCurrentDispatchQueue())
        {
          __captureSession_updateRunningCondition_block_invoke_cold_2();
        }

        if (dword_1ED844050)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        os_unfair_lock_lock((v11 + 384));
        if (*(v11 + 464) == 0.0)
        {
          *(v11 + 464) = CFAbsoluteTimeGetCurrent();
        }

        os_unfair_lock_unlock((v11 + 384));
        if (!*(v11 + 912))
        {
          *(v11 + 912) = FigOSTransactionCreate();
        }

        captureSession_stopObservingInvalidAudioRecordingState();
        started = captureSession_commitInflightConfiguration(v1);
        if (!started)
        {
          if (*(DerivedStorage + 712))
          {
            return;
          }

          started = captureSession_startGraph(v1);
          if (!started)
          {
            return;
          }
        }

        v14 = started;
        if (started == -12785 || started == -12681 || started == -12689)
        {
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (v17)
          {
            v14 = -16407;
LABEL_39:
            v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            os_unfair_lock_lock((DerivedStorage + 384));
            *(DerivedStorage + 397) = 0;
            *(DerivedStorage + 616) = 0;
            captureSession_cancelPrewarmingTimeoutTimer();
            *(DerivedStorage + 388) = 0;
            captureSession_updateRunningCondition(v1, 0, 0);
            os_unfair_lock_unlock((DerivedStorage + 384));
LABEL_44:
            captureSession_transitionToSessionStatus(v1, 0, v14);
            return;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_39;
          }

          if (started != -16407)
          {
            captureSession_resetSessionRunningStateOnFatalError(v1, started);
            if ((v14 & 0xFFFFFFFB) != 0xFFFFBFE9)
            {
              cs_detectSessionStartFailLoopTTR(v1, v14);
            }

            goto LABEL_44;
          }
        }

        FigCaptureSessionServerInvokeContinuityCameraMultitaskingDialogIfNeeded();
        os_unfair_lock_lock((DerivedStorage + 384));
        if ((*(DerivedStorage + 405) & 1) == 0)
        {
          *(DerivedStorage + 388) = 0;
        }

        os_unfair_lock_unlock((DerivedStorage + 384));
        v14 = -16407;
        goto LABEL_44;
      }
    }

    else if (v6)
    {
      goto LABEL_20;
    }

    if (v2)
    {
      v9 = captureSession_notificationPayloadWithErrorStatus(v1, v7);
      captureSession_postNotificationWithPayload(v1, @"DidStopRunning", v9);
    }

    else
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t captureSession_startGraph(const void *a1)
{
  v77 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    LODWORD(v97) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v5 = [*(DerivedStorage + 512) configurationID];
  v6 = captureSession_checkClientSessionIsAllowedToRun(a1, *(DerivedStorage + 512), 0, 0, 0);
  v7 = *(DerivedStorage + 512);
  block = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v8 = [v7 sinkConfigurations];
  v9 = [v8 countByEnumeratingWithState:&block objects:&v94 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v83;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v83 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&block + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v14 preparesCellularRadioForNetworkConnection])
        {
          v10 = 1;
          goto LABEL_17;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&block objects:&v94 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v10 = 0;
LABEL_17:
    v4 = MEMORY[0x1E695FF58];
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  if (v6)
  {
    captureSession_startGraph_cold_1();
  }

  else if (*(DerivedStorage + 752))
  {
    cs_clearPocketDetectionNeeded(0, *(DerivedStorage + 88));
    if (*(DerivedStorage + 769) == 1)
    {
      *(DerivedStorage + 768) = 1;
      captureSession_makeCommittedConfigurationLive(a1, v5);
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v15 = [*(DerivedStorage + 784) cameraSourcePipelines];
      v16 = [v15 countByEnumeratingWithState:&v73 objects:v72 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v74;
        while (2)
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v74 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v73 + 1) + 8 * j);
            [(FigCaptureCameraSourcePipeline *)v20 hackRetainedBufferCountsForDualStreamSources];
            v21 = [(FigCaptureCameraSourcePipeline *)v20 allocateSharedBufferPools];
            if (v21)
            {
              v6 = v21;
              captureSession_startGraph_cold_2();
              goto LABEL_94;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v73 objects:v72 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v71 = v10;
      v22 = CMBaseObjectGetDerivedStorage();
      v23 = *(v22 + 36);
      v94 = *(v22 + 20);
      v95 = v23;
      if (!FigCaptureClientIsContinuityCapture(&v94))
      {
        v24 = *(v22 + 512);
        if (v24)
        {
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v25 = [v24 sourceConfigurations];
          v26 = [v25 countByEnumeratingWithState:&v97 objects:&v94 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v98;
            while (2)
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v98 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v97 + 1) + 8 * k);
                if ([v30 cinematicFramingEnabled])
                {
                  v31 = [v30 cinematicFramingControlMode];
                  v32 = *(v22 + 88);
                  if (v32)
                  {
                    v33 = v31;
                    if (BWDeviceIsiPad())
                    {
                      global_queue = dispatch_get_global_queue(-2, 0);
                      *type = MEMORY[0x1E69E9820];
                      v90 = 3221225472;
                      v91 = __captureSession_showCinematicFramingAlertIfApplicable_block_invoke;
                      v92 = &unk_1E798F870;
                      v93 = v32;
                      dispatch_async(global_queue, type);
                    }

                    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"cinematic_framing_onboarding_alert_shown", @"com.apple.cameracapture", 0);
                    v36 = AppBooleanValue != 0;
                    v37 = CFPreferencesCopyAppValue(@"cinematic_framing_clients", @"com.apple.cameracapture");
                    v38 = [objc_msgSend(objc_msgSend(v37 objectForKeyedSubscript:{v32), "objectForKeyedSubscript:", @"app_control_alert_shown", "BOOLValue"}];
                    if (!AppBooleanValue || (v38 & 1) == 0)
                    {
                      v39 = AppBooleanValue == 0;
                      if (!AppBooleanValue || ((v33 == 1) & ~v38) != 0)
                      {
                        if (v33 == 1)
                        {
                          LODWORD(v38) = 1;
                        }

                        v70 = v38;
                        v40 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.CMViewSrvc" viewControllerClassName:@"CinematicFramingRemoteAlertViewController"];
                        v41 = objc_alloc_init(MEMORY[0x1E69D4298]);
                        v69 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v40 configurationContext:v41];
                        v42 = objc_alloc_init(MEMORY[0x1E69D4288]);
                        if (([v32 isEqualToString:0x1F2185490] & 1) == 0)
                        {
                          v43 = [MEMORY[0x1E698E740] processHandleForPID:*(v22 + 16) bundleID:v32];
                          [v42 setPresentationTarget:{objc_msgSend(objc_alloc(MEMORY[0x1E69D42C0]), "initWithTargetProcess:", v43)}];
                        }

                        v44 = MEMORY[0x1E695DF90];
                        v45 = [MEMORY[0x1E696AD98] numberWithInt:v33];
                        v46 = [v44 dictionaryWithObjectsAndKeys:{v32, @"bundleIdentifier", v45, @"controlMode", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v39), @"isFirstEverCinematicFramingAlert", 0}];
                        v88 = 0;
                        v47 = [objc_msgSend(MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v32 allowPlaceholder:0 error:{&v88), "localizedName"}];
                        if (v47)
                        {
                          [v46 setObject:v47 forKeyedSubscript:@"bundleDisplayName"];
                        }

                        [v42 setUserInfo:v46];
                        if (BWDeviceIsiPhone())
                        {
                          if (FigCaptureClientApplicationIDIsFaceTimeVariant(v32))
                          {
                            v48 = 3;
                          }

                          else
                          {
                            v48 = 1;
                          }

                          if (dword_1ED844050)
                          {
                            v87 = 0;
                            v86 = OS_LOG_TYPE_DEFAULT;
                            v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v50 = v87;
                            if (os_log_type_enabled(v49, v86))
                            {
                              v51 = v50;
                            }

                            else
                            {
                              v51 = v50 & 0xFFFFFFFE;
                            }

                            if (v51)
                            {
                              v78 = 136315394;
                              v79 = "captureSession_showCinematicFramingAlertIfApplicable";
                              v80 = 1024;
                              v81 = v48;
                              LODWORD(v68) = 18;
                              v67 = &v78;
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          v55 = dispatch_time(0, (1000000000 * v48));
                          v56 = dispatch_get_global_queue(2, 0);
                          *&block = MEMORY[0x1E69E9820];
                          *(&block + 1) = 3221225472;
                          *&v83 = __captureSession_showCinematicFramingAlertIfApplicable_block_invoke_1254;
                          *(&v83 + 1) = &unk_1E798F898;
                          *&v84 = v69;
                          *(&v84 + 1) = v42;
                          dispatch_after(v55, v56, &block);
                        }

                        else
                        {
                          if (dword_1ED844050)
                          {
                            v87 = 0;
                            v86 = OS_LOG_TYPE_DEFAULT;
                            v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v53 = v87;
                            if (os_log_type_enabled(v52, v86))
                            {
                              v54 = v53;
                            }

                            else
                            {
                              v54 = v53 & 0xFFFFFFFE;
                            }

                            if (v54)
                            {
                              v78 = 136315138;
                              v79 = "captureSession_showCinematicFramingAlertIfApplicable";
                              LODWORD(v68) = 12;
                              v67 = &v78;
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          [v69 activateWithContext:{v42, v67, v68}];
                        }

                        v36 = 1;
                        v38 = v70;
                      }

                      v57 = v38;
                      v58 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v37, v67, v68}];
                      v59 = [MEMORY[0x1E695DF90] dictionary];
                      [v58 setObject:v59 forKeyedSubscript:v32];
                      [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v57), @"app_control_alert_shown"}];
                      v60 = MEMORY[0x1E695E4D0];
                      if (!v36)
                      {
                        v60 = MEMORY[0x1E695E4C0];
                      }

                      CFPreferencesSetAppValue(@"cinematic_framing_onboarding_alert_shown", *v60, @"com.apple.cameracapture");
                      CFPreferencesSetAppValue(@"cinematic_framing_clients", v58, @"com.apple.cameracapture");
                      CFPreferencesAppSynchronize(@"com.apple.cameracapture");
                    }
                  }

                  else
                  {
                    captureSession_startGraph_cold_3();
                  }

                  goto LABEL_79;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v97 objects:&v94 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          captureSession_startGraph_cold_4();
        }
      }

LABEL_79:
      v61 = [*(DerivedStorage + 752) deferredNodePrepareEnabled];
      v4 = MEMORY[0x1E695FF58];
      if (v61)
      {
        os_unfair_lock_lock((DerivedStorage + 384));

        v62 = CMBaseObjectGetDerivedStorage();
        v63 = [*(v62 + 752) deferredPreparePrioritySinks];
        *&v94 = MEMORY[0x1E69E9820];
        *(&v94 + 1) = 3221225472;
        *&v95 = __captureSession_sinkNodesToWaitForBeforeStartingDeferredPrepare_block_invoke;
        *(&v95 + 1) = &__block_descriptor_40_e37_B24__0__BWSinkNode_8__NSDictionary_16l;
        v96 = v62;
        v64 = [v63 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v94)}];
        if ([v64 count])
        {
          *(DerivedStorage + 608) = [v64 mutableCopy];
        }

        os_unfair_lock_unlock((DerivedStorage + 384));
      }

      if (![*(DerivedStorage + 752) start:&v77])
      {
        if (v77)
        {
          v6 = [v77 code];
        }

        else
        {
          v6 = 0xFFFFFFFFLL;
        }

        goto LABEL_94;
      }

      *(DerivedStorage + 768) = 1;
      if (v71)
      {
        dispatch_async(*(DerivedStorage + 152), &__block_literal_global_1270);
      }

      if (([*(DerivedStorage + 88) isEqualToString:0x1F216ED50] & 1) != 0 || objc_msgSend(*(DerivedStorage + 88), "isEqualToString:", 0x1F2185310))
      {
        os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
        if (byte_1EB58EC04 == 1)
        {
          HIBYTE(word_1EB58EC10) = 1;
        }

        os_unfair_lock_unlock(&sLockScreenCameraLaunchTelemetry);
        os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
        if (dword_1ED84495C)
        {
          ++dword_1ED8449A8;
        }

        os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
      }
    }

    v6 = 0;
  }

  else
  {
    captureSession_startGraph_cold_5(&v94);
    v6 = v94;
  }

LABEL_94:
  if (*(DerivedStorage + 768) == 1)
  {
    v65 = mach_absolute_time();
  }

  else
  {
    v65 = 0;
  }

  *(DerivedStorage + 824) = v65;
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

void cs_clearPocketDetectionNeeded(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (cs_bundleIdentifierIsSecureCaptureExtension(a2))
    {
      v2 = cs_containingBundleIdentifierForSecureCaptureExtensionBundleIdentifier(v2);
      if (!v2)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        return;
      }
    }

    os_unfair_lock_lock(&sPocketDetectionState);
    if (!qword_1EB58E920 || !CFEqual(v2, qword_1EB58E920))
    {
      goto LABEL_16;
    }

    if (!a1 || qword_1EB58E938 == a1)
    {
      qword_1EB58E928 = 0;
      if (qword_1EB58E920)
      {
        CFRelease(qword_1EB58E920);
        qword_1EB58E920 = 0;
      }

      cs_cancelPocketDetectionTimeoutTimer();
      if (!dword_1ED844050)
      {
        goto LABEL_16;
      }

      v6 = OUTLINED_FUNCTION_54_7();
      v7 = OUTLINED_FUNCTION_110_3(v6);
      if (!OUTLINED_FUNCTION_5_2(v7))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!dword_1ED844050)
      {
LABEL_16:
        os_unfair_lock_unlock(&sPocketDetectionState);
        return;
      }

      v4 = OUTLINED_FUNCTION_54_7();
      v5 = OUTLINED_FUNCTION_110_3(v4);
      if (!OUTLINED_FUNCTION_5_2(v5))
      {
LABEL_15:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_16_1();
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    goto LABEL_15;
  }
}

void sub_1AC97AAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FigCapturePixelFormatIs420(int a1)
{
  result = 1;
  if (a1 > 1534617135)
  {
    if (a1 > 2084070959)
    {
      if (a1 <= 2088269359)
      {
        if (a1 > 2087216687)
        {
          if (a1 == 2087216688)
          {
            return result;
          }

          v3 = 2088265264;
        }

        else
        {
          if (a1 == 2084070960)
          {
            return result;
          }

          v3 = 2084075056;
        }

        goto LABEL_52;
      }

      if (a1 <= 2100852271)
      {
        if (a1 == 2088269360)
        {
          return result;
        }

        v3 = 2100848176;
        goto LABEL_52;
      }

      if (a1 == 2100852272 || a1 == 2105042480)
      {
        return result;
      }

      v3 = 2105046576;
    }

    else
    {
      if (a1 <= 1882468911)
      {
        if (a1 > 1714696751)
        {
          if (a1 == 1714696752)
          {
            return result;
          }

          v3 = 1751527984;
        }

        else
        {
          if (a1 == 1534617136)
          {
            return result;
          }

          v3 = 1534621232;
        }

        goto LABEL_52;
      }

      if (a1 <= 2016686639)
      {
        if (a1 == 1882468912)
        {
          return result;
        }

        v3 = 1885745712;
        goto LABEL_52;
      }

      if (a1 == 2016686640 || a1 == 2019963440)
      {
        return result;
      }

      v3 = 2033463856;
    }

LABEL_52:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 792225327)
  {
    if (a1 <= 796423727)
    {
      if (a1 > 795371055)
      {
        if (a1 == 795371056)
        {
          return result;
        }

        v3 = 796419632;
      }

      else
      {
        if (a1 == 792225328)
        {
          return result;
        }

        v3 = 792229424;
      }

      goto LABEL_52;
    }

    if (a1 <= 875704437)
    {
      if (a1 == 796423728)
      {
        return result;
      }

      v3 = 875704422;
      goto LABEL_52;
    }

    if (a1 == 875704438 || a1 == 1530422832)
    {
      return result;
    }

    v3 = 1530426928;
    goto LABEL_52;
  }

  if (a1 <= 758670895)
  {
    if (a1 > 645424687)
    {
      if (a1 == 645424688)
      {
        return result;
      }

      v3 = 645428784;
    }

    else
    {
      if (a1 == 641230384)
      {
        return result;
      }

      v3 = 641234480;
    }

    goto LABEL_52;
  }

  if (a1 <= 761816623)
  {
    if (a1 == 758670896)
    {
      return result;
    }

    v3 = 758674992;
    goto LABEL_52;
  }

  if (a1 != 761816624 && a1 != 762865200)
  {
    v3 = 762869296;
    goto LABEL_52;
  }

  return result;
}

uint64_t mscsn_metadataOutputKeyForOutputIndex(int a1)
{
  result = 0;
  if (a1 <= 12)
  {
    switch(a1)
    {
      case 9:
        v3 = off_1E798AFF0;
        break;
      case 10:
        v3 = off_1E798AFE0;
        break;
      case 12:
        v3 = off_1E798B008;
        break;
      default:
        return result;
    }
  }

  else if (a1 > 14)
  {
    if (a1 == 15)
    {
      v3 = off_1E798B018;
    }

    else
    {
      if (a1 != 16)
      {
        return result;
      }

      v3 = off_1E798B028;
    }
  }

  else if (a1 == 13)
  {
    v3 = off_1E798B010;
  }

  else
  {
    v3 = off_1E798B030;
  }

  return *v3;
}

uint64_t FigCaptureClientIsContinuityCapture(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v8);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SecTaskCopySigningIdentifier(v3, 0);
  if (([(__CFString *)v5 isEqualToString:0x1F21855B0]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(__CFString *)v5 isEqualToString:0x1F2185250];
  }

  CFRelease(v4);
  return v6;
}

void *__captureSession_sinkNodesToWaitForBeforeStartingDeferredPrepare_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 nodeType] != @"Sink")
  {
    return 0;
  }

  if ([a2 nodeSubType] != 0x1F21A7070)
  {
    if ([a2 nodeSubType] == @"ImageQueue")
    {
      result = [*(*(a1 + 32) + 784) previewSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}];
      if (result)
      {
        v5 = [result discardsImageQueueSampleData];
        return (v5 ^ 1u);
      }

      return result;
    }

    return 0;
  }

  if ([*(*(a1 + 32) + 784) metadataSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}])
  {
    return 0;
  }

  result = [*(*(a1 + 32) + 784) videoDataSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}];
  if (result || (result = [*(*(a1 + 32) + 784) depthDataSinkPipelineWithSinkID:{objc_msgSend(a2, "sinkID")}]) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "visionDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "audioDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "pointCloudDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 784), "cameraCalibrationDataSinkPipelineWithSinkID:", objc_msgSend(a2, "sinkID"))) != 0)
  {
    v5 = [result discardsSampleData];
    return (v5 ^ 1u);
  }

  return result;
}

int32x2_t FigCaptureSwapVideoDimensionsFor90Or270Rotation(int32x2_t *a1, int a2)
{
  if (a2 == 270 || a2 == 90)
  {
    result = vrev64_s32(*a1);
    *a1 = result;
  }

  return result;
}

uint64_t FigCaptureVTRotationFromDegrees(int a1)
{
  result = 0;
  if (a1 > 179)
  {
    if (a1 == 180)
    {
      v3 = MEMORY[0x1E6983FF0];
    }

    else
    {
      if (a1 != 270)
      {
        return result;
      }

      v3 = MEMORY[0x1E6983FF8];
    }
  }

  else if (a1)
  {
    if (a1 != 90)
    {
      return result;
    }

    v3 = MEMORY[0x1E6984000];
  }

  else
  {
    v3 = MEMORY[0x1E6983FE8];
  }

  return *v3;
}

double FigCaptureMakeMirrorAndRotateVideoTransform@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1E695EFD0];
  v10 = *MEMORY[0x1E695EFD0];
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *a5 = *MEMORY[0x1E695EFD0];
  *(a5 + 16) = v11;
  v12 = *(v9 + 32);
  *(a5 + 32) = v12;
  if (a3)
  {
    t2.a = -1.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = 1.0;
    t2.tx = a1;
    t2.ty = 0.0;
    *&t1.a = v10;
    *&t1.c = v11;
    *&t1.tx = v12;
    CGAffineTransformConcat(a5, &t1, &t2);
  }

  switch(a4)
  {
    case 270:
      *&t1.a = xmmword_1AD046850;
      t1.d = 0.0;
      t1.tx = 0.0;
      t1.c = 1.0;
      t1.ty = a1;
      goto LABEL_9;
    case 180:
      t1.a = -1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = -1.0;
      t1.tx = a1;
      t1.ty = a2;
      goto LABEL_9;
    case 90:
      *&t1.a = xmmword_1AD046820;
      *&t1.c = xmmword_1AD046840;
      t1.tx = a2;
      t1.ty = 0.0;
LABEL_9:
      v13 = *(a5 + 16);
      *&v16.a = *a5;
      *&v16.c = v13;
      *&v16.tx = *(a5 + 32);
      CGAffineTransformConcat(&t2, &v16, &t1);
      v14 = *&t2.c;
      *a5 = *&t2.a;
      *(a5 + 16) = v14;
      *&v10 = t2.tx;
      *(a5 + 32) = *&t2.tx;
      break;
  }

  return *&v10;
}

uint64_t ptn_rotationDegreesAndMirroringFromLiveConfiguration(uint64_t result, int a2, int a3, char *a4)
{
  if (a2 & a3)
  {
LABEL_2:
    v5 = a2 & a3 ^ 1;
    result = FigCaptureNormalizeAngle(result + 180);
    if (!a4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if ((a2 & 1) == 0 && !a3)
  {
    v5 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (result == 270 || result == 90)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (a3)
  {
    goto LABEL_2;
  }

  v5 = 1;
  if (!a4)
  {
    return result;
  }

LABEL_7:
  *a4 = v5;
  return result;
}

void sub_1AC97E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia(void *a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v14 = 0;
        ParentOutputOfOutputWithSharedPool = gr_findParentOutputOfOutputWithSharedPool(v8, a2, &v14);
        if (!ParentOutputOfOutputWithSharedPool)
        {
          gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia_cold_3();
        }

        v10 = [ParentOutputOfOutputWithSharedPool mediaPropertiesForAttachedMediaKey:v14];
        if (!v10)
        {
          gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia_cold_2();
        }

        v11 = [v10 preparedOrLivePixelBufferPool];
        if (!v11)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Parent of shared pool output should have a prepared pool" userInfo:0]);
        }

        v12 = v11;
        v13 = [v8 mediaPropertiesForAttachedMediaKey:v14];
        if (!v13)
        {
          gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia_cold_1();
        }

        [v13 setPreparedSharedPixelBufferPool:v12];
        ++v7;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t gr_propagatePreparedPoolsToSharedPoolOutputs(void *a1, void *a2)
{
  gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia(a1, @"PrimaryFormat");
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v7 count:16];
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
          objc_enumerationMutation(a2);
        }

        gr_propagatePreparedPoolsToSharedPoolOutputsForAttachedMedia([a2 objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v6)], *(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      result = [a2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t FigSampleBufferProcessorCreateForAutofocus(uint64_t a1, void *a2, void *a3, void *a4, void *a5, const __CFDictionary *a6, const void *a7, void *a8)
{
  if (a8 && a2)
  {
    v10 = a7;
    v15 = (FigImageControl_Sharpness_ConfigureLogging)();
    v16 = FigImageControl_Sharpness_ConfigureLogging(v15);
    v17 = FigImageControl_Sharpness_ConfigureLogging(v16);
    FigImageControl_Sharpness_ConfigureLogging(v17);
    v18 = *MEMORY[0x1E695E480];
    FigSampleBufferProcessorGetClassID();
    v19 = CMDerivedObjectCreate();
    if (v19)
    {
      v39 = v19;
      FigSampleBufferProcessorCreateForAutofocus_cold_1();
      return v39;
    }

    v41 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    bzero(DerivedStorage, 0x4720uLL);
    *(DerivedStorage + 7576) = 0;
    *(DerivedStorage + 7428) = 1;
    *(DerivedStorage + 7616) = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 7656) = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 7596) = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 7600) = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 9088) = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 7468) = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 7537) = FigGetCFPreferenceNumberWithDefault() != 0;
    *(DerivedStorage + 7536) = FigGetCFPreferenceNumberWithDefault() != 0;
    v21 = 0;
    *(DerivedStorage + 7538) = FigGetCFPreferenceNumberWithDefault() != 0;
    do
    {
      v22 = vcvts_n_f32_u32(v21, 8uLL);
      if (v22 >= 0.018)
      {
        v23 = powf(v22, 0.45) * 1.099 + -0.0989999995;
      }

      else
      {
        v23 = v22 * 4.5;
      }

      *(DerivedStorage + 9184 + 4 * v21++) = v23;
    }

    while (v21 != 257);
    *(DerivedStorage + 10212) = 0;
    if (!*(DerivedStorage + 17368))
    {
      v24 = FigSimpleMutexCreate();
      *(DerivedStorage + 17368) = v24;
      if (!v24)
      {
        fig_log_get_emitter();
        v39 = FigSignalErrorAtGM();
        goto LABEL_38;
      }
    }

    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    *(DerivedStorage + 24) = a4;
    *(DerivedStorage + 32) = a5;
    v25 = CMBaseObjectGetDerivedStorage();
    v26 = [*(v25 + 8) supportedProperties];
    if (v26)
    {
      v27 = v26;
      *(v25 + 44) = CFDictionaryContainsKey(v26, *off_1E798BCB0) != 0;
      *(v25 + 45) = CFDictionaryContainsKey(v27, *off_1E798BC88) != 0;
      *(v25 + 510) = CFDictionaryContainsKey(v27, *off_1E798C0E0) != 0;
      *(v25 + 509) = CFDictionaryContainsKey(v27, *off_1E798C078) != 0;
      *(v25 + 508) = CFDictionaryContainsKey(v27, *off_1E798BE08) != 0;
      *(v25 + 511) = CFDictionaryContainsKey(v27, *off_1E798BBD8) != 0;
      *(v25 + 512) = CFDictionaryContainsKey(v27, *off_1E798BC08) != 0;
      *(v25 + 514) = CFDictionaryContainsKey(v27, *off_1E798BCA8) != 0;
      *(v25 + 518) = CFDictionaryContainsKey(v27, *off_1E798BE00) != 0;
      *(v25 + 519) = CFDictionaryContainsKey(v27, *off_1E798BBE0) != 0;
      *(v25 + 515) = CFDictionaryContainsKey(v27, *off_1E798BF98) != 0;
      *(v25 + 520) = CFDictionaryContainsKey(v27, *off_1E798BFB8) != 0;
      *(v25 + 521) = CFDictionaryContainsKey(v27, *off_1E798BE78) != 0;
      *(v25 + 522) = CFDictionaryContainsKey(v27, *off_1E798BD60) != 0;
      Value = CFDictionaryGetValue(v27, *off_1E798BFF0);
      if (Value)
      {
        CFDictionaryGetValue(Value, *off_1E798A160);
        *(v25 + 516) = FigCFEqual() != 0;
      }

      v29 = CFDictionaryGetValue(v27, *off_1E798BE20);
      if (v29)
      {
        CFDictionaryGetValue(v29, *off_1E798A160);
        *(v25 + 513) = FigCFEqual() != 0;
      }

      *(v25 + 517) = CFDictionaryContainsKey(v27, *off_1E798BFF8) != 0;
    }

    *(DerivedStorage + 5656) = -1;
    *(DerivedStorage + 5648) = -1;
    *(DerivedStorage + 5664) = -1;
    *(DerivedStorage + 6304) = 0;
    v30 = FigCoreMotionAlloc(1, 0, 0, 0.033333, 0.0);
    *(DerivedStorage + 48) = v30;
    if (!v30)
    {
      FigSampleBufferProcessorCreateForAutofocus_cold_6();
      v39 = 0;
      goto LABEL_38;
    }

    v31 = CMSimpleQueueCreate(v18, 100, (DerivedStorage + 72));
    if (v31)
    {
      v39 = v31;
      FigSampleBufferProcessorCreateForAutofocus_cold_2();
      goto LABEL_38;
    }

    if (v10)
    {
      CFRetain(v10);
    }

    else
    {
      v33 = FigActivitySchedulerCreateForNewThread();
      if (v33)
      {
        v39 = v33;
        FigSampleBufferProcessorCreateForAutofocus_cold_3();
        goto LABEL_38;
      }

      v10 = a7;
    }

    *(DerivedStorage + 64) = v10;
    v34 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v34)
    {
      v35 = v34(v10, setPropertiesOnStream, 0);
      if (!v35)
      {
        *(DerivedStorage + 532) = 0x3F0000003F000000;
        *(DerivedStorage + 7552) = 1;
        *(DerivedStorage + 9048) = 1;
        *(DerivedStorage + 40) = -1;
        *(DerivedStorage + 18200) = 0;
        *(DerivedStorage + 17736) = 0;
        configureDevice(0, v41);
        if (*(DerivedStorage + 652) || (v36 = [*(DerivedStorage + 8) registerForNotification:*off_1E798B870 listener:0 callback:captureStreamListener], !v36))
        {
          v37 = *(DerivedStorage + 1804);
          if (v37 >= 1)
          {
            v38 = (DerivedStorage + 16616);
            do
            {
              *(v38 - 30) = 0x7FEFFFFFFFFFFFFFLL;
              *v38++ = 0x7FEFFFFFFFFFFFFFLL;
              --v37;
            }

            while (v37);
          }

          v39 = 0;
          *a8 = 0;
          return v39;
        }

        v39 = v36;
        FigSampleBufferProcessorCreateForAutofocus_cold_4();
LABEL_38:
        v40 = *(DerivedStorage + 48);
        if (v40)
        {
          FigCoreMotionRelease(v40);
        }

        return v39;
      }

      v39 = v35;
    }

    else
    {
      v39 = 4294954514;
    }

    FigSampleBufferProcessorCreateForAutofocus_cold_5();
    goto LABEL_38;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigCoreMotionAlloc(int a1, int a2, int a3, float a4, float a5)
{
  v10 = [FigCoreMotionDelegate alloc];
  *&v11 = a4;
  *&v12 = a5;

  return [(FigCoreMotionDelegate *)v10 initWithAccelerometer:a1 != 0 gravityZ:a2 != 0 fusedMotion:a3 != 0 accelUpdateInterval:0 fusedMotionUpdateInterval:v11 motionCallbackThreadPriority:v12];
}

uint64_t configureDevice(uint64_t a1, const __CFDictionary *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = result;
    Value = CFDictionaryGetValue(a2, *off_1E798A9B8);
    v7 = CFDictionaryGetValue(a2, *off_1E798A968);
    v149 = CFDictionaryGetValue(a2, *off_1E798A9E0);
    theDict = CFDictionaryGetValue(a2, *off_1E798A978);
    v146 = CFDictionaryGetValue(a2, *off_1E798A970);
    BOOLean = CFDictionaryGetValue(a2, *off_1E798A988);
    v8 = CFDictionaryGetValue(a2, *off_1E798A9C8);
    *(v5 + 18144) = 0;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    *(v5 + 18152) = 0x100000001;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    if (v8)
    {
      v9 = CFBooleanGetValue(v8) != 0;
    }

    else
    {
      v9 = 0;
    }

    *(v5 + 18200) = v9;
    v10 = CFDictionaryGetValue(a2, *off_1E798A980);
    result = [v10 isEqualToString:@"AEOnly"];
    if ((result & 1) != 0 || (result = [v10 isEqualToString:@"AEAndAF"], result))
    {
      *(v5 + 7473) = 1;
    }

    if (v7)
    {
      result = CFArrayGetCount(v7);
      if (result >= 1)
      {
        v11 = result;
        v12 = 0;
        v13 = *off_1E798A0E8;
        v14 = *off_1E798A0C8;
        v143 = *off_1E798A0E8;
        cf2 = *off_1E798A0E0;
        v135 = *off_1E798A0F8;
        v136 = v7;
        v141 = *off_1E7989E50;
        v142 = *off_1E7989F18;
        v139 = *off_1E798A0C8;
        v140 = result;
        v137 = Value;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
          result = CFEqual(ValueAtIndex, v13);
          if (result)
          {
            goto LABEL_246;
          }

          result = CFEqual(ValueAtIndex, v14);
          if (result)
          {
            goto LABEL_246;
          }

          CameraParametersForPortType = af_sbp_getCameraParametersForPortType();
          v17 = Value ? CFDictionaryGetValue(Value, ValueAtIndex) : 0;
          v18 = theDict ? CFDictionaryGetValue(theDict, ValueAtIndex) : 0;
          v19 = v146 ? CFDictionaryGetValue(v146, ValueAtIndex) : 0;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (!CameraParametersForPortType)
          {
            break;
          }

          v138 = DerivedStorage;
          v148 = v18;
          v21 = *(CameraParametersForPortType + 4);
          bzero(CameraParametersForPortType, 0x4E8uLL);
          *(CameraParametersForPortType + 4) = v21;
          if (ValueAtIndex)
          {
            if (CFEqual(ValueAtIndex, cf2))
            {
              v22 = 1;
            }

            else
            {
              v22 = CFEqual(ValueAtIndex, v135) != 0;
            }

            *(CameraParametersForPortType + 5) = v22;
          }

          if (v17)
          {
            v23 = CFDictionaryGetValue(v17, @"ToneCurvesBlack");
            if (v23)
            {
              CFNumberGetValue(v23, kCFNumberFloatType, (CameraParametersForPortType + 12));
            }

            v24 = CFDictionaryGetValue(v17, @"ToneCurvesS0");
            if (v24)
            {
              CFNumberGetValue(v24, kCFNumberFloatType, (CameraParametersForPortType + 16));
            }

            v25 = CFDictionaryGetValue(v17, @"ToneCurvesS1");
            if (v25)
            {
              CFNumberGetValue(v25, kCFNumberFloatType, (CameraParametersForPortType + 20));
            }

            v26 = CFDictionaryGetValue(v17, @"ToneCurvesWhite");
            if (v26)
            {
              CFNumberGetValue(v26, kCFNumberFloatType, (CameraParametersForPortType + 24));
            }

            v27 = CFDictionaryGetValue(v17, @"ToneCurvesLinearity");
            if (v27)
            {
              CFNumberGetValue(v27, kCFNumberFloatType, (CameraParametersForPortType + 28));
            }

            v28 = CFDictionaryGetValue(v17, @"SaturationMin");
            if (v28)
            {
              CFNumberGetValue(v28, kCFNumberFloatType, (CameraParametersForPortType + 32));
            }

            v29 = CFDictionaryGetValue(v17, @"SaturationMax");
            if (v29)
            {
              CFNumberGetValue(v29, kCFNumberFloatType, (CameraParametersForPortType + 36));
            }

            v30 = CFDictionaryGetValue(v17, @"AEConvergenceVideo");
            if (v30)
            {
              CFNumberGetValue(v30, kCFNumberSInt32Type, (CameraParametersForPortType + 44));
            }

            v31 = CFDictionaryGetValue(v17, @"AEConvergenceStill");
            if (v31)
            {
              CFNumberGetValue(v31, kCFNumberSInt32Type, (CameraParametersForPortType + 48));
            }

            v32 = CFDictionaryGetValue(v17, @"AELockDoNotLockLTM");
            if (v32)
            {
              CFNumberGetValue(v32, kCFNumberCharType, (CameraParametersForPortType + 52));
            }

            else
            {
              *(CameraParametersForPortType + 52) = 0;
            }

            v35 = CFDictionaryGetValue(v17, @"FocusScanPositions");
            if (v35)
            {
              CFNumberGetValue(v35, kCFNumberIntType, (CameraParametersForPortType + 68));
            }

            v36 = CFDictionaryGetValue(v17, @"ContinuousAutofocusVideo");
            if (v36)
            {
              CFNumberGetValue(v36, kCFNumberCharType, (CameraParametersForPortType + 53));
            }

            v37 = CFDictionaryGetValue(v17, @"PeakTrackingVideoFocusSpeed");
            if (v37)
            {
              CFNumberGetValue(v37, kCFNumberIntType, (CameraParametersForPortType + 92));
            }

            v38 = CFDictionaryGetValue(v17, @"MatrixFocus");
            if (v38)
            {
              CFNumberGetValue(v38, kCFNumberIntType, (CameraParametersForPortType + 84));
            }

            v39 = CFDictionaryGetValue(v17, @"FocusScanPeakPrediction");
            if (v39)
            {
              CFNumberGetValue(v39, kCFNumberIntType, (CameraParametersForPortType + 72));
            }

            v40 = CFDictionaryGetValue(v17, @"PreFlashFocusThreshold");
            if (v40)
            {
              CFNumberGetValue(v40, kCFNumberIntType, (CameraParametersForPortType + 76));
            }

            v41 = CFDictionaryGetValue(v17, @"FocusScanDuringPreFlash");
            if (v41)
            {
              CFNumberGetValue(v41, kCFNumberIntType, (CameraParametersForPortType + 80));
            }

            v42 = CFDictionaryGetValue(v17, @"UseTapToFocusPixels");
            if (v42)
            {
              CFNumberGetValue(v42, kCFNumberCharType, (CameraParametersForPortType + 55));
            }

            v43 = CFDictionaryGetValue(v17, @"UseFocusNow");
            if (v43)
            {
              CFNumberGetValue(v43, kCFNumberCharType, (CameraParametersForPortType + 56));
            }

            v44 = CFDictionaryGetValue(v17, @"FirmwareControlledAutoFocus");
            if (v44)
            {
              CFNumberGetValue(v44, kCFNumberCharType, (CameraParametersForPortType + 58));
            }

            v45 = CFDictionaryGetValue(v17, @"FocusMappingKnee");
            if (v45)
            {
              CFNumberGetValue(v45, kCFNumberFloatType, (CameraParametersForPortType + 96));
            }

            v46 = CFDictionaryGetValue(v17, @"FocusMappingSlope0");
            if (v46)
            {
              CFNumberGetValue(v46, kCFNumberFloatType, (CameraParametersForPortType + 100));
            }

            v47 = CFDictionaryGetValue(v17, @"FocusMappingSlope1");
            if (v47)
            {
              CFNumberGetValue(v47, kCFNumberFloatType, (CameraParametersForPortType + 104));
            }

            v48 = CFDictionaryGetValue(v17, @"HorizontalScanStartPosition");
            if (v48)
            {
              CFNumberGetValue(v48, kCFNumberIntType, (CameraParametersForPortType + 64));
            }

            else
            {
              *(CameraParametersForPortType + 64) = 31;
            }

            v49 = CFDictionaryGetValue(v17, @"StillInfinityPosition");
            if (v49)
            {
              CFNumberGetValue(v49, kCFNumberSInt32Type, (CameraParametersForPortType + 120));
            }

            v50 = CFDictionaryGetValue(v17, @"VideoInfinityPosition");
            if (v50)
            {
              CFNumberGetValue(v50, kCFNumberSInt32Type, (CameraParametersForPortType + 124));
            }

            v51 = CFDictionaryGetValue(v17, @"ExposureWindowSize");
            if (v51)
            {
              CFNumberGetValue(v51, kCFNumberFloatType, (CameraParametersForPortType + 40));
            }

            *(CameraParametersForPortType + 912) = 1046562734;
            v52 = CFDictionaryGetValue(v17, @"FaceAEMaxFaceWeight");
            if (v52)
            {
              CFNumberGetValue(v52, kCFNumberFloatType, (CameraParametersForPortType + 916));
            }

            v53 = CFDictionaryGetValue(v17, @"FaceAELowKeyCorrection");
            if (v53)
            {
              CFNumberGetValue(v53, kCFNumberFloatType, (CameraParametersForPortType + 928));
            }

            *(CameraParametersForPortType + 920) = *(CameraParametersForPortType + 928);
            v54 = CFDictionaryGetValue(v17, @"PanoramaFaceAELowKeyCorrection");
            if (v54)
            {
              CFNumberGetValue(v54, kCFNumberFloatType, (CameraParametersForPortType + 920));
            }

            v55 = CFDictionaryGetValue(v17, @"FaceAEHighKeyCorrection");
            if (v55)
            {
              CFNumberGetValue(v55, kCFNumberFloatType, (CameraParametersForPortType + 932));
            }

            *(CameraParametersForPortType + 924) = *(CameraParametersForPortType + 932);
            v56 = CFDictionaryGetValue(v17, @"PanoramaFaceAEHighKeyCorrection");
            if (v56)
            {
              CFNumberGetValue(v56, kCFNumberFloatType, (CameraParametersForPortType + 924));
            }

            v57 = CFDictionaryGetValue(v17, @"FaceAEDarkOutlier");
            if (v57)
            {
              CFNumberGetValue(v57, kCFNumberFloatType, (CameraParametersForPortType + 948));
            }

            v58 = CFDictionaryGetValue(v17, @"FaceAEBrightOutlier");
            if (v58)
            {
              CFNumberGetValue(v58, kCFNumberFloatType, (CameraParametersForPortType + 952));
            }

            v59 = CFDictionaryGetValue(v17, @"FaceAEVariance");
            if (v59)
            {
              CFNumberGetValue(v59, kCFNumberFloatType, (CameraParametersForPortType + 956));
            }

            v60 = CFDictionaryGetValue(v17, @"FaceAELowQuantile");
            if (v60)
            {
              CFNumberGetValue(v60, kCFNumberFloatType, (CameraParametersForPortType + 936));
            }

            v61 = CFDictionaryGetValue(v17, @"FaceAECenterQuantile");
            if (v61)
            {
              CFNumberGetValue(v61, kCFNumberFloatType, (CameraParametersForPortType + 940));
            }

            v62 = CFDictionaryGetValue(v17, @"FaceAEHighQuantile");
            if (v62)
            {
              CFNumberGetValue(v62, kCFNumberFloatType, (CameraParametersForPortType + 944));
            }

            v63 = CFDictionaryGetValue(v17, @"panoramaMaxIntegrationTime");
            if (v63)
            {
              CFNumberGetValue(v63, kCFNumberSInt32Type, (CameraParametersForPortType + 960));
            }

            v64 = CFDictionaryGetValue(v17, @"panoramaAEMaxGain");
            if (v64)
            {
              CFNumberGetValue(v64, kCFNumberSInt32Type, (CameraParametersForPortType + 964));
            }

            v65 = CFDictionaryGetValue(v17, @"panoramaAEMinGain");
            if (v65)
            {
              CFNumberGetValue(v65, kCFNumberSInt32Type, (CameraParametersForPortType + 968));
            }

            v66 = CFDictionaryGetValue(v17, @"panoramaAEGainThresholdForFlickerZoneIntegrationTimeTransition");
            if (v66)
            {
              CFNumberGetValue(v66, kCFNumberSInt32Type, (CameraParametersForPortType + 972));
            }

            v67 = CFDictionaryGetValue(v17, @"panoramaAEIntegrationTimeForUnityGainToMinGainTransition");
            if (v67)
            {
              CFNumberGetValue(v67, kCFNumberSInt32Type, (CameraParametersForPortType + 976));
            }

            v68 = CFDictionaryGetValue(v17, @"panoramaAEMode");
            if (v68)
            {
              CFNumberGetValue(v68, kCFNumberSInt32Type, (CameraParametersForPortType + 980));
            }

            v69 = CFDictionaryGetValue(v17, @"panoramaAEUpperExposureDelta");
            if (v69)
            {
              CFNumberGetValue(v69, kCFNumberSInt32Type, (CameraParametersForPortType + 984));
            }

            v70 = CFDictionaryGetValue(v17, @"panoramaAELowerExposureDelta");
            if (v70)
            {
              CFNumberGetValue(v70, kCFNumberSInt32Type, (CameraParametersForPortType + 988));
            }

            v71 = CFDictionaryGetValue(v17, @"panoramaAEMaxPerFrameExposureDelta");
            if (v71)
            {
              CFNumberGetValue(v71, kCFNumberSInt32Type, (CameraParametersForPortType + 992));
            }

            v72 = CFDictionaryGetValue(v17, @"panoramaDoNotLockBLC");
            if (v72)
            {
              CFNumberGetValue(v72, kCFNumberCharType, (CameraParametersForPortType + 996));
            }

            else
            {
              *(CameraParametersForPortType + 996) = 0;
            }

            v73 = CFDictionaryGetValue(v17, @"panoramaDoNotLockLTM");
            if (v73)
            {
              CFNumberGetValue(v73, kCFNumberCharType, (CameraParametersForPortType + 997));
            }

            else
            {
              *(CameraParametersForPortType + 997) = 0;
            }

            v74 = CFDictionaryGetValue(v17, @"panoramaUsePreviewAEConvergenceForRecording");
            if (v74)
            {
              CFNumberGetValue(v74, kCFNumberCharType, (CameraParametersForPortType + 998));
            }

            else
            {
              *(CameraParametersForPortType + 998) = 0;
            }

            v75 = CFDictionaryGetValue(v17, @"SharpnessLightLevel");
            if (v75)
            {
              unpackIntArray(v75, (CameraParametersForPortType + 128), 0xAu);
            }

            v76 = CFDictionaryGetValue(v17, @"SharpnessValue");
            if (v76)
            {
              unpackIntArray(v76, (CameraParametersForPortType + 168), 0xAu);
            }

            v77 = CFDictionaryGetValue(v17, @"SaturationLightLevel");
            if (v77)
            {
              unpackIntArray(v77, (CameraParametersForPortType + 208), 0xAu);
            }

            v78 = CFDictionaryGetValue(v17, @"SaturationValue");
            if (v78)
            {
              unpackIntArray(v78, (CameraParametersForPortType + 248), 0xAu);
            }

            v79 = CFDictionaryGetValue(v17, @"NoiseReductionLightLevel");
            if (v79)
            {
              unpackIntArray(v79, (CameraParametersForPortType + 288), 0xAu);
            }

            v80 = CFDictionaryGetValue(v17, @"NoiseReductionValue");
            if (v80)
            {
              unpackIntArray(v80, (CameraParametersForPortType + 328), 0xAu);
            }

            v81 = CFDictionaryGetValue(v17, @"ColorSuppressionLightLevel");
            if (v81)
            {
              unpackIntArray(v81, (CameraParametersForPortType + 368), 0xAu);
            }

            v82 = CFDictionaryGetValue(v17, @"ColorSuppressionValue");
            if (v82)
            {
              unpackIntArray(v82, (CameraParametersForPortType + 408), 0xAu);
            }

            v83 = CFDictionaryGetValue(v17, @"DynamicRangeCompressionLightLevel");
            if (v83)
            {
              unpackIntArray(v83, (CameraParametersForPortType + 448), 0xAu);
            }

            v84 = CFDictionaryGetValue(v17, @"DynamicRangeCompressionValue");
            if (v84)
            {
              unpackIntArray(v84, (CameraParametersForPortType + 488), 0xAu);
            }

            v85 = CFDictionaryGetValue(v17, @"ToneCurveBlackLightLevel");
            if (v85)
            {
              unpackIntArray(v85, (CameraParametersForPortType + 528), 0xAu);
            }

            v86 = CFDictionaryGetValue(v17, @"ToneCurveBlackValue");
            if (v86)
            {
              unpackIntArray(v86, (CameraParametersForPortType + 568), 0xAu);
            }

            v87 = CFDictionaryGetValue(v17, @"ToneCurveWhiteWeightLightLevel");
            if (v87)
            {
              unpackIntArray(v87, (CameraParametersForPortType + 608), 0xAu);
            }

            v88 = CFDictionaryGetValue(v17, @"ToneCurveWhiteWeightValue");
            if (v88)
            {
              unpackIntArray(v88, (CameraParametersForPortType + 648), 0xAu);
            }

            v89 = CFDictionaryGetValue(v17, @"ToneCurveLinearityLightLevel");
            if (v89)
            {
              unpackIntArray(v89, (CameraParametersForPortType + 688), 0xAu);
            }

            v90 = CFDictionaryGetValue(v17, @"ToneCurveLinearityValue");
            if (v90)
            {
              unpackIntArray(v90, (CameraParametersForPortType + 728), 0xAu);
            }

            v91 = CFDictionaryGetValue(v17, @"ToneCurveStabilityLightLevel");
            if (v91)
            {
              unpackIntArray(v91, (CameraParametersForPortType + 768), 0xAu);
            }

            v92 = CFDictionaryGetValue(v17, @"ToneCurveStabilityValue");
            if (v92)
            {
              unpackIntArray(v92, (CameraParametersForPortType + 808), 0xAu);
            }

            v93 = CFDictionaryGetValue(v17, @"SpatialNoiseFilteringGainLevel");
            if (v93)
            {
              unpackIntArray(v93, (CameraParametersForPortType + 848), 8u);
            }

            v94 = CFDictionaryGetValue(v17, @"SpatialNoiseFilteringValue");
            if (v94)
            {
              unpackIntArray(v94, (CameraParametersForPortType + 880), 8u);
            }

            v95 = v19;
            v96 = CFDictionaryGetValue(v17, @"HDRscene_hist_exp");
            if (v96)
            {
              CFNumberGetValue(v96, kCFNumberFloatType, (CameraParametersForPortType + 1004));
            }

            v97 = a1;
            v98 = CFDictionaryGetValue(v17, @"HDRscene_histIndices");
            if (v98)
            {
              v99 = v98;
              unpackIntArray(v98, (CameraParametersForPortType + 1008), 0x10u);
              *(CameraParametersForPortType + 1000) = CFArrayGetCount(v99);
            }

            v100 = CFDictionaryGetValue(v17, @"HDRscene_histTypes");
            if (v100)
            {
              unpackIntArray(v100, (CameraParametersForPortType + 1072), 0x10u);
            }

            v101 = CFDictionaryGetValue(v17, @"HDRscene_histWeights");
            if (v101)
            {
              v102 = v101;
              Count = CFArrayGetCount(v101);
              v104 = Count >= 0x10 ? 16 : Count;
              if (Count)
              {
                v105 = 0;
                v106 = (CameraParametersForPortType + 1136);
                do
                {
                  v107 = CFArrayGetValueAtIndex(v102, v105);
                  CFNumberGetValue(v107, kCFNumberFloatType, v106);
                  ++v105;
                  v106 += 4;
                }

                while (v104 != v105);
              }
            }

            v108 = CFDictionaryGetValue(v17, @"HDRscene_histOffset");
            if (v108)
            {
              CFNumberGetValue(v108, kCFNumberFloatType, (CameraParametersForPortType + 1200));
            }

            v109 = CFDictionaryGetValue(v17, @"HDRscene_thresh");
            a1 = v97;
            v19 = v95;
            v34 = v148;
            if (v109)
            {
              CFNumberGetValue(v109, kCFNumberFloatType, (CameraParametersForPortType + 1204));
            }

            v110 = CFDictionaryGetValue(v17, @"HDRscene_shadow_thresh");
            v111 = (CameraParametersForPortType + 1208);
            Value = v137;
            if (v110)
            {
              CFNumberGetValue(v110, kCFNumberFloatType, v111);
            }

            else
            {
              *v111 = 2143289344;
            }

            v7 = v136;
            v112 = CFDictionaryGetValue(v17, @"HDRscene_normalizedSNR_thresh");
            if (v112)
            {
              CFNumberGetValue(v112, kCFNumberFloatType, (CameraParametersForPortType + 1212));
            }

            v113 = CFDictionaryGetValue(v17, @"HDRscene_dampingThresh0");
            if (v113)
            {
              CFNumberGetValue(v113, kCFNumberFloatType, (CameraParametersForPortType + 1220));
            }

            v114 = CFDictionaryGetValue(v17, @"HDRscene_dampingThresh1");
            if (v114)
            {
              CFNumberGetValue(v114, kCFNumberFloatType, (CameraParametersForPortType + 1224));
            }

            v115 = CFDictionaryGetValue(v17, @"HDRscene_ScoreVariationThresh");
            if (v115)
            {
              CFNumberGetValue(v115, kCFNumberFloatType, (CameraParametersForPortType + 1228));
            }

            v116 = CFDictionaryGetValue(v17, @"HDRscene_toneLast");
            if (v116)
            {
              CFNumberGetValue(v116, kCFNumberIntType, (CameraParametersForPortType + 1216));
            }

            v117 = CFDictionaryGetValue(v17, @"HDRscene_temporal_buffer_size");
            if (v117)
            {
              CFNumberGetValue(v117, kCFNumberIntType, (CameraParametersForPortType + 1236));
              v118 = *(CameraParametersForPortType + 1236);
              if (v118 >= 30)
              {
                v118 = 30;
              }

              *(CameraParametersForPortType + 1236) = v118;
            }

            v119 = CFDictionaryGetValue(v17, @"HDRscene_temporal_buffer_size_lowlight");
            if (v119)
            {
              CFNumberGetValue(v119, kCFNumberIntType, (CameraParametersForPortType + 1232));
              v120 = *(CameraParametersForPortType + 1232);
              if (v120 >= 30)
              {
                v120 = 30;
              }

              *(CameraParametersForPortType + 1232) = v120;
            }

            v121 = CFDictionaryGetValue(v17, @"HDRscene_temporal_buffer_size_min");
            if (v121)
            {
              CFNumberGetValue(v121, kCFNumberIntType, (CameraParametersForPortType + 1240));
              v122 = *(CameraParametersForPortType + 1240);
              if (v122 >= *(CameraParametersForPortType + 1236))
              {
                v122 = *(CameraParametersForPortType + 1236);
              }

              *(CameraParametersForPortType + 1240) = v122;
            }

            v123 = CFDictionaryGetValue(v17, @"HDRscene_exptimeThresh");
            if (v123)
            {
              CFNumberGetValue(v123, kCFNumberFloatType, (CameraParametersForPortType + 1244));
            }

            v124 = CFDictionaryGetValue(v17, @"ExposureStabilityCount");
            if (v124)
            {
              CFNumberGetValue(v124, kCFNumberIntType, (CameraParametersForPortType + 60));
            }

            v33 = 0;
          }

          else
          {
            v33 = -12780;
            v34 = v148;
          }

          if (v149)
          {
            valuePtr[0] = 0;
            CFNumberGetValue(v149, kCFNumberSInt32Type, valuePtr);
            v125 = valuePtr[0];
            *(CameraParametersForPortType + 88) = valuePtr[0];
            if (v125 >= 120)
            {
              *(CameraParametersForPortType + 44) = FigGetCFPreferenceNumberWithDefault();
            }
          }

          if (BOOLean)
          {
            v126 = CFBooleanGetValue(BOOLean) != 0;
          }

          else
          {
            v126 = 0;
          }

          *(CameraParametersForPortType + 54) = v126;
          if (!v19)
          {
            configureDevice_cold_4();
            return configureDevice_cold_5();
          }

          [objc_msgSend(v19 objectForKeyedSubscript:{v141), "floatValue"}];
          *CameraParametersForPortType = v127;
          [objc_msgSend(v19 objectForKeyedSubscript:{v142), "floatValue"}];
          if (!v34)
          {
            goto LABEL_241;
          }

          v129 = v128;
          v13 = v143;
          if (!CFEqual(ValueAtIndex, cf2) && !CFEqual(ValueAtIndex, v143) && !CFEqual(ValueAtIndex, v135))
          {
            valuePtr[0] = 0;
            v130 = portIndexFromPortType(ValueAtIndex, valuePtr);
            if (v130)
            {
              v33 = v130;
              configureDevice_cold_1();
            }

            else
            {
              v131 = v138 + 56 * valuePtr[0] + 17744;
              CameraCharacterizationData = FigMotionGetCameraCharacterizationData(v34, v17, v129, ValueAtIndex, v131);
              if (CameraCharacterizationData)
              {
                v33 = CameraCharacterizationData;
                configureDevice_cold_2();
              }

              else
              {
                FigCFDictionaryGetBooleanIfPresent();
                *(v131 + 44) = 1065353216;
                if (FigCFDictionaryGetFloatIfPresent() && 1.0 > 0.0)
                {
                  v33 = 0;
                  *(v131 + 44) = 1.0 / 1.0;
                }

                else
                {
                  fig_log_get_emitter();
                  v33 = -12783;
                  FigDebugAssert3();
                }
              }
            }

            v13 = v143;
            Value = v137;
          }

LABEL_242:
          if (v33)
          {
            return configureDevice_cold_5();
          }

          CaptureStreamForPortType = af_sbp_getCaptureStreamForPortType();
          if (!CaptureStreamForPortType)
          {
            return configureDevice_cold_8();
          }

          v134 = CaptureStreamForPortType;
          if (FigImageControl_ToneMapping_ConfigureDevice(a1, CaptureStreamForPortType))
          {
            return configureDevice_cold_6();
          }

          result = FigImageControl_Exposure_ConfigureDevice(a1, v134);
          v14 = v139;
          v11 = v140;
          if (result)
          {
            return configureDevice_cold_7();
          }

LABEL_246:
          if (++v12 == v11)
          {
            return result;
          }
        }

        configureDevice_cold_3(valuePtr);
        v33 = valuePtr[0];
LABEL_241:
        v13 = v143;
        goto LABEL_242;
      }
    }
  }

  return result;
}

uint64_t af_sbp_getCameraParametersForPortType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [*(DerivedStorage + 8) portType];
  if (FigCFEqual())
  {
    return DerivedStorage + 568;
  }

  if (FigCFEqual())
  {
    return DerivedStorage + 1824;
  }

  if (FigCFEqual())
  {
    return DerivedStorage + 3080;
  }

  return 0;
}

unint64_t unpackIntArray(const __CFArray *a1, char *a2, unsigned int a3)
{
  result = CFArrayGetCount(a1);
  if (result >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      result = CFNumberGetValue(ValueAtIndex, kCFNumberIntType, a2);
      a2 += 4;
    }
  }

  return result;
}

uint64_t portIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    portIndexFromPortType_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    portIndexFromPortType_cold_1(&v6);
    return v6;
  }

  if (CFEqual(a1, *off_1E798A0C0))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D8))
  {
    result = 0;
    v5 = 1;
LABEL_17:
    *a2 = v5;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D0))
  {
    result = 0;
    v5 = 2;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0E0))
  {
    result = 0;
    v5 = 3;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0F8))
  {
    result = 0;
    v5 = 4;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0E8))
  {
    result = 0;
    v5 = 5;
    goto LABEL_17;
  }

  if (CFEqual(a1, *off_1E798A0C8))
  {
    result = 0;
    v5 = 6;
    goto LABEL_17;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t af_sbp_getCaptureStreamForPortType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage + 8;
  [*(DerivedStorage + 8) portType];
  if (FigCFEqual())
  {
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = DerivedStorage + 16;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = DerivedStorage + 24;
    return *v1;
  }

  return 0;
}

uint64_t FigImageControl_ToneMapping_ConfigureDevice(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CameraParametersForCaptureStream = af_sbp_getCameraParametersForCaptureStream(a1, a2);
  v6 = CameraParametersForCaptureStream;
  v7 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *values = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = CameraParametersForCaptureStream + 248;
  *keys = 0u;
  v51 = 0u;
  while (*&v8[4 * v7])
  {
    if (++v7 == 10)
    {
      goto LABEL_6;
    }
  }

  if (v7)
  {
LABEL_6:
    keys[0] = *off_1E798BA38;
    v9 = v7;
    values[0] = createCFArrayFromIntArray(CameraParametersForCaptureStream + 208, v7);
    keys[1] = *off_1E798BA30;
    values[1] = createCFArrayFromIntArray(v8, v9);
    LODWORD(v9) = 2;
    goto LABEL_7;
  }

  LODWORD(v9) = 0;
LABEL_7:
  v10 = 0;
  v11 = v6 + 448;
  while (*&v11[4 * v10])
  {
    if (++v10 == 10)
    {
      goto LABEL_12;
    }
  }

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((*(DerivedStorage + 9086) & 1) == 0)
  {
    keys[v9] = *off_1E798BA70;
    v12 = v10;
    values[v9] = createCFArrayFromIntArray(v11, v10);
    v13 = v9 | 1;
    keys[v9 | 1] = *off_1E798BA68;
    LODWORD(v9) = v9 + 2;
    values[v13] = createCFArrayFromIntArray(v6 + 488, v12);
  }

LABEL_14:
  v14 = 0;
  v15 = v6 + 528;
  while (*&v15[4 * v14])
  {
    if (++v14 == 10)
    {
      goto LABEL_19;
    }
  }

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_19:
  keys[v9] = *off_1E798BB70;
  v16 = v14;
  values[v9] = createCFArrayFromIntArray(v15, v14);
  v17 = v9 + 1;
  keys[(v9 + 1)] = *off_1E798BB68;
  LODWORD(v9) = v9 + 2;
  values[v17] = createCFArrayFromIntArray(v6 + 568, v16);
  LODWORD(v14) = 1;
LABEL_20:
  v18 = 0;
  v19 = v6 + 608;
  while (*&v19[4 * v18])
  {
    if (++v18 == 10)
    {
      goto LABEL_25;
    }
  }

  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_25:
  keys[v9] = *off_1E798BBB0;
  v20 = v18;
  values[v9] = createCFArrayFromIntArray(v19, v18);
  v21 = v9 + 1;
  keys[(v9 + 1)] = *off_1E798BBA8;
  LODWORD(v9) = v9 + 2;
  values[v21] = createCFArrayFromIntArray(v6 + 648, v20);
  LODWORD(v14) = 1;
LABEL_26:
  v22 = 0;
  v23 = v6 + 688;
  while (*&v23[4 * v22])
  {
    if (++v22 == 10)
    {
      goto LABEL_31;
    }
  }

  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_31:
  keys[v9] = *off_1E798BB80;
  v24 = v22;
  values[v9] = createCFArrayFromIntArray(v23, v22);
  v25 = v9 + 1;
  keys[(v9 + 1)] = *off_1E798BB78;
  LODWORD(v9) = v9 + 2;
  values[v25] = createCFArrayFromIntArray(v6 + 728, v24);
  LODWORD(v14) = 1;
LABEL_32:
  v26 = 0;
  v27 = v6 + 768;
  while (*&v27[4 * v26])
  {
    if (++v26 == 10)
    {
      goto LABEL_37;
    }
  }

  if (v26)
  {
LABEL_37:
    keys[v9] = *off_1E798BBA0;
    v28 = v26;
    values[v9] = createCFArrayFromIntArray(v27, v26);
    v29 = v9 + 1;
    keys[(v9 + 1)] = *off_1E798BB98;
    LODWORD(v9) = v9 + 2;
    values[v29] = createCFArrayFromIntArray(v6 + 808, v28);
LABEL_38:
    LODWORD(v49[0]) = 1;
    LODWORD(v48[0]) = 260;
    keys[v9] = *off_1E798BB90;
    values[v9] = createCFArrayFromIntArray(v49, 1uLL);
    v30 = v9 + 1;
    keys[(v9 + 1)] = *off_1E798BB88;
    v31 = 0;
    LODWORD(v9) = v9 + 2;
    values[v30] = createCFArrayFromIntArray(v48, 1uLL);
    goto LABEL_39;
  }

  if (v14)
  {
    goto LABEL_38;
  }

  v31 = 1;
LABEL_39:
  v32 = MEMORY[0x1E695E480];
  if (v9 < 1)
  {
    v35 = 0;
  }

  else
  {
    v9 = v9;
    v33 = values;
    v34 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v35 = [a2 setProperty:*off_1E798BFD0 value:v34];
    do
    {
      v36 = *v33++;
      CFRelease(v36);
      --v9;
    }

    while (v9);
    CFRelease(v34);
  }

  if ((v31 & *(DerivedStorage + 508)) == 1)
  {
    v37 = ((*(v6 + 3) * 256.0) + 0.5);
    v38 = *(v6 + 7);
    v46 = ((*(v6 + 6) * 256.0) + 0.5);
    valuePtr = v37;
    HIDWORD(v45) = ((v38 * 256.0) + 0.5);
    LODWORD(v45) = 260;
    v39 = *off_1E798BA78;
    v48[0] = *MEMORY[0x1E695E4D0];
    v40 = *off_1E798B9F0;
    v49[0] = v39;
    v49[1] = v40;
    v41 = *v32;
    v48[1] = CFNumberCreate(*v32, kCFNumberIntType, &valuePtr);
    v49[2] = *off_1E798BBC8;
    v48[2] = CFNumberCreate(v41, kCFNumberIntType, &v46);
    v49[3] = *off_1E798BAB0;
    v48[3] = CFNumberCreate(v41, kCFNumberIntType, &v45 + 4);
    v49[4] = *off_1E798BAE0;
    v48[4] = CFNumberCreate(v41, kCFNumberIntType, &v45);
    v42 = CFDictionaryCreate(v41, v49, v48, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v35 = [a2 setProperty:*off_1E798BE08 value:{v42, v45}];
    for (i = 1; i != 5; ++i)
    {
      CFRelease(v48[i]);
    }

    CFRelease(v42);
  }

  return v35;
}

void *af_sbp_getCameraParametersForCaptureStream(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[1] == a2)
  {
    return DerivedStorage + 71;
  }

  if (DerivedStorage[2] == a2)
  {
    return DerivedStorage + 228;
  }

  if (DerivedStorage[3] == a2)
  {
    return DerivedStorage + 385;
  }

  return 0;
}

CFArrayRef createCFArrayFromIntArray(char *valuePtr, unint64_t numValues)
{
  v2 = numValues;
  memset(v12, 0, sizeof(v12));
  v3 = 10;
  if (numValues < 0xA)
  {
    v3 = numValues;
  }

  v4 = *MEMORY[0x1E695E480];
  if (!numValues)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], v12, 0, MEMORY[0x1E695E9C0]);
  }

  v6 = 0;
  v7 = 8 * v3;
  do
  {
    *(v12 + v6) = CFNumberCreate(v4, kCFNumberIntType, valuePtr);
    v6 += 8;
    valuePtr += 4;
  }

  while (v7 != v6);
  v8 = CFArrayCreate(v4, v12, v2, MEMORY[0x1E695E9C0]);
  if (v2)
  {
    v9 = v12;
    do
    {
      v10 = *v9++;
      CFRelease(v10);
      --v2;
    }

    while (v2);
  }

  return v8;
}

uint64_t FigImageControl_Exposure_ConfigureDevice(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CameraParametersForCaptureStream = af_sbp_getCameraParametersForCaptureStream(a1, a2);
  v6 = *(DerivedStorage + 7468);
  if (!v6)
  {
    v6 = *(DerivedStorage + 7464);
  }

  if (CameraParametersForCaptureStream[235] <= 0.0 || v6 > 1)
  {
    return 0;
  }

  result = setupMeteringFaceDetection(a1, a2, 0);
  if (!result)
  {
    *(DerivedStorage + 7456) = 1;
  }

  return result;
}

uint64_t setupMeteringFaceDetection(uint64_t a1, void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CameraParametersForCaptureStream = af_sbp_getCameraParametersForCaptureStream(a1, a2);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *keys = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  *values = 0u;
  v60 = 0u;
  v57 = 512;
  valuePtr = 184;
  v11 = *(CameraParametersForCaptureStream + 228);
  v55 = vcvts_n_s32_f32(*v11.i32, 0xAuLL);
  v56 = 2048;
  v8 = vcvts_n_s32_f32(CameraParametersForCaptureStream[229], 0xAuLL);
  v53 = vcvts_n_s32_f32(CameraParametersForCaptureStream[232], 0xAuLL);
  v54 = v8;
  v9 = vcvts_n_s32_f32(CameraParametersForCaptureStream[233], 0xAuLL);
  v51 = vcvts_n_s32_f32(CameraParametersForCaptureStream[234], 0xAuLL);
  v52 = v9;
  v10 = vcvts_n_s32_f32(CameraParametersForCaptureStream[235], 0xAuLL);
  v11.i32[0] = CameraParametersForCaptureStream[239];
  v49 = vcvts_n_s32_f32(CameraParametersForCaptureStream[236], 0xAuLL);
  v50 = v10;
  v12 = vcvts_n_s32_f32(CameraParametersForCaptureStream[237], 0xAuLL);
  v47 = vcvts_n_s32_f32(CameraParametersForCaptureStream[238], 0xAuLL);
  v48 = v12;
  if (*(DerivedStorage + 40) == 4)
  {
    v13 = vcvts_n_s32_f32(CameraParametersForCaptureStream[230], 0xAuLL);
    v52 = vcvts_n_s32_f32(CameraParametersForCaptureStream[231], 0xAuLL);
    v53 = v13;
  }

  if ((*(DerivedStorage + 7473) & 1) == 0)
  {
    v54 = 0;
  }

  if (*v11.i32 <= 0.0)
  {
    *v11.i32 = 40.0;
  }

  v45 = v11;
  keys[0] = *off_1E798BA60;
  v14 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  keys[1] = *off_1E798BAB8;
  values[1] = CFNumberCreate(v14, kCFNumberIntType, &v53);
  *&v67 = *off_1E798BA98;
  *&v60 = CFNumberCreate(v14, kCFNumberIntType, &v52);
  *(&v67 + 1) = *off_1E798BB18;
  *(&v60 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v57);
  *&v68 = *off_1E798BAF8;
  *&v61 = CFNumberCreate(v14, kCFNumberIntType, &v56);
  *(&v68 + 1) = *off_1E798BA50;
  *(&v61 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v48);
  *&v69 = *off_1E798BA20;
  *&v62 = CFNumberCreate(v14, kCFNumberIntType, &v47);
  *(&v69 + 1) = *off_1E798BA58;
  *(&v62 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v55);
  *&v70 = *off_1E798BAE8;
  *&v63 = CFNumberCreate(v14, kCFNumberIntType, &v54);
  *(&v70 + 1) = *off_1E798BAC0;
  *(&v63 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v51);
  *&v71 = *off_1E798BA28;
  *&v64 = CFNumberCreate(v14, kCFNumberIntType, &v50);
  *(&v71 + 1) = *off_1E798BAA0;
  v15 = 0;
  *(&v64 + 1) = CFNumberCreate(v14, kCFNumberIntType, &v49);
  v72 = *off_1E798BBC0;
  v16 = vdupq_lane_s32(v45, 0);
  v17 = 0.0;
  v18.i32[1] = 1;
  v37 = v16;
  v19 = v73;
  v20.i64[0] = 0x3F0000003F000000;
  v20.i64[1] = 0x3F0000003F000000;
  v21.i64[0] = 0xC1000000C1000000;
  v21.i64[1] = 0xC1000000C1000000;
  v22.i64[0] = 0xBF000000BF000000;
  v22.i64[1] = 0xBF000000BF000000;
  do
  {
    v23 = 0;
    *v18.i32 = ((v15 + 0.5) + -8.0) * ((v15 + 0.5) + -8.0);
    v38 = vdupq_lane_s32(*v18.i8, 0);
    v18 = xmmword_1ACF06180;
    do
    {
      v42 = v18;
      v24 = vaddq_f32(vaddq_f32(vcvtq_f32_u32(v18), v20), v21);
      v46 = vdivq_f32(vmulq_f32(vmlaq_f32(v38, v24, v24), v22), v16);
      v41 = expf(v46.f32[1]);
      v25.f32[0] = expf(v46.f32[0]);
      v40 = v25.f32[0];
      v26 = v25;
      v26.f32[1] = v41;
      v43 = v26;
      v39 = expf(v46.f32[2]);
      v27 = v43;
      v27.f32[2] = v39;
      v44 = v27;
      v28 = expf(v46.f32[3]);
      v29.i64[0] = 0x400000004;
      v29.i64[1] = 0x400000004;
      v22.i64[0] = 0xBF000000BF000000;
      v22.i64[1] = 0xBF000000BF000000;
      v21.i64[0] = 0xC1000000C1000000;
      v21.i64[1] = 0xC1000000C1000000;
      v16 = v37;
      v30 = v44;
      v30.f32[3] = v28;
      v19[v23] = v30;
      v17 = (((v17 + v40) + v41) + v39) + v28;
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v18 = vaddq_s32(v42, v29);
      ++v23;
    }

    while (v23 != 4);
    ++v15;
    v19 += 4;
  }

  while (v15 != 16);
  v31 = 0;
  v32 = 16384.0 / v17;
  if (roundf((16384.0 / v17) * v74) > 255.0)
  {
    v32 = 255.0 / v74;
  }

  do
  {
    bytes[v31] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v73[4 * v31], v32))), vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v73[4 * v31 + 1], v32)))), vuzp1q_s16(vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v73[4 * v31 + 2], v32))), vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v73[4 * v31 + 3], v32)))));
    ++v31;
  }

  while (v31 != 16);
  v65 = CFDataCreate(v14, bytes, 256);
  v33 = CFDictionaryCreate(v14, keys, values, 13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a3)
  {
    if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD8, v33))
    {
      setupMeteringFaceDetection_cold_3();
    }

    v34 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC08, *off_1E798BB00);
    if (v34)
    {
      setupMeteringFaceDetection_cold_4();
    }
  }

  else
  {
    if ([a2 setProperty:*off_1E798BBD8 value:v33])
    {
      setupMeteringFaceDetection_cold_1();
    }

    v34 = [a2 setProperty:*off_1E798BC08 value:{*off_1E798BB00, 0x100000000, 0x300000002}];
    if (v34)
    {
      setupMeteringFaceDetection_cold_2();
    }
  }

  for (i = 0; i != 13; ++i)
  {
    CFRelease(values[i]);
  }

  CFRelease(v33);
  return v34;
}

uint64_t accelerometerDataCallback(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [a2 managingGravity];
    v5 = *(v3 + 16);
    LODWORD(v6) = *v3;
    LODWORD(v7) = *(v3 + 4);
    LODWORD(v8) = *(v3 + 8);
    if (v4)
    {

      return [a2 didUpdateGravity:v6 time:{v7, v8, v5}];
    }

    else
    {

      return [a2 didUpdateAcceleration:v6 time:{v7, v8, v5}];
    }
  }

  return result;
}

uint64_t setProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v132 = 0.0;
  v131 = 0.0;
  valuePtr = 0;
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"AutoExposure"))
  {
    v8 = *(v7 + 608);
    if (v8 <= 0.0)
    {
      v8 = 0.5;
    }

    *&valuePtr = v8;
    *(&valuePtr + 1) = v8;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"w");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
      }

      v10 = CFDictionaryGetValue(a3, @"h");
      if (v10)
      {
        CFNumberGetValue(v10, kCFNumberFloatType, &valuePtr);
      }

      v132 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v131 = (1.0 - *&valuePtr) * 0.5;
      v11 = CFDictionaryGetValue(a3, @"x");
      if (v11)
      {
        CFNumberGetValue(v11, kCFNumberFloatType, &v132);
      }

      v12 = CFDictionaryGetValue(a3, @"y");
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberFloatType, &v131);
      }
    }

    else
    {
      v132 = (1.0 - v8) * 0.5;
      v131 = v132;
    }

    FigImageControl_AutoExposure(a1, ((v132 * 1000.0) + 0.5), ((v131 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
    return 0;
  }

  if (CFEqual(a2, @"FlashExposure"))
  {
    valuePtr = 0x3F0000003F000000;
    if (a3)
    {
      v13 = CFDictionaryGetValue(a3, @"w");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr + 4);
      }

      v14 = CFDictionaryGetValue(a3, @"h");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberFloatType, &valuePtr);
      }

      v132 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v131 = (1.0 - *&valuePtr) * 0.5;
      v15 = CFDictionaryGetValue(a3, @"x");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberFloatType, &v132);
      }

      v16 = CFDictionaryGetValue(a3, @"y");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberFloatType, &v131);
      }
    }

    else
    {
      v132 = 0.25;
      v131 = 0.25;
    }

    FigImageControl_FlashMetering(a1, ((v132 * 1000.0) + 0.5), ((v131 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
    return 0;
  }

  if (CFEqual(a2, @"ContinuousAutoFocus"))
  {
    LOBYTE(v125) = *(v7 + 40) == 0;
    LOBYTE(v124) = 0;
    v17 = *(MEMORY[0x1E695F050] + 16);
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v17;
    v126 = 0;
    v128 = 1.0;
    v129 = 0.0;
    valuePtr = 0x3F0000003F000000;
    v132 = 0.25;
    v131 = 0.25;
    af_sbp_getFocusParametersFromDictionary(a3, &v129, &v128, &v124, &v125, &rect, &v126);
    if (CGRectIsNull(rect))
    {
      x = v132;
      width = *(&valuePtr + 1);
      y = v131;
      LODWORD(height) = valuePtr;
    }

    else
    {
      x = rect.origin.x;
      v132 = x;
      y = rect.origin.y;
      width = rect.size.width;
      v131 = y;
      height = rect.size.height;
      valuePtr = __PAIR64__(LODWORD(width), LODWORD(height));
    }

    return FigImageControl_ContinuousAutoFocus(a1, ((x * 1000.0) + 0.5), ((y * 1000.0) + 0.5), ((width * 1000.0) + 0.5), ((height * 1000.0) + 0.5), llroundf(v129 * 255.0), llroundf(v128 * 255.0), v124, LOBYTE(v125), v126);
  }

  if (!CFEqual(a2, @"ContinuousAutoFocusWithSmoothFocus"))
  {
    if (CFEqual(a2, @"FocusPreset"))
    {
      if (CFEqual(a3, @"Still"))
      {
        v26 = *(v7 + 680);
        v27 = off_1E798AD98;
      }

      else if (CFEqual(a3, @"Video"))
      {
        v26 = *(v7 + 680);
        v27 = off_1E798ADB0;
      }

      else if (CFEqual(a3, @"CinematicVideo"))
      {
        *(v7 + 625) = 0;
        v26 = *(v7 + 680);
        v27 = off_1E798ADB8;
      }

      else
      {
        v41 = CFEqual(a3, @"TimeLapse");
        v26 = *(v7 + 680);
        if (!v41)
        {
          if (v26)
          {
            CFRelease(*(v7 + 680));
            a3 = 0;
            *(v7 + 680) = 0;
            return a3;
          }

          return 0;
        }

        v27 = off_1E798ADA8;
      }

      v42 = *v27;
      *(v7 + 680) = *v27;
      if (v42)
      {
        CFRetain(v42);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      return 0;
    }

    if (!a3)
    {
      return 4294954516;
    }

    if (CFEqual(a2, @"SpotMeteredExposure"))
    {
      valuePtr = 0x3F0000003F000000;
      v28 = CFDictionaryGetValue(a3, @"w");
      if (v28)
      {
        CFNumberGetValue(v28, kCFNumberFloatType, &valuePtr + 4);
      }

      v29 = CFDictionaryGetValue(a3, @"h");
      if (v29)
      {
        CFNumberGetValue(v29, kCFNumberFloatType, &valuePtr);
      }

      v132 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v131 = (1.0 - *&valuePtr) * 0.5;
      v30 = CFDictionaryGetValue(a3, @"x");
      if (v30)
      {
        CFNumberGetValue(v30, kCFNumberFloatType, &v132);
      }

      v31 = CFDictionaryGetValue(a3, @"y");
      if (v31)
      {
        CFNumberGetValue(v31, kCFNumberFloatType, &v131);
      }

      *(v7 + 5496) = 0;
      FigImageControl_SpotMetering(a1, ((v132 * 1000.0) + 0.5), ((v131 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
      return 0;
    }

    if (CFEqual(a2, @"SpotMeteredExposureAreaOfInterest"))
    {
      memset(&rect, 0, sizeof(rect));
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v33 = (CGRectGetMinX(rect) * 1000.0 + 0.5);
        v34 = (CGRectGetMinY(rect) * 1000.0 + 0.5);
        v35 = (CGRectGetWidth(rect) * 1000.0 + 0.5);
        v36 = CGRectGetHeight(rect);
        FigImageControl_SetSpotMeteringAreaOfInterest(a1, v33, v34, v35, (v36 * 1000.0 + 0.5));
        return 0;
      }

      return 4294954516;
    }

    if (CFEqual(a2, @"FusionFaceDetectionExposure"))
    {
      valuePtr = 0x3F0000003F000000;
      v37 = CFDictionaryGetValue(a3, @"w");
      if (v37)
      {
        CFNumberGetValue(v37, kCFNumberFloatType, &valuePtr + 4);
      }

      v38 = CFDictionaryGetValue(a3, @"h");
      if (v38)
      {
        CFNumberGetValue(v38, kCFNumberFloatType, &valuePtr);
      }

      v132 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v131 = (1.0 - *&valuePtr) * 0.5;
      v39 = CFDictionaryGetValue(a3, @"x");
      if (v39)
      {
        CFNumberGetValue(v39, kCFNumberFloatType, &v132);
      }

      v40 = CFDictionaryGetValue(a3, @"y");
      if (v40)
      {
        CFNumberGetValue(v40, kCFNumberFloatType, &v131);
      }

      *(v7 + 5496) = 0;
      FigImageControl_FusionFaceDetectionMetering(a1, ((v132 * 1000.0) + 0.5), ((v131 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
      return 0;
    }

    if (CFEqual(a2, @"FusionFaceDetectionExposureAreaOfInterest"))
    {
      valuePtr = 0x3F0000003F000000;
      v43 = CFDictionaryGetValue(a3, @"w");
      if (v43)
      {
        CFNumberGetValue(v43, kCFNumberFloatType, &valuePtr + 4);
      }

      v44 = CFDictionaryGetValue(a3, @"h");
      if (v44)
      {
        CFNumberGetValue(v44, kCFNumberFloatType, &valuePtr);
      }

      v132 = (1.0 - *(&valuePtr + 1)) * 0.5;
      v131 = (1.0 - *&valuePtr) * 0.5;
      v45 = CFDictionaryGetValue(a3, @"x");
      if (v45)
      {
        CFNumberGetValue(v45, kCFNumberFloatType, &v132);
      }

      v46 = CFDictionaryGetValue(a3, @"y");
      if (v46)
      {
        CFNumberGetValue(v46, kCFNumberFloatType, &v131);
      }

      *(v7 + 5496) = 0;
      FigImageControl_SetFusionFaceDetectionMeteringAreaOfInterest(a1, ((v132 * 1000.0) + 0.5), ((v131 * 1000.0) + 0.5), ((*(&valuePtr + 1) * 1000.0) + 0.5), ((*&valuePtr * 1000.0) + 0.5));
      return 0;
    }

    if (CFEqual(a2, @"AutoExposureAreaOfInterest"))
    {
      memset(&rect, 0, sizeof(rect));
      v47 = CFDictionaryGetTypeID();
      if (v47 == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v48 = (CGRectGetMinX(rect) * 1000.0 + 0.5);
        v49 = (CGRectGetMinY(rect) * 1000.0 + 0.5);
        v50 = (CGRectGetWidth(rect) * 1000.0 + 0.5);
        v51 = CGRectGetHeight(rect);
        FigImageControl_SetAutoExposureAreaOfInterest(a1, v48, v49, v50, (v51 * 1000.0 + 0.5));
        return 0;
      }

      return 4294954516;
    }

    if (CFEqual(a2, @"ManualExposure"))
    {
      v128 = 1.0;
      v129 = 0.0;
      v124 = 0;
      v125 = 0.033333;
      v126 = 0;
      rect.origin.x = 0.0;
      v52 = CFDictionaryGetValue(a3, @"IntegrationTime");
      if (v52)
      {
        CFNumberGetValue(v52, kCFNumberFloatType, &v125);
      }

      v53 = CFDictionaryGetValue(a3, @"Gain");
      if (v53)
      {
        CFNumberGetValue(v53, kCFNumberFloatType, &v128);
      }

      v54 = CFDictionaryGetValue(a3, *off_1E798A1C8);
      if (v54)
      {
        CFNumberGetValue(v54, kCFNumberSInt32Type, &v124);
      }

      v55 = CFDictionaryGetValue(a3, @"ManualExposureMinFrameRate");
      if (v55)
      {
        CFNumberGetValue(v55, kCFNumberDoubleType, &rect);
      }

      v56 = CFDictionaryGetValue(a3, @"ManualExposureMaxFrameRate");
      if (v56)
      {
        CFNumberGetValue(v56, kCFNumberDoubleType, &v126);
      }

      v57 = CFDictionaryGetValue(a3, @"ISO");
      if (v57)
      {
        CFNumberGetValue(v57, kCFNumberFloatType, &v129);
        FigImageControl_ManualExposureWithISO(v125, rect.origin.x, *&v126, v129, a1, v124);
      }

      else
      {
        FigImageControl_ManualExposure(v125, v128);
      }

      return 0;
    }

    if (CFEqual(a2, @"ExposureBias"))
    {
      LODWORD(rect.origin.x) = 0;
      LODWORD(v126) = 0;
      v58 = CFDictionaryGetTypeID();
      if (v58 == CFGetTypeID(a3))
      {
        v59 = CFDictionaryGetValue(a3, *off_1E798BE20);
        if (v59)
        {
          v60 = v59;
          v61 = CFGetTypeID(v59);
          if (v61 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v60, kCFNumberFloatType, &rect);
          }
        }

        v62 = CFDictionaryGetValue(a3, *off_1E798A1C8);
        if (v62)
        {
          v63 = v62;
          v64 = CFGetTypeID(v62);
          if (v64 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v63, kCFNumberSInt32Type, &v126);
            v65 = v126;
LABEL_127:
            FigImageControl_SetExposureBias(a1, v65, *&rect.origin.x);
            return 0;
          }
        }
      }

      else
      {
        v67 = CFNumberGetTypeID();
        if (v67 == CFGetTypeID(a3))
        {
          CFNumberGetValue(a3, kCFNumberFloatType, &rect);
        }

        else
        {
          fig_log_get_emitter();
          a3 = FigSignalErrorAtGM();
          if (a3)
          {
            return a3;
          }
        }
      }

      v65 = 0;
      goto LABEL_127;
    }

    if (CFEqual(a2, @"ExposureConvergenceSpeed"))
    {
      LODWORD(rect.origin.x) = 1048576000;
      v66 = CFNumberGetTypeID();
      if (v66 == CFGetTypeID(a3))
      {
        CFNumberGetValue(a3, kCFNumberFloatType, &rect);
      }

      return FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
    }

    if (CFEqual(a2, @"ExposureStabilityZone"))
    {
      LODWORD(rect.origin.x) = 1028443341;
      v68 = CFNumberGetTypeID();
      if (v68 == CFGetTypeID(a3))
      {
        CFNumberGetValue(a3, kCFNumberFloatType, &rect);
        v69 = *&rect.origin.x;
      }

      else
      {
        v69 = 0.05;
      }

      return FigImageControl_SetExposureStabilityZone(a1, 0, v69);
    }

    if (CFEqual(a2, @"ExposureLock"))
    {
      FigImageControl_LockExposure();
      return 0;
    }

    if (CFEqual(a2, @"ContinuousAutoFocusAreaOfInterest"))
    {
      memset(&rect, 0, sizeof(rect));
      v70 = CFDictionaryGetTypeID();
      if (v70 == CFGetTypeID(a3) && CGRectMakeWithDictionaryRepresentation(a3, &rect))
      {
        v71 = (CGRectGetMinX(rect) * 1000.0 + 0.5);
        v72 = (CGRectGetMinY(rect) * 1000.0 + 0.5);
        v73 = (CGRectGetWidth(rect) * 1000.0 + 0.5);
        v74 = CGRectGetHeight(rect);
        return FigImageControl_SetContinuousAutoFocusAreaOfInterest(a1, v71, v72, v73, (v74 * 1000.0 + 0.5));
      }

      return 4294954516;
    }

    if (CFEqual(a2, @"ContinuousAutoFocusAreaOfInterestByPortType"))
    {

      return FigImageControl_SetContinuousAutoFocusAreaOfInterestByPortType(a1, a3);
    }

    if (CFEqual(a2, @"ContinuousAutoFocusUseStrictAreaOfInterest"))
    {
      v75 = CFGetTypeID(a3);
      if (v75 == CFBooleanGetTypeID())
      {
        v76 = CFBooleanGetValue(a3);
        a3 = 0;
        *(v7 + 561) = v76 != 0;
        return a3;
      }

      goto LABEL_149;
    }

    if (CFEqual(a2, @"FocusScan"))
    {
      LOBYTE(v125) = *(v7 + 40) == 0;
      LOBYTE(v124) = 0;
      v77 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v77;
      v126 = 0;
      v128 = 1.0;
      v129 = 0.0;
      valuePtr = 0x3F0000003F000000;
      v132 = 0.25;
      v131 = 0.25;
      af_sbp_getFocusParametersFromDictionary(a3, &v129, &v128, &v124, &v125, &rect, &v126);
      if (CGRectIsNull(rect))
      {
        v78 = v132;
        v80 = *(&valuePtr + 1);
        v79 = v131;
        LODWORD(v81) = valuePtr;
      }

      else
      {
        v78 = rect.origin.x;
        v132 = v78;
        v79 = rect.origin.y;
        v80 = rect.size.width;
        v131 = v79;
        v81 = rect.size.height;
        valuePtr = __PAIR64__(LODWORD(v80), LODWORD(v81));
      }

      *(v7 + 5496) = 0;
      FigImageControl_FocusScan(a1, (v78 * 1000.0), (v79 * 1000.0), (v80 * 1000.0), (v81 * 1000.0), llroundf(v129 * 255.0), llroundf(v128 * 255.0), v124, LOBYTE(v125), v126);
      return 0;
    }

    if (CFEqual(a2, @"FocusLock"))
    {
      FigImageControl_LockFocus();
      return 0;
    }

    if (CFEqual(a2, @"ManualFocus"))
    {
      LODWORD(rect.origin.x) = 0;
      LODWORD(v126) = 0;
      v82 = CFDictionaryGetTypeID();
      if (v82 == CFGetTypeID(a3))
      {
        v83 = CFDictionaryGetValue(a3, *off_1E798AEB8);
        if (v83)
        {
          v84 = v83;
          v85 = CFGetTypeID(v83);
          if (v85 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v84, kCFNumberSInt32Type, &rect);
          }
        }

        v86 = CFDictionaryGetValue(a3, *off_1E798A1C8);
        if (v86)
        {
          v87 = v86;
          v88 = CFGetTypeID(v86);
          if (v88 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v87, kCFNumberSInt32Type, &v126);
            v89 = v126;
LABEL_170:
            FigImageControl_ManualFocus(a1, SLODWORD(rect.origin.x), v89);
            return 0;
          }
        }
      }

      else
      {
        v91 = CFNumberGetTypeID();
        if (v91 == CFGetTypeID(a3))
        {
          v129 = 0.0;
          CFNumberGetValue(a3, kCFNumberFloatType, &v129);
          v89 = 0;
          LODWORD(rect.origin.x) = (v129 * 255.0);
          goto LABEL_170;
        }
      }

      v89 = 0;
      goto LABEL_170;
    }

    if (CFEqual(a2, @"AutofocusProcessor_VideoMode"))
    {
      if (CFEqual(a3, @"Mode_StillPreview"))
      {
        v90 = 0;
      }

      else if (CFEqual(a3, @"Mode_VideoPreview"))
      {
        v90 = 1;
      }

      else
      {
        if (CFEqual(a3, @"Mode_VideoRecording"))
        {
          v98 = *(v7 + 40);
          v94 = (v7 + 40);
          if (v98 == 2)
          {
            a3 = 0;
            v90 = 2;
            goto LABEL_181;
          }

          v90 = 2;
          FigImageControl_VideoModeChange(a1, 2u);
          v96 = MEMORY[0x1E695E4D0];
          goto LABEL_179;
        }

        if (CFEqual(a3, @"Mode_Conference"))
        {
          v90 = 3;
        }

        else if (CFEqual(a3, @"Mode_Panorama"))
        {
          v90 = 4;
        }

        else if (CFEqual(a3, @"Mode_TimeLapsePreview"))
        {
          v90 = 5;
        }

        else if (CFEqual(a3, @"Mode_TimeLapseCapture"))
        {
          v90 = 6;
        }

        else
        {
          v90 = 0;
        }
      }

      v95 = *(v7 + 40);
      v94 = (v7 + 40);
      if (v90 == v95 || (FigImageControl_VideoModeChange(a1, v90), *v94 != 2))
      {
        a3 = 0;
        goto LABEL_181;
      }

      v96 = MEMORY[0x1E695E4C0];
LABEL_179:
      a3 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C2A8, *v96);
LABEL_181:
      *v94 = v90;
      return a3;
    }

    v92 = (v7 + 4336);
    if (CFEqual(a2, @"MonitorSubjectArea"))
    {
      v93 = CFEqual(a3, *MEMORY[0x1E695E4D0]) != 0;
      if (*v92 != v93)
      {
        a3 = 0;
        *(v7 + 5496) = 0;
        *v92 = v93;
        return a3;
      }

      return 0;
    }

    if (CFEqual(a2, @"ProvidesStortorgetMetadata"))
    {
      v97 = CFEqual(a3, *MEMORY[0x1E695E4D0]) != 0;
      if (*(v7 + 18160) != v97)
      {
        a3 = 0;
        *(v7 + 18160) = v97;
        return a3;
      }

      return 0;
    }

    if (CFEqual(a2, @"FaceDetectionMode"))
    {
      *(v7 + 7580) = 0;
      if (CFEqual(a3, @"Disable"))
      {
        *(v7 + 560) = 0;
LABEL_191:
        v99 = a1;
        v100 = 0;
LABEL_208:
        FigImageControl_SetUseFaceLocationForMetering(v99, v100);
        return 0;
      }

      if (CFEqual(a3, @"AEOnly"))
      {
        *(v7 + 560) = 0;
      }

      else
      {
        if (CFEqual(a3, @"AFOnly"))
        {
          *(v7 + 560) = 1;
          goto LABEL_191;
        }

        if (!CFEqual(a3, @"AEAndAF"))
        {
          return 4294954516;
        }

        *(v7 + 560) = 1;
      }

      v99 = a1;
      v100 = 1;
      goto LABEL_208;
    }

    if (CFEqual(a2, @"WhiteBalanceGains"))
    {
      v101 = CFGetTypeID(a3);
      if (v101 == CFDictionaryGetTypeID())
      {
        LOWORD(v126) = 0;
        LOWORD(v129) = 0;
        LOWORD(v128) = 0;
        LODWORD(rect.origin.x) = 0;
        v102 = CFDictionaryGetValue(a3, *off_1E798AED0);
        if (v102)
        {
          CFNumberGetValue(v102, kCFNumberSInt16Type, &v126);
        }

        v103 = CFDictionaryGetValue(a3, *off_1E798AEC8);
        if (v103)
        {
          CFNumberGetValue(v103, kCFNumberSInt16Type, &v129);
        }

        v104 = CFDictionaryGetValue(a3, *off_1E798AEC0);
        if (v104)
        {
          CFNumberGetValue(v104, kCFNumberSInt16Type, &v128);
        }

        v105 = CFDictionaryGetValue(a3, *off_1E798A1C8);
        if (v105)
        {
          CFNumberGetValue(v105, kCFNumberSInt32Type, &rect);
          x_low = LODWORD(rect.origin.x);
        }

        else
        {
          x_low = 0;
        }

        return FigImageControl_ManualWhiteBalanceGains(a1, v126, SLOWORD(v129), SLOWORD(v128), x_low);
      }

      goto LABEL_149;
    }

    if (CFEqual(a2, @"AutoWhiteBalanceLock"))
    {
      v107 = CFGetTypeID(a3);
      if (v107 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(a3))
        {

          return FigImageControl_LockWhiteBalance();
        }

        else
        {

          return FigImageControl_UnlockWhiteBalance();
        }
      }

      goto LABEL_149;
    }

    if (CFEqual(a2, @"HDRSceneDetectionEnabled"))
    {
      v108 = CFBooleanGetValue(a3) != 0;

      return FigImageControl_ConfigureHDRSceneDetection(a1, v108);
    }

    if (CFEqual(a2, @"HDRLowLightDetectionDisabled"))
    {
      v109 = CFGetTypeID(a3);
      if (v109 == CFBooleanGetTypeID())
      {
        v110 = CFBooleanGetValue(a3);
        a3 = 0;
        *(v7 + 17354) = v110 != 0;
        return a3;
      }

      goto LABEL_149;
    }

    if (!CFEqual(a2, @"HDRLowLightGainThresholdsByPortType"))
    {
      return 4294954512;
    }

    v111 = CFGetTypeID(a3);
    if (v111 != CFDictionaryGetTypeID())
    {
      goto LABEL_149;
    }

    Count = CFDictionaryGetCount(a3);
    v113 = 1;
    if (*(v7 + 16))
    {
      v113 = 2;
    }

    if (*(v7 + 24))
    {
      ++v113;
    }

    if (Count != v113)
    {
LABEL_149:
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    v114 = Count;
    v122 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v123 = malloc_type_calloc(v114, 8uLL, 0x6004044C4A2DFuLL);
    if (v122 && v123)
    {
      v116 = v122;
      v115 = v123;
      CFDictionaryGetKeysAndValues(a3, v122, v123);
      while (1)
      {
        v117 = *v115;
        v118 = CFGetTypeID(*v116);
        if (v118 != CFStringGetTypeID())
        {
          break;
        }

        v119 = CFGetTypeID(v117);
        if (v119 != CFNumberGetTypeID())
        {
          break;
        }

        CameraParametersForPortType = af_sbp_getCameraParametersForPortType();
        if (!CameraParametersForPortType)
        {
          break;
        }

        v121 = CameraParametersForPortType;
        CFNumberGetValue(v117, kCFNumberFloatType, (CameraParametersForPortType + 1248));
        *(v121 + 1244) = 1007299575;
        ++v115;
        ++v116;
        if (!--v114)
        {
          a3 = 0;
          goto LABEL_262;
        }
      }

      fig_log_get_emitter();
      a3 = FigSignalErrorAtGM();
    }

    else
    {
      fig_log_get_emitter();
      a3 = FigSignalErrorAtGM();
      if (!v122)
      {
LABEL_263:
        if (v123)
        {
          free(v123);
        }

        return a3;
      }
    }

LABEL_262:
    free(v122);
    goto LABEL_263;
  }

  if (!a3)
  {
    return a3;
  }

  v23 = CFDictionaryGetValue(a3, @"smooth");
  if (!v23)
  {
    return 0;
  }

  v24 = CFBooleanGetValue(v23) != 0;

  return FigImageControl_ContinuousAutoFocusWithSmoothFocus(a1, v24);
}

uint64_t FigImageControl_VideoModeChange(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = DerivedStorage + 0x4000;
  v27 = 0;
  v7 = 616;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    v7 = 612;
  }

  v8 = *(DerivedStorage + v7);
  valuePtr = v8;
  if (a2 <= 6)
  {
    if (((1 << a2) & 0x68) != 0)
    {
LABEL_7:
      if (*(v6 + 1353) == 1)
      {
        unlockAEnow(a1);
      }

      FigImageControl_RestoreAEValues(a1);
LABEL_10:
      v10 = 0;
      v11 = 1;
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (((1 << a2) & 6) != 0)
    {
      v9 = FigCapturePlatformIdentifier();
      FigImageControl_SetExposureStabilityZone(a1, 0, flt_1AD056F00[v9 < 10]);
      goto LABEL_7;
    }
  }

  v15 = FigCapturePlatformIdentifier();
  FigImageControl_SetExposureStabilityZone(a1, 0, flt_1AD056F08[v15 < 10]);
  if (a2 != 4)
  {
    goto LABEL_7;
  }

  if (*(v6 + 1352))
  {
    goto LABEL_10;
  }

  v16 = *off_1E798BC00;
  *(v5 + 17704) = [*(v5 + 8) copyProperty:*off_1E798BC00 error:0];
  v17 = *off_1E798BC10;
  *(v5 + 17712) = [*(v5 + 8) copyProperty:*off_1E798BC10 error:0];
  v18 = *off_1E798BBE8;
  *(v5 + 17720) = [*(v5 + 8) copyProperty:*off_1E798BBE8 error:0];
  v19 = *off_1E798BBF0;
  *(v5 + 17728) = [*(v5 + 8) copyProperty:*off_1E798BBF0 error:0];
  *(v5 + 17696) = [*(v5 + 8) copyProperty:*off_1E798C018 error:0];
  v26 = *(v5 + 1532);
  v20 = *MEMORY[0x1E695E480];
  v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v26);
  if (captureStreamSetPropertyOnActivityScheduler(a1, v16, v21))
  {
    FigImageControl_VideoModeChange_cold_1();
  }

  CFRelease(v21);
  v26 = *(v5 + 1536);
  v22 = CFNumberCreate(v20, kCFNumberIntType, &v26);
  if (captureStreamSetPropertyOnActivityScheduler(a1, v17, v22))
  {
    FigImageControl_VideoModeChange_cold_2();
  }

  CFRelease(v22);
  v26 = *(v5 + 1540);
  v23 = CFNumberCreate(v20, kCFNumberIntType, &v26);
  if (captureStreamSetPropertyOnActivityScheduler(a1, v18, v23))
  {
    FigImageControl_VideoModeChange_cold_3();
  }

  CFRelease(v23);
  v26 = *(v5 + 1544);
  v24 = CFNumberCreate(v20, kCFNumberIntType, &v26);
  v10 = captureStreamSetPropertyOnActivityScheduler(a1, v19, v24);
  if (v10)
  {
    FigImageControl_VideoModeChange_cold_4();
  }

  CFRelease(v24);
  v27 = *(v5 + 1528);
  v25 = v27;
  *(v6 + 1352) = 1;
  v11 = v25 == 0;
  if (v8)
  {
LABEL_11:
    v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v10 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBD0, v12);
    CFRelease(v12);
  }

LABEL_12:
  if (!v11)
  {
    v13 = CFNumberCreate(0, kCFNumberIntType, &v27);
    v10 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C018, v13);
    CFRelease(v13);
  }

  return v10;
}

uint64_t FigImageControl_SetExposureStabilityZone(uint64_t a1, int a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = llroundf((exp2f(a3) + -1.0) * 1024.0);
  v8 = v7 >> 2;
  if (v7 >> 2 > 7)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  if (!v9)
  {
    v8 = 8;
  }

  v19 = v8;
  valuePtr = v7;
  if (v8 > v7)
  {
    valuePtr = v8;
  }

  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (*(DerivedStorage + 511) == 1)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v19);
    v13 = *off_1E798B9D8;
    keys[0] = *off_1E798B9E0;
    keys[1] = v13;
    values[0] = v10;
    values[1] = v12;
    v14 = CFDictionaryCreate(v11, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v14);
    CFRelease(v14);
    CFRelease(v12);
  }

  else
  {
    v15 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC18, v10);
  }

  CFRelease(v10);
  return v15;
}

uint64_t captureStreamSetPropertyOnActivityScheduler(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294954516;
  if (!a1 || !a2)
  {
    return v7;
  }

  v8 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v10 = Mutable;
  CFDictionaryAddValue(Mutable, @"propertyKey", a2);
  if (a3)
  {
    CFDictionaryAddValue(v10, @"propertyValue", a3);
  }

  v11 = CMSimpleQueueEnqueue(*(v8 + 72), v10);
  if (v11)
  {
    v7 = v11;
    CFRelease(v10);
    return v7;
  }

  v12 = *(v8 + 64);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v12);
}

void FigImageControl_RestoreAEValues(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 17736) == 1)
  {
    v3 = DerivedStorage;
    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC00, *(DerivedStorage + 17704));
    v4 = *(v3 + 17704);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 17704) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BC10, *(v3 + 17712));
    v5 = *(v3 + 17712);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 17712) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBE8, *(v3 + 17720));
    v6 = *(v3 + 17720);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 17720) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BBF0, *(v3 + 17728));
    v7 = *(v3 + 17728);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 17728) = 0;
    }

    captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C018, *(v3 + 17696));
    v8 = *(v3 + 17696);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 17696) = 0;
    }

    *(v3 + 17736) = 0;
  }
}

double OUTLINED_FUNCTION_231()
{
  result = 0.0;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_231_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v67 countByEnumeratingWithState:&STACK[0x250] objects:&a67 count:16];
}

uint64_t FigImageControl_SetExposureBias(uint64_t a1, int a2, float a3)
{
  v19 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = llroundf(exp2f(a3) * 256.0);
  valuePtr = v7;
  *(DerivedStorage + 7524) = a3;
  if (v7 <= 0)
  {
    v8 = 1;
    goto LABEL_5;
  }

  if (v7 >= 0x10000)
  {
    v8 = 0xFFFF;
LABEL_5:
    valuePtr = v8;
  }

  if (a2 >= 1 && (*(DerivedStorage + 513) & 1) != 0)
  {
    v9 = *off_1E798BE20;
    v10 = *off_1E798A1C8;
    keys[0] = *off_1E798BE20;
    keys[1] = v10;
    v11 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    cf = CFNumberCreate(v11, kCFNumberSInt32Type, &v19);
    v12 = CFDictionaryCreate(v11, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
    CFRelease(cf);
  }

  else
  {
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v9 = *off_1E798BE20;
  }

  v13 = captureStreamSetPropertyOnActivityScheduler(a1, v9, v12);
  CFRelease(v12);
  return v13;
}

uint64_t FigImageControl_ConfigureHDRSceneDetection(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 9093) = a2;
  *(DerivedStorage + 9092) = 0;
  v5 = *off_1E798BA80;
  v9 = *MEMORY[0x1E695E4D0];
  keys = v5;
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v9, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BEE8, v6);
  CFRelease(v6);
  return v7;
}

uint64_t FigImageControl_AutoExposure(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7464) != 1 || *(DerivedStorage + 7476) != a2 || *(DerivedStorage + 7480) != a3 || *(DerivedStorage + 7484) != a4 || *(DerivedStorage + 7488) != a5)
  {
    *(DerivedStorage + 7464) = 1;
    *(DerivedStorage + 7476) = a2;
    *(DerivedStorage + 7480) = a3;
    *(DerivedStorage + 7484) = a4;
    *(DerivedStorage + 7488) = a5;
    *(DerivedStorage + 7456) = 0;
  }

  return 0;
}

uint64_t FigImageControl_UnlockWhiteBalance()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 7428) = 1;
  *(DerivedStorage + 7444) = 0;
  return 0;
}

void *af_sbp_getFocusParametersFromDictionary(void *result, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, void *a7)
{
  v12 = result;
  if (a2)
  {
    result = [result objectForKeyedSubscript:@"far"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"far", "floatValue"}];
      *a2 = v14;
    }
  }

  if (a3)
  {
    result = [v12 objectForKeyedSubscript:@"near"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"near", "floatValue"}];
      *a3 = v15;
    }
  }

  if (a4)
  {
    result = [v12 objectForKeyedSubscript:@"smooth"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"smooth", "BOOLValue"}];
      *a4 = result;
    }
  }

  if (a5)
  {
    result = [v12 objectForKeyedSubscript:@"highFrameRate"];
    if (result)
    {
      result = [objc_msgSend(v12 objectForKeyedSubscript:{@"highFrameRate", "BOOLValue"}];
      *a5 = result;
    }
  }

  if (a6)
  {
    result = FigCFDictionaryGetCGRectIfPresent();
  }

  if (a7)
  {
    result = [v12 objectForKeyedSubscript:@"ContinuousAutoFocusAreaOfInterestByPortType"];
    *a7 = result;
  }

  return result;
}
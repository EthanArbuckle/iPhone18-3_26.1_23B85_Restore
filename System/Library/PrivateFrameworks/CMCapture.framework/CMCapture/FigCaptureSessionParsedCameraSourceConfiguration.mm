@interface FigCaptureSessionParsedCameraSourceConfiguration
- (id)initWithConnectionConfigurations:(char)configurations clientSetsUserInitiatedCaptureRequestTime:(int)time smartStyleEnabled:(FigVideoCaptureConnectionConfiguration *)enabled sceneClassifierConnectionConfigurationOut:;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedCameraSourceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedCameraSourceConfiguration;
  [(FigCaptureSessionParsedCameraSourceConfiguration *)&v3 dealloc];
}

- (id)initWithConnectionConfigurations:(char)configurations clientSetsUserInitiatedCaptureRequestTime:(int)time smartStyleEnabled:(FigVideoCaptureConnectionConfiguration *)enabled sceneClassifierConnectionConfigurationOut:
{
  if (!self)
  {
    return 0;
  }

  v113.receiver = self;
  v113.super_class = FigCaptureSessionParsedCameraSourceConfiguration;
  v9 = objc_msgSendSuper2(&v113, sel_init);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  enabledCopy = enabled;
  configurationsCopy = configurations;
  timeCopy = time;
  v112 = 0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  v10[1] = [objc_msgSend(a2 "firstObject")];
  memset(v111, 0, sizeof(v111));
  obj = a2;
  v15 = [a2 countByEnumeratingWithState:v111 objects:v110 count:16];
  v101 = array8;
  if (v15)
  {
    v16 = v15;
LABEL_5:
    v17 = 0;
    while (2)
    {
      OUTLINED_FUNCTION_6_30();
      if (!v23)
      {
        objc_enumerationMutation(a2);
      }

      v18 = *(*(&v111[0] + 1) + 8 * v17);
      switch([objc_msgSend(v18 "sinkConfiguration")])
      {
        case 1u:
          underlyingDeviceType = [v18 underlyingDeviceType];
          if (underlyingDeviceType == [objc_msgSend(v18 "sourceConfiguration")])
          {
            if (v10[3])
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0();
              FigDebugAssert3();
            }

            v10[3] = v18;
          }

          goto LABEL_49;
        case 3u:
          v10[7] = v18;
          goto LABEL_58;
        case 4u:
          [v18 mediaType];
          OUTLINED_FUNCTION_18_11();
          if (v23)
          {
            goto LABEL_56;
          }

          if ([v18 mediaType] != 1835365473 || !FigMetadataItemConnectionConfigurationRequiresObjectDetection(v18))
          {
            goto LABEL_58;
          }

          [array2 addObject:v18];
          v21 = array6;
          goto LABEL_57;
        case 6u:
          [array3 addObject:v18];
          v20 = [v18 videoStabilizationMethod] && objc_msgSend(v18, "videoStabilizationMethod") != 4 && objc_msgSend(v18, "videoStabilizationMethod") != 6;
          if ([objc_msgSend(v18 "videoDataSinkConfiguration")] && !v20)
          {
            goto LABEL_49;
          }

          goto LABEL_56;
        case 8u:
          v21 = array5;
          goto LABEL_57;
        case 0xAu:
          [v18 mediaType];
          OUTLINED_FUNCTION_18_11();
          if (v23)
          {
            v10[7] = v18;
            goto LABEL_54;
          }

          mediaType = [v18 mediaType];
          if (mediaType == 1835365473)
          {
            if (!FigMetadataItemConnectionConfigurationRequiresObjectDetection(v18))
            {
              goto LABEL_54;
            }

            v29 = array6;
          }

          else
          {
            [v18 mediaType];
            OUTLINED_FUNCTION_17_10();
            if (!v23)
            {
              goto LABEL_54;
            }

            v29 = array7;
          }

          [v29 addObject:v18];
LABEL_54:
          if ([objc_msgSend(v18 "irisSinkConfiguration")] && objc_msgSend(objc_msgSend(v18, "sourceConfiguration"), "sourceDeviceType") != 10)
          {
LABEL_56:
            v21 = array2;
LABEL_57:
            [v21 addObject:v18];
          }

LABEL_58:
          if (v16 != ++v17)
          {
            continue;
          }

          v16 = [a2 countByEnumeratingWithState:v111 objects:v110 count:16];
          if (!v16)
          {
            goto LABEL_60;
          }

          goto LABEL_5;
        case 0xBu:
          [v18 mediaType];
          OUTLINED_FUNCTION_17_10();
          if (v23)
          {
            goto LABEL_42;
          }

          v10[8] = v18;
          goto LABEL_58;
        case 0xCu:
LABEL_49:
          v21 = array;
          goto LABEL_57;
        case 0xDu:
          underlyingDeviceType2 = [v18 underlyingDeviceType];
          v23 = underlyingDeviceType2 > 9 || ((1 << underlyingDeviceType2) & 0x310) == 0;
          if (!v23)
          {
            goto LABEL_136;
          }

          v24 = underlyingDeviceType2;
          v25 = [objc_msgSend(v18 "sourceConfiguration")];
          v26 = v25 > 9 || ((1 << v25) & 0x310) == 0;
          if (!v26 && v24 != 2)
          {
            goto LABEL_136;
          }

          [array4 addObject:v18];
          [array2 addObject:v18];
          array8 = v101;
          goto LABEL_58;
        case 0xFu:
LABEL_42:
          v21 = array7;
          goto LABEL_57;
        case 0x10u:
          [array8 addObject:v18];
          goto LABEL_56;
        default:
          goto LABEL_58;
      }
    }
  }

LABEL_60:
  if ([v10[1] spatialOverCaptureEnabled] && !objc_msgSend(objc_msgSend(v10[3], "videoPreviewSinkConfiguration"), "primaryCaptureRectModificationEnabled"))
  {
LABEL_136:

    return 0;
  }

  v30 = v10[1];
  v114[0] = 0;
  IntAttribute = FigCaptureSourceGetIntAttribute([v30 source], @"DeviceType", v114);
  v32 = off_1E7989000;
  if ((IntAttribute > 0x14 || ((1 << IntAttribute) & 0x100420) == 0) && IntAttribute - 21 <= 0xFFFFFFFB && [v30 smartCameraEnabled])
  {
    v42 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
    [(FigCaptureConnectionConfiguration *)v42 setSourceConfiguration:v30];
    [v30 sourceDeviceType];
    [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
    v43 = [[FigCaptureInternalSinkConfiguration alloc] initWithSinkSubType:1];
    [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
    FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v42);
    lensSmudgeDetectionEnabled = [v30 lensSmudgeDetectionEnabled];
    v45 = 0;
    v46 = 0;
    v47 = lensSmudgeDetectionEnabled ? 512 : 256;
    v48 = lensSmudgeDetectionEnabled ? 2 : 4;
    do
    {
      v49 = v46 < v47 || v45 < v47;
      if (!v49)
      {
        break;
      }

      v46 = ((2 * v48 * vcvtps_s32_f32([(FigVideoCaptureConnectionConfiguration *)v42 outputWidth]/ (2 * v48))) / v48);
      v45 = ((2 * v48 * vcvtps_s32_f32([(FigVideoCaptureConnectionConfiguration *)v42 outputHeight]/ (2 * v48))) / v48);
      v49 = v48 > 3;
      v48 = v48 >> 1;
    }

    while (v49);
    if (v46 < v47 || v45 < v47)
    {
      v114[0] = -12782;
    }

    else
    {
      [(FigVideoCaptureConnectionConfiguration *)v42 setOutputWidth:v46];
      [(FigVideoCaptureConnectionConfiguration *)v42 setOutputHeight:v45];
    }

    v32 = off_1E7989000;
    if (v42)
    {
      if (!v114[0])
      {
        *enabledCopy = v42;
        v51 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array5, [(FigCaptureConnectionConfiguration *)v42 underlyingDeviceType]);
        if ((FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v51) & 1) == 0)
        {
          OUTLINED_FUNCTION_37_6();
        }
      }
    }
  }

  v33 = v10[1];
  [v10[7] irisSinkConfiguration];
  stillImageSinkConfiguration = [v10[7] stillImageSinkConfiguration];
  v114[0] = 0;
  v35 = FigCaptureSourceGetIntAttribute([v33 source], 0x1F21A0530, v114);
  v36 = v114[0];
  if (v114[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
    LODWORD(v94) = v36;
    FigDebugAssert3();
LABEL_94:
    v40 = 0;
    v39 = off_1E7989000;
    goto LABEL_95;
  }

  if (v35 > 2)
  {
    v112 = 0;
    v39 = off_1E7989000;
    goto LABEL_98;
  }

  if (([v33 smartCameraEnabled] & 1) == 0)
  {
    v37 = OUTLINED_FUNCTION_9_19();
    if (!FigCaptureZeroShutterLagEnabled(v37, v38, stillImageSinkConfiguration, configurationsCopy))
    {
      goto LABEL_94;
    }
  }

  v39 = off_1E7989000;
  v40 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
  [(FigCaptureConnectionConfiguration *)v40 setSourceConfiguration:v33];
  [v33 sourceDeviceType];
  [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
  v41 = [objc_alloc(v32[254]) initWithSinkSubType:0];
  [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
  FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v40);
LABEL_95:
  if (v114[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
LABEL_165:
    FigDebugAssert3();
    goto LABEL_136;
  }

  if (v40)
  {
    OUTLINED_FUNCTION_37_6();
  }

LABEL_98:
  v52 = v10[1];
  irisSinkConfiguration = [v10[7] irisSinkConfiguration];
  stillImageSinkConfiguration2 = [v10[7] stillImageSinkConfiguration];
  if (([v52 cinematicFramingEnabled] & 1) == 0)
  {
    manualCinematicFramingEnabled = [v52 manualCinematicFramingEnabled];
    if (irisSinkConfiguration | stillImageSinkConfiguration2)
    {
      if (timeCopy)
      {
        if ((manualCinematicFramingEnabled & 1) == 0)
        {
          v56 = objc_alloc_init(v39[315]);
          [v56 setSourceConfiguration:v52];
          [v52 sourceDeviceType];
          [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
          v57 = [objc_alloc(v32[254]) initWithSinkSubType:3];
          [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
          FigCaptureSetOptimalVideoPreviewDataConnectionDimensions(v56);
          if (v56)
          {
            OUTLINED_FUNCTION_37_6();
          }
        }
      }
    }
  }

  v58 = v10[1];
  v112 = 0;
  sensitiveContentAnalyzer = [v58 sensitiveContentAnalyzer];
  v95 = v10;
  if (!sensitiveContentAnalyzer)
  {
    if (!v112)
    {
      goto LABEL_109;
    }

    goto LABEL_164;
  }

  v61 = objc_alloc_init(v39[315]);
  [v61 setSourceConfiguration:v58];
  [v58 sourceDeviceType];
  [OUTLINED_FUNCTION_7() setUnderlyingDeviceType:?];
  v62 = [objc_alloc(v32[254]) initWithSinkSubType:4];
  [OUTLINED_FUNCTION_7() setSinkConfiguration:?];
  [objc_msgSend(v61 "sinkConfiguration")];
  [v58 sensitiveContentAnalyzerEnabled];
  sensitiveContentAnalyzer = [OUTLINED_FUNCTION_7() setEnabled:?];
  if (v112)
  {
LABEL_164:
    fig_log_get_emitter();
    goto LABEL_165;
  }

  if (v61)
  {
    sensitiveContentAnalyzer = OUTLINED_FUNCTION_37_6();
  }

LABEL_109:
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v63 = array5;
  v64 = OUTLINED_FUNCTION_1_0(sensitiveContentAnalyzer, v60, &v106, v105);
  if (v64)
  {
    v65 = v64;
    v66 = *v107;
    while (2)
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v107 != v66)
        {
          objc_enumerationMutation(array5);
        }

        v68 = *(*(&v106 + 1) + 8 * i);
        underlyingDeviceType3 = [v68 underlyingDeviceType];
        v70 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array, underlyingDeviceType3);
        if ((FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v68) & 1) != 0 || FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v68))
        {
          if (v70)
          {
            v71 = array;
          }

          else
          {
            v71 = array2;
          }

          [v71 addObject:v68];
        }

        v72 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array3, underlyingDeviceType3);
        if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v68))
        {
          BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v68 "sourceConfiguration")], 0x1F219FFF0, &v112);
        }

        else
        {
          BoolAttribute = 1;
        }

        if (v112)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_5_36();
          FigDebugAssert3();
          v10 = v95;
          goto LABEL_136;
        }

        if (v72)
        {
          v75 = 1;
        }

        else
        {
          v75 = BoolAttribute;
        }

        if ((v75 & 1) == 0)
        {
          BoolAttribute = [array2 addObject:v68];
        }
      }

      v63 = array5;
      v65 = OUTLINED_FUNCTION_1_0(BoolAttribute, v73, &v106, v105);
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  v76 = v95;
  v77 = v95[8];
  if (!v77)
  {
    goto LABEL_143;
  }

  underlyingDeviceType4 = [v77 underlyingDeviceType];
  v79 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(v63, underlyingDeviceType4);
  if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v79))
  {
    goto LABEL_143;
  }

  if ([objc_msgSend(v95[8] "sourceConfiguration")] == 13)
  {
    v80 = v95[8];
  }

  else
  {
    v81 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array, underlyingDeviceType4);
    v82 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(array2, underlyingDeviceType4);
    v80 = v95[8];
    if (v81 || !v82)
    {
      v83 = array;
      goto LABEL_142;
    }
  }

  v83 = array2;
LABEL_142:
  [v83 addObject:v80];
LABEL_143:
  v84 = [obj count];
  if (v84)
  {
    v84 = [obj copy];
  }

  v95[2] = v84;
  v85 = [array count];
  if (v85)
  {
    v85 = [array copy];
  }

  v95[4] = v85;
  v86 = [array2 count];
  if (v86)
  {
    v86 = [array2 copy];
  }

  v95[5] = v86;
  v87 = [array3 count];
  if (v87)
  {
    v87 = [array3 copy];
  }

  v95[6] = v87;
  v88 = [array4 count];
  if (v88)
  {
    v88 = [array4 copy];
  }

  v95[9] = v88;
  v89 = [v63 count];
  if (v89)
  {
    v89 = [v63 copy];
  }

  v95[10] = v89;
  v90 = [array6 count];
  if (v90)
  {
    v90 = [array6 copy];
  }

  v95[11] = v90;
  v91 = [array7 count];
  if (v91)
  {
    v91 = [array7 copy];
  }

  v95[12] = v91;
  v92 = [v101 count];
  if (v92)
  {
    v92 = [v101 copy];
  }

  v95[13] = v92;
  return v76;
}

@end
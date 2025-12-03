@interface BWDeepZoomProcessorControllerConfiguration
+ (BOOL)doDeepZoomStandardOrLiteForSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(int)type sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut;
+ (BOOL)doDeepZoomStandardOrLiteForType:(int)type sensorConfiguration:(id)configuration dimensions:(id)dimensions metadata:(id)metadata stillImageSettings:(id)settings intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut;
+ (BOOL)doDeepZoomTransferForSampleBuffer:(opaqueCMSampleBuffer *)buffer sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out;
+ (int)deepZoomProcessingModeForType:(int)type sensorConfiguration:(id)configuration;
+ (void)quadraQSubIntermediateZoomRectForDimensions:(void *)dimensions metadata:(void *)metadata sensorConfiguration:(void *)configuration stillImageSettings:;
- (void)dealloc;
@end

@implementation BWDeepZoomProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeepZoomProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

+ (BOOL)doDeepZoomStandardOrLiteForType:(int)type sensorConfiguration:(id)configuration dimensions:(id)dimensions metadata:(id)metadata stillImageSettings:(id)settings intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut
{
  v14 = *&type;
  if (dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:];
  }

  LOBYTE(v15) = 0;
  v16 = *(MEMORY[0x1E695F050] + 16);
  v93 = *MEMORY[0x1E695F050];
  v94 = v16;
  v91 = v93;
  v92 = v16;
  if ((v14 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_70;
  }

  if (!configuration)
  {
    goto LABEL_70;
  }

  if (!metadata)
  {
    goto LABEL_70;
  }

  v81 = v16;
  if (!settings)
  {
    goto LABEL_70;
  }

  v17 = [objc_msgSend(configuration "sensorIDDictionary")];
  if (!v17)
  {
    goto LABEL_89;
  }

  LOBYTE(v15) = 0;
  if (!HIDWORD(*&dimensions) || !dimensions.var0)
  {
    goto LABEL_70;
  }

  v18 = v17;
  requestedSettings = [settings requestedSettings];
  if (!requestedSettings)
  {
LABEL_89:
    LOBYTE(v15) = 0;
    goto LABEL_70;
  }

  v20 = requestedSettings;
  v86 = [BWDeepZoomProcessorControllerConfiguration deepZoomProcessingModeForType:v14 sensorConfiguration:configuration];
  if (!v86)
  {
    +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:];
    goto LABEL_89;
  }

  v21 = *(MEMORY[0x1E695F058] + 16);
  v89 = *MEMORY[0x1E695F058];
  v90 = v21;
  FigCFDictionaryGetCGRectIfPresent();
  outputWidth = [v20 outputWidth];
  v23 = outputWidth / [v20 outputHeight];
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(dimensions.var0, *&dimensions >> 32, *&v89, *(&v89 + 1), *&v90, *(&v90 + 1), v23);
  width = v95.size.width;
  height = v95.size.height;
  x = v95.origin.x;
  y = v95.origin.y;
  if (CGRectIsEmpty(v95))
  {
    goto LABEL_89;
  }

  v87[0] = &unk_1F2247DE8;
  v87[1] = &unk_1F2247E00;
  v88[0] = @"Lite";
  v88[1] = @"Standard";
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v27 = [v26 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v14)}];
  if (!v27)
  {
    goto LABEL_89;
  }

  v28 = [v18 objectForKeyedSubscript:v27];
  if (!v28)
  {
    goto LABEL_89;
  }

  v29 = v28;
  v80 = v23;
  [objc_msgSend(v28 objectForKeyedSubscript:{@"RequiredExtraPaddingForGDC", "floatValue"}];
  v31 = v30;
  [objc_msgSend(v29 objectForKeyedSubscript:{@"MinScaleFactor", "floatValue"}];
  v33 = v32;
  [objc_msgSend(v29 objectForKeyedSubscript:{@"MaxScaleFactor", "floatValue"}];
  v35 = v34;
  v36 = [v20 outputWidth] / width;
  if (v36 < 1.0)
  {
    v36 = 1.0;
  }

  v37 = v36;
  v38 = [v20 outputHeight] / height;
  if (v38 < 1.0)
  {
    v38 = 1.0;
  }

  v39 = v38;
  v40 = v37 - v31;
  if ((v37 - v31) < 1.0)
  {
    v40 = 1.0;
  }

  v84 = v40;
  if ((v39 - v31) >= 1.0)
  {
    v41 = v39 - v31;
  }

  else
  {
    v41 = 1.0;
  }

  if (([objc_msgSend(settings "captureSettings")] & 0x10) != 0 && objc_msgSend(v29, "objectForKeyedSubscript:", @"QSub"))
  {
    [objc_msgSend(objc_msgSend(v29 objectForKeyedSubscript:{@"QSub", "objectForKeyedSubscript:", @"MinScaleFactor", "floatValue"}];
    v33 = v42;
  }

  metadataCopy = metadata;
  v43 = [metadata objectForKeyedSubscript:*off_1E798A718];
  v44 = v43;
  v45 = 1;
  if (v86 == 2)
  {
    v47 = v41 > 0.0 && v84 > 0.0;
    if (v43)
    {
      v45 = 1;
    }

    else
    {
      v45 = v47;
    }
  }

  v48 = v31 + v35;
  if (v37 >= v39)
  {
    v49 = v39;
  }

  else
  {
    v49 = v37;
  }

  v51 = v49 >= v33 || v43 != 0;
  v15 = v51 & v45;
  if (dword_1EB58E220)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v44)
  {
    rectOutCopy4 = rectOut;
    if (out && rectOut)
    {
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v93 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        v94 = _Q0;
      }

      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v91 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        v92 = _Q0;
      }

      if (dword_1EB58E220)
      {
        v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_86;
    }

LABEL_70:
    rectOutCopy4 = rectOut;
    if (!out)
    {
      return v15;
    }

    goto LABEL_86;
  }

  if ((v86 - 3) < 3)
  {
LABEL_73:
    v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_70;
  }

  if (v86 == 1)
  {
    if (!dword_1EB58E220)
    {
      goto LABEL_70;
    }

    goto LABEL_73;
  }

  if (v86 != 2)
  {
    goto LABEL_70;
  }

  if (!v15)
  {
    goto LABEL_70;
  }

  LOBYTE(v15) = 1;
  if (!out || !rectOut)
  {
    goto LABEL_70;
  }

  if (![metadataCopy objectForKeyedSubscript:*off_1E798B7A0])
  {
    v61 = x;
    v60 = y;
    v62 = *&dimensions >> 32;
    goto LABEL_75;
  }

  v61 = x;
  v60 = y;
  v62 = *&dimensions >> 32;
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
LABEL_75:
    if (v37 >= v39)
    {
      v66 = v37;
    }

    else
    {
      v66 = v39;
    }

    if (v66 <= v48)
    {
      v67 = v84;
    }

    else
    {
      v67 = v48;
    }

    if (v66 > v48)
    {
      v41 = v48;
    }

    v68 = ([v20 outputWidth] / v67);
    v69 = ([v20 outputHeight] / v41);
    v98.size.width = dimensions.var0;
    v98.size.height = dimensions.var1;
    v98.origin.x = 0.0;
    v98.origin.y = 0.0;
    v96.origin.x = v61 - (v68 - width) * 0.5;
    v96.origin.y = v60 - (v69 - height) * 0.5;
    v96.size.width = v68;
    v96.size.height = v69;
    v97 = CGRectIntersection(v96, v98);
    v93.x = v97.origin.x;
    v93.y = v97.origin.y;
    v94.width = v97.size.width;
    v94.height = v97.size.height;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(dimensions.var0, v62, 0.0, 0.0, 1.0, 1.0, v80);
    v91.x = v70;
    v91.y = v71;
    v92.width = v72;
    v92.height = v73;
    rectOutCopy4 = rectOut;
    if (dword_1EB58E220)
    {
      v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_85;
  }

  v63 = [objc_msgSend(metadataCopy objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
  v64 = [objc_msgSend(metadataCopy objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
  if (v63 && v64)
  {
    v61 = x + (v63 - v81.width) * 0.5;
    v60 = y + (v64 - v81.height) * 0.5;
    goto LABEL_75;
  }

  +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:];
  rectOutCopy4 = rectOut;
LABEL_85:
  LOBYTE(v15) = 1;
LABEL_86:
  v75 = v94;
  out->origin = v93;
  out->size = v75;
  v76 = v92;
  rectOutCopy4->origin = v91;
  rectOutCopy4->size = v76;
  return v15;
}

+ (BOOL)doDeepZoomStandardOrLiteForSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(int)type sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out intermediateZoomDstRectOut:(CGRect *)rectOut
{
  v10 = *&type;
  if (dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    dispatch_once(&dzpc_initializeTrace_sInitializeTraceOnceToken, &__block_literal_global_140);
  }

  LOBYTE(ImageBuffer) = 0;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v24 = *MEMORY[0x1E695F050];
  v25 = v13;
  v22 = v24;
  v23 = v13;
  if (configuration)
  {
    if (buffer)
    {
      if ((v10 - 3) >= 0xFFFFFFFE)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
        if (ImageBuffer)
        {
          ImageBuffer = CMGetAttachment(buffer, *off_1E798A3C8, 0);
          if (ImageBuffer)
          {
            v14 = ImageBuffer;
            ImageBuffer = CMGetAttachment(buffer, @"StillSettings", 0);
            if (ImageBuffer)
            {
              v15 = ImageBuffer;
              v16 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
              if (out)
              {
                v17 = &v24;
              }

              else
              {
                v17 = 0;
              }

              v18 = &v22;
              if (!rectOut)
              {
                v18 = 0;
              }

              LOBYTE(ImageBuffer) = [BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:v10 sensorConfiguration:configuration dimensions:v16 metadata:v14 stillImageSettings:v15 intermediateZoomSrcRectOut:v17 intermediateZoomDstRectOut:v18];
            }
          }
        }
      }
    }
  }

  if (out)
  {
    v19 = v25;
    out->origin = v24;
    out->size = v19;
  }

  if (rectOut)
  {
    v20 = v23;
    rectOut->origin = v22;
    rectOut->size = v20;
  }

  return ImageBuffer;
}

+ (BOOL)doDeepZoomTransferForSampleBuffer:(opaqueCMSampleBuffer *)buffer sensorConfiguration:(id)configuration intermediateZoomSrcRectOut:(CGRect *)out
{
  if (dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    dispatch_once(&dzpc_initializeTrace_sInitializeTraceOnceToken, &__block_literal_global_140);
  }

  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  if (buffer && configuration && (v12 = CMGetAttachment(buffer, *off_1E798A3C8, 0)) != 0 && (v13 = v12, (v14 = CMGetAttachment(buffer, @"StillSettings", 0)) != 0))
  {
    if (!out)
    {
      return 1;
    }

    v15 = v14;
    v16 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    v17 = [v13 objectForKeyedSubscript:*off_1E798B540];
    if (v16 == 1 && [+[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:"deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:"]
    {
      v20 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
      [BWDeepZoomProcessorControllerConfiguration quadraQSubIntermediateZoomRectForDimensions:v20 metadata:v13 sensorConfiguration:configuration stillImageSettings:v15];
      OUTLINED_FUNCTION_2_3();
      v18 = 1;
      if (!CGRectIsNull(v22) && dword_1EB58E220)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v18 = 1;
        OUTLINED_FUNCTION_11_59();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    if (!out)
    {
      return v18;
    }
  }

  out->origin.x = v8;
  out->origin.y = v9;
  out->size.width = v10;
  out->size.height = v11;
  return v18;
}

+ (void)quadraQSubIntermediateZoomRectForDimensions:(void *)dimensions metadata:(void *)metadata sensorConfiguration:(void *)configuration stillImageSettings:
{
  objc_opt_self();
  if (dimensions && metadata && configuration)
  {
    v9 = [objc_msgSend(dimensions objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    v10 = [objc_msgSend(configuration "captureSettings")] & 0x200000000;
    if (v9 == 1 && v10 != 0)
    {
      if ([objc_msgSend(metadata "sensorIDDictionary")])
      {
        if (HIDWORD(a2))
        {
          if (a2)
          {
            requestedSettings = [configuration requestedSettings];
            if (requestedSettings)
            {
              v13 = requestedSettings;
              v20 = *MEMORY[0x1E695F058];
              v21 = *(MEMORY[0x1E695F058] + 16);
              FigCFDictionaryGetCGRectIfPresent();
              outputWidth = [v13 outputWidth];
              v15 = outputWidth / [v13 outputHeight];
              FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a2, a2 >> 32, *&v20, *(&v20 + 1), *&v21, *(&v21 + 1), v15);
              width = v22.size.width;
              height = v22.size.height;
              if (!CGRectIsEmpty(v22) && width <= [v13 outputWidth] && height <= objc_msgSend(v13, "outputHeight"))
              {
                v18 = a2 / width;
                v19 = SHIDWORD(a2) / height;
                if (v18 < v19)
                {
                  v18 = SHIDWORD(a2) / height;
                }

                if (v18 < 2.0)
                {
                  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a2, a2 >> 32, 0.125, 0.125, 0.75, 0.75, v15);
                  OUTLINED_FUNCTION_2_3();
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_3();
}

+ (int)deepZoomProcessingModeForType:(int)type sensorConfiguration:(id)configuration
{
  if ((type - 4) < 0xFFFFFFFD || configuration == 0)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v12[7] = v4;
    v12[8] = v5;
    v7 = *&type;
    v8 = [objc_msgSend(configuration "sensorIDDictionary")];
    if (v8)
    {
      v9 = v8;
      v11[0] = &unk_1F2247DE8;
      v11[1] = &unk_1F2247E00;
      v12[0] = @"Lite";
      v12[1] = @"Standard";
      v11[2] = &unk_1F2247E18;
      v12[2] = @"Transfer";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
      [MEMORY[0x1E696AD98] numberWithInt:v7];
      v8 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
      if (v8)
      {
        if (v7 == 3)
        {
          LODWORD(v8) = 3;
        }

        else
        {
          v8 = [v9 objectForKeyedSubscript:v8];
          if (v8)
          {
            if ([objc_msgSend(v8 objectForKeyedSubscript:{@"UpsamplingDisabled", "BOOLValue"}])
            {
              LODWORD(v8) = 2;
            }

            else
            {
              LODWORD(v8) = 1;
            }
          }
        }
      }
    }
  }

  return v8;
}

@end
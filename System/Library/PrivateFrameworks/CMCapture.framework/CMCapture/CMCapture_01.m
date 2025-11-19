BOOL OUTLINED_FUNCTION_108(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_36_15()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_36_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v9;
  v12 = *(v10 + 3784);

  return [v12 arrayWithObjects:&a9 count:1];
}

uint64_t OUTLINED_FUNCTION_36_18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  v4 = *(v1 + 3784);

  return [v4 arrayWithObjects:v2 - 120 count:1];
}

__SecTask *FigCaptureClientHasEntitlementWithSecTask(__SecTask *a1, __CFString *a2)
{
  v2 = a1;
  error = 0;
  if (!a1)
  {
    return v2;
  }

  if ([(__CFString *)a2 length])
  {
    v4 = SecTaskCopyValueForEntitlement(v2, a2, &error);
    v2 = 0;
    v5 = error;
    if (error || !v4)
    {
      goto LABEL_9;
    }

    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      v2 = (CFBooleanGetValue(v4) != 0);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = error;
LABEL_9:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v2 = *(v0 - 128);

  return [v2 code];
}

uint64_t captureSourceServer_serializeNotification(int a1, uint64_t a2, CFTypeRef cf1, const __CFDictionary *a4, void *a5)
{
  MutableCopy = a4;
  if (!a4)
  {
    return MutableCopy;
  }

  if (CFEqual(cf1, @"ActiveFormat"))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    MutableCopy = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(arg[0]) = 0;
    v13 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/ClientServer/FigCaptureSourceServer.m", 1987, @"LastShownDate:FigCaptureSourceServer.m:1987", @"LastShownBuild:FigCaptureSourceServer.m:1987", 0);
    free(v13);
    return MutableCopy;
  }

  if (!CFDictionaryContainsKey(MutableCopy, @"ClientShouldIgnoreNotification") && !CFDictionaryContainsKey(MutableCopy, @"ProxyShouldIgnoreNotification"))
  {
    return 0;
  }

  arg[0] = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = v10(a2, 0x1F21A1970, *MEMORY[0x1E695E480], arg);
  if (arg[0])
  {
    CFAutorelease(arg[0]);
  }

  if (v12)
  {
LABEL_17:
    captureSourceServer_serializeNotification_cold_1();
    return 1;
  }

  if ([arg[0] BOOLValue])
  {
    if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
  {
    return 1;
  }

LABEL_14:
  Count = CFDictionaryGetCount(MutableCopy);
  MutableCopy = CFDictionaryCreateMutableCopy(v11, Count, MutableCopy);
  CFDictionaryRemoveValue(MutableCopy, @"ClientShouldIgnoreNotification");
  CFDictionaryRemoveValue(MutableCopy, @"ProxyShouldIgnoreNotification");
  if (MutableCopy)
  {
    *a5 = MutableCopy;
    return 4;
  }

  return MutableCopy;
}

void __captureSource_postNotificationWithPayload_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t captureSource_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  v72 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"SourceToken"))
      {
        v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v7);
LABEL_7:
        v9 = v8;
        result = 0;
        *a4 = v9;
        return result;
      }

      if (CFEqual(a2, @"ClientAuditToken"))
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 + 16 length:32];
        goto LABEL_7;
      }

      if (CFEqual(a2, @"PrewarmingEnabled"))
      {
        v11 = *(v7 + 216);
        goto LABEL_10;
      }

      if (CFEqual(a2, @"IsProxy"))
      {
        v12 = MEMORY[0x1E695E4C0];
LABEL_15:
        v13 = *v12;
        *a4 = *v12;
        CFRetain(v13);
        return 0;
      }

      if (CFEqual(a2, @"HasProxy"))
      {
        v11 = *(v7 + 217);
LABEL_10:
        if (v11)
        {
          v12 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_15;
      }

      FigSimpleMutexLock();
      if (*(v7 + 12))
      {
        captureSource_CopyProperty_cold_1(&v72);
        goto LABEL_22;
      }

      v14 = [objc_msgSend(*(v7 + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      if (CFEqual(a2, @"AttributesDictionary"))
      {
        DictionaryRepresentation = *(v7 + 104);
LABEL_21:
        *a4 = DictionaryRepresentation;
LABEL_22:
        FigSimpleMutexUnlock();
        return v72;
      }

      if (CFEqual(a2, @"ISPChromaNoiseReductionForPairingDisabled_FigCaptureSessionOnly"))
      {
        DictionaryRepresentation = [*(v7 + 104) objectForKeyedSubscript:0x1F21A06B0];
        if (!DictionaryRepresentation)
        {
          goto LABEL_21;
        }

LABEL_25:
        DictionaryRepresentation = CFRetain(DictionaryRepresentation);
        goto LABEL_21;
      }

      if (CFEqual(a2, @"LockedForConfiguration"))
      {
        if (*(v7 + 64) <= 0)
        {
          v16 = MEMORY[0x1E695E4C0];
        }

        else
        {
          v16 = MEMORY[0x1E695E4D0];
        }

LABEL_57:
        v24 = *v16;
        *a4 = *v16;
        CFRetain(v24);
        goto LABEL_22;
      }

      if (CFEqual(a2, @"LensPosition"))
      {
        v17 = *(v7 + 80);
        if (v17 && ([v17 isPropertyObserved:0x1F218A1B0] & 1) == 0)
        {
          [*(v7 + 80) lensPosition];
LABEL_37:
          v18 = [MEMORY[0x1E696AD98] numberWithFloat:?];
LABEL_44:
          [*(v7 + 144) setObject:v18 forKeyedSubscript:a2];
        }
      }

      else
      {
        if (CFEqual(a2, @"ExposureDuration"))
        {
          v19 = *(v7 + 80);
          if (v19 && ([v19 isPropertyObserved:0x1F21A0F30] & 1) == 0)
          {
            v61 = 0uLL;
            *&v62 = 0;
            v20 = *(v7 + 80);
            if (v20)
            {
              [v20 exposureDuration];
            }

            v21 = *MEMORY[0x1E695E480];
            *time = v61;
            *&time[16] = v62;
            v18 = CMTimeCopyAsDictionary(time, v21);
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        if (CFEqual(a2, @"ISO"))
        {
          v23 = *(v7 + 80);
          if (v23 && ([v23 isPropertyObserved:0x1F218A7D0] & 1) == 0)
          {
            [*(v7 + 80) ISO];
            goto LABEL_37;
          }
        }

        else
        {
          if (!CFEqual(a2, @"ExposureTargetOffset"))
          {
            if (CFEqual(a2, @"DeviceWhiteBalanceGains"))
            {
              v28 = *(v7 + 80);
              if (!v28 || ([v28 isPropertyObserved:0x1F21A1090] & 1) != 0)
              {
                goto LABEL_45;
              }

              [*(v7 + 80) deviceWhiteBalanceGains];
            }

            else
            {
              if (!CFEqual(a2, @"GrayWorldDeviceWhiteBalanceGains"))
              {
                if (CFEqual(a2, @"SceneClassificationConfidences"))
                {
                  v34 = *(v7 + 80);
                  if (v34)
                  {
                    if (([v34 isPropertyObserved:0x1F21A1910] & 1) == 0)
                    {
                      v18 = [*(v7 + 80) sceneClassificationConfidences];
                      goto LABEL_44;
                    }
                  }
                }

                goto LABEL_45;
              }

              v33 = *(v7 + 80);
              if (!v33 || ([v33 isPropertyObserved:0x1F21A10B0] & 1) != 0)
              {
                goto LABEL_45;
              }

              [*(v7 + 80) grayWorldDeviceWhiteBalanceGains];
            }

            *&v61 = __PAIR64__(v30, v29);
            DWORD2(v61) = v31;
            v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v61 length:12];
            goto LABEL_44;
          }

          v25 = *(v7 + 80);
          if (v25 && ([v25 isPropertyObserved:0x1F21A0FF0] & 1) == 0)
          {
            [*(v7 + 80) exposureTargetOffset];
            goto LABEL_37;
          }
        }
      }

LABEL_45:
      if (CFEqual(a2, @"FlashActive"))
      {
        v22 = [*(v7 + 80) isFlashScene];
        goto LABEL_55;
      }

      if (CFEqual(a2, @"IsHDRScene"))
      {
        v22 = [*(v7 + 80) isHDRScene];
        goto LABEL_55;
      }

      if (CFEqual(a2, @"IsStillImageStabilizationScene"))
      {
        v22 = [*(v7 + 80) isSISScene];
LABEL_55:
        v16 = MEMORY[0x1E695E4D0];
        if (!v22)
        {
          v16 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_57;
      }

      if (CFEqual(a2, @"DigitalFlashStatus"))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = [*(v7 + 80) digitalFlashStatus];
LABEL_64:
        DictionaryRepresentation = [v26 numberWithInt:v27];
        goto LABEL_25;
      }

      if (CFEqual(a2, @"DigitalFlashExposureTimes"))
      {
        v32 = [*(v7 + 80) digitalFlashExposureTimes];
LABEL_79:
        DictionaryRepresentation = v32;
        goto LABEL_21;
      }

      if (CFEqual(a2, @"AutoFocusPositionSensorCalibration"))
      {
        v32 = -[FigCaptureCalibrationMonitor runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:devicePosition:](+[FigCaptureCalibrationMonitor sharedInstance](FigCaptureCalibrationMonitor, "sharedInstance"), "runAutoFocusPositionSensorCalibrationAndGetResultsForDeviceType:devicePosition:", v14, [objc_msgSend(*(v7 + 104) objectForKeyedSubscript:{@"Position", "intValue"}]);
        goto LABEL_79;
      }

      if (CFEqual(a2, @"CameraPoseMatrix"))
      {
        if (v14 <= 0xD && ((1 << v14) & 0x3350) != 0)
        {
          goto LABEL_22;
        }

        v35 = [*(v7 + 104) objectForKeyedSubscript:@"CaptureDeviceID"];
        if (!v35)
        {
          goto LABEL_22;
        }

        v36 = v35;
        v37 = [objc_msgSend(*(v7 + 104) objectForKeyedSubscript:{@"Position", "intValue"}];
        [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
        v38 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
        if ([v38 length] == 48)
        {
          [v38 getBytes:time length:48];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          DWORD2(v62) = v69;
          DWORD2(v61) = v68;
          *&v61 = vzip1q_s32(*time, *&time[16]).u64[0];
          *&v62 = vtrn2q_s32(*time, *&time[16]).u64[0];
          DWORD2(v64) = v71;
          DWORD2(v63) = v70;
          *&v63 = vzip1q_s32(vdupq_laneq_s32(*time, 2), vdupq_laneq_s32(*&time[16], 2)).u64[0];
          *&v64 = vuzp2q_s32(vuzp2q_s32(*time, *&time[16]), *time).u64[0];
          DictionaryRepresentation = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v61 length:64];
          goto LABEL_21;
        }

        if (!v38)
        {
          goto LABEL_22;
        }

        goto LABEL_97;
      }

      if (CFEqual(a2, @"OverheadCameraMode"))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = [*(v7 + 80) overheadCameraMode];
        goto LABEL_64;
      }

      if (CFEqual(a2, @"CenterStageRectOfInterest"))
      {
        [*(v7 + 80) centerStageRectOfInterest];
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v73);
        goto LABEL_21;
      }

      if (CFEqual(a2, @"CenterStageFramingMode"))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = [*(v7 + 80) centerStageFramingMode];
        goto LABEL_64;
      }

      if (CFEqual(a2, @"CenterStageMetadataDeliveryEnabled"))
      {
        v40 = MEMORY[0x1E696AD98];
        v41 = [*(v7 + 80) centerStageMetadataDeliveryEnabled];
      }

      else if (CFEqual(a2, @"CenterStageFieldOfViewRestrictedToWide"))
      {
        v40 = MEMORY[0x1E696AD98];
        v41 = [*(v7 + 80) centerStageFieldOfViewRestrictedToWide];
      }

      else
      {
        if (!CFEqual(a2, @"SceneClassificationActive"))
        {
          if (CFEqual(a2, @"SupportedCMIOExtensionProperties"))
          {
            v42 = [*(v7 + 80) device];
            v43 = *off_1E7989FE0;
          }

          else
          {
            if (CFEqual(a2, @"SerializedProcessingSettings"))
            {
              v44 = objc_alloc_init(FigCaptureStillImageProcessingSettings);
              if ([*(v7 + 80) sensorRawPoolEnabled])
              {
                v45 = [*(v7 + 80) sensorRawPoolRequirements];
                v46 = [objc_msgSend(v45 objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "unsignedIntValue"}];
                v47 = [objc_msgSend(v45 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
                v48 = [objc_msgSend(v45 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
                v49 = [*(v7 + 80) ultraHighResSensorRawPoolDimensions];
                v50 = v48 << 32;
                v51 = v47;
              }

              else
              {
                v49 = 0;
                v50 = 0;
                v51 = 0;
                v46 = 0;
              }

              [objc_msgSend(*(v7 + 80) "zoomCommandHandler")];
              *&v54 = v53 * *(v7 + 136);
              [(FigCaptureStillImageProcessingSettings *)v44 setUiZoomFactor:v54];
              [(FigCaptureStillImageProcessingSettings *)v44 setSensorRawPixelFormat:v46];
              [(FigCaptureStillImageProcessingSettings *)v44 setSensorRawDimensions:v51 | v50];
              [(FigCaptureStillImageProcessingSettings *)v44 setUltraHighResSensorRawDimensions:v49];
              -[FigCaptureStillImageProcessingSettings setCameraInfoByPortType:](v44, "setCameraInfoByPortType:", [*(v7 + 80) cameraInfoByPortTypeIncludingLSCGains:0 includeCameraInfoForSensorRawProcessing:v46 != 0]);
              -[FigCaptureStillImageProcessingSettings setModuleCalibrationByPortType:](v44, "setModuleCalibrationByPortType:", [*(v7 + 80) moduleCalibrationByPortType]);
              *&v61 = 0;
              v55 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v44 requiringSecureCoding:1 error:&v61];
              if (v55)
              {
                *a4 = v55;
              }

              else
              {
                v72 = -12783;
              }

              goto LABEL_22;
            }

            if (CFEqual(a2, @"ClientBundleIdentifier"))
            {
              v52 = *(v7 + 72);
              if (v52)
              {
                DictionaryRepresentation = CFStringCreateCopy(*MEMORY[0x1E695E480], v52);
                goto LABEL_21;
              }

LABEL_97:
              v39 = -12783;
LABEL_98:
              v72 = v39;
              goto LABEL_22;
            }

            DictionaryRepresentation = [*(v7 + 144) objectForKeyedSubscript:a2];
            if (DictionaryRepresentation)
            {
              goto LABEL_25;
            }

            if (![*(v7 + 80) device] || !BWDeviceTypeIsExtensionDeviceType(v14))
            {
              v39 = -12784;
              goto LABEL_98;
            }

            if (dword_1ED844030)
            {
              v66 = 0;
              v65 = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v57 = v66;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v65))
              {
                v58 = v57;
              }

              else
              {
                v58 = v57 & 0xFFFFFFFE;
              }

              if (v58)
              {
                *time = 136315394;
                *&time[4] = "captureSource_CopyProperty";
                *&time[12] = 2112;
                *&time[14] = a2;
                LODWORD(v60) = 22;
                v59 = time;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v42 = [*(v7 + 80) device];
            v43 = a2;
          }

          DictionaryRepresentation = [v42 copyProperty:v43 error:&v72];
          goto LABEL_21;
        }

        v40 = MEMORY[0x1E696AD98];
        v41 = [*(v7 + 80) smartCameraEnabled];
      }

      DictionaryRepresentation = [v40 numberWithBool:v41];
      goto LABEL_25;
    }

    captureSource_CopyProperty_cold_2(&v61);
  }

  else
  {
    captureSource_CopyProperty_cold_3(&v61);
  }

  return v61;
}

void captureSource_postNotificationWithPayload(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    if (a2)
    {
      CFRetain(a2);
      if (a3)
      {
        CFRetain(a3);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v8 = *(v7 + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __captureSource_postNotificationWithPayload_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = a2;
      block[5] = a1;
      block[6] = a3;
      dispatch_async(v8, block);
    }

    else
    {
      captureSource_postNotificationWithPayload_cold_1();
    }
  }

  else
  {
    captureSource_postNotificationWithPayload_cold_2();
  }
}

uint64_t captureSource_setPropertyInternal(const void *a1, const void *Value, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}];
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFEqual(Value, @"ActiveFormat_FigCaptureSessionOnly"))
  {
    v8 = kFigCaptureSourceProperty_ActiveFormat;
  }

  else if (CFEqual(Value, @"ActiveMaxFrameRate_FigCaptureSessionOnly"))
  {
    v8 = kFigCaptureSourceProperty_ActiveMaxFrameRate;
  }

  else
  {
    if (!CFEqual(Value, @"ActiveMinFrameRate_FigCaptureSessionOnly"))
    {
      goto LABEL_20;
    }

    v8 = kFigCaptureSourceProperty_ActiveMinFrameRate;
  }

  v9 = *v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    Value = v9;
LABEL_9:
    [*(DerivedStorage + 144) setObject:a3 forKeyedSubscript:{Value, v89, v90}];
    v13 = *(DerivedStorage + 217);
    v14 = [*(DerivedStorage + 240) count];
    if (v10)
    {
      if (v14 ? 1 : v13)
      {
        v16 = [MEMORY[0x1E695DF90] dictionary];
        [v16 setObject:v12 forKeyedSubscript:@"OldPropertyValue"];
        [v16 setObject:a3 forKeyedSubscript:@"NewPropertyValue"];
        v17 = &kFigCaptureSourceNotificationKey_ProxyShouldIgnoreNotification;
        if (!v11)
        {
          v17 = &kFigCaptureSourceNotificationKey_ClientShouldIgnoreNotification;
        }

        [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v17];
        captureSource_postNotificationWithPayload(a1, Value, v16);
      }
    }

    goto LABEL_17;
  }

LABEL_20:
  v20 = CFEqual(Value, @"PropertySetByProxy");
  v92 = v20 != 0;
  if (v20)
  {
    if (*(DerivedStorage + 217))
    {
      Value = CFDictionaryGetValue(a3, @"PropertyKey");
      a3 = CFDictionaryGetValue(a3, @"PropertyValue");
LABEL_23:
      v21 = 0;
      goto LABEL_27;
    }

    captureSource_setPropertyInternal_cold_2();
LABEL_74:
    v12 = 0;
    goto LABEL_75;
  }

  if (!CFEqual(Value, @"PropertySetByAttachedSource"))
  {
    goto LABEL_23;
  }

  if (![*(DerivedStorage + 240) count])
  {
    captureSource_setPropertyInternal_cold_1();
    goto LABEL_74;
  }

  v21 = [(__CFDictionary *)a3 objectForKeyedSubscript:0x1F21A1A90];
  Value = [(__CFDictionary *)a3 objectForKeyedSubscript:0x1F21A19F0];
  a3 = [(__CFDictionary *)a3 objectForKeyedSubscript:0x1F21A1A10];
LABEL_27:
  if (CFEqual(Value, @"VideoZoomFactor"))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  if (CFEqual(Value, @"PrewarmingEnabled"))
  {
    x_low = 0;
    v12 = 0;
    *(DerivedStorage + 216) = [(__CFDictionary *)a3 BOOLValue];
    goto LABEL_34;
  }

  if (CFEqual(Value, @"HasProxy"))
  {
    x_low = 0;
    v12 = 0;
    *(DerivedStorage + 217) = [(__CFDictionary *)a3 BOOLValue];
    goto LABEL_34;
  }

  v91 = isKindOfClass;
  if (*(DerivedStorage + 217) == 1)
  {
    v12 = [*(DerivedStorage + 144) objectForKeyedSubscript:Value];
  }

  else
  {
    v12 = 0;
  }

  if (!*(DerivedStorage + 13))
  {
    if (!CFEqual(Value, @"TorchLevel"))
    {
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFDictionary *)a3 floatValue];
      captureSource_handleThirdPartyTorchLevelCommand(a1, v25);
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_61(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ActiveMinFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = FigCaptureFrameRateFromData(a3);
      [*(DerivedStorage + 80) setMinimumFrameRate:{v23, v24}];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_3(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ActiveMaxFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!*(DerivedStorage + 224))
      {
        v34 = FigCaptureFrameRateFromData(a3);
        [*(DerivedStorage + 80) setMaximumFrameRate:{v34, v35}];
        goto LABEL_46;
      }

      v122[0] = 0x1F21A0BF0;
      v121[0] = 0x1F21A19F0;
      v121[1] = 0x1F21A1A10;
      v26 = MEMORY[0x1E696AD98];
      v27 = FigCaptureFrameRateFromData(a3);
      *&v29 = FigCaptureFrameRateAsFloat(v27, v28);
      v30 = [v26 numberWithFloat:v29];
      v121[2] = 0x1F21A1A90;
      v31 = *(DerivedStorage + 232);
      v122[1] = v30;
      v122[2] = v31;
      v32 = FigCaptureSourceSetProperty(*(DerivedStorage + 224), 0x1F21A1A70, [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:3]);
      goto LABEL_54;
    }

    captureSource_setPropertyInternal_cold_4(v97);
LABEL_95:
    x_low = LODWORD(v97[0].origin.x);
    goto LABEL_55;
  }

  if (CFEqual(Value, @"ExternalSyncDeviceSignalCompensationDelay"))
  {
    memset(v97, 0, 24);
    CMTimeMakeFromDictionary(v97, [(__CFDictionary *)a3 objectForKeyedSubscript:@"ExternalSyncDeviceSignalCompensationDelay"]);
    if (BYTE4(v97[0].origin.y))
    {
      v33 = +[FigPulseGenerator sharedFigPulseGenerator];
      *&v96.value = v97[0].origin;
      v96.epoch = *&v97[0].size.width;
      [v33 applySignalCompensationDelay:&v96];
    }

    goto LABEL_46;
  }

  if (CFEqual(Value, @"FrameDurationBounds"))
  {
    memset(v97, 0, 24);
    CMTimeMakeFromDictionary(v97, [(__CFDictionary *)a3 objectForKeyedSubscript:@"FrameDurationMin"]);
    memset(&v96, 0, sizeof(v96));
    CMTimeMakeFromDictionary(&v96, [(__CFDictionary *)a3 objectForKeyedSubscript:@"FrameDurationMax"]);
    v36 = *(DerivedStorage + 80);
    origin = v97[0].origin;
    width = v97[0].size.width;
    v118 = v96;
    [v36 setActiveVideoMinFrameDuration:&origin activeVideoMaxFrameDuration:&v118];
    goto LABEL_46;
  }

  if (CFEqual(Value, @"ActiveDepthDataMaxFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(__CFDictionary *)a3 floatValue];
      [*(DerivedStorage + 80) setDepthMaxFrameRate:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_5(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"SecondaryClientTargetFrameRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = *(DerivedStorage + 80);
      [(__CFDictionary *)a3 floatValue];
      [v37 setMaximumFrameRate:v21 attachedSessionID:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_6(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"FocusOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_7(v97);
      goto LABEL_95;
    }

    v32 = captureSource_setFocusOperation(a1, a3);
LABEL_54:
    x_low = v32;
    goto LABEL_55;
  }

  if (CFEqual(Value, @"CinematicVideoFocusOperation"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(DerivedStorage + 80) setCinematicVideoFocus:a3];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_8(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"SimulatedAperture"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = *(DerivedStorage + 80);
      [(__CFDictionary *)a3 floatValue];
      [v38 setSimulatedAperture:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_9(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ObservedPropertyCounts"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_10(v97);
      goto LABEL_95;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v39 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v114 objects:v113 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v115;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v115 != v41)
          {
            objc_enumerationMutation(a3);
          }

          [*(DerivedStorage + 80) setProperty:*(*(&v114 + 1) + 8 * i) isObserved:{objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", *(*(&v114 + 1) + 8 * i)), "intValue") > 0}];
        }

        v40 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v114 objects:v113 count:16];
      }

      while (v40);
    }

    goto LABEL_46;
  }

  if (CFEqual(Value, @"ExposureOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_11(v97);
      goto LABEL_95;
    }

    v32 = captureSource_setExposureOperation(a1, a3);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"ActiveMaxExposureDuration"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(v97, 0, 24);
      CMTimeMakeFromDictionary(v97, a3);
      v43 = *(DerivedStorage + 80);
      *&v96.value = v97[0].origin;
      v96.epoch = *&v97[0].size.width;
      [v43 setMaxExposureDurationClientOverride:&v96];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_12(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"ExposureTargetBiasOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_13(v97);
      goto LABEL_95;
    }

    v32 = captureSource_setExposureTargetBiasOperation(a1, a3);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"WhiteBalanceOperation"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_14(v97);
      goto LABEL_95;
    }

    v32 = captureSource_setWhiteBalanceOperation(a1, a3);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"TorchLevel"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_15(v97);
      goto LABEL_95;
    }

    v44 = *(DerivedStorage + 80);
    [(__CFDictionary *)a3 floatValue];
    v32 = [v44 setTorchLevel:?];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"AutoTorchEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_16(v97);
      goto LABEL_95;
    }

    v32 = [*(DerivedStorage + 80) setAutomaticallyAdjustsTorch:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"ProvidesStortorgetMetadata"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_17(v97);
      goto LABEL_95;
    }

    v32 = [*(DerivedStorage + 80) setProvidesStortorgetMetadata:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"AutoAdjustImageControlMode"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_18(v97);
      goto LABEL_95;
    }

    v32 = [*(DerivedStorage + 80) setAutomaticallyAdjustsImageControlMode:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"ImageControlMode"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_19(v97);
      goto LABEL_95;
    }

    v32 = [*(DerivedStorage + 80) setImageControlMode:{-[__CFDictionary intValue](a3, "intValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"TimeLapseCaptureRate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = *(DerivedStorage + 80);
      [(__CFDictionary *)a3 floatValue];
      [v45 setTimeLapseCaptureRate:?];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_20(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"UltraHighResolutionZeroShutterLagEnabled"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(DerivedStorage + 80) setUltraHighResolutionZeroShutterLagEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_21(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"FaceDrivenAEAFMode"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_22(v97);
      goto LABEL_95;
    }

    v32 = captureSource_setFaceDrivenAEAFMode(a1, [(__CFDictionary *)a3 intValue]);
    goto LABEL_54;
  }

  if (CFEqual(Value, @"FaceDetectionConfiguration"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(DerivedStorage + 80) setFaceDetectionConfiguration:a3];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_23(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"StillImageSceneMonitoringConfiguration"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_24(v97);
      goto LABEL_95;
    }

    v32 = [*(DerivedStorage + 80) setStillImageSceneMonitoringFlashMode:objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3 hdrMode:"objectForKeyedSubscript:" qualityPrioritization:@"FlashMode" digitalFlashMode:{"intValue"), objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"HDRMode", "intValue"), objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"QualityPrioritization", "intValue"), objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](a3, "objectForKeyedSubscript:", @"DigitalFlashMode", "intValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"VideoZoomFactor"))
  {
    if ((v91 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setZoomFactor:?];
        v10 = 1;
LABEL_170:
        v11 = v92;
        goto LABEL_9;
      }

      x_low = FigSignalErrorAtGM();
      if (!x_low)
      {
LABEL_169:
        v10 = 0;
        goto LABEL_170;
      }

      goto LABEL_34;
    }

    v46 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomFactor"];
    v93 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampRate"];
    v47 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampDuration"];
    v48 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampType"];
    v49 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampTuning"];
    v50 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampCommandID"];
    if (v46)
    {
      if (v93)
      {
        if (v47)
        {
          if (v48)
          {
            if (v49)
            {
              v51 = v50;
              if (v50)
              {
                [v46 floatValue];
                v53 = v52;
                if ([v48 intValue] == 3)
                {
                  v54 = [v49 intValue];
                  v55 = *(DerivedStorage + 80);
                  v56 = [v51 intValue];
                  LODWORD(v57) = v53;
                  [v55 rampToVideoZoomFactor:(v54 + 1) withTuning:v56 commandID:v57];
                }

                else
                {
                  v58 = *(DerivedStorage + 80);
                  v59 = [v48 intValue];
                  [v93 floatValue];
                  v61 = v60;
                  [v47 doubleValue];
                  v63 = v62;
                  v64 = [v51 intValue];
                  LODWORD(v65) = v53;
                  LODWORD(v66) = v61;
                  [v58 rampToVideoZoomFactor:v59 withRampType:v64 rate:v65 duration:v66 commandID:v63];
                }

                goto LABEL_47;
              }

              captureSource_setPropertyInternal_cold_25();
            }

            else
            {
              captureSource_setPropertyInternal_cold_26();
            }
          }

          else
          {
            captureSource_setPropertyInternal_cold_27();
          }
        }

        else
        {
          captureSource_setPropertyInternal_cold_28();
        }
      }

      else
      {
        captureSource_setPropertyInternal_cold_29();
      }
    }

    else
    {
      captureSource_setPropertyInternal_cold_30();
    }

LABEL_75:
    x_low = 4294954516;
    goto LABEL_34;
  }

  if (CFEqual(Value, @"VideoZoomRampAcceleration"))
  {
    goto LABEL_46;
  }

  if (CFEqual(Value, @"SubjectAreaChangeMonitoringEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_31(v97);
      goto LABEL_95;
    }

    v32 = [*(DerivedStorage + 80) setSubjectAreaChangeMonitoringEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
    goto LABEL_54;
  }

  if (CFEqual(Value, @"BravoCameraSelection"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v97[0].origin.x = 0.0;
      v97[0].origin.y = 0.0;
      [(__CFDictionary *)a3 getBytes:v97 length:16];
      [*(DerivedStorage + 80) setBravoStreamSelectionConfiguration:{*&v97[0].origin.x, *&v97[0].origin.y}];
      goto LABEL_46;
    }

    captureSource_setPropertyInternal_cold_32(v97);
    goto LABEL_95;
  }

  if (CFEqual(Value, @"EligibleFallbackCaptureSourceDeviceTypes"))
  {
    if (a3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_33(v97);
        goto LABEL_95;
      }
    }

    v67 = [objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"Position", "intValue"}];
    v68 = [MEMORY[0x1E695DF70] array];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v69 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v109 objects:v108 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v110;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v110 != v71)
          {
            objc_enumerationMutation(a3);
          }

          [v68 addObject:{BWCaptureDevicePositionAndDeviceTypeToPortType(v67, objc_msgSend(*(*(&v109 + 1) + 8 * j), "intValue"))}];
        }

        v70 = [(__CFDictionary *)a3 countByEnumeratingWithState:&v109 objects:v108 count:16];
      }

      while (v70);
    }

    [*(DerivedStorage + 80) setBravoStreamSelectionEligibleFallbackPortTypes:v68];
    goto LABEL_46;
  }

  if (CFEqual(Value, @"NonDestructiveCropSize"))
  {
    v97[0].origin = *MEMORY[0x1E695F060];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CGSizeMakeWithDictionaryRepresentation(a3, v97))
      {
        [*(DerivedStorage + 80) setNonDestructiveCropSize:{v97[0].origin.x, v97[0].origin.y}];
        x_low = 0;
        goto LABEL_55;
      }

      captureSource_setPropertyInternal_cold_35(&v96);
    }

    else
    {
      captureSource_setPropertyInternal_cold_34(&v96);
    }

    x_low = LODWORD(v96.value);
LABEL_55:
    if (!x_low)
    {
      goto LABEL_46;
    }

LABEL_34:
    [*(DerivedStorage + 240) count];
    if (!v12)
    {
      return x_low;
    }

    goto LABEL_18;
  }

  if (CFEqual(Value, @"AutoFlashEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_36(v97);
      goto LABEL_95;
    }

    v97[0].origin.x = 0.0;
    v73 = [(__CFDictionary *)a3 BOOLValue];
    [*(DerivedStorage + 80) setAutoFlashEnabled:v73 error:v97];
    x_low = [*&v97[0].origin.x code];
    v74 = [*(DerivedStorage + 144) objectForKeyedSubscript:@"StillImageSceneMonitoringConfiguration"];
    v106[0] = @"FlashMode";
    if (v73)
    {
      v75 = 2;
    }

    else
    {
      v75 = 0;
    }

    v107[0] = [MEMORY[0x1E696AD98] numberWithInt:v75];
    v106[1] = @"HDRMode";
    v107[1] = [v74 objectForKeyedSubscript:?];
    v106[2] = @"QualityPrioritization";
    v107[2] = [v74 objectForKeyedSubscript:?];
    v106[3] = @"DigitalFlashMode";
    v107[3] = [v74 objectForKeyedSubscript:?];
    [*(DerivedStorage + 144) setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v107, v106, 4), @"StillImageSceneMonitoringConfiguration"}];
    goto LABEL_55;
  }

  if (CFEqual(Value, @"StillImageStabilizationAutomaticallyEnabled"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_37(v97);
      goto LABEL_95;
    }

    v76 = [(__CFDictionary *)a3 BOOLValue];
    [*(DerivedStorage + 80) setStillImageStabilizationSceneDetectionEnabled:v76];
    v77 = [*(DerivedStorage + 144) objectForKeyedSubscript:@"StillImageSceneMonitoringConfiguration"];
    v104[0] = @"FlashMode";
    v105[0] = [v77 objectForKeyedSubscript:?];
    v104[1] = @"HDRMode";
    v105[1] = [v77 objectForKeyedSubscript:?];
    v104[2] = @"QualityPrioritization";
    if (v76)
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    v105[2] = [MEMORY[0x1E696AD98] numberWithInt:v78];
    v104[3] = @"DigitalFlashMode";
    v105[3] = [v77 objectForKeyedSubscript:?];
    [*(DerivedStorage + 144) setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v105, v104, 4), @"StillImageSceneMonitoringConfiguration"}];
  }

  else if (CFEqual(Value, @"ResumeAdjustingFocusNotifications_FigCaptureSessionOnly"))
  {
    if (*(DerivedStorage + 198) == 1)
    {
      v79 = *(DerivedStorage + 80);
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __captureSource_setPropertyInternal_block_invoke;
      v103[3] = &__block_descriptor_48_e5_v8__0l;
      v103[4] = DerivedStorage;
      v103[5] = a1;
      [v79 performBlockOnNotificationQueue:v103];
    }
  }

  else if (CFEqual(Value, @"VideoHDRSuspended"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      captureSource_setPropertyInternal_cold_38(v97);
      goto LABEL_95;
    }

    v80 = [(__CFDictionary *)a3 BOOLValue];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v81 = [*(DerivedStorage + 80) captureStreams];
    v82 = [v81 countByEnumeratingWithState:&v99 objects:v98 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v100;
      do
      {
        for (k = 0; k != v83; ++k)
        {
          if (*v100 != v84)
          {
            objc_enumerationMutation(v81);
          }

          [*(*(&v99 + 1) + 8 * k) setHighlightRecoverySuspended:v80];
        }

        v83 = [v81 countByEnumeratingWithState:&v99 objects:v98 count:16];
      }

      while (v83);
    }
  }

  else
  {
    if (CFEqual(Value, @"DigitalFlashMode"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setStreamingDigitalFlashMode:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_39(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"GlobalToneMappingEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setGlobalToneMappingEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_40(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"OverheadCameraMode"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setOverheadCameraMode:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_41(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"DeskViewCameraZoomFactor"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setDeskViewCameraZoomFactor:?];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_42(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"CenterStageRectOfInterest"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memset(v97, 0, 32);
        CGRectMakeWithDictionaryRepresentation(a3, v97);
        [*(DerivedStorage + 80) setCenterStageRectOfInterest:{v97[0].origin.x, v97[0].origin.y, v97[0].size.width, v97[0].size.height}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_43(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"CenterStageFramingMode"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setCenterStageFramingMode:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_44(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"CenterStageMetadataDeliveryEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setCenterStageMetadataDeliveryEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_45(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"StartPanningAtPoint"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97[0].origin.x = 0.0;
        v97[0].origin.y = 0.0;
        CGPointMakeWithDictionaryRepresentation(a3, &v97[0].origin);
        [*(DerivedStorage + 80) startPanningAtPoint:{v97[0].origin.x, v97[0].origin.y}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_46(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"PanWithTranslation"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97[0].origin.x = 0.0;
        v97[0].origin.y = 0.0;
        CGPointMakeWithDictionaryRepresentation(a3, &v97[0].origin);
        [*(DerivedStorage + 80) panWithTranslation:{v97[0].origin.x, v97[0].origin.y}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_47(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"PortraitEffectStudioLightQuality"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setPortraitEffectStudioLightQuality:{-[__CFDictionary intValue](a3, "intValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_48(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"BackgroundBlurAperture"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setBackgroundBlurAperture:?];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_49(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"StudioLightingIntensity"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFDictionary *)a3 floatValue];
        [*(DerivedStorage + 80) setStudioLightingIntensity:?];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_50(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"GesturesEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setGesturesEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_51(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"SuppressedGesturesEnabled"))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(DerivedStorage + 80) setSuppressedGesturesEnabled:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_52(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"BackgroundReplacementPixelBuffer"))
    {
      if (!a3 || (v86 = CFGetTypeID(a3), v86 == CVPixelBufferGetTypeID()))
      {
        [*(DerivedStorage + 80) setBackgroundReplacementPixelBuffer:a3];
        goto LABEL_46;
      }

      captureSource_setPropertyInternal_cold_53(v97);
      goto LABEL_95;
    }

    if (CFEqual(Value, @"PerformOneShotFraming"))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_54(v97);
        goto LABEL_95;
      }

      if ([(__CFDictionary *)a3 BOOLValue])
      {
        [*(DerivedStorage + 80) performOneShotFraming];
      }
    }

    else if (CFEqual(Value, @"ResetFraming"))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_55(v97);
        goto LABEL_95;
      }

      if ([(__CFDictionary *)a3 BOOLValue])
      {
        [*(DerivedStorage + 80) resetFraming];
      }
    }

    else
    {
      if (CFEqual(Value, @"CenterStageFieldOfViewRestrictedToWide"))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(DerivedStorage + 80) setCenterStageFieldOfViewRestrictedToWide:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
          goto LABEL_46;
        }

        captureSource_setPropertyInternal_cold_56(v97);
        goto LABEL_95;
      }

      if (!CFEqual(Value, @"Hidden"))
      {
        if (CFEqual(Value, @"EnabledSmartFramingFieldsOfView"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(DerivedStorage + 80) setSmartFramingEnabledFieldsOfView:a3];
            goto LABEL_46;
          }

          captureSource_setPropertyInternal_cold_58(v97);
          goto LABEL_95;
        }

        if (CFEqual(Value, @"SmartFramingMonitorRunning"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(DerivedStorage + 80) setSmartFramingIsMonitoringScene:{-[__CFDictionary BOOLValue](a3, "BOOLValue")}];
            goto LABEL_46;
          }

          captureSource_setPropertyInternal_cold_59(v97);
          goto LABEL_95;
        }

        if (!CFEqual(Value, @"DeskViewEnabled"))
        {
          if (![*(DerivedStorage + 80) device] || !BWDeviceTypeIsExtensionDeviceType(v7))
          {
            x_low = 4294954512;
            goto LABEL_34;
          }

          if (dword_1ED844030)
          {
            LODWORD(origin.x) = 0;
            LOBYTE(v118.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v32 = [objc_msgSend(*(DerivedStorage + 80) device];
          goto LABEL_54;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          captureSource_setPropertyInternal_cold_60(v97);
          goto LABEL_95;
        }

        v32 = captureSource_setDeskViewEnabled(a1, [(__CFDictionary *)a3 BOOLValue]);
        goto LABEL_54;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        captureSource_setPropertyInternal_cold_57(v97);
        goto LABEL_95;
      }

      if ([*(DerivedStorage + 80) device])
      {
        [objc_msgSend(*(DerivedStorage + 80) "device")];
      }

      else if (dword_1ED844030)
      {
        LODWORD(origin.x) = 0;
        LOBYTE(v118.value) = 0;
        v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

LABEL_46:
  if ((v91 & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_47:
  if (!*(DerivedStorage + 13))
  {
    [*(DerivedStorage + 144) setObject:-[__CFDictionary objectForKeyedSubscript:](a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"ZoomFactor", Value}];
    v94[0] = 0x1F21A13D0;
    v95[0] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomFactor"];
    v94[1] = 0x1F21A1C90;
    v95[1] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomFactor"];
    v94[2] = 0x1F21A1470;
    v94[3] = 0x1F21A1CB0;
    v95[2] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"ZoomRampCommandID"];
    v95[3] = MEMORY[0x1E695E118];
    captureSource_postNotificationWithPayload(a1, @"VideoZoomRampUpdate", [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:4]);
  }

  [*(DerivedStorage + 240) count];
LABEL_17:
  x_low = 0;
  if (v12)
  {
LABEL_18:
    CFRelease(v12);
  }

  return x_low;
}

BOOL fcsf_isHighResPhotoFormat(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (a1 == 2016 && v1 == 1512)
  {
    return 1;
  }

  v5 = a1 == 2048 && v1 == 1536;
  v2 = 1;
  if ((a1 & 0xFFFFFFF7FFFFFFFFLL) != 0x79000000A20 && !v5 && (a1 != 2736 || v1 != 2052))
  {
    v7 = v1 == 2320 || v1 == 2316;
    if (a1 == 3088 && v7 || a1 == 3264 && v1 == 2448 || a1 == 3680 && v1 == 2760)
    {
      return 1;
    }

    return a1 == 4032 && v1 == 3024;
  }

  return v2;
}

uint64_t captureSource_copyCaptureSourcesForStreamUniqueIDs(void *a1, const __CFArray *a2)
{
  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a1;
  v12 = [a1 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v12)
  {
    v11 = *v16;
    do
    {
      v4 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * v4);
        if (CFArrayGetCount(a2) >= 1)
        {
          v6 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if ([v5 isEqualToString:{objc_msgSend(*(DerivedStorage + 104), "objectForKeyedSubscript:", @"UniqueID"}])
            {
              [v13 setObject:ValueAtIndex forKeyedSubscript:{BWCaptureDevicePositionAndDeviceTypeToPortType(objc_msgSend(objc_msgSend(*(DerivedStorage + 104), "objectForKeyedSubscript:", @"Position", "intValue"), objc_msgSend(objc_msgSend(*(DerivedStorage + 104), "objectForKeyedSubscript:", @"DeviceType", "intValue"))}];
            }

            ++v6;
          }

          while (CFArrayGetCount(a2) > v6);
        }

        ++v4;
      }

      while (v4 != v12);
      v12 = [obj countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v12);
  }

  return [v13 copy];
}

uint64_t FigCaptureClientHasAccessToCamera(_OWORD *a1)
{
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  if (audit_token_to_pid(&v7))
  {
    if (!FigCameraUsageProhibited() || (v3 = a1[1], *v7.val = *a1, *&v7.val[4] = v3, result = FigCameraUsageAllowedForClient(&v7), result))
    {
      FigCaptureGetTCCServer();
      v5 = a1[1];
      *v7.val = *a1;
      *&v7.val[4] = v5;
      if (FigCaptureTCCAccessCheckAuditToken())
      {
        return 1;
      }

      else
      {
        v6 = a1[1];
        *v7.val = *a1;
        *&v7.val[4] = v6;
        return FigCaptureClientIsRunningInXCTest(&v7) != 0;
      }
    }
  }

  else
  {
    FigCaptureClientHasAccessToCamera_cold_1();
    return 0;
  }

  return result;
}

BOOL FigCameraUsageProhibited()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v2 = [v1 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE00]] == 2;
  objc_autoreleasePoolPop(v0);
  return v2;
}

BOOL FigCaptureTCCAccessCheckAuditToken()
{
  tcc_service_singleton_for_CF_name();
  v0 = tcc_credential_create_for_process_with_audit_token();
  v1 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000uLL;
  tcc_server_message_request_authorization();

  v2 = v5[3] == 2;
  _Block_object_dispose(&v4, 8);
  return v2;
}

void sub_1AC92B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureGetTCCServer()
{
  if (FigCaptureGetTCCServer_onceToken != -1)
  {
    FigCaptureGetTCCServer_cold_1();
  }

  return FigCaptureGetTCCServer_sFigCaptureTCCServer;
}

uint64_t __FigCaptureTCCAccessCheckAuditToken_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    result = tcc_authorization_record_get_authorization_right();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t FigVideoCaptureSourceSetClientProcessRequiresDynamicTCCAccessChecks(uint64_t a1, char a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8) == 1)
  {
    v4 = result;
    if (!*(result + 12))
    {
      FigSimpleMutexLock();
      *(v4 + 197) = a2;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t FigVideoCaptureSourceSetClientProcessHasAccessToCamera(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 12))
  {
    v4 = result;
    if (*(result + 8) == 1)
    {
      result = [objc_msgSend(*(result + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      if ((result - 17) >= 4)
      {
        FigSimpleMutexLock();
        *(v4 + 196) = a2;
        v5 = *(v4 + 80);
        if (v5)
        {
          BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(v5, a2);
        }

        return FigSimpleMutexUnlock();
      }
    }
  }

  return result;
}

uint64_t __csr_createFormatsArrayFromSerializedSource_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[FigCaptureSourceVideoFormat alloc] initWithXPCEncoding:a3];
  [*(a1 + 32) addObject:v4];
  if ([(FigCaptureSourceFormat *)v4 format]== 875704438 && *(a1 + 40) == 1)
  {
    v5 = [(FigCaptureSourceVideoFormat *)v4 copyWithNewPixelFormat:875704422];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 32) addObject:v5];
    }
  }

  return 1;
}

uint64_t captureSourceServer_handleSourceCopyPropertyMessage(int a1, void *a2)
{
  cf1 = 0;
  v8 = 0;
  cf = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v2)
  {
    v5 = v2;
    captureSourceServer_handleSourceCopyPropertyMessage_cold_1();
  }

  else
  {
    v3 = FigXPCMessageCopyCFString();
    if (v3)
    {
      v5 = v3;
      captureSourceServer_handleSourceCopyPropertyMessage_cold_2();
    }

    else
    {
      captureSourceServer_handleSourceCopyPropertyMessage_cold_5(&v9);
      return v9;
    }
  }

  return v5;
}

uint64_t captureSourceRemote_LockForConfiguration()
{
  CMBaseObjectGetDerivedStorage();
  FigAtomicIncrement32();
  return 0;
}

uint64_t captureSourceRemote_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"Clock"))
  {
    v7 = *(DerivedStorage + 16);
    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    *(DerivedStorage + 16) = v8;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (*(DerivedStorage + 48) < 1)
  {
    v10 = 4294950844;
    goto LABEL_10;
  }

  ObjectID = captureSourceRemote_getObjectID(a1, &v12);
  if (ObjectID)
  {
    v10 = ObjectID;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_12();
LABEL_14:
    FigDebugAssert3();
    goto LABEL_10;
  }

  v10 = FigXPCSendStdSetPropertyMessage();
  if (v10)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_12();
    goto LABEL_14;
  }

LABEL_10:
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t captureSourceServer_handleSourceSetPropertyMessage(int a1, void *a2)
{
  v6 = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v2)
  {
    v4 = v2;
    captureSourceServer_handleSourceSetPropertyMessage_cold_1(v2, &v6, &v7);
    v3 = v7;
  }

  else
  {
    v3 = v6;
    v4 = FigXPCHandleStdSetPropertyMessage();
    if (v4)
    {
      captureSourceServer_handleSourceSetPropertyMessage_cold_2();
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t captureSourceRemote_UnlockForConfiguration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((FigAtomicDecrement32() & 0x80000000) != 0)
  {
    *(DerivedStorage + 48) = 0;
  }

  return 0;
}

uint64_t captureSourceRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    captureSourceRemote_CopyProperty_cold_7();
    goto LABEL_51;
  }

  v8 = DerivedStorage;
  if (!CFEqual(a2, @"Clock"))
  {
    if (CFEqual(a2, @"AttributesDictionary"))
    {
      CFRetain(*(v8 + 32));
      v10 = 0;
      v11 = *(v8 + 32);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"Formats"))
    {
      CFRetain(*(v8 + 40));
      v10 = 0;
      v11 = *(v8 + 40);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"SourceToken"))
    {
      v13 = (v8 + 24);
      if (!*(v8 + 24))
      {
        goto LABEL_23;
      }

      v14 = *MEMORY[0x1E695E480];
      v15 = kCFNumberSInt64Type;
    }

    else
    {
      if (CFEqual(a2, @"LockedForConfiguration"))
      {
        captureSourceRemote_CopyProperty_cold_8(v8, a4);
        goto LABEL_51;
      }

      if (!CFEqual(a2, @"LockedForConfigurationCount"))
      {
        if (CFEqual(a2, @"ServerConnectionDied"))
        {
          v10 = 0;
          if (*(v8 + 9))
          {
            v16 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v16 = MEMORY[0x1E695E4C0];
          }

          v11 = *v16;
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      v14 = *MEMORY[0x1E695E480];
      v13 = (v8 + 48);
      v15 = kCFNumberSInt32Type;
    }

    v10 = 0;
    *a4 = CFNumberCreate(v14, v15, v13);
    goto LABEL_10;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    CFRetain(v9);
    v10 = 0;
    v11 = *(v8 + 16);
LABEL_9:
    *a4 = v11;
    goto LABEL_10;
  }

LABEL_23:
  if (!CFEqual(a2, @"Clock"))
  {
    v25 = 0;
    v21 = captureSourceRemote_createBasicMessage(a1, 778268793, &v25);
    if (v21)
    {
      v10 = v21;
      captureSourceRemote_CopyProperty_cold_2();
    }

    else
    {
      v22 = FigXPCMessageSetCFString();
      if (v22)
      {
        v10 = v22;
        captureSourceRemote_CopyProperty_cold_3();
      }

      else
      {
        v23 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v23)
        {
          FigXPCRelease();
          captureSourceRemote_CopyProperty_cold_6();
LABEL_51:
          v10 = 0;
          goto LABEL_10;
        }

        v10 = v23;
        captureSourceRemote_CopyProperty_cold_4();
      }
    }

    FigXPCRelease();
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_10;
  }

  if (*(v8 + 52) == 2 && (FigCaptureAudiomxdSupportEnabled() & 1) != 0)
  {
    v10 = 4294954509;
  }

  else
  {
    v29 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v17 = FigAudioDeviceClockRemoteCreateForServerObject();
    v10 = v17;
    if (v17 == 1315914603 || v17 == 0)
    {
      v19 = *(v26 + 6);
      if (v19)
      {
        if (v19 == 1)
        {
          if (v29)
          {
            fig_log_get_emitter();
            FigDebugAssert3();
          }

          HostTimeClock = CMClockGetHostTimeClock();
          if (HostTimeClock)
          {
            HostTimeClock = CFRetain(HostTimeClock);
          }

          v29 = HostTimeClock;
        }
      }

      else if (v29)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
      }

      v10 = 0;
      *(v8 + 16) = v29;
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    _Block_object_dispose(&v25, 8);
    v24 = *(v8 + 16);
    if (v24)
    {
      v24 = CFRetain(v24);
    }

    *a4 = v24;
    if (v10)
    {
      captureSourceRemote_CopyProperty_cold_1();
    }
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

void sub_1AC92C218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t FigCaptureFitAspectInsideDimensions(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 == 0.0)
  {
    a3 = a1 / SHIDWORD(a1);
  }

  if ((a1 / SHIDWORD(a1)) >= a3)
  {
    v4 = (SHIDWORD(a1) / SHIDWORD(a2) * HIDWORD(a2));
    v3 = llroundf((a3 * v4) / a2) * a2;
    if (v3 > a1)
    {
      v3 -= a2;
      v4 = llroundf((v3 / a3) / SHIDWORD(a2)) * HIDWORD(a2);
    }
  }

  else
  {
    v3 = a1 / a2 * a2;
    v4 = llroundf((v3 / a3) / SHIDWORD(a2)) * HIDWORD(a2);
    if (v4 > SHIDWORD(a1))
    {
      v4 = (v4 - HIDWORD(a2));
      v3 = llroundf((a3 * v4) / a2) * a2;
    }
  }

  return v3 | (v4 << 32);
}

uint64_t FigCaptureFrameRateAsData(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = a2;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:12];
}

uint64_t FigCaptureSourceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t FigCaptureSourceCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t captureSource_setPropertyWithDeviceCheck(const void *a1, int a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    captureSource_setPropertyWithDeviceCheck_cold_5(&v15);
    return v15;
  }

  v11 = DerivedStorage;
  FigSimpleMutexLock();
  if (*(v11 + 12))
  {
    captureSource_setPropertyWithDeviceCheck_cold_1(&v15);
    goto LABEL_20;
  }

  if (a3)
  {
    v12 = *(v11 + 80) == a3;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!v12)
    {
      captureSource_setPropertyWithDeviceCheck_cold_2(&v15);
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v12 = 0;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(v11 + 64) > 0)
  {
    if (BWDeviceTypeIsExtensionDeviceType([objc_msgSend(*(v11 + 104) objectForKeyedSubscript:{@"DeviceType", "intValue"}]) || objc_msgSend(*(v11 + 152), "containsObject:", a4))
    {
      v13 = captureSource_setPropertyInternal(a1, a4, a5);
      if (v13)
      {
        captureSource_setPropertyWithDeviceCheck_cold_3();
      }
    }

    else
    {
      v13 = 4294954512;
    }

    goto LABEL_14;
  }

  captureSource_setPropertyWithDeviceCheck_cold_4(&v15);
LABEL_20:
  v13 = v15;
LABEL_14:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t captureSourceRemote_CopyProperty_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

void __captureSourceServer_handleCopySourcesMessage_block_invoke(uint64_t a1)
{
  if ((gFigXPCServerCaptureSource_block_invoke_registeredForChanges & 1) == 0)
  {
    gFigXPCServerCaptureSource_block_invoke_registeredForChanges = 1;
    FigCameraUsageRegisterChangeHandler(&__block_literal_global_126);
  }

  v2 = *(a1 + 56);
  *v13.val = *(a1 + 40);
  *&v13.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(*MEMORY[0x1E695E480], &v13);
  if (v3)
  {
    v4 = v3;
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.tcc.delegated-services", 0);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFArrayGetTypeID())
      {
        v14.length = CFArrayGetCount(v6);
        v14.location = 0;
        v8 = CFArrayContainsValue(v6, v14, *MEMORY[0x1E69D5520]) != 0;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 56);
  *v13.val = *(a1 + 40);
  *&v13.val[4] = v9;
  HasAccessToCamera = FigCaptureClientHasAccessToCamera(&v13);
  if (CFArrayGetCount(*(a1 + 32)) >= 1)
  {
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v11);
      FigVideoCaptureSourceSetClientProcessRequiresDynamicTCCAccessChecks(ValueAtIndex, v8);
      FigVideoCaptureSourceSetClientProcessHasAccessToCamera(ValueAtIndex, HasAccessToCamera);
      ++v11;
    }

    while (v11 < CFArrayGetCount(*(a1 + 32)));
  }

  CFRelease(*(a1 + 32));
}

BOOL OUTLINED_FUNCTION_135_0(NSObject *a1)
{
  v3 = *(v1 - 133);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return [v10 _indexOfBufferBeforeOrEqualToPTS:va inputIndex:0 applyFrameDropsMitigation:1];
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{

  return [a45 setObject:a1 forKeyedSubscript:v45];
}

CGFloat OUTLINED_FUNCTION_134(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{

  return FigCaptureMetadataUtilitiesScaleRect2D(a1, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_134_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a29 objects:&a13 count:16];
}

uint64_t OUTLINED_FUNCTION_134_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v71 countByEnumeratingWithState:&a71 objects:&a55 count:16];
}

uint64_t OUTLINED_FUNCTION_134_2(void *a1, const char *a2, ...)
{
  va_start(va, a2);

  return [a1 countByEnumeratingWithState:v2 - 112 objects:va count:16];
}

void *BWInvertRowMajorViewMatrixData(void *result)
{
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    [result getBytes:&v16 length:{objc_msgSend(result, "length")}];
    v1 = vzip1q_s32(v16, v18);
    v2 = vzip1q_s32(v17, 0);
    v3 = vzip1q_s32(v1, v2);
    v4 = vzip2q_s32(v1, v2);
    v5 = vzip1q_s32(vzip2q_s32(v16, v18), vdupq_laneq_s32(v17, 2));
    v6 = vzip1q_s32(v3, v5);
    v7 = vdupq_lane_s32(*v4.i8, 1);
    v8 = vzip1q_s32(v6, v4);
    v9 = vzip1q_s32(vzip2q_s32(v3, v5), vdupq_lane_s32(*v18.i8, 1));
    v10 = vzip2q_s32(v6, v7);
    v11 = vnegq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v16, 3), v17, v17, 3), v18, v18, 3));
    v12 = vzip1q_s32(v8, v9);
    v13 = vzip2q_s32(v8, v9);
    v14 = vzip1q_s32(v10, v11);
    v15[0] = vzip1q_s32(v12, v14);
    v15[1] = vzip2q_s32(v12, v14);
    v15[2] = vzip1q_s32(v13, vzip2q_s32(v10, v11));
    return [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:48];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return [v57 countByEnumeratingWithState:&a57 objects:&a41 count:16];
}

uint64_t OUTLINED_FUNCTION_83_4()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_64_1(void *a1, const char *a2, uint64_t a3)
{

  return [a1 processorController:a3 didFinishProcessingBuffer:v3 metadata:v4 type:19 captureFrameFlags:0 processorInput:? err:?];
}

uint64_t OUTLINED_FUNCTION_86_2()
{
  v4 = *(v0 + *(v2 + 3628));

  return [v4 objectForKeyedSubscript:v1];
}

CFTypeRef OUTLINED_FUNCTION_4_12@<X0>(CMAttachmentBearerRef target@<X1>, const __CFString *a2@<X8>)
{

  return CMGetAttachment(target, a2, 0);
}

uint64_t OUTLINED_FUNCTION_86_5()
{
  *(v0 - 100) = 0;
  *(v0 - 101) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  v3 = *(v1 + *(v0 + 2812));

  return [v3 inputs];
}

uint64_t OUTLINED_FUNCTION_46_6()
{
  *(v0 - 92) = 0;
  *(v0 - 93) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_46_7(CFTypeRef value)
{

  CMSetAttachment(v2, v1, value, 1u);
}

uint64_t OUTLINED_FUNCTION_46_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v64 objectForKeyedSubscript:a64];
}

uint64_t OUTLINED_FUNCTION_46_13()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_46_14()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_46_16@<X0>(uint64_t a1@<X8>)
{

  return CMSimpleQueueCreate(v3, v2, (v1 + a1));
}

uint64_t OUTLINED_FUNCTION_46_18()
{
  *(v0 - 92) = 0;
  *(v0 - 93) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_131()
{
  v3 = *(v0 + *v1);

  return [v3 videoFormat];
}

BOOL OUTLINED_FUNCTION_131_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38, char a39, os_log_type_t type, int a41)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v67 countByEnumeratingWithState:v68 - 176 objects:&a67 count:16];
}

uint64_t OUTLINED_FUNCTION_131_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:v34 - 160 objects:&a33 count:16];
}

BOOL OUTLINED_FUNCTION_55(NSObject *a1)
{
  v2 = STACK[0x250];

  return os_log_type_enabled(a1, v2);
}

__n128 OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 - 208) = a13;
  *(v14 - 192) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:v34 - 160 objects:&a33 count:16];
}

uint64_t OUTLINED_FUNCTION_55_9()
{
  v1 = STACK[0x308];

  return [v1 countByEnumeratingWithState:&STACK[0x770] objects:&STACK[0x6F0] count:16];
}

CMTime *OUTLINED_FUNCTION_55_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a7, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a11, uint64_t a12)
{
  rhs_16 = a1;

  return CMTimeAdd(&a12, &lhsa, &rhsa);
}

CFTypeRef OUTLINED_FUNCTION_55_14(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

double OUTLINED_FUNCTION_73_2()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_73_5()
{
  v3 = *(v0 + 280);

  return [v3 addObject:v1];
}

uint64_t captureSession_buildGraphWithConfiguration()
{
  v1 = MEMORY[0x1EEE9AC00]();
  v906 = v0;
  v919 = v2;
  v932 = v3;
  v5 = v4;
  v941 = v6;
  v916 = v7;
  v925 = v8;
  v10 = v9;
  v1006 = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1200 = 0;
  v1199 = 0;
  v1198 = 0;
  v947 = v10;
  v923 = [v10 configuresAppAudioSessionToMixWithOthers];
  v1009 = DerivedStorage;
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_buildGraphWithConfiguration_cold_1();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v12 = v1006;
  if (dword_1ED844050)
  {
    LODWORD(v1238[0]) = 0;
    LOBYTE(v1216) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = v1006;
  }

  if (*(DerivedStorage + 752))
  {
    captureSession_buildGraphWithConfiguration_cold_2();
    goto LABEL_985;
  }

  v14 = [*(DerivedStorage + 776) count];
  os_unfair_lock_lock((v1009 + 384));
  v1200 = captureSession_checkClientSessionIsAllowedToRun(v12, v947, &v1199 + 1, &v1198, &v1199);
  os_unfair_lock_unlock((v1009 + 384));
  HIDWORD(v907) = v1200 == 0;
  if (v1200)
  {
    captureSession_buildGraphWithConfiguration_cold_3();
    goto LABEL_962;
  }

  if (FigCapturePlatformIdentifier() < 10)
  {
    v15 = 1;
  }

  else if (v1198 == 4)
  {
    v15 = 3;
  }

  else
  {
    v15 = [v947 allCameraSourcesAreMetadataCameras] ^ 1;
  }

  v1010 = v15;
  v16 = *(v1009 + 832);
  if (v16 && v916)
  {
    if (*(v1009 + 112) == 1)
    {
      [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      v16 = *(v1009 + 832);
    }

    v16 = [[BWFigCaptureSession alloc] initWithFigCaptureSession:v1006];
    *(v1009 + 832) = v16;
    if (*(v1009 + 112) == 1)
    {
      [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
      v16 = *(v1009 + 832);
    }
  }

  if (!v16)
  {
    captureSession_buildGraphWithConfiguration_cold_28();
    goto LABEL_985;
  }

  v17 = objc_alloc_init(BWGraph);
  *(v1009 + 752) = v17;
  if (!v17)
  {
    captureSession_buildGraphWithConfiguration_cold_27();
LABEL_985:
    HIDWORD(v907) = 0;
    if (LODWORD(v1243[0]))
    {
      goto LABEL_857;
    }

    goto LABEL_963;
  }

  v18 = *(v1009 + 88);
  ++*(v1009 + 760);
  v1008 = v17;
  [(BWGraph *)v17 setClientApplicationID:v18];
  [*(v1009 + 752) setClientPID:*(v1009 + 16)];
  [*(v1009 + 752) setClientExpectsCameraMountedInLandscapeOrientation:{objc_msgSend(v947, "clientExpectsCameraMountedInLandscapeOrientation")}];
  [*(v1009 + 752) setStatusDelegate:*(v1009 + 832)];
  [*(v1009 + 752) setInterruptionDelegate:*(v1009 + 832)];
  v20 = objc_alloc_init(FigCaptureSessionPipelines);
  *(v1009 + 784) = v20;
  v915 = (v1009 + 88);
  v21 = *(v1009 + 832);
  if (v21)
  {
    objc_setProperty_nonatomic(v21, v19, v20, 16);
    v22 = *(v1009 + 832);
    if (v22)
    {
      *(v22 + 24) = *(v1009 + 760);
    }
  }

  [+[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor];
  v917 = [+[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedContinuityDisplayLayoutMonitor")];
  [*(v1009 + 752) beginConfiguration];
  [*(v1009 + 752) setMemoryAnalyticsReportingEnabled:1];
  [objc_msgSend(*(v1009 + 752) "memoryAnalyticsPayload")];
  [objc_msgSend(*(v1009 + 752) "memoryAnalyticsPayload")];
  if ([*(v1009 + 752) memoryAnalyticsReportingEnabled])
  {
    [+[FigCaptureMemoryReporter sharedInstance](FigCaptureMemoryReporter resetPeakFootprint];
  }

  shouldEnableDeferredNodePrepare = captureSession_shouldEnableDeferredNodePrepare([v947 connectionConfigurations]);
  v1194 = 0u;
  v1195 = 0u;
  v1196 = 0u;
  v1197 = 0u;
  v24 = [v947 connectionConfigurations];
  v25 = [v24 countByEnumeratingWithState:&v1194 objects:v1193 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v1195;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v1195 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v1194 + 1) + 8 * i);
        v30 = [v29 irisSinkConfiguration];
        if (v30)
        {
          v31 = v30;
          if ([v29 mediaType] == 1986618469)
          {
            [-[FigCaptureSessionPipelines movieFileSinkPipelineWithSinkID:](v20 movieFileSinkPipelineWithSinkID:{objc_msgSend(v31, "sinkID")), "setMomentCaptureMovieRecordingEnabled:", objc_msgSend(v31, "momentCaptureMovieRecordingEnabled")}];
            goto LABEL_38;
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v1194 objects:v1193 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:
  if (!cs_configurationUsesSourceType(v947, 2))
  {
    goto LABEL_39;
  }

  LODWORD(v1238[0]) = 0;
  if (!cs_audioIsPlayingToBuiltInSpeaker([MEMORY[0x1E698D710] sharedInstance], v1238))
  {
    goto LABEL_39;
  }

  if (([v947 configuresAppAudioSession] & 1) == 0 && LODWORD(v1238[0]) == *(v1009 + 16))
  {
    if (dword_1ED844050)
    {
      LODWORD(v1216) = 0;
      LOBYTE(v1213[0]) = 0;
      v146 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v147 = v1216;
      if (os_log_type_enabled(v146, v1213[0]))
      {
        v148 = v147;
      }

      else
      {
        v148 = v147 & 0xFFFFFFFE;
      }

      if (v148)
      {
        LODWORD(v1241[0]) = 136315394;
        *(v1241 + 4) = "captureSession_buildGraphWithConfiguration";
        WORD6(v1241[0]) = 1024;
        *(v1241 + 14) = v1238[0];
        LODWORD(p_isa) = 18;
        v887 = v1241;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_39:
    HIDWORD(v910) = 0;
    goto LABEL_40;
  }

  HIDWORD(v910) = 1;
LABEL_40:
  v32 = v1009;
  v33 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v947 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime() restrictions:*(v1009 + 496)];
  if (!v33)
  {
    goto LABEL_838;
  }

  v34 = v33;
  *(v1009 + 816) = [(FigCaptureSessionParsedConfiguration *)v33 useOfflineVISPipeline];
  v1005 = v34;
  if (shouldEnableDeferredNodePrepare)
  {
    shouldEnableDeferredNodePrepare = captureSession_shouldEnableDeferredNodePrepare([(FigCaptureSessionParsedConfiguration *)v34 connectionConfigurationsToBuild]);
    v32 = v1009;
  }

  if (dword_1ED844050)
  {
    LODWORD(v1238[0]) = 0;
    LOBYTE(v1216) = 0;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v1238[0];
    if (os_log_type_enabled(v35, v1216))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v38 = *(v1009 + 104);
      LODWORD(v1241[0]) = 136315650;
      *(v1241 + 4) = "captureSession_buildGraphWithConfiguration";
      WORD6(v1241[0]) = 2114;
      *(v1241 + 14) = v38;
      WORD3(v1241[1]) = 1024;
      DWORD2(v1241[1]) = shouldEnableDeferredNodePrepare;
      LODWORD(p_isa) = 28;
      v887 = v1241;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v32 = v1009;
  }

  [*(v32 + 752) setDeferredNodePrepareSupported:{shouldEnableDeferredNodePrepare, v887}];
  *(v32 + 184) = [v947 automaticallyRunsDeferredStart];
  memset(v1241, 0, sizeof(v1241));
  v1242 = 0u;
  v39 = [(FigCaptureSessionParsedConfiguration *)v34 parsedMetadataSinkConfigurations];
  v40 = [(NSArray *)v39 countByEnumeratingWithState:v1241 objects:v1243 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = **&v1241[1];
    v43 = *off_1E798D130;
LABEL_52:
    v44 = 0;
    while (1)
    {
      if (**&v1241[1] != v42)
      {
        objc_enumerationMutation(v39);
      }

      if ([objc_msgSend(objc_msgSend(*(*(&v1241[0] + 1) + 8 * v44) "metadataObjectConnectionConfiguration")])
      {
        break;
      }

      if (v41 == ++v44)
      {
        v41 = [(NSArray *)v39 countByEnumeratingWithState:v1241 objects:v1243 count:16];
        if (v41)
        {
          goto LABEL_52;
        }

        goto LABEL_58;
      }
    }

    v45 = 4;
    if (![*v915 isEqualToString:0x1F21851F0])
    {
      goto LABEL_63;
    }

    v46 = @"Face ID";
    goto LABEL_62;
  }

LABEL_58:
  v45 = 1;
  if ([*v915 isEqualToString:0x1F21851F0])
  {
    v46 = @"Attention Detection";
LABEL_62:
    [*(v1009 + 752) setUserFriendlyClientName:v46];
  }

LABEL_63:
  v47 = [MEMORY[0x1E695DF70] array];
  memset(v1241, 0, sizeof(v1241));
  v1242 = 0u;
  v48 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations];
  v49 = [(NSArray *)v48 countByEnumeratingWithState:v1241 objects:v1243 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = **&v1241[1];
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (**&v1241[1] != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v1241[0] + 1) + 8 * j);
        v54 = [objc_msgSend(v53 "cameraConfiguration")];
        if (v54 != 5 && v54 != 10)
        {
          [v47 addObject:v53];
        }
      }

      v50 = [(NSArray *)v48 countByEnumeratingWithState:v1241 objects:v1243 count:16];
    }

    while (v50);
  }

  v921 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithArray:{v47), "count"}];
  *(v1009 + 769) = [(FigCaptureSessionParsedConfiguration *)v1005 empty];
  v56 = (v941 & 1) == 0 && captureSession_shouldPrewarmMemoryPool();
  SystemStyleFromDefaults = [(FigCaptureSessionParsedConfiguration *)v1005 smartStyle];
  v57 = *(CMBaseObjectGetDerivedStorage() + 88);
  SystemStyle = FigCaptureSmartStyleSettingsGetSystemStyle(v57);
  if (SystemStyle)
  {
    if (([SystemStyle isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
    {
      SystemStyleBackgroundedTimestamp = FigCaptureSmartStyleSettingsGetSystemStyleBackgroundedTimestamp(v57);
      [objc_msgSend(MEMORY[0x1E695DF00] "now")];
      v61 = v60;
      [SystemStyleBackgroundedTimestamp doubleValue];
      if (v61 - v62 > 30.0)
      {
        FigCaptureSmartStyleSettingsClearSystemStyleAndBackgroundedTimestampForBundleID(v57);
      }
    }
  }

  if (!SystemStyleFromDefaults)
  {
    SystemStyleFromDefaults = captureSession_getSystemStyleFromDefaults();
  }

  v63 = 0;
  v1033 = 0;
  v64 = v1006;
  if (cs_isTrueVideoCaptureEnabled(v1005))
  {
    captureSession_resumeTrueVideoVISProcessingForSemaphore(v1006, 0);
    os_unfair_lock_lock((v1009 + 868));
    *(v1009 + 856) = dispatch_semaphore_create(1);
    *(v1009 + 864) = 0;
    os_unfair_lock_unlock((v1009 + 868));
  }

  v1007 = (v1009 + 776);
  v1045 = v20;
  if (![(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations] count])
  {
    os_unfair_lock_lock((v1009 + 384));
    v81 = *(v1009 + 397);
    v82 = [*(v1009 + 512) tccIdentity];
    os_unfair_lock_unlock((v1009 + 384));
    v83 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
    v84 = *(v1009 + 8);
    v85 = *(v1009 + 36);
    v1243[0] = *(v1009 + 20);
    v1243[1] = v85;
    p_isa = 0;
    LOBYTE(v888) = v81;
    [v83 setSessionStateForSessionID:v84 running:1 containsVideoSource:0 clientAuditToken:v1243 tccIdentity:v82 mediaEnvironment:0 sessionIsPrewarming:? completionHandler:?];
    v1023 = 0;
    goto LABEL_109;
  }

  if (v14)
  {
    v1023 = 0;
    if (v56)
    {
      goto LABEL_923;
    }

    goto LABEL_89;
  }

  LODWORD(v908) = v45;
  v911 = @"com.apple.biometrickitd";
  LODWORD(v913) = v56;
  v94 = [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations] count];
  v1024 = [MEMORY[0x1E695DF70] arrayWithCapacity:v94];
  v914 = v94;
  v995 = [MEMORY[0x1E695DF70] arrayWithCapacity:v94];
  v1189 = 0u;
  v1190 = 0u;
  v1191 = 0u;
  v1192 = 0u;
  v95 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations];
  v96 = [(NSArray *)v95 countByEnumeratingWithState:&v1189 objects:v1188 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = 0;
    v985 = *v1190;
    v99 = MEMORY[0x1E695E118];
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v1190 != v985)
        {
          objc_enumerationMutation(v95);
        }

        v101 = *(*(&v1189 + 1) + 8 * k);
        v102 = [v101 cameraConfiguration];
        v103 = [MEMORY[0x1E695DF90] dictionary];
        v104 = cs_stereoVideoCaptureEnabled(v101);
        if (FigCaptureSourceGetBoolAttribute([objc_msgSend(v101 "cameraConfiguration")], 0x1F21A0010, 0))
        {
          v105 = 0;
        }

        else if (cs_cinematicVideoCaptureEnabled(v101))
        {
          v105 = 1;
        }

        else
        {
          v105 = cs_stereoVideoCaptureEnabled(v101);
        }

        if (cs_timeOfFlightAssistedAutoFocusEnabled(v102))
        {
          [v103 setObject:v99 forKeyedSubscript:0x1F21A0930];
        }

        if (FigCaptureSourceGetBoolAttribute([v102 source], 0x1F219F9F0, 0))
        {
          [v103 setObject:v99 forKeyedSubscript:@"StructuredLightAssistedAutoFocusEnabled"];
        }

        if ([v102 depthDataDeliveryEnabled])
        {
          v106 = [v102 sourceDeviceType];
          if (v106 == 12 || v106 == 6)
          {
            [v103 setObject:v99 forKeyedSubscript:0x1F21A0950];
          }
        }

        if (v105)
        {
          [v103 setObject:v99 forKeyedSubscript:0x1F21A09B0];
        }

        if (*(v1009 + 112) == 1)
        {
          [v103 setObject:v99 forKeyedSubscript:@"SuspendAdjustingFocusNotifications"];
        }

        [v103 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v1010), @"CaptureDeviceClientPriority"}];
        if ([objc_msgSend(objc_msgSend(v101 "stillImageConnectionConfiguration")])
        {
          [v103 setObject:v99 forKeyedSubscript:0x1F21A0990];
        }

        v98 |= v104;
        [v1024 addObject:{objc_msgSend(v102, "source")}];
        [(__CFArray *)v995 addObject:v103];
      }

      v97 = [(NSArray *)v95 countByEnumeratingWithState:&v1189 objects:v1188 count:16];
    }

    while (v97);
  }

  else
  {
    v98 = 0;
  }

  v1187 = 0;
  v1013 = HIBYTE(v1199);
  v125 = v1199;
  v943 = [v947 xctestAuthorizedToStealDevice];
  newValuea = [v947 tccIdentity];
  objb = *(v1009 + 96);
  v126 = v1198;
  v1237 = 0;
  v127 = CMBaseObjectGetDerivedStorage();
  v128 = [FigWeakReference weakReferenceToObject:v1006];
  v129 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  v130 = [MEMORY[0x1E695DF70] array];
  v987 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(*(v127 + 904), "allKeys")}];
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_buildGraphWithConfiguration_cold_4();
  }

  v938 = v126;
  v949 = v128;
  v1236 = 0u;
  v1235 = 0u;
  v1234 = 0u;
  v1233 = 0u;
  v131 = [v1024 countByEnumeratingWithState:&v1233 objects:v1243 count:16];
  v934 = v125;
  if (!v131)
  {
    goto LABEL_195;
  }

  v132 = v131;
  v978 = *v1234;
LABEL_183:
  v133 = 0;
  while (1)
  {
    if (*v1234 != v978)
    {
      objc_enumerationMutation(v1024);
    }

    v134 = *(*(&v1233 + 1) + 8 * v133);
    Attribute = FigCaptureSourceGetAttribute(v134, @"CaptureDeviceID", &v1237);
    if (v1237)
    {
      captureSession_buildGraphWithConfiguration_cold_5();
LABEL_893:
      v63 = 0;
LABEL_894:
      if (v1237)
      {
        goto LABEL_895;
      }

      v1200 = 0;
      v20 = v1045;
      goto LABEL_905;
    }

    if (([v130 containsObject:Attribute] & 1) == 0)
    {
      [v130 addObject:Attribute];
    }

    if ([v987 containsObject:Attribute])
    {
      [v987 removeObject:Attribute];
    }

    IntAttribute = FigCaptureSourceGetIntAttribute(v134, @"DeviceType", &v1237);
    if (v1237)
    {
      captureSession_buildGraphWithConfiguration_cold_6();
      goto LABEL_893;
    }

    if ((IntAttribute - 17) < 4)
    {
      break;
    }

    if (v132 == ++v133)
    {
      v132 = [v1024 countByEnumeratingWithState:&v1233 objects:v1243 count:16];
      if (!v132)
      {
LABEL_195:
        v137 = 0;
        goto LABEL_197;
      }

      goto LABEL_183;
    }
  }

  v137 = 1;
LABEL_197:
  v1232 = 0u;
  v1231 = 0u;
  v1230 = 0u;
  v1229 = 0u;
  v138 = [v130 countByEnumeratingWithState:&v1229 objects:v1241 count:16];
  if (v138)
  {
    v139 = v138;
    v140 = *v1230;
    do
    {
      for (m = 0; m != v139; ++m)
      {
        if (*v1230 != v140)
        {
          objc_enumerationMutation(v130);
        }

        v142 = *(*(&v1229 + 1) + 8 * m);
        v143 = [*(v127 + 904) objectForKeyedSubscript:v142];
        if (v143)
        {
          v144 = v143;
          if ([v129 streamsInUseForDevice:v143])
          {
            [v129 invalidateVideoDevice:v144 forPID:*(v127 + 16)];
            [*(v127 + 904) setObject:0 forKeyedSubscript:v142];
          }
        }
      }

      v139 = [v130 countByEnumeratingWithState:&v1229 objects:v1241 count:16];
    }

    while (v139);
  }

  if ([*(v127 + 904) count])
  {
    goto LABEL_867;
  }

  os_unfair_lock_lock((v127 + 900));
  v145 = *(v127 + 896);
  if (v145)
  {
    *(v127 + 896) = 0;
    os_unfair_lock_unlock((v127 + 900));
    [v129 unregisterClient:v145];
  }

  else
  {
    os_unfair_lock_unlock((v127 + 900));
  }

  v793 = v943;
  v794 = [*(v127 + 120) clientType];
  v795 = *(v127 + 16);
  if (v1013)
  {
    v796 = 0;
    v793 = 0;
    goto LABEL_843;
  }

  v799 = v794;
  if (v794 == 5)
  {
    goto LABEL_860;
  }

  if (v794 != 6)
  {
    v801 = *(v127 + 36);
    v1213[0] = *(v127 + 20);
    v1213[1] = v801;
    if (!FigCaptureClientIsAVConferenced(v1213))
    {
      if (v799 == 8)
      {
        v796 = 0;
      }

      else
      {
        if (v934)
        {
          v796 = 0;
          v798 = 2;
          goto LABEL_861;
        }

        if (([*(v127 + 88) isEqualToString:0x1F21855D0] & 1) == 0)
        {
          if (!v137)
          {
            v796 = 0;
            v793 = 1;
LABEL_843:
            v797 = v949;
            v798 = v938;
            goto LABEL_863;
          }

          v860 = [*(v127 + 88) isEqualToString:0x1F21855F0];
          v796 = 0;
          v793 = v860 ^ 1u;
          if (v860)
          {
            v798 = 1;
          }

          else
          {
            v798 = v938;
          }

LABEL_862:
          v797 = v949;
          goto LABEL_863;
        }

        v796 = 0;
        v793 = 0;
      }

      v798 = 2;
      goto LABEL_862;
    }

LABEL_860:
    v795 = 0;
    v798 = 3;
    v796 = 1;
LABEL_861:
    v793 = 1;
    goto LABEL_862;
  }

  v800 = *(v127 + 36);
  v1213[0] = *(v127 + 20);
  v1213[1] = v800;
  v797 = v949;
  if (FigCaptureClientIsFacemetricsd(v1213) || ([*(v127 + 88) isEqualToString:0x1F21851D0] & 1) != 0)
  {
    v796 = 0;
    v793 = 0;
    v798 = 1;
  }

  else if ([*(v127 + 88) isEqualToString:0x1F2185190])
  {
    v796 = 0;
    v793 = 0;
    v798 = 3;
  }

  else
  {
    if ([*(v127 + 88) isEqualToString:0x1F2185250] & 1) != 0 || (objc_msgSend(*(v127 + 88), "isEqualToString:", 0x1F2185430))
    {
      v796 = 0;
      v798 = 5;
    }

    else if ([*(v127 + 88) isEqualToString:0x1F2185170])
    {
      v796 = 0;
      v798 = 2;
    }

    else
    {
      v798 = 2;
      if (([*(v127 + 88) isEqualToString:0x1F21853F0] & 1) == 0)
      {
        v796 = 0;
        v793 = 0;
        if ([*(v127 + 88) isEqualToString:0x1F21851F0])
        {
          v798 = v908;
        }

        else
        {
          v798 = 2;
        }

        goto LABEL_863;
      }

      v796 = 0;
    }

    v793 = 1;
  }

LABEL_863:
  os_unfair_lock_lock((v127 + 384));
  if ([*(v127 + 512) allCameraSourcesAreMetadataCameras])
  {
    v802 = 2;
  }

  else
  {
    v802 = 0;
  }

  os_unfair_lock_unlock((v127 + 384));
  v803 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FigCaptureSession: %p>", v1006];
  v804 = *(v127 + 88);
  v1228[0] = MEMORY[0x1E69E9820];
  v1228[1] = 3221225472;
  v1228[2] = __captureSession_activateCameraCaptureSourcesAndCreateDevices_block_invoke;
  v1228[3] = &unk_1E7998E48;
  v1228[4] = v797;
  v1228[5] = v127;
  p_isa = v1228;
  LODWORD(v888) = v802;
  v805 = [v129 registerClientWithPID:v795 clientApplicationID:v804 clientDescription:v803 clientPriority:v798 canStealFromClientsWithSamePriority:v793 deviceSharingWithOtherClientsAllowed:v796 clientType:? deviceAvailabilityChangedHandler:?];
  os_unfair_lock_lock((v127 + 900));
  *(v127 + 896) = v805;
  os_unfair_lock_unlock((v127 + 900));
LABEL_867:
  v1227 = 0u;
  v1226 = 0u;
  v1225 = 0u;
  v1224 = 0u;
  v806 = [v130 countByEnumeratingWithState:&v1224 objects:v1238 count:16];
  v63 = 0;
  if (v806)
  {
    v807 = v806;
    v808 = *v1225;
    do
    {
      for (n = 0; n != v807; ++n)
      {
        if (*v1225 != v808)
        {
          objc_enumerationMutation(v130);
        }

        v810 = *(*(&v1224 + 1) + 8 * n);
        if (![*(v127 + 904) objectForKeyedSubscript:v810])
        {
          v811 = [v129 copyDeviceWithID:v810 forClient:*(v127 + 896) informClientWhenDeviceAvailableAgain:v1013 ^ 1u error:&v1237];
          if (!v811)
          {
            goto LABEL_894;
          }

          v812 = v811;
          [*(v127 + 904) setObject:v811 forKeyedSubscript:v810];
        }
      }

      v807 = [v130 countByEnumeratingWithState:&v1224 objects:v1238 count:16];
    }

    while (v807);
  }

  v1223 = 0u;
  v1222 = 0u;
  v1221 = 0u;
  v1220 = 0u;
  v813 = [v987 countByEnumeratingWithState:&v1220 objects:&v1216 count:16];
  if (v813)
  {
    v814 = v813;
    v815 = *v1221;
    do
    {
      for (ii = 0; ii != v814; ++ii)
      {
        if (*v1221 != v815)
        {
          objc_enumerationMutation(v987);
        }

        v817 = *(*(&v1220 + 1) + 8 * ii);
        [v129 takeBackDevice:objc_msgSend(*(v127 + 904) forClient:"objectForKeyedSubscript:" informClientWhenDeviceAvailableAgain:v817) prefersDeviceInvalidatedImmediately:{*(v127 + 896), 0, 0}];
        [*(v127 + 904) setObject:0 forKeyedSubscript:v817];
      }

      v814 = [v987 countByEnumeratingWithState:&v1220 objects:&v1216 count:16];
    }

    while (v814);
  }

  v1237 = FigVideoCaptureSourcesActivateAndCreateDevices(v1024, v995, *(v127 + 88), newValuea, objb, *(v127 + 904), v98 & 1, v941, &v1187);
  if (!v1237)
  {
    os_unfair_lock_lock((v127 + 384));
    v818 = cs_configurationContainsVideoSource(*(v127 + 512));
    v819 = *(v127 + 397);
    if (dword_1ED844050)
    {
      v1215 = 0;
      v1214 = OS_LOG_TYPE_DEFAULT;
      v820 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v821 = v1215;
      if (os_log_type_enabled(v820, v1214))
      {
        v822 = v821;
      }

      else
      {
        v822 = v821 & 0xFFFFFFFE;
      }

      if (v822)
      {
        v823 = [*(v127 + 512) sourceConfigurations];
        v1209 = 136315394;
        v1210 = "captureSession_activateCameraCaptureSourcesAndCreateDevices";
        v1211 = 2112;
        v1212 = v823;
        v888 = &v1209;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    os_unfair_lock_unlock((v127 + 384));
    v824 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
    v825 = *(v127 + 8);
    v826 = *(v127 + 36);
    v1213[0] = *(v127 + 20);
    v1213[1] = v826;
    p_isa = 0;
    LOBYTE(v888) = v819;
    [v824 setSessionStateForSessionID:v825 running:1 containsVideoSource:v818 clientAuditToken:v1213 tccIdentity:newValuea mediaEnvironment:objb sessionIsPrewarming:? completionHandler:?];
    goto LABEL_893;
  }

LABEL_895:
  v1208 = 0u;
  v1207 = 0u;
  v1206 = 0u;
  v1205 = 0u;
  v827 = [*(v127 + 904) allKeys];
  v828 = [v827 countByEnumeratingWithState:&v1205 objects:&v1201 count:16];
  v20 = v1045;
  if (v828)
  {
    v829 = v828;
    v830 = *v1206;
    do
    {
      for (jj = 0; jj != v829; ++jj)
      {
        if (*v1206 != v830)
        {
          objc_enumerationMutation(v827);
        }

        v832 = *(*(&v1205 + 1) + 8 * jj);
        [v129 takeBackDevice:objc_msgSend(*(v127 + 904) forClient:"objectForKeyedSubscript:" informClientWhenDeviceAvailableAgain:v832) prefersDeviceInvalidatedImmediately:{*(v127 + 896), 0, 0}];
        [*(v127 + 904) setObject:0 forKeyedSubscript:v832];
      }

      v829 = [v827 countByEnumeratingWithState:&v1205 objects:&v1201 count:16];
    }

    while (v829);
  }

  v1200 = v1237;
  if (v1237)
  {
LABEL_296:
    FigDebugAssert3();
    goto LABEL_962;
  }

LABEL_905:
  v1022 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v914];
  v1183 = 0u;
  v1184 = 0u;
  v1185 = 0u;
  v1186 = 0u;
  v994 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations];
  v833 = [(NSArray *)v994 countByEnumeratingWithState:&v1183 objects:v1182 count:16];
  if (!v833)
  {
    v1023 = 0;
    goto LABEL_921;
  }

  v834 = v833;
  LODWORD(v835) = 0;
  v1023 = 0;
  v1004 = *v1184;
  do
  {
    v836 = 0;
    v835 = v835;
    do
    {
      v837 = v1033;
      if (*v1184 != v1004)
      {
        objc_enumerationMutation(v994);
      }

      v838 = [*(*(&v1183 + 1) + 8 * v836) cameraConfiguration];
      v839 = [v1187 objectAtIndexedSubscript:v835];
      v840 = [v838 lockedFrameRate];
      if (FigCaptureFrameRateIsValidRational(v840, v841))
      {
        v63 = [v838 lockedFrameRate];
        v1023 = 0;
        v837 = v842;
      }

      v843 = [v838 externalSyncFrameRate];
      if (FigCaptureFrameRateIsValidRational(v843, v844))
      {
        v63 = [v838 externalSyncFrameRate];
        v837 = v845;
        v1023 = 1;
      }

      v129 = v129 & 0xFFFFFFFF00000000 | v837;
      v1033 = v837;
      if (FigCaptureFrameRateIsValidRational(v63, v129))
      {
        [+[FigPulseGenerator sharedFigPulseGenerator](FigPulseGenerator "sharedFigPulseGenerator")];
        *&v1238[0] = 0;
        v127 = v127 & 0xFFFFFFFF00000000 | v837;
        v1200 = [+[FigPulseGenerator sharedFigPulseGenerator](FigPulseGenerator "sharedFigPulseGenerator")];
        if (v1200)
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          LODWORD(v1216) = 0;
          LOBYTE(v1213[0]) = 0;
          v847 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v848 = v1216;
          if (os_log_type_enabled(v847, v1213[0]))
          {
            v849 = v848;
          }

          else
          {
            v849 = v848 & 0xFFFFFFFE;
          }

          if (v849)
          {
            LODWORD(v1241[0]) = 136315650;
            *(v1241 + 4) = "captureSession_buildGraphWithConfiguration";
            if (v1023)
            {
              v850 = @"Genlock";
            }

            else
            {
              v850 = @"LFD";
            }

            WORD6(v1241[0]) = 2112;
            *(v1241 + 14) = v850;
            WORD3(v1241[1]) = 1024;
            DWORD2(v1241[1]) = v1200;
            _os_log_send_and_compose_impl();
          }

          else if (v1023)
          {
            v850 = @"Genlock";
          }

          else
          {
            v850 = @"LFD";
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LODWORD(v1243[0]) = 138412546;
          *(v1243 + 4) = v850;
          WORD6(v1243[0]) = 1024;
          *(v1243 + 14) = v1200;
          v851 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v851, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 13649, @"LastShownDate:FigCaptureSession.m:13649", @"LastShownBuild:FigCaptureSession.m:13649", 0);
          free(v851);
          goto LABEL_962;
        }

        [v839 setMsgClock:*&v1238[0]];
      }

      [v839 setClientExpectsCameraMountedInLandscapeOrientation:{objc_msgSend(v947, "clientExpectsCameraMountedInLandscapeOrientation")}];
      [v1022 setObject:-[FigCaptureSessionActiveCameraCaptureSource initWithSource:device:]([FigCaptureSessionActiveCameraCaptureSource alloc] forKeyedSubscript:{objc_msgSend(v838, "source"), v839), objc_msgSend(v838, "sourceID")}];
      ++v835;
      ++v836;
      v20 = v1045;
    }

    while (v834 != v836);
    v834 = [(NSArray *)v994 countByEnumeratingWithState:&v1183 objects:v1182 count:16];
  }

  while (v834);
LABEL_921:
  *(v1009 + 776) = [v1022 copy];

  os_unfair_lock_lock((v1009 + 384));
  v64 = v1006;
  v1200 = captureSession_checkClientSessionIsAllowedToRun(v1006, *(v1009 + 512), 0, 0, 0);
  os_unfair_lock_unlock((v1009 + 384));
  if (v1200)
  {
    captureSession_buildGraphWithConfiguration_cold_7();
    goto LABEL_962;
  }

  if (v913)
  {
LABEL_923:
    captureSession_buildGraphWithConfiguration_cold_8(v64, v915);
  }

LABEL_89:
  v65 = [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations] count]== 0;
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  captureSession_cancelMemoryPoolPrewarmingLocked(0, v65);
  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
  [(BWGraph *)v1008 setMemoryPool:+[BWMemoryPool sharedMemoryPool]];
  v1181 = 0u;
  v1180 = 0u;
  v1179 = 0u;
  v1178 = 0u;
  obj = [(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations];
  v984 = [(NSArray *)obj countByEnumeratingWithState:&v1178 objects:v1177 count:16];
  if (v984)
  {
    v976 = *v1179;
    v927 = v63;
    do
    {
      v66 = 0;
      do
      {
        if (*v1179 != v976)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v1178 + 1) + 8 * v66);
        v68 = [objc_msgSend(v67 "cameraConfiguration")];
        v69 = [*v1007 objectForKeyedSubscript:v68];
        v70 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMicSourceConfiguration];
        if (v69)
        {
          v1011 = v69[2];
        }

        else
        {
          v1011 = 0;
        }

        CameraSourcePipelineConfigurationFromParsedConfiguration = captureSession_createCameraSourcePipelineConfigurationFromParsedConfiguration(v1006, v67, v70 != 0, v921 > 1, v1011, -[FigCaptureSessionParsedConfiguration continuityCameraIsWired](v1005, "continuityCameraIsWired"), -[FigCaptureSessionParsedConfiguration continuityCameraClientDeviceClass](v1005, "continuityCameraClientDeviceClass"), -[FigCaptureSessionParsedConfiguration clientIsVOIP](v1005, "clientIsVOIP"), v5, -[FigCaptureSessionParsedConfiguration suppressVideoEffects](v1005, "suppressVideoEffects"), [v925 objectForKeyedSubscript:v68], -[FigCaptureSessionParsedConfiguration smartStyleRenderingEnabled](v1005, "smartStyleRenderingEnabled"), SystemStyleFromDefaults, v941, v923, &v1200);
        if (v1200)
        {
          captureSession_buildGraphWithConfiguration_cold_9();
          goto LABEL_962;
        }

        if (v69)
        {
          v72 = v69[3];
        }

        else
        {
          v72 = 0;
        }

        v20 = v1045;
        v63 = v927;
        v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Source Pipeline", v72];
        v74 = [FigCaptureCameraSourcePipeline alloc];
        if (v69)
        {
          v69 = v69[2];
        }

        v75 = *(v1009 + 752);
        v76 = *(v1009 + 832);
        v77 = captureSession_inferenceScheduler();
        v78 = [(FigCaptureCameraSourcePipeline *)v74 initWithConfiguration:v69 captureDevice:v75 graph:v73 name:v76 renderDelegate:v932 ispFastSwitchEnabled:v919 rtscProcessorsBySourceDeviceType:v77 inferenceScheduler:&v1200 error:?];
        if (!v78)
        {
          goto LABEL_962;
        }

        v79 = v78;
        [(FigCaptureCameraSourcePipeline *)v78 setBlackenFramesForContinuityDisplayConnected:v917];
        [(FigCaptureSessionPipelines *)v1045 addCameraSourcePipeline:v79];
        v66 = v66 + 1;
      }

      while (v984 != v66);
      v80 = [(NSArray *)obj countByEnumeratingWithState:&v1178 objects:v1177 count:16];
      v984 = v80;
    }

    while (v80);
  }

LABEL_109:
  v86 = v1005;
  if ([(FigCaptureSessionParsedConfiguration *)v1005 parsedMicSourceConfiguration])
  {
    v1176 = 0u;
    v1175 = 0u;
    v1174 = 0u;
    v1173 = 0u;
    v87 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMovieFileSinkConfigurations];
    v88 = [(NSArray *)v87 countByEnumeratingWithState:&v1173 objects:v1172 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = 0;
      v91 = 0;
      v92 = *v1174;
      do
      {
        for (kk = 0; kk != v89; ++kk)
        {
          if (*v1174 != v92)
          {
            objc_enumerationMutation(v87);
          }

          if ([objc_msgSend(*(*(&v1173 + 1) + 8 * kk) "audioConnectionConfiguration")] == 2)
          {
            ++v90;
            ++v91;
          }
        }

        v89 = [(NSArray *)v87 countByEnumeratingWithState:&v1173 objects:v1172 count:16];
      }

      while (v89);
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v1171 = 0u;
    v1170 = 0u;
    v1169 = 0u;
    v1168 = 0u;
    v107 = [(FigCaptureSessionParsedConfiguration *)v1005 audioDataSinkConnectionConfigurations];
    v108 = [(NSArray *)v107 countByEnumeratingWithState:&v1168 objects:v1167 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v1169;
      do
      {
        for (mm = 0; mm != v109; ++mm)
        {
          if (*v1169 != v110)
          {
            objc_enumerationMutation(v107);
          }

          v112 = *(*(&v1168 + 1) + 8 * mm);
          if ([v112 spatialAudioChannelLayoutTag] == 6619138)
          {
            ++v91;
          }

          else if ([v112 spatialAudioChannelLayoutTag] == 12451844)
          {
            ++v90;
          }
        }

        v109 = [(NSArray *)v107 countByEnumeratingWithState:&v1168 objects:v1167 count:16];
      }

      while (v109);
    }

    if (v90 >= 1)
    {
      v90 += FigCaptureSpatialAudioMixMetadataRequiresFOAAudioOutput(v1005);
    }

    v113 = [(FigCaptureSessionParsedConfiguration *)v1005 isAudioOnlyRecordingSession];
    v977 = [v947 sessionPreset];
    v114 = [v947 usesAppAudioSession];
    obja = [v947 configuresAppAudioSession];
    v996 = [v947 configuresAppAudioSessionToMixWithOthers];
    v986 = [v947 configuresAppAudioSessionForBluetoothHighQualityRecording];
    v115 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMicSourceConfiguration];
    LODWORD(v1201) = 0;
    v116 = CMBaseObjectGetDerivedStorage();
    v117 = [-[NSArray firstObject](-[FigCaptureSessionParsedMicSourceConfiguration micConnectionConfigurations](v115 "micConnectionConfigurations")];
    newValue = [(FigCaptureSessionParsedMicSourceConfiguration *)v115 micConnectionConfigurations];
    if (!_FigIsCurrentDispatchQueue())
    {
      captureSession_buildGraphWithConfiguration_cold_10();
    }

    if (*(v116 + 296) != v114)
    {
      captureSession_destroyAudioSessionForMicPipeline();
    }

    if (v114 && *(v116 + 448) == 1 && FigCaptureAudiomxdSupportEnabled())
    {
      v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d-proxy", *(v116 + 16)];
      captureSession_destroyAudioSessionForMicPipeline();
      memset(v1243, 0, sizeof(v1243));
      FigCaptureGetCurrentProcessAuditToken(v1243);
      v1241[0] = v1243[0];
      v1241[1] = v1243[1];
      PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v1241);
      v1241[0] = v1243[0];
      v1241[1] = v1243[1];
      *(v116 + 280) = cs_createAuxiliaryAVAudioSession(PIDFromAuditToken, v1241, v118);
      *(v116 + 320) = 1;
    }

    v948 = v114;
    v1012 = v113;
    if (FigCaptureAudiomxdSupportEnabled() && !*(v116 + 280))
    {
      v121 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d", *(v116 + 16)];
      if (v114)
      {
        v122 = *(v116 + 36);
        v1241[0] = *(v116 + 20);
        v1241[1] = v122;
        v123 = objc_alloc(MEMORY[0x1E698D710]);
        v1243[0] = v1241[0];
        v1243[1] = v1241[1];
        AuxiliaryAVAudioSession = [v123 initSiblingSession:0xFFFFFFFFLL auditToken:v1243 clientIdentifier:v121 autoReconnect:0];
      }

      else
      {
        v149 = *(v116 + 16);
        v150 = *(v116 + 36);
        v1243[0] = *(v116 + 20);
        v1243[1] = v150;
        AuxiliaryAVAudioSession = cs_createAuxiliaryAVAudioSession(v149, v1243, v121);
      }

      *(v116 + 280) = AuxiliaryAVAudioSession;
      if (!AuxiliaryAVAudioSession)
      {
        v852 = -12786;
        goto LABEL_960;
      }

      *(v116 + 296) = v114;
      started = captureSession_startObservingAudioInterruptionNotification(v1006);
      LODWORD(v1201) = started;
      if (!started)
      {
        v152 = CMBaseObjectGetDerivedStorage();
        if (v152)
        {
          v153 = v152;
          if (*(v152 + 304))
          {
            LODWORD(v1213[0]) = 0;
            LOBYTE(v1233) = 0;
            v868 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v869 = v1213[0];
            if (os_log_type_enabled(v868, v1233))
            {
              v870 = v869;
            }

            else
            {
              v870 = v869 & 0xFFFFFFFE;
            }

            if (v870)
            {
              v871 = v153[13];
              LODWORD(v1241[0]) = 136315394;
              *(v1241 + 4) = "captureSession_startObservingForAudiomxdDeath";
              WORD6(v1241[0]) = 2114;
              *(v1241 + 14) = v871;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v154 = [FigWeakReference weakReferenceToObject:v1006];
            v155 = [MEMORY[0x1E698D710] sharedInstance];
            v156 = *MEMORY[0x1E698D5B0];
            *&v1241[0] = MEMORY[0x1E69E9820];
            *(&v1241[0] + 1) = 3221225472;
            *&v1241[1] = __captureSession_startObservingForAudiomxdDeath_block_invoke;
            *(&v1241[1] + 1) = &unk_1E7998E70;
            *&v1241[2] = v154;
            *(&v1241[2] + 1) = v153;
            v157 = [v155 addObserverForType:1 name:v156 block:v1241];
            v158 = [MEMORY[0x1E698D710] sharedInstance];
            v159 = *MEMORY[0x1E698D5C0];
            *&v1243[0] = MEMORY[0x1E69E9820];
            *(&v1243[0] + 1) = 3221225472;
            *&v1243[1] = __captureSession_startObservingForAudiomxdDeath_block_invoke_971;
            *(&v1243[1] + 1) = &unk_1E7998E98;
            v1244 = v154;
            v1245 = v153;
            v1246 = v1006;
            v160 = [v158 addObserverForType:1 name:v159 block:v1243];
            v153[38] = v157;
            v153[39] = v160;
          }
        }

        goto LABEL_231;
      }

      v852 = started;
      LODWORD(v1213[0]) = 0;
      LOBYTE(v1233) = 0;
      v865 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v866 = v1213[0];
      if (os_log_type_enabled(v865, v1233))
      {
        v867 = v866;
      }

      else
      {
        v867 = v866 & 0xFFFFFFFE;
      }

      if (v867)
      {
        goto LABEL_1030;
      }
    }

    else
    {
      if ((FigCaptureAudiomxdSupportEnabled() & 1) != 0 || *(v116 + 288))
      {
        goto LABEL_231;
      }

      if (v114)
      {
        v120 = v1006;
        if (AudioSessionGetPrimaryAudioSessionIDForAuditToken())
        {
          *(v116 + 288) = AudioSessionCopyCMSessionForSessionID();
        }

LABEL_230:
        *(v116 + 296) = v114;
        v166 = captureSession_startObservingAudioInterruptionNotification(v120);
        LODWORD(v1201) = v166;
        if (!v166)
        {
LABEL_231:
          v167 = cs_clientWantsAudioResumptionOnBackground(*(v116 + 88));
          v168 = v167;
          if (v167)
          {
            v169 = *(v116 + 288);
            if ((v169 || *(v116 + 280)) && !*(v116 + 328))
            {
              v170 = *(v116 + 280);
              if (v170)
              {
                *&v1243[0] = 0;
                [v170 setMXSessionProperty:*MEMORY[0x1E69B04D0] value:MEMORY[0x1E695E118] error:v1243];
              }

              else if (v169)
              {
                LODWORD(v1201) = CMSessionSetProperty();
              }

              *(v116 + 336) = 1;
              v171 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v116 + 136));
              *(v116 + 328) = v171;
              if (v171)
              {
                v172 = v171;
                v173 = dispatch_time(0, 300000000000);
                dispatch_source_set_timer(v172, v173, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                v174 = *(v116 + 328);
                *&v1238[0] = MEMORY[0x1E69E9820];
                *(&v1238[0] + 1) = 3221225472;
                *&v1238[1] = __captureSession_buildMicSourcePipeline_block_invoke;
                *(&v1238[1] + 1) = &__block_descriptor_40_e5_v8__0l;
                *&v1239 = v116;
                dispatch_source_set_event_handler(v174, v1238);
                dispatch_resume(*(v116 + 328));
              }
            }
          }

          v175 = objc_alloc_init(FigCaptureMicSourcePipelineConfiguration);
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v175 setPrimaryCameraConfiguration:v117];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v175 setPrimaryVideoConnectionConfiguration:?];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v175 setVideoConnectionConfigurations:?];
          [(FigCaptureMetadataSinkPipelineConfiguration *)v175 setVitalityScoringEnabled:?];
          v176 = [(FigCaptureSourceConfiguration *)[(FigCaptureSessionParsedMicSourceConfiguration *)v115 cameraConfigurationForStereoAudioCapture] sourceID];
          if (v176)
          {
            captureSession_buildGraphWithConfiguration_cold_11(v116, v176, v175);
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v175 setDetectedObjectMetadataConnectionConfigurations:v977];
          [(FigCaptureMicSourcePipelineConfiguration *)v175 setConfiguresAppAudioSession:?];
          [(FigCaptureCinematographyPipelineConfiguration *)v175 setWeightSegmentMapEnabled:?];
          [(FigCaptureCinematographyPipelineConfiguration *)v175 setPreLTMThumbnailEnabled:v996];
          [(FigCaptureCinematographyPipelineConfiguration *)v175 setPostColorProcessingThumbnailEnabled:v986];
          [(FigCaptureMicSourcePipelineConfiguration *)v175 setClientSDKVersionToken:?];
          -[FigCaptureMicSourcePipelineConfiguration setClientOSVersionSupportsDecoupledIO:](v175, [v117 clientOSVersionSupportsDecoupledIO]);
          v1217 = *(v116 + 36);
          v1216 = *(v116 + 20);
          v1243[0] = v1216;
          v1243[1] = v1217;
          [(FigCaptureMicSourcePipelineConfiguration *)v175 setClientAuditToken:v1243];
          [(FigCaptureMicSourcePipelineConfiguration *)v175 setAudioOnlyRecordingSession:v1012];
          [(FigCaptureMicSourcePipelineConfiguration *)v175 setRemoteIOOutputFormat:?];
          if (FigCaptureFrameRateIsValidRational(v63, v1033))
          {
            *&v1213[0] = &stru_1F216A3D0;
            v177 = [+[FigPulseGenerator sharedFigPulseGenerator](FigPulseGenerator "sharedFigPulseGenerator")];
            LODWORD(v1201) = v177;
            if (!v177)
            {
              [-[FigCaptureMovieFileSinkPipelineConfiguration primaryCameraConfiguration](v175) setClientAudioClockDeviceUID:*&v1213[0]];
              goto LABEL_253;
            }

            v178 = v177;
            if (v177 != -73195)
            {
              v179 = FigCaptureGetFrameworkRadarComponent();
              LODWORD(v1233) = 0;
              LOBYTE(v1229) = 0;
              v180 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v181 = v1233;
              if (os_log_type_enabled(v180, v1229))
              {
                v182 = v181;
              }

              else
              {
                v182 = v181 & 0xFFFFFFFE;
              }

              if (v182)
              {
                LODWORD(v1241[0]) = 136315394;
                *(v1241 + 4) = "captureSession_buildMicSourcePipeline";
                WORD6(v1241[0]) = 1024;
                *(v1241 + 14) = v178;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              LODWORD(v1243[0]) = 67109120;
              DWORD1(v1243[0]) = v178;
              v183 = _os_log_send_and_compose_impl();
              FigCapturePleaseFileRadar(v179, v183, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 4782, @"LastShownDate:FigCaptureSession.m:4782", @"LastShownBuild:FigCaptureSession.m:4782", 0);
              free(v183);
              goto LABEL_253;
            }

            v852 = -73195;
            FigDebugAssert3();
            if (dword_1ED844050)
            {
              LODWORD(v1233) = 0;
              LOBYTE(v1229) = 0;
              v853 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v854 = v1233;
              if (os_log_type_enabled(v853, v1229))
              {
                v855 = v854;
              }

              else
              {
                v855 = v854 & 0xFFFFFFFE;
              }

              if (v855)
              {
                LODWORD(v1241[0]) = 136315138;
                *(v1241 + 4) = "captureSession_buildMicSourcePipeline";
                _os_log_send_and_compose_impl();
              }

              goto LABEL_959;
            }

LABEL_960:
            v1200 = v852;
LABEL_961:
            captureSession_buildGraphWithConfiguration_cold_12();
LABEL_962:
            if (v1200)
            {
              goto LABEL_857;
            }

            goto LABEL_963;
          }

LABEL_253:
          os_unfair_lock_lock((v116 + 384));
          v184 = *(v116 + 337);
          os_unfair_lock_unlock((v116 + 384));
          v185 = [[FigCaptureMicSourcePipeline alloc] initWithConfiguration:v175 graph:*(v116 + 752) name:@"Microphone Source Pipeline" audioSession:*(v116 + 280) cmSession:*(v116 + 288) isAppAudioSession:v948 audioSessionIsProxy:*(v116 + 320) audioIsPlayingToBuiltinSpeaker:BYTE4(v910) numberOfCinematicStereoAudioOutputs:v91 numberOfCinematicFOAAudioOutputs:v90 audioSessionActivatedByBWGraph:v184 renderDelegate:*(v116 + 832) outErr:&v1201];
          if (v185)
          {
            [*(v116 + 784) setMicSourcePipeline:v185];
            v1200 = v1201;
            if (v1201)
            {
              goto LABEL_961;
            }

            v86 = v1005;
            v20 = v1045;
            if (cs_isTrueVideoCaptureEnabled(v1005) & 1) == 0 && (*(v1009 + 112))
            {
              [(BWGraph *)v1008 enableDeferredStartForSourceNode:[(FigCaptureMicSourcePipeline *)[(FigCaptureSessionPipelines *)v1045 micSourcePipeline] sourceNode] mustStartAfterNonDeferred:0];
            }

            goto LABEL_258;
          }

          v852 = -73197;
          LODWORD(v1213[0]) = 0;
          LOBYTE(v1233) = 0;
          v861 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v862 = v1213[0];
          if (os_log_type_enabled(v861, v1233))
          {
            v863 = v862;
          }

          else
          {
            v863 = v862 & 0xFFFFFFFE;
          }

          if (!v863)
          {
            goto LABEL_959;
          }

          v864 = *(v116 + 104);
          LODWORD(v1241[0]) = 136315906;
          *(v1241 + 4) = "captureSession_buildMicSourcePipeline";
          WORD6(v1241[0]) = 2114;
          *(v1241 + 14) = v864;
          WORD3(v1241[1]) = 1024;
          DWORD2(v1241[1]) = v1201;
          WORD6(v1241[1]) = 1024;
          *(&v1241[1] + 14) = -73197;
LABEL_999:
          _os_log_send_and_compose_impl();
          goto LABEL_959;
        }

        v852 = v166;
        LODWORD(v1213[0]) = 0;
        LOBYTE(v1233) = 0;
        v872 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v873 = v1213[0];
        if (os_log_type_enabled(v872, v1233))
        {
          v874 = v873;
        }

        else
        {
          v874 = v873 & 0xFFFFFFFE;
        }

        if (!v874)
        {
          goto LABEL_959;
        }

LABEL_1030:
        v881 = *(v116 + 104);
        LODWORD(v1241[0]) = 136315650;
        *(v1241 + 4) = "captureSession_buildMicSourcePipeline";
        WORD6(v1241[0]) = 2114;
        *(v1241 + 14) = v881;
        WORD3(v1241[1]) = 1024;
        DWORD2(v1241[1]) = v852;
        goto LABEL_999;
      }

      v161 = CMSessionCreate();
      if (v161)
      {
        v852 = v161;
        goto LABEL_960;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"FigCaptureSession-%d", *(v116 + 16)];
      v162 = CMSessionSetProperty();
      if (v162)
      {
        v852 = v162;
        LODWORD(v1213[0]) = 0;
        LOBYTE(v1233) = 0;
        v875 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v876 = v1213[0];
        if (os_log_type_enabled(v875, v1233))
        {
          v877 = v876;
        }

        else
        {
          v877 = v876 & 0xFFFFFFFE;
        }

        if (!v877)
        {
          goto LABEL_959;
        }

        goto LABEL_1030;
      }

      [MEMORY[0x1E696AD98] numberWithInt:*(v116 + 16)];
      v163 = CMSessionSetProperty();
      LODWORD(v1201) = v163;
      if (v163)
      {
        v852 = v163;
        LODWORD(v1213[0]) = 0;
        LOBYTE(v1233) = 0;
        v878 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v879 = v1213[0];
        if (os_log_type_enabled(v878, v1233))
        {
          v880 = v879;
        }

        else
        {
          v880 = v879 & 0xFFFFFFFE;
        }

        if (!v880)
        {
          goto LABEL_959;
        }

        goto LABEL_1030;
      }

      v164 = *(v116 + 36);
      v1241[0] = *(v116 + 20);
      v1241[1] = v164;
      [MEMORY[0x1E695DEF0] dataWithBytes:v1241 length:32];
      v165 = CMSessionSetProperty();
      v120 = v1006;
      if (!v165)
      {
        goto LABEL_230;
      }

      v852 = v165;
      LODWORD(v1233) = 0;
      LOBYTE(v1229) = 0;
      v882 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v883 = v1233;
      if (os_log_type_enabled(v882, v1229))
      {
        v884 = v883;
      }

      else
      {
        v884 = v883 & 0xFFFFFFFE;
      }

      if (v884)
      {
        v885 = *(v116 + 104);
        LODWORD(v1213[0]) = 136315650;
        *(v1213 + 4) = "captureSession_buildMicSourcePipeline";
        WORD6(v1213[0]) = 2114;
        *(v1213 + 14) = v885;
        WORD3(v1213[1]) = 1024;
        DWORD2(v1213[1]) = v852;
        _os_log_send_and_compose_impl();
      }
    }

LABEL_959:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_960;
  }

LABEL_258:
  v1166 = 0u;
  v1165 = 0u;
  v1164 = 0u;
  v1163 = 0u;
  v186 = [(FigCaptureSessionParsedConfiguration *)v86 metadataSourceConfigurations];
  v187 = [(NSArray *)v186 countByEnumeratingWithState:&v1163 objects:v1162 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v1164;
    do
    {
      for (nn = 0; nn != v188; ++nn)
      {
        if (*v1164 != v189)
        {
          objc_enumerationMutation(v186);
        }

        v191 = *(*(&v1163 + 1) + 8 * nn);
        if ([v191 sourceSubType] != 3)
        {
          if ([v191 sourceSubType] == 1)
          {
            v192 = @"Client Supplied Metadata Source Pipeline";
          }

          else
          {
            v192 = @"Core Motion Metadata Source Pipeline";
          }

          v193 = [[FigCaptureMetadataSourcePipeline alloc] initWithConfiguration:v191 graph:*(v1009 + 752) name:v192 errorOut:&v1200];
          if (v1200)
          {
            captureSession_buildGraphWithConfiguration_cold_13();
            goto LABEL_962;
          }

          [(FigCaptureSessionPipelines *)v20 addMetadataSourcePipeline:v193];
        }
      }

      v188 = [(NSArray *)v186 countByEnumeratingWithState:&v1163 objects:v1162 count:16];
    }

    while (v188);
  }

  *&v1233 = 0;
  cs_getMasterClockAndType(v20, &v1233, 0);
  if (v1233)
  {
    v1219 = 0u;
    v1218 = 0u;
    v1217 = 0u;
    v1216 = 0u;
    v194 = [(FigCaptureSessionPipelines *)v20 cameraSourcePipelines];
    v195 = [(NSArray *)v194 countByEnumeratingWithState:&v1216 objects:v1243 count:16];
    if (v195)
    {
      v196 = v195;
      v197 = *v1217;
      do
      {
        for (i1 = 0; i1 != v196; ++i1)
        {
          if (*v1217 != v197)
          {
            objc_enumerationMutation(v194);
          }

          [(FigCaptureCameraSourcePipeline *)*(*(&v1216 + 1) + 8 * i1) setMasterClock:v1233];
        }

        v196 = [(NSArray *)v194 countByEnumeratingWithState:&v1216 objects:v1243 count:16];
      }

      while (v196);
    }

    memset(v1213, 0, 64);
    v199 = [(FigCaptureSessionPipelines *)v20 metadataSourcePipelines];
    v200 = [(NSArray *)v199 countByEnumeratingWithState:v1213 objects:v1241 count:16];
    if (v200)
    {
      v201 = v200;
      v202 = **&v1213[1];
      do
      {
        for (i2 = 0; i2 != v201; ++i2)
        {
          if (**&v1213[1] != v202)
          {
            objc_enumerationMutation(v199);
          }

          [(FigCaptureMetadataSourcePipeline *)*(*(&v1213[0] + 1) + 8 * i2) setMasterClock:v1233];
        }

        v201 = [(NSArray *)v199 countByEnumeratingWithState:v1213 objects:v1241 count:16];
      }

      while (v201);
    }
  }

  else
  {
    v204 = [(NSArray *)[(FigCaptureSessionPipelines *)v20 metadataSourcePipelines] count];
    v1201 = 0u;
    v1202 = 0u;
    v205 = v204 != 0;
    v1203 = 0u;
    v1204 = 0u;
    v206 = [(FigCaptureSessionPipelines *)v20 cameraSourcePipelines];
    v207 = [(NSArray *)v206 countByEnumeratingWithState:&v1201 objects:v1238 count:16];
    if (v207)
    {
      v208 = v207;
      v209 = *v1202;
      do
      {
        for (i3 = 0; i3 != v208; ++i3)
        {
          if (*v1202 != v209)
          {
            objc_enumerationMutation(v206);
          }

          v205 |= [(FigCaptureCameraSourcePipeline *)*(*(&v1201 + 1) + 8 * i3) requiresMasterClock];
        }

        v208 = [(NSArray *)v206 countByEnumeratingWithState:&v1201 objects:v1238 count:16];
      }

      while (v208);
    }

    if (v205)
    {
      v1200 = -12783;
      goto LABEL_296;
    }
  }

  v1200 = 0;
  v1158 = 0u;
  v1159 = 0u;
  v1160 = 0u;
  v1161 = 0u;
  v944 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedCinematographyConfigurations];
  newValueb = [(NSArray *)v944 countByEnumeratingWithState:&v1158 objects:v1157 count:16];
  if (newValueb)
  {
    v950 = *v1159;
    do
    {
      v211 = 0;
      do
      {
        if (*v1159 != v950)
        {
          objc_enumerationMutation(v944);
        }

        v212 = *(*(&v1158 + 1) + 8 * v211);
        v213 = [objc_msgSend(objc_msgSend(v212 "sourceConfiguration")];
        v214 = [*v1007 objectForKeyedSubscript:v213];
        v215 = [objc_msgSend(objc_msgSend(v212 "sourceConfiguration")];
        objc = v211;
        if (v214)
        {
          v216 = *(v214 + 24);
          v217 = *(v214 + 32);
        }

        else
        {
          v216 = 0;
          v217 = 0;
        }

        v218 = FigCaptureBuildSinkPipelineName(v216, v217, v215, @"Cinematography Pipeline");
        v219 = [(FigCaptureSessionPipelines *)v1045 cameraSourcePipelineWithSourceID:v213];
        [(FigCaptureCameraSourcePipeline *)v219 nextVideoCaptureOutputForSourceDeviceType:v215, v220, v221, v222, v223, v224, v225, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v911, v913];
        v1034 = v215;
        v1025 = v218;
        v1014 = v232;
        if ([(FigCaptureCameraSourcePipeline *)v219 depthType]== 3)
        {
          [(FigCaptureCameraSourcePipeline *)v219 nextVideoCaptureOutputForSourceDeviceType:v226, v227, v228, v229, v230, v231, v889, v893, v895, v897, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v911, v913];
          v997 = v233;
          v234 = 2;
        }

        else
        {
          v997 = [(FigCaptureCameraSourcePipeline *)v219 depthOutput];
          v234 = v215;
        }

        v988 = [(FigCaptureCameraSourcePipeline *)v219 nextPreviewOutputForSourceDeviceType:v234 intendedForVideoDataSinkPipeline:0];
        v979 = captureSession_inferenceScheduler();
        v235 = objc_alloc_init(FigCaptureCinematographyPipelineConfiguration);
        v1153 = 0u;
        v1154 = 0u;
        v1155 = 0u;
        v1156 = 0u;
        v236 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMetadataSinkConfigurations];
        v237 = [(NSArray *)v236 countByEnumeratingWithState:&v1153 objects:v1152 count:16];
        if (v237)
        {
          v238 = v237;
          v239 = 0;
          v240 = *v1154;
          do
          {
            for (i4 = 0; i4 != v238; ++i4)
            {
              if (*v1154 != v240)
              {
                objc_enumerationMutation(v236);
              }

              v242 = *(*(&v1153 + 1) + 8 * i4);
              if ([v213 isEqualToString:{objc_msgSend(objc_msgSend(objc_msgSend(v242, "metadataObjectConnectionConfiguration"), "sourceConfiguration"), "sourceID")}])
              {
                v239 = [objc_msgSend(v242 "metadataObjectConnectionConfiguration")];
              }
            }

            v238 = [(NSArray *)v236 countByEnumeratingWithState:&v1153 objects:v1152 count:16];
          }

          while (v238);
        }

        else
        {
          v239 = 0;
        }

        [(FigCaptureCinematographyPipelineConfiguration *)v235 setObjectMetadataIdentifiers:v239];
        -[FigCaptureMovieFileSinkPipelineConfiguration setPrimaryVideoConnectionConfiguration:](v235, [v212 videoCaptureConnectionConfigurations]);
        -[FigCaptureMovieFileSinkPipelineConfiguration setVideoConnectionConfigurations:](v235, [v212 previewConnectionConfigurations]);
        -[FigCaptureMovieFileSinkPipelineConfiguration setAudioConnectionConfiguration:](v235, [objc_msgSend(v212 "sourceConfiguration")]);
        v243 = [(FigCaptureCameraSourcePipeline *)v219 depthType];
        [(FigCaptureCameraSourcePipelineConfiguration *)v235 setRGBIRStereoFusionFixedDepthThresholdMM:v243];
        [(FigCaptureMetadataSinkPipelineConfiguration *)v235 setVitalityScoringEnabled:?];
        [(FigCaptureMovieFileSinkPipelineConfiguration *)v235 setDetectedObjectMetadataConnectionConfigurations:?];
        v244 = [(FigCaptureCameraSourcePipeline *)v219 preLTMThumbnailEnabled];
        [(FigCaptureCinematographyPipelineConfiguration *)v235 setPreLTMThumbnailEnabled:v244];
        v245 = [(FigCaptureCameraSourcePipeline *)v219 postColorProcessingThumbnailEnabled];
        [(FigCaptureCinematographyPipelineConfiguration *)v235 setPostColorProcessingThumbnailEnabled:v245];
        v246 = [(FigCaptureCameraSourcePipeline *)v219 weightSegmentMapEnabled];
        [(FigCaptureCinematographyPipelineConfiguration *)v235 setWeightSegmentMapEnabled:v246];
        v247 = [FigCaptureCinematographyPipeline alloc];
        v248 = [(FigCaptureCameraSourcePipeline *)v219 semanticMasksOutputsBySourceDeviceType:v1034];
        v249 = [(FigCaptureCameraSourcePipeline *)v219 captureDevice];
        v250 = [(FigCaptureCinematographyPipeline *)v247 initWithConfiguration:v235 videoSourceCaptureOutput:v1014 sourceSemanticMasksOutput:v248 previewOutput:v988 auxiliaryOutput:v997 graph:v1008 name:v1025 sourceID:v213 captureDevice:v249 inferenceScheduler:v979 errorOut:&v1200];

        if (v1200)
        {
          goto LABEL_857;
        }

        v20 = v1045;
        [(FigCaptureSessionPipelines *)v1045 addCinematographyPipeline:v250];
        v251 = [(FigCaptureCinematographyPipeline *)v250 cinematicVideoFocusDetectionsProvider];
        [-[FigCaptureCameraSourcePipeline captureDevice](v219) setStreamingFilterDelegate:v251];
        v211 = objc + 1;
      }

      while (objc + 1 != newValueb);
      v252 = [(NSArray *)v944 countByEnumeratingWithState:&v1158 objects:v1157 count:16];
      newValueb = v252;
    }

    while (v252);
  }

  captureSession_teardownImageQueueSinkNodesIfNeeded(v1006, [(FigCaptureSessionParsedConfiguration *)v1005 parsedPreviewSinkConfigurations]);
  v1151 = 0u;
  v1150 = 0u;
  v1149 = 0u;
  v1148 = 0u;
  v912 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedPreviewSinkConfigurations];
  v920 = [(NSArray *)v912 countByEnumeratingWithState:&v1148 objects:v1147 count:16];
  if (v920)
  {
    v918 = *v1149;
    v913 = @"DeviceType";
    *&v253 = 136315394;
    v908 = v253;
    do
    {
      v254 = 0;
      do
      {
        if (*v1149 != v918)
        {
          objc_enumerationMutation(v912);
        }

        v935 = v254;
        v255 = *(*(&v1148 + 1) + 8 * v254);
        v256 = [v255 sinkID];
        v989 = [objc_msgSend(v255 "cameraConfiguration")];
        v257 = [(FigCaptureSessionPipelines *)v20 cameraSourcePipelineWithSourceID:?];
        v258 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v257) format];
        v998 = [*(v1009 + 560) objectForKeyedSubscript:v256];
        v933 = [objc_msgSend(*(v1009 + 568) objectForKeyedSubscript:{v256), "BOOLValue"}];
        v929 = [objc_msgSend(*(v1009 + 576) objectForKeyedSubscript:{v256), "intValue"}];
        v1015 = [(FigCaptureCameraSourcePipeline *)v257 trueVideoCaptureEnabled];
        v1035 = v257;
        v259 = [(FigCaptureCameraSourcePipeline *)v257 trueVideoCaptureAdditionalZoomFactor];
        memset(v1238, 0, sizeof(v1238));
        v1239 = 0u;
        v1240 = 0u;
        v260 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMovieFileSinkConfigurations];
        v261 = [(NSArray *)v260 countByEnumeratingWithState:v1238 objects:v1243 count:16];
        if (v261)
        {
          v265 = v261;
          v266 = **&v1238[1];
LABEL_332:
          v267 = 0;
          while (1)
          {
            if (**&v1238[1] != v266)
            {
              objc_enumerationMutation(v260);
            }

            v268 = [objc_msgSend(objc_msgSend(*(*(&v1238[0] + 1) + 8 * v267) "videoConnectionConfigurations")];
            v269 = [objc_msgSend(v268 "requiredFormat")];
            v270 = v269;
            v271 = HIDWORD(v269);
            [objc_msgSend(v268 "requiredFormat")];
            if ((v271 * v270) > 0x7E8FFF && v272 >= 60.0)
            {
              break;
            }

            if (v265 == ++v267)
            {
              v265 = [(NSArray *)v260 countByEnumeratingWithState:v1238 objects:v1243 count:16];
              if (v265)
              {
                goto LABEL_332;
              }

              goto LABEL_329;
            }
          }
        }

        else
        {
LABEL_329:
          v1219 = 0u;
          v1218 = 0u;
          v1217 = 0u;
          v1216 = 0u;
          v262 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedVideoDataSinkConfigurations];
          v263 = [(NSArray *)v262 countByEnumeratingWithState:&v1216 objects:v1241 count:16];
          if (!v263)
          {
LABEL_330:
            v264 = 0;
            goto LABEL_356;
          }

          v274 = v263;
          v275 = *v1217;
LABEL_344:
          v276 = 0;
          while (1)
          {
            if (*v1217 != v275)
            {
              objc_enumerationMutation(v262);
            }

            v277 = [objc_msgSend(*(*(&v1216 + 1) + 8 * v276) "videoDataConnectionConfiguration")];
            v278 = [objc_msgSend(v277 "requiredFormat")];
            v279 = v278;
            v280 = HIDWORD(v278);
            [objc_msgSend(v277 "requiredFormat")];
            if ((v280 * v279) > 0x7E8FFF && v281 >= 60.0)
            {
              break;
            }

            if (v274 == ++v276)
            {
              v274 = [(NSArray *)v262 countByEnumeratingWithState:&v1216 objects:v1241 count:16];
              if (v274)
              {
                goto LABEL_344;
              }

              goto LABEL_330;
            }
          }
        }

        v264 = 1;
LABEL_356:
        v964 = [(FigCaptureCameraSourcePipeline *)v1035 lowLatencyStabilizationEnabled];
        v951 = [(FigCaptureCameraSourcePipeline *)v1035 colorSpaceProperties];
        IsFullRange = FigCapturePixelFormatIsFullRange(v258);
        objd = [(FigCaptureCameraSourcePipeline *)v1035 videoHDRImageStatisticsEnabled];
        newValuec = [(FigCaptureSessionParsedConfiguration *)v1005 smartStyleRenderingEnabled];
        LODWORD(v1216) = 0;
        v980 = CMBaseObjectGetDerivedStorage();
        v283 = [v255 cameraConfiguration];
        v284 = [v255 videoPreviewSinkConnectionConfiguration];
        v285 = [v255 videoThumbnailConnectionConfiguration];
        v939 = [v255 depthDataConnectionConfiguration];
        v286 = [v255 previewTimeMachineConnectionConfiguration];
        v287 = [v255 previewSmartStyleCoefficientsTimeMachineConnectionConfiguration];
        v288 = [v255 sceneClassifierConnectionConfiguration];
        v289 = [v255 metadataObjectConnectionConfiguration];
        v1026 = [v255 stillImageConnectionConfiguration];
        v290 = FigCaptureSourceGetIntAttribute([v283 source], 0x1F21A0530, &v1216);
        if (v1216)
        {
          captureSession_buildGraphWithConfiguration_cold_14();
          v291 = 0;
          v302 = v1035;
        }

        else
        {
          v922 = v290;
          v928 = v264;
          v291 = objc_alloc_init(FigCapturePreviewSinkPipelineConfiguration);
          -[FigCaptureMovieFileSinkPipelineConfiguration setPrimaryCameraConfiguration:](v291, [v255 sinkID]);
          v926 = v284;
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v291 setPrimaryVideoConnectionConfiguration:v284];
          v924 = v285;
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v291 setVideoConnectionConfigurations:v285];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v291 setAudioConnectionConfiguration:v939];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v291 setCameraDebugInfoMetadataConnectionConfiguration:v286];
          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setVisionDataConnectionConfigurations:v287];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v291 setDetectedObjectMetadataConnectionConfigurations:v288];
          -[FigCaptureMovieFileSinkPipelineConfiguration setDepthDataConnectionConfiguration:](v291, [v255 sensitiveContentAnalyzerConnectionConfiguration]);
          v292 = FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v289);
          v293 = FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(v289);
          v294 = FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v289);
          v295 = v255;
          if ((v292 & 1) != 0 || (v293 & 1) != 0 || v294)
          {
            [(FigCapturePreviewSinkPipelineConfiguration *)v291 setMetadataObjectConnectionConfiguration:v289];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v291 setStillImageConnectionConfiguration:v1026];
          v296 = BWInferenceSmartCameraCurrentVersion();
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSceneClassifierPipelineVersion:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSourceColorSpaceProperties:v951];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSourcePixelFormatIsFullRange:?];
          v297 = FigCaptureSourceGetIntAttribute([v283 source], @"DeviceType", 0);
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSourceIsBravoDevice:?];
          IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(v1006);
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setClientIsCameraOrDerivative:?];
          v1243[1] = *(v980 + 36);
          v1243[0] = *(v980 + 20);
          v1241[0] = v1243[0];
          v1241[1] = v1243[1];
          v299 = [v1026 irisSinkConfiguration];
          isIrisMovieVitalityScoringEnabled = cs_isIrisMovieVitalityScoringEnabled(v299);
          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setOfflineVISEnabled:?];
          -[FigCapturePreviewSinkPipelineConfiguration setDeferredPrepareEnabled:](v291, [objc_msgSend(v284 "sinkConfiguration")]);
          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setZeroShutterLagEnabled:?];
          shouldEnableOverCapture = cs_shouldEnableOverCapture(v283);
          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setConfigureForZeroShutterLagSupport:?];
          v302 = v1035;
          if ([v283 sourceType] == 1 && ((v303 = FigCaptureSourceGetIntAttribute(objc_msgSend(v283, "source"), @"DeviceType", 0), v303 > 9) || ((1 << v303) & 0x310) == 0))
          {
            v305 = v924;
            if ([objc_msgSend(objc_msgSend(v283 "requiredFormat")] && objc_msgSend(v283, "imageControlMode") != 4)
            {
              v304 = [v283 spatialOverCaptureEnabled];
            }

            else
            {
              v304 = 0;
            }
          }

          else
          {
            v304 = 0;
            v305 = v924;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setConfigureForSIFRStillImageCaptureIfAvailable:v304];
          -[FigCaptureCameraSourcePipelineConfiguration setSoftISPEnabled:](v291, [objc_msgSend(v926 "videoPreviewSinkConfiguration")]);
          if ([objc_msgSend(v1026 "irisSinkConfiguration")])
          {
            v306 = 0.100000001;
          }

          else
          {
            v306 = 0.0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setVideoStabilizationOverscan:v306];
          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setConfigureForStereoPhotoCaptureSupport:v1015];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setTrueVideoCaptureAdditionalZoomFactor:v259];
          v307 = cs_stillImageDepthDataType(v283) == 4;
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setFocusBlurMapForDepthFiltersEnabled:v307];
          v308 = [v283 smartCameraEnabled];
          if (v922 < 3)
          {
            v309 = v308;
          }

          else
          {
            v309 = 0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSmartCameraMotionDetectionEnabled:v309];
          if (v293)
          {
            IsLaunchPrewarmingEnabled = FigCaptureSessionIsLaunchPrewarmingEnabled();
          }

          else
          {
            IsLaunchPrewarmingEnabled = 0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setGeneratesHistogram:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setMaxLossyCompressionLevel:"previewMaxLossyCompressionLevel")];
          if (v926 | v305)
          {
            v311 = newValuec;
          }

          else
          {
            v311 = 0;
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSmartStyleRenderingEnabled:v311];
          if ([v283 cinematicFramingEnabled])
          {
            v312 = 2;
          }

          else if ([v283 manualCinematicFramingEnabled])
          {
            v312 = 2;
          }

          else
          {
            v312 = 1;
          }

          v255 = v295;
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setSmartStyleRenderingMethod:v312];
          shouldEnablePreviewStabilization = cs_shouldEnablePreviewStabilization(v1006, v926);
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setPreviewStabilizationEnabled:?];
          if (v964)
          {
            v314 = 0;
          }

          else
          {
            v314 = cs_shouldEnableLowLatencyStabilization(v926);
          }

          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setLowLatencyStabilizationEnabled:v314];
          -[FigCapturePreviewSinkPipelineConfiguration setCinematicVideoEnabled:](v291, [*(v980 + 98) cinematographyPipelineWithSourceID:{objc_msgSend(v283, "sourceID")}] != 0);
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setVideoHDRImageStatisticsEnabled:?];
          v315 = [v283 lensSmudgeDetectionEnabled];
          if (v283)
          {
            [v283 lensSmudgeDetectionInterval];
            v316 = (LODWORD(v1241[0]) << 24) | (BYTE4(v1241[0]) << 56);
          }

          else
          {
            v316 = 0;
            memset(v1241, 0, 24);
          }

          v1238[0] = *(v1241 + 5);
          *(v1238 + 15) = DWORD1(v1241[1]);
          LOBYTE(v1241[0]) = v315;
          *(v1241 + 1) = v316;
          *(v1241 + 9) = v1238[0];
          DWORD2(v1241[1]) = *(v1238 + 15);
          if ([objc_msgSend(v926 videoPreviewSinkConfiguration])
          {
            LOBYTE(v1201) = 0;
            LODWORD(v1241[0]) = 0;
            LODWORD(v1213[0]) = 0;
            cs_getZoomPIPOverlayConfiguration(v926, &v1201, v1241, v1213);
            [(FigCapturePreviewSinkPipelineConfiguration *)v291 setZoomPIPSingleStreamModeEnabled:v1201];
            [(FigCapturePreviewSinkPipelineConfiguration *)v291 setZoomPIPMinimumUIZoomFactor:?];
            [(FigCapturePreviewSinkPipelineConfiguration *)v291 setZoomPIPSlaveStreamingFrameRate:?];
          }

          shouldEnablePocketDetection = cs_shouldEnablePocketDetection(v1006, v926);
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setPocketDetectionEnabled:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setParallelGraphRebuildEnabled:v916];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setIspFastSwitchEnabled:v932];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setRebuildingGraphForTrueVideoTransition:v941];
          [(FigCaptureCameraSourcePipelineConfiguration *)v291 setStillImageConnectionConfiguration:?];
          [(FigCapturePreviewSinkPipelineConfiguration *)v291 setPreallocatePreviewStitcherOutputBufferPool:v928];
          -[FigCapturePreviewSinkPipelineConfiguration setCoreMediaFaceTrackingEnabled:](v291, [objc_msgSend(v295 "videoPreviewSinkConnectionConfiguration")]);
        }

        if (v1216)
        {
          v318 = 0;
        }

        else
        {
          v318 = v291;
        }

        v1200 = v1216;
        if (v1216)
        {
          captureSession_buildGraphWithConfiguration_cold_15();
          goto LABEL_962;
        }

        v319 = [*v1007 objectForKeyedSubscript:{objc_msgSend(v302, "sourceID")}];
        if (v319)
        {
          v320 = *(v319 + 24);
          v321 = *(v319 + 32);
        }

        else
        {
          v320 = 0;
          v321 = 0;
        }

        v322 = FigCaptureBuildSinkPipelineName(v320, v321, [objc_msgSend(v255 "videoPreviewSinkConnectionConfiguration")], @"Preview Sink Pipeline");
        v323 = [(FigCaptureSessionPipelines *)v20 cinematographyPipelineWithSourceID:v989];
        v324 = v323;
        if (v323)
        {
          v325 = [(FigCaptureCinematographyPipeline *)v323 nextPreviewOutput];
          v1143 = 0u;
          v1144 = 0u;
          v1145 = 0u;
          v1146 = 0u;
          v326 = v1005;
          v327 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedVideoDataSinkConfigurations];
          v328 = [(NSArray *)v327 countByEnumeratingWithState:&v1143 objects:v1142 count:16];
          if (v328)
          {
            v329 = v328;
            v330 = *v1144;
            while (2)
            {
              for (i5 = 0; i5 != v329; ++i5)
              {
                if (*v1144 != v330)
                {
                  objc_enumerationMutation(v327);
                }

                if ([objc_msgSend(objc_msgSend(*(*(&v1143 + 1) + 8 * i5) "cameraConfiguration")])
                {
                  v332 = 0;
                  v302 = v1035;
                  goto LABEL_409;
                }
              }

              v329 = [(NSArray *)v327 countByEnumeratingWithState:&v1143 objects:v1142 count:16];
              if (v329)
              {
                continue;
              }

              break;
            }
          }

          v302 = v1035;
          v332 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:-[FigCaptureCameraSourcePipeline stillImageOutputsByPortType](v1035)];
        }

        else
        {
          v325 = -[FigCaptureCameraSourcePipeline nextPreviewOutputForSourceDeviceType:intendedForVideoDataSinkPipeline:](v302, [v255 sourceDeviceType], 0);
          v332 = 0;
          v326 = v1005;
        }

LABEL_409:
        v333 = [FigCaptureSessionPreviewSinkPipeline alloc];
        v334 = captureSession_inferenceScheduler();
        v335 = [(FigCaptureCameraSourcePipeline *)v302 captureDevice];
        v894 = *(v1009 + 832);
        v896 = v332;
        v890 = v335;
        p_isa = v894;
        v336 = [FigCapturePreviewSinkPipeline initWithConfiguration:v333 sourcePreviewOutput:"initWithConfiguration:sourcePreviewOutput:imageQueueSinkNode:graph:name:inferenceScheduler:captureDevice:previewTapDelegate:zoomPIPOverlayDelegate:sourceStillImageOutputsByPortType:" imageQueueSinkNode:v318 graph:v325 name:v998 inferenceScheduler:v1008 captureDevice:v322 previewTapDelegate:v334 zoomPIPOverlayDelegate:? sourceStillImageOutputsByPortType:?];
        if (!v336)
        {
          FigDebugAssert3();
          v1200 = FigSignalErrorAtGM();
          goto LABEL_962;
        }

        v337 = v336;
        [(FigCaptureSessionPreviewSinkPipeline *)v336 setImageQueueUpdatedNotificationSent:(v929 == [(FigCapturePreviewSinkPipeline *)v336 previewRotationDegrees]) & v933];
        if (!v324)
        {
          [-[FigCaptureCameraSourcePipeline captureDevice](v302) setStreamingFilterDelegate:{-[FigCapturePreviewSinkPipeline filterNode](v337, "filterNode")}];
        }

        if ([(FigCapturePreviewSinkPipeline *)v337 depthFilterRenderingEnabled])
        {
          [(FigCapturePreviewSinkPipeline *)v337 filterNode];
          [FigCaptureCameraSourcePipeline setFaceFilteringDelegate:v302];
        }

        v338 = [(FigCaptureCinematographyPipeline *)v324 cinematicVideoFocusDetectionsProvider];
        [(FigCaptureCameraSourcePipeline *)v302 setCinematicVideoFocusDetectionsProvider:v338];
        if (v941)
        {
          os_unfair_lock_lock((v1009 + 384));
          if ([*(v1009 + 584) count])
          {
            [(BWPreviewStitcherNode *)[(FigCapturePreviewSinkPipeline *)v337 previewStitcherNode] setWaitsForFencedUpdateBeforeFirstEmit:1];
            if (dword_1ED844050)
            {
              LODWORD(v1238[0]) = 0;
              LOBYTE(v1216) = 0;
              v339 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v340 = v1238[0];
              if (os_log_type_enabled(v339, v1216))
              {
                v341 = v340;
              }

              else
              {
                v341 = v340 & 0xFFFFFFFE;
              }

              if (v341)
              {
                v342 = *(v1009 + 104);
                LODWORD(v1241[0]) = v908;
                *(v1241 + 4) = "captureSession_buildGraphWithConfiguration";
                WORD6(v1241[0]) = 2114;
                *(v1241 + 14) = v342;
                LODWORD(p_isa) = 22;
                v890 = v1241;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          if ((v1015 & 1) == 0)
          {
            *(v1009 + 603) = 1;
          }

          os_unfair_lock_unlock((v1009 + 384));
        }

        v1141 = 0u;
        v1140 = 0u;
        v1139 = 0u;
        v1138 = 0u;
        v1036 = [(FigCaptureSessionParsedConfiguration *)v326 parsedMovieFileSinkConfigurations];
        v343 = [(NSArray *)v1036 countByEnumeratingWithState:&v1138 objects:v1137 count:16];
        if (v343)
        {
          v344 = v343;
          v345 = *v1139;
          v1016 = 1;
          v1027 = *v1139;
          do
          {
            for (i6 = 0; i6 != v344; ++i6)
            {
              if (*v1139 != v345)
              {
                objc_enumerationMutation(v1036);
              }

              v347 = *(*(&v1138 + 1) + 8 * i6);
              v348 = [v347 primaryVideoConnectionConfiguration];
              if ([objc_msgSend(v348 "movieFileSinkConfiguration")])
              {
                v1136 = 0u;
                v1135 = 0u;
                v1134 = 0u;
                v1133 = 0u;
                v349 = [v347 videoConnectionConfigurations];
                v350 = [v349 countByEnumeratingWithState:&v1133 objects:v1132 count:16];
                if (v350)
                {
                  v351 = v350;
                  v352 = *v1134;
                  while (2)
                  {
                    for (i7 = 0; i7 != v351; ++i7)
                    {
                      if (*v1134 != v352)
                      {
                        objc_enumerationMutation(v349);
                      }

                      v354 = *(*(&v1133 + 1) + 8 * i7);
                      if ([objc_msgSend(objc_msgSend(v354 "sourceConfiguration")])
                      {
                        v355 = [objc_msgSend(v354 "sourceConfiguration")];
                        if (v355 == [(FigCapturePreviewSinkPipeline *)v337 sourceDeviceType])
                        {
                          v1016 = v354 == v348;
                          goto LABEL_446;
                        }
                      }
                    }

                    v351 = [v349 countByEnumeratingWithState:&v1133 objects:v1132 count:16];
                    if (v351)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_446:
                  v345 = v1027;
                }
              }
            }

            v344 = [(NSArray *)v1036 countByEnumeratingWithState:&v1138 objects:v1137 count:16];
          }

          while (v344);
        }

        else
        {
          v1016 = 1;
        }

        [(FigCaptureSessionPreviewSinkPipeline *)v337 setProvidesBuffersForPreviewTap:v1016];
        v20 = v1045;
        [(FigCaptureSessionPipelines *)v1045 addPreviewSinkPipeline:v337];
        v254 = v935 + 1;
      }

      while (v935 + 1 != v920);
      v356 = [(NSArray *)v912 countByEnumeratingWithState:&v1148 objects:v1147 count:16];
      v920 = v356;
    }

    while (v356);
  }

  v1131 = 0u;
  v1130 = 0u;
  v1129 = 0u;
  v1128 = 0u;
  v990 = [(FigCaptureSessionParsedConfiguration *)v1005 videoThumbnailSinkConfigurations];
  v1037 = [(NSArray *)v990 countByEnumeratingWithState:&v1128 objects:v1127 count:16];
  if (v1037)
  {
    v1028 = *v1129;
    do
    {
      v357 = 0;
      do
      {
        if (*v1129 != v1028)
        {
          objc_enumerationMutation(v990);
        }

        v358 = *(*(&v1128 + 1) + 8 * v357);
        v359 = [objc_msgSend(v358 "sourceConfiguration")];
        v360 = -[FigCaptureSessionPipelines previewSinkPipelineWithSourceID:sourceDeviceType:](v20, "previewSinkPipelineWithSourceID:sourceDeviceType:", v359, [v358 underlyingDeviceType]);
        v361 = [*v1007 objectForKeyedSubscript:v359];
        v362 = [(FigCaptureSessionPipelines *)v20 cameraSourcePipelineWithSourceID:v359];
        v363 = +[FigCaptureCameraParameters previewMaxLossyCompressionLevel];
        if (v361)
        {
          v364 = *(v361 + 24);
          LODWORD(v361) = *(v361 + 32);
        }

        else
        {
          v364 = 0;
        }

        v365 = FigCaptureBuildSinkPipelineName(v364, v361, [v358 underlyingDeviceType], @"Video Thumbnail Sink Pipeline");
        v366 = [v360 videoThumbnailSinkOutputTransform];
        v368 = v367;
        *&v1241[0] = v366;
        *(&v1241[0] + 1) = v367;
        v370 = [v360 outputTransform];
        if (*&v1241[0])
        {
          v371 = 0;
        }

        else
        {
          v371 = *(&v1241[0] + 1) == 0;
        }

        if (v371)
        {
          v372 = [(FigCaptureCameraSourcePipeline *)v362 preferredPreviewDimensions];
        }

        else
        {
          v372 = v369;
        }

        v373 = [FigCaptureVideoThumbnailSinkPipeline alloc];
        v374 = [v360 videoThumbnailSinkOutput];
        v375 = *(v1009 + 832);
        v376 = *(v1009 + 36);
        v1243[0] = *(v1009 + 20);
        v1243[1] = v376;
        v377 = [(FigCaptureVideoThumbnailSinkPipeline *)v373 initWithGraph:v1008 name:v365 videoSourceOutput:v374 videoSourceTransform:v366 outputTransform:v368 videoThumbnailConnectionConfiguration:v370 maxLossyCompressionLevel:v372 clientAuditToken:v358 notificationDelegate:v363, v1243, v375];
        if (!v377)
        {
          FigDebugAssert3();
LABEL_838:
          v792 = FigSignalErrorAtGM();
          v1200 = v792;
          goto LABEL_856;
        }

        v20 = v1045;
        [(FigCaptureSessionPipelines *)v1045 addVideoThumbnailSinkPipeline:v377];
        v357 = v357 + 1;
      }

      while (v1037 != v357);
      v378 = [(NSArray *)v990 countByEnumeratingWithState:&v1128 objects:v1127 count:16];
      v1037 = v378;
    }

    while (v378);
  }

  v1126 = 0u;
  v1125 = 0u;
  v1124 = 0u;
  v1123 = 0u;
  v936 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedVideoDataSinkConfigurations];
  newValued = [(NSArray *)v936 countByEnumeratingWithState:&v1123 objects:v1122 count:16];
  if (newValued)
  {
    v952 = *v1124;
    v930 = *MEMORY[0x1E695E480];
    do
    {
      v379 = 0;
      do
      {
        if (*v1124 != v952)
        {
          objc_enumerationMutation(v936);
        }

        v965 = v379;
        v380 = *(*(&v1123 + 1) + 8 * v379);
        v381 = [v380 videoDataConnectionConfiguration];
        v1038 = [v380 metadataObjectConnectionConfiguration];
        LOBYTE(v1216) = 0;
        v382 = [objc_msgSend(v380 "cameraConfiguration")];
        v383 = [v380 sourceDeviceType];
        v384 = [(FigCaptureSessionPipelines *)v20 cameraSourcePipelineWithSourceID:v382];
        v385 = [(FigCaptureSessionPipelines *)v20 previewSinkPipelineWithSourceID:v382 sourceDeviceType:v383];
        v386 = [(FigCaptureSessionPipelines *)v20 cinematographyPipelineWithSourceID:v382];
        v387 = [objc_msgSend(objc_msgSend(v380 "videoDataConnectionConfiguration")];
        v388 = [objc_msgSend(v380 "videoDataConnectionConfiguration")];
        if (v387)
        {
          v394 = v388 > 6;
        }

        else
        {
          v394 = 1;
        }

        v395 = v394 || ((1 << v388) & 0x51) == 0;
        v1017 = v385;
        if (v395)
        {
          if (v386)
          {
            v397 = [(FigCaptureCinematographyPipeline *)v386 nextVideoCaptureOutput];
            v398 = [(FigCaptureCinematographyPipeline *)v386 videoCaptureOutputTransform];
          }

          else
          {
            [(FigCaptureCameraSourcePipeline *)v384 nextVideoCaptureOutputForSourceDeviceType:v383 sharesBuffersWithOtherConnections:&v1216, v389, v390, v391, v392, v393, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v912, v913];
            v397 = v396;
            v398 = [(FigCaptureCameraSourcePipeline *)v384 videoCaptureOutputTransformForSourceDeviceType:v383];
          }
        }

        else if (v386)
        {
          v397 = [(FigCaptureCinematographyPipeline *)v386 nextPreviewOutput];
          v398 = [(FigCaptureCinematographyPipeline *)v386 previewOutputTransform];
        }

        else
        {
          v397 = [(FigCaptureCameraSourcePipeline *)v384 nextPreviewOutputForSourceDeviceType:v383 intendedForVideoDataSinkPipeline:1];
          v398 = [(FigCaptureCameraSourcePipeline *)v384 previewOutputTransformForSourceDeviceType:v383];
        }

        obje = v399;
        v981 = v398;
        v400 = FigCaptureMetadataObjectConfigurationRequiresOfflineVideoStabilizationMotionData(v1038);
        v401 = FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v1038);
        v402 = [(FigCaptureCameraSourcePipeline *)v384 videoCaptureDimensionsWithoutOverscan];
        if ([objc_msgSend(objc_msgSend(objc_msgSend(v380 "videoDataConnectionConfiguration")] && objc_msgSend(objc_msgSend(objc_msgSend(v380, "videoDataConnectionConfiguration"), "videoDataSinkConfiguration"), "cinematicFramingSupported"))
        {
          v403 = [objc_msgSend(objc_msgSend(v380 "videoDataConnectionConfiguration")];
        }

        else
        {
          v403 = 0;
        }

        v999 = v400;
        v991 = v401;
        if ([objc_msgSend(objc_msgSend(objc_msgSend(v380 "videoDataConnectionConfiguration")] && objc_msgSend(objc_msgSend(objc_msgSend(v380, "videoDataConnectionConfiguration"), "videoDataSinkConfiguration"), "cinematicFramingSupported"))
        {
          v404 = [objc_msgSend(objc_msgSend(v380 "videoDataConnectionConfiguration")] ^ 1;
        }

        else
        {
          v404 = 0;
        }

        v405 = [objc_msgSend(objc_msgSend(objc_msgSend(v380 "videoDataConnectionConfiguration")];
        v406 = [objc_msgSend(v380 "cameraConfiguration")] | v403;
        v407 = [objc_msgSend(v380 "cameraConfiguration")];
        v408 = v406 | [objc_msgSend(v380 "cameraConfiguration")] | v405 | v407 | v404;
        if (v408)
        {
          v402 = [objc_msgSend(objc_msgSend(v380 "cameraConfiguration")];
        }

        if (([objc_msgSend(objc_msgSend(v380 "cameraConfiguration")] & v406) == 1)
        {
          v402 = [objc_msgSend(objc_msgSend(v380 "cameraConfiguration")];
          LOBYTE(v408) = 1;
        }

        v409 = [v381 videoStabilizationType];
        if ([objc_msgSend(v381 "sinkConfiguration")])
        {
          v410 = MEMORY[0x1E696AEC0];
          v888 = [v397 name];
          p_isa = [objc_msgSend(v381 "sinkConfiguration")];
          [v397 setName:{objc_msgSend(v410, "stringWithFormat:", @"%@ (%@)"}];
        }

        v1029 = v397;
        v411 = v408 | FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(objc_msgSend(v380 "cameraConfiguration")]);
        v412 = [(FigCaptureCameraSourcePipeline *)v384 lowLatencyStabilizationEnabled];
        v413 = [(FigCaptureCameraSourcePipeline *)v384 motionAttachmentsSource];
        [(FigCaptureSessionParsedConfiguration *)v1005 smartStyleRenderingEnabled];
        v414 = v1216;
        v415 = CMBaseObjectGetDerivedStorage();
        v416 = objc_alloc_init(FigCaptureVideoDataSinkPipelineConfiguration);
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setSourceVideoTransform:v981, obje];
        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setActionCameraEnabled:?];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setVisOutputDimensions:v402];
        -[FigCaptureVideoDataSinkPipelineConfiguration setVisGeneratedTransformsOutputDimensionsOverride:](v416, [objc_msgSend(objc_msgSend(v381 "sourceConfiguration")] | (objc_msgSend(objc_msgSend(objc_msgSend(v381, "sourceConfiguration"), "requiredFormat"), "videoStabilizationGeneratedTransformsOutputHeightOverride") << 32));
        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:v409];
        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setDepthType:v413];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setFaceTrackingEnabled:v991];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setOfflineVISMotionDataEnabled:v999];
        PortTypesWithGDCInVIS = cs_getPortTypesWithGDCInVIS(v384);
        [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setCameraDebugInfoMetadataConnectionConfiguration:?];
        v418 = [v381 sourceConfiguration];
        if (!v418)
        {
          v418 = [v1038 sourceConfiguration];
        }

        [(FigCapturePreviewSinkPipelineConfiguration *)v416 setMetadataObjectConnectionConfiguration:v418];
        v419 = [v381 underlyingDeviceType];
        v20 = v1045;
        if (!v419)
        {
          v419 = [v1038 underlyingDeviceType];
        }

        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setSourceDeviceType:v419];
        [(FigCaptureDepthDataPipelineConfiguration *)v416 setCameraInfoByPortType:v381];
        v1243[1] = *(v415 + 36);
        v1243[0] = *(v415 + 20);
        v1241[0] = v1243[0];
        v1241[1] = v1243[1];
        v420 = [objc_msgSend(v381 sourceConfiguration];
        if (cs_shouldConvertToBT2020(v384, v420))
        {
          v421 = *(v415 + 816) ^ 1;
        }

        else
        {
          v421 = 0;
        }

        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setStrictDepthModePreferred:?];
        v422 = [(FigCaptureCameraSourcePipeline *)v384 colorSpaceProperties];
        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setRGBIRStereoFusionMinDepthThresholdMM:v422];
        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setRGBIRStereoFusionMaxDepthThresholdMM:"videoDataMaxLossyCompressionLevel")];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setForcePixelTransfer:v414];
        v423 = cs_shouldEnablePreviewStabilization(v1006, v381);
        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setOfflineVISEnabled:v423];
        if (v412)
        {
          v424 = 0;
        }

        else
        {
          v424 = cs_shouldEnableLowLatencyStabilization(v381);
        }

        [(FigCaptureCameraSourcePipelineConfiguration *)v416 setZeroShutterLagEnabled:v424];
        v425 = [v381 sourceConfiguration];
        if ([v425 cinematicFramingEnabled])
        {
          v426 = 2;
        }

        else if ([v425 manualCinematicFramingEnabled])
        {
          v426 = 2;
        }

        else
        {
          v426 = 1;
        }

        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setSmartStyleRenderingMethod:v426];
        if (!v1017)
        {
          v447 = cs_shouldEnablePocketDetection(v1006, v381);
          [(FigCaptureCameraSourcePipelineConfiguration *)v416 setConfigureForZeroShutterLagSupport:v447];
        }

        [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setClientApplicationID:?];
        -[FigCaptureCameraSourcePipelineConfiguration setConfigureForSIFRStillImageCaptureIfAvailable:](v416, [objc_msgSend(v381 "videoDataSinkConfiguration")]);
        if ([objc_msgSend(objc_msgSend(v381 "sinkConfiguration")] && -[FigCaptureCameraSourcePipelineConfiguration configureForSIFRStillImageCaptureIfAvailable](v416))
        {
          -[FigCaptureCameraSourcePipelineConfiguration setSoftISPEnabled:](v416, [objc_msgSend(v381 "videoDataSinkConfiguration")]);
          v427 = [(FigCaptureCameraSourcePipelineConfiguration *)v416 softISPEnabled];
          [(FigCapturePreviewSinkPipelineConfiguration *)v416 setZoomPIPSingleStreamModeEnabled:?];
          [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setCenterStageFramingMode:?];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setP3ToBT2020ConversionEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v416 setConfigureForSoftISPSupport:?];
        }

        else if ([objc_msgSend(objc_msgSend(v381 "sinkConfiguration")])
        {
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setSemanticStyleRenderingEnabled:?];
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setMaxLossyCompressionLevel:?];
        }

        *&v1241[0] = 0;
        v428 = [(FigCaptureCameraSourcePipeline *)v384 captureSource];
        v429 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v429)
        {
          v429(v428, @"AttributesDictionary", v930, v1241);
          v430 = *&v1241[0];
          if (*&v1241[0])
          {
            v430 = [*&v1241[0] objectForKeyedSubscript:@"MotionCompensatedTemporalFilterNoiseReductionConfiguration"];
          }
        }

        else
        {
          v430 = 0;
        }

        if ([objc_msgSend(v430 objectForKeyedSubscript:{@"Supported", "BOOLValue"}])
        {
          if ([objc_msgSend(objc_msgSend(v381 "sinkConfiguration")])
          {
            v431 = 1;
          }

          else
          {
            v431 = [objc_msgSend(objc_msgSend(v381 "sinkConfiguration")];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setVideoSTFEnabled:v431];
          -[FigCaptureMovieFileSinkPipelineConfiguration setVideoGreenGhostMitigationEnabled:](v416, [objc_msgSend(v381 "sinkConfiguration")]);
        }

        else
        {
          [(FigCaptureMovieFileSinkPipelineConfiguration *)v416 setVideoSTFEnabled:?];
        }

        v432 = [*(v415 + 784) cinematographyPipelineWithSourceID:{objc_msgSend(v384, "sourceID")}];
        if (v381)
        {
          v433 = v432 != 0;
          *&v1238[0] = v381;
          v434 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1238 count:1];
          v435 = [(FigCaptureCameraSourcePipeline *)v384 colorSpaceProperties];
          shouldEnableVideoSTF = cs_shouldEnableVideoSTF(v434, v433, v435);
          [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setVideoSTFEnabled:?];
        }

        -[FigCaptureMovieFileSinkPipelineConfiguration setIspFastSwitchEnabled:](v416, [objc_msgSend(v381 "sourceConfiguration")]);
        [-[FigCaptureCameraSourcePipeline captureDevice](v384) simulatedAperture];
        [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 setSimulatedAperture:v437];
        v438 = [*(v415 + 776) objectForKeyedSubscript:{objc_msgSend(v384, "sourceID")}];
        if (v438)
        {
          v439 = *(v438 + 24);
          v440 = *(v438 + 32);
        }

        else
        {
          v439 = 0;
          v440 = 0;
        }

        v441 = [(FigCaptureVideoDataSinkPipelineConfiguration *)v416 sourceDeviceType];
        v442 = FigCaptureBuildSinkPipelineName(v439, v440, v441, @"Video Data Sink Pipeline");
        v443 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:-[FigCaptureCameraSourcePipeline stillImageOutputsByPortType](v384)];
        v444 = [FigCaptureVideoDataSinkPipeline alloc];
        v445 = [(FigCaptureCameraSourcePipeline *)v384 captureDevice];
        v446 = [(FigCaptureVideoDataSinkPipeline *)v444 initWithConfiguration:v416 sourceVideoOutput:v1029 captureDevice:v445 graph:*(v415 + 752) name:v442 delegate:*(v415 + 832) sourceStillImageOutputsByPortType:v443];
        if (!v446)
        {
          FigDebugAssert3();
          FigDebugAssert3();
          goto LABEL_838;
        }

        [(FigCaptureSessionPipelines *)v1045 addVideoDataSinkPipeline:v446];
        v379 = v965 + 1;
      }

      while (newValued != v965 + 1);
      v448 = [(NSArray *)v936 countByEnumeratingWithState:&v1123 objects:v1122 count:16];
      newValued = v448;
    }

    while (v448);
  }

  captureSession_cleanUpUnusedPreparedBrackets(v1006, [(FigCaptureSessionParsedConfiguration *)v1005 parsedStillImageSinkConfigurations]);
  v1121 = 0u;
  v1120 = 0u;
  v1119 = 0u;
  v1118 = 0u;
  v449 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedStillImageSinkConfigurations];
  v450 = [(NSArray *)v449 countByEnumeratingWithState:&v1118 objects:v1117 count:16];
  if (!v450)
  {
    goto LABEL_563;
  }

  v451 = v450;
  v452 = *v1119;
  do
  {
    for (i8 = 0; i8 != v451; ++i8)
    {
      if (*v1119 != v452)
      {
        objc_enumerationMutation(v449);
      }

      v454 = *(*(&v1118 + 1) + 8 * i8);
      v455 = [v454 primaryStillImageConnectionConfiguration];
      if ([objc_msgSend(v454 "stillImageConnectionConfigurations")] < 2)
      {
        v456 = 0;
      }

      else
      {
        v456 = [objc_msgSend(v454 "stillImageConnectionConfigurations")];
      }

      v457 = [objc_msgSend(v455 "sourceConfiguration")];
      v458 = [v455 underlyingDeviceType];
      v459 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1045, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v455 "sourceConfiguration")]);
      v460 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1045, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v456 "sourceConfiguration")]);
      v461 = [(FigCaptureSessionPipelines *)v1045 previewSinkPipelineWithSourceID:v457 sourceDeviceType:v458];
      v462 = [(NSArray *)[(FigCaptureSessionPipelines *)v1045 videoDataSinkPipelines] firstObject];
      if ([v454 pointCloudDataConnectionConfiguration])
      {
        v463 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1045, "cameraSourcePipelineWithSourceID:", [objc_msgSend(objc_msgSend(v454 "pointCloudDataConnectionConfiguration")]);
      }

      else
      {
        v463 = 0;
      }

      v464 = captureSession_createStillImageSinkPipelineSessionStorage(v1006, v454, v459, v460, v463, v461, v462, [(FigCaptureSessionParsedConfiguration *)v1005 smartStyleRenderingEnabled], &v1200);
      if (v1200)
      {
        captureSession_buildGraphWithConfiguration_cold_16();
        goto LABEL_962;
      }

      [(FigCaptureSessionPipelines *)v1045 addStillImageSinkPipelineSessionStorage:v464];
    }

    v451 = [(NSArray *)v449 countByEnumeratingWithState:&v1118 objects:v1117 count:16];
  }

  while (v451);
LABEL_563:
  if ([(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1005 parsedVideoDataSinkConfigurations] count])
  {
    captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary(v1006);
  }

  v1116 = 0u;
  v1115 = 0u;
  v1114 = 0u;
  v1113 = 0u;
  v465 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedVisionDataSinkConfigurations];
  v466 = [(NSArray *)v465 countByEnumeratingWithState:&v1113 objects:v1112 count:16];
  v467 = v1045;
  if (!v466)
  {
LABEL_577:
    v1111 = 0u;
    v1110 = 0u;
    v1109 = 0u;
    v1108 = 0u;
    newValuee = [(FigCaptureSessionParsedConfiguration *)v1005 parsedLiDARDepthPipelineConfigurations];
    objf = [(NSArray *)newValuee countByEnumeratingWithState:&v1108 objects:v1107 count:16];
    if (objf)
    {
      v966 = *v1109;
      v486 = 0x1E695D000uLL;
      do
      {
        v487 = 0;
        do
        {
          if (*v1109 != v966)
          {
            objc_enumerationMutation(newValuee);
          }

          v488 = *(*(&v1108 + 1) + 8 * v487);
          v489 = [objc_msgSend(objc_msgSend(v488 "depthDataConnectionConfiguration")];
          v490 = [objc_msgSend(v488 "timeOfFlightCameraConfiguration")];
          v491 = [*v1007 objectForKeyedSubscript:v489];
          v492 = [*v1007 objectForKeyedSubscript:v490];
          v493 = [(FigCaptureSessionPipelines *)v1045 cameraSourcePipelineWithSourceID:v489];
          v982 = [(FigCaptureSessionPipelines *)v1045 cameraSourcePipelineWithSourceID:v490];
          v1039 = v488;
          v494 = [objc_msgSend(objc_msgSend(v488 "depthDataConnectionConfiguration")];
          [(FigCaptureCameraSourcePipeline *)v493 nextVideoCaptureOutputForSourceDeviceType:v494, v495, v496, v497, v498, v499, v500, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v912, v913];
          v1018 = v501;
          v1000 = FigCaptureBuildSinkPipelineName(@"LiDARDepthCamera", 13, 13, @"LiDARDepth Pipeline");
          v502 = [*(v486 + 3984) dictionary];
          if (v491)
          {
            v503 = *(v491 + 16);
          }

          else
          {
            v503 = 0;
          }

          v504 = [v503 cameraInfoByPortType];
          if (v492)
          {
            v505 = *(v492 + 16);
          }

          else
          {
            v505 = 0;
          }

          v506 = [v505 cameraInfoByPortType];
          [v502 addEntriesFromDictionary:v504];
          [v502 addEntriesFromDictionary:v506];
          v507 = [*(v486 + 3984) dictionary];
          v508 = [MEMORY[0x1E695DF70] array];
          if (v491)
          {
            v509 = *(v491 + 16);
          }

          else
          {
            v509 = 0;
          }

          [v508 addObjectsFromArray:{objc_msgSend(v509, "captureStreams")}];
          v992 = v502;
          if (v492)
          {
            v510 = *(v492 + 16);
          }

          else
          {
            v510 = 0;
          }

          [v508 addObjectsFromArray:{objc_msgSend(v510, "captureStreams")}];
          v1106 = 0u;
          v1105 = 0u;
          v1104 = 0u;
          v1103 = 0u;
          v511 = [v508 countByEnumeratingWithState:&v1103 objects:v1102 count:16];
          if (v511)
          {
            v512 = v511;
            v513 = *v1104;
            do
            {
              for (i9 = 0; i9 != v512; ++i9)
              {
                if (*v1104 != v513)
                {
                  objc_enumerationMutation(v508);
                }

                [v507 setObject:objc_msgSend(*(*(&v1103 + 1) + 8 * i9) forKeyedSubscript:{"sensorIDString"), objc_msgSend(*(*(&v1103 + 1) + 8 * i9), "portType")}];
              }

              v512 = [v508 countByEnumeratingWithState:&v1103 objects:v1102 count:16];
            }

            while (v512);
          }

          v515 = [(FigCaptureCameraSourcePipeline *)v982 nextPointCloudOutput];
          v516 = [FigCaptureLiDARDepthPipeline alloc];
          if (v491)
          {
            v517 = *(v491 + 16);
          }

          else
          {
            v517 = 0;
          }

          v467 = v1045;
          v486 = 0x1E695D000;
          if (v492)
          {
            v518 = *(v492 + 16);
          }

          else
          {
            v518 = 0;
          }

          v898 = &v1200;
          v894 = v1000;
          v896 = v489;
          v888 = v515;
          p_isa = &v1008->super.isa;
          -[FigCaptureSessionPipelines addLiDARDepthPipeline:](v1045, "addLiDARDepthPipeline:", -[FigCaptureLiDARDepthPipeline initWithCaptureDevice:cameraInfoByPortType:sensorIDStringsByPortType:timeOfFlightCameraType:depthDataCaptureConnectionConfiguration:videoSourceCaptureOutput:pointCloudOutput:graph:name:rgbCameraSourceID:errorOut:](v516, "initWithCaptureDevice:cameraInfoByPortType:sensorIDStringsByPortType:timeOfFlightCameraType:depthDataCaptureConnectionConfiguration:videoSourceCaptureOutput:pointCloudOutput:graph:name:rgbCameraSourceID:errorOut:", v517, v992, v507, [v518 timeOfFlightCameraType], objc_msgSend(v1039, "depthDataConnectionConfiguration"), v1018));
          v487 = v487 + 1;
        }

        while (v487 != objf);
        v519 = [(NSArray *)newValuee countByEnumeratingWithState:&v1108 objects:v1107 count:16];
        objf = v519;
      }

      while (v519);
    }

    v1101 = 0u;
    v1100 = 0u;
    v1099 = 0u;
    v1098 = 0u;
    v1030 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedDepthDataSinkConfigurations];
    v520 = [(NSArray *)v1030 countByEnumeratingWithState:&v1098 objects:v1097 count:16];
    if (!v520)
    {
LABEL_637:
      v1096 = 0u;
      v1095 = 0u;
      v1094 = 0u;
      v1093 = 0u;
      v1031 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMetadataSinkConfigurations];
      v556 = [(NSArray *)v1031 countByEnumeratingWithState:&v1093 objects:v1092 count:16];
      if (v556)
      {
        v557 = v556;
        v558 = *v1094;
        v1001 = *v1094;
        do
        {
          v559 = 0;
          v1019 = v557;
          do
          {
            if (*v1094 != v558)
            {
              objc_enumerationMutation(v1031);
            }

            v560 = *(*(&v1093 + 1) + 8 * v559);
            v561 = [v560 metadataObjectConnectionConfiguration];
            if (([v561 attachMetadataToVideoBuffers] & 1) == 0)
            {
              v562 = [objc_msgSend(v561 "sourceConfiguration")];
              v563 = [v561 underlyingDeviceType];
              v564 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1045, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v561 "sourceConfiguration")]);
              v565 = [(FigCaptureCameraSourcePipeline *)v564 motionAttachmentsSource];
              v566 = captureSession_createMetadataSinkPipelineConfiguration(v1006, v560, v565, &v1200);
              if (v1200)
              {
                captureSession_buildGraphWithConfiguration_cold_19();
                goto LABEL_962;
              }

              v567 = [(FigCaptureSessionPipelines *)v1045 depthDataSinkPipelineWithSourceID:v562 sourceDeviceType:v563];
              v1041 = [v567 pipelineStage];
              v568 = [(FigCaptureSessionPipelines *)v1045 previewSinkPipelineWithSourceID:v562 sourceDeviceType:v563];
              v569 = [(FigCaptureSessionPipelines *)v1045 videoDataSinkPipelineForMetadataWithSourceID:v562 sourceDeviceType:v563];
              v570 = [(FigCaptureSessionPipelines *)v1045 cinematographyPipelineWithSourceID:v562];
              if ((FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(v561) & 1) != 0 || (FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(v561) & 1) != 0 || (v571 = [(FigCaptureMovieFileSinkPipelineConfiguration *)v566 primaryCameraConfiguration], FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v571)))
              {
                v572 = [v568 metadataSinkOutput];
                if (!v572)
                {
                  v573 = [v561 underlyingDeviceType];
                  [(FigCaptureCameraSourcePipeline *)v564 nextVideoCaptureOutputForSourceDeviceType:v573, v574, v575, v576, v577, v578, v579, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v912, v913];
                  v572 = v580;
                }

                v581 = [v568 metadataSinkOutput];
                v582 = [(FigCaptureMetadataSinkPipelineConfiguration *)v566 compressed8BitInputEnabled];
                if (v581)
                {
                  v583 = 0;
                }

                else
                {
                  v583 = v582;
                }

                [(FigCaptureMetadataSinkPipelineConfiguration *)v566 setCompressed8BitInputEnabled:v583];
              }

              else
              {
                v572 = 0;
              }

              v584 = [v567 videoAndConvertedDepthDataOutput];
              if (!v584)
              {
                v584 = [(FigCaptureVideoDataSinkPipeline *)v569 faceTrackingVideoCaptureOutput];
              }

              v585 = -[FigCaptureCameraSourcePipeline metadataOutputsByCategoryForSourceDeviceType:](v564, [v561 underlyingDeviceType]);
              v586 = v585;
              if (v584 | v570)
              {
                v587 = [v585 mutableCopy];
                v586 = v587;
                if (v584)
                {
                  [v587 setObject:v584 forKeyedSubscript:&unk_1F2244DB8];
                }

                if (v570)
                {
                  [v586 setObject:-[FigCaptureCinematographyPipeline detectedObjectsOutput](v570) forKeyedSubscript:&unk_1F2244DD0];
                }
              }

              v588 = [*v1007 objectForKeyedSubscript:{objc_msgSend(v564, "sourceID")}];
              if (v588)
              {
                v589 = *(v588 + 24);
                v590 = *(v588 + 32);
              }

              else
              {
                v589 = 0;
                v590 = 0;
              }

              v591 = FigCaptureBuildSinkPipelineName(v589, v590, [v561 underlyingDeviceType], @"Metadata Sink Pipeline");
              v592 = [FigCaptureMetadataSinkPipeline alloc];
              v593 = [(FigCaptureVideoDataSinkPipeline *)v569 offlineVISMotionDataCaptureOutput];
              v594 = [(FigCaptureCameraSourcePipeline *)v564 captureDevice];
              v595 = captureSession_inferenceScheduler();
              v596 = *(v1009 + 832);
              v597 = *(v1009 + 36);
              v1243[0] = *(v1009 + 20);
              v1243[1] = v597;
              v896 = v596;
              v598 = [FigCaptureMetadataSinkPipeline initWithConfiguration:v592 graph:v566 name:v1008 videoPreviewOutput:v591 offlineVISMotionDataSourceOutput:v572 metadataSourceOutputsByCategory:v593 captureDevice:v586 faceTrackingPipelineStage:v594 clientAuditToken:v1041 inferenceScheduler:v1243 delegate:v595];
              if (!v598)
              {
                captureSession_buildGraphWithConfiguration_cold_20();
                goto LABEL_855;
              }

              [(FigCaptureSessionPipelines *)v1045 addMetadataSinkPipeline:v598];
              v558 = v1001;
              v557 = v1019;
            }

            ++v559;
          }

          while (v557 != v559);
          v599 = [(NSArray *)v1031 countByEnumeratingWithState:&v1093 objects:v1092 count:16];
          v557 = v599;
        }

        while (v599);
      }

      v1091 = 0u;
      v1090 = 0u;
      v1089 = 0u;
      v1088 = 0u;
      v600 = v1005;
      v931 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMovieFileSinkConfigurations];
      v601 = v1045;
      v940 = [(NSArray *)v931 countByEnumeratingWithState:&v1088 objects:v1087 count:16];
      if (v940)
      {
        v937 = *v1089;
        do
        {
          v602 = 0;
          do
          {
            if (*v1089 != v937)
            {
              objc_enumerationMutation(v931);
            }

            v603 = *(*(&v1088 + 1) + 8 * v602);
            v604 = [v603 primaryVideoConnectionConfiguration];
            v1002 = [v603 audioConnectionConfiguration];
            v953 = [v603 detectedObjectMetadataConnectionConfigurations];
            v946 = v602;
            v993 = v604;
            if (v604)
            {
              v1032 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v601, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v604 "sourceConfiguration")]);
            }

            else
            {
              v1032 = 0;
            }

            v605 = [MEMORY[0x1E695DF90] dictionary];
            v606 = [MEMORY[0x1E695DF90] dictionary];
            v1083 = 0u;
            v1084 = 0u;
            v1085 = 0u;
            v1086 = 0u;
            v1020 = v603;
            v607 = [v603 videoConnectionConfigurations];
            v608 = [v607 countByEnumeratingWithState:&v1083 objects:v1082 count:16];
            if (v608)
            {
              v609 = v608;
              v610 = *v1084;
              do
              {
                for (i10 = 0; i10 != v609; ++i10)
                {
                  if (*v1084 != v610)
                  {
                    objc_enumerationMutation(v607);
                  }

                  v612 = *(*(&v1083 + 1) + 8 * i10);
                  v613 = [objc_msgSend(v612 "sourceConfiguration")];
                  v614 = [(FigCaptureSessionPipelines *)v1045 cinematographyPipelineWithSourceID:v613];
                  v615 = [(FigCaptureSessionPipelines *)v1045 cameraSourcePipelineWithSourceID:v613];
                  if (v614)
                  {
                    v616 = [(FigCaptureCinematographyPipeline *)v614 nextVideoCaptureOutput];
                  }

                  else
                  {
                    v617 = [v612 underlyingDeviceType];
                    [(FigCaptureCameraSourcePipeline *)v615 nextVideoCaptureOutputForSourceDeviceType:v617, v618, v619, v620, v621, v622, v623, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v912, v913];
                  }

                  [v605 setObject:v616 forKeyedSubscript:{objc_msgSend(v612, "connectionID")}];
                  [v606 setObject:-[FigCaptureCameraSourcePipeline captureDevice](v615) forKeyedSubscript:{objc_msgSend(v612, "connectionID")}];
                }

                v609 = [v607 countByEnumeratingWithState:&v1083 objects:v1082 count:16];
              }

              while (v609);
            }

            if (v1002)
            {
              v625 = v1045;
              v624 = [(FigCaptureSessionPipelines *)v1045 micSourcePipeline];
            }

            else
            {
              v624 = 0;
              v625 = v1045;
            }

            v626 = v993;
            v627 = -[FigCaptureSessionPipelines cinematographyPipelineWithSourceID:](v625, "cinematographyPipelineWithSourceID:", [objc_msgSend(v993 "sourceConfiguration")]);
            if ([(__CFArray *)v1002 audioCaptureMode]== 2)
            {
              v628 = HIDWORD(v910);
            }

            else
            {
              v628 = 1;
            }

            v629 = [(__CFArray *)v1002 builtInMicrophonePosition];
            if (v628)
            {
              v630 = -65536;
            }

            else
            {
              v630 = 6619138;
            }

            objg = [(FigCaptureMicSourcePipeline *)v624 nextOutputForMicSourcePosition:v629 forAudioChannelLayoutTag:v630];
            if (v628)
            {
              v967 = 0;
            }

            else
            {
              v967 = [(FigCaptureMicSourcePipeline *)v624 nextOutputForMicSourcePosition:12451844 forAudioChannelLayoutTag:?];
            }

            newValuef = v627;
            [-[FigCaptureMicSourcePipeline sourceNode](v624) setCinematicVideoCaptureEnabled:v627 != 0];
            *&v1238[0] = 0;
            cs_getMasterClockAndType(v625, v1238, 0);
            v942 = -[FigCaptureSessionPipelines previewSinkPipelineWithSourceID:sourceDeviceType:](v625, "previewSinkPipelineWithSourceID:sourceDeviceType:", [v1032 sourceID], objc_msgSend(v993, "underlyingDeviceType"));
            v631 = -[FigCaptureCameraSourcePipeline videoCaptureOutputTransformForSourceDeviceType:](v1032, [objc_msgSend(v993 "sourceConfiguration")]);
            v633 = v632;
            v634 = [(FigCaptureSessionParsedConfiguration *)v1005 smartStyleRenderingEnabled];
            v635 = [(FigCaptureCameraSourcePipeline *)v1032 lowLatencyStabilizationEnabled];
            MovieFileSinkPipelineConfigurationFromParsedConfiguration = captureSession_createMovieFileSinkPipelineConfigurationFromParsedConfiguration(v1006, v1020, v631, v633, v634, v635, SBYTE4(v910), v932);
            v636 = [(FigCaptureSessionPipelines *)v625 metadataSourcePipelines];
            v983 = v624;
            if ([(NSArray *)v636 count])
            {
              v637 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v636, "count")}];
            }

            else
            {
              v637 = 0;
            }

            v1081 = 0u;
            v1080 = 0u;
            v1079 = 0u;
            v1078 = 0u;
            v638 = [(NSArray *)v636 countByEnumeratingWithState:&v1078 objects:v1077 count:16];
            if (v638)
            {
              v639 = v638;
              v640 = *v1079;
              do
              {
                for (i11 = 0; i11 != v639; ++i11)
                {
                  if (*v1079 != v640)
                  {
                    objc_enumerationMutation(v636);
                  }

                  [v637 addObject:-[FigCaptureMetadataSourcePipeline output](*(*(&v1078 + 1) + 8 * i11))];
                }

                v639 = [(NSArray *)v636 countByEnumeratingWithState:&v1078 objects:v1077 count:16];
              }

              while (v639);
            }

            if (v1032)
            {
              captureSession_buildGraphWithConfiguration_cold_21(v1007, v1032, v993, v1243);
              v646 = *&v1243[0];
              v645 = MovieFileSinkPipelineConfigurationFromParsedConfiguration;
            }

            else
            {
              v642 = MEMORY[0x1E696AEC0];
              v643 = [(__CFArray *)v1002 builtInMicrophonePosition];
              if (v643 > 2)
              {
                v644 = 0;
              }

              else
              {
                v644 = *(&off_1E79990B0 + v643);
              }

              v645 = MovieFileSinkPipelineConfigurationFromParsedConfiguration;
              v646 = [v642 stringWithFormat:@"%@ Microphone Movie File Sink Pipeline", v644];
            }

            if (cs_shouldConvertToBT2020(v1032, [objc_msgSend(v993 "sourceConfiguration")]))
            {
              v647 = *(v1009 + 816) ^ 1;
            }

            else
            {
              v647 = 0;
            }

            [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 setP3ToBT2020ConversionEnabled:?];
            if (v993)
            {
              v1076 = v993;
              v677 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1076 count:1];
              v678 = [(FigCaptureCameraSourcePipeline *)v1032 colorSpaceProperties];
              v679 = v677;
              v626 = v993;
              v680 = cs_shouldEnableVideoSTF(v679, newValuef != 0, v678);
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 setVideoSTFEnabled:v680];
              shouldEnableVideoGreenGhostMitigation = cs_shouldEnableVideoGreenGhostMitigation(v993, newValuef != 0);
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 setVideoGreenGhostMitigationEnabled:?];
              v682 = -[FigCaptureCameraSourcePipeline isLightSourceMaskOnVideoCaptureOutputsEnabledForSourceDeviceType:](v1032, [v993 underlyingDeviceType]);
              if (v682)
              {
                v683 = -[FigCaptureCameraSourcePipeline isKeypointDescriptorDataOnVideoCaptureOutputsEnabledForSourceDeviceType:](v1032, [v993 underlyingDeviceType]);
              }

              else
              {
                v683 = 0;
              }

              [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 setLightSourceMaskAndKeypointDescriptorDataEnabled:v683];
              if (newValuef)
              {
                v684 = 0;
              }

              else
              {
                v684 = [objc_msgSend(objc_msgSend(v993 "sourceConfiguration")];
              }

              [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 setVideoGreenGhostOfflineMetadataEnabled:v684];
              if ((v682 & [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 videoGreenGhostOfflineMetadataEnabled]) == 1)
              {
                v685 = [objc_msgSend(objc_msgSend(v993 "sourceConfiguration")];
              }

              else
              {
                v685 = 0;
              }

              [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 setVideoGreenGhostOfflineLightSourceMaskEnabled:v685];
            }

            [(FigCaptureMovieFileSinkPipelineConfiguration *)v645 videoSourceCaptureTransform];
            v650 = (v649 * v648) < 0x7E9000 && [(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations] count]== 1;
            newValueg = -[FigCaptureMetadataSinkPipeline smartCameraInferenceOutput](-[FigCaptureSessionPipelines metadataSinkPipelineWithSourceID:sourceDeviceType:](v625, "metadataSinkPipelineWithSourceID:sourceDeviceType:", [objc_msgSend(v626 "sourceConfiguration")], objc_msgSend(v626, "underlyingDeviceType")));
            v1003 = v646;
            if ((-[FigCaptureMovieFileSinkPipelineConfiguration boxedMetadataPostVISEnabled](v645) & 1) != 0 || ![v953 count])
            {
              v954 = 0;
              v652 = 0;
            }

            else
            {
              v651 = -[FigCaptureSessionPipelines metadataSinkPipelineWithSourceID:sourceDeviceType:](v625, "metadataSinkPipelineWithSourceID:sourceDeviceType:", [objc_msgSend(objc_msgSend(v953 "firstObject")], objc_msgSend(objc_msgSend(v953, "firstObject"), "underlyingDeviceType"));
              if (v651)
              {
                v954 = [(FigCaptureMetadataSinkPipeline *)v651 detectedObjectBoxedMetadataOutputs];
                v652 = 0;
              }

              else
              {
                v652 = [-[FigCaptureCameraSourcePipeline metadataOutputsByCategoryForSourceDeviceType:](v1032 objc_msgSend(v626];
                v954 = 0;
              }
            }

            v653 = v650;
            if ([objc_msgSend(v626 "movieFileSinkConfiguration")])
            {
              MultiCamClientCompositingCallback = captureSession_createMultiCamClientCompositingCallback(v1006, [objc_msgSend(v626 "sinkConfiguration")]);
            }

            else
            {
              MultiCamClientCompositingCallback = 0;
            }

            v655 = [FigCaptureSessionMovieFileSinkPipeline alloc];
            v656 = *(v1009 + 752);
            v657 = captureSession_inferenceScheduler();
            v658 = [(FigCaptureMicSourcePipeline *)v983 sourceNode];
            v659 = [(FigCaptureMovieFileSinkPipeline *)&v655->super.super.super.super.isa initWithConfiguration:v605 videoSourceCaptureOutputsByConnectionID:objg audioSourceCaptureOutput:v967 audioSourceCinematicAudioCaptureOutput:newValueg smartCameraInferenceOutput:v954 detectedObjectBoxedMetadataOutputs:v652 objectDetectionSourceOutput:v637 metadataSourcePipelineOutputs:v656 graph:v1003 name:v657 inferenceScheduler:v606 captureDevicesByConnectionID:v658 audioSourceDelegate:*(v1009 + 832) fileCoordinatorStatusDelegate:*(v1009 + 832) recordingStatusDelegate:*(v1009 + 832) irisRequestDelegate:MultiCamClientCompositingCallback multiCamClientCompositingCallback:*&v1238[0] masterClock:v653 delayedCompressorCleanupEnabled:?];
            if (!v659)
            {
              captureSession_buildGraphWithConfiguration_cold_22();
              goto LABEL_855;
            }

            v660 = v659;
            [v659 setCheckIfFileAlreadyExistForMFO:{objc_msgSend(v947, "checkIfFileAlreadyExistForMFO")}];
            if ([objc_msgSend(objc_msgSend(v1020 "stillImageConnectionConfiguration")])
            {
              v661 = [(FigCaptureCameraSourcePipeline *)v1032 captureDevice];
              v1243[0] = *MEMORY[0x1E6960C88];
              v1021 = v1243[0];
              *&v1243[1] = *(MEMORY[0x1E6960C88] + 16);
              v662 = *&v1243[1];
              [v661 setZeroShutterLagEarliestAllowedPTS:v1243];
              v663 = [v942 timeMachineSinkNode];
              v1243[0] = v1021;
              *&v1243[1] = v662;
              [v663 setEarliestAllowedPTS:v1243];
            }

            v601 = v1045;
            v600 = v1005;
            if ([(FigCaptureMovieFileSinkPipelineConfiguration *)MovieFileSinkPipelineConfigurationFromParsedConfiguration trueVideoCaptureEnabled])
            {
              if ([-[FigCaptureCameraSourcePipeline captureDevice](v1032) position] == 1)
              {

                v671 = [(FigCaptureMovieFileSinkPipeline *)v660 ispProcessingSession:v664];
                *(v1009 + 872) = v671;
                if (v671)
                {
                  if (dword_1ED844050)
                  {
                    LODWORD(v1216) = 0;
                    LOBYTE(v1213[0]) = 0;
                    v672 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v673 = v1216;
                    if (os_log_type_enabled(v672, v1213[0]))
                    {
                      v674 = v673;
                    }

                    else
                    {
                      v674 = v673 & 0xFFFFFFFE;
                    }

                    if (v674)
                    {
                      v675 = *(v1009 + 104);
                      v676 = *(v1009 + 872);
                      LODWORD(v1241[0]) = 136315650;
                      *(v1241 + 4) = "captureSession_buildGraphWithConfiguration";
                      WORD6(v1241[0]) = 2114;
                      *(v1241 + 14) = v675;
                      WORD3(v1241[1]) = 2048;
                      *(&v1241[1] + 1) = v676;
                      LODWORD(p_isa) = 32;
                      v891 = v1241;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }
            }

            [(FigCaptureSessionPipelines *)v1045 addMovieFileSinkPipeline:v660, v891];

            v602 = v946 + 1;
          }

          while (v946 + 1 != v940);
          v686 = [(NSArray *)v931 countByEnumeratingWithState:&v1088 objects:v1087 count:16];
          v940 = v686;
        }

        while (v686);
      }

      v1075 = 0u;
      v1074 = 0u;
      v1073 = 0u;
      v1072 = 0u;
      v687 = [(FigCaptureSessionParsedConfiguration *)v600 audioFileSinkConnectionConfigurations];
      v688 = [(NSArray *)v687 countByEnumeratingWithState:&v1072 objects:v1071 count:16];
      if (v688)
      {
        v689 = v688;
        v690 = *v1073;
        while (2)
        {
          for (i12 = 0; i12 != v689; ++i12)
          {
            if (*v1073 != v690)
            {
              objc_enumerationMutation(v687);
            }

            v692 = *(*(&v1072 + 1) + 8 * i12);
            v693 = -[FigCaptureMicSourcePipeline nextOutputForMicSourcePosition:forAudioChannelLayoutTag:](-[FigCaptureSessionPipelines micSourcePipeline](v1045, "micSourcePipeline"), [v692 builtInMicrophonePosition], -65536);
            v694 = MEMORY[0x1E696AEC0];
            v695 = [v692 builtInMicrophonePosition];
            if (v695 > 2)
            {
              v696 = 0;
            }

            else
            {
              v696 = *(&off_1E79990B0 + v695);
            }

            v697 = -[FigCaptureAudioFileSinkPipeline initWithConfiguration:graph:name:sourceAudioOutput:recordingStatusDelegate:]([FigCaptureAudioFileSinkPipeline alloc], v692, v1008, [v694 stringWithFormat:@"%@ Microphone Audio File Sink Pipeline", v696], v693, *(v1009 + 832));
            if (!v697)
            {
              captureSession_buildGraphWithConfiguration_cold_23();
              goto LABEL_855;
            }

            [(FigCaptureSessionPipelines *)v1045 addAudioFileSinkPipeline:v697];
          }

          v689 = [(NSArray *)v687 countByEnumeratingWithState:&v1072 objects:v1071 count:16];
          if (v689)
          {
            continue;
          }

          break;
        }
      }

      v1070 = 0u;
      v1069 = 0u;
      v1068 = 0u;
      v1067 = 0u;
      v698 = [(FigCaptureSessionParsedConfiguration *)v1005 audioDataSinkConnectionConfigurations];
      v699 = [(NSArray *)v698 countByEnumeratingWithState:&v1067 objects:v1066 count:16];
      if (v699)
      {
        v700 = v699;
        v701 = *v1068;
        while (2)
        {
          for (i13 = 0; i13 != v700; ++i13)
          {
            if (*v1068 != v701)
            {
              objc_enumerationMutation(v698);
            }

            v703 = *(*(&v1067 + 1) + 8 * i13);
            if ([v703 audioCaptureMode] == 2 && objc_msgSend(-[FigCaptureMicSourcePipeline sourceNode](-[FigCaptureSessionPipelines micSourcePipeline](v1045, "micSourcePipeline")), "audioCaptureMode") == 2)
            {
              v704 = [(FigCaptureSessionPipelines *)v1045 micSourcePipeline];
              v705 = [v703 builtInMicrophonePosition];
              v706 = [v703 spatialAudioChannelLayoutTag];
              v707 = v704;
              v708 = v705;
            }

            else
            {
              v709 = [(FigCaptureSessionPipelines *)v1045 micSourcePipeline];
              v708 = [v703 builtInMicrophonePosition];
              v707 = v709;
              v706 = -65536;
            }

            v710 = [(FigCaptureMicSourcePipeline *)v707 nextOutputForMicSourcePosition:v708 forAudioChannelLayoutTag:v706];
            v711 = MEMORY[0x1E696AEC0];
            v712 = [v703 builtInMicrophonePosition];
            if (v712 > 2)
            {
              v713 = 0;
            }

            else
            {
              v713 = *(&off_1E79990B0 + v712);
            }

            v714 = [v711 stringWithFormat:@"%@ Microphone Audio Data Sink Pipeline", v713];
            v715 = [FigCaptureAudioDataSinkPipeline alloc];
            v716 = *(v1009 + 832);
            v717 = *(v1009 + 36);
            v1243[0] = *(v1009 + 20);
            v1243[1] = v717;
            v718 = [(FigCaptureAudioDataSinkPipeline *)v715 initWithConfiguration:v703 graph:v1008 name:v714 sourceAudioOutput:v710 clientAuditToken:v1243 renderDelegate:v716];
            if (!v718)
            {
              captureSession_buildGraphWithConfiguration_cold_24();
              goto LABEL_855;
            }

            [(FigCaptureSessionPipelines *)v1045 addAudioDataSinkPipeline:v718];
          }

          v700 = [(NSArray *)v698 countByEnumeratingWithState:&v1067 objects:v1066 count:16];
          if (v700)
          {
            continue;
          }

          break;
        }
      }

      v1065 = 0u;
      v1064 = 0u;
      v1063 = 0u;
      v1062 = 0u;
      v1043 = [(FigCaptureSessionParsedConfiguration *)v1005 pointCloudDataSinkConnectionConfigurations];
      v719 = [(NSArray *)v1043 countByEnumeratingWithState:&v1062 objects:v1061 count:16];
      if (v719)
      {
        v720 = v719;
        v721 = *v1063;
        while (2)
        {
          for (i14 = 0; i14 != v720; ++i14)
          {
            if (*v1063 != v721)
            {
              objc_enumerationMutation(v1043);
            }

            v723 = *(*(&v1062 + 1) + 8 * i14);
            v724 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v1045, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v723 "sourceConfiguration")]);
            v725 = MEMORY[0x1E696AEC0];
            v888 = [v724 name];
            v726 = [v725 stringWithFormat:@"%@ Point Cloud Data Sink Pipeline"];
            v727 = [(FigCaptureCameraSourcePipeline *)v724 nextPointCloudOutput];
            v728 = [FigCapturePointCloudDataSinkPipeline alloc];
            v729 = *(v1009 + 832);
            v730 = *(v1009 + 36);
            v1243[0] = *(v1009 + 20);
            v1243[1] = v730;
            v731 = [(FigCapturePointCloudDataSinkPipeline *)v728 initWithConfiguration:v723 sourceOutput:v727 graph:v1008 name:v726 clientAuditToken:v1243 delegate:v729];
            if (!v731)
            {
              captureSession_buildGraphWithConfiguration_cold_25();
              goto LABEL_855;
            }

            [(FigCaptureSessionPipelines *)v1045 addPointCloudDataSinkPipeline:v731];
          }

          v720 = [(NSArray *)v1043 countByEnumeratingWithState:&v1062 objects:v1061 count:16];
          if (v720)
          {
            continue;
          }

          break;
        }
      }

      v1059 = 0u;
      v1060 = 0u;
      v1057 = 0u;
      v1058 = 0u;
      v732 = [(FigCaptureSessionParsedConfiguration *)v1005 cameraCalibrationDataSinkConnectionConfigurations];
      v733 = [(NSArray *)v732 countByEnumeratingWithState:&v1057 objects:v1056 count:16];
      if (v733)
      {
        v734 = v733;
        v735 = *v1058;
        do
        {
          v736 = 0;
          do
          {
            if (*v1058 != v735)
            {
              objc_enumerationMutation(v732);
            }

            v737 = *(*(&v1057 + 1) + 8 * v736);
            v738 = [objc_msgSend(v737 "sourceConfiguration")];
            v739 = [v737 underlyingDeviceType];
            v740 = [(FigCaptureSessionPipelines *)v1045 cameraSourcePipelineWithSourceID:v738];
            v741 = [*v1007 objectForKeyedSubscript:{objc_msgSend(v740, "sourceID")}];
            v742 = v741;
            if (v741)
            {
              v741 = *(v741 + 24);
              v743 = *(v742 + 32);
            }

            else
            {
              v743 = 0;
            }

            v744 = FigCaptureBuildSinkPipelineName(v741, v743, v739, @"Calibration Data Sink Pipeline");
            [(FigCaptureCameraSourcePipeline *)v740 nextVideoCaptureOutputForSourceDeviceType:v739, v745, v746, v747, v748, v749, v750, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v912, v913];
            v752 = v751;
            if (v742)
            {
              v753 = *(v742 + 16);
            }

            else
            {
              v753 = 0;
            }

            v754 = [v753 cameraInfoByPortType];
            v755 = [FigCaptureCameraCalibrationDataSinkPipeline alloc];
            v756 = *(v1009 + 832);
            v757 = *(v1009 + 36);
            v1243[0] = *(v1009 + 20);
            v1243[1] = v757;
            v758 = [(FigCaptureCameraCalibrationDataSinkPipeline *)v755 initWithConfiguration:v737 sourceOutput:v752 graph:v1008 name:v744 cameraInfoByPortType:v754 clientAuditToken:v1243 delegate:v756];
            if (!v758)
            {
              FigDebugAssert3();
              goto LABEL_838;
            }

            [(FigCaptureSessionPipelines *)v1045 addCameraCalibrationDataSinkPipeline:v758];
            ++v736;
          }

          while (v734 != v736);
          v759 = [(NSArray *)v732 countByEnumeratingWithState:&v1057 objects:v1056 count:16];
          v734 = v759;
        }

        while (v759);
      }

      v1054 = 0u;
      v1055 = 0u;
      v1052 = 0u;
      v1053 = 0u;
      v760 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedMetadataSinkConfigurations];
      v761 = [(NSArray *)v760 countByEnumeratingWithState:&v1052 objects:v1051 count:16];
      if (v761)
      {
        v762 = v761;
        v763 = *v1053;
        do
        {
          for (i15 = 0; i15 != v762; ++i15)
          {
            if (*v1053 != v763)
            {
              objc_enumerationMutation(v760);
            }

            v765 = *(*(&v1052 + 1) + 8 * i15);
            if (captureSession_shouldUseSceneClassifierToGateMetadataDetection(v1006, [v765 sceneClassifierConnectionConfiguration], objc_msgSend(v765, "metadataObjectConnectionConfiguration")))
            {
              v766 = [objc_msgSend(objc_msgSend(v765 "metadataObjectConnectionConfiguration")];
              v767 = [objc_msgSend(v765 "metadataObjectConnectionConfiguration")];
              v768 = -[FigCaptureSessionPipelines metadataSinkPipelineWithSinkID:](v1045, "metadataSinkPipelineWithSinkID:", [objc_msgSend(objc_msgSend(v765 "metadataObjectConnectionConfiguration")]);
              v769 = [(FigCaptureSessionPipelines *)v1045 previewSinkPipelineWithSourceID:v766 sourceDeviceType:v767];
              v770 = [(FigCaptureSessionPipelines *)v1045 movieFileSinkPipelineWithSourceID:v766 sourceDeviceType:v767];
              if ([(FigCaptureMetadataSinkPipeline *)v768 mrcSceneObserver])
              {
                v771 = [(FigCaptureMetadataSinkPipeline *)v768 mrcSceneObserver];
                [(FigCaptureMovieFileSinkPipeline *)v770 setMrcSceneObserver:v771];
                [v769 setMrcSceneObserver:-[FigCaptureMetadataSinkPipeline mrcSceneObserver](v768)];
              }
            }
          }

          v762 = [(NSArray *)v760 countByEnumeratingWithState:&v1052 objects:v1051 count:16];
        }

        while (v762);
      }

      v1049 = 0u;
      v1050 = 0u;
      v1047 = 0u;
      v1048 = 0u;
      v772 = [(FigCaptureSessionParsedConfiguration *)v1005 parsedPreviewSinkConfigurations];
      v773 = [(NSArray *)v772 countByEnumeratingWithState:&v1047 objects:v1046 count:16];
      if (v773)
      {
        v774 = v773;
        v775 = *v1048;
        v1044 = v772;
        do
        {
          for (i16 = 0; i16 != v774; ++i16)
          {
            if (*v1048 != v775)
            {
              objc_enumerationMutation(v772);
            }

            v777 = *(*(&v1047 + 1) + 8 * i16);
            if ([objc_msgSend(objc_msgSend(v777 "videoPreviewSinkConnectionConfiguration")])
            {
              v778 = [objc_msgSend(v777 "cameraConfiguration")];
              v779 = [objc_msgSend(v777 "videoPreviewSinkConnectionConfiguration")];
              -[FigCaptureMovieFileSinkPipeline setSemanticStyleSceneObserver:](-[FigCaptureSessionPipelines movieFileSinkPipelineWithSourceID:sourceDeviceType:](v1045, "movieFileSinkPipelineWithSourceID:sourceDeviceType:", v778, v779), [-[FigCaptureSessionPipelines previewSinkPipelineWithSourceID:sourceDeviceType:](v1045 previewSinkPipelineWithSourceID:v778 sourceDeviceType:{v779), "semanticStyleSceneObserver"}]);
            }

            else if ([v947 smartStyleRenderingEnabled])
            {
              v780 = [objc_msgSend(v777 "cameraConfiguration")];
              v781 = [objc_msgSend(v777 "videoPreviewSinkConnectionConfiguration")];
              v782 = [(FigCaptureSessionPipelines *)v1045 cameraSourcePipelineWithSourceID:v780];
              v783 = [(FigCaptureSessionPipelines *)v1045 movieFileSinkPipelineWithSourceID:v780 sourceDeviceType:v781];
              v784 = [(FigCaptureSessionPipelines *)v1045 cinematographyPipelineWithSourceID:v780];
              v785 = [(FigCaptureSessionPipelines *)v1045 previewSinkPipelineWithSourceID:v780 sourceDeviceType:v781];
              v786 = [(FigCaptureSessionPipelines *)v1045 metadataSinkPipelineWithSourceID:v780 sourceDeviceType:v781];
              if (v784)
              {
                v787 = [(FigCaptureCinematographyPipeline *)v784 semanticStyleSceneObserver];
              }

              else
              {
                v787 = [(FigCaptureCameraSourcePipeline *)v782 semanticStyleSceneObserver];
              }

              [v785 setSemanticStyleSceneObserver:v787];
              v788 = [(FigCaptureCameraSourcePipeline *)v782 semanticStyleSceneObserver];
              [(FigCaptureMovieFileSinkPipeline *)v783 setSemanticStyleSceneObserver:v788];
              v789 = [(FigCaptureCameraSourcePipeline *)v782 semanticStyleSceneObserver];
              [(FigCaptureMetadataSinkPipeline *)v786 setSemanticStyleSceneObserver:v789];
              v772 = v1044;
            }
          }

          v774 = [(NSArray *)v772 countByEnumeratingWithState:&v1047 objects:v1046 count:16];
        }

        while (v774);
      }

      v790 = v1006;
      captureSession_purgeFileSinkCache();
      captureSession_updateGraphConnectionEnabledState(v1006, v1005);
      captureSession_buildGraphDidBecomeLiveObserver(v1006, [(FigCaptureSessionParsedConfiguration *)v1005 isMultiCamSession]);
      if ([(BWGraph *)v1008 deferredNodePrepareEnabled])
      {
        if ([(NSArray *)[(FigCaptureSessionParsedConfiguration *)v1005 parsedCameraSourceConfigurations] count])
        {
          v856 = [-[NSArray firstObject](-[FigCaptureSessionParsedConfiguration parsedCameraSourceConfigurations](v1005 "parsedCameraSourceConfigurations")];
          v857 = [v856 requiredFormat];
          v858 = FigCaptureSourceGetIntAttribute([v856 source], 0x1F21A0530, &v1200);
          if (v1200)
          {
            captureSession_buildGraphWithConfiguration_cold_26();
            goto LABEL_962;
          }

          v791 = (v858 > 2) & [v857 isPhotoFormat];
          v790 = v1006;
        }

        else
        {
          v791 = 0;
        }

        [(BWGraph *)v1008 setResumesConnectionsAsNodesArePrepared:v791 | v916];
      }

      captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications(v790, v947);
      goto LABEL_962;
    }

    v521 = v520;
    v1040 = *v1099;
LABEL_612:
    v522 = 0;
    while (1)
    {
      if (*v1099 != v1040)
      {
        objc_enumerationMutation(v1030);
      }

      v523 = *(*(&v1098 + 1) + 8 * v522);
      v524 = [v523 depthDataConnectionConfiguration];
      v525 = [v523 videoDataConnectionConfiguration];
      v526 = [v523 metadataObjectConnectionConfiguration];
      if (v525)
      {
        v527 = v525;
      }

      else
      {
        v527 = v526;
      }

      if (v524)
      {
        v528 = v524;
      }

      else
      {
        v528 = v527;
      }

      v529 = [objc_msgSend(v528 "sourceConfiguration")];
      v530 = [v528 underlyingDeviceType];
      v531 = [(FigCaptureSessionPipelines *)v467 previewSinkPipelineWithSourceID:v529 sourceDeviceType:v530];
      v532 = v467;
      v533 = [(FigCaptureSessionPipelines *)v467 videoDataSinkPipelineForMetadataWithSourceID:v529 sourceDeviceType:v530];
      v534 = [(FigCaptureSessionPipelines *)v532 cameraSourcePipelineWithSourceID:v529];
      v535 = [(FigCaptureSessionPipelines *)v532 lidarDepthPipelineWithRGBCameraSourceID:v529];
      v536 = [v535 depthDataSinkOutput];
      if ([(FigCaptureVideoDataSinkPipeline *)v533 faceTrackingVideoCaptureOutput])
      {
        v537 = [(FigCaptureVideoDataSinkPipeline *)v533 faceTrackingVideoCaptureOutput];
      }

      else
      {
        if (!v536)
        {
          v467 = v1045;
          if ([v531 depthDataSinkOutput])
          {
            v547 = [v531 depthDataSinkOutput];
          }

          else
          {
            v548 = [v528 underlyingDeviceType];
            [(FigCaptureCameraSourcePipeline *)v534 nextVideoCaptureOutputForSourceDeviceType:v548, v549, v550, v551, v552, v553, v554, v888, p_isa, v894, v896, v898, v899, v900, v901, v902, v903, v904, v905, v906, v907, v908, *(&v908 + 1), v909, v910, v912, v913];
          }

          v538 = v547;
          goto LABEL_626;
        }

        v537 = [v535 depthDataSinkOutput];
      }

      v538 = v537;
      v467 = v1045;
LABEL_626:
      v539 = v536 != 0;
      v540 = [(FigCaptureCameraSourcePipeline *)v534 captureDevice];
      v541 = [(FigCaptureCameraSourcePipeline *)v534 hardwareDepthFilteringEnabled];
      DepthDataPipelineConfiguration = captureSession_createDepthDataPipelineConfiguration(v1006, v523, v540, v541, v539);
      v543 = [*v1007 objectForKeyedSubscript:{objc_msgSend(v534, "sourceID")}];
      if (v543)
      {
        v544 = *(v543 + 24);
        v545 = *(v543 + 32);
      }

      else
      {
        v544 = 0;
        v545 = 0;
      }

      v546 = -[FigCaptureDepthDataPipeline initWithConfiguration:sourceOutput:graph:name:delegate:]([FigCaptureDepthDataPipeline alloc], "initWithConfiguration:sourceOutput:graph:name:delegate:", DepthDataPipelineConfiguration, v538, v1008, FigCaptureBuildSinkPipelineName(v544, v545, [v528 underlyingDeviceType], @"Depth Data Sink Pipeline"), *(v1009 + 832));
      if (!v546)
      {
        captureSession_buildGraphWithConfiguration_cold_18();
        goto LABEL_855;
      }

      [(FigCaptureSessionPipelines *)v467 addDepthDataSinkPipeline:v546];
      if (v521 == ++v522)
      {
        v555 = [(NSArray *)v1030 countByEnumeratingWithState:&v1098 objects:v1097 count:16];
        v521 = v555;
        if (!v555)
        {
          goto LABEL_637;
        }

        goto LABEL_612;
      }
    }
  }

  v468 = v466;
  v469 = *v1114;
LABEL_567:
  v470 = 0;
  while (1)
  {
    if (*v1114 != v469)
    {
      objc_enumerationMutation(v465);
    }

    v471 = *(*(&v1113 + 1) + 8 * v470);
    v472 = [v471 visionDataConnectionConfiguration];
    v473 = [v471 videoDataConnectionConfiguration];
    v474 = -[FigCaptureSessionPipelines cameraSourcePipelineWithSourceID:](v467, "cameraSourcePipelineWithSourceID:", [objc_msgSend(v472 "sourceConfiguration")]);
    v475 = [*v1007 objectForKeyedSubscript:{objc_msgSend(v474, "sourceID")}];
    if (v475)
    {
      v476 = *(v475 + 24);
      v477 = *(v475 + 32);
    }

    else
    {
      v476 = 0;
      v477 = 0;
    }

    v478 = FigCaptureBuildSinkPipelineName(v476, v477, [v472 underlyingDeviceType], @"Vision Data Sink Pipeline");
    v479 = -[FigCaptureCameraSourcePipeline visionDataOutputForSourceDeviceType:](v474, [v472 underlyingDeviceType]);
    v480 = [FigCaptureVisionDataSinkPipeline alloc];
    v481 = [(FigCaptureCameraSourcePipeline *)v474 captureDevice];
    v482 = *(v1009 + 832);
    v483 = *(v1009 + 36);
    v1243[0] = *(v1009 + 20);
    v1243[1] = v483;
    v484 = [(FigCaptureVisionDataSinkPipeline *)v480 initWithVisionDataConnectionConfiguration:v472 videoDataConnectionConfiguration:v473 graph:v1008 name:v478 visionCaptureOutput:v479 captureDevice:v481 clientAuditToken:v1243 delegate:v482];
    if (!v484)
    {
      break;
    }

    v467 = v1045;
    [(FigCaptureSessionPipelines *)v1045 addVisionDataSinkPipeline:v484];
    if (v468 == ++v470)
    {
      v485 = [(NSArray *)v465 countByEnumeratingWithState:&v1113 objects:v1112 count:16];
      v468 = v485;
      if (!v485)
      {
        goto LABEL_577;
      }

      goto LABEL_567;
    }
  }

  captureSession_buildGraphWithConfiguration_cold_17();
LABEL_855:
  v792 = v1243[0];
LABEL_856:
  HIDWORD(v907) = 1;
  if (v792)
  {
LABEL_857:
    captureSession_buildGraphWithConfiguration_cold_29();
    goto LABEL_966;
  }

LABEL_963:
  if (HIDWORD(v907))
  {
    *&v1243[0] = 0;
    [*(v1009 + 752) commitConfigurationWithID:objc_msgSend(v947 error:{"configurationID"), v1243}];
    if (*&v1243[0])
    {
      v1200 = [*&v1243[0] code];
    }
  }

LABEL_966:
  result = v1200;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    return v1200;
  }

  return result;
}

void captureSession_prewarmMemoryPool(uint64_t a1, void *a2)
{
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  v4 = CFAbsoluteTimeGetCurrent() - *&qword_1ED844938;
  v5 = *&dword_1ED844928;
  if (*&dword_1ED844928 <= 0.0)
  {
    dword_1ED844928 = 1077936128;
    v5 = 3.0;
  }

  if (v4 >= v5)
  {
    if (byte_1ED844930 == 1)
    {

      getpid();
      qword_1ED844940 = FigOSTransactionCreate();
      qword_1ED844938 = CFAbsoluteTimeGetCurrent();
      cs_initMemoryPoolSize(a1, a2);
      captureSession_primeMemoryPoolPrewarmTimer();
    }

    else if (dword_1ED844050)
    {
LABEL_9:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (dword_1ED844050)
  {
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return [v55 countByEnumeratingWithState:v56 - 192 objects:&a55 count:16];
}

__n128 OUTLINED_FUNCTION_24_7@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *(v2 - 144);
  *v3 = result;
  v3[1].n128_u64[0] = *(v2 - 128);
  return result;
}

BOOL OUTLINED_FUNCTION_24_8(NSObject *a1)
{
  v3 = *(v1 - 157);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return [v0 objectForKeyedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_24_11(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 downScalePixelBuffer:a3 toPixelBuffer:a4 inputROI:a5 gdcParams:v5 applyGDC:{v7, v8, v9, v10}];
}

BOOL OUTLINED_FUNCTION_24_13(NSObject *a1)
{
  v3 = *(v1 - 77);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_24_15(NSObject *a1)
{
  v3 = *(v1 - 53);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_17()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1)
{

  return [v2 connectOutput:v3 toInput:a1 pipelineStage:v1];
}

uint64_t OUTLINED_FUNCTION_80_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_113_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __n128 a39)
{
  *(v39 - 192) = a37;
  *(v39 - 176) = a38;
  result = a39;
  *(v39 - 160) = a39;
  return result;
}

uint64_t FigVideoCaptureSourcesActivateAndCreateDevices(CFArrayRef theArray, CFArrayRef a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7, char a8, void *a9)
{
  v14 = theArray;
  updated = 0;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
  }

  v168 = theArray;
  theArraya = v14;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v168];
  v17 = [a6 objectForKeyedSubscript:?];
  FigSimpleMutexLock();
  if (v168 == Count)
  {
    if ([a3 isEqualToString:0x1F2185490])
    {
      v213 = 0u;
      v212 = 0u;
      v211 = 0u;
      v210 = 0u;
      v18 = [a6 countByEnumeratingWithState:&v210 objects:v209 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v211;
LABEL_10:
        v21 = 0;
        while (1)
        {
          if (*v211 != v20)
          {
            objc_enumerationMutation(a6);
          }

          if ([objc_msgSend(a6 objectForKeyedSubscript:{*(*(&v210 + 1) + 8 * v21)), "invalidated"}])
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [a6 countByEnumeratingWithState:&v210 objects:v209 count:16];
            if (!v19)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }
        }

        v154 = 0;
        v157 = 0;
        obj = 0;
        v61 = 0;
        v62 = -12785;
        goto LABEL_86;
      }
    }

LABEL_16:
    v161 = v16;
    v154 = [qword_1ED8451D0 copy];
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v22 = qword_1ED8451D0;
    v23 = [qword_1ED8451D0 countByEnumeratingWithState:&v205 objects:v204 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v206;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v206 != v25)
          {
            objc_enumerationMutation(v22);
          }

          captureSource_deactivateInternal(*(*(&v205 + 1) + 8 * i));
        }

        v24 = [v22 countByEnumeratingWithState:&v205 objects:v204 count:16];
      }

      while (v24);
    }

    v186 = a8;
    [qword_1ED8451D0 removeAllObjects];
    v27 = v168;
    v166 = a6;
    v167 = v17;
    v180 = a2;
    if (v168 < 1)
    {
      v162 = 0;
      v156 = 0;
      v52 = 0;
      obj = 0;
      v157 = 0;
      v158 = 0;
      v51 = 0;
      v16 = v161;
      goto LABEL_65;
    }

    v169 = a7;
    v28 = 0;
    v156 = 0;
    v185 = 0;
    v29 = 0;
    v188 = 0;
    v157 = 0;
    obj = 0;
    v30 = 0;
    v31 = *off_1E798A018;
    v175 = *off_1E798A0E0;
    v171 = *off_1E798A0C0;
    v173 = *off_1E798A0F8;
    do
    {
      v32 = 0;
      v33 = v27 - v30;
      while (1)
      {
        CFArrayGetValueAtIndex(theArraya, v30 + v32);
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v30 + v32);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v36 = *(DerivedStorage + 104);
        if (![objc_msgSend(v36 objectForKeyedSubscript:{@"CaptureDeviceID", "isEqualToString:", 0x1F21702D0}])
        {
          v28 += v32;
          goto LABEL_58;
        }

        if ((([objc_msgSend(v167 "supportedProperties")] == 0) & ~v29) == 0)
        {
          break;
        }

        v29 = 0;
        ++v32;
        a2 = v180;
        if (v33 == v32)
        {
          v158 = 0;
          v51 = 0;
          v162 = v28 + v32 - 1 > 0;
          v16 = v161;
          v17 = v167;
          goto LABEL_63;
        }
      }

      FigSimpleMutexLock();
      if (*(DerivedStorage + 12))
      {
        updated = -12785;
        goto LABEL_56;
      }

      v37 = [objc_msgSend(v36 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      v38 = [objc_msgSend(v36 objectForKeyedSubscript:{@"Position", "intValue"}];
      if (*(DerivedStorage + 112))
      {
        if ((v37 == 12 || v37 == 6) && ([objc_msgSend(ValueAtIndex objectForKeyedSubscript:{0x1F21A0950), "BOOLValue"}] & 1) == 0)
        {
          if (v37 == 6)
          {
            v44 = v175;
          }

          else
          {
            v44 = v173;
          }

          v43 = v157;
          if (!v157)
          {
            v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v157 = v43;
          v40 = v44;
        }

        else
        {
          v39 = obj;
          if (!obj)
          {
            v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v40 = [*(DerivedStorage + 112) allKeys];
          obj = v39;
LABEL_51:
          v43 = v39;
        }
      }

      else
      {
        v41 = v38;
        v42 = v157;
        if (!v157)
        {
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v157 = v42;
        if (v37 != 13)
        {
          v45 = v41;
          v39 = v42;
          v40 = BWCaptureDevicePositionAndDeviceTypeToPortType(v45, v37);
          goto LABEL_51;
        }

        v43 = v42;
        v40 = v171;
      }

      [v43 addObject:v40];
      if ([objc_msgSend(ValueAtIndex objectForKeyedSubscript:{0x1F21A0930), "BOOLValue"}])
      {
        v156 |= [objc_msgSend(v36 objectForKeyedSubscript:{0x1F219F9D0), "BOOLValue"}];
      }

      if ([objc_msgSend(ValueAtIndex objectForKeyedSubscript:{@"StructuredLightAssistedAutoFocusEnabled", "BOOLValue"}])
      {
        v185 |= [objc_msgSend(v36 objectForKeyedSubscript:{0x1F219F9F0), "BOOLValue"}];
      }

LABEL_56:
      FigSimpleMutexUnlock();
      if (updated)
      {
        FigVideoCaptureSourcesActivateAndCreateDevices_cold_1();
        v61 = 0;
        v16 = v161;
        goto LABEL_223;
      }

      v28 += v32 + 1;
      v188 = 1;
      v29 = 1;
LABEL_58:
      v46 = ~v30;
      v30 += v32 + 1;
      v27 = v168;
      a2 = v180;
    }

    while (v46 + v168 != v32);
    v162 = v28 > 1;
    v17 = v167;
    if (v29)
    {
      v47 = v157;
      if (v185)
      {
        v48 = *off_1E798A0E8;
        v49 = v169;
        if ([v157 containsObject:*off_1E798A0E8])
        {
          v158 = 0;
          v16 = v161;
          v50 = obj;
          v47 = v157;
          a6 = v166;
          goto LABEL_253;
        }

        v203 = 0u;
        v201 = 0u;
        v202 = 0u;
        v200 = 0u;
        v142 = [obj countByEnumeratingWithState:&v200 objects:v199 count:16];
        a6 = v166;
        if (v142)
        {
          v143 = v142;
          v144 = *v201;
          while (2)
          {
            for (j = 0; j != v143; ++j)
            {
              if (*v201 != v144)
              {
                objc_enumerationMutation(obj);
              }

              if ([*(*(&v200 + 1) + 8 * j) containsObject:v48])
              {
                v158 = 0;
                v16 = v161;
                v50 = obj;
                v47 = v157;
                goto LABEL_253;
              }
            }

            v143 = [obj countByEnumeratingWithState:&v200 objects:v199 count:16];
            if (v143)
            {
              continue;
            }

            break;
          }
        }

        v16 = v161;
        v146 = v157;
        v52 = v188;
        if (!v157)
        {
          v146 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v147 = v146;
        [v146 addObject:v48];
        v47 = v147;
        v158 = 1;
        v50 = obj;
      }

      else
      {
        v158 = 0;
        v16 = v161;
        v50 = obj;
        a6 = v166;
        v49 = v169;
LABEL_253:
        v52 = v188;
      }

      v157 = v47;
      v51 = [BWMultiCamConfiguration configurationWithUnsynchronizedActiveStreamsPortTypes:v47 synchronizedActiveStreamsGroupsPortTypes:v50 stereoVideoCaptureEnabled:v49];
    }

    else
    {
      v158 = 0;
      v51 = 0;
      v16 = v161;
LABEL_63:
      a6 = v166;
      v52 = v188;
    }

LABEL_65:
    if (_MergedGlobals_13 == 1 && v17 != 0)
    {
      if (v186)
      {
        v52 = 1;
      }

      else
      {
        v54 = [(BWMultiCamConfiguration *)v51 isEqual:[BWMultiCamConfiguration configurationWithCurrentStateFromCaptureDevice:v17]];
        v52 = !v54;
        if (v54 & v156)
        {
          goto LABEL_71;
        }
      }

      updated = cs_resetTimeOfFlightAutoFocus(v17);
      if (updated)
      {
        FigVideoCaptureSourcesActivateAndCreateDevices_cold_2();
        goto LABEL_258;
      }
    }

LABEL_71:
    v55 = sStructuredLightAFEnabled != 1 || v17 == 0;
    v152 = v51;
    if (v55 || (v56 = [(BWMultiCamConfiguration *)v51 isEqual:[BWMultiCamConfiguration configurationWithCurrentStateFromCaptureDevice:v17]], v52 = !v56, (v158 & v56 & 1) != 0) || (v57 = v56, FigSimpleMutexCheckIsLockedOnThisThread(), sStructuredLightAFEnabled = 0, sStructuredLightAFSuspended = 1, cs_updateStructuredLightAFEnabledStatus(), !dword_1ED844030))
    {
      if ((v52 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      LODWORD(v221[0]) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v59 = v221[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        LODWORD(v226[0]) = 136315650;
        *(v226 + 4) = "cs_resetStructuredLightAutoFocus";
        WORD6(v226[0]) = 1024;
        *(v226 + 14) = sStructuredLightAFSuspended;
        WORD1(v226[1]) = 1024;
        DWORD1(v226[1]) = sStructuredLightAFEnabled;
        LODWORD(v149) = 24;
        v148 = v226;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v16 = v161;
      v17 = v167;
      if (v57)
      {
LABEL_88:
        v61 = [(BWMultiCamConfiguration *)v51 copyActiveSynchronizedStreamsGroupsForDevice:v17 errorOut:&updated, v148, v149];
        if (updated)
        {
          FigVideoCaptureSourcesActivateAndCreateDevices_cold_3();
        }

        else
        {
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v63 = [v17 synchronizedStreamsGroups];
          v64 = [v63 countByEnumeratingWithState:&v195 objects:v194 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = *v196;
            do
            {
              for (k = 0; k != v65; ++k)
              {
                if (*v196 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v195 + 1) + 8 * k);
                if (([v61 containsObject:v68] & 1) == 0)
                {
                  [v68 setActiveStreams:0];
                }
              }

              v65 = [v63 countByEnumeratingWithState:&v195 objects:v194 count:16];
            }

            while (v65);
            v153 = 0;
            v16 = v161;
          }

          else
          {
            v153 = 0;
          }

LABEL_100:
          if (v168 >= 1)
          {
            v69 = 0;
            v159 = *off_1E798A0F8;
            v160 = *off_1E798A0E0;
            v184 = *off_1E798A0C8;
            v179 = v61;
            do
            {
              v70 = CFArrayGetValueAtIndex(theArraya, v69);
              v71 = [*(CMBaseObjectGetDerivedStorage() + 104) objectForKeyedSubscript:@"CaptureDeviceID"];
              v177 = [a6 objectForKeyedSubscript:v71];
              v72 = [v71 isEqualToString:0x1F21702D0];
              v178 = v69;
              v73 = CFArrayGetValueAtIndex(a2, v69);
              v74 = CMBaseObjectGetDerivedStorage();
              FigSimpleMutexCheckIsLockedOnThisThread();
              FigSimpleMutexLock();
              if (*(v74 + 12))
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_5();
                v117 = 0;
                v100 = -12785;
                goto LABEL_195;
              }

              if (*(v74 + 8) != 1)
              {
                v117 = 0;
                v100 = -12780;
                goto LABEL_195;
              }

              captureSource_turnOffAndTeardownFigFlashlight(v70);
              v233 = 0;
              v75 = CMBaseObjectGetDerivedStorage();
              v76 = *(v75 + 104);
              v77 = *(v75 + 32);
              v231 = *(v75 + 16);
              v232 = v77;
              v172 = v76;
              v78 = [objc_msgSend(v76 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
              v79 = [v73 objectForKeyedSubscript:@"CaptureDeviceClientPriority"];
              v174 = v72;
              if (v79)
              {
                v176 = [v79 intValue];
              }

              else
              {
                v176 = 1;
              }

              v80 = [objc_msgSend(v73 objectForKeyedSubscript:{0x1F21A0950, v148), "BOOLValue"}];
              v182 = v73;
              v183 = v70;
              v187 = v74;
              v170 = [objc_msgSend(v73 objectForKeyedSubscript:{0x1F21A09B0), "BOOLValue"}];
              if (*(v75 + 112))
              {
                v82 = v78 != 6 && v78 != 12;
                if ((v82 | v80))
                {
                  v83 = [MEMORY[0x1E695DF70] array];
                  *type = 0u;
                  v228 = 0u;
                  v229 = 0u;
                  v230 = 0u;
                  v84 = [*(v75 + 112) allKeys];
                  v85 = [v84 countByEnumeratingWithState:type objects:v226 count:16];
                  if (v85)
                  {
                    v86 = *v228;
                    while (2)
                    {
                      for (m = 0; m != v85; m = m + 1)
                      {
                        if (*v228 != v86)
                        {
                          objc_enumerationMutation(v84);
                        }

                        [*(v75 + 112) objectForKeyedSubscript:*(*&type[8] + 8 * m)];
                        v88 = CMBaseObjectGetDerivedStorage();
                        v233 = cs_addObjectToStreamsAttributes(v88, v83);
                        if (v233)
                        {
                          FigVideoCaptureSourcesActivateAndCreateDevices_cold_7();
                          v16 = v161;
                          a6 = v166;
                          v61 = v179;
                          goto LABEL_170;
                        }
                      }

                      v85 = [v84 countByEnumeratingWithState:type objects:v226 count:16];
                      if (v85)
                      {
                        continue;
                      }

                      break;
                    }

                    v16 = v161;
                    v70 = v183;
                  }

                  goto LABEL_130;
                }

                if (v78 == 6)
                {
                  v89 = v160;
                }

                else
                {
                  v89 = v159;
                }

                v85 = [MEMORY[0x1E695DF70] array];
                [*(v75 + 112) objectForKeyedSubscript:v89];
                v90 = CMBaseObjectGetDerivedStorage();
                v233 = cs_addObjectToStreamsAttributes(v90, v85);
                if (v233)
                {
                  FigVideoCaptureSourcesActivateAndCreateDevices_cold_6();
                  goto LABEL_169;
                }
              }

              else
              {
                v85 = 0;
              }

              v83 = 0;
LABEL_130:
              if (*(v75 + 120))
              {
                v85 = [MEMORY[0x1E695DF70] array];
                v222 = 0u;
                v223 = 0u;
                v224 = 0u;
                v225 = 0u;
                v91 = [*(v75 + 120) allKeys];
                v92 = [v91 countByEnumeratingWithState:&v222 objects:v221 count:16];
                if (v92)
                {
                  v93 = v92;
                  v94 = *v223;
                  while (2)
                  {
                    for (n = 0; n != v93; ++n)
                    {
                      if (*v223 != v94)
                      {
                        objc_enumerationMutation(v91);
                      }

                      v96 = *(*(&v222 + 1) + 8 * n);
                      if (v78 != 13 || ([*(*(&v222 + 1) + 8 * n) isEqualToString:v184] & 1) == 0)
                      {
                        [*(v75 + 120) objectForKeyedSubscript:v96];
                        v97 = CMBaseObjectGetDerivedStorage();
                        v233 = cs_addObjectToStreamsAttributes(v97, v85);
                        if (v233)
                        {
                          FigVideoCaptureSourcesActivateAndCreateDevices_cold_8();
                          v16 = v161;
                          a6 = v166;
                          v61 = v179;
                          v74 = v187;
                          goto LABEL_170;
                        }
                      }
                    }

                    v93 = [v91 countByEnumeratingWithState:&v222 objects:v221 count:16];
                    if (v93)
                    {
                      continue;
                    }

                    break;
                  }

                  v16 = v161;
                  v70 = v183;
                }

                v74 = v187;
              }

              FigSimpleMutexCheckIsLockedOnThisThread();
              FigSimpleMutexCheckIsLockedOnThisThread();
              if (*(v75 + 80))
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_9();
              }

              v98 = [BWFigVideoCaptureDevice alloc];
              v234[0] = v231;
              v234[1] = v232;
              LODWORD(v151) = v176;
              v99 = [(BWFigVideoCaptureDevice *)v98 initWithCaptureDevice:v177 attributes:v172 synchronizedStreamsAttributes:v83 unsynchronizedStreamsAttributes:v85 multiCamEnabled:v174 & v162 midFrameSynchronizationEnabled:v170 applicationID:a3 clientAuditToken:v234 tccIdentity:a4 mediaEnvironment:a5 deviceClientPriority:v151 error:&v233];
              *(v75 + 80) = v99;
              v100 = v233;
              if (v233)
              {
                v61 = v179;
LABEL_204:
                a6 = v166;
LABEL_205:
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_11();
                v117 = 0;
                goto LABEL_195;
              }

              v61 = v179;
              if (!v99)
              {
                v100 = -12786;
                goto LABEL_204;
              }

              [*(v75 + 80) setUltraHighResolutionZeroShutterLagSupportEnabled:{objc_msgSend(objc_msgSend(v182, "objectForKeyedSubscript:", 0x1F21A0990), "BOOLValue")}];
              [*(v75 + 144) setObject:CMClockGetHostTimeClock() forKeyedSubscript:@"Clock"];
              [*(v75 + 144) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 1), 0x1F21A0A30}];
              v101 = CMBaseObjectGetDerivedStorage();
              *(v101 + 168) = 0;
              if (*(v101 + 80))
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v102 = CMNotificationCenterAddListener();
                if (dword_1ED844030)
                {
                  v236 = 0;
                  v235 = OS_LOG_TYPE_DEFAULT;
                  v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v104 = v236;
                  if (os_log_type_enabled(v103, v235))
                  {
                    v105 = v104;
                  }

                  else
                  {
                    v105 = v104 & 0xFFFFFFFE;
                  }

                  if (v105)
                  {
                    v215 = 136315394;
                    v216 = "captureSource_registerDeviceNotificationListeners";
                    v217 = 2048;
                    v218 = *&v70;
                    LODWORD(v150) = 22;
                    v148 = &v215;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v74 = v187;
                }

                v233 = v102;
                if (!v102)
                {
                  if (([objc_msgSend(*(v75 + 104) objectForKeyedSubscript:{@"Torch", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(*(v75 + 104), "objectForKeyedSubscript:", @"Flash"), "BOOLValue"))
                  {
                    v106 = *(v75 + 80);
                    [sThermalMonitor maxTorchLevel];
                    v108 = v107;
                    [sPowerMonitor maxTorchLevel];
                    v110 = (v108 >= v109 ? &sPowerMonitor : &sThermalMonitor);
                    [*v110 maxTorchLevel];
                    [v106 setMaxTorchLevel:?];
                    if (dword_1ED844030)
                    {
                      v236 = 0;
                      v235 = OS_LOG_TYPE_DEFAULT;
                      v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v112 = v236;
                      if (os_log_type_enabled(v111, v235))
                      {
                        v113 = v112;
                      }

                      else
                      {
                        v113 = v112 & 0xFFFFFFFE;
                      }

                      if (v113)
                      {
                        [sThermalMonitor maxTorchLevel];
                        v115 = v114;
                        [sPowerMonitor maxTorchLevel];
                        v215 = 136315650;
                        v216 = "captureSource_bringupBWFigVideoCaptureDevice";
                        v217 = 2048;
                        v218 = v115;
                        v219 = 2048;
                        v220 = v116;
                        LODWORD(v150) = 32;
                        v148 = &v215;
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v74 = v187;
                    }
                  }

                  [*(v75 + 80) sendCalibrationDataToISP];
                  BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(*(v75 + 80), *(v75 + 196));
                  goto LABEL_169;
                }

                v134 = v9;
              }

              else
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_10(&v233, v234);
                v134 = *&v234[0];
                v102 = -12780;
              }

              v150 = v134;
              LODWORD(v148) = v102;
              FigDebugAssert3();
LABEL_169:
              a6 = v166;
LABEL_170:
              v100 = v233;
              if (v233)
              {
                v70 = v183;
                goto LABEL_205;
              }

              *(v74 + 13) = 1;
              v117 = *(v74 + 80);
              v118 = [sThermalMonitor thermalLevel];
              [sPowerMonitor maxTorchLevel];
              v120 = v119;
              [sThermalMonitor maxTorchLevel];
              if (v120 >= v121)
              {
                v122 = &sThermalMonitor;
              }

              else
              {
                v122 = &sPowerMonitor;
              }

              [*v122 maxTorchLevel];
              captureSource_setThermalLevelAndMaxTorchLevel(v74, v118, v123);
              [qword_1ED8451C0 callSystemPressureLevelChangedHandler];
              if (v182 && [objc_msgSend(*(v74 + 104) objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
              {
                *(v74 + 198) = [objc_msgSend(v182 objectForKeyedSubscript:{@"SuspendAdjustingFocusNotifications", "BOOLValue"}];
              }

              memset(v226, 0, 64);
              v124 = *(v74 + 160);
              v125 = [v124 countByEnumeratingWithState:v226 objects:v234 count:16];
              if (v125)
              {
                v126 = v125;
                v127 = **&v226[1];
                do
                {
                  for (ii = 0; ii != v126; ++ii)
                  {
                    if (**&v226[1] != v127)
                    {
                      objc_enumerationMutation(v124);
                    }

                    v129 = *(*(&v226[0] + 1) + 8 * ii);
                    if ((![v129 isEqualToString:@"ImageControlMode"] || (objc_msgSend(objc_msgSend(*(v187 + 144), "objectForKeyedSubscript:", @"AutoAdjustImageControlMode"), "BOOLValue") & 1) == 0) && (objc_msgSend(v129, "isEqualToString:", @"AutoFlashEnabled") & 1) == 0 && (objc_msgSend(v129, "isEqualToString:", @"StillImageStabilizationAutomaticallyEnabled") & 1) == 0)
                    {
                      v130 = [*(v187 + 144) objectForKeyedSubscript:v129];
                      if (v130)
                      {
                        captureSource_setPropertyInternal(v183, v129, v130);
                      }
                    }
                  }

                  v126 = [v124 countByEnumeratingWithState:v226 objects:v234 count:16];
                }

                while (v126);
              }

              if (*(v187 + 197) == 1)
              {
                v131 = *(v187 + 32);
                v221[0] = *(v187 + 16);
                v221[1] = v131;
                HasAccessToCamera = FigCaptureClientHasAccessToCamera(v221);
                *(v187 + 196) = HasAccessToCamera;
                v133 = *(v187 + 80);
                v61 = v179;
                v70 = v183;
                if (v133)
                {
                  BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(v133, HasAccessToCamera);
                }

                v100 = 0;
              }

              else
              {
                v100 = 0;
                v61 = v179;
                v70 = v183;
              }

LABEL_195:
              FigSimpleMutexUnlock();
              updated = v100;
              if (v100)
              {
                FigVideoCaptureSourcesActivateAndCreateDevices_cold_12();
                goto LABEL_223;
              }

              [qword_1ED8451D0 addObject:v70];
              [v16 addObject:v117];

              v69 = v178 + 1;
              a2 = v180;
            }

            while (v178 + 1 != v168);
          }

          if (v153)
          {
            v135 = [(BWMultiCamConfiguration *)v152 multiCamConfigurationForDevice:v167 errorOut:&updated];
            if (updated)
            {
              FigVideoCaptureSourcesActivateAndCreateDevices_cold_13();
            }

            else
            {
              updated = [v167 setPropertyIfSupported:*off_1E798A018 value:v135];
              if (!updated)
              {
                goto LABEL_214;
              }

              FigVideoCaptureSourcesActivateAndCreateDevices_cold_14();
            }
          }

          else
          {
LABEL_214:
            if (_MergedGlobals_13 != (v156 & 1) && v167 && (LOBYTE(_MergedGlobals_13) = v156 & 1, (v156 & 1) != 0) && (HIBYTE(_MergedGlobals_13) = [sThermalMonitor thermalLevel] > 1, objc_msgSend(v157, "containsObject:", *off_1E798A0C8)) && (updated = cs_updateTimeOfFlightAFEnabledStatus()) != 0)
            {
              FigVideoCaptureSourcesActivateAndCreateDevices_cold_15();
            }

            else if (sStructuredLightAFEnabled != v158)
            {
              if (v167)
              {
                sStructuredLightAFEnabled = v158;
                sStructuredLightAFSuspended = [sThermalMonitor thermalLevel] > 1;
                if (sStructuredLightAFEnabled == 1)
                {
                  cs_updateStructuredLightAFTargetStreamResources();
                }
              }
            }
          }
        }

LABEL_223:
        if (!updated)
        {
          goto LABEL_232;
        }

        goto LABEL_224;
      }
    }

    updated = [v17 setPropertyIfSupported:*off_1E798A018 value:{0, v148, v149}];
    if (!updated)
    {
      [v17 resetSynchronizedStreamsGroups];
      v61 = 0;
      v153 = 1;
      goto LABEL_100;
    }

    FigVideoCaptureSourcesActivateAndCreateDevices_cold_4();
LABEL_258:
    v61 = 0;
    goto LABEL_223;
  }

  v154 = 0;
  v157 = 0;
  obj = 0;
  v61 = 0;
  v62 = -12780;
LABEL_86:
  updated = v62;
LABEL_224:

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v136 = qword_1ED8451D0;
  v137 = [qword_1ED8451D0 countByEnumeratingWithState:&v190 objects:v189 count:16];
  if (v137)
  {
    v138 = v137;
    v139 = *v191;
    do
    {
      for (jj = 0; jj != v138; ++jj)
      {
        if (*v191 != v139)
        {
          objc_enumerationMutation(v136);
        }

        captureSource_deactivateInternal(*(*(&v190 + 1) + 8 * jj));
      }

      v138 = [v136 countByEnumeratingWithState:&v190 objects:v189 count:16];
    }

    while (v138);
  }

  [qword_1ED8451D0 removeAllObjects];
  v16 = 0;
LABEL_232:
  FigSimpleMutexUnlock();
  if (a9)
  {
    *a9 = [v16 copy];
  }

  return updated;
}

void captureSource_turnOffAndTeardownFigFlashlight(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 176))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(DerivedStorage + 176);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {
      v4(v3, 0.0);
    }

    v5 = *(DerivedStorage + 176);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 176) = 0;
    }

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a1, @"TorchActive", &unk_1F2247860, 0, 1);
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a1, @"TorchLevel", v6, 1, 1);
  }
}

uint64_t cs_addObjectToStreamsAttributes(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 12))
  {
    v4 = 4294954511;
  }

  else if (*(a1 + 104))
  {
    [a2 addObject:?];
    v4 = 0;
  }

  else
  {
    v4 = 4294954513;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void __FigFlashlightCreate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) retainReferencedObject];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = *(DerivedStorage + 96);
    if (dword_1EB58DF40)
    {
      v14 = 0;
      v13 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __flashlight_videoDeviceAvailabilityListener_block_invoke;
    block[3] = &unk_1E7990030;
    block[5] = a2;
    block[6] = DerivedStorage;
    block[4] = v6;
    v12 = v8;
    dispatch_async(v10, block);
    CFRelease(v5);
  }
}

void OUTLINED_FUNCTION_129_0(CFTypeRef value)
{

  CMSetAttachment(v2, v1, value, 1u);
}

CMTime *OUTLINED_FUNCTION_129_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *lhs, uint64_t rhs_8, CMTime *rhs_16, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a19, uint64_t a20)
{
  lhs_16 = a1;

  return CMTimeAdd(&a20, &lhsa, &lhs);
}

uint64_t OUTLINED_FUNCTION_129_2(double a1, double a2)
{
  v4 = a1 - a2 * v3;

  return FigCaptureCeilFloatToMultipleOf(2, v4);
}

__n128 OUTLINED_FUNCTION_42_0()
{
  result = *&STACK[0x270];
  *&STACK[0x230] = *&STACK[0x270];
  STACK[0x240] = STACK[0x280];
  return result;
}

__n128 OUTLINED_FUNCTION_42_2@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 208) = *a1;
  *(v1 - 192) = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_42_3(double a1, double a2, double a3, double a4)
{
  *&STACK[0x420] = a1;
  *&STACK[0x428] = a2;
  *&STACK[0x430] = a3;
  *&STACK[0x438] = a4;
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return [v0 objectAtIndexedSubscript:0];
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return [v0 count];
}

uint64_t OUTLINED_FUNCTION_42_12()
{
  *(v1 - 68) = 0;
  *(v1 - 69) = 0;
  return *(v0 + 1576);
}

BOOL OUTLINED_FUNCTION_60_2(NSObject *a1)
{
  v3 = *(v1 - 85);

  return os_log_type_enabled(a1, v3);
}

__n128 OUTLINED_FUNCTION_60_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, __n128 a39)
{
  result = a39;
  *(v39 - 176) = a38;
  *(v39 - 160) = a39;
  *(v39 - 192) = a37;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v1 = STACK[0x258];

  return [v1 countByEnumeratingWithState:&STACK[0x2E0] objects:&STACK[0x260] count:16];
}

uint64_t OUTLINED_FUNCTION_60_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{

  return [v49 countByEnumeratingWithState:&a49 objects:&a33 count:16];
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a29 objects:&a13 count:16];
}

void __flashlight_videoDeviceAvailabilityListener_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) retainReferencedObject];
  if (v2)
  {
    v3 = v2;
    FigSimpleMutexLock();
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
    v6 = [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
    v7 = [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
    v8 = [*(*(a1 + 48) + 56) invalidated];
    if (v6)
    {
      v5 |= *(*(a1 + 48) + 72) == 1;
    }

    if (dword_1EB58DF40)
    {
      v38 = 0;
      v37 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((v8 & v5) == 1)
    {
      if (flashlight_createDeviceAndStream())
      {
        goto LABEL_48;
      }

      flashlight_setLevelInternal(v3, *(*(a1 + 48) + 32));
      flashlight_setBeamWidthInternal(v3, *(*(a1 + 48) + 40));
      v8 = 0;
    }

    if (((v5 | v8) & 1) == 0)
    {
      if ([+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")])
      {
        if (dword_1EB58DF40)
        {
          v38 = 0;
          v37 = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v38;
          if (os_log_type_enabled(v11, v37))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (!v13)
          {
            goto LABEL_44;
          }

          v14 = *(a1 + 48);
          v15 = *(v14 + 112);
          v16 = *(v14 + 56);
          *v35 = 136315650;
          *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
          *&v35[12] = 2082;
          *&v35[14] = v15;
          *&v35[22] = 2048;
          v36 = v16;
          LODWORD(v34) = 32;
          v33 = v35;
LABEL_36:
          _os_log_send_and_compose_impl();
LABEL_44:
          LOBYTE(v5) = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_48;
        }

        goto LABEL_37;
      }

      if (dword_1EB58DF40)
      {
        v38 = 0;
        v37 = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v38;
        if (os_log_type_enabled(v17, v37))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v20 = *(*(a1 + 48) + 112);
          *v35 = 136315394;
          *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
          *&v35[12] = 2082;
          *&v35[14] = v20;
          LODWORD(v34) = 22;
          v33 = v35;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = 0;
    }

    if ((v5 | v7 | v8))
    {
      goto LABEL_48;
    }

    if (*(*(a1 + 48) + 72) == 1)
    {
      if ([+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")] <= 1)
      {
        if (dword_1EB58DF40)
        {
          v38 = 0;
          v37 = OS_LOG_TYPE_DEFAULT;
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v38;
          if (os_log_type_enabled(v21, v37))
          {
            v23 = v22;
          }

          else
          {
            v23 = v22 & 0xFFFFFFFE;
          }

          if (!v23)
          {
            goto LABEL_44;
          }

          v24 = *(*(a1 + 48) + 112);
          *v35 = 136315394;
          *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
          *&v35[12] = 2082;
          *&v35[14] = v24;
          LODWORD(v34) = 22;
          v33 = v35;
          goto LABEL_36;
        }

LABEL_37:
        flashlight_postNotificationWithPayload(v3, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:{1, v33, v34}]);
LABEL_57:
        objc_autoreleasePoolPop(v4);
        FigSimpleMutexUnlock();
        CFRelease(v3);
        return;
      }

      if (!dword_1EB58DF40)
      {
        flashlight_postNotificationWithPayload(v3, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:0]);
LABEL_56:
        flashlight_teardownDevice(v3, 1);
        goto LABEL_57;
      }

      v38 = 0;
      v37 = OS_LOG_TYPE_DEFAULT;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = v38;
      if (os_log_type_enabled(v25, v37))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v28 = *(*(a1 + 48) + 112);
        *v35 = 136315394;
        *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
        *&v35[12] = 2082;
        *&v35[14] = v28;
        LODWORD(v34) = 22;
        v33 = v35;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LOBYTE(v5) = 0;
LABEL_48:
    if (dword_1EB58DF40)
    {
      v38 = 0;
      v37 = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v38;
      if (os_log_type_enabled(v29, v37))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = *(*(a1 + 48) + 112);
        *v35 = 136315650;
        *&v35[4] = "flashlight_videoDeviceAvailabilityListener_block_invoke";
        *&v35[12] = 2082;
        *&v35[14] = v32;
        *&v35[22] = 1024;
        LODWORD(v36) = v5 & 1;
        LODWORD(v34) = 28;
        v33 = v35;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    flashlight_postNotificationWithPayload(v3, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:{v5 & 1, v33, v34, *v35, *&v35[16], v36}]);
    if (v5)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (dword_1EB58DF40)
  {
    v38 = 0;
    v37 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t flashlight_postNotificationWithPayload(const void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return flashlight_postNotificationWithPayload_cold_1();
  }

  v7 = DerivedStorage;
  if (a1)
  {
    CFRetain(a1);
  }

  CFRetain(a2);
  v18 = @"FlashlightValue";
  v19 = a3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v9 = *v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __flashlight_postNotificationWithPayload_block_invoke;
  v17[3] = &unk_1E7990150;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = a2;
  v17[7] = a1;
  dispatch_async(v9, v17);
  result = FigCFEqual();
  if (result)
  {
    if (([a3 floatValue], v11 > 0.0) && *(v7 + 36) == 0.0 || (result = objc_msgSend(a3, "floatValue"), v12 == 0.0) && *(v7 + 36) > 0.0)
    {
      v13 = *(v7 + 96);
      v14 = *(v7 + 104);
      [a3 floatValue];
      FigCaptureLogTorchPowerEvent(v13, v14, v15);
      result = [a3 floatValue];
      *(v7 + 36) = v16;
    }
  }

  return result;
}

void flashlight_teardownDevice(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
  }

  v5 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = 0;
  if (v5)
  {
    if (*(DerivedStorage + 32) > 0.0)
    {
      v6 = *(DerivedStorage + 64);
      if (v6)
      {
        [v6 setProperty:*off_1E798C230 value:&unk_1F2242838];
      }
    }

    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  }

  *(DerivedStorage + 64) = 0;
  if (*(DerivedStorage + 32) > 0.0)
  {
    *(DerivedStorage + 32) = 0;
    if (a2)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v8) = *(DerivedStorage + 32);
      v9 = [v7 initWithFloat:v8];
      flashlight_postNotificationWithPayload(a1, @"FlashlightLevel", v9);
    }

    else
    {
      FigCaptureLogTorchPowerEvent(*(DerivedStorage + 96), *(DerivedStorage + 104), 0.0);
      *(DerivedStorage + 36) = *(DerivedStorage + 32);
    }
  }

  flashlight_logLevelAnalytics(DerivedStorage, 0.0);
  flashlight_logBeamWidthAnalytics(DerivedStorage, -1.0);
  dispatch_sync(*(DerivedStorage + 8), &__block_literal_global_11);
  if (*(DerivedStorage + 232))
  {
    v10 = objc_alloc_init(BWFlashlightAnalyticsPayload);
    [(BWFlashlightAnalyticsPayload *)v10 setLuxLevel:*(DerivedStorage + 352)];
    [(BWFlashlightAnalyticsPayload *)v10 setLevelUsage:DerivedStorage + 144];
    [(BWFlashlightAnalyticsPayload *)v10 setBeamWidthUsage:DerivedStorage + 248];
    [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v10];
    *(DerivedStorage + 224) = 0;
    *(DerivedStorage + 192) = 0u;
    *(DerivedStorage + 208) = 0u;
    *(DerivedStorage + 160) = 0u;
    *(DerivedStorage + 176) = 0u;
    *(DerivedStorage + 144) = 0u;
    *(DerivedStorage + 248) = 0u;
    *(DerivedStorage + 264) = 0u;
    *(DerivedStorage + 280) = 0u;
    *(DerivedStorage + 296) = 0u;
    *(DerivedStorage + 312) = 0u;
    *(DerivedStorage + 328) = 0;
  }

  *(DerivedStorage + 344) = 0;
  *(DerivedStorage + 232) = 0;
  *(DerivedStorage + 128) = 0;
  *(DerivedStorage + 240) = -1;
  *(DerivedStorage + 352) = 0x7FFFFFFF;
}

void flashlight_logLevelAnalytics(uint64_t a1, float a2)
{
  v3 = vcvtps_u32_f32(a2 * 10.0);
  if (v3 && (*(a1 + 240) & 0x80000000) != 0)
  {
    flashlight_logBeamWidthAnalytics(a1, *(a1 + 40));
    v4 = *(a1 + 344);
    v5 = *(a1 + 8);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __flashlight_logLevelAnalytics_block_invoke;
    v9[3] = &unk_1E7990178;
    v9[4] = v4;
    v9[5] = a1;
    dispatch_async(v5, v9);
  }

  if (*(a1 + 128) != v3)
  {
    v6 = mach_absolute_time();
    v7 = *(a1 + 128);
    if (v7)
    {
      v8 = v6 - *(a1 + 136);
      *(a1 + 8 * v7 + 144) += v8;
      *(a1 + 232) += v8;
    }

    *(a1 + 128) = v3;
    *(a1 + 136) = v6;
  }
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  *(v0 - 256) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_75_4()
{
  v2 = *(v0 + 3480);

  return [v2 numberWithInt:?];
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, void *a2)
{

  return [a2 portType];
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{

  return [a15 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_147_0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 enqueueInputForProcessing:a3 delegate:a4 processErrorRecoveryFrame:0 processOriginalImage:1 clientBracketSequenceNumber:0 processSemanticRendering:0 provideInferenceInputImageForProcessing:? inferencesAvailable:?];
}

uint64_t flashlight_logBeamWidthAnalytics(uint64_t result, float a2)
{
  v2 = vcvtps_s32_f32(a2 * 10.0);
  if (*(result + 240) != v2)
  {
    v3 = result;
    result = mach_absolute_time();
    v4 = *(v3 + 240);
    if ((v4 & 0x80000000) == 0)
    {
      *(v3 + 8 * v4 + 248) += result - *(v3 + 336);
    }

    *(v3 + 240) = v2;
    *(v3 + 336) = result;
  }

  return result;
}

void OUTLINED_FUNCTION_251()
{
  *(v0 + 312) = -1082130432;
  *(v0 + 316) = 0;
  *(v0 + 280) = -1082130432;
  *(v0 + 284) = 0;
}

BOOL OUTLINED_FUNCTION_155(NSObject *a1)
{
  v3 = *(v1 - 85);

  return os_log_type_enabled(a1, v3);
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo(const __CFDictionary *a1, const __CFArray *a2, uint64_t a3)
{
  v50 = 0;
  valuePtr = 0;
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Value = CFDictionaryGetValue(a1, *off_1E798A260);
      v6 = CFDictionaryGetValue(a1, *off_1E798A248);
      v7 = CFDictionaryGetValue(a1, *off_1E798A258);
      if (Value)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8 || v7 == 0)
      {
        GetFocalLengthParametersFromArrayUsingModuleInfo_cold_2(&v51);
        return v51;
      }

      if (!CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr) || !CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr + 4) || !CFNumberGetValue(Value, kCFNumberSInt32Type, &v50))
      {
        fig_log_get_emitter();
        v10 = FigSignalErrorAtGM();
        if (v10)
        {
          v43 = v10;
          GetFocalLengthParametersFromArrayUsingModuleInfo_cold_1();
          return v43;
        }
      }
    }
  }

  v11 = a2;
  if (CFArrayGetCount(a2) < 1)
  {
    return 0;
  }

  v12 = 0;
  v45 = a3 + 20;
  v46 = a3;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
    v14 = CFGetTypeID(ValueAtIndex);
    if (v14 != CFDictionaryGetTypeID())
    {
      GetFocalLengthParametersFromArrayUsingModuleInfo_cold_3(&v51);
      return v51;
    }

    if (!a1)
    {
      break;
    }

    v15 = 1;
    v51 = 1;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    if (v51 == 2)
    {
      v17 = IDsEqualAboveFirstHexDigit;
    }

    else
    {
      v17 = IDsEqual;
    }

    if (IntIfPresent)
    {
      v18 = v17;
    }

    else
    {
      v18 = IDsEqual;
    }

    v19 = CFDictionaryGetValue(ValueAtIndex, @"IntegratorID");
    if (v19)
    {
      v20 = v19;
      v21 = valuePtr;
      if (CFArrayGetCount(v19) < 1)
      {
        v15 = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          v51 = -1;
          FigCFArrayGetIntAtIndex();
          if ((v18)(v51, v21))
          {
            v23 = 1;
          }

          else
          {
            v23 = v51 == 0;
          }

          v15 = v23;
          if (v23)
          {
            break;
          }

          ++v22;
        }

        while (CFArrayGetCount(v20) > v22);
      }
    }

    v24 = CFDictionaryGetValue(ValueAtIndex, @"ActuatorID");
    if (v24)
    {
      v25 = v24;
      v26 = HIDWORD(valuePtr);
      if (CFArrayGetCount(v24) < 1)
      {
        v29 = 0;
      }

      else
      {
        v27 = 0;
        do
        {
          v51 = -1;
          FigCFArrayGetIntAtIndex();
          if ((v18)(v51, v26))
          {
            v28 = 1;
          }

          else
          {
            v28 = v51 == 0;
          }

          v29 = v28;
          if (v28)
          {
            break;
          }

          ++v27;
        }

        while (CFArrayGetCount(v25) > v27);
      }
    }

    else
    {
      v29 = 1;
    }

    v30 = CFDictionaryGetValue(ValueAtIndex, @"LensID");
    if (v30)
    {
      v31 = v30;
      v32 = v50;
      if (CFArrayGetCount(v30) < 1)
      {
        v35 = 0;
      }

      else
      {
        v33 = 0;
        do
        {
          v51 = -1;
          FigCFArrayGetIntAtIndex();
          if ((v18)(v51, v32))
          {
            v34 = 1;
          }

          else
          {
            v34 = v51 == 0;
          }

          v35 = v34;
          if (v34)
          {
            break;
          }

          ++v33;
        }

        while (CFArrayGetCount(v31) > v33);
      }

      v29 &= v35;
      v11 = a2;
    }

    if ((v15 & v29) == 1)
    {
      break;
    }

    if (CFArrayGetCount(v11) <= ++v12)
    {
      return 0;
    }
  }

  if (!FigCFDictionaryGetFloatIfPresent())
  {
    GetFocalLengthParametersFromArrayUsingModuleInfo_cold_6(&v51);
    return v51;
  }

  v36 = CFDictionaryGetValue(ValueAtIndex, @"LensCoefficients");
  if (!v36)
  {
    GetFocalLengthParametersFromArrayUsingModuleInfo_cold_5(&v51);
    return v51;
  }

  v37 = v36;
  v38 = CFArrayGetTypeID();
  if (v38 != CFGetTypeID(v37))
  {
    return 0;
  }

  Count = CFArrayGetCount(v37);
  if (Count > 5)
  {
    GetFocalLengthParametersFromArrayUsingModuleInfo_cold_4(&v51);
    return v51;
  }

  v40 = v45;
  if (Count >= 1)
  {
    v41 = 0;
    v42 = Count & 0x7FFFFFFF;
    do
    {
      FigCFArrayGetFloatAtIndex();
      ++v41;
      v40 += 4;
    }

    while (v42 != v41);
  }

  v43 = 0;
  *(v46 + 16) = 1;
  return v43;
}

unint64_t bp_readNoffset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 15)
  {
    if (a2 <= 17)
    {
      if (a2 != 16)
      {
        return __rev16(*(a1 + a3));
      }

      return *(a1 + a3);
    }

    if (a2 != 18)
    {
      if (a2 != 19)
      {
        goto LABEL_11;
      }

      return bswap64(*(a1 + a3));
    }
  }

  else
  {
    if (a2 <= 3)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
LABEL_11:
          abort();
        }

        return __rev16(*(a1 + a3));
      }

      return *(a1 + a3);
    }

    if (a2 != 4)
    {
      if (a2 != 8)
      {
        goto LABEL_11;
      }

      return bswap64(*(a1 + a3));
    }
  }

  return bswap32(*(a1 + a3));
}

uint64_t FigCaptureBinaryPlistGetTypeForObjectAtOffset(void *a1, uint64_t a2)
{
  v2 = *(*a1 + a2);
  if (v2 <= 0x23)
  {
    return *(*a1 + a2);
  }

  else
  {
    return v2 & 0xF0;
  }
}

uint64_t OUTLINED_FUNCTION_193()
{

  return _os_log_send_and_compose_impl();
}

unint64_t *FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(void *a1, uint64_t a2)
{
  v2 = (*a1 + a2);
  result = (v2 + 1);
  v4 = (*v2 - 64) >> 4;
  v5 = v4 > 9;
  v6 = (1 << v4) & 0x347;
  if (v5 || v6 == 0)
  {
    abort();
  }

  if ((*v2 & 0xF) == 0xF)
  {
    v8 = (v2 + 2);
    bp_readNinc(&v8, v2[1]);
    return v8;
  }

  return result;
}

unint64_t bp_readNinc(unint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  if (a2 > 15)
  {
    if (a2 <= 17)
    {
      if (a2 != 16)
      {
LABEL_8:
        *a1 = (v2 + 2);
        return __rev16(*v2);
      }

      goto LABEL_15;
    }

    if (a2 != 18)
    {
      if (a2 != 19)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (a2 <= 3)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
LABEL_11:
          abort();
        }

        goto LABEL_8;
      }

LABEL_15:
      *a1 = (v2 + 1);
      return *v2;
    }

    if (a2 != 4)
    {
      if (a2 != 8)
      {
        goto LABEL_11;
      }

LABEL_14:
      *a1 = v2 + 1;
      return bswap64(*v2);
    }
  }

  *a1 = (v2 + 4);
  return bswap32(*v2);
}

uint64_t FigCaptureBinaryPlistFindIndexForStringInObject(uint64_t a1, uint64_t a2, const char *a3, size_t a4)
{
  v4 = (*a1 + a2);
  v5 = *v4;
  v23 = (v4 + 1);
  if ((v5 & 0xE0 | 0x10) != 0xD0)
  {
    abort();
  }

  v9 = v5 & 0xF;
  if ((v5 & 0xF) == 0xF)
  {
    v23 = (v4 + 2);
    v9 = bp_readNinc(&v23, v4[1]);
  }

  if (v9)
  {
    v10 = 0;
    v11 = v23;
LABEL_6:
    v12 = v9 - 1;
    while (1)
    {
      v13 = (v10 + v12) >> 1;
      Noffset = bp_readNoffset(v11, *(a1 + 42), v13 * *(a1 + 42));
      v15 = bp_readNoffset(*(a1 + 8), *(a1 + 41), Noffset * *(a1 + 41));
      v16 = *(*a1 + v15);
      if (v16 > 0x23)
      {
        v16 &= 0xF0u;
      }

      if (v16 != 80)
      {
        break;
      }

      DataAndCountForObjectAtOffset = FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(a1, v15);
      v19 = v17;
      if (v17 >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v17;
      }

      v21 = strncmp(a3, DataAndCountForObjectAtOffset, v20);
      if (v21)
      {
        if (v10 == v12)
        {
          return -1;
        }

        if (v21 < 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v19 == a4)
        {
          return v13;
        }

        if (v10 == v12)
        {
          return -1;
        }

        if (v19 >= a4)
        {
LABEL_24:
          if (v13 <= v10 + 1)
          {
            v9 = v10 + 1;
          }

          else
          {
            v9 = (v10 + v12) >> 1;
          }

          goto LABEL_6;
        }
      }

      if (v13 + 1 < v12)
      {
        v10 = v13 + 1;
      }

      else
      {
        v10 = v12;
      }
    }

    if (v10 != v12)
    {
      goto LABEL_24;
    }
  }

  return -1;
}
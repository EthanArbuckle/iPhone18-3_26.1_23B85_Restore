unint64_t FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (*a1 + a2);
  v5 = *v3;
  v4 = *v3;
  v14 = (v3 + 1);
  if ((v5 & 0xF0) != 0xD0)
  {
    FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject_cold_1();
  }

  v8 = v4 & 0xF;
  if ((v4 & 0xF) == 0xF)
  {
    v14 = (v3 + 2);
    v8 = bp_readNinc(&v14, v3[1]);
  }

  if (v8 <= a3)
  {
    FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject_cold_2();
  }

  Noffset = bp_readNoffset(v14, *(a1 + 42), (v8 + a3) * *(a1 + 42));
  v10 = *(a1 + 41);
  v11 = Noffset * v10;
  v12 = *(a1 + 8);

  return bp_readNoffset(v12, v10, v11);
}

uint64_t FigCaptureBinaryPlistGetIntForObjectAtOffset(void *a1, uint64_t a2)
{
  v2 = (*a1 + a2);
  v3 = *v2;
  if (v3 <= 0x11)
  {
    if (*v2 > 0xFu)
    {
      if (v3 == 16)
      {
        return v2[1];
      }

      else
      {
        if (v3 != 17)
        {
          goto LABEL_22;
        }

        return __rev16(*(v2 + 1));
      }
    }

    else if (v3 == 8)
    {
      return 0;
    }

    else
    {
      if (v3 != 9)
      {
        goto LABEL_22;
      }

      return 1;
    }
  }

  else if (*v2 <= 0x20u)
  {
    if (v3 == 18)
    {
      return bswap32(*(v2 + 1));
    }

    else
    {
      if (v3 != 19)
      {
        goto LABEL_22;
      }

      return bswap64(*(v2 + 1));
    }
  }

  else
  {
    switch(v3)
    {
      case '!':
        return COERCE_SHORT_FLOAT(bswap32(*(v2 + 1)) >> 16);
      case '""':
        return COERCE_FLOAT(bswap32(*(v2 + 1)));
      case '#':
        return COERCE_DOUBLE(bswap64(*(v2 + 1)));
      default:
LABEL_22:
        abort();
    }
  }
}

id OUTLINED_FUNCTION_162@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + a2) = a1;
  v5 = *(v3 + 3984);

  return objc_alloc_init(v5);
}

void __FigCaptureSessionPrewarm_block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    captureSession_prewarmMemoryPool(*(a1 + 41), *(a1 + 32));
  }
}

double OUTLINED_FUNCTION_133_1(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = v8;
  v10 = v7;

  *&result = CGRectUnion(*&a1, *&a5);
  return result;
}

BOOL OUTLINED_FUNCTION_133_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

void __flashlight_postNotificationWithPayload_block_invoke(uint64_t a1)
{
  if (dword_1EB58DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }
}

BOOL OUTLINED_FUNCTION_191(NSObject *a1)
{
  v2 = STACK[0x8EB];

  return os_log_type_enabled(a1, v2);
}

uint64_t fvcs_ambientViewingEnvironment(int a1)
{
  v2[0] = (10000 * a1) >> 24;
  v2[1] = (10000 * a1) >> 16;
  v2[2] = (10000 * a1) >> 8;
  v2[3] = 16 * a1;
  v3 = 1111495485;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:8];
}

uint64_t FigMotionGetGravityFactor(const __CFDictionary *a1, CFDictionaryRef theDict, _DWORD *a3)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FocalLengthCharacterization");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID())
      {
        FocalLengthParametersFromArrayUsingModuleInfo = GetFocalLengthParametersFromArrayUsingModuleInfo(a1, v6, &v12);
        if (FocalLengthParametersFromArrayUsingModuleInfo)
        {
          v10 = FocalLengthParametersFromArrayUsingModuleInfo;
          FigMotionGetGravityFactor_cold_2();
          return v10;
        }

        if ((v13 & 1) == 0)
        {
          v9 = GetFocalLengthParametersFromArrayUsingModuleInfo(0, v6, &v12);
          if (v9)
          {
            v10 = v9;
            FigMotionGetGravityFactor_cold_3();
            return v10;
          }
        }

        goto LABEL_7;
      }

      FigMotionGetGravityFactor_cold_1(&v16);
    }

    else
    {
      FigMotionGetGravityFactor_cold_4(&v16);
    }

    return v16;
  }

LABEL_7:
  v10 = 0;
  *a3 = DWORD2(v14);
  return v10;
}

unint64_t FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (*a1 + a2);
  v4 = *v3;
  v14 = (v3 + 1);
  if ((v4 & 0xF0u) - 160 > 0x30 || ((1 << ((v4 & 0xF0u) + 96)) & 0x1000100000001) == 0)
  {
    abort();
  }

  v8 = v4 & 0xF;
  if ((v4 & 0xF) == 0xF)
  {
    v14 = (v3 + 2);
    v8 = bp_readNinc(&v14, v3[1]);
  }

  if (v8 <= a3)
  {
    FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject_cold_1();
  }

  Noffset = bp_readNoffset(v14, *(a1 + 42), *(a1 + 42) * a3);
  v10 = *(a1 + 41);
  v11 = Noffset * v10;
  v12 = *(a1 + 8);

  return bp_readNoffset(v12, v10, v11);
}

double fvcd_stillImageStabilizationIntegrationTimeThresholdFromSensorIDDictionary(void *a1)
{
  if (a1)
  {
    v1 = [a1 objectForKeyedSubscript:@"StillImageStabilization"];
    v2 = 0.0;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"IntegrationTimeThresholdDenominator"];
      if (v3)
      {
        [v3 doubleValue];
        return 1.0 / v4;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0.0;
  }

  return v2;
}

uint64_t BWActiveDeviceTypeFromPortType(void *a1)
{
  if ([a1 isEqualToString:*off_1E798A0E0])
  {
    return 1;
  }

  if ([a1 isEqualToString:*off_1E798A0F8])
  {
    return 64;
  }

  if ([a1 isEqualToString:*off_1E798A0E8])
  {
    return 2;
  }

  if ([a1 isEqualToString:*off_1E798A0D8])
  {
    return 8;
  }

  if ([a1 isEqualToString:*off_1E798A0C0])
  {
    return 4;
  }

  if ([a1 isEqualToString:*off_1E798A0D0])
  {
    return 16;
  }

  if (([a1 isEqualToString:*off_1E798A0C8] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown port type %@.  Does not align with any active device types", a1), 0}]);
  }

  return 32;
}

void captureSource_handleDeviceNotification(uint64_t a1, const void *a2, void *a3, uint64_t a4, void *a5)
{
  v84 = 0;
  if ([a3 isEqualToString:0x1F21A6150])
  {
    v8 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F21A1ED0), "BOOLValue"}];
    v9 = kFigCaptureSourceProperty_AdjustingWhiteBalance;
LABEL_5:
    v10 = *v9;
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v8 ^ 1u];
    v12 = a2;
    v13 = v10;
LABEL_6:
    v14 = 0;
LABEL_7:

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v12, v13, v11, v14, 0);
    return;
  }

  if ([a3 isEqualToString:0x1F21A6110])
  {
    v8 = [objc_msgSend(a5 objectForKeyedSubscript:{0x1F21A1ED0), "BOOLValue"}];
    v9 = kFigCaptureSourceProperty_AdjustingExposure;
    goto LABEL_5;
  }

  if (([a3 isEqualToString:0x1F218A250] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", 0x1F218A1F0) & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", 0x1F218A210) & 1) != 0 || objc_msgSend(a3, "isEqualToString:", 0x1F218A230))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ([a3 isEqualToString:0x1F218A250])
    {
      v16 = @"SubjectAreaChanged";
      v17 = a2;
      v18 = 0;
LABEL_16:
      captureSource_postNotificationWithPayload(v17, v16, v18);
      return;
    }

    if ([a3 isEqualToString:0x1F218A1F0])
    {
      v19 = FigAtomicAdd32();
      if (!v19)
      {
        FigDebugAssert3();
        FigSignalErrorAtGM();
        return;
      }

      if (v19 != 1 || (*(DerivedStorage + 198) & 1) != 0)
      {
        goto LABEL_28;
      }

      v20 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (([a3 isEqualToString:0x1F218A210] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", 0x1F218A230) & 1) == 0)
      {
        return;
      }

      if (FigAtomicAdd32() || (*(DerivedStorage + 198) & 1) != 0)
      {
        goto LABEL_28;
      }

      v20 = MEMORY[0x1E695E4C0];
    }

    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"AdjustingFocus", *v20, 0, 0);
LABEL_28:
    if (![objc_msgSend(a5 objectForKeyedSubscript:{@"isFaceRect", "BOOLValue"}])
    {
      return;
    }

    v21 = [a5 objectForKeyedSubscript:@"FocusRectDict"];
    v22 = [a5 valueForKeyPath:@"faceData.AngleInfoRoll"];
    if (!v21 || !v22)
    {
      return;
    }

    v72 = @"FaceRect";
    v73 = @"FaceAngle";
    v78 = v21;
    v79 = v22;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v72 count:2];
    v23 = kFigCaptureSourceNotification_FaceDrivenImageProcessingFaceChanged;
    goto LABEL_32;
  }

  if ([a3 isEqualToString:0x1F21A0D90])
  {
    v24 = kFigCaptureSourceProperty_Option25Changed;
LABEL_39:
    v25 = *v24;
    v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
    v12 = a2;
    v13 = v25;
    goto LABEL_6;
  }

  if ([a3 isEqualToString:0x1F21A0DB0])
  {
    v24 = kFigCaptureSourceProperty_Option25Changed2;
    goto LABEL_39;
  }

  if ([a3 isEqualToString:0x1F21A6330])
  {
    v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
    v26 = kFigCaptureSourceProperty_FocusLensPosition;
LABEL_44:
    v13 = *v26;
    v12 = a2;
    goto LABEL_6;
  }

  if ([a3 isEqualToString:0x1F21A6130])
  {
    v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
    v26 = kFigCaptureSourceProperty_ImageControlMode;
    goto LABEL_44;
  }

  if ([a3 isEqualToString:0x1F21A1CD0])
  {
    captureSource_postNotificationWithPayload(a2, @"StillImageSceneChanged", a5);
    v78 = 0;
    v79 = &v78;
    v80 = 0x3052000000;
    v81 = __Block_byref_object_copy__44;
    v82 = __Block_byref_object_dispose__44;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3052000000;
    v75 = __Block_byref_object_copy__44;
    v76 = __Block_byref_object_dispose__44;
    v77 = 0;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __captureSource_handleDeviceNotification_block_invoke;
    v71[3] = &unk_1E799DD90;
    v71[4] = a5;
    v71[5] = &v78;
    v71[6] = &v72;
    if (captureSource_safelyAccessStorage(a2, v71))
    {
      FigDebugAssert3();
    }

    else
    {
      v27 = v79[5];
      if (v27)
      {
        captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"FlashActive", v27, 1, 0);
      }

      v28 = v73[5];
      if (v28)
      {
        captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"IsStillImageStabilizationScene", v28, 1, 0);
      }
    }

LABEL_51:
    _Block_object_dispose(&v72, 8);
    goto LABEL_52;
  }

  if ([a3 isEqualToString:0x1F21A1C70])
  {

    captureSource_updateCachedZoomFactorPropertyAndNotify(a2, a5);
  }

  else
  {
    if ([a3 isEqualToString:0x1F21A6350])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_ExposureDuration;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A6370])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_ISO;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A6390])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_ExposureTargetBias;
LABEL_60:
      v13 = *v29;
      v12 = a2;
      v14 = 1;
      goto LABEL_7;
    }

    if ([a3 isEqualToString:0x1F21A63B0])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_ExposureTargetOffset;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A6090])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_ActiveMaxExposureDuration;
      goto LABEL_60;
    }

    if ([a3 isEqualToString:0x1F21A63D0])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_DeviceWhiteBalanceGains;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A63F0])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_GrayWorldDeviceWhiteBalanceGains;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A6D10])
    {
      v30 = kFigCaptureSourceProperty_SceneClassificationActive;
LABEL_74:
      v31 = *v30;
      v32 = a2;
      v33 = a5;
LABEL_87:

      captureSource_postNotificationWithPayload(v32, v31, v33);
      return;
    }

    if ([a3 isEqualToString:0x1F21A6D30])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_SceneClassificationConfidences;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A1B90])
    {
      v34 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v35 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v34, @"NewPropertyValue", v35, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v35 intValue], a5, a3);
      v37 = kFigCaptureSourceNotification_ManualFocusComplete;
LABEL_86:
      v31 = *v37;
      v32 = a2;
      v33 = v36;
      goto LABEL_87;
    }

    if ([a3 isEqualToString:0x1F21A1BB0])
    {
      v38 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v39 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v38, @"NewPropertyValue", v39, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v39 intValue], a5, a3);
      v37 = kFigCaptureSourceNotification_ManualExposureComplete;
      goto LABEL_86;
    }

    if ([a3 isEqualToString:0x1F21A1BD0])
    {
      v40 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v41 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v40, @"NewPropertyValue", v41, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v41 intValue], a5, a3);
      v37 = kFigCaptureSourceNotification_BiasedExposureComplete;
      goto LABEL_86;
    }

    if ([a3 isEqualToString:0x1F21A1BF0])
    {
      v42 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v43 = [a5 objectForKeyedSubscript:0x1F21A1EF0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v42, @"NewPropertyValue", v43, @"ManualControlRequestID", 0}];
      captureSource_restoreCurrentValuesForManualControlProperties(a2, [v43 intValue], a5, a3);
      v37 = kFigCaptureSourceNotification_ManualWhiteBalanceComplete;
      goto LABEL_86;
    }

    if ([a3 isEqualToString:0x1F21A1110])
    {
      v44 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      LOBYTE(v81) = 0;
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      LOBYTE(v75) = 0;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __captureSource_handleDeviceNotification_block_invoke_2;
      v70[3] = &unk_1E799DDB8;
      v70[4] = &v78;
      v70[5] = &v72;
      if (captureSource_safelyAccessStorage(a2, v70))
      {
        FigDebugAssert3();
      }

      else
      {
        if (*(v79 + 24) == 1)
        {
          captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"FlashOverheated", v44, 0, 0);
        }

        if (*(v73 + 24) == 1)
        {
          captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"TorchOverheated", v44, 0, 0);
        }
      }

      goto LABEL_51;
    }

    if ([a3 isEqualToString:0x1F21A10F0])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v26 = kFigCaptureSourceProperty_TorchActive;
      goto LABEL_44;
    }

    if ([a3 isEqualToString:0x1F21A1130])
    {
      v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v29 = kFigCaptureSourceProperty_TorchLevel;
      goto LABEL_60;
    }

    if ([a3 isEqualToString:0x1F21A1D90])
    {
      v30 = kFigCaptureSourceNotification_ShallowDepthOfFieldStatusChanged;
      goto LABEL_74;
    }

    if ([a3 isEqualToString:0x1F21A6C70])
    {
      v68[0] = @"NewPropertyValue";
      v68[1] = @"MinAvailableVideoZoomFactor";
      v69[0] = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v69[1] = [a5 objectForKeyedSubscript:0x1F21A15B0];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
      v23 = kFigCaptureSourceNotification_ActiveBravoCameraSelectionConfiguration;
      goto LABEL_32;
    }

    if ([a3 isEqualToString:0x1F21A6C90])
    {
      v45 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a2, [a5 objectForKeyedSubscript:0x1F21A1ED0], &v84);
      if (v84)
      {
        captureSource_handleDeviceNotification_cold_2();
        return;
      }

      v78 = 0;
      v79 = &v78;
      v80 = 0x3052000000;
      v81 = __Block_byref_object_copy__44;
      v82 = __Block_byref_object_dispose__44;
      v83 = 0;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __captureSource_handleDeviceNotification_block_invoke_3;
      v67[3] = &unk_1E799DD48;
      v67[4] = &v78;
      if (captureSource_safelyAccessStorage(v45, v67))
      {
        FigDebugAssert3();
      }

      else
      {
        v46 = v79[5];
        if (v46)
        {
          v65 = @"NewPropertyValue";
          v66 = v46;
          captureSource_postNotificationWithPayload(a2, @"UnderlyingMasterSource", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1]);
        }

        if (v45)
        {
          CFRelease(v45);
        }
      }

      goto LABEL_52;
    }

    if ([a3 isEqualToString:0x1F21A6CB0])
    {
      v47 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a2, [a5 objectForKeyedSubscript:0x1F21A1ED0], &v84);
      if (v84)
      {
        captureSource_handleDeviceNotification_cold_1();
        return;
      }

      v78 = 0;
      v79 = &v78;
      v80 = 0x3052000000;
      v81 = __Block_byref_object_copy__44;
      v82 = __Block_byref_object_dispose__44;
      v83 = 0;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __captureSource_handleDeviceNotification_block_invoke_4;
      v64[3] = &unk_1E799DD48;
      v64[4] = &v78;
      captureSource_safelyAccessStorage(v47, v64);
      v48 = v79[5];
      if (v48)
      {
        v62 = @"NewPropertyValue";
        v63 = v48;
        captureSource_postNotificationWithPayload(a2, @"PreferredPrimaryUnderlyingCaptureSource", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1]);
      }

      if (v47)
      {
        CFRelease(v47);
      }

LABEL_52:
      _Block_object_dispose(&v78, 8);
      return;
    }

    if ([a3 isEqualToString:0x1F21A6890])
    {
      v30 = kFigCaptureSourceNotification_FocusedAtMacro;
      goto LABEL_74;
    }

    if ([a3 isEqualToString:0x1F21A61B0])
    {
      v49 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v50 = qword_1ED8451C0;
      [v49 floatValue];

      [v50 updateWithPearlProjectorTemperature:?];
    }

    else
    {
      if (![a3 isEqualToString:0x1F21A6170])
      {
        if ([a3 isEqualToString:0x1F21A6DB0])
        {
          v60 = @"NewPropertyValue";
          v61 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v23 = kFigCaptureSourceNotification_ReactionsInProgressChangedNotification;
        }

        else
        {
          if ([a3 isEqualToString:0x1F21A6DD0])
          {
            v31 = @"SourceSuppressedGesture";
            v32 = a2;
            v33 = 0;
            goto LABEL_87;
          }

          if ([a3 isEqualToString:0x1F21A1D70])
          {
            v58 = @"NewPropertyValue";
            v59 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            v23 = kFigCaptureSourceNotification_StereoVideoCaptureStatusChanged;
          }

          else
          {
            if ([a3 isEqualToString:0x1F21A2270])
            {
              v30 = kFigCaptureSourceNotification_LensSmudgeDetectionStatusChanged;
              goto LABEL_74;
            }

            if ([a3 isEqualToString:0x1F21A6D90])
            {
              v56 = @"NewPropertyValue";
              v57 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
              v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
              v23 = kFigCaptureSourceNotification_SmartFramingSuggestedFieldOfViewChanged;
            }

            else
            {
              if (![a3 isEqualToString:0x1F21A6830])
              {
                if (![a3 isEqualToString:0x1F21A6870])
                {
                  if (![a3 isEqualToString:0x1F21A6850])
                  {
                    return;
                  }

                  v11 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
                  v26 = kFigCaptureSourceProperty_DockedTrackingActive;
                  goto LABEL_44;
                }

                v30 = kFigCaptureSourceNotification_PulseGeneratorStatusChanged;
                goto LABEL_74;
              }

              v54[0] = @"NewPropertyValue";
              v54[1] = @"DynamicAspectRatioRequestID";
              v55[0] = [a5 objectForKeyedSubscript:0x1F21A1ED0];
              v55[1] = [a5 objectForKeyedSubscript:0x1F21A5EF0];
              v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
              v23 = kFigCaptureSourceNotification_LiveReconfigurationForDynamicAspectRatioComplete;
            }
          }
        }

LABEL_32:
        v16 = *v23;
        v17 = a2;
        goto LABEL_16;
      }

      v51 = [a5 objectForKeyedSubscript:0x1F216A850];
      v52 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
      v53 = qword_1ED8451C0;
      [v52 floatValue];

      [v53 updateWithPortType:v51 imageSensorTemperature:?];
    }
  }
}

uint64_t OUTLINED_FUNCTION_361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return [v57 countByEnumeratingWithState:&a57 objects:&a41 count:16];
}

CMAttachmentBearerRef OUTLINED_FUNCTION_84_2@<X0>(opaqueCMSampleBuffer *a1@<X1>, uint64_t a2@<X8>)
{

  return [(BWNRFProcessorController *)v2 _newOutputSampleBufferWithSampleBuffer:a1 pixelBuffer:v4 formatDescriptionInOut:&v2[a2] metadataToMerge:v3];
}

BOOL OUTLINED_FUNCTION_54_2(NSObject *a1)
{
  v2 = STACK[0x210];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return [v47 countByEnumeratingWithState:v48 - 208 objects:&a47 count:16];
}

uint64_t OUTLINED_FUNCTION_54_7()
{
  *(v0 - 36) = 0;
  *(v0 - 37) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_54_10(NSObject *a1)
{
  v3 = *(v1 - 177);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_54_11(NSObject *a1)
{
  v3 = *(v1 - 157);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_54_12()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_108_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return [v4 setObject:0 forKeyedSubscript:v1];
}

CFMutableDictionaryRef OUTLINED_FUNCTION_136(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 4, a3, a4);
}

BOOL OUTLINED_FUNCTION_136_0(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return [v12 countByEnumeratingWithState:v13 - 160 objects:va count:16];
}

__n128 OUTLINED_FUNCTION_136_3()
{
  v1 = *&STACK[0x260];
  *(v0 - 256) = *&STACK[0x250];
  *(v0 - 240) = v1;
  result = *&STACK[0x270];
  *(v0 - 224) = *&STACK[0x270];
  return result;
}

uint64_t BWFigVideoCaptureDeviceSetClientProcessHasAccessToCamera(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  v5 = *(a1 + 588);
  v6 = [*(a1 + 600) tccIdentity];
  v7 = [*(a1 + 600) mediaEnvironment];
  v8 = *(a1 + 56);
  v19[0] = *(a1 + 40);
  v19[1] = v8;
  [v4 setCameraAccess:a2 deviceType:v5 clientAuditToken:v19 tccIdentity:v6 mediaEnvironment:v7 completionHandler:0];
  os_unfair_lock_unlock((a1 + 80));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(a1 + 656);
  result = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        BWFigVideoCaptureStreamSetClientProcessHasAccessToCamera(*(*(&v15 + 1) + 8 * v13++), a2);
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

uint64_t captureSource_setThermalLevelAndMaxTorchLevel(uint64_t a1, uint64_t a2, float a3)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (([objc_msgSend(*(a1 + 104) objectForKeyedSubscript:{@"Torch", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(*(a1 + 104), "objectForKeyedSubscript:", @"Flash"), "BOOLValue"))
  {
    *&v6 = a3;
    [*(a1 + 80) setMaxTorchLevel:v6];
  }

  result = [objc_msgSend(*(a1 + 104) objectForKeyedSubscript:{@"Sphere", "BOOLValue"}];
  if (result)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(a1 + 80) captureStreams];
    result = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11++) setSphereThermalLevel:a2];
        }

        while (v9 != v11);
        result = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v9 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return [v0 countByEnumeratingWithState:&STACK[0x3E0] objects:&STACK[0x360] count:16];
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return [v53 countByEnumeratingWithState:&a53 objects:&a37 count:16];
}

BOOL OUTLINED_FUNCTION_19_7(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = a42;
  v44 = STACK[0x280];
  v45 = STACK[0x240];
  v46 = STACK[0x238];

  return CGRectEqualToRect(*&a1, *&v43);
}

BOOL OUTLINED_FUNCTION_19_9(CGRect rect)
{

  return CGRectIsNull(rect);
}

uint64_t OUTLINED_FUNCTION_19_18()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_20()
{
  *(v0 - 52) = 0;
  *(v0 - 53) = 0;
  return qword_1ED844048;
}

BOOL OUTLINED_FUNCTION_19_23(NSObject *a1)
{
  v3 = *(v1 - 53);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_19_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return [v35 countByEnumeratingWithState:&a35 objects:&a19 count:16];
}

uint64_t OUTLINED_FUNCTION_19_26()
{
  v3 = *(v0 + *v1);

  return [v3 videoFormat];
}

uint64_t OUTLINED_FUNCTION_19_30()
{

  return [v0 objectAtIndexedSubscript:v1];
}

uint64_t OUTLINED_FUNCTION_19_31(uint64_t a1)
{

  return [v1 isEqual:a1];
}

CFTypeRef OUTLINED_FUNCTION_19_32(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

__n128 OUTLINED_FUNCTION_101_1()
{
  result = *(v0 - 112);
  *(v0 - 144) = result;
  *(v0 - 128) = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_101_2(int a1)
{
  if (v2 <= a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *(v1 + *v5);
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_101_4(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;

  dispatch_async(a1, (v2 - 40));
}

uint64_t OUTLINED_FUNCTION_70_3(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-16134 userInfo:0];
}

__n128 OUTLINED_FUNCTION_122_2()
{
  result = *v0;
  *(v1 - 176) = *v0;
  *(v1 - 160) = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:v34 - 128 objects:&a33 count:16];
}

uint64_t FigCaptureGetPIDVersionFromAuditToken(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pidversion(&v3);
}

__n128 OUTLINED_FUNCTION_107_1@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{

  return [a18 addObject:a1];
}

__n128 OUTLINED_FUNCTION_107_3()
{
  result = *v0;
  *v1 = *v0;
  v1[1].n128_u64[0] = *(v2 - 72);
  return result;
}

uint64_t captureSource_setFaceDrivenAEAFMode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    v5 = [v4 setFaceDetectionDrivenImageProcessingMode:a2];
    if (v5)
    {
      captureSource_setFaceDrivenAEAFMode_cold_1();
    }

    else
    {
      [*(DerivedStorage + 144) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", a2), @"FaceDrivenAEAFMode"}];
    }
  }

  else
  {
    captureSource_setFaceDrivenAEAFMode_cold_2();
    return 4294954516;
  }

  return v5;
}

double OUTLINED_FUNCTION_71_2()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  *(v0 - 52) = 0;
  *(v0 - 53) = 0;
  return qword_1ED844628;
}

BOOL OUTLINED_FUNCTION_71_4(NSObject *a1)
{
  v3 = *(v1 - 93);

  return os_log_type_enabled(a1, v3);
}

uint64_t fvcd_timeLapseCaptureConfigurationForStreamingImageIntent(int a1)
{
  if ((a1 & 0xFFFFFFFE) != 6)
  {
    return 0;
  }

  v6[4] = v1;
  v6[5] = v2;
  v3 = a1 == 7;
  v6[0] = [MEMORY[0x1E696AD98] numberWithFloat:*off_1E798C780];
  v5[1] = *off_1E798C788;
  v6[1] = [MEMORY[0x1E696AD98] numberWithBool:v3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
}

uint64_t captureSource_setDeskViewEnabled(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = *(DerivedStorage + 80);
    if (v4)
    {
      v5 = [objc_msgSend(v4 "captureStream")];
      v6 = *off_1E798BDF0;
      v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];

      return [v5 setPropertyIfSupported:v6 value:v7];
    }

    else
    {
      captureSource_setDeskViewEnabled_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    captureSource_setDeskViewEnabled_cold_2(&v10);
    return v10;
  }
}

uint64_t __captureSource_handleDeviceNotification_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Flash", "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Torch", "BOOLValue"}];
  return 0;
}

void captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(const void *a1, const void *a2, uint64_t a3, char a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
  }

  else
  {
    FigSimpleMutexLock();
  }

  v10 = [*(DerivedStorage + 144) objectForKeyedSubscript:a2];
  if (v10 && (v11 = CFRetain(v10)) != 0)
  {
    v12 = v11;
    if (a3)
    {
      v13 = 1;
      goto LABEL_10;
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v13 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v16, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/FigCaptureSource.m", 1468, @"LastShownDate:FigCaptureSource.m:1468", @"LastShownBuild:FigCaptureSource.m:1468", 0);
  }

  else
  {
    v14 = FigCaptureGetFrameworkRadarComponent();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v14, v16, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/FigCaptureSource.m", 1464, @"LastShownDate:FigCaptureSource.m:1464", @"LastShownBuild:FigCaptureSource.m:1464", 0);
    v13 = 0;
    v12 = 0;
  }

  free(v16);
LABEL_10:
  [*(DerivedStorage + 144) setObject:a3 forKeyedSubscript:a2];
  if ((a5 & 1) == 0)
  {
    FigSimpleMutexUnlock();
  }

  v17 = v13 ^ 1;
  if (!a3)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0 && ((a4 & 1) != 0 || !FigCFEqual()))
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setObject:v12 forKeyedSubscript:@"OldPropertyValue"];
    [v18 setObject:a3 forKeyedSubscript:@"NewPropertyValue"];
    captureSource_postNotificationWithPayload(a1, a2, v18);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t OUTLINED_FUNCTION_31_2()
{
  *(v0 - 124) = 0;
  *(v0 - 125) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return [v0 countByEnumeratingWithState:&STACK[0x7A0] objects:&STACK[0x720] count:16];
}

uint64_t OUTLINED_FUNCTION_31_9()
{
  v3 = *(v0 + *(v1 + 2984));

  return [v3 input];
}

uint64_t OUTLINED_FUNCTION_31_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return [v55 setObject:0 forKeyedSubscript:a55];
}

CMTime *OUTLINED_FUNCTION_31_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *time, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t timea)
{
  v35 = *(v33 - 128);

  return CMTimeConvertScale((v33 - 160), &timea, v35, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t OUTLINED_FUNCTION_31_18()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_43_4(void *a1, const char *a2)
{

  return [a1 objectAtIndexedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_43_9(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_43_13()
{
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14(void *a1, const char *a2, ...)
{
  va_start(va, a2);

  return [a1 arrayWithObjects:va count:2];
}

uint64_t csr_notificationFilter(int a1, int a2, void *a3, CFDictionaryRef theDict, __CFDictionary **a5)
{
  if (theDict)
  {
    v56 = CFDictionaryGetValue(theDict, @"FormatDescription_Serialized");
    number = CFDictionaryGetValue(theDict, @"MasterClockType");
  }

  else
  {
    v56 = 0;
    number = 0;
  }

  v55 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_SampleBuffer_SerializedSurface);
  xobj = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_Surface_Serialized);
  v52 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_PreviewSampleBuffer_SerializedSurface);
  v59 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_PreviewSurface_Serialized);
  v58 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_ThumbnailSurface_Serialized);
  v57 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_DepthDataSurface_Serialized);
  v7 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_ConstantColorConfidenceMapSurface_Serialized);
  v8 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_PortraitEffectsMatteSurface_Serialized);
  v9 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_HairSegmentationMatteSurface_Serialized);
  v10 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_SkinSegmentationMatteSurface_Serialized);
  v11 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_TeethSegmentationMatteSurface_Serialized);
  v12 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_GlassesSegmentationMatteSurface_Serialized);
  v13 = xpc_dictionary_get_value(a3, kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurface_Serialized);
  v14 = xpc_dictionary_get_value(a3, kFigCaptureSessionRemoteQueueUpdatedNotificationPayloadKey_RemoteQueueReceiver_Serialized);
  v65 = 0;
  v66 = 0;
  v64 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E695E480];
  FigXPCMessageCreateBlockBufferData();
  FigXPCMessageCreateBlockBufferData();
  if (!v56 && !v55 && !xobj && !v59 && !v58 && !v57 && !v7 && !v8 && !v9 && !v10 && !v11 && !v12 && !v13 && !v14 && !number)
  {
    return 0;
  }

  xdict = v14;
  v51 = v8;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    csr_notificationFilter_cold_1();
    goto LABEL_93;
  }

  if (v56)
  {
    value = 0;
    if (FigRemote_CreateFormatDescriptionFromSerializedDictionary())
    {
      csr_notificationFilter_cold_2();
      goto LABEL_93;
    }

    CFDictionarySetValue(MutableCopy, @"FormatDescription", value);
    CFRelease(value);
    CFDictionaryRemoveValue(MutableCopy, @"FormatDescription_Serialized");
  }

  v18 = number;
  if (v66 | v55)
  {
    if (v55)
    {
      v19 = IOSurfaceLookupFromXPCObject(v55);
      SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
      if (v19)
      {
        CFRelease(v19);
      }

      v18 = number;
      if (!SampleBufferFromSerializedAtomBlockBufferAndSurface)
      {
        goto LABEL_29;
      }
    }

    else if (!FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface())
    {
LABEL_29:
      CFDictionarySetValue(MutableCopy, @"SampleBuffer", v65);
      goto LABEL_30;
    }

    csr_notificationFilter_cold_3();
    goto LABEL_93;
  }

LABEL_30:
  if (xobj)
  {
    v21 = IOSurfaceLookupFromXPCObject(xobj);
    if (!v21)
    {
      csr_notificationFilter_cold_17();
      goto LABEL_93;
    }

    v22 = v21;
    CFDictionarySetValue(MutableCopy, @"Surface", v21);
    CFRelease(v22);
  }

  if (!(v64 | v52))
  {
    goto LABEL_39;
  }

  if (v52)
  {
    v23 = IOSurfaceLookupFromXPCObject(v52);
    v24 = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
    if (v23)
    {
      CFRelease(v23);
    }

    v18 = number;
    if (!v24)
    {
      goto LABEL_38;
    }

LABEL_79:
    csr_notificationFilter_cold_4();
    goto LABEL_93;
  }

  if (FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface())
  {
    goto LABEL_79;
  }

LABEL_38:
  CFDictionarySetValue(MutableCopy, @"PreviewSampleBuffer", cf);
LABEL_39:
  if (v59)
  {
    v25 = IOSurfaceLookupFromXPCObject(v59);
    if (!v25)
    {
      csr_notificationFilter_cold_16();
      goto LABEL_93;
    }

    v26 = v25;
    CFDictionarySetValue(MutableCopy, @"PreviewSurface", v25);
    CFRelease(v26);
  }

  if (v58)
  {
    v27 = IOSurfaceLookupFromXPCObject(v58);
    if (!v27)
    {
      csr_notificationFilter_cold_15();
      goto LABEL_93;
    }

    v28 = v27;
    CFDictionarySetValue(MutableCopy, @"ThumbnailSurface", v27);
    CFRelease(v28);
  }

  if (v57)
  {
    v29 = IOSurfaceLookupFromXPCObject(v57);
    if (!v29)
    {
      csr_notificationFilter_cold_14();
      goto LABEL_93;
    }

    v30 = v29;
    CFDictionarySetValue(MutableCopy, @"DepthDataSurface", v29);
    CFRelease(v30);
  }

  if (v7)
  {
    v31 = IOSurfaceLookupFromXPCObject(v7);
    if (!v31)
    {
      csr_notificationFilter_cold_13();
      goto LABEL_93;
    }

    v32 = v31;
    CFDictionarySetValue(MutableCopy, @"ConstantColorConfidenceMapSurface", v31);
    CFRelease(v32);
  }

  if (v51)
  {
    v33 = IOSurfaceLookupFromXPCObject(v51);
    if (!v33)
    {
      csr_notificationFilter_cold_12();
      goto LABEL_93;
    }

    v34 = v33;
    CFDictionarySetValue(MutableCopy, @"PortraitEffectsMatteSurface", v33);
    CFRelease(v34);
  }

  if (v9)
  {
    v35 = IOSurfaceLookupFromXPCObject(v9);
    if (!v35)
    {
      csr_notificationFilter_cold_11();
      goto LABEL_93;
    }

    v36 = v35;
    CFDictionarySetValue(MutableCopy, @"HairSegmentationMatteSurface", v35);
    CFRelease(v36);
  }

  if (v10)
  {
    v37 = IOSurfaceLookupFromXPCObject(v10);
    if (!v37)
    {
      csr_notificationFilter_cold_10();
      goto LABEL_93;
    }

    v38 = v37;
    CFDictionarySetValue(MutableCopy, @"SkinSegmentationMatteSurface", v37);
    CFRelease(v38);
  }

  if (v11)
  {
    v39 = IOSurfaceLookupFromXPCObject(v11);
    if (!v39)
    {
      csr_notificationFilter_cold_9();
      goto LABEL_93;
    }

    v40 = v39;
    CFDictionarySetValue(MutableCopy, @"TeethSegmentationMatteSurface", v39);
    CFRelease(v40);
  }

  if (v12)
  {
    v41 = IOSurfaceLookupFromXPCObject(v12);
    if (!v41)
    {
      csr_notificationFilter_cold_8();
      goto LABEL_93;
    }

    v42 = v41;
    CFDictionarySetValue(MutableCopy, @"GlassesSegmentationMatteSurface", v41);
    CFRelease(v42);
  }

  if (!v13)
  {
    goto LABEL_69;
  }

  v43 = IOSurfaceLookupFromXPCObject(v13);
  if (v43)
  {
    v44 = v43;
    CFDictionarySetValue(MutableCopy, @"DeferredPhotoProxySurface", v43);
    CFRelease(v44);
LABEL_69:
    if (v18)
    {
      v45 = csr_masterClockFromClockType(DerivedStorage, v18);
      if (!v45)
      {
        csr_notificationFilter_cold_6();
LABEL_95:
        v48 = 0;
        goto LABEL_96;
      }

      CFDictionarySetValue(MutableCopy, @"MasterClock", v45);
    }

    if (xdict)
    {
      value = 0;
      v46 = FigRemoteQueueReceiverCreateFromXPCObject(v15, xdict, &value);
      if (v46)
      {
        csr_notificationFilter_cold_5();
      }

      else
      {
        CFDictionarySetValue(MutableCopy, @"RemoteQueueReceiver", value);
        CFRelease(value);
      }

      v47 = a5;
      v48 = v46 != 0;
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  csr_notificationFilter_cold_7();
LABEL_93:
  v48 = 1;
LABEL_96:
  v47 = a5;
LABEL_97:
  if (v65)
  {
    CFRelease(v65);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  v49 = !v48;
  if (!MutableCopy)
  {
    v49 = 1;
  }

  if ((v49 & 1) == 0)
  {
    CFRelease(MutableCopy);
    MutableCopy = 0;
  }

  *v47 = MutableCopy;
  if (v48)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t csr_notificationFilter_0(int a1, CFTypeRef cf1)
{
  if (!CFEqual(cf1, @"ActiveFormat"))
  {
    return 0;
  }

  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v4 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v5 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/ClientServer/FigCaptureSourceRemote.m", 192, @"LastShownDate:FigCaptureSourceRemote.m:192", @"LastShownBuild:FigCaptureSourceRemote.m:192", 0);
  free(v5);
  return v4;
}

id cs_copyActiveCaptureDevice()
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v0 = qword_1ED8451D0;
  v1 = [qword_1ED8451D0 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *v11;
LABEL_3:
  v4 = 0;
  while (1)
  {
    if (*v11 != v3)
    {
      objc_enumerationMutation(v0);
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      v7 = [*(v6 + 80) device];
      FigSimpleMutexUnlock();
      if (v7)
      {
        return v7;
      }
    }

    if (v2 == ++v4)
    {
      v2 = [v0 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v2)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t cs_updateTimeOfFlightAFEnabledStatus()
{
  v0 = _MergedGlobals_13 & ~HIBYTE(_MergedGlobals_13) & 1;
  v1 = cs_copyActiveCaptureDevice();
  v2 = [v1 setProperty:*off_1E798A040 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v0)}];
  if (v2)
  {
    v10 = v2;
    cs_updateTimeOfFlightAFEnabledStatus_cold_1();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = qword_1ED8451D0;
    v4 = [qword_1ED8451D0 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __cs_updateTimeOfFlightAFEnabledStatus_block_invoke;
          v12[3] = &__block_descriptor_33_e200_i16__0__FigCaptureSourceStorage_qiCC____8I____OpaqueFigSimpleMutex__q____CFString__i______OpaqueFigCaptureSource_f___i__OpaqueFigFlashlight__iBBB__OpaqueFigSimpleMutex__BB__OpaqueFigCaptureSource____8l;
          v13 = v0;
          v9 = captureSource_safelyAccessStorage(v8, v12);
        }

        v10 = v9;
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

uint64_t __cs_updateTimeOfFlightAFEnabledStatus_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Position", "intValue"}];
  v5 = [objc_msgSend(*(a2 + 104) objectForKeyedSubscript:{@"Focus", "BOOLValue"}];
  if (v4 == 1 && v5 != 0)
  {
    [*(a2 + 80) setTimeOfFlightAFEnabled:*(a1 + 32)];
  }

  return 0;
}

uint64_t captureSession_checkClientSessionIsAllowedToRun(uint64_t a1, void *a2, _BYTE *a3, int *a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_assert_owner((DerivedStorage + 384));
  if (!*(DerivedStorage + 448))
  {
    v11 = *(DerivedStorage + 36);
    v22[0] = *(DerivedStorage + 20);
    v22[1] = v11;
    if (!FigCaptureAuditTokenIsValid(v22))
    {
      return 4294950893;
    }
  }

  v12 = cs_configurationUsesSourceType(a2, 1);
  if (*(DerivedStorage + 433))
  {
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (!v12 || (*(DerivedStorage + 400) & 1) == 0 && (*(DerivedStorage + 401) != 1 || *(DerivedStorage + 399) == 1) && (*(DerivedStorage + 416) & 1) == 0 && ![*(DerivedStorage + 424) count])
  {
    goto LABEL_24;
  }

  if (*(DerivedStorage + 400) == 1 && *(DerivedStorage + 397) != 1)
  {
    v13 = 4294950893;
    goto LABEL_25;
  }

  if (*(DerivedStorage + 401) == 1 && *(DerivedStorage + 399) != 1)
  {
    v13 = 4294950888;
    goto LABEL_25;
  }

  if (*(DerivedStorage + 416))
  {
    v13 = 4294950344;
    goto LABEL_25;
  }

  if ([*(DerivedStorage + 424) count])
  {
    v13 = 4294894120;
    goto LABEL_25;
  }

  if ((*(DerivedStorage + 433) & 1) == 0)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

LABEL_5:
  v13 = 0;
  *(DerivedStorage + 433) = 0;
LABEL_25:
  if (a3)
  {
    *a3 = *(DerivedStorage + 397);
  }

  if (a4)
  {
    if (*(DerivedStorage + 397) == 1)
    {
      v14 = *(DerivedStorage + 440);
      v15 = ([v14 isEqualToString:0x1F2187510] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", 0x1F2187530) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"LockScreen") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", 0x1F2187570) & 1) != 0 || *(DerivedStorage + 448) == 2;
    }

    else
    {
      v15 = cs_configurationContainsVideoSource(*(DerivedStorage + 504));
    }

    v16 = [+[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor](FigCaptureDeviceLockStateMonitor "sharedDeviceLockStateMonitor")];
    if (v15)
    {
      v19 = v16;
      v20 = *(DerivedStorage + 113);
      if (captureSession_clientIsCameraOrDerivative(a1))
      {
        IsVisualIntelligenceCamera = 1;
      }

      else
      {
        IsVisualIntelligenceCamera = captureSession_clientIsVisualIntelligenceCamera(a1);
      }

      if ((v19 & v20 & IsVisualIntelligenceCamera) != 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 3;
      }
    }

    else if (*(DerivedStorage + 397))
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    *a4 = v17;
  }

  if (a5)
  {
    *a5 = *(DerivedStorage + 403);
  }

  return v13;
}

void *cs_configurationUsesSourceType(void *result, int a2)
{
  if (result)
  {
    v3 = [result connectionConfigurations];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __cs_configurationUsesSourceType_block_invoke;
    v4[3] = &__block_descriptor_36_e50_B32__0__FigCaptureConnectionConfiguration_8Q16_B24l;
    v5 = a2;
    return ([v3 indexOfObjectPassingTest:v4] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

FigCaptureCameraSourcePipelineConfiguration *captureSession_createCameraSourcePipelineConfigurationFromParsedConfiguration(uint64_t a1, void *a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, float a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, char a15, uint64_t a16)
{
  v430 = __PAIR64__(a8, a7);
  v427 = __PAIR64__(a6, a4);
  v21 = a16;
  v495 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = [a2 stillImageConnectionConfiguration];
  v23 = [a2 metadataObjectConnectionConfigurations];
  v465 = [a2 videoPreviewSinkConnectionConfiguration];
  v24 = [a2 videoCaptureConnectionConfigurations];
  newValue = [a2 previewDerivedConnectionConfigurations];
  v439 = [a2 depthDataConnectionConfiguration];
  v25 = [a2 cameraConfiguration];
  v475 = [a2 videoDataConnectionConfigurations];
  v401 = [a2 pointCloudDataConnectionConfigurations];
  v26 = FigCaptureConnectionConfigurationWithSinkType([a2 videoCaptureConnectionConfigurations], 4);
  v468 = [v25 requiredFormat];
  v445 = [v22 irisSinkConfiguration];
  IntAttribute = FigCaptureSourceGetIntAttribute([v25 source], 0x1F21A0530, &v495);
  if (!v495)
  {
    HIDWORD(v421) = IntAttribute;
    HIDWORD(v395) = a3;
    v462 = v22;
    v398 = a5;
    v452 = v26;
    v480 = v24;
    v436 = FigCaptureConnectionConfigurationWithSinkType(v24, 4);
    HIDWORD(v456) = cs_cinematicVideoCaptureEnabled(a2);
    v442 = a2;
    v28 = cs_pulseGeneratorFrameRate(a2);
    v366 = v29;
    v369 = v28;
    memset(v494, 0, sizeof(v494));
    obj = v23;
    v30 = OUTLINED_FUNCTION_73_3(v28, v29, v494, v493);
    if (v30)
    {
      v33 = v30;
      v31 = 0;
      v32 = 0;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v51)
          {
            objc_enumerationMutation(v23);
          }

          v35 = *(*(&v494[0] + 1) + 8 * i);
          if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v35))
          {
            BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v35 "sourceConfiguration")], 0x1F219FFF0, &v495);
            v31 |= BoolAttribute;
            v32 |= BoolAttribute ^ 1;
          }
        }

        v33 = [v23 countByEnumeratingWithState:v494 objects:v493 count:16];
      }

      while (v33);
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    if (BWDeviceSupportsCoreMediaFaceTracking())
    {
      v37 = [v465 previewDepthFilterRenderingEnabled] & (HIDWORD(v456) ^ 1);
      v31 &= v37 ^ 1;
      LODWORD(v421) = v37;
      v32 |= v37;
    }

    else
    {
      LODWORD(v421) = 0;
    }

    v38 = v445;
    if ([v25 source])
    {
      v41 = FigCaptureSourceGetBoolAttribute([v25 source], @"GeometricDistortionCorrection", 0);
      v420 = [v468 intelligentDistortionCorrectionSupported];
      if (v41)
      {
        v39 = [v25 geometricDistortionCorrectionEnabled];
        v41 = [v25 geometricDistortionCorrectionEnabled];
        v40 = 1;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }
    }

    else
    {
      v420 = [v468 intelligentDistortionCorrectionSupported];
      v39 = 0;
      v40 = 0;
      v41 = 0;
    }

    v449 = a1;
    if (([v25 cinematicFramingEnabled] & 1) != 0 || (objc_msgSend(v25, "deskCamEnabled") & 1) != 0 || objc_msgSend(v25, "manualCinematicFramingEnabled"))
    {
      if ([v25 source])
      {
        v42 = FigCaptureSourceGetBoolAttribute([v25 source], @"geometricDistortionCorrectionForSmartCropEnabled", 0);
      }

      else
      {
        v42 = 0;
      }

      if ([objc_msgSend(v25 "requiredFormat")])
      {
        v39 = 0;
        if (![v25 cinematicFramingEnabled])
        {
          v43 = 0;
          HIDWORD(v471) = 0;
          goto LABEL_55;
        }

        v43 = 0;
        HIDWORD(v471) = 0;
        if (((v40 | v42) & 1) == 0)
        {
          goto LABEL_55;
        }

        v39 = 1;
LABEL_33:
        v498 = 0u;
        v499 = 0u;
        v500 = 0u;
        v501 = 0u;
        OUTLINED_FUNCTION_55_10();
        v44 = [v480 countByEnumeratingWithState:? objects:? count:?];
        if (v44)
        {
          v46 = v44;
          HIDWORD(v471) = 0;
LABEL_38:
          v47 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_49_7();
            if (!v51)
            {
              objc_enumerationMutation(v480);
            }

            v48 = *(*(&v498 + 1) + 8 * v47);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = [v48 sinkConfiguration];
              if ([v49 sinkType] == 4 || objc_msgSend(v49, "sinkType") == 6)
              {
                v50 = [v48 videoStabilizationType] == 2 ? objc_msgSend(objc_msgSend(v48, "sourceConfiguration"), "proResRawCaptureEnabled") : 0;
                HIDWORD(v471) = 1;
                v51 = [v48 videoStabilizationType] != 4 && v50 == 0;
                if (v51)
                {
                  break;
                }
              }
            }

            if (v46 == ++v47)
            {
              OUTLINED_FUNCTION_55_10();
              v46 = [v480 countByEnumeratingWithState:? objects:? count:?];
              if (v46)
              {
                goto LABEL_38;
              }

              v45 = HIDWORD(v471) ^ 1;
              goto LABEL_35;
            }
          }
        }

        else
        {
          v45 = 1;
LABEL_35:
          HIDWORD(v471) = v45;
        }

        v43 = 1;
        v38 = v445;
        a1 = v449;
LABEL_55:
        LODWORD(v416) = v43;
        if ([v468 isStillImageStabilizationSupported])
        {
          HIDWORD(v388) = 1;
        }

        else
        {
          HIDWORD(v388) = [v468 configureForStillImageStabilizationSupport];
        }

        shouldEnableGreenGhostMitigation = cs_shouldEnableGreenGhostMitigation(v25);
        if ([objc_msgSend(v25 "requiredFormat")] > 0)
        {
          v53 = 1;
        }

        else
        {
          v53 = shouldEnableGreenGhostMitigation;
        }

        HIDWORD(v412) = v53;
        if (v39)
        {
          v54 = v462;
          if ([v468 gdcInStillImageSinkPipelineSupported])
          {
            LODWORD(v412) = FigCaptureSourceGetBoolAttribute([v25 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0);
          }

          else
          {
            LODWORD(v412) = 0;
          }
        }

        else
        {
          LODWORD(v412) = 0;
          v54 = v462;
        }

        HIDWORD(v384) = [v38 optimizesImagesForOfflineVideoStabilization];
        if ([v38 irisMovieCaptureEnabled])
        {
          LODWORD(v384) = [v38 irisMovieAutoTrimMethod] != 0;
        }

        else
        {
          LODWORD(v384) = 0;
        }

        HIDWORD(v380) = [v465 previewDepthFilterRenderingEnabled];
        if ([FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:v480 doingFaceTracking:v32 & 1]|| [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:newValue doingFaceTracking:v32 & 1])
        {
          LODWORD(v380) = 1;
        }

        else
        {
          if (v54)
          {
            v492 = v54;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v492 count:1];
          }

          else
          {
            v55 = 0;
          }

          LODWORD(v380) = [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:v55 doingFaceTracking:v32 & 1];
          v54 = v462;
        }

        HIDWORD(v376) = FigCaptureMetadataObjectConfigurationsRequireOfflineVideoStabilizationMotionData(obj);
        LODWORD(v395) = captureSession_clientIsCameraOrDerivative(a1);
        HIDWORD(v408) = captureSession_clientSetsUserInitiatedCaptureRequestTime();
        v56 = FigCaptureZeroShutterLagEnabled(v25, v38, [v54 stillImageSinkConfiguration], SBYTE4(v408));
        LODWORD(v408) = FigCaptureSoftISPEnabled(v25, [v54 sinkConfiguration]);
        if (v408)
        {
          v57 = v468;
          if ([v468 isDeepFusionSupported])
          {
            v58 = [objc_msgSend(v54 "irisSinkConfiguration")] == 3;
          }

          else
          {
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
          v57 = v468;
        }

        if ([objc_msgSend(v54 "irisSinkConfiguration")])
        {
          v59 = 1;
        }

        else
        {
          v59 = [objc_msgSend(v54 "irisSinkConfiguration")] | v58;
        }

        LODWORD(v376) = v59;
        if ([v25 geometricDistortionCorrectionEnabled] & v420)
        {
          LODWORD(v404) = 1;
        }

        else
        {
          LODWORD(v404) = [objc_msgSend(v54 "irisSinkConfiguration")];
        }

        HIDWORD(v392) = FigCaptureSourceGetBoolAttribute([v25 source], 0x1F219F9F0, 0);
        v60 = 0.0;
        if (cs_shouldEnableOverCapture(v25))
        {
          [v57 spatialOverCapturePercentage];
          v60 = v61;
        }

        if ([v25 backgroundBlurEnabled] & 1) != 0 || (objc_msgSend(v25, "studioLightingEnabled"))
        {
          LOBYTE(v62) = 0;
        }

        else
        {
          v62 = [v25 backgroundReplacementEnabled] ^ 1;
        }

        HIDWORD(v404) = v56;
        if ([v57 isHighPhotoQualitySupported])
        {
          LODWORD(v388) = ([v445 maxQualityPrioritization] > 1) & v62;
        }

        else
        {
          LODWORD(v388) = 0;
        }

        HIDWORD(v416) = v39;
        v63 = [MEMORY[0x1E695DF70] array];
        v64 = [v54 videoStabilizationType];
        if (v64)
        {
          [v54 videoStabilizationType];
          v64 = [v63 addObject:{objc_msgSend(OUTLINED_FUNCTION_4(), "numberWithInt:")}];
        }

        v490 = 0u;
        v491 = 0u;
        v488 = 0u;
        v489 = 0u;
        v72 = OUTLINED_FUNCTION_104_2(v64, v65, v66, v67, v68, v69, v70, v71, v336, v340, v344, v348, v352, v358, v362, v366, v369, v372, v376, v380, v384, v388, v392, v395, v398, v401, v404, v408, v412, v416, v421, a16, v427, v430, newValue, v436, v439, v442, v25, v449, v452, v456, DerivedStorage, v462, v465, v468, v471, v475, obj, v480);
        if (v72)
        {
          v73 = v72;
          v74 = *v489;
          do
          {
            for (j = 0; j != v73; ++j)
            {
              if (*v489 != v74)
              {
                objc_enumerationMutation(v481);
              }

              v76 = *(*(&v488 + 1) + 8 * j);
              objc_opt_class();
              OUTLINED_FUNCTION_88_3();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                isKindOfClass = [v76 videoStabilizationType];
                if (isKindOfClass)
                {
                  isKindOfClass = [v63 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v76, "videoStabilizationType"))}];
                }
              }
            }

            v73 = OUTLINED_FUNCTION_104_2(isKindOfClass, v78, v79, v80, v81, v82, v83, v84, v337, v341, v345, v349, v353, v359, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476, obja, v481);
          }

          while (v73);
        }

        v85 = v450;
        v86 = v466;
        shouldEnablePreviewStabilization = cs_shouldEnablePreviewStabilization(v450, v466);
        v93 = 1;
        v94 = v446;
        if ((shouldEnablePreviewStabilization & 1) == 0)
        {
          memset(v487, 0, 64);
          v95 = OUTLINED_FUNCTION_74_5(shouldEnablePreviewStabilization, v88, v487, v486, v89, v90, v91, v92, v337, v341, v345, v349, v353, v359, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476);
          if (v95)
          {
            v96 = v95;
            while (2)
            {
              for (k = 0; k != v96; ++k)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v51)
                {
                  objc_enumerationMutation(v476);
                }

                v98 = cs_shouldEnablePreviewStabilization(v85, *(*(&v487[0] + 1) + 8 * k));
                if (v98)
                {
                  v93 = 1;
                  goto LABEL_120;
                }
              }

              v96 = OUTLINED_FUNCTION_74_5(v98, v99, v487, v486, v100, v101, v102, v103, v337, v341, v345, v349, v353, v359, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476);
              if (v96)
              {
                continue;
              }

              break;
            }

            v93 = 0;
LABEL_120:
            v86 = v466;
          }

          else
          {
            v93 = 0;
          }
        }

        HIDWORD(v373) = v93;
        v104 = cs_shouldEnableLowLatencyStabilization(v86);
        v105 = cs_shouldEnableLowLatencyStabilization(v453);
        if (v104)
        {
          v111 = 2;
        }

        else
        {
          v111 = 1;
        }

        v112 = v104 | v105;
        memset(v485, 0, 32);
        if (v105)
        {
          v113 = v111;
        }

        else
        {
          v113 = v104;
        }

        memset(&v485[2], 0, 32);
        v114 = OUTLINED_FUNCTION_74_5(v105, v106, v485, v484, v107, v108, v109, v110, v337, v341, v345, v349, v353, v359, v363, v367, v370, v373, v377, v381, v385, v389, v393, v396, v399, v402, v405, v409, v413, v417, v422, v425, v428, v431, newValuea, v437, v440, v443, v446, v450, v453, v457, v460, v463, v466, v469, v472, v476);
        if (v114)
        {
          v115 = v114;
          do
          {
            for (m = 0; m != v115; ++m)
            {
              OUTLINED_FUNCTION_21_20();
              if (!v51)
              {
                objc_enumerationMutation(v477);
              }

              v117 = cs_shouldEnableLowLatencyStabilization(*(*(&v485[0] + 1) + 8 * m));
              v112 |= v117;
              v113 += v112 & 1;
            }

            v115 = OUTLINED_FUNCTION_74_5(v117, v118, v485, v484, v119, v120, v121, v122, v338, v342, v346, v350, v354, v360, v364, v368, v371, v374, v378, v382, v386, v390, v394, v397, v400, v403, v406, v410, v414, v418, v423, v426, v429, v432, newValueb, v438, v441, v444, v447, v451, v454, v458, v461, v464, v467, v470, v473, v477);
          }

          while (v115);
        }

        v123 = [v477 count];
        v124 = v467;
        v125 = v467 != 0;
        if (v454)
        {
          ++v125;
        }

        LODWORD(v394) = v113 == v125 + v123;
        v26 = objc_alloc_init(FigCaptureCameraSourcePipelineConfiguration);
        v126 = [v94 lensSmudgeDetectionEnabled];
        if ([v94 source])
        {
          HIDWORD(v360) = v126;
          v496 = 0;
          v128 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
          v355 = 0x310u >> v128;
          v357 = v128 < 0xA;
          LODWORD(v360) = [v94 imageControlMode];
          v498 = 0u;
          v499 = 0u;
          v500 = 0u;
          v501 = 0u;
          OUTLINED_FUNCTION_55_10();
          v129 = [v63 countByEnumeratingWithState:? objects:? count:?];
          if (v129)
          {
            v131 = v129;
            while (2)
            {
              for (n = 0; n != v131; ++n)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v51)
                {
                  objc_enumerationMutation(v63);
                }

                if (+[FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:](FigCaptureVISPipeline, [*(*(&v498 + 1) + 8 * n) intValue]))
                {
                  v130 = 1;
                  goto LABEL_149;
                }
              }

              OUTLINED_FUNCTION_55_10();
              v131 = [v63 countByEnumeratingWithState:? objects:? count:?];
              if (v131)
              {
                continue;
              }

              break;
            }

            v130 = 0;
LABEL_149:
            v94 = v447;
            v124 = v467;
          }

          else
          {
            v130 = 0;
          }

          HIDWORD(v350) = v357 & v355;
          HIDWORD(v354) = [v94 cinematicFramingEnabled];
          LODWORD(v354) = [v94 deskCamEnabled];
          LODWORD(v350) = [v94 manualCinematicFramingEnabled];
          HIDWORD(v346) = FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(v94 "requiredFormat")]);
          v133 = [v94 source];
          v134 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v134)
          {
            v134(v133, @"AttributesDictionary", *MEMORY[0x1E695E480], &v496);
            v135 = v496;
          }

          else
          {
            v135 = 0;
          }

          v136 = [objc_msgSend(v135 objectForKeyedSubscript:{@"ISPMotionData", "BOOLValue"}];
          v137 = [objc_msgSend(v496 objectForKeyedSubscript:{@"Sphere", "BOOLValue"}];

          v138 = BYTE4(v386) | BYTE4(v378) | v130;
          v139 = BYTE4(v374) | v378 | v382 | BYTE4(v350) | v138 | v112 | BYTE4(v346);
          if (v360 == 4)
          {
            v138 = 1;
          }

          v140 = BYTE4(v374) | BYTE4(v360) | BYTE4(v354) | v354 | v350 | v378 | v382 | BYTE4(v382) | v386 | v138 | v112 | BYTE4(v346);
          if (v360 == 4)
          {
            v141 = 1;
          }

          else
          {
            v141 = v130;
          }

          v142 = v139 & v137;
          v143 = v142 | ~v140 | v136;
          v144 = v140 & 1;
          if (v142)
          {
            v144 = 2;
          }

          if (v141)
          {
            v145 = 3;
          }

          else
          {
            v145 = 0;
          }

          if (v143)
          {
            v127 = v144;
          }

          else
          {
            v127 = v145;
          }
        }

        else
        {
          v127 = 0;
        }

        [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMotionAttachmentsSource:v127];
        v146 = OUTLINED_FUNCTION_9_19();
        [(FigCaptureMovieFileSinkPipelineConfiguration *)v146 setPrimaryVideoConnectionConfiguration:v147];
        if (![v94 depthDataDeliveryEnabled])
        {
          v150 = 0;
LABEL_198:
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthType:v150];
          [v470 maxContinuousZoomFactorForDepthDataDelivery];
          v166 = v165;
          if (v165 > 0.0)
          {
            v167 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
            if (v167 <= 9 && ((1 << v167) & 0x310) != 0)
            {
              v168 = v166;
              v169 = 0.1999;
            }

            else
            {
              v168 = v166;
              v169 = 0.0999;
            }

            v166 = v168 + v169;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMaxContinuousZoomFactorForDepthDataDelivery:v166];
          v170 = [v94 sourceType] == 1 && (objc_msgSend(v94, "videoStabilizationStrength") == 3 || objc_msgSend(v94, "videoStabilizationStrength") == 4);
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setActionCameraEnabled:v170];
          if (v94)
          {
            [v94 maxExposureDurationClientOverride];
          }

          else
          {
            memset(&v483, 0, sizeof(v483));
          }

          cf[0] = v483;
          v171 = [objc_msgSend(v94 requiredFormat];
          v172 = [v94 requiredMaxFrameRate];
          v174 = FigCaptureFrameRateAsFloat(v172, v173);
          v175 = HIDWORD(v171);
          if (v171 == 3840 && v175 == 2160 || v171 == 2160 && v175 == 3840)
          {
            v176 = [v94 requiredMaxFrameRate];
            v178 = v177;
            v179 = [v94 requiredMinFrameRate];
            LODWORD(v176) = FigCaptureFrameRateEqual(v176, v178, v179, v180);
            IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(v451);
            if (v176 && llroundf(v174) == 24 && IsCameraOrDerivative)
            {
              CMTimeMake(&v482, 1, 50);
              cf[0] = v482;
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMaxExposureDurationFrameworkOverride:?];
            }
          }

          else
          {
            captureSession_clientIsCameraOrDerivative(v451);
          }

          v182 = [v94 source];
          if (*(v461 + 88) && (v183 = v182, [&unk_1F2248D30 containsObject:?]))
          {
            cf[0].value = 0;
            v184 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v184)
            {
              v184(v183, 0x1F21A0C70, *MEMORY[0x1E695E480], cf);
            }

            v185 = FigCFEqual() != 0;
            if (cf[0].value)
            {
              CFRelease(cf[0].value);
            }
          }

          else
          {
            v185 = 0;
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v26 setOfflineVISEnabled:v185];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setCoreMediaFaceTrackingEnabled:?];
          [v124 setCoreMediaFaceTrackingEnabled:v423 & 1];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setIspFaceTrackingEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageGeometricDistortionCorrectionEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoCaptureGeometricDistortionCorrectionEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPreviewGeometricDistortionCorrectionEnabled:v418];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageGeometricDistortionCorrectionExpansionCoversOverscan:v414];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageLocalHistogramClippingDataMetadataEnabled:?];
          v186 = *(v461 + 816) == 1 && [v63 count] != 0;
          v187 = v454;
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setOfflineVISEnabled:v186];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZeroShutterLagEnabled:?];
          if (((HIDWORD(v406) | HIDWORD(v410) ^ 1) & 1) == 0)
          {
            [v470 configureForStillImageStabilizationSupport];
          }

          v188 = OUTLINED_FUNCTION_9_19();
          [(FigCaptureCameraSourcePipelineConfiguration *)v188 setConfigureForZeroShutterLagSupport:v189];
          if (SHIDWORD(v423) < 3)
          {
            v190 = 0;
          }

          else
          {
            v190 = [v470 isSIFRSupported] & (BYTE4(v390) | v390);
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForSIFRStillImageCaptureIfAvailable:v190];
          v191 = [objc_msgSend(v464 "irisSinkConfiguration")];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSoftISPEnabled:v410];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 softISPEnabled];
          OUTLINED_FUNCTION_96_2();
          if ((v193 & 1) == 0)
          {
            v192 = [v470 configureForSoftISPSupport];
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSensorRawStillImageOutputsEnabledIfAvailable:v192];
          if (HIDWORD(v410))
          {
            v194 = [v470 configureForSoftISPSupport];
          }

          else
          {
            v194 = 0;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForSoftISPSupport:v194];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setEnableStillImageSensorOverscanIfAvailable:v406];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setOverCapturePercentage:v60];
          v195 = v60 > 0.0;
          if (!((v60 > 0.0) | (BYTE4(v410) ^ 1) & 1))
          {
            v195 = [v470 configureForSpatialOverCaptureSupport];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v26 setSemanticStyleRenderingEnabled:v195];
          [objc_msgSend(v464 "irisSinkConfiguration")];
          OUTLINED_FUNCTION_96_2();
          if ((v197 & 1) == 0)
          {
            v196 = [v470 configureForDigitalFlashSupport];
          }

          [(FigCaptureMovieFileSinkPipelineConfiguration *)v26 setP3ToBT2020ConversionEnabled:v196];
          [objc_msgSend(v464 "irisSinkConfiguration")];
          OUTLINED_FUNCTION_96_2();
          if ((v199 & 1) == 0)
          {
            v198 = [v470 configureForStereoPhotoCaptureSupport];
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForStereoPhotoCaptureSupport:v198];
          [v94 depthDataDeliveryEnabled];
          OUTLINED_FUNCTION_96_2();
          if ((v201 & 1) == 0)
          {
            v200 = [v470 configureForDepthDataDelivery];
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForDepthDataDeliverySupport:v200];
          if (FigCaptureCurrentProcessIsCameracaptured() && os_variant_is_darwinos() && [v94 imageControlMode])
          {
            v202 = [v94 imageControlMode];
            goto LABEL_266;
          }

          if (!v94)
          {
            goto LABEL_264;
          }

          if ([objc_msgSend(v94 "requiredFormat")])
          {
            v202 = 0;
            goto LABEL_266;
          }

          v500 = 0u;
          v501 = 0u;
          v498 = 0u;
          v499 = 0u;
          OUTLINED_FUNCTION_55_10();
          v211 = OUTLINED_FUNCTION_74_5(v203, v204, v205, v206, v207, v208, v209, v210, v338, v342, v346, v350, v354, v360, v364, v368, v371, v374, v378, v382, v386, v390, v394, v397, v400, v403, v406, v410, v414, v418, v423, v426, v429, v432, newValueb, v438, v441, v444, v447, v451, v454, v458, v461, v464, v467, v470, v473, v477);
          if (v211)
          {
            v212 = v211;
            while (2)
            {
              for (ii = 0; ii != v212; ++ii)
              {
                OUTLINED_FUNCTION_6_30();
                if (!v51)
                {
                  objc_enumerationMutation(v477);
                }

                if (![objc_msgSend(*(*(&v498 + 1) + 8 * ii) "videoDataSinkConfiguration")])
                {
                  v202 = 2;
                  goto LABEL_266;
                }
              }

              OUTLINED_FUNCTION_55_10();
              v212 = OUTLINED_FUNCTION_74_5(v214, v215, v216, v217, v218, v219, v220, v221, v339, v343, v347, v351, v356, v361, v365, v368, v371, v375, v379, v383, v387, v391, v394, v397, v400, v403, v407, v411, v415, v419, v424, v426, v429, v432, newValueb, v438, v441, v444, v448, v451, v455, v458, v461, v464, v467, v470, v474, v477);
              v202 = 1;
              if (v212)
              {
                continue;
              }

              break;
            }
          }

          else
          {
LABEL_264:
            v202 = 1;
          }

LABEL_266:
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setAutoImageControlMode:v202];
          cs_shouldEnableVideoHDRImageStatisticsFromConnectionConfigurations(v470, v438, v477);
          v222 = OUTLINED_FUNCTION_10_29();
          [(FigCaptureCameraSourcePipelineConfiguration *)v222 setVideoHDRImageStatisticsEnabled:v223];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setGraphContainsMultipleVideoSources:v429];
          v224 = [objc_msgSend(v464 "irisSinkConfiguration")];
          v225 = 0.1;
          if (!v224)
          {
            v225 = 0.0;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setAdditionalVISOverscanWhenRecording:v225];
          if (FigCaptureMetadataObjectConfigurationsRequiresLumaHistograms(obja))
          {
            ShouldIncludeDiagnosticMetadata = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
          }

          else
          {
            ShouldIncludeDiagnosticMetadata = 0;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setLumaHistogramsEnabled:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setContinuityCameraIsWired:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setContinuityCameraClientDeviceClass:v432];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setClientIsVOIP:?];
          [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSuppressVideoEffects:a10];
          if (!v191)
          {
LABEL_272:
            v227 = -[FigCaptureCameraSourcePipeline colorSpaceProperties]([*(v461 + 784) cameraSourcePipelineWithSourceID:{objc_msgSend(objc_msgSend(v444, "cameraConfiguration"), "sourceID")}]);
            shouldEnableVideoSTF = cs_shouldEnableVideoSTF(v481, SBYTE4(v458), v227);
            v229 = [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(v94 "source")];
            v230 = [v470 isVideoSTFMetadataEnabled];
            v231 = 0;
            if (v230)
            {
              v232 = v191 ^ 1 | v229;
              v233 = v467;
              if (v232)
              {
                v231 = [v94 imageControlMode] != 4;
              }
            }

            else
            {
              v233 = v467;
            }

            [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoSTFMetadataEnabled:?];
            if (v191 && [objc_msgSend(v233 "videoPreviewSinkConfiguration")] && objc_msgSend(v470, "isStudioAndContourPreviewRenderingSupported"))
            {
              [objc_msgSend(objc_msgSend(v233 "sourceConfiguration")];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStreamingForegroundSegmentationEnabled:?];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setIspFaceTrackingEnabled:?];
            }

            if ([v94 depthDataDeliveryEnabled] && objc_msgSend(objc_msgSend(v94, "depthDataFormat"), "RGBIRStereoFusionSupported"))
            {
              [objc_msgSend(v233 "videoPreviewSinkConfiguration")];
              v234 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v234 setRGBIRStereoFusionEnabled:v235];
            }

            if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 RGBIRStereoFusionEnabled])
            {
              if (FigCapturePlatformIdentifier() >= 8)
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionMinDepthThresholdMM:?];
                if (FigCapturePlatformIdentifier() > 8 || [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")])
                {
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionMaxDepthThresholdMM:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionFixedDepthThresholdMM:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRGBIRStereoFusionFixedDepthValueMM:?];
                }
              }
            }

            if (HIDWORD(v458))
            {
              if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType]== 2 || [(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType]== 1)
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthDimensionsOverride:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStrictDepthModePreferred:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthOutputEnabled:?];
              }

              else if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType]== 3)
              {
                v325 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v325 setVideoCaptureGeometricDistortionCorrectionEnabled:v326];
                v327 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v327 setPreviewGeometricDistortionCorrectionEnabled:v328];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setCaptureDimensionsForFSDNetSecondary:?];
              }

              else
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 depthType];
              }

              v236 = FigCaptureSourceGetBoolAttribute([v94 source], 0x1F21A0010, 0);
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMidFrameSynchronizationEnabled:?];
              v237 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v237 setConfigureForSIFRStillImageCaptureIfAvailable:v238];
              v239 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v239 setConfigureForZeroShutterLagSupport:v240];
              v241 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v241 setSemanticStyleRenderingEnabled:v242];
              v243 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureMovieFileSinkPipelineConfiguration *)v243 setP3ToBT2020ConversionEnabled:v244];
              v245 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v245 setConfigureForSoftISPSupport:v246];
              v247 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v247 setSensorRawStillImageOutputsEnabledIfAvailable:v248];
              v249 = 1;
            }

            else
            {
              v249 = [v444 cameraCalibrationDataConnectionConfigurations] != 0;
            }

            [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStreamingCameraCalibrationDataDeliveryEnabled:v249];
            v250 = [v187 stereoVideoCaptureEnabled];
            if ((v250 & HIDWORD(v458)) != 1 && ((v251 = v250, v252 = OUTLINED_FUNCTION_9_19(), -[FigCaptureCameraSourcePipelineConfiguration setStereoVideoCaptureEnabled:](v252, v253), !v251) || [v187 videoStabilizationMethod] == 2 || objc_msgSend(v187, "videoStabilizationMethod") == 3 || objc_msgSend(v187, "videoStabilizationMethod") == 5))
            {
              if ([(FigCaptureCameraSourcePipelineConfiguration *)v26 stereoVideoCaptureEnabled])
              {
                v254 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v254 setVideoCaptureGeometricDistortionCorrectionEnabled:v255];
                v256 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v256 setPreviewGeometricDistortionCorrectionEnabled:v257];
                v258 = FigCaptureSourceGetBoolAttribute([v94 source], 0x1F21A0010, 0);
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setMidFrameSynchronizationEnabled:?];
                v259 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v259 setConfigureForSIFRStillImageCaptureIfAvailable:v260];
                v261 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v261 setConfigureForZeroShutterLagSupport:v262];
                v263 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureMovieFileSinkPipelineConfiguration *)v263 setSemanticStyleRenderingEnabled:v264];
                v265 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureMovieFileSinkPipelineConfiguration *)v265 setP3ToBT2020ConversionEnabled:v266];
                v267 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v267 setConfigureForSoftISPSupport:v268];
                v269 = OUTLINED_FUNCTION_23_15();
                [(FigCaptureCameraSourcePipelineConfiguration *)v269 setSensorRawStillImageOutputsEnabledIfAvailable:v270];
              }

              if ((v458 & 0x100000000) != 0 || [(FigCaptureCameraSourcePipelineConfiguration *)v26 stereoVideoCaptureEnabled])
              {
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 midFrameSynchronizationEnabled];
                v271 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v271 setMidFrameSynchronizationEnabled:v272];
              }

              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setCameraConfiguration:v94];
              [v444 multiCamClientCompositingPrimaryCameraVideoStabilizationStrength];
              v273 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v273 setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:v274];
              [v444 connectionConfigurations];
              v275 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v275 setConnectionConfigurations:v276];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoPreviewSinkConnectionConfiguration:v233];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPreviewDerivedConnectionConfigurations:?];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setVideoCaptureConnectionConfigurations:v481];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageConnectionConfiguration:v464];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDepthDataConnectionConfiguration:v441];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPointCloudDataConnectionConfigurations:v403];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setClientIsCameraOrDerivative:v397];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setDeferredTimeOfFlightNodePrepareEnabled:?];
              v277 = (v397 & 0x100000000) != 0 || FigCaptureFrameRateIsValidRational(v371, v368);
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setClockSynchronizationEnabled:v277];
              v278 = OUTLINED_FUNCTION_23_15();
              [(FigCaptureCameraSourcePipelineConfiguration *)v278 setDepthConversionEnabled:v279];
              [v444 visionDataConnectionConfigurations];
              v280 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v280 setVisionDataConnectionConfigurations:v281];
              [v444 metadataObjectConnectionConfigurations];
              v282 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v282 setMetadataObjectConnectionConfigurations:v283];
              [v444 movieFileDetectedObjectMetadataConnectionConfigurations];
              v284 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v284 setMovieFileDetectedObjectMetadataConnectionConfigurations:v285];
              +[FigCaptureCameraParameters stillImageMaxLossyCompressionLevel];
              v286 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v286 setStillImageMaxLossyCompressionLevel:v287];
              +[FigCaptureCameraParameters previewMaxLossyCompressionLevel];
              v288 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v288 setPreviewMaxLossyCompressionLevel:v289];
              +[FigCaptureCameraParameters videoDataMaxLossyCompressionLevel];
              v290 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v290 setVideoDataMaxLossyCompressionLevel:v291];
              +[FigCaptureCameraParameters movieFileMaxLossyCompressionLevelForPixelFormat:](FigCaptureCameraParameters, "movieFileMaxLossyCompressionLevelForPixelFormat:", [v470 format]);
              v292 = OUTLINED_FUNCTION_10_29();
              [(FigCaptureCameraSourcePipelineConfiguration *)v292 setMovieFileMaxLossyCompressionLevel:v293];
              v294 = 0;
              if (a12)
              {
                v294 = (v233 | v477 | v187 | v464) != 0;
              }

              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSmartStyleLearningEnabled:v294];
              v295 = [(FigCaptureCameraSourcePipelineConfiguration *)v26 smartStyleLearningEnabled];
              if (v464)
              {
                v296 = v295;
              }

              else
              {
                v296 = 0;
              }

              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setSmartStyleReversibilityEnabled:v296];
              v297 = OUTLINED_FUNCTION_9_19();
              [(FigCaptureCameraSourcePipelineConfiguration *)v297 setSmartStyle:v298];
              if (![(FigCaptureCameraSourcePipelineConfiguration *)v26 smartStyleLearningEnabled])
              {
                goto LABEL_318;
              }

              [objc_msgSend(v400 "device")];
              if (!v495)
              {
                [v470 isDynamicAspectRatioSupported];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageLocalHistogramClippingDataMetadataEnabled:?];
                v299 = FigCapturePlatformIdentifier() > 10;
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPreLTMThumbnailEnabled:v299];
                if (FigCapturePlatformIdentifier() < 12)
                {
                  v300 = 0;
                }

                else
                {
                  v300 = [(FigCaptureCameraSourcePipelineConfiguration *)v26 preLTMThumbnailEnabled];
                }

                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPostLTMThumbnailEnabled:v300];
                [OUTLINED_FUNCTION_98_4() intermediateStyleRendererThumbnailSizeForUseCase:?];
                v301 = OUTLINED_FUNCTION_97_4();
                [(FigCaptureCameraSourcePipelineConfiguration *)v301 setLtmThumbnailOutputDimensions:v302];
                v303 = FigCapturePlatformIdentifier() == 11;
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setPostColorProcessingThumbnailEnabled:v303];
                v304 = FigCapturePlatformIdentifier() > 11;
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setWeightSegmentMapEnabled:v304];
                [OUTLINED_FUNCTION_98_4() styleEngineWeightPlaneCountForUseCase:?];
                v305 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v305 setWeightSegmentMapNumberOfSegments:v306];
                [OUTLINED_FUNCTION_98_4() styleRendererWeightPlaneSigmaForUseCase:?];
                v307 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v307 setWeightSegmentMapSmoothingSigma:v308];
                [OUTLINED_FUNCTION_98_4() styleEngineThumbnailSizeForUseCase:?];
                v309 = OUTLINED_FUNCTION_97_4();
                [(FigCaptureCameraSourcePipelineConfiguration *)v309 setWeightSegmentMapOutputDimensions:v310];
LABEL_318:
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setRebuildingGraphForTrueVideoTransition:a14];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setTrueVideoTransitionPreviousPhotoGraphZoomFactor:a9];
                [objc_msgSend(v464 "sinkConfiguration")];
                v311 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
                if ([objc_msgSend(v464 "sinkConfiguration")] == 10)
                {
                  IsBayerRaw = FigCapturePixelFormatIsBayerRaw([v311 rawOutputFormat]);
                  [BWStillImageCoordinatorNode worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:v311 stillImageCaptureSettings:0 captureDevice:v400];
                }

                else
                {
                  OUTLINED_FUNCTION_10();
                  [v313 worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:? stillImageCaptureSettings:? captureDevice:?];
                  IsBayerRaw = 0;
                }

                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageOutputRetainedBufferCountOverride:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageOutputSushiRawAttachmentOptionEnabled:?];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStructuredLightAFAssistEnabled:?];
                if ([objc_msgSend(v467 "videoPreviewSinkConfiguration")])
                {
                  LOBYTE(v496) = 0;
                  LODWORD(cf[0].value) = 0;
                  LODWORD(v498) = 0;
                  cs_getZoomPIPOverlayConfiguration(v467, &v496, cf, &v498);
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZoomPIPSingleStreamModeEnabled:v496];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZoomPIPMinimumUIZoomFactor:?];
                  [(FigCaptureCameraSourcePipelineConfiguration *)v26 setZoomPIPSlaveStreamingFrameRate:?];
                }

                v314 = OUTLINED_FUNCTION_9_19();
                [(FigCaptureCameraSourcePipelineConfiguration *)v314 setPreferredMasterPortType:v315];
                v316 = [v470 preferredPreviewMaxFrameRate];
                if (v187)
                {
                  v317 = v316;
                  if (![v477 count] && v317 >= 1)
                  {
                    v318 = OUTLINED_FUNCTION_9_19();
                    [(FigCaptureCameraSourcePipelineConfiguration *)v318 setTargetFrameRateWhenNotRecording:v319];
                  }
                }

                v320 = FigCaptureSessionMotionCompensatedTemporalFilteringStatusForVideoCaptureConnectionConfiguration(v187, v94) == 0;
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setTemporalNoiseReductionStrengthHighEnabled:v320];
                [v94 isSmartFramingEnabled];
                v321 = OUTLINED_FUNCTION_10_29();
                [(FigCaptureCameraSourcePipelineConfiguration *)v321 setSmartFramingEnabled:v322];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setAudioMixWithOthersEnabled:a15];
                [(FigCaptureCameraSourcePipelineConfiguration *)v26 setLowLatencyStabilizationEnabledInSourcePipeline:?];
              }
            }

            else
            {
              OUTLINED_FUNCTION_9_38();
              FigDebugAssert3();
              v495 = FigSignalErrorAtGM();
            }

            v21 = v426;
            goto LABEL_329;
          }

          v329 = cs_stillImageDepthDataType(v94);
          v330 = v329;
          if ((v329 & 0xFFFFFFFE) == 4)
          {
            if (captureSession_clientIsCameraOrDerivative(v451))
            {
              v333 = 2;
            }

            else
            {
              v333 = 8;
            }

            if (v330 != 4)
            {
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageSensorInterfaceRawRetainedBufferCount:v333];
              goto LABEL_339;
            }

            [(FigCaptureCameraSourcePipelineConfiguration *)v26 setStillImageFocusPixelDataRetainedBufferCount:v333];
            v334 = v26;
            v335 = v333;
          }

          else
          {
            if (v329 != 2)
            {
LABEL_339:
              v331 = [v470 isSIFRStillImageCaptureWithDepthDataDisabled] ^ 1;
              v332 = [(FigCaptureCameraSourcePipelineConfiguration *)v26 configureForSIFRStillImageCaptureIfAvailable];
              [(FigCaptureCameraSourcePipelineConfiguration *)v26 setConfigureForSIFRStillImageCaptureIfAvailable:?];
              goto LABEL_272;
            }

            if (captureSession_clientIsCameraOrDerivative(v451))
            {
              v335 = 3;
            }

            else
            {
              v335 = 4;
            }

            v334 = v26;
          }

          [(FigCaptureCameraSourcePipelineConfiguration *)v334 setStillImageSashimiRawRetainedBufferCount:v335];
          goto LABEL_339;
        }

        v148 = [objc_msgSend(v94 "depthDataFormat")];
        if (v148 == 1751410032 || v148 == 1717855600)
        {
          HIDWORD(v386) = [v124 previewDepthFilterRenderingEnabled];
        }

        else
        {
          HIDWORD(v386) = 1;
        }

        LODWORD(v386) = [objc_msgSend(v441 "depthDataSinkConfiguration")];
        v151 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
        v153 = v151 != 6 && v151 != 12;
        v154 = FigCaptureSourceGetIntAttribute([v94 source], @"DeviceType", 0);
        v155 = v154 < 0xA;
        v156 = 0x310u >> v154;
        v157 = v94;
        v158 = v155 & v156;
        v159 = cs_stillImageDepthDataType(v157);
        v160 = v159;
        HIDWORD(v382) = v159 > 0xA;
        v161 = [v124 previewDepthDataDeliveryEnabled];
        v162 = FigCaptureMetadataObjectConfigurationsRequireFaceTracking(obja);
        if (v438 && v161 && ([v467 previewDepthFilterRenderingEnabled] & 1) != 0 || objc_msgSend(v447, "isCinematicVideoCaptureEnabled"))
        {
          if (v158)
          {
            v163 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")] == 0;
            v164 = 3;
          }

          else
          {
            v163 = !v153;
            v164 = 4;
          }

          if (v163)
          {
            v150 = 1;
          }

          else
          {
            v150 = v164;
          }
        }

        else
        {
          if ((v441 != 0 || (v158 & 1) == 0) | (v161 | v162) & 1)
          {
            v94 = v447;
            if ((HIDWORD(v386) | v153 | v386))
            {
              if ((BYTE4(v382) | (0x11u >> v160) | (0x660u >> v160)))
              {
                v150 = 4;
              }

              else
              {
                v150 = 1;
              }
            }

            else
            {
              v150 = 2;
            }

            goto LABEL_197;
          }

          v150 = 0;
        }

        v94 = v447;
LABEL_197:
        v124 = v467;
        goto LABEL_198;
      }

      v39 = 0;
    }

    else if (v41)
    {
      goto LABEL_33;
    }

    v43 = 0;
    HIDWORD(v471) = 0;
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_14_21();
  FigDebugAssert3();
LABEL_329:
  v323 = v495;
  if (v21)
  {
    *v21 = v495;
  }

  if (v323)
  {
    return 0;
  }

  else
  {
    return v26;
  }
}

void *FigCaptureConnectionConfigurationWithSinkType(void *a1, int a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "sinkConfiguration")] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t FigCaptureSourceGetIntAttribute(void *a1, uint64_t a2, int *a3)
{
  Attribute = FigCaptureSourceGetAttribute(a1, a2, a3);

  return [Attribute intValue];
}

uint64_t cs_cinematicVideoCaptureEnabled(void *a1)
{
  v2 = [a1 cameraConfiguration];
  v3 = FigCaptureConnectionConfigurationWithSinkType([a1 videoCaptureConnectionConfigurations], 4);
  v4 = [a1 videoPreviewSinkConnectionConfiguration];
  if (v3)
  {
    v5 = v4;
    if ([v4 previewDepthDataDeliveryEnabled])
    {
      if ([v5 previewDepthFilterRenderingEnabled])
      {
        return 1;
      }
    }
  }

  return [v2 isCinematicVideoCaptureEnabled];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresFaceTracking(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E69629E8];

  return [v1 containsObject:v2];
}

uint64_t BWDeviceSupportsCoreMediaFaceTracking()
{
  if (BWDeviceIsiPhone_onceToken != -1)
  {
    BWDeviceIsiPhone_cold_1();
  }

  if (BWDeviceIsiPhone_isiPhone != 1)
  {
    return 0;
  }

  if (FigCapturePlatformIdentifier() > 9)
  {
    return 1;
  }

  ModelSpecificName = FigCaptureGetModelSpecificName();

  return [&unk_1F2248700 containsObject:ModelSpecificName];
}

uint64_t FigCaptureSourceGetBoolAttribute(void *a1, uint64_t a2, int *a3)
{
  Attribute = FigCaptureSourceGetAttribute(a1, a2, a3);

  return [Attribute BOOLValue];
}

id FigCaptureSourceGetAttribute(id a1, uint64_t a2, int *a3)
{
  v10 = 0;
  if (a1)
  {
    v5 = a1;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(v5, @"AttributesDictionary", *MEMORY[0x1E695E480], &v10);
      a1 = v10;
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v10 objectForKeyedSubscript:a2];
        a1 = v10;
      }
    }

    else
    {
      a1 = 0;
      v8 = 0;
      v7 = -12782;
    }
  }

  else
  {
    v8 = 0;
    v7 = -12780;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v8;
}

uint64_t cs_shouldEnableGreenGhostMitigation(void *a1)
{
  if ([objc_msgSend(a1 "requiredFormat")] < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = [a1 depthDataDeliveryEnabled];
    v3 = v2 ^ 1 | [objc_msgSend(FigCaptureSourceGetAttribute(objc_msgSend(a1 "source")];
  }

  return v3 & 1;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D0E8;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationsRequireOfflineVideoStabilizationMotionData(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *MEMORY[0x1E69629D8];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataIdentifiers")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
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

uint64_t captureSession_clientIsCameraOrDerivative(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = *(DerivedStorage + 88);

  return FigCaptureClientApplicationIDIsCameraOrDerivative(v2);
}

uint64_t captureSession_clientSetsUserInitiatedCaptureRequestTime()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([*(DerivedStorage + 88) isEqualToString:0x1F216ED50])
  {
    v1 = 1;
  }

  else
  {
    v1 = [*(DerivedStorage + 88) isEqualToString:0x1F2185310];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(DerivedStorage + 784) movieFileSinkPipelines];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) momentCaptureMovieRecordingEnabled])
        {
          return 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v1;
}

uint64_t FigCaptureZeroShutterLagEnabled(void *a1, void *a2, void *a3, char a4)
{
  if ([a1 sourceDeviceType] == 10)
  {
    return 0;
  }

  if (([objc_msgSend(a1 "requiredFormat")] & 1) != 0 || (result = objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isHighPhotoQualitySupported"), result))
  {
    if (![objc_msgSend(a1 "requiredFormat")] || (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isLearnedNRSupported") & 1) == 0 && (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "capturesStillsFromVideoStream") & 1) == 0 && (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isBinned") & 1) == 0 && objc_msgSend(a2, "maxQualityPrioritization") >= 2)
    {
      if (![objc_msgSend(a1 "requiredFormat")])
      {
        goto LABEL_16;
      }

      if ([a2 zeroShutterLagEnabled])
      {
        v9 = 0;
        if (a4)
        {
LABEL_16:
          if ([a1 spatialOverCaptureEnabled])
          {
            return 1;
          }

          if ([objc_msgSend(a1 "requiredFormat")] & 1) == 0 && (objc_msgSend(a1, "depthDataDeliveryEnabled") & 1) != 0 || (objc_msgSend(a2, "bravoConstituentPhotoDeliveryEnabled") & 1) != 0 || objc_msgSend(a1, "imageControlMode") == 4 || (objc_msgSend(a1, "backgroundBlurEnabled") & 1) != 0 || (objc_msgSend(a1, "cinematicFramingEnabled") & 1) != 0 || (objc_msgSend(a1, "studioLightingEnabled"))
          {
            return 0;
          }

          return [a1 backgroundReplacementEnabled] ^ 1;
        }
      }

      else
      {
        v9 = [a3 zeroShutterLagEnabled] ^ 1;
        if (a4)
        {
          goto LABEL_16;
        }
      }

      if ((([a2 responsiveCaptureEnabled] ^ 1) & v9 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t FigCaptureSoftISPEnabled(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a1 sourceDeviceType] == 10)
  {
    return 0;
  }

  v13 = 0;
  v4 = [a1 source];
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"AttributesDictionary", *MEMORY[0x1E695E480], &v13);
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v6 objectForKeyedSubscript:{0x1F21774D0), "BOOLValue"}];
  v8 = [objc_msgSend(v13 objectForKeyedSubscript:{@"Flash", "BOOLValue"}];

  if (!v7)
  {
    return 0;
  }

  if ([a2 sinkType] == 10)
  {
    if (([a1 depthDataDeliveryEnabled] & v8) != 1 || (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "swfrSupported") & 1) != 0 || objc_msgSend(a1, "sourceDeviceType") == 6 || objc_msgSend(a1, "sourceDeviceType") == 12 || objc_msgSend(a1, "sourcePosition") == 2 && objc_msgSend(a1, "sourceDeviceType") == 7)
    {
      v9 = ![a1 depthDataDeliveryEnabled] || objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", @"StillImageDepthDataType"), "intValue") != 8;
      if (([objc_msgSend(a1 "requiredFormat")] & 1) != 0 || ((objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isLearnedNRSupported") ^ 1) & v9 & 1) == 0)
      {
        if ([a2 maxQualityPrioritization] != 1)
        {
          goto LABEL_28;
        }

        if ([a1 depthDataDeliveryEnabled] & v8) == 1 && (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "swfrSupported"))
        {
          v11 = [a1 sourceDeviceType];
          v12 = [a2 constantColorEnabled];
          if (v11 != 6)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v12 = [a2 constantColorEnabled];
        }

        if (v12)
        {
LABEL_28:
          if ([a1 imageControlMode] != 4 && (objc_msgSend(a1, "backgroundBlurEnabled") & 1) == 0 && (objc_msgSend(a1, "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(a1, "studioLightingEnabled") & 1) == 0)
          {
            return [a1 backgroundReplacementEnabled] ^ 1;
          }
        }
      }
    }

    return 0;
  }

  result = [objc_msgSend(a1 "requiredFormat")];
  if (result)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t cs_shouldEnableOverCapture(void *a1)
{
  if ([a1 sourceType] != 1)
  {
    return 0;
  }

  IntAttribute = FigCaptureSourceGetIntAttribute([a1 source], @"DeviceType", 0);
  v3 = IntAttribute > 9 || ((1 << IntAttribute) & 0x310) == 0;
  if (v3 || ([objc_msgSend(objc_msgSend(a1 "requiredFormat")] & 1) == 0 && !objc_msgSend(objc_msgSend(objc_msgSend(a1, "requiredFormat"), "AVCaptureSessionPresets"), "containsObject:", @"AVCaptureSessionPresetHigh") || objc_msgSend(a1, "imageControlMode") == 4)
  {
    return 0;
  }

  return [a1 spatialOverCaptureEnabled];
}

void *cs_shouldEnableLowLatencyStabilization(void *result)
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(objc_msgSend(result "sourceConfiguration")];
    if (result)
    {
      result = 0;
      if ([v1 videoStabilizationMethod] == 6 && ((objc_msgSend(objc_msgSend(v1, "sourceConfiguration"), "spatialOverCaptureEnabled") & 1) != 0 || !objc_msgSend(v1, "previewDepthDataDeliveryEnabled") || (objc_msgSend(v1, "previewDepthFilterRenderingEnabled") & 1) == 0))
      {
        v2 = [v1 sourceConfiguration];
        v3 = [v2 requiredMaxFrameRate];
        if (FigCaptureFrameRateAsInt(v3, v4) <= 60 && [v2 imageControlMode] != 4 && objc_msgSend(v2, "imageControlMode") != 5 && objc_msgSend(v2, "imageControlMode") != 6)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t getSTExecutableIdentityClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__36;
  v0 = getSTExecutableIdentityClass_softClass;
  v7 = __Block_byref_object_dispose__36;
  v8 = getSTExecutableIdentityClass_softClass;
  if (!getSTExecutableIdentityClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSTExecutableIdentityClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getSTExecutableIdentityClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC942630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getSTAttributedEntityClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__36;
  v0 = getSTAttributedEntityClass_softClass;
  v7 = __Block_byref_object_dispose__36;
  v8 = getSTAttributedEntityClass_softClass;
  if (!getSTAttributedEntityClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSTAttributedEntityClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getSTAttributedEntityClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC94271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureClientIsRunningInMediaserverd(_OWORD *a1)
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
  v6 = [(__CFString *)v5 isEqualToString:0x1F2170190];

  CFRelease(v4);
  return v6;
}

uint64_t getPATCCAccessClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getPATCCAccessClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getPATCCAccessClass_softClass;
  if (!getPATCCAccessClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPATCCAccessClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPATCCAccessClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC942890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_52_8()
{
  *(v0 - 100) = 0;
  *(v0 - 101) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_52_10()
{
  v1 = STACK[0x2C0];

  return [v1 countByEnumeratingWithState:&STACK[0xF20] objects:&STACK[0xEA0] count:16];
}

BOOL OUTLINED_FUNCTION_52_15(NSObject *a1)
{
  v3 = *(v1 - 125);

  return os_log_type_enabled(a1, v3);
}

__n128 OUTLINED_FUNCTION_56_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 - 176) = a13;
  *(v14 - 160) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  v1 = STACK[0x218];

  return [v1 countByEnumeratingWithState:&STACK[0x460] objects:&STACK[0x3E0] count:16];
}

uint64_t OUTLINED_FUNCTION_56_8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return [a3 countByEnumeratingWithState:v6 - 160 objects:va count:16];
}

uint64_t OUTLINED_FUNCTION_56_9()
{
  v1 = STACK[0x2D0];

  return [v1 countByEnumeratingWithState:&STACK[0xAE0] objects:&STACK[0xA60] count:16];
}

uint64_t FigCaptureClientIsAVConferenced(_OWORD *a1)
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
  v6 = [(__CFString *)v5 isEqualToString:0x1F21851B0];

  CFRelease(v4);
  return v6;
}

uint64_t OUTLINED_FUNCTION_117_3()
{
  v3 = *(v1 + 3480);

  return [v3 numberWithInt:v0];
}

uint64_t OUTLINED_FUNCTION_117_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return [v31 countByEnumeratingWithState:&a31 objects:&a15 count:16];
}

void OUTLINED_FUNCTION_117_5(int a1@<W8>)
{
  *(v2 + 4) = v1;
  LOWORD(STACK[0x20C]) = 1024;
  *(v2 + 14) = a1;
  LOWORD(STACK[0x212]) = 1024;
  LODWORD(STACK[0x214]) = -12688;
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

void *OUTLINED_FUNCTION_92_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x310], 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_92_5(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);

  return [a1 dictionaryWithObjects:va1 forKeys:va count:1];
}

uint64_t getPAApplicationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getPAApplicationClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getPAApplicationClass_softClass;
  if (!getPAApplicationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPAApplicationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPAApplicationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC942D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{

  return [a46 countByEnumeratingWithState:a3 objects:a4 count:16];
}

__SecTask *FigCaptureClientIsNonStandard(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = FigCaptureClientHasEntitlementWithSecTask(v3, @"com.apple.private.avfoundation.capture.nonstandard-client.allow");
  CFRelease(v4);
  return v5;
}

uint64_t captureSource_setFocusOperation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!a2)
  {
    captureSource_setFocusOperation_cold_5();
    return 4294954516;
  }

  v5 = [a2 objectForKey:@"FocusMode"];
  if (!v5)
  {
    captureSource_setFocusOperation_cold_4(&v25);
    return LODWORD(v25.origin.x);
  }

  v6 = [v5 intValue];
  v7 = v6;
  if ((v6 - 1) < 2)
  {
    v8 = *(MEMORY[0x1E695F058] + 16);
    v25.origin = *MEMORY[0x1E695F058];
    v25.size = v8;
    if (![objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{@"FocusPointOfInterest", "BOOLValue"}])
    {
      goto LABEL_7;
    }

    v9 = [a2 objectForKeyedSubscript:@"FocusRect"];
    if (v9)
    {
      if (CGRectMakeWithDictionaryRepresentation(v9, &v25))
      {
LABEL_7:
        v10 = [a2 objectForKeyedSubscript:@"FocusRangeRestriction"];
        if (v10)
        {
          v11 = [v10 intValue];
        }

        else
        {
          v11 = 0;
        }

        v18 = [a2 objectForKeyedSubscript:@"SmoothFocus"];
        if (v18)
        {
          v21 = [v18 BOOLValue];
        }

        else
        {
          v21 = 0;
        }

        if (v11 >= 3)
        {
          return FigSignalErrorAtGM();
        }

        LODWORD(v19) = dword_1AD056ED4[v11];
        LODWORD(v20) = dword_1AD056EE0[v11];
        v22 = [*(DerivedStorage + 80) setFocusModeAutoWithRect:0 restrictToRect:v7 == 2 continuous:v21 smooth:0 rangeRestrictionNear:*&v25.origin rangeRestrictionFar:*&v25.size isFocusRectInOverscanSpace:{v19, v20}];
        if (v22)
        {
          v24 = v22;
          captureSource_setFocusOperation_cold_2();
          return v24;
        }

        if (![a2 objectForKeyedSubscript:@"FaceDrivenAEAFMode"])
        {
          return 0;
        }

        return captureSource_setFaceDrivenAEAFMode(a1, [objc_msgSend(a2 objectForKeyedSubscript:{@"FaceDrivenAEAFMode", "intValue"}]);
      }

      captureSource_setFocusOperation_cold_1(&v26);
    }

    else
    {
      captureSource_setFocusOperation_cold_3(&v26);
    }

    return v26;
  }

  if (v6)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"FocusPosition", "floatValue"}];
    v13 = v12;
    v14 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
    v15 = *(DerivedStorage + 80);
    LODWORD(v16) = v13;

    return [v15 setFocusModeManualWithLensPosition:v14 requestID:v16];
  }
}

uint64_t captureSource_setExposureOperation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    captureSource_setExposureOperation_cold_9();
    return 4294954516;
  }

  v5 = DerivedStorage;
  v6 = [a2 objectForKeyedSubscript:@"ExposureMode"];
  if (!v6)
  {
    captureSource_setExposureOperation_cold_8(&rect);
    return LODWORD(rect.origin.x);
  }

  v7 = [v6 intValue];
  switch(v7)
  {
    case 0:
      v28 = *(v5 + 80);

      return [v28 setExposureModeLocked];
    case 3:
      v13 = [a2 objectForKeyedSubscript:@"ExposureDuration"];
      if (v13)
      {
        memset(&rect, 0, 24);
        CMTimeMakeFromDictionary(&rect, v13);
        v14 = [a2 objectForKeyedSubscript:@"ExposureActiveMinFrameRate"];
        if (v14)
        {
          [v14 doubleValue];
          v16 = v15;
          v17 = [a2 objectForKeyedSubscript:@"ExposureActiveMaxFrameRate"];
          if (v17)
          {
            [v17 doubleValue];
            v19 = v18;
            v20 = [a2 objectForKeyedSubscript:@"ISO"];
            if (v20)
            {
              [v20 floatValue];
              v22 = v21;
              v23 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
              v24 = *(v5 + 80);
              origin = rect.origin;
              width = rect.size.width;
              LODWORD(v25) = v22;
              return [v24 setExposureModeCustomWithExposureDuration:&origin minFrameRate:v23 maxFrameRate:v16 ISO:v19 requestID:v25];
            }

            captureSource_setExposureOperation_cold_1(&origin);
          }

          else
          {
            captureSource_setExposureOperation_cold_2(&origin);
          }
        }

        else
        {
          captureSource_setExposureOperation_cold_3(&origin);
        }

        return LODWORD(origin.x);
      }

      captureSource_setExposureOperation_cold_4(&rect);
      return LODWORD(rect.origin.x);
    case 2:
      v8 = *(MEMORY[0x1E695F058] + 16);
      rect.origin = *MEMORY[0x1E695F058];
      rect.size = v8;
      v9 = [a2 objectForKeyedSubscript:@"ExposureRect"];
      if (v9)
      {
        if (CGRectMakeWithDictionaryRepresentation(v9, &rect))
        {
          v10 = [objc_msgSend(a2 objectForKeyedSubscript:{@"ExposureRectIsDefault", "BOOLValue"}];
          v11 = [*(v5 + 80) setExposureModeAutoWithRect:v10 isDefaultRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
          if (v11)
          {
            v26 = v11;
            captureSource_setExposureOperation_cold_6();
            return v26;
          }

          if (![a2 objectForKeyedSubscript:@"FaceDrivenAEAFMode"])
          {
            return 0;
          }

          return captureSource_setFaceDrivenAEAFMode(a1, [objc_msgSend(a2 objectForKeyedSubscript:{@"FaceDrivenAEAFMode", "intValue"}]);
        }

        captureSource_setExposureOperation_cold_5(&origin);
      }

      else
      {
        captureSource_setExposureOperation_cold_7(&origin);
      }

      return LODWORD(origin.x);
  }

  return FigSignalErrorAtGM();
}

uint64_t captureSource_setExposureTargetBiasOperation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = [a2 objectForKeyedSubscript:@"Bias"];
  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
    v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
    v8 = *(DerivedStorage + 80);
    LODWORD(v9) = v6;

    return [v8 setExposureTargetBias:v7 requestID:v9];
  }

  else
  {
    captureSource_setExposureTargetBiasOperation_cold_1(&v11);
    return v11;
  }
}

uint64_t captureSource_setWhiteBalanceOperation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    captureSource_setWhiteBalanceOperation_cold_4();
    return 4294954516;
  }

  v4 = DerivedStorage;
  v5 = [a2 objectForKeyedSubscript:@"WhiteBalanceMode"];
  if (!v5)
  {
    captureSource_setWhiteBalanceOperation_cold_3(&v15);
    return v15;
  }

  v6 = [v5 intValue];
  if (!v6)
  {
    v9 = [a2 objectForKeyedSubscript:@"DeviceWhiteBalanceGains"];
    if (v9)
    {
      v10 = v9;
      if ([v9 length] == 12)
      {
        v16 = 0;
        v15 = 0;
        [v10 getBytes:&v15 length:12];
        v11 = [objc_msgSend(a2 objectForKeyedSubscript:{@"RequestID", "intValue"}];
        LODWORD(v13) = HIDWORD(v15);
        LODWORD(v12) = v15;
        LODWORD(v14) = v16;
        return [*(v4 + 80) setWhiteBalanceModeLockedWithGains:v11 requestID:{v12, v13, v14}];
      }

      captureSource_setWhiteBalanceOperation_cold_1(&v15);
    }

    else
    {
      captureSource_setWhiteBalanceOperation_cold_2(&v15);
    }

    return v15;
  }

  if (v6 == 2)
  {
    v7 = *(v4 + 80);

    return [v7 setWhiteBalanceModeAuto];
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

double FigCaptureBinaryPlistGetRealForObjectAtOffset(void *a1, uint64_t a2, double a3)
{
  v3 = (*a1 + a2);
  v4 = *v3;
  if (v4 > 0x12)
  {
    if (*v3 <= 0x21u)
    {
      if (v4 == 19)
      {
        return bswap64(*(v3 + 1));
      }

      if (v4 == 33)
      {
        _H0 = bswap32(*(v3 + 1)) >> 16;
        __asm { FCVT            D0, H0 }

        return result;
      }

      goto LABEL_24;
    }

    if (v4 != 34)
    {
      if (v4 == 35 || v4 == 48)
      {
        return COERCE_DOUBLE(bswap64(*(v3 + 1)));
      }

      goto LABEL_24;
    }

    return COERCE_FLOAT(bswap32(*(v3 + 1)));
  }

  else if (*v3 <= 0xFu)
  {
    result = 0.0;
    if (v4 != 8)
    {
      if (v4 == 9)
      {
        return 1.0;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (v4 != 16)
    {
      if (v4 == 17)
      {
        return (bswap32(*(v3 + 1)) >> 16);
      }

      if (v4 == 18)
      {
        return bswap32(*(v3 + 1));
      }

LABEL_24:
      abort();
    }

    LOBYTE(a3) = v3[1];
    return *&a3;
  }

  return result;
}

uint64_t cs_shouldEnablePreviewStabilization(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = [objc_msgSend(objc_msgSend(a2 "sourceConfiguration")];
      if (result)
      {
        result = 0;
        if (((captureSession_clientIsCameraOrDerivative(a1) & 1) != 0 || [a2 videoStabilizationMethod] == 4) && ((objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "spatialOverCaptureEnabled") & 1) != 0 || !objc_msgSend(a2, "previewDepthDataDeliveryEnabled") || (objc_msgSend(a2, "previewDepthFilterRenderingEnabled") & 1) == 0))
        {
          v5 = [a2 sourceConfiguration];
          v6 = [v5 requiredMaxFrameRate];
          if (FigCaptureFrameRateAsInt(v6, v7) <= 60 && [v5 imageControlMode] != 4 && objc_msgSend(v5, "imageControlMode") != 5 && objc_msgSend(v5, "imageControlMode") != 6)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

unsigned int FigCaptureFrameRateAsInt(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = *&a1;
  }

  else
  {
    v2 = 0.0;
    if (a2 == 1)
    {
      v2 = a1 / SHIDWORD(a1);
    }
  }

  return llroundf(v2);
}

uint64_t cs_stillImageDepthDataType(void *a1)
{
  v3 = 0;
  result = [a1 source];
  if (result)
  {
    return FigCaptureSourceGetIntAttribute([a1 source], @"StillImageDepthDataType", &v3);
  }

  return result;
}

void BWFigVideoCaptureStreamSetClientProcessHasAccessToCamera(uint64_t a1, char a2)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 376));
    *(a1 + 380) = a2;

    os_unfair_lock_unlock((a1 + 376));
  }
}

uint64_t cs_shouldEnableVideoHDRImageStatistics(void *a1, int a2, uint64_t a3)
{
  if (FigCapturePixelFormatIsTenBit([a1 format]) && (FigCapturePixelFormatIsUsedForProRes(objc_msgSend(a1, "format")) & 1) == 0 && a2)
  {
    return 1;
  }

  return a3;
}

uint64_t cs_shouldEnableVideoHDRImageStatisticsFromConnectionConfigurations(void *a1, uint64_t a2, void *a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * v9) "sinkConfiguration")])
        {
          v10 = 1;
          return cs_shouldEnableVideoHDRImageStatistics(a1, a2 != 0, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
  return cs_shouldEnableVideoHDRImageStatistics(a1, a2 != 0, v10);
}

uint64_t FigCapturePixelFormatIsTenBit(int a1)
{
  result = 1;
  if (a1 <= 1701738597)
  {
    if (a1 > 762869297)
    {
      if (a1 > 1278226735)
      {
        if (a1 <= 1534621231)
        {
          if (a1 == 1278226736)
          {
            return result;
          }

          v3 = 1534617136;
        }

        else
        {
          if (a1 == 1534621232 || a1 == 1651587122)
          {
            return result;
          }

          v3 = 1651847472;
        }
      }

      else
      {
        if (a1 <= 796419633)
        {
          if (a1 == 762869298)
          {
            return result;
          }

          v4 = 26160;
        }

        else
        {
          if (a1 == 796419634 || a1 == 796423728)
          {
            return result;
          }

          v4 = 30258;
        }

        v3 = v4 | 0x2F780000;
      }

      goto LABEL_55;
    }

    if (a1 <= 645428783)
    {
      v6 = -26160;
    }

    else
    {
      if (a1 > 762865199)
      {
        if (a1 == 762865200 || a1 == 762865202)
        {
          return result;
        }

        v3 = 762869296;
        goto LABEL_55;
      }

      v6 = -30256;
    }

    v7 = a1 + (v6 | 0xD9870000);
    if (v7 > 4 || ((1 << v7) & 0x15) == 0)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 2016687155)
  {
    if (a1 <= 2088265265)
    {
      if (a1 <= 2019963441)
      {
        if (a1 == 2016687156)
        {
          return result;
        }

        v3 = 2019963440;
        goto LABEL_55;
      }

      if (a1 == 2019963442 || a1 == 2019963956)
      {
        return result;
      }

      v5 = 26160;
LABEL_49:
      v3 = v5 | 0x7C780000;
      goto LABEL_55;
    }

    if (a1 <= 2088269361)
    {
      if (a1 == 2088265266)
      {
        return result;
      }

      v5 = 30256;
      goto LABEL_49;
    }

    if (a1 == 2088269362 || a1 == 2105042480)
    {
      return result;
    }

    v3 = 2105046576;
LABEL_55:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 1885745711)
  {
    if (a1 <= 1885746227)
    {
      if (a1 == 1885745712)
      {
        return result;
      }

      v3 = 1885745714;
    }

    else
    {
      if (a1 == 1885746228 || a1 == 2016686640)
      {
        return result;
      }

      v3 = 2016686642;
    }

    goto LABEL_55;
  }

  if (a1 <= 1882468911)
  {
    if (a1 == 1701738598)
    {
      return result;
    }

    v3 = 1701738614;
    goto LABEL_55;
  }

  if (a1 != 1882468912 && a1 != 1882468914)
  {
    v3 = 1882469428;
    goto LABEL_55;
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationsRequiresLumaHistograms(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *off_1E798D150;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataIdentifiers")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
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

uint64_t FigCaptureMetadataObjectConfigurationsRequireFaceTracking(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *MEMORY[0x1E69629E8];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataIdentifiers")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
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

float FigCaptureFrameRateAsFloat(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return *&a1;
  }

  result = 0.0;
  if (a2 == 1)
  {
    return a1 / SHIDWORD(a1);
  }

  return result;
}

uint64_t cs_shouldEnableVideoSTF(void *a1, char a2, int a3)
{
  v6 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:a1 includeIris:1];
  v7 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{0), "sourceConfiguration"), "requiredFormat"), "isVideoSTFSupported"}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(a1);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v12 "irisSinkConfiguration")])
      {
        return 0;
      }

      if (v9 == ++v11)
      {
        v9 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(a1);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([objc_msgSend(v17 "irisSinkConfiguration")])
        {
          return 0;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [a1 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v14)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  result = 0;
  v20 = a3 != 10 && a3 != 12;
  if (v7)
  {
    if ((a2 & 1) == 0)
    {
      if ([v6 containsObject:&unk_1F2244D70])
      {
        return v20;
      }

      if ([v6 containsObject:&unk_1F2244D88])
      {
        return v20;
      }

      result = [v6 containsObject:&unk_1F2244DA0];
      if (result)
      {
        return v20;
      }
    }
  }

  return result;
}

uint64_t csp_projectorModeFromPointCloudDataConnectionConfigurations(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 "firstObject")];
  if ([a1 count] >= 2)
  {
    v3 = 1;
    do
    {
      if (v2 != [objc_msgSend(a1 objectAtIndexedSubscript:{v3), "projectorMode"}])
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Projector modes from connection configs with the same source need to be the same" userInfo:0]);
      }

      ++v3;
    }

    while ([a1 count] > v3);
  }

  return v2;
}

uint64_t FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType_block_invoke;
  v5[3] = &unk_1E799DD20;
  v5[4] = &v6;
  v5[5] = a2;
  *a3 = captureSource_safelyAccessStorage(a1, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1AC9448BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v20 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__44;
  v18 = __Block_byref_object_dispose__44;
  v19 = 0;
  v7 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a1, a3, &v20);
  v8 = v7;
  v9 = v20;
  if (v20)
  {
    FigDebugAssert3();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v7)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType_block_invoke;
      v13[3] = &unk_1E799DCD0;
      v13[5] = &v14;
      v13[6] = a3;
      v13[4] = a2;
      v9 = captureSource_safelyAccessStorage(v7, v13);
LABEL_4:
      CFRelease(v8);
      goto LABEL_6;
    }

    v10 = a2;
    v9 = 0;
    v15[5] = v10;
  }

LABEL_6:
  if (a4)
  {
    *a4 = v9;
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_1AC944A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureMetadataUtilitiesNormalizeCropRect(double a1, double a2, double a3, double a4)
{
  result = CGRectIsEmpty(*&a1);
  if ((result & 1) == 0)
  {
    return CMINormalizeCropRect();
  }

  return result;
}

uint64_t csp_variableFrameRateVideoEnabled(void *a1)
{
  v2 = [objc_msgSend(a1 "requiredFormat")];
  v3 = [a1 videoStabilizationStrength];
  v4 = [a1 variableFrameRateVideoCaptureEnabled];
  if (v3 < 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & v2;
  if (dword_1ED844130)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

uint64_t FigCapturePixelFormatIs422(int a1)
{
  result = 1;
  if (a1 > 1882468913)
  {
    if (a1 > 2019963441)
    {
      if (a1 == 2019963442 || a1 == 2088265266)
      {
        return result;
      }

      v3 = 2088269362;
    }

    else
    {
      if (a1 == 1882468914 || a1 == 1885745714)
      {
        return result;
      }

      v3 = 2016686642;
    }

LABEL_16:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 762869297)
  {
    if (a1 == 762869298 || a1 == 796419634)
    {
      return result;
    }

    v3 = 796423730;
    goto LABEL_16;
  }

  if (a1 != 645424690 && a1 != 645428786)
  {
    v3 = 762865202;
    goto LABEL_16;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_363(NSObject *a1)
{
  v3 = *(v1 - 101);

  return os_log_type_enabled(a1, v3);
}

float FigVideoCaptureSourceUIBaseZoomFactor(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1065353216;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigVideoCaptureSourceUIBaseZoomFactor_block_invoke;
  v4[3] = &unk_1E799DD48;
  v4[4] = &v5;
  *a2 = captureSource_safelyAccessStorage(a1, v4);
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1AC944FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FigVideoCaptureSourceUIBaseZoomFactor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2 == 0.0)
  {
    v2 = 1.0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  return 0;
}

double BWAspectRatioValueFromAspectRatio(int a1)
{
  result = 0.0;
  if ((a1 - 1) <= 5)
  {
    return dbl_1AD055138[a1 - 1];
  }

  return result;
}

uint64_t BWUtilitiesUnderlyingDeviceTypeFromPortType(void *a1, unsigned int a2)
{
  if ([a1 isEqualToString:*off_1E798A0C0])
  {
    return 2;
  }

  if ([a1 isEqualToString:*off_1E798A0D8])
  {
    return 3;
  }

  if ([a1 isEqualToString:*off_1E798A0D0])
  {
    return 7;
  }

  if ([a1 isEqualToString:*off_1E798A0E0])
  {
    if (a2 - 15 >= 2)
    {
      return 2;
    }

    else
    {
      return a2;
    }
  }

  else if ([a1 isEqualToString:*off_1E798A0F8])
  {
    if (a2 == 11)
    {
      return 11;
    }

    else
    {
      return 7;
    }
  }

  else if ([a1 isEqualToString:*off_1E798A0E8])
  {
    return 5;
  }

  else if ([a1 isEqualToString:*off_1E798A0C8])
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCaptureConnectionConfigurationsFilterWithBlock(void *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigCaptureConnectionConfigurationsFilterWithBlock_block_invoke;
  v3[3] = &unk_1E799B9F0;
  v3[4] = a2;
  return [a1 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v3)}];
}

void *FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(&v10 + 1) + 8 * v6), "underlyingDeviceType")}];
        if (([v2 containsObject:v7] & 1) == 0)
        {
          [v2 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  return v2;
}

BOOL __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 36);
  return [a2 underlyingDeviceType] == v4 || objc_msgSend(a2, "underlyingDeviceType") == v3;
}

void *FigCaptureConnectionConfigurationWithUnderlyingDeviceType(void *a1, int a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([v8 underlyingDeviceType] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresMotionToWake(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D140;

  return [v1 containsObject:v2];
}

uint64_t csp_shouldUseActionCameraCompanionIndex(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  result = [objc_msgSend(v5 "requiredFormat")];
  if (result)
  {
    result = 0;
    if (([v4 depthDataDeliveryEnabled] & 1) == 0)
    {
      v7 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:v3 includeIris:0];
      if ([v7 containsObject:&unk_1F2244788] & 1) != 0 || (objc_msgSend(v7, "containsObject:", &unk_1F2244920))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t csp_formatIndex(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, unsigned __int8 a11, char a12, _BYTE *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, void *a17, uint64_t *a18)
{
  v26 = [a1 shouldPreferSIFRFormatWithHighlightRecoveryEnabled:a11];
  v62 = [a1 formatIndex];
  v65 = [a1 fesInputCropDimensions];
  v64 = [a1 cropDimensionsForFES];
  v63 = [a1 sensorCropDimensions];
  [a1 sensorCenterOffset];
  v28 = v27;
  v30 = v29;
  v66 = [a1 postGDCCropDimensions];
  v31 = [a1 isSIFRSupported];
  if (a3 && [a1 depthCompanionFormat] && v26 == objc_msgSend(objc_msgSend(a1, "depthCompanionFormat"), "sifrEnabled") && (a12 & 1) == 0)
  {
    v32 = [objc_msgSend(a1 "depthCompanionFormat")];
    v33 = [objc_msgSend(a1 "depthCompanionFormat")];
    v34 = [objc_msgSend(a1 "depthCompanionFormat")];
    v35 = [objc_msgSend(a1 "depthCompanionFormat")];
    [objc_msgSend(a1 "depthCompanionFormat")];
    v28 = v36;
    v30 = v37;
    v38 = [a1 depthCompanionFormat];
LABEL_40:
    v56 = [v38 sifrEnabled];
    goto LABEL_41;
  }

  if (a7 && [a1 midFrameSynchronizationOptimizedCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v33 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v34 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v35 = [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    [objc_msgSend(a1 "midFrameSynchronizationOptimizedCompanionFormat")];
    v28 = v39;
    v30 = v40;
    v38 = [a1 midFrameSynchronizationOptimizedCompanionFormat];
    goto LABEL_40;
  }

  if (a8 && [a1 stereoVideoCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v33 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v34 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v35 = [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    [objc_msgSend(a1 "stereoVideoCompanionFormat")];
    v28 = v41;
    v30 = v42;
    v38 = [a1 stereoVideoCompanionFormat];
    goto LABEL_40;
  }

  [a1 ultraHighResCompanionFormat];
  if (a4 && [a1 fsdNetCompanionFormat] && v26 == objc_msgSend(objc_msgSend(a1, "fsdNetCompanionFormat"), "sifrEnabled"))
  {
    v32 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v33 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v34 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v35 = [objc_msgSend(a1 "fsdNetCompanionFormat")];
    [objc_msgSend(a1 "fsdNetCompanionFormat")];
    v28 = v57;
    v30 = v58;
    v38 = [a1 fsdNetCompanionFormat];
    goto LABEL_40;
  }

  if (a2)
  {
    v43 = [a1 frontEndScalerCompanionFormats];
    if ([v43 count])
    {
      v44 = [v43 firstObject];
      if (a9)
      {
        v44 = [v43 lastObject];
      }

      v45 = v44;
      if (!v44)
      {
        csp_formatIndex_cold_1();
      }

      if (v26 == [v45 sifrEnabled])
      {
        v32 = [v45 formatIndex];
        v33 = [v45 fesInputCropDimensions];
        v34 = [v45 outputCropDimensionsWhenFesIsEnabled];
        v35 = [v45 sensorCropDimensions];
        [v45 sensorCenterOffset];
        v28 = v59;
        v30 = v60;
        v66 = [v45 postGDCCropDimensions];
        v38 = v45;
        goto LABEL_40;
      }
    }
  }

  if ((v26 & 1) == 0 && [a1 nonSIFRCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v33 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v34 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v35 = [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    [objc_msgSend(a1 "nonSIFRCompanionFormat")];
    v28 = v46;
    v30 = v47;
    v38 = [a1 nonSIFRCompanionFormat];
    goto LABEL_40;
  }

  if (a5 && [a1 actionCameraCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "actionCameraCompanionFormat")];
    v35 = [objc_msgSend(a1 "actionCameraCompanionFormat")];
    [objc_msgSend(a1 "actionCameraCompanionFormat")];
    v28 = v48;
    v30 = v49;
    v50 = a14;
    v51 = a15;
    v34 = v64;
    v33 = v65;
    goto LABEL_42;
  }

  if (a6 && [a1 fullBinSIFRCompanionFormat])
  {
    v32 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v33 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v34 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v35 = [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    [objc_msgSend(a1 "fullBinSIFRCompanionFormat")];
    v28 = v52;
    v30 = v53;
    v38 = [a1 fullBinSIFRCompanionFormat];
    goto LABEL_40;
  }

  if (a10 && [a1 hasSensorHDRCompanionIndex])
  {
    v32 = [a1 sensorHDRCompanionIndex];
    v33 = [a1 fesInputCropDimensions];
    v34 = [a1 cropDimensionsForFES];
    v35 = [a1 sensorCropDimensions];
    [a1 sensorCenterOffset];
    v28 = v54;
    v30 = v55;
    v66 = [a1 postGDCCropDimensions];
    v56 = [a1 isSIFRSupported];
LABEL_41:
    v31 = v56;
    v50 = a14;
    v51 = a15;
    goto LABEL_42;
  }

  if (v26)
  {
    v32 = v62;
    if (([a1 isSIFRSupported] & 1) == 0)
    {
      [a1 isSIFRSupported];
    }

    v50 = a14;
    v51 = a15;
  }

  else
  {
    v50 = a14;
    v51 = a15;
    v32 = v62;
  }

  v34 = v64;
  v33 = v65;
  v35 = v63;
LABEL_42:
  if (v50)
  {
    *v50 = v33;
  }

  if (v51)
  {
    *v51 = v34;
  }

  if (a16)
  {
    *a16 = v35;
  }

  if (a17)
  {
    *a17 = v28;
    a17[1] = v30;
  }

  if (a18)
  {
    *a18 = v66;
  }

  if (a13)
  {
    *a13 = v31;
  }

  return v32;
}

CGAffineTransform *OUTLINED_FUNCTION_128_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CGAffineTransform *t1, CGAffineTransform *t2, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t t1a, uint64_t t1_8, uint64_t t1_16, uint64_t t1_24, __n128 t1_32, uint64_t t2a)
{
  t1_32 = a9;

  return CGAffineTransformConcat((v37 - 192), &t1a, &t2a);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return [v10 countByEnumeratingWithState:v11 - 144 objects:va count:16];
}

void OUTLINED_FUNCTION_128_4()
{

  [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
}

uint64_t __FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (!v3)
  {
    v3 = *(a2 + 120);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 objectForKeyedSubscript:*(a1 + 40)];
  return 0;
}

uint64_t FigCaptureLongerDimensionForDimensions(uint64_t result)
{
  if (result <= SHIDWORD(result))
  {
    return HIDWORD(result);
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_146(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 connectOutput:v4 toInput:a4 pipelineStage:0];
}

uint64_t OUTLINED_FUNCTION_146_2(uint64_t a1)
{
  v2 = *(a1 + 208);

  return [v2 workerQueue];
}

__n128 OUTLINED_FUNCTION_88()
{
  result = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_0@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(x8_0 + 132) = 0;
  a8 = 0;
  a7 = 0;

  return [a1 getBytes:&a7 length:12];
}

CMTime *OUTLINED_FUNCTION_88_1@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 5, 1000);
}

uint64_t FigMotionGetCameraCharacterizationData(const __CFDictionary *a1, const __CFDictionary *a2, float a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a2)
  {
    *(a5 + 40) = 0;
    v9 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
    *(a5 + 48) = v9;
    Value = CFDictionaryGetValue(a2, @"FocalLengthCharacterization");
    if (Value)
    {
      v11 = Value;
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(v11))
      {
        goto LABEL_12;
      }

      FigCFDictionaryGetIntIfPresent();
      v13 = CFDictionaryGetValue(a1, *off_1E798A260);
      FocalLengthParametersFromArrayUsingModuleLensID = GetFocalLengthParametersFromArrayUsingModuleLensID(v13, v11, a5);
      if (!FocalLengthParametersFromArrayUsingModuleLensID)
      {
        if ((*(a5 + 16) & 1) == 0)
        {
          v15 = GetFocalLengthParametersFromArrayUsingModuleLensID(0, v11, a5);
          if (v15)
          {
            v16 = v15;
            FigMotionGetCameraCharacterizationData_cold_2();
            goto LABEL_15;
          }
        }

LABEL_12:
        v16 = 0;
        if (a3 <= 0.0)
        {
          *(a5 + 44) = 0;
        }

        else
        {
          *(a5 + 44) = 1.0 / a3;
        }

        goto LABEL_15;
      }

      v16 = FocalLengthParametersFromArrayUsingModuleLensID;
      FigMotionGetCameraCharacterizationData_cold_1();
    }

    else
    {
      FigMotionGetCameraCharacterizationData_cold_5();
      v16 = -12783;
    }
  }

  else
  {
    FigMotionGetCameraCharacterizationData_cold_6(&v18);
    v16 = v18;
  }

LABEL_15:
  if (*(a5 + 16))
  {
    return v16;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t FigCapturePlatformSupportsUniversalLossyCompression()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformSupportsUniversalLossyCompression;
}

uint64_t BWDeviceIsiPhone()
{
  if (BWDeviceIsiPhone_onceToken != -1)
  {
    BWDeviceIsiPhone_cold_1();
  }

  return BWDeviceIsiPhone_isiPhone;
}

uint64_t FigCapturePixelFormatIsBayerRaw(int a1)
{
  result = 1;
  if (a1 > 1734505011)
  {
    if (a1 != 1734505012 && a1 != 1735549492)
    {
      v3 = 1919379252;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 1650943796 && a1 != 1650946098)
  {
    v3 = 1651798066;
    goto LABEL_8;
  }

  return result;
}

unint64_t cs_getZoomPIPOverlayConfiguration(void *a1, char *a2, float *a3, float *a4)
{
  result = [objc_msgSend(a1 "videoPreviewSinkConfiguration")];
  if (result)
  {
    v9 = [objc_msgSend(a1 "sourceConfiguration")];
    result = [objc_msgSend(a1 "sourceConfiguration")];
    if (result <= 9 && ((1 << result) & 0x310) != 0 && ((result = [objc_msgSend(objc_msgSend(a1 "sourceConfiguration")], v10 = HIDWORD(result), result != 3840) || v10 != 2160 ? (result == 2160 ? (v15 = v10 == 3840) : (v15 = 0), !v15 ? (v11 = 0) : (v11 = 1)) : (v11 = 1), (v11 & (v9 ^ 1)) != 1))
    {
      v12 = 0;
      v13 = 15.0;
    }

    else
    {
      v13 = 0.0;
      v12 = 1;
    }

    if (v9)
    {
      v13 = 0.0;
    }

    v14 = 8.0;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    v14 = 0.0;
    if (a2)
    {
LABEL_21:
      *a2 = v12;
    }
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([objc_msgSend(objc_msgSend(v6 "sinkConfiguration")] && (objc_msgSend(objc_msgSend(v6, "videoDataSinkConfiguration"), "cinematicFramingSupported") & 1) != 0)
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
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

uint64_t csp_isDeskCamEnabledInVideoDataConnectionConfiguration(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v7 + 1) + 8 * v5) "sinkConfiguration")])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
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

uint64_t FigCaptureVideoEffectEnabledInGraph(uint64_t a1, int a2, int a3, int a4, int a5, int a6, _BYTE *a7)
{
  v7 = (a3 ^ 1 | a5 | a6 | a4) ^ 1;
  if (a7)
  {
    *a7 = v7;
  }

  return (v7 | a2) & (a4 ^ 1u);
}

uint64_t csp_shouldApplyCropFromVideoDataOutput(void *a1)
{
  if ((FigCapturePlatformIdentifier() & 0xFFFFFFFE) != 0xA)
  {
    return 0;
  }

  if (a1)
  {
    v2 = a1[22];
    v3 = [v2 requiredFormat];
    v5 = a1[26];
    v4 = a1[27];
    v6 = a1[24];
    v7 = a1[25];
    a1 = a1[28];
    v8 = v6 == 0;
    v9 = v4 == 0;
  }

  else
  {
    v3 = [0 requiredFormat];
    v7 = 0;
    v2 = 0;
    v5 = 0;
    v8 = 1;
    v9 = 1;
  }

  if ([v2 cinematicFramingEnabled] & 1) != 0 || (objc_msgSend(v2, "deskCamEnabled"))
  {
    return 0;
  }

  v10 = [v2 manualCinematicFramingEnabled];
  result = 0;
  if ((v10 & 1) != 0 || !v5)
  {
    return result;
  }

  if ([v7 count] != 0 || !v8 || !v9 || objc_msgSend(v5, "count") > 2)
  {
    return 0;
  }

  if ([v5 count] == 2)
  {
    OUTLINED_FUNCTION_1_13();
    result = OUTLINED_FUNCTION_0_0(v12, v13, v14, v15, v16, v17, v18, v19, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = *v72;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        OUTLINED_FUNCTION_4_10();
        if (v26 != v24)
        {
          objc_enumerationMutation(v5);
        }

        v27 = *(v71 + 8 * i);
        v28 = [v27 videoDataSinkConfiguration];
        if (v28)
        {
          v22 = 1;
          v23 = v27;
        }

        else
        {
          v28 = [v27 depthDataSinkConfiguration];
          if (v28)
          {
            if (v27 != a1)
            {
              return 0;
            }

            v21 = 1;
          }
        }
      }

      v20 = OUTLINED_FUNCTION_0_0(v28, v29, v30, v31, v32, v33, v34, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);
    }

    while (v20);
    if ((v22 & v21 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = [v5 firstObject];
    result = [v23 videoDataSinkConfiguration];
    if (!result)
    {
      return result;
    }
  }

  if (!a1 || (result = FigCaptureVideoAspectRatiosAreEqual([a1 nonRotatedOutputDimensions], objc_msgSend(v23, "nonRotatedOutputDimensions"), 0.01), result))
  {
    [v3 dimensions];
    v36 = [OUTLINED_FUNCTION_49_8() nonRotatedOutputDimensions];
    return !FigCaptureVideoAspectRatiosAreEqual(v3, v36, 0.01);
  }

  return result;
}

unint64_t csp_videoCaptureDimensionsFromConnectionConfigurations(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, char a7, unsigned int a8, char a9)
{
  if (!a6)
  {
    if ([objc_msgSend(a2 "irisSinkConfiguration")])
    {
      v12 = [a2 outputWidth];
      v11 = [a2 outputHeight];
      if (FigCaptureConnectionConfigurationWithSinkType(a4, 1))
      {
        v19 = [a1 previewDimensionsForAspectRatio:a8];
        if (v12 <= v19)
        {
          v12 = v19;
        }

        if (v11 <= SHIDWORD(v19))
        {
          v11 = HIDWORD(v19);
        }

        else
        {
          v11 = v11;
        }
      }

      goto LABEL_55;
    }

    if (a2 && [a1 capturesStillsFromVideoStream] && !objc_msgSend(objc_msgSend(a1, "frontEndScalerCompanionFormats"), "count"))
    {
      v14 = FigCaptureConvertDimensionsForAspectRatio([a1 dimensions], a8);
      goto LABEL_6;
    }

    v20 = [MEMORY[0x1E695DF70] array];
    [v20 addObjectsFromArray:a3];
    [v20 addObjectsFromArray:a4];
    if (a5)
    {
      [v20 addObject:a5];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (!v21)
    {
      goto LABEL_57;
    }

    v22 = v21;
    v11 = 0;
    v12 = 0;
    v23 = *v48;
    v24 = off_1E7989000;
LABEL_21:
    v25 = 0;
    v44 = v22;
    while (1)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v47 + 1) + 8 * v25);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_53;
      }

      v27 = [v26 sinkConfiguration];
      v28 = [v27 sinkType];
      if (v28 > 5)
      {
        if (v28 == 6 || v28 == 11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v28 == 1)
        {
          v39 = [a1 previewDimensionsForAspectRatio:a8];
          if (v12 <= v39)
          {
            v12 = v39;
          }

          if (v11 <= SHIDWORD(v39))
          {
            v11 = HIDWORD(v39);
          }

          else
          {
            v11 = v11;
          }

          goto LABEL_53;
        }

        if (v28 == 4)
        {
LABEL_34:
          v30 = v11;
          v31 = v12;
          v32 = v23;
          v33 = v24;
          v34 = v20;
          v35 = [v26 nonRotatedOutputDimensions];
          v36 = v35;
          v37 = HIDWORD(v35);
          if ([v27 sinkType] != 11 && (a7 & 1) == 0)
          {
            v38 = [a1 previewDimensionsForAspectRatio:a8];
            if (v36 <= v38)
            {
              v36 = v38;
            }

            if (v37 <= SHIDWORD(v38))
            {
              LODWORD(v37) = HIDWORD(v38);
            }
          }

          if (v31 <= v36)
          {
            v31 = v36;
          }

          v12 = v31;
          if (v30 <= v37)
          {
            v11 = v37;
          }

          else
          {
            v11 = v30;
          }

          if ([v26 underlyingDeviceType] == 13)
          {
            v12 = [a1 dimensions];
            v11 = [a1 dimensions] >> 32;
          }

          v20 = v34;
          v24 = v33;
          v23 = v32;
          v22 = v44;
        }
      }

LABEL_53:
      if (v22 == ++v25)
      {
        v22 = [v20 countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (!v22)
        {
          goto LABEL_55;
        }

        goto LABEL_21;
      }
    }
  }

  v10 = [a1 sensorDimensions];
  v11 = HIDWORD(v10);
  v12 = v10;
  if (a9)
  {
    v13 = [a1 postGDCCropDimensions];
    if (v13 >= 1 && SHIDWORD(v13) >= 1)
    {
      v14 = [a1 postGDCCropDimensions];
LABEL_6:
      v11 = HIDWORD(v14);
      v12 = v14;
    }
  }

LABEL_55:
  if (!v12 || !v11)
  {
LABEL_57:
    v40 = [a1 previewDimensionsForAspectRatio:a8];
    v11 = HIDWORD(v40);
    v12 = v40;
  }

  return v12 | (v11 << 32);
}

void csp_shouldUseFESCompanionIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_81_3();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [v34 requiredFormat];
  if (([v35 cinematicFramingEnabled] & 1) == 0 && (objc_msgSend(v35, "deskCamEnabled") & 1) == 0 && objc_msgSend(objc_msgSend(v36, "frontEndScalerCompanionFormats"), "count") && v31 >= 1 && SHIDWORD(v31) >= 1)
  {
    v55 = v35;
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_47_0();
    v42 = OUTLINED_FUNCTION_52(v38, v39, v40, v41);
    if (v42)
    {
      v43 = v42;
      OUTLINED_FUNCTION_125_1();
LABEL_10:
      v44 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_32_10();
        if (!v45)
        {
          objc_enumerationMutation(v33);
        }

        v46 = *(a30 + 8 * v44);
        v47 = [v46 sinkConfiguration];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v47 sinkType] == 6)
        {
          v48 = [v36 previewDimensionsForAspectRatio:{objc_msgSend(objc_msgSend(v46, "sourceConfiguration"), "outputAspectRatio")}];
          v49 = [v46 nonRotatedOutputDimensions];
          if (([v47 optimizedForPreview] & 1) == 0 && (v49 > v48 || SHIDWORD(v49) > SHIDWORD(v48)))
          {
            break;
          }

          if ([v46 videoStabilizationMethod] && objc_msgSend(v46, "videoStabilizationMethod") != 4 && objc_msgSend(v46, "videoStabilizationMethod") != 6)
          {
            break;
          }
        }

        if (v43 == ++v44)
        {
          OUTLINED_FUNCTION_47_0();
          v43 = OUTLINED_FUNCTION_52(v51, v52, v53, v54);
          if (v43)
          {
            goto LABEL_10;
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      [objc_msgSend(objc_msgSend(v36 "frontEndScalerCompanionFormats")];
      if ([v55 geometricDistortionCorrectionEnabled])
      {
        [objc_msgSend(objc_msgSend(v36 "frontEndScalerCompanionFormats")];
      }
    }
  }

  OUTLINED_FUNCTION_80_3();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  v3 = *(v1 + 3480);

  return [v3 numberWithInt:v0];
}

double OUTLINED_FUNCTION_66_1()
{
  v3 = v0 + *(v1 + 3872);
  *&STACK[0x2D0] = *v3;
  STACK[0x2E0] = *(v3 + 16);

  return CMTimeGetSeconds(&STACK[0x2D0]);
}

uint64_t OUTLINED_FUNCTION_66_2(opaqueCMSampleBuffer *a1, uint64_t a2, __CVBuffer *a3, CFTypeRef *a4)
{

  return BWSampleBufferSetAttachedMediaFromPixelBuffer(a1, a2, a3, a4, v4, 0, 1);
}

BOOL OUTLINED_FUNCTION_66_6(NSObject *a1)
{
  v2 = STACK[0x35B];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_66_7()
{

  return [v0 countByEnumeratingWithState:&STACK[0x2A0] objects:&STACK[0x220] count:16];
}

void csp_shouldUseDepthCompanionIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_91();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if ([objc_msgSend(v32 "requiredFormat")] && objc_msgSend(v33, "depthDataDeliveryEnabled") && (objc_msgSend(v33, "cinematicFramingEnabled") & 1) == 0 && (objc_msgSend(v33, "deskCamEnabled") & 1) == 0 && v29 >= 1 && SHIDWORD(v29) >= 1)
  {
    [objc_msgSend(objc_msgSend(v31 "firstObject")];
    v35 = [OUTLINED_FUNCTION_8() previewDimensionsForAspectRatio:?];
    OUTLINED_FUNCTION_9_35();
    v40 = OUTLINED_FUNCTION_37(v36, v37, v38, v39);
    if (v40)
    {
      v41 = v40;
      OUTLINED_FUNCTION_82_4();
      do
      {
        for (i = 0; i != v41; ++i)
        {
          OUTLINED_FUNCTION_19_17();
          if (!v43)
          {
            objc_enumerationMutation(v31);
          }

          v44 = *(a28 + 8 * i);
          v45 = [v44 sinkConfiguration];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v45 sinkType] == 4)
            {
              goto LABEL_31;
            }

            if ([v45 sinkType] == 10)
            {
              if ([v45 irisMovieCaptureEnabled])
              {
                goto LABEL_31;
              }
            }

            else if ([v45 sinkType] == 6)
            {
              v46 = [v44 nonRotatedOutputDimensions];
              if (([v45 optimizedForPreview] & 1) == 0 && (v46 > v35 || SHIDWORD(v46) > SHIDWORD(v35)))
              {
                goto LABEL_31;
              }

              if ([v44 videoStabilizationMethod] && objc_msgSend(v44, "videoStabilizationMethod") != 4 && objc_msgSend(v44, "videoStabilizationMethod") != 6)
              {
                goto LABEL_31;
              }
            }
          }
        }

        OUTLINED_FUNCTION_17_20();
        v41 = OUTLINED_FUNCTION_37(v48, v49, v50, v51);
      }

      while (v41);
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_90_3();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_79_4()
{

  return _FigIsCurrentDispatchQueue();
}

void csp_dockKitNodeEnabled()
{
  OUTLINED_FUNCTION_58_2();
  v2 = v1;
  v3 = v0;
  if (v0)
  {
    v4 = *(v0 + 176);
  }

  else
  {
    v4 = 0;
  }

  [v4 imageControlMode];
  [v4 imageControlMode];
  [v4 imageControlMode];
  [v4 cinematicFramingEnabled];
  if ([v4 manualCinematicFramingEnabled])
  {
    [v4 isDockedTrackingEnabled];
  }

  csp_cinematicVideoEnabled(v3);
  v5 = MGGetBoolAnswer();
  if (v3)
  {
    v6 = *(v3 + 176);
  }

  else
  {
    v6 = 0;
  }

  [v6 sourceDeviceType];
  if (v2)
  {
    [v4 isDockedTrackingEnabled];
  }

  _os_feature_enabled_impl();
  if (v3)
  {
    if (*(v3 + 355) == 1)
    {
      [v4 sourcePosition];
    }

    if (v5 && *(v3 + 354) == 1)
    {
      [v4 sourceDeviceType];
    }
  }

  if (dword_1ED844130)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  OUTLINED_FUNCTION_56();
}

uint64_t csp_cinematicVideoEnabled(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 176) isCinematicVideoCaptureEnabled])
    {
      return 1;
    }

    if ([*(a1 + 192) previewDepthDataDeliveryEnabled])
    {
      v3 = [*(a1 + 192) previewDepthFilterRenderingEnabled];
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 208);
  }

  else
  {
    if ([0 isCinematicVideoCaptureEnabled])
    {
      return 1;
    }

    if ([0 previewDepthDataDeliveryEnabled])
    {
      v3 = [0 previewDepthFilterRenderingEnabled];
    }

    else
    {
      v3 = 0;
    }

    v4 = 0;
  }

  if (FigCaptureConnectionConfigurationWithSinkType(v4, 4))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL OUTLINED_FUNCTION_120_2(NSObject *a1)
{
  v2 = STACK[0x39B];

  return os_log_type_enabled(a1, v2);
}

uint64_t csp_willDecoupleWarperFromStreamProcessing(void *a1)
{
  if (FigCapturePlatformIdentifier() > 9)
  {
    return 0;
  }

  if ([a1 containsObject:&unk_1F2244788])
  {
    return 1;
  }

  return [a1 containsObject:&unk_1F22447B8];
}

uint64_t csp_shouldCaptureStillsFromVideoStream(void *a1, void *a2, char a3, int a4)
{
  [objc_msgSend(a1 "requiredFormat")];
  [a2 capturesStillsFromVideoStream];
  v8 = FigCaptureVideoEffectEnabledInGraph(@"backgroundblur", [a1 backgroundBlurEnabled], objc_msgSend(a1, "isBackgroundBlurSupported"), objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isBackgroundBlurProvidedBySource"), a4, objc_msgSend(a1, "isCinematicVideoCaptureEnabled"), 0);
  v9 = FigCaptureVideoEffectEnabledInGraph(@"studiolighting", [a1 studioLightingEnabled], objc_msgSend(a1, "isStudioLightingSupported"), objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isStudioLightingProvidedBySource"), a4, objc_msgSend(a1, "isCinematicVideoCaptureEnabled"), 0);
  v10 = FigCaptureVideoEffectEnabledInGraph(@"backgroundreplacement", [a1 backgroundReplacementEnabled], objc_msgSend(a1, "isBackgroundReplacementSupported"), objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isBackgroundReplacementProvidedBySource"), a4, objc_msgSend(a1, "isCinematicVideoCaptureEnabled"), 0);
  v11 = [a1 isCinematicVideoCaptureEnabled];
  if (a4)
  {
    v12 = [a2 capturesStillsFromVideoStream] & (a3 ^ 1) | v8 | v9 | v10 | v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t csp_trueVideoCaptureEnabled(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if ([objc_msgSend(*(*(&v7 + 1) + 8 * v5) "movieFileSinkConfiguration")])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v6 count:16];
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

uint64_t csp_stabilizationMethodWithMostOverscan(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [&unk_1F2248AD8 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_1F2248AD8);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([a1 containsObject:v6])
        {
          LODWORD(result) = [v6 intValue];
          if (result == 4)
          {
            return 0;
          }

          else
          {
            return result;
          }
        }

        ++v5;
      }

      while (v3 != v5);
      result = [&unk_1F2248AD8 countByEnumeratingWithState:&v8 objects:v7 count:16];
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

uint64_t __FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType_block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 48) isEqualToString:*off_1E798A0E8])
  {
    if ([*(a2 + 96) count] == 1)
    {
      *(*(*(a1 + 40) + 8) + 40) = [*(a2 + 96) firstObject];
      return 0;
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only one stream format is currently supported on the IR camera. Stream format count: %lu", objc_msgSend(*(a2 + 96), "count")];
    v15 = v12;
LABEL_28:
    objc_exception_throw([v15 exceptionWithName:v13 reason:v14 userInfo:0]);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a2 + 96) reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v7 = *v19;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      if ([v9 cinematicFramingFormat] && objc_msgSend(*(a1 + 32), "isValidDerivedSourceFormatForUnderlyingFormat:", objc_msgSend(v9, "cinematicFramingFormat")))
      {
        v10 = [v9 cinematicFramingFormat];
LABEL_22:
        v9 = v10;
LABEL_23:
        *(*(*(a1 + 40) + 8) + 40) = v9;
        goto LABEL_24;
      }

      if ([v9 geometricDistortionCorrectionFormat] && objc_msgSend(*(a1 + 32), "isValidDerivedSourceFormatForUnderlyingFormat:", objc_msgSend(v9, "geometricDistortionCorrectionFormat")))
      {
        v10 = [v9 geometricDistortionCorrectionFormat];
        goto LABEL_22;
      }

      if ([v9 smartCropFormat] && objc_msgSend(*(a1 + 32), "isValidDerivedSourceFormatForUnderlyingFormat:", objc_msgSend(v9, "smartCropFormat")))
      {
        v10 = [v9 smartCropFormat];
        goto LABEL_22;
      }

      if ([*(a1 + 32) isValidDerivedSourceFormatForUnderlyingFormat:v9])
      {
        goto LABEL_23;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_24:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v16 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find the underlying capture source format for %@ on %@", objc_msgSend(*(a1 + 32), "uniqueID"), *(a1 + 48)];
    v15 = v16;
    goto LABEL_28;
  }

  return 0;
}

uint64_t BWDeviceModelHasCharleston()
{
  ModelSpecificName = FigCaptureGetModelSpecificName();

  return [&unk_1F22486D0 containsObject:ModelSpecificName];
}

uint64_t FigCapturePixelFormatIsUsedForProRes(int a1)
{
  LODWORD(result) = FigCapturePixelFormatIs422(a1);
  if (a1 == 1650946098 || a1 == 1651798066)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t BWCaptureDevicePositionFromPortType(void *a1)
{
  if ([a1 isEqualToString:*off_1E798A0C0] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0D8) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0C8) & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", *off_1E798A0D0))
  {
    return 1;
  }

  if ([a1 isEqualToString:*off_1E798A0E0])
  {
    return 2;
  }

  v2 = 2;
  if (([a1 isEqualToString:*off_1E798A0E8] & 1) == 0)
  {
    if ([a1 isEqualToString:*off_1E798A0F8])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(void *a1, void *a2)
{
  if ([a1 containsObject:*MEMORY[0x1E6960388]])
  {
    [a2 addObject:*off_1E798ACB8];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960390]])
  {
    [a2 addObject:*off_1E798ACB0];
  }

  if ([a1 containsObject:*off_1E798D0D0])
  {
    [a2 addObject:*off_1E798ACC0];
  }

  if ([a1 containsObject:@"mdta/com.apple.quicktime.detected-dog-head"])
  {
    [a2 addObject:*off_1E798ACA8];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960378]])
  {
    [a2 addObject:*off_1E798ACA0];
  }

  if ([a1 containsObject:@"mdta/com.apple.quicktime.detected-cat-head"])
  {
    [a2 addObject:*off_1E798AC98];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960368]])
  {
    [a2 addObject:*off_1E798AC90];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960398]])
  {
    [a2 addObject:*off_1E798ACD8];
  }

  if ([a1 containsObject:*off_1E798D0E0])
  {
    [a2 addObject:*off_1E798ACD0];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960370]])
  {
    [a2 addObject:*off_1E798AC98];
  }

  if ([a1 containsObject:*MEMORY[0x1E6960380]])
  {
    [a2 addObject:*off_1E798ACA8];
  }

  result = [a1 containsObject:*off_1E798D0D8];
  if (result)
  {
    v5 = *off_1E798ACC8;

    return [a2 addObject:v5];
  }

  return result;
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D128;

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *off_1E798D130;

  return [v1 containsObject:v2];
}

uint64_t csp_portraitPhotoModeEnabled(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 192) previewDepthDataDeliveryEnabled])
    {
      v2 = [*(a1 + 192) previewDepthFilterRenderingEnabled];
    }

    else
    {
      v2 = 0;
    }

    v3 = *(a1 + 208);
  }

  else
  {
    if ([0 previewDepthDataDeliveryEnabled])
    {
      v2 = [0 previewDepthFilterRenderingEnabled];
    }

    else
    {
      v2 = 0;
    }

    v3 = 0;
  }

  if (FigCaptureConnectionConfigurationWithSinkType(v3, 4))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t csp_configureMultiStreamCameraNode(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, float a9, float a10, float a11, float a12, float a13, float a14, unsigned __int8 a15, unsigned __int8 a16, void *a17, unsigned __int8 a18, int a19, unsigned int a20, unsigned __int8 a21, unsigned __int8 a22, char a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, uint64_t a28, uint64_t a29, int a30, char a31, unsigned __int8 a32, unsigned __int8 a33, char a34, char a35, unsigned __int8 a36, unsigned __int8 a37, unsigned int a38, unsigned int a39, unsigned int a40, unsigned int a41, unsigned __int8 a42, unsigned __int8 a43, void *a44, unsigned __int8 a45, unsigned __int8 a46, unsigned int a47, unsigned __int8 a48, unsigned __int8 a49, unsigned __int8 a50, void *a51, unsigned __int8 a52, unsigned __int8 a53, unsigned __int8 a54, unsigned __int8 a55, unsigned __int8 a56, unsigned __int8 a57, unsigned __int8 a58, unsigned __int8 a59, unsigned __int8 a60, unsigned __int8 a61, char a62, unsigned __int8 a63)
{
  v504 = a4;
  v545 = 0;
  v544 = 0;
  v111 = [a1 captureStream];
  v112 = [a1 portType];
  v113 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([a2 source], objc_msgSend(a2, "requiredFormat"), v112, &v545);
  if (v545)
  {
    csp_configureMultiStreamCameraNode_cold_1();
    goto LABEL_572;
  }

  v511 = v113;
  if (!v113)
  {
    csp_configureMultiStreamCameraNode_cold_10();
    v113 = 0;
    goto LABEL_572;
  }

  v114 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType([a2 source], v112, &v545);
  if (v545)
  {
    v433 = v114;
    csp_configureMultiStreamCameraNode_cold_2();
    v129 = v433;
    if (!v433)
    {
      goto LABEL_572;
    }

    goto LABEL_571;
  }

  if (!v114)
  {
    v115 = [a2 source];
    if (v115)
    {
      v114 = CFRetain(v115);
    }

    else
    {
      v114 = 0;
    }
  }

  v500 = v114;
  v498 = v112;
  v116 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:a6 includeIris:1];
  LODWORD(v488) = csp_stabilizationMethodWithMostOverscan(v116);
  HIDWORD(v496) = FigCaptureSourceGetIntAttribute([a2 source], 0x1F21A0530, &v545);
  if (v545)
  {
    csp_configureMultiStreamCameraNode_cold_3();
    goto LABEL_32;
  }

  v494 = v116;
  LODWORD(v502) = a63;
  HIDWORD(v502) = a24;
  v497 = a17;
  HIDWORD(v490) = a7;
  LODWORD(v491) = a8;
  LODWORD(v493) = csp_willDecoupleWarperFromStreamProcessing(a17);
  if (FigCapturePlatformIdentifier() < 10)
  {
    HIDWORD(v491) = 0;
  }

  else if ([a17 containsObject:&unk_1F2244788])
  {
    HIDWORD(v491) = 1;
  }

  else
  {
    HIDWORD(v491) = [a17 containsObject:&unk_1F22447B8];
  }

  v489 = a1;
  v117 = a37;
  v118 = a18;
  HIDWORD(v495) = csp_shouldCaptureStillsFromVideoStream(a2, v113, a24, a5 != 0);
  HIDWORD(v488) = [a5 irisVISEnabled];
  LODWORD(v495) = [objc_msgSend(a5 "irisSinkConfiguration")];
  LODWORD(v496) = [a2 bravoShiftMitigationEnabled];
  v543 = 0;
  v542 = 0;
  v541 = 0;
  v540 = *MEMORY[0x1E695EFF8];
  v539 = 0;
  v119 = objc_alloc_init(BWMultiStreamCameraSourceNodeConfiguration);
  if ([v113 isVideoHDRFusionSupported])
  {
    BWColorSpaceIsHDR([a2 colorSpace]);
  }

  shouldUseActionCameraCompanionIndex = csp_shouldUseActionCameraCompanionIndex(a2, a6, a18);
  v510 = v111;
  LODWORD(v490) = a61;
  obj = csp_shouldUseFullBinSIFRCompanionIndex(v511, [v111 supportedFormats], a5, (a37 & a61), a63);
  v547 = 0u;
  v548 = 0u;
  v549 = 0u;
  v550 = 0u;
  v121 = [a6 countByEnumeratingWithState:&v547 objects:&v546 count:16];
  v512 = v119;
  v508 = a2;
  v501 = a5;
  if (v121)
  {
    v123 = v121;
    v124 = *v548;
    while (2)
    {
      for (i = 0; i != v123; ++i)
      {
        if (*v548 != v124)
        {
          objc_enumerationMutation(a6);
        }

        v126 = *(*(&v547 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v126 attachMetadataToVideoBuffers])
        {
          v122 = 0;
          goto LABEL_28;
        }
      }

      v123 = [a6 countByEnumeratingWithState:&v547 objects:&v546 count:16];
      if (v123)
      {
        continue;
      }

      break;
    }

    v122 = 1;
LABEL_28:
    a2 = v508;
    v117 = a37;
    v118 = a18;
  }

  else
  {
    v122 = 1;
  }

  v127 = [a2 source];
  v128 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v128)
  {
    v545 = -12782;
LABEL_31:
    csp_configureMultiStreamCameraNode_cold_9();
LABEL_32:
    v113 = v511;
    goto LABEL_33;
  }

  v456 = *MEMORY[0x1E695E480];
  v458 = @"AttributesDictionary";
  v545 = v128(v127);
  if (v545)
  {
    goto LABEL_31;
  }

  HIDWORD(v454) = v122;
  if (a83)
  {
    if (![v511 depthCompanionFormat])
    {
      csp_configureMultiStreamCameraNode_cold_8();
      goto LABEL_32;
    }

    v130 = 1;
  }

  else
  {
    v130 = a25;
  }

  HIDWORD(v487) = v130;
  LODWORD(v479) = v118;
  HIDWORD(v484) = v117;
  LODWORD(v485) = a86;
  -[BWMultiStreamCameraSourceNodeConfiguration setMachineLearningVideoNoiseReductionSupported:](v512, "setMachineLearningVideoNoiseReductionSupported:", [objc_msgSend(a2 "requiredFormat")]);
  v131 = [a3 depthType];
  LODWORD(v487) = a30;
  if (a30)
  {
    v132 = 0;
  }

  else
  {
    v132 = v131 == 3;
  }

  v133 = v132;
  LODWORD(v470) = v133;
  if (v132)
  {
    v482 = a72;
    v472 = 0;
    LODWORD(v474) = 0;
    HIDWORD(v470) = 0;
    v134 = [v511 fsdNetCompanionFormat] != 0;
    v135 = 1;
  }

  else
  {
    v134 = 0;
    HIDWORD(v472) = a95;
    LODWORD(v474) = a94;
    LODWORD(v472) = a92;
    HIDWORD(v470) = a91;
    v482 = a71;
    v135 = a15;
  }

  HIDWORD(v499) = v135;
  HIDWORD(v474) = a83;
  HIDWORD(v460) = a89;
  if (a89)
  {
    v136 = v511;
    v137 = [v511 stereoVideoCompanionFormat] != 0;
  }

  else
  {
    v137 = 0;
    v136 = v511;
  }

  v538 = 0;
  v138 = [a2 sensorHDREnabled];
  v139 = [a2 highlightRecoveryEnabled];
  [a2 geometricDistortionCorrectionEnabled];
  HIDWORD(v468) = a33;
  v140 = csp_formatIndex(v136, a24, SHIDWORD(v487), v134, shouldUseActionCameraCompanionIndex, obj, a86, v137, v496, v138, v139, a33, &v538, &v542, &v543, &v541, &v540, &v539);
  v141 = v512;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFormatIndex:v140];
  if ([v136 fastSwitchingMainCaptureStreamFormat])
  {
    v142 = [v511 fastSwitchingMainCaptureStreamFormat];
    v143 = [v142 frontEndScalerCompanionFormats];
    if ([v143 count])
    {
      v142 = [v143 firstObject];
    }

    v144 = [v142 formatIndex];
    v145 = [objc_msgSend(v111 "supportedFormats")];
    v146 = [v145 objectForKeyedSubscript:*off_1E798C998];
    if (v144 == -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v512, "formatIndex") || [v146 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v512, "formatIndex"))}] && (v147 = csp_formatUsesFES(v145), v147 == csp_formatUsesFES(objc_msgSend(objc_msgSend(v510, "supportedFormats"), "objectAtIndexedSubscript:", -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v512, "formatIndex")))))
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFastSwitchingMainFormatIndex:v144];
      [objc_msgSend(v145 objectForKeyedSubscript:{*off_1E798D3F8), "floatValue"}];
      [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFastSwitchingMainFormatMaxFrameRate:?];
    }
  }

  HIDWORD(v452) = v137;
  [a3 ultraHighResolutionZeroShutterLagSupportEnabled];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 formatIndex];
  v148 = v510;
  [v510 supportedFormats];
  [v511 configureForNonDisruptiveFullBinSIFRSwitching];
  csp_activeStreamingNondisruptiveSwitchingFormatIndices();
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setActiveStreamingNondisruptiveSwitchingFormatIndices:v149];
  -[BWMultiStreamCameraSourceNodeConfiguration setSifrBinningFactorOverrideForNondisruptiveSwitching:](v512, "setSifrBinningFactorOverrideForNondisruptiveSwitching:", [v511 sifrBinningFactorOverrideForNondisruptiveSwitching]);
  -[BWMultiStreamCameraSourceNodeConfiguration setQuadraSubPixelSwitchingParameters:](v512, "setQuadraSubPixelSwitchingParameters:", [v511 quadraSubPixelSwitchingParameters]);
  v150 = v501;
  v151 = +[FigCaptureSourceFormatDimensions identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:](FigCaptureSourceFormatDimensions, "identifyResolutionFlavorFromDimensions:availableHighResStillImageDimensions:aspectRatio:", [objc_msgSend(v501 "irisSinkConfiguration")], objc_msgSend(v511, "highResStillImageDimensions"), objc_msgSend(a2, "outputAspectRatio"));
  if ([v511 isPhotoFormat] && (v151 > 0 || (objc_msgSend(v510, "isMultipleSensorRawBufferPoolsSupported") & 1) != 0) || objc_msgSend(v511, "configureForNonDisruptiveFullBinSIFRSwitching") && a63)
  {
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 fastSwitchingMainFormatIndex]== -1)
    {
      v152 = [(BWMultiStreamCameraSourceNodeConfiguration *)v512 formatIndex];
    }

    else
    {
      v152 = [(BWMultiStreamCameraSourceNodeConfiguration *)v512 fastSwitchingMainFormatIndex];
    }

    v153 = v152;
    v154 = [v510 supportedFormats];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setActiveUltraHighResStillImageNondisruptiveSwitchingFormatIndices:csp_activeUltraHighResStillImageNondisruptiveSwitchingFormatIndices(v153, v154, v155, v156, v157, v158, v159, v160, v434, v437, v440, v442, v444, v446, v448, v450, v452, v454, v456, @"AttributesDictionary", v460, v462, v465, v468, v470, v472, v474, v475, v479, v482, v484, v485, v487, v488, v489, v490, v491, v493, v494, v495, v496, a17, v112, v499, v500, v501, v502, v504)];
  }

  v161 = a3;
  if ([v511 isFastSwitchingConfigurationRequired])
  {
    v162 = [v511 frontEndScalerCompanionFormats];
    v163 = [v162 count];
    v164 = v511;
    if (v163)
    {
      v164 = [v162 firstObject];
    }

    v165 = [v164 formatIndex];
    if (v165 == [(BWMultiStreamCameraSourceNodeConfiguration *)v512 formatIndex])
    {
      v166 = [MEMORY[0x1E695DFA8] set];
      v534 = 0u;
      v535 = 0u;
      v536 = 0u;
      v537 = 0u;
      obja = FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType([a2 source], v511, v498, &v545);
      v167 = [obja countByEnumeratingWithState:&v534 objects:v533 count:16];
      if (v167)
      {
        v168 = v167;
        v169 = *v535;
        do
        {
          for (j = 0; j != v168; ++j)
          {
            if (*v535 != v169)
            {
              objc_enumerationMutation(obja);
            }

            v171 = *(*(&v534 + 1) + 8 * j);
            v172 = [v171 frontEndScalerCompanionFormats];
            v173 = [v172 count];
            v174 = v171;
            if (v173)
            {
              v174 = [v172 firstObject];
            }

            v175 = [v174 formatIndex];
            [v166 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v175)}];
            [v510 supportedFormats];
            [v171 configureForNonDisruptiveFullBinSIFRSwitching];
            csp_activeStreamingNondisruptiveSwitchingFormatIndices();
            [v166 addObjectsFromArray:v176];
            [v166 removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v512, "formatIndex"))}];
          }

          v168 = [obja countByEnumeratingWithState:&v534 objects:v533 count:16];
        }

        while (v168);
      }

      if ([v166 count])
      {
        v177 = [v166 allObjects];
      }

      else
      {
        v177 = 0;
      }

      v161 = a3;
      v148 = v510;
      v141 = v512;
      v150 = v501;
      [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFastSwitchingNondisruptiveFormatIndices:v177];
      a2 = v508;
    }
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setCropDimensionsWhenFESIsEnabled:v543];
  [a2 maxFrameRateClientOverride];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMaximumSupportedFrameRate:?];
  [objc_msgSend(a2 "requiredFormat")];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMinimumSupportedFrameRate:?];
  v178 = [objc_msgSend(a2 "requiredFormat")];
  v538 &= v178;
  if ([objc_msgSend(objc_msgSend(v148 "stream")])
  {
    if (v538 == 1)
    {
      v546.value = 0;
      FigCaptureSourceCopyProperty(v500, v458, v456, &v546);
      if ([a2 sourcePosition] == 1)
      {
        v179 = [objc_msgSend(v546.value objectForKeyedSubscript:{@"MainToSIFRSkipRatioFor60FPS", "intValue"}];
        [(BWMultiStreamCameraSourceNodeConfiguration *)v141 maximumSupportedFrameRate];
        if (v180 != 60.0 || !v179)
        {
          [(BWMultiStreamCameraSourceNodeConfiguration *)v141 maximumSupportedFrameRate];
          if (v181 <= 60.0)
          {
            if ([v546.value objectForKeyedSubscript:@"MainToSIFRFrameRateRatio"])
            {
              v179 = [objc_msgSend(v546.value objectForKeyedSubscript:{@"MainToSIFRFrameRateRatio", "intValue"}];
            }

            else
            {
              v179 = 2;
            }
          }

          else
          {
            v179 = 4;
          }
        }
      }

      else
      {
        v182 = [objc_msgSend(v546.value objectForKeyedSubscript:{@"MainToSIFRFrameRateRatio", "intValue"}];
        if (v182 <= 1)
        {
          v179 = 1;
        }

        else
        {
          v179 = v182;
        }
      }

      [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMainToSIFRFrameRateRatio:v179];
    }

    else
    {
      [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setMainToSIFRFrameRateRatio:1];
    }
  }

  if (v538 == 1)
  {
    v183 = [a2 highlightRecoveryEnabled];
  }

  else
  {
    v183 = 0;
  }

  HIDWORD(v466) = a49 | v183;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setHighlightRecoveryEnabledWhenConfiguredAsMasterOrSingleStream:BYTE4(v466) & 1];
  v184 = (((a32 ^ 1) & 1) != 0 || (a50 & 1) != 0 || a49) && [(BWMultiStreamCameraSourceNodeConfiguration *)v141 highlightRecoveryEnabledWhenConfiguredAsMasterOrSingleStream];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setHighlightRecoveryEnabledWhenConfiguredAsSlave:v184];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setVideoHDRImageStatisticsEnabled:a60];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setVideoHDRFusionEnabled:0];
  LODWORD(v468) = a32 ^ 1;
  if (HIDWORD(v499))
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDolbyVisionMetadataOnVideoCaptureOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v141 videoHDRImageStatisticsEnabled]];
    v185 = 0;
  }

  else
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDolbyVisionMetadataOnVideoCaptureOutputEnabled:0];
    v185 = [(BWMultiStreamCameraSourceNodeConfiguration *)v141 videoHDRImageStatisticsEnabled];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDolbyVisionMetadataOnPreviewOutputEnabled:v185];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setUsesFirmwareStillImageOutput:?];
  v186 = [v511 isHighPhotoQualitySupported];
  v187 = [v511 usesPacked10BitFirmwareStillImageOutputPixelFormat];
  v188 = (v186 ^ 1) & v187;
  if ((v186 ^ 1) & 1) == 0 && (v187)
  {
    v188 = [objc_msgSend(v150 irisSinkConfiguration] > 1 || BWColorSpaceIsHDR(objc_msgSend(a2, "colorSpace"));
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setStillImageOutputRequires10BitPixelFormat:v188];
  if (([a2 cinematicFramingEnabled] & 1) != 0 || csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(a6))
  {
    v189 = v511;
    objb = [v511 isSmartCropSupported];
    v190 = 1;
  }

  else
  {
    v190 = 0;
    objb = 0;
    v189 = v511;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setSensorCropDimensions:v541];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setSensorCenterOffset:v540];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setPostGDCCropDimensions:v539];
  v191 = [v189 isDynamicAspectRatioSupported];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setDynamicAspectRatioEnabled:v191];
  v192 = 0;
  v477 = v191;
  if (v191 && (objb & 1) == 0)
  {
    v192 = [v161 smartFramingEnabled] ^ 1;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setAdaptiveSensorCropForDynamicAspectRatioEnabled:v192];
  if ([objc_msgSend(v544 objectForKeyedSubscript:{@"SensorOutputLargerThanImageCircle", "BOOLValue"}])
  {
    if ([objc_msgSend(objc_msgSend(v161 "cameraInfoByPortType")])
    {
      v193 = 1;
    }

    else
    {
      v532 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v141 = v512;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v193 = 0;
      v161 = a3;
    }
  }

  else
  {
    v193 = 0;
  }

  LODWORD(v463) = a49;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setSensorOutputLargerThanImageCircle:v193, v434, v437];
  -[BWMultiStreamCameraSourceNodeConfiguration setBaseZoomFactorOverridesByAspectRatio:](v141, "setBaseZoomFactorOverridesByAspectRatio:", [v544 objectForKeyedSubscript:@"BaseZoomFactorOverridesByAspectRatio"]);
  if (-[BWMultiStreamCameraSourceNodeConfiguration baseZoomFactorOverridesByAspectRatio](v141, "baseZoomFactorOverridesByAspectRatio") && ([v161 isBravoVariant] & 1) != 0)
  {
    goto LABEL_32;
  }

  v113 = v511;
  AspectRatioFractionalDimensionsForAspectRatio = [v511 sourceCropAspectRatio];
  if (v477 && [a2 outputAspectRatio] && (objc_msgSend(a3, "smartFramingEnabled") & 1) == 0)
  {
    AspectRatioFractionalDimensionsForAspectRatio = FigCaptureGetAspectRatioFractionalDimensionsForAspectRatio([a2 outputAspectRatio]);
  }

  v196 = AspectRatioFractionalDimensionsForAspectRatio;
  if (a99)
  {
    v529 = 0u;
    v530 = 0u;
    v527 = 0u;
    v528 = 0u;
    v197 = [a6 countByEnumeratingWithState:&v527 objects:v526 count:16];
    if (v197)
    {
      v198 = v197;
      v199 = *v528;
LABEL_134:
      v200 = 0;
      while (1)
      {
        if (*v528 != v199)
        {
          objc_enumerationMutation(a6);
        }

        v201 = *(*(&v527 + 1) + 8 * v200);
        if ([v201 videoDataSinkConfiguration])
        {
          break;
        }

        if (v198 == ++v200)
        {
          v198 = [a6 countByEnumeratingWithState:&v527 objects:v526 count:16];
          if (v198)
          {
            goto LABEL_134;
          }

          v201 = 0;
          break;
        }
      }

      v141 = v512;
    }

    else
    {
      v201 = 0;
    }

    v196 = [v201 nonRotatedOutputDimensions];
    AspectRatioFractionalDimensionsForAspectRatio = [v201 nonRotatedOutputDimensions];
  }

  v202 = AspectRatioFractionalDimensionsForAspectRatio & 0xFFFFFFFF00000000 | v196;
  if (objb)
  {
    v203 = 0;
  }

  else
  {
    v203 = v202;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setCropAspectRatio:v203];
  -[BWMultiStreamCameraSourceNodeConfiguration setHorizontalSensorBinningFactor:](v141, "setHorizontalSensorBinningFactor:", [v511 horizontalSensorBinningFactor]);
  -[BWMultiStreamCameraSourceNodeConfiguration setVerticalSensorBinningFactor:](v141, "setVerticalSensorBinningFactor:", [v511 verticalSensorBinningFactor]);
  -[BWMultiStreamCameraSourceNodeConfiguration setFesBinningFactorHorizontal:](v141, "setFesBinningFactorHorizontal:", [v511 fesBinningFactorHorizontal]);
  -[BWMultiStreamCameraSourceNodeConfiguration setVideoStabilizationEnabled:](v141, "setVideoStabilizationEnabled:", [v497 containsObject:&unk_1F2244908]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setVideoStabilizationMethods:v494];
  -[BWMultiStreamCameraSourceNodeConfiguration setVideoStabilizationTypeISPMeshEnabled:](v141, "setVideoStabilizationTypeISPMeshEnabled:", [v497 containsObject:&unk_1F22447B8]);
  if ((a79 & 1) != 0 || a90)
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setLtmLookUpTableMetadataEnabledForStreaming:1];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setLtmThumbnailMetadataEnabledForStreaming:1];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v141 setLtmThumbnailMetadataEnabledForStreaming:[(BWMultiStreamCameraSourceNodeConfiguration *)v141 ltmThumbnailMetadataEnabledForStreaming]];
  HIDWORD(v463) = v190;
  LODWORD(v466) = a90;
  if ((a65 & 1) != 0 || (a66 & 1) != 0 || a67)
  {
    v546.value = 0;
    v206 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v206)
    {
      v206(v500, v458, v456, &v546);
    }

    if ([objc_msgSend(v546.value objectForKeyedSubscript:{@"GeometricDistortionCorrection", "BOOLValue"}])
    {
      v205 = 1;
    }

    else if ([objc_msgSend(v546.value objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}] && objc_msgSend(objc_msgSend(a2, "requiredFormat"), "isSmartCropSupported"))
    {
      v205 = [a2 cinematicFramingEnabled];
    }

    else
    {
      v205 = 0;
    }

    BoolAttribute = FigCaptureSourceGetBoolAttribute(v500, 0x1F21A0730, &v545);

    if (v545)
    {
      csp_configureMultiStreamCameraNode_cold_4();
      goto LABEL_33;
    }
  }

  else
  {
    BoolAttribute = 0;
    v205 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setGeometricDistortionCorrectionSupported:v205];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setGeometricDistortionCorrectionOnStillImageOutputEnabled:v205 & a65];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setGeometricDistortionCorrectionOnVideoCaptureOutputEnabled:v205 & a66];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setGeometricDistortionCorrectionOnPreviewOutputEnabled:v205 & a67];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setMaximumGeometricDistortionCorrectionEnabled:v205 & BoolAttribute];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageGeometricDistortionCorrectionExpansionCoversOverscan:a68];
  -[BWMultiStreamCameraSourceNodeConfiguration setProResRawCaptureEnabled:](v512, "setProResRawCaptureEnabled:", FigCapturePixelFormatIsPackedBayerRaw([v511 format]));
  -[BWMultiStreamCameraSourceNodeConfiguration setClientVideoFormat:](v512, "setClientVideoFormat:", [v511 format]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDeferStreamingOutputsEnable:a70];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setSecondaryScalerIsNotAvailable:a26];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOptimizeBandwidthForPreviewOutput:FigCapturePlatformIdentifier() > 5];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPrimaryScalerDecoupled:v493];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPrimaryScalerDeprioritized:HIDWORD(v491)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreferredPreviewMaxFrameRate:BWGetMaximumDisplayFrequency()];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStreamingRequiredWhenConfiguredAsSlave:a50];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVisionDataRequiredWhenConfiguredAsSlave:a44 != 0];
  v207 = v508;
  *&v208 = FigVideoCaptureSourceUIBaseZoomFactor([v508 source], &v545);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setUiBaseZoomFactor:v208];
  if (v545)
  {
    csp_configureMultiStreamCameraNode_cold_5();
    goto LABEL_33;
  }

  v476 = a12;
  v480 = a9;
  v492 = a10;
  v209 = HIDWORD(v482);
  v210 = [v511 shouldPreferSIFRFormatWithHighlightRecoveryEnabled:BYTE4(v466) & 1];
  v211 = [v508 geometricDistortionCorrectionEnabled];
  [v511 stabilizationOverscanFromSensorForFESCropDimensions:v542 preferSIFRFormat:v210 geometricDistortionCorrection:v211 useFESCompanionIndex:HIDWORD(v502)];
  v213 = v212;
  v215 = v214;
  if ((v468 | HIDWORD(v468)) == 1)
  {
    v216 = [objc_msgSend(v501 "irisSinkConfiguration")] ^ 1;
  }

  else
  {
    v216 = 0;
  }

  v217 = a3;
  v219 = *MEMORY[0x1E695F060];
  v218 = *(MEMORY[0x1E695F060] + 8);
  if (a21)
  {
    if ([v498 isEqualToString:*off_1E798A0E0])
    {
      v220 = &kFigCaptureOfflineStillImageVideoStabilizationOverscanPercentage_FrontCamera;
    }

    else
    {
      v222 = [v498 isEqualToString:*off_1E798A0F8];
      v220 = &kFigCaptureOfflineStillImageVideoStabilizationOverscanPercentage_FrontCamera;
      if ((v222 & 1) == 0)
      {
        v220 = &kFigCaptureOfflineStillImageVideoStabilizationOverscanPercentage_BackCamera;
      }
    }

    v223 = *v220;
    v221 = v223;
    goto LABEL_228;
  }

  if (v488 <= 1)
  {
    if (!v488)
    {
      v223 = *(MEMORY[0x1E695F060] + 8);
      v221 = *MEMORY[0x1E695F060];
      goto LABEL_228;
    }

    if (v488 == 1)
    {
      [v511 stabilizationOverscanPercentageOverrideForStandard];
      if (v224 <= 0.0)
      {
        v221 = 0.100000001;
      }

      else
      {
        [v511 stabilizationOverscanPercentageOverrideForStandard];
        v221 = (v225 / 100.0);
      }

      goto LABEL_224;
    }

LABEL_191:
    v221 = *MEMORY[0x1E695F060];
    v223 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_225;
  }

  if ((v488 - 2) >= 2 && v488 != 5)
  {
    if (v488 == 6)
    {
      v221 = 0.200000003;
LABEL_224:
      v223 = v221;
      goto LABEL_225;
    }

    goto LABEL_191;
  }

  if (!HIDWORD(v488))
  {
    [v511 stabilizationOverscanPercentageOverrideForCinematic];
    if (v226 <= 0.0)
    {
      v221 = 0.200000003;
    }

    else
    {
      v221 = (v226 / 100.0);
    }

    if (v479)
    {
      if ([v508 videoStabilizationStrength] == 3)
      {
        v227 = 50.0;
      }

      else
      {
        [v508 videoStabilizationStrength];
        v227 = 75.0;
      }

      v221 = (v227 / 100.0);
      csp_trueVideoCaptureEnabled(a6);
      goto LABEL_224;
    }

    if (v488 != 5)
    {
LABEL_206:
      if (csp_trueVideoCaptureEnabled(a6))
      {
        v231 = [a3 position];
        v232 = [a3 deviceType];
        objc_opt_self();
        if (v231 == 1)
        {
          v221 = 0.18;
        }

        else if (v231 == 2)
        {
          if (v232 == 7)
          {
            v221 = dbl_1AD055E30[a14 > 1.1];
          }

          else
          {
            v221 = 0.1;
          }
        }

        else
        {
          v221 = 0.0;
        }

        v217 = a3;
        [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setAdditionalVISOverscanReservedInZoom:0.0];
      }

      goto LABEL_224;
    }

    *&v452 = a13;
    [v511 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
    if (v228 == 0.0)
    {
      v228 = 28.0;
    }

    v229 = v228;
    if (HIDWORD(v452))
    {
      v230 = 46.0;
    }

    else
    {
      v230 = v229;
    }

    if ([a3 cinematicVideoEnabled])
    {
      goto LABEL_204;
    }

    if ([a3 isBravoVariant])
    {
      v233 = (v230 / 100.0 + 1.0) / (v221 + 1.0) + -1.0;
      a11 = v233;
      if (([v498 isEqualToString:*off_1E798A0D0] & 1) == 0)
      {
        *&v234 = v233;
        [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setAdditionalVISOverscanReservedInZoom:v234];
      }

      goto LABEL_205;
    }

    if (([v498 isEqualToString:*off_1E798A0D0] & 1) == 0)
    {
LABEL_204:
      v221 = v230 / 100.0;
    }

LABEL_205:
    a13 = *&v452;
    goto LABEL_206;
  }

  if (v216)
  {
    v223 = v215;
  }

  else
  {
    v223 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v216)
  {
    v221 = v213;
  }

  else
  {
    v221 = *MEMORY[0x1E695F060];
  }

LABEL_225:
  if ((v221 != v219 || v223 != v218) && ![(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoStabilizationEnabled])
  {
    v367 = [v217 cinematicVideoEnabled];
    if (v488 != 4 && (v367 & 1) == 0)
    {
      v368 = v482;
      v369 = SHIDWORD(v482);
      if (v539 < 1 || SHIDWORD(v539) < 1)
      {
        *(&v468 + 1) = SHIDWORD(v482);
        if ([v508 geometricDistortionCorrectionEnabled] && (v425 = objc_msgSend(objc_msgSend(objc_msgSend(v511, "frontEndScalerCompanionFormats"), "lastObject"), "geometricDistortionCorrectedNativeDimensions"), v425 >= 1) && SHIDWORD(v425) >= 1)
        {
          v370 = v425 / HIDWORD(v425);
        }

        else
        {
          v426 = v541;
          *&v452 = a13;
          if (v541 < 1 || (LODWORD(v427) = HIDWORD(v541), SHIDWORD(v541) <= 0))
          {
            v428 = [v511 sensorDimensions];
            v426 = v428;
            v427 = HIDWORD(v428);
          }

          v429 = ([v511 horizontalSensorBinningFactor] * v426);
          v370 = v429 / ([v511 verticalSensorBinningFactor] * v427);
          v217 = a3;
          a13 = *&v452;
        }

        v368 = v482;
        v369 = SHIDWORD(v482);
      }

      else
      {
        v370 = v539 / HIDWORD(v539);
      }

      v430 = v368 / v369;
      if (v477)
      {
        v503 = v430;
        *&v452 = a13;
        v431 = (v221 + 1.0) * BWAspectRatioValueFromAspectRatio(3) / 1.60000002 + -1.0;
        v524[0] = BWAspectRatioToShortString(3);
        v551.width = v221;
        v551.height = v431;
        v525[0] = CGSizeCreateDictionaryRepresentation(v551);
        v524[1] = BWAspectRatioToShortString(4);
        v552.width = v431;
        v552.height = v221;
        v525[1] = CGSizeCreateDictionaryRepresentation(v552);
        -[BWMultiStreamCameraSourceNodeConfiguration setVisOverscanByAspectRatio:](v512, "setVisOverscanByAspectRatio:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v525 forKeys:v524 count:2]);
        if ([v508 outputAspectRatio] == 3)
        {
          v370 = 1.6;
          a13 = *&v452;
          v430 = v503;
        }

        else
        {
          v432 = [v508 outputAspectRatio];
          v370 = 0.625;
          v430 = v503;
          if (v432 != 4)
          {
            v370 = v503;
          }

          a13 = *&v452;
        }
      }

      if (vabds_f32(v430, v370) > 0.01)
      {
        if (v430 <= v370)
        {
          v221 = (v223 + 1.0) * v370 / v430 + -1.0;
        }

        else
        {
          v223 = (v221 + 1.0) * v430 / v370 + -1.0;
        }
      }
    }
  }

LABEL_228:
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVisOverscan:v221, v223];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setSensorOverscan:v213, v215];
  *&v235 = a11;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setAdditionalVISOverscanWhenRecording:v235];
  if (v216)
  {
    v236 = v221 != v219;
    if (v223 != v218)
    {
      v236 = 1;
    }

    v237 = (v495 & HIDWORD(v488)) == 1 && v236;
    if (FigCaptureSourceGetBoolAttribute([v508 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0) && objc_msgSend(v511, "gdcInStillImageSinkPipelineSupported"))
    {
      v238 = [v511 postGDCCropDimensions];
      v240 = v238 > 0 && SHIDWORD(v238) > 0;
    }

    else
    {
      v240 = 0;
    }

    if (a64)
    {
      v241 = v213 != v219;
      if (v215 != v218)
      {
        v241 = 1;
      }

      v240 |= v241;
    }

    v242 = v237 | v240;
    if (a21)
    {
      v242 = 1;
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setIncludeOverscanOnStillImageOutput:v242 & 1];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setIncludeOverscanInStillImageFinalCropRect:a21];
    v217 = a3;
  }

  [v497 count];
  if (v496)
  {
    v243 = HIDWORD(v484);
    if ([v498 isEqualToString:*off_1E798A0C0])
    {
      v244 = [v217 bravoTelephotoCaptureStream];
    }

    else
    {
      if (![v498 isEqualToString:*off_1E798A0D0])
      {
LABEL_263:
        v246 = a13;
        if (a49)
        {
          if (v213 <= v215)
          {
            v258 = v215;
          }

          else
          {
            v258 = v213;
          }

          v259 = v258;
          v245 = 1.2 / (v259 + 1.0) + -1.0;
          v247 = v245;
        }

        else if ([v217 parallaxMitigationBasedOnZoomFactorEnabled])
        {
          v247 = 0.15;
        }

        else
        {
          v247 = 0.1;
        }

        v248 = v492;
        goto LABEL_276;
      }

      v244 = [v217 captureStream];
    }

    [v244 baseZoomFactor];
    v255 = v254;
    v256 = [v217 parallaxMitigationBasedOnZoomFactorEnabled];
    LODWORD(v257) = *"fff?";
    if (v256)
    {
      *&v257 = 0.97;
    }

    *&v257 = v255 * *&v257;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setBravoShiftMitigationMaxZoomFactor:v257];
    goto LABEL_263;
  }

  v243 = HIDWORD(v484);
  if ([+[FigVideoCaptureConnectionConfiguration videoStabilizationMethods:includeIris:](FigVideoCaptureConnectionConfiguration videoStabilizationMethods:v504 includeIris:{0), "containsObject:", &unk_1F22447B8}])
  {
    v246 = a13;
    v247 = 0.15;
    v248 = v492;
    if ((v487 - 1) > 1)
    {
      goto LABEL_276;
    }

    v249 = [v511 previewDimensions];
    v250 = HIDWORD(v249);
    v251 = v249;
    v252 = (v249 * 1.15) + 4;
    [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v510 "supportedFormats")];
    v253 = v252;
    v217 = a3;
    if ((*&v245 * v253) <= 640.0 && (*&v245 * ((v250 * 1.15) + 4)) <= ((v250 / v251) * 640.0))
    {
      goto LABEL_276;
    }
  }

  else
  {
    v248 = v492;
    v246 = a13;
    if ([v217 isBravoVariant])
    {
      goto LABEL_277;
    }

    v260 = csp_supportsNondisruptiveSwitchingZoomFactors(-[BWMultiStreamCameraSourceNodeConfiguration formatIndex](v512, "formatIndex"), -[BWMultiStreamCameraSourceNodeConfiguration activeStreamingNondisruptiveSwitchingFormatIndices](v512, "activeStreamingNondisruptiveSwitchingFormatIndices"), [v510 supportedFormats]);
    if ((v488 & 0xFFFFFFFB) == 0 || !v260)
    {
      goto LABEL_277;
    }
  }

  v247 = 0.1;
LABEL_276:
  *&v245 = v247;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOverscanForShiftMitigation:v245];
LABEL_277:
  v261 = [v508 outputAspectRatio];
  if ([v217 smartFramingEnabled])
  {
    v262 = 0;
  }

  else
  {
    v262 = v261;
  }

  v263 = [v511 previewDimensionsForAspectRatio:v262];
  v264 = v263;
  v265 = HIDWORD(v263);
  v266 = FigCapturePlatformIdentifier();
  if ((a66 | a67) == 1 && v266 >= 7 && a32)
  {
    v267 = [objc_msgSend(v508 "depthDataFormat")];
    v268 = ((2 * v267) * 1.5);
    v269 = (((v267 >> 31) & 0xFFFFFFFE) * 1.5);
    if (v264 <= v268)
    {
      v264 = ((2 * v267) * 1.5);
    }

    if (v265 <= v269)
    {
      v265 = v269;
    }

    else
    {
      v265 = v265;
    }

    if (v482 <= v268)
    {
      v270 = ((2 * v267) * 1.5);
    }

    else
    {
      v270 = v482;
    }

    if (SHIDWORD(v482) <= v269)
    {
      LODWORD(v209) = (((v267 >> 31) & 0xFFFFFFFE) * 1.5);
    }
  }

  else
  {
    v270 = v482;
  }

  v271 = [v217 smartFramingEnabled];
  if (v270 <= v209)
  {
    v272 = v209;
  }

  else
  {
    v272 = v270;
  }

  if ((HIDWORD(v499) & v271) != 0)
  {
    v273 = v272;
  }

  else
  {
    v273 = v270;
  }

  if ((HIDWORD(v499) & v271) != 0)
  {
    v274 = v272;
  }

  else
  {
    v274 = v209;
  }

  if (objb)
  {
    v275 = [v511 postGDCCropDimensions];
    if (v275 < 1 || SHIDWORD(v275) < 1)
    {
      v276 = [v511 sensorDimensions];
    }

    else
    {
      v276 = [v511 postGDCCropDimensions];
    }

    v265 = HIDWORD(v276);
    v264 = v276;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreferredPreviewDimensions:v264 | (v265 << 32)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVideoCaptureDimensions:v273 | (v274 << 32)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVideoCaptureDimensionsIncludeVISOverscan:v470];
  -[BWMultiStreamCameraSourceNodeConfiguration setBackgroundBlurEnabled:](v512, "setBackgroundBlurEnabled:", [v508 backgroundBlurEnabled]);
  -[BWMultiStreamCameraSourceNodeConfiguration setStudioLightingEnabled:](v512, "setStudioLightingEnabled:", [v508 studioLightingEnabled]);
  -[BWMultiStreamCameraSourceNodeConfiguration setReactionEffectsEnabled:](v512, "setReactionEffectsEnabled:", [v508 reactionEffectsEnabled]);
  -[BWMultiStreamCameraSourceNodeConfiguration setBackgroundReplacementEnabled:](v512, "setBackgroundReplacementEnabled:", [v508 backgroundReplacementEnabled]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setCinematicFramingEnabled:HIDWORD(v463)];
  v486 = v273;
  if ([v508 deskCamEnabled])
  {
    isDeskCamEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    isDeskCamEnabledInVideoDataConnectionConfiguration = csp_isDeskCamEnabledInVideoDataConnectionConfiguration(a6);
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDeskCamEnabled:isDeskCamEnabledInVideoDataConnectionConfiguration];
  if ([v508 manualCinematicFramingEnabled])
  {
    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(a6);
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setManualCinematicFramingEnabled:isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration];
  if ([v504 count])
  {
    v279 = HIDWORD(v499) ^ 1u;
  }

  else
  {
    v279 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreviewOutputEnabled:v279];
  if ([v510 deviceType] == 5)
  {
    v280 = [v508 isCinematicVideoCaptureEnabled];
  }

  else
  {
    v280 = 0;
  }

  LODWORD(v496) = HIDWORD(v499) ^ 1;
  v483 = v274;
  v281 = [v510 deviceType] == 7 && objc_msgSend(v508, "isCinematicVideoCaptureEnabled") && objc_msgSend(v508, "sourcePosition") == 1;
  v282 = (v280 | v281) ^ 1;
  if (v501)
  {
    v283 = 0;
  }

  else
  {
    v283 = v243;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageOutputEnabled:(v501 != 0) & v282];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setForceFirmwareStillImageOutputEnabled:v283];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setRoundingOfStillImageDimensionsToMultipleOfFourEnabled:SHIDWORD(v496) < 3];
  if (a62)
  {
    if (v501)
    {
      v284 = HIDWORD(v495) ^ 1;
    }

    else
    {
      v284 = 0;
    }

    v285 = v284 | v502;
  }

  else
  {
    v285 = 0;
  }

  v286 = v501;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setSensorRawStillImageOutputEnabled:v285];
  if (-[BWMultiStreamCameraSourceNodeConfiguration sensorRawStillImageOutputEnabled](v512, "sensorRawStillImageOutputEnabled") && [v511 isHighResStillImageSupported] && objc_msgSend(v511, "isStillImageOutputDownscaledInHWISP"))
  {
    -[BWMultiStreamCameraSourceNodeConfiguration setStillImageOutputDimensionsOverride:](v512, "setStillImageOutputDimensionsOverride:", [v511 soleHighResStillImageDimensions]);
  }

  -[BWMultiStreamCameraSourceNodeConfiguration setSushiRawDimensions:](v512, "setSushiRawDimensions:", [v511 sushiRawDimensions]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setConfigureForSoftISPSupport:v502];
  if ([a6 count])
  {
    v287 = 1;
  }

  else
  {
    v287 = HIDWORD(v499);
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVideoCaptureOutputEnabled:v287];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setObjectDetectionStartupDeferred:a27];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDetectedFacesOnVideoCaptureOutputEnabled:1];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDetectedFacesOnPreviewOutputEnabled:1];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDoingCMFaceTracking:a16];
  if ([objc_msgSend(v544 objectForKeyedSubscript:{0x1F219FFF0), "BOOLValue"}])
  {
    v288 = objc_alloc_init(BWSecureMetadataOutputConfiguration);
    -[BWSecureMetadataOutputConfiguration setObjectDetectionEnabled:](v288, "setObjectDetectionEnabled:", [a51 count] != 0);
    [(BWSecureMetadataOutputConfiguration *)v288 setEnabledDetectedObjectTypes:a51];
    [(BWSecureMetadataOutputConfiguration *)v288 setAttentionDetectionEnabled:a52];
    [(BWSecureMetadataOutputConfiguration *)v288 setEyeReliefStatusDetectionEnabled:a53];
    *&v289 = v476;
    [(BWSecureMetadataOutputConfiguration *)v288 setObjectDetectionTargetFrameRate:v289];
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceTrackingEnabled:a54];
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceTrackingMaxNumTrackedFaces:a47];
    *&v290 = v480;
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceTrackingNetworkFailureThresholdMultiplier:v290];
    *&v291 = v248;
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceTrackingFailureFieldOfViewModifier:v291];
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceIDReadinessEnabled:a55];
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceIDReadinessPeriocularEnabled:a56];
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceIDReadinessAttentionRequired:a57];
    [(BWSecureMetadataOutputConfiguration *)v288 setFaceOcclusionDetectionEnabled:a58];
    [(BWSecureMetadataOutputConfiguration *)v288 setMotionToWakeEnabled:a59];
    *&v292 = v246;
    [(BWSecureMetadataOutputConfiguration *)v288 setMotionToWakeTargetFrameRate:v292];
    v293 = v288;
    v286 = v501;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setSecureMetadataOutputConfiguration:v293];
  }

  else
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setEnabledDetectedObjectTypes:a51];
    if ([a51 count])
    {
      v294 = HIDWORD(v454);
    }

    else
    {
      v294 = 0;
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDetectedObjectsOutputEnabled:v294];
  }

  v522 = 0u;
  v523 = 0u;
  v520 = 0u;
  v521 = 0u;
  v295 = [a6 countByEnumeratingWithState:&v520 objects:v519 count:16];
  if (v295)
  {
    v296 = v295;
    v297 = *v521;
    do
    {
      for (k = 0; k != v296; ++k)
      {
        if (*v521 != v297)
        {
          objc_enumerationMutation(a6);
        }

        v299 = [objc_msgSend(*(*(&v520 + 1) + 8 * k) "sinkConfiguration")];
        if (v299 <= 0xA && ((1 << v299) & 0x450) != 0)
        {
          v301 = 1;
          goto LABEL_361;
        }
      }

      v296 = [a6 countByEnumeratingWithState:&v520 objects:v519 count:16];
      v301 = 0;
    }

    while (v296);
  }

  else
  {
    v301 = 0;
  }

LABEL_361:
  v517 = 0u;
  v518 = 0u;
  v515 = 0u;
  v516 = 0u;
  v302 = [v504 countByEnumeratingWithState:&v515 objects:v514 count:16];
  if (v302)
  {
    v303 = *v516;
    do
    {
      for (m = 0; m != v302; ++m)
      {
        if (*v516 != v303)
        {
          objc_enumerationMutation(v504);
        }

        v305 = [objc_msgSend(*(*(&v515 + 1) + 8 * m) "sinkConfiguration")];
        if (v305 <= 0xA && ((1 << v305) & 0x450) != 0)
        {
          v301 = HIDWORD(v499) | v301;
          v302 = v496;
          goto LABEL_373;
        }
      }

      v302 = [v504 countByEnumeratingWithState:&v515 objects:v514 count:16];
    }

    while (v302);
LABEL_373:
    v207 = v508;
    v286 = v501;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVideoEncoderMetadataOnVideoCaptureOutputEnabled:v301];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVideoEncoderMetadataOnPreviewOutputEnabled:v302];
  if (a31 && ([a3 cinematicVideoEnabled] & 1) == 0)
  {
    v307 = a38 != 0;
    v308 = 1;
  }

  else
  {
    v307 = [a3 cinematicVideoEnabled];
    v308 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFocusBlurMapEnabled:v307];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 focusBlurMapEnabled])
  {
    v309 = 1;
  }

  else
  {
    v309 = [objc_msgSend(v286 "irisSinkConfiguration")];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFocusBlurMapEnabled:v309];
  if (a84 && ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 backgroundBlurEnabled]|| [(BWMultiStreamCameraSourceNodeConfiguration *)v512 studioLightingEnabled]))
  {
    v308 = 1;
  }

  -[BWMultiStreamCameraSourceNodeConfiguration setDetectedFacesOutputConfiguration:](v512, "setDetectedFacesOutputConfiguration:", [v207 faceDetectionConfiguration]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setEyeDetectionRequired:v308];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setMotionAttachmentsSource:a20];
  v310 = [v207 requiredFormat];
  if ([v207 lowLightVideoCaptureEnabled])
  {
    v311 = [v310 isLowLightVideoCaptureSupported];
  }

  else
  {
    v311 = 0;
  }

  v312 = csp_variableFrameRateVideoEnabled(v207);
  v481 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v313 = [a3 teleAutoVideoFrameRateAllows24FPS];
  v314 = [v207 requiredMinFrameRate];
  v316 = v315;
  v317 = [v207 requiredMaxFrameRate];
  v478 = v312;
  if (v311)
  {
    v319 = [v498 isEqualToString:*off_1E798A0D8];
    v320 = v512;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLowLightVideoEnabled:1];
    if (v313 & 1 | ((v319 & 1) == 0))
    {
      v321 = 24;
    }

    else
    {
      v321 = 30;
    }

    v314 = FigCaptureFrameRateFromInt(v321);
    v316 = v322;
    v323 = FigCaptureFrameRateFromInt(0x1Eu);
    v325 = v324;
  }

  else
  {
    if (v312)
    {
      if (v481)
      {
        if (v313 & 1 | (([v498 isEqualToString:*off_1E798A0D8] & 1) == 0))
        {
          v326 = 24;
        }

        else
        {
          v326 = 30;
        }

        v314 = FigCaptureFrameRateFromInt(v326);
        v316 = v327;
        v317 = FigCaptureFrameRateFromInt(0x3Cu);
      }

      else
      {
        FigCaptureFrameRateFromFloat();
        v314 = v328;
        v316 = v329;
        FigCaptureFrameRateFromFloat();
      }
    }

    v323 = v317;
    v325 = v318;
    v320 = v512;
  }

  v330 = v316;
  v331 = a73;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v320 setMinFrameRate:v314, v330];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v320 setMaxFrameRate:v323, v325];
  v332 = [v508 lockedFrameRate];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v320 setLockedFrameRate:v332, v333];
  v334 = [v508 externalSyncFrameRate];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v320 setExternalSyncFrameRate:v334, v335];
  if (![&unk_1F2248AC0 containsObject:FigCaptureGetModelSpecificName()] || (objc_msgSend(a3, "cinematicVideoEnabled") & 1) == 0)
  {
    -[BWMultiStreamCameraSourceNodeConfiguration setContentAwareEnhancementEnabled:](v512, "setContentAwareEnhancementEnabled:", [v511 isContentAwareEnhancementSupported]);
    -[BWMultiStreamCameraSourceNodeConfiguration setContentAwareAWBEnabled:](v512, "setContentAwareAWBEnabled:", [v511 isContentAwareAWBSupported]);
  }

  v336 = FigCapturePlatformIdentifier();
  v337 = HIDWORD(v470);
  if (v336 >= 11)
  {
    v339 = v508;
    v338 = v336 == 11 && ![v511 isPhotoFormat] || objc_msgSend(v508, "sourcePosition") == 2;
  }

  else
  {
    v338 = 1;
    v339 = v508;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setColorPostProcessingSkyEnhancementEnabled:v338];
  -[BWMultiStreamCameraSourceNodeConfiguration setMultiIlluminantWhiteBalanceEnabled:](v512, "setMultiIlluminantWhiteBalanceEnabled:", [v511 isMultiIlluminantWhiteBalanceSupported]);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDepthType:v487];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStrictDepthModePreferred:a74];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setRGBIRStereoFusionMinDepthThresholdMM:a75];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setRGBIRStereoFusionMaxDepthThresholdMM:a76];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setRGBIRStereoFusionFixedDepthThresholdMM:a77];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setRGBIRStereoFusionFixedDepthValueMM:a78];
  if (a73 < 1 || SHIDWORD(a73) <= 0)
  {
    v331 = [objc_msgSend(v339 "depthDataFormat")];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDepthDimensions:v331];
  if ((v487 - 1) < 2)
  {
    v340 = a81;
  }

  else
  {
    v340 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDepthOutputEnabled:v340];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setHardwareDepthFilteringPreferred:0];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPointCloudOutputEnabled:HIDWORD(v490)];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPointCloudOutputIsSupplementalPointCloudData:v491];
  if (([a3 cinematicVideoEnabled] & 1) == 0 && (v460 & 0x100000000) == 0)
  {
    LODWORD(v454) = HIDWORD(v495) ^ 1;
    csp_shouldEnableLightSourceMask(v511, a6, v341, v342, v343, v344, v345, v346, v435, v438, v440, v442, v444, v446, v448, v450, v452, v454, v456, v458, v460, v463, v466, v468, v470, v472);
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLightSourceMaskOutputEnabled:v417];
    csp_shouldEnableKeypointDescriptorData(v511, a6, v418, v419, v420, v421, v422, v423, v436, v439, v441, v443, v445, v447, v449, v451, v453, v455, v457, v459, v461, v464, v467, v469, v471, v473, v474);
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setKeypointDescriptorDataOutputEnabled:v424];
  }

  v347 = *off_1E798AFD8;
  v513[0] = *off_1E798AFC8;
  v513[1] = v347;
  v348 = *off_1E798B038;
  v513[2] = *off_1E798AFD0;
  v513[3] = v348;
  v349 = [MEMORY[0x1E695DEC8] arrayWithObjects:v513 count:4];
  -[BWMultiStreamCameraSourceNodeConfiguration setEnabledSemanticMaskTypes:](v512, "setEnabledSemanticMaskTypes:", [MEMORY[0x1E695DFD8] setWithArray:v349]);
  if (v466)
  {
    v350 = [(NSSet *)[(BWMultiStreamCameraSourceNodeConfiguration *)v512 enabledSemanticMaskTypes] count]!= 0;
  }

  else
  {
    v350 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setSemanticMasksOutputEnabled:v350];
  if (v337)
  {
    v351 = FigCapturePlatformIdentifier() < 12;
    v352 = FigCapturePlatformIdentifier() > 11;
  }

  else
  {
    v351 = 0;
    v352 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreLTMThumbnailOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled]& v351];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled])
  {
    v353 = 0;
  }

  else
  {
    v353 = [(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoCaptureOutputEnabled]& v351;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreLTMThumbnailOnVideoCaptureOutputEnabled:v353];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLtmThumbnailOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled]& v352];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled])
  {
    v354 = 0;
  }

  else
  {
    v354 = [(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoCaptureOutputEnabled]& v352;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLtmThumbnailOnVideoCaptureOutputEnabled:v354];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreLTMThumbnailEnabled:v337];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPostLTMThumbnailEnabled:v472];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLtmThumbnailOutputDimensions:a93];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapOnPreviewOutputEnabled:HIDWORD(v472) & [(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled]];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled])
  {
    v355 = 0;
  }

  else
  {
    v355 = HIDWORD(v472) & [(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoCaptureOutputEnabled];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapOnVideoCaptureOutputEnabled:v355];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapNumberOfSegments:a96];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapSmoothingSigma:a97];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapOutputDimensions:a98];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPostColorProcessingThumbnailOnPreviewOutputEnabled:v474 & [(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled]];
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled])
  {
    v356 = 0;
  }

  else
  {
    v356 = v474 & [(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoCaptureOutputEnabled];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPostColorProcessingThumbnailOnVideoCaptureOutputEnabled:v356];
  -[BWMultiStreamCameraSourceNodeConfiguration setDiscardsDepthDataForStillImages:](v512, "setDiscardsDepthDataForStillImages:", [a3 isBravoVariant]);
  if (a34)
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOriginalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v512 previewOutputEnabled]];
    v357 = [(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoCaptureOutputEnabled];
  }

  else
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOriginalCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:0];
    v357 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOriginalCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled:v357];
  if (a35)
  {
    v358 = [(BWMultiStreamCameraSourceNodeConfiguration *)v512 stillImageOutputEnabled];
  }

  else
  {
    v358 = 0;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOriginalCameraIntrinsicMatrixDeliveryOnStillImageOutputEnabled:v358];
  v113 = v511;
  if (a34)
  {
    v359 = v495;
    if ([(BWMultiStreamCameraSourceNodeConfiguration *)v512 depthOutputEnabled])
    {
      v360 = [a3 cinematicVideoEnabled] ^ 1;
    }

    else
    {
      v360 = 0;
    }
  }

  else
  {
    v360 = 0;
    v359 = v495;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setOriginalCameraIntrinsicMatrixDeliveryOnDepthOutputEnabled:v360];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageOutputSensorInterfaceRawAttachmentOptionRetainedBufferCount:a40];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageOutputSashimiRawAttachmentOptionRetainedBufferCount:a39];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageOutputFocusPixelDataAttachmentOptionRetainedBufferCount:a38];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFirmwareStillImageOutputRetainedBufferCountOverride:a41];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageOutputSushiRawAttachmentOptionSupportEnabled:a42];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageOutputSushiRawAttachmentOptionEnabled:a43];
  if ([v510 hasSphere])
  {
    [v510 setEnablesSphereWhenAvailable:1];
    v361 = v501 ? [objc_msgSend(v508 "requiredFormat")] | a22 : 0;
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDiscardsUnstableSphereVideoFrames:v361 & (v359 ^ 1)];
    [v510 setAvoidsSphereRecentering:v361 & v359];
    [v510 setDepthDataDeliveryEnabled:a32];
    [v510 setVisualIntelligenceCameraEnabled:{FigCaptureClientApplicationIDIsVisualIntelligenceCamera(objc_msgSend(a3, "applicationID"))}];
    if ([v510 sphereVideoSupported])
    {
      if ([objc_msgSend(v501 "irisSinkConfiguration")] == 3)
      {
        v362 = [v511 isHighPhotoQualitySupported];
      }

      else
      {
        v362 = 0;
      }

      [objc_msgSend(v544 objectForKeyedSubscript:{@"SphereVideoMaxFrameRate", "floatValue"}];
      if (v363 == 0.0)
      {
        v364 = 60.0;
      }

      else
      {
        v364 = v363;
      }

      if (([v497 count] || (v362 & 1) != 0 || objc_msgSend(v511, "isSphereAssistedAutoFocusEnabled")) && (objc_msgSend(v511, "maxSupportedFrameRate"), v365 <= v364))
      {
        v366 = HIDWORD(v488) ^ 1u;
      }

      else
      {
        v366 = 0;
      }

      [v510 setSphereVideoEnabled:v366];
    }
  }

  [v510 setPanoModeEnabled:{objc_msgSend(v508, "imageControlMode") == 4}];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setReflectsStillsOnStreamingOutputs:v359];
  -[BWMultiStreamCameraSourceNodeConfiguration setLivePhotoCaptureEnabled:](v512, "setLivePhotoCaptureEnabled:", [objc_msgSend(v501 "irisSinkConfiguration")]);
  -[BWMultiStreamCameraSourceNodeConfiguration setApplyPreviewShiftToStillImage:](v512, "setApplyPreviewShiftToStillImage:", [objc_msgSend(v501 "irisSinkConfiguration")]);
  if ((a23 & 1) == 0)
  {
    v371 = [v511 ispChromaNoiseReductionEnabled];
    if ((HIDWORD(v495) & [objc_msgSend(v544 objectForKeyedSubscript:{0x1F217F330), "BOOLValue"}]) == 1)
    {
      v372 = [v511 ispChromaNoiseReductionEnabled];
      if (v372 != [v511 isStillImageISPChromaNoiseReductionEnabled])
      {
        v371 = [v511 isStillImageISPChromaNoiseReductionEnabled];
        [v511 isStillImageISPChromaNoiseReductionEnabled];
      }
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setChromaNoiseReductionEnabled:v371];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setKeypointDetectionEnabled:0];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageKeypointDetectionEnabled:0];
  if ([objc_msgSend(objc_msgSend(v510 "stream")])
  {
    if ([objc_msgSend(v544 objectForKeyedSubscript:{@"IspMBNRSupported", "BOOLValue"}])
    {
      v373 = 2;
    }

    else if ([objc_msgSend(v544 objectForKeyedSubscript:{@"MultiPassIspMBNRSupported", "BOOLValue"}] && objc_msgSend(v511, "isISPMultiBandNoiseReductionSupported") && -[BWMultiStreamCameraSourceNodeConfiguration videoCaptureOutputEnabled](v512, "videoCaptureOutputEnabled"))
    {
      RectWithAspectRatioInsideDimensions = FigCaptureMakeRectWithAspectRatioInsideDimensions([v511 sensorDimensions], 1, -[BWMultiStreamCameraSourceNodeConfiguration videoCaptureDimensions](v512, "videoCaptureDimensions") / (-[BWMultiStreamCameraSourceNodeConfiguration videoCaptureDimensions](v512, "videoCaptureDimensions") >> 32));
      v376 = v375;
      v373 = (v376 / [(BWMultiStreamCameraSourceNodeConfiguration *)v512 videoCaptureDimensions]) <= 1.2;
    }

    else
    {
      v373 = 0;
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setIspMultiBandNoiseReductionMode:v373];
  }

  if (HIDWORD(v474))
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setDetectedObjectsOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setSemanticMasksOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreLTMThumbnailOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPreLTMThumbnailOnVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLtmThumbnailOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLtmThumbnailOnVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setWeightSegmentMapOnVideoCaptureOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPostColorProcessingThumbnailOnPreviewOutputEnabled:0];
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setPostColorProcessingThumbnailOnVideoCaptureOutputEnabled:0];
  }

  v377 = [a3 depthType];
  v378 = 0;
  if (!v487 && v377 == 3)
  {
    v378 = v486 == 3840 && v483 == 2160 || v486 == 2160 && v483 == 3840;
  }

  if (([a3 cinematicVideoEnabled] & (HIDWORD(v474) ^ 1) & 1) != 0 || v378 || csp_trueVideoCaptureEnabled(a6) && objc_msgSend(a3, "position") == 2)
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setIncludeOverscanOnPreviewOutput:1];
  }

  [v511 lowLightVideoAEMaxGain];
  v381 = v380;
  [v511 variableFrameRateVideoCaptureFromFWAEMaxGain];
  v383 = v382;
  [v508 maxGainClientOverride];
  v385 = v384;
  [v511 aeMaxGain];
  v387 = *&v386;
  v388 = (v385 >= 1.0) | v311;
  if (v385 < 1.0)
  {
    v385 = v381;
  }

  if ((v388 & 1) == 0)
  {
    v385 = v381;
    if (([a3 cinematicVideoEnabled] & 1) == 0)
    {
      if ([a3 stereoVideoCaptureEnabled])
      {
        if (![v511 stereoVideoCompanionFormat] || (objc_msgSend(objc_msgSend(v511, "stereoVideoCompanionFormat"), "stereoVideoAEMaxGain"), v389 == 0.0))
        {
          [v511 stereoVideoAEMaxGain];
          if (*&v386 == 0.0)
          {
            v385 = v387;
            goto LABEL_520;
          }

          v390 = v511;
        }

        else
        {
          v390 = [v511 stereoVideoCompanionFormat];
        }

        [v390 stereoVideoAEMaxGain];
        goto LABEL_519;
      }

      if (v478)
      {
        v385 = v383;
      }

      else
      {
        v385 = v387;
      }

      if (!(v481 & 1 | ((v478 & 1) == 0)))
      {
        csp_variableFrameRateVideoGain(v510);
LABEL_519:
        v385 = *&v386;
      }
    }
  }

LABEL_520:
  if ((*(a29 + 12) & 1) == 0 && [v508 applyMaxExposureDurationFrameworkOverrideWhenAvailable] && objc_msgSend(v511, "maxIntegrationTimeOverride"))
  {
    CMTimeMake(&v546, 1, (1000.0 / [v511 maxIntegrationTimeOverride]));
    DWORD1(v386) = HIDWORD(v546.value);
    *a29 = v546;
  }

  v391 = a19;
  if (a32 && [a3 isBravoVariant] && (v463 & 1) == 0)
  {
    [objc_msgSend(v508 "requiredFormat")];
    if (v392 != 0.0)
    {
      [objc_msgSend(v508 "requiredFormat")];
      v385 = v393;
    }

    [objc_msgSend(v508 "requiredFormat")];
    if (*&v386 != 0.0)
    {
      [objc_msgSend(v508 "requiredFormat")];
      CMTimeMake(&v546, 1, (1000.0 / v394));
      DWORD1(v386) = HIDWORD(v546.value);
      *a29 = v546;
    }
  }

  if (a19 > 2 || v479)
  {
    if (v479)
    {
      v391 = [v508 videoStabilizationStrength];
    }

    CMTimeMake(&v546, 1, 600);
    *a29 = v546;
    if (v391 == 4)
    {
      v397 = *(a29 + 8);
    }

    else
    {
      if (v391 != 3)
      {
LABEL_543:
        [v511 actionCameraAEMaxGainScaleFactor];
        v399 = v398;
        v396 = v508;
        [v508 sourcePosition];
        v385 = v385 * v399;
        goto LABEL_544;
      }

      v397 = 250;
    }

    CMTimeMake(&v546, 1, v397);
    *a29 = v546;
    goto LABEL_543;
  }

  if (v311)
  {
    v395 = MEMORY[0x1E6960C70];
    v386 = *MEMORY[0x1E6960C70];
    *a29 = *MEMORY[0x1E6960C70];
    *(a29 + 16) = *(v395 + 16);
  }

  v396 = v508;
LABEL_544:
  *&v386 = v385;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setAeMaxGain:*&v386];
  *&v400 = v381;
  [v510 setMomentCaptureVideoRecordingAEMaxGain:v400];
  *&v546.value = *a29;
  v546.epoch = *(a29 + 16);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setMaxExposureDurationFrameworkOverride:&v546];
  [a3 setGlobalToneMappingEnabledOverride:0];
  *&v546.value = *a28;
  v546.epoch = *(a28 + 16);
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setMaxExposureDurationClientOverride:&v546];
  -[BWMultiStreamCameraSourceNodeConfiguration setColorSpace:](v512, "setColorSpace:", [v396 colorSpace]);
  v401 = [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:a6 doingFaceTracking:a16];
  v402 = [FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled:v504 doingFaceTracking:a16];
  v403 = objb | a87 | v401;
  v404 = objb | a87 | v402;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setCameraIntrinsicMatrixDeliveryOnVideoCaptureOutputEnabled:(v403 | (BYTE4(v499) & v404)) & 1];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:v496 & v404];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setCameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled:[(BWMultiStreamCameraSourceNodeConfiguration *)v512 cameraIntrinsicMatrixDeliveryOnPreviewOutputEnabled]| a16];
  v406 = SHIDWORD(v496) > 3 || (HIDWORD(v496) & 0xFFFFFFFE) == 2;
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLtmLookUpTableMetadataEnabledForStills:v406];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setLumaHistogramMetadataEnabled:a82];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageLocalHistogramClippingDataMetadataEnabled:a69];
  if (((a36 & 1) != 0 || HIDWORD(v484)) && ![(BWMultiStreamCameraSourceNodeConfiguration *)v512 usesFirmwareStillImageOutput])
  {
    csp_configureMultiStreamCameraNode_cold_6();
LABEL_33:
    v129 = v500;
    if (!v500)
    {
      goto LABEL_572;
    }

    goto LABEL_571;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setUsesFIFOFirmwareTimeMachine:a36];
  if (HIDWORD(v484))
  {
    v407 = 4;
  }

  else
  {
    v407 = 1;
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFirmwareTimeMachineBufferCapacity:v407];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFirmwareTimeMachineSIFREnabled:HIDWORD(v484) & v490];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setMaximumNumberOfBracketedSIFRFrames:v490];
  if ([objc_msgSend(v544 objectForKeyedSubscript:{@"ISPAPSData", "BOOLValue"}])
  {
    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setIspAPSDataEnabled:0];
  }

  if (a44)
  {
    v408 = [a44 sinkConfiguration];
    v409 = [v408 embeddedCaptureDeviceConfiguration];
    if ([a44 retainedBufferCount] >= 1)
    {
      v409 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v409];
      [v409 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(a44, "retainedBufferCount")), *off_1E798CBD8}];
    }

    v410 = [objc_msgSend(v510 "stream")];
    v411 = *off_1E798CA40;
    if ([v410 objectForKeyedSubscript:*off_1E798CA40])
    {
      v412 = [objc_msgSend(v510 "stream")];
      if (v545)
      {
        goto LABEL_570;
      }

      v409 = [v409 dictionaryWithValuesForKeys:v412];
    }

    [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setVisionDataConfiguration:v409];
    [a3 visionDataMaxFrameRate];
    v414 = v413;
    [v408 maxFrameRate];
    if (v414 <= v415)
    {
      [v408 maxFrameRate];
    }

    else
    {
      [a3 visionDataMaxFrameRate];
    }

    [a3 setVisionDataMaxFrameRate:?];
  }

  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStreamingForegroundSegmentationEnabled:a45];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setFaceTrackingEnabled:a46];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setRGBIRStereoFusionEnabled:a48];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setStillImageMaxLossyCompressionLevel:a80];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setGraphContainsMultipleVideoSources:a85];
  [(BWMultiStreamCameraSourceNodeConfiguration *)v512 setIsAutoFocusAssistSourceNode:a88];
  v545 = [v489 configure:v512];
  if (v545)
  {
    csp_configureMultiStreamCameraNode_cold_7();
  }

LABEL_570:
  v129 = v500;
  if (v500)
  {
LABEL_571:
    CFRelease(v129);
  }

LABEL_572:

  return v545;
}

void csp_activeStreamingNondisruptiveSwitchingFormatIndices()
{
  OUTLINED_FUNCTION_84();
  HIDWORD(v63) = v2;
  HIDWORD(v51) = v3;
  if (v1)
  {
    v4 = v1;
    v62 = v0;
    v5 = [objc_msgSend(v1 "objectAtIndexedSubscript:{"objectForKeyedSubscript:", *off_1E798C998}")];
    if ([v5 count])
    {
      v47 = [MEMORY[0x1E695DF70] array];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v64 = OUTLINED_FUNCTION_37(v47, v6, &v92, &v76);
      if (v64)
      {
        obj = v5;
        v60 = *v93;
        v59 = *off_1E798C9A0;
        v67 = *off_1E798CA98;
        v66 = *off_1E798CAB0;
        v58 = *off_1E798CA80;
        v57 = *off_1E798CAB8;
        v56 = *off_1E798CAC0;
        v53 = *off_1E798C988;
        v52 = *off_1E798C980;
        v7 = *off_1E798CB18;
        v8 = *off_1E798CB08;
        v55 = *off_1E798C960;
        v50 = *off_1E798C958;
        v49 = *off_1E798D3F8;
        v61 = v4;
        do
        {
          v9 = 0;
          do
          {
            if (*v93 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v92 + 1) + 8 * v9);
            v11 = [v10 intValue];
            v12 = [v4 objectAtIndexedSubscript:v62];
            v74 = [v12 objectForKeyedSubscript:v59];
            v13 = [v4 objectAtIndexedSubscript:v11];
            v14 = [v13 objectForKeyedSubscript:v59];
            v102[0] = v67;
            v102[1] = v66;
            v102[2] = v58;
            v102[3] = v57;
            v102[4] = v56;
            v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:5];
            v72 = v15;
            if (HIDWORD(v63) && (v15 = FigCaptureSourceSensorRawHighResolutionFlavorFromDimensions([objc_msgSend(v13 objectForKeyedSubscript:{v53), "intValue"}] | (objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", v52), "intValue") << 32)), v15 == 2))
            {
              v101[0] = v67;
              v101[1] = v66;
              v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
              v72 = v15;
              HIDWORD(v68) = 1;
            }

            else
            {
              HIDWORD(v68) = 0;
            }

            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v23 = OUTLINED_FUNCTION_140(v15, v16, v17, v18, v19, v20, v21, v22, v48, v49, v50, v51, v52, v53, obj, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v10, v66, v67, v68, v12, v13, v9, v72, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1), v96);
            if (v23)
            {
              v24 = v23;
              v25 = *v98;
LABEL_14:
              v26 = 0;
              while (1)
              {
                if (*v98 != v25)
                {
                  objc_enumerationMutation(v73);
                }

                v27 = *(*(&v97 + 1) + 8 * v26);
                v28 = [v75 objectForKeyedSubscript:v27];
                v29 = [objc_msgSend(v28 objectForKeyedSubscript:{v7), "intValue"}];
                v30 = [objc_msgSend(v28 objectForKeyedSubscript:{v8), "intValue"}];
                v31 = [v14 objectForKeyedSubscript:v27];
                v32 = [objc_msgSend(v31 objectForKeyedSubscript:{v7), "intValue"}];
                v33 = [objc_msgSend(v31 objectForKeyedSubscript:{v8), "intValue"}];
                if (v29 != v32 || v30 != v33)
                {
                  break;
                }

                if (v24 == ++v26)
                {
                  v24 = OUTLINED_FUNCTION_140(v33, v34, v35, v36, v37, v38, v39, v40, v47, v49, v50, v51, v52, v53, obj, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1), v96);
                  if (v24)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_24;
                }
              }
            }

            else
            {
LABEL_24:
              if ([objc_msgSend(v69 objectForKeyedSubscript:{v55), "BOOLValue"}])
              {
                v42 = [objc_msgSend(v69 objectForKeyedSubscript:{v50), "intValue"}];
              }

              else
              {
                v42 = 0;
              }

              v33 = [objc_msgSend(v70 objectForKeyedSubscript:{v55), "BOOLValue"}];
              if (v33)
              {
                v33 = [objc_msgSend(v70 objectForKeyedSubscript:{v50), "intValue"}];
              }

              if (HIDWORD(v68))
              {
                v43 = 4;
              }

              else
              {
                v43 = v42;
              }

              if (HIDWORD(v51))
              {
                v44 = 2;
              }

              else
              {
                v44 = v43;
              }

              if (v33 == v43 || v33 == v44)
              {
                v46 = [objc_msgSend(v69 objectForKeyedSubscript:{v49), "intValue"}];
                v33 = [objc_msgSend(v70 objectForKeyedSubscript:{v49), "intValue"}];
                if (v46 == v33)
                {
                  v33 = [v47 addObject:v65];
                }
              }
            }

            v9 = v71 + 1;
            v4 = v61;
          }

          while (v71 + 1 != v64);
          v64 = OUTLINED_FUNCTION_147(v33, v34, &v92, &v76, v37, v38, v39, v40, v47, v49, v50, v51, v52, v53, obj);
        }

        while (v64);
      }
    }
  }

  OUTLINED_FUNCTION_81();
}

uint64_t FigCaptureSourceSensorRawHighResolutionFlavorFromDimensions(uint64_t a1)
{
  if (FigCaptureNumberOfPixelsForDimensions(a1) > 0x2DC6C00)
  {
    return 2;
  }

  if (FigCaptureLongerDimensionForDimensions(a1) >> 5 <= 0x98)
  {
    return FigCaptureNumberOfPixelsForDimensions(a1) > 0xCCB400;
  }

  return 0;
}

uint64_t BWGetMaximumDisplayFrequency()
{
  if (BWGetDisplaySupportsPerseus_onceToken != -1)
  {
    BWGetDisplaySupportsPerseus_cold_1();
  }

  if (BWGetDisplaySupportsPerseus_displaySupportsPerseus)
  {
    return 120;
  }

  else
  {
    return 60;
  }
}

void csp_shouldEnableLightSourceMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_80();
  if (([v29 isVideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData] & 1) != 0 || objc_msgSend(v27, "isVideoGreenGhostOfflineMetadataEnabled") && objc_msgSend(v27, "isVideoGreenGhostOfflineLightSourceMaskEnabled"))
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    if (OUTLINED_FUNCTION_1_18(v30, v31, v32, v33))
    {
      OUTLINED_FUNCTION_38_10();
LABEL_6:
      v34 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_71();
        if (!v35)
        {
          objc_enumerationMutation(v26);
        }

        v36 = *(a26 + 8 * v34);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = [objc_msgSend(v36 "sinkConfiguration")];
          if ((v37 | 2) == 6)
          {
            v38 = v37;
            if ([v36 videoGreenGhostMitigationEnabled] & 1) != 0 || v38 == 4 && objc_msgSend(v27, "isVideoGreenGhostOfflineMetadataEnabled") && (objc_msgSend(v27, "isVideoGreenGhostOfflineLightSourceMaskEnabled"))
            {
              break;
            }
          }
        }

        if (v28 == ++v34)
        {
          OUTLINED_FUNCTION_43();
          v28 = OUTLINED_FUNCTION_1_18(v39, v40, v41, v42);
          if (v28)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  OUTLINED_FUNCTION_56();
}

void csp_shouldEnableKeypointDescriptorData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27)
{
  OUTLINED_FUNCTION_97();
  v28 = v27;
  if ([v29 isVideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData])
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    v34 = OUTLINED_FUNCTION_1_18(v30, v31, v32, v33);
    if (v34)
    {
      v35 = v34;
      v36 = *a27;
LABEL_4:
      v37 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v38 != v36)
        {
          objc_enumerationMutation(v28);
        }

        v39 = *(a26 + 8 * v37);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v39 "sinkConfiguration")] & 0xFFFFFFFD) == 4 && (objc_msgSend(v39, "videoGreenGhostMitigationEnabled"))
        {
          break;
        }

        if (v35 == ++v37)
        {
          OUTLINED_FUNCTION_43();
          v35 = OUTLINED_FUNCTION_1_18(v40, v41, v42, v43);
          if (v35)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  OUTLINED_FUNCTION_98();
}

void OUTLINED_FUNCTION_78_1(double a1, double a2, double a3, double a4)
{
  *&STACK[0x398] = a2;
  *&STACK[0x3A0] = a3;
  *&STACK[0x3A8] = a4;
}

unint64_t mscsn_scaleDimensionsWithAlignment(unint64_t a1, unsigned int a2, double a3, double a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = a3 * a1;
  v10 = v9;
  v11 = a4 * SHIDWORD(a1);
  v12 = v11;
  if (FigCapturePlatformIdentifier() < 9)
  {
    goto LABEL_23;
  }

  v13 = v7;
  if (v8)
  {
    v14 = v7;
    v15 = v8;
    do
    {
      v13 = v15;
      v15 = v14 % v15;
      v14 = v13;
    }

    while (v15);
  }

  if (v13 % a2 || (v16 = v7 / v13, v7 / v13 > 16) || (v17 = a4 / a3 * (v8 / v13), v18 = llroundf(v17), v18 > 10))
  {
LABEL_23:
    v26 = (llroundf(v10 / a2) * a2);
    v25 = (llroundf(v12 / a2) * a2);
  }

  else
  {
    if (v16 % a2 || v18 % a2)
    {
      v16 *= a2;
      v18 *= a2;
    }

    v19 = vcvtps_s32_f32(v10 / v16);
    v20 = v16 * v19;
    v21 = vcvtps_s32_f32(v12 / v18);
    v22 = v18 * v21;
    v23 = v16 * v19 - v10;
    if (v23 < 0)
    {
      v23 = v10 - v16 * v19;
    }

    v24 = v22 - v12;
    if (v22 - v12 < 0)
    {
      v24 = v12 - v22;
    }

    LODWORD(v25) = v18 * v19;
    v26 = v16 * v21;
    if (v23 >= v24)
    {
      LODWORD(v25) = v22;
    }

    else
    {
      v26 = v20;
    }

    v27 = v9 / v11;
    v28 = vabds_f32(v26 / v25, v27);
    v29 = vabds_f32(v20 / v22, v27);
    if (v28 >= v29)
    {
      v25 = v22;
    }

    else
    {
      v25 = v25;
    }

    if (v28 >= v29)
    {
      v26 = v20;
    }
  }

  return v26 | (v25 << 32);
}
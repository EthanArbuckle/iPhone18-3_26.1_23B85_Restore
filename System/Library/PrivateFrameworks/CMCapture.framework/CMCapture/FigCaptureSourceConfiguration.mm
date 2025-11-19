@interface FigCaptureSourceConfiguration
+ (id)stringForSourcePosition:(int)a3;
+ (int)sourceTypeForString:(id)a3;
- ($273FE01EDA4852E8FFB0AF95686D18CC)externalSyncFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)lockedFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)pulseGeneratorFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)requiredMaxFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)requiredMinFrameRate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lensSmudgeDetectionInterval;
- (BOOL)bravoShiftMitigationEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)proResRawCaptureEnabled;
- (CGSize)normalizedNonDestructiveCropSize;
- (FigCaptureSourceConfiguration)initWithSource:(OpaqueFigCaptureSource *)a3;
- (FigCaptureSourceConfiguration)initWithSourceType:(int)a3;
- (FigCaptureSourceConfiguration)initWithXPCEncoding:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (int)sourceDeviceType;
- (int)sourcePosition;
- (int)sourceType;
- (uint64_t)_sourceAttributes;
- (uint64_t)_sourceToken;
- (uint64_t)description;
- (void)dealloc;
- (void)setLensSmudgeDetectionInterval:(id *)a3;
- (void)setMaxExposureDurationClientOverride:(id *)a3;
@end

@implementation FigCaptureSourceConfiguration

- (BOOL)bravoShiftMitigationEnabled
{
  IntAttribute = FigCaptureSourceGetIntAttribute([(FigCaptureSourceConfiguration *)self source], @"DeviceType", 0);
  v4 = (IntAttribute > 9) | (0xEFu >> IntAttribute);
  v5 = [(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled];
  [(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)self requiredFormat] maxContinuousZoomFactorForDepthDataDelivery];
  LOBYTE(v7) = v4 ^ 1;
  if ((v4 & 1) == 0 && !v5)
  {
    v8 = v6;
    v7 = ![(FigCaptureSourceConfiguration *)self depthDataDeliveryEnabled];
    if (v8 != 0.0)
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7 & 1;
}

- (int)sourcePosition
{
  v2 = [-[FigCaptureSourceConfiguration _sourceAttributes](self) objectForKeyedSubscript:@"Position"];

  return [v2 intValue];
}

- (uint64_t)_sourceAttributes
{
  if (result)
  {
    v1 = result + 32;
    if (!*(result + 32))
    {
      v2 = *(result + 16);
      if (v2)
      {
        v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v3)
        {
          v3(v2, @"AttributesDictionary", *MEMORY[0x1E695E480], v1);
        }
      }
    }

    return *v1;
  }

  return result;
}

- (int)sourceType
{
  result = self->_sourceType;
  if (!result)
  {
    result = [objc_msgSend(-[FigCaptureSourceConfiguration _sourceAttributes](self) objectForKeyedSubscript:{@"SourceType", "intValue"}];
    self->_sourceType = result;
  }

  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)requiredMaxFrameRate
{
  tag = self->_requiredMaxFrameRate.tag;
  u = self->_requiredMaxFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)requiredMinFrameRate
{
  tag = self->_requiredMinFrameRate.tag;
  u = self->_requiredMinFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- (CGSize)normalizedNonDestructiveCropSize
{
  width = self->_normalizedNonDestructiveCropSize.width;
  height = self->_normalizedNonDestructiveCropSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)lockedFrameRate
{
  tag = self->_lockedFrameRate.tag;
  u = self->_lockedFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)externalSyncFrameRate
{
  tag = self->_externalSyncFrameRate.tag;
  u = self->_externalSyncFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lensSmudgeDetectionInterval
{
  *&retstr->var0 = *(&self[13].var0 + 4);
  retstr->var3 = *(&self[13].var3 + 4);
  return self;
}

- (int)sourceDeviceType
{
  v2 = [-[FigCaptureSourceConfiguration _sourceAttributes](self) objectForKeyedSubscript:@"DeviceType"];

  return [v2 intValue];
}

- (NSString)description
{
  if (self && [(FigCaptureSourceConfiguration *)self sourceType]== 2)
  {
    v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"SRC:%@", +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", -[FigCaptureSourceConfiguration sourceDeviceType](self, "sourceDeviceType"))];
    if ([(FigCaptureSourceConfiguration *)self preferredIOBufferDuration])
    {
      [v3 appendFormat:@", IO:%@s", -[FigCaptureSourceConfiguration preferredIOBufferDuration](self, "preferredIOBufferDuration")];
    }
  }

  else
  {
    [(FigCaptureSourceConfiguration *)self description];
    return v5;
  }

  return v3;
}

- (uint64_t)description
{
  v4 = [a1 requiredFormat];
  v5 = MEMORY[0x1E696AD60];
  v6 = +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", [a1 sourceDeviceType]);
  v7 = +[FigCaptureSourceConfiguration stringForSourcePosition:](FigCaptureSourceConfiguration, "stringForSourcePosition:", [a1 sourcePosition]);
  [v4 format];
  v8 = [v5 stringWithFormat:@"SRC:%@ %@ %@/%dx%d", v6, v7, BWStringForOSType(), objc_msgSend(v4, "dimensions"), objc_msgSend(v4, "dimensions") >> 32];
  if (FigCaptureFrameRateIsValidRational(*(a1 + 176), *(a1 + 184)))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(locked:%@)", FigCaptureFrameRateAsString(*(a1 + 176), *(a1 + 184))];
  }

  else
  {
    v9 = &stru_1F216A3D0;
  }

  if (FigCaptureFrameRateIsValidRational(*(a1 + 188), *(a1 + 196)))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(externalSync:%@)", FigCaptureFrameRateAsString(*(a1 + 188), *(a1 + 196))];
  }

  else
  {
    v10 = &stru_1F216A3D0;
  }

  v11 = [a1 requiredMinFrameRate];
  v13 = FigCaptureFrameRateAsString(v11, v12);
  v14 = [a1 requiredMaxFrameRate];
  v16 = FigCaptureFrameRateAsString(v14, v15);
  [a1 maxFrameRateClientOverride];
  v18 = v17;
  [a1 videoZoomFactor];
  [v8 appendFormat:@", %@-%@(max:%.0f)%@%@, Z:%.2f, ICM:%d", v13, v16, *&v18, v9, v10, v19, objc_msgSend(a1, "imageControlMode")];
  if ([objc_msgSend(a1 "fallbackPrimaryConstituentDeviceTypes")])
  {
    [v8 appendFormat:@", FallbackDeviceTypes:"];
    if ([objc_msgSend(a1 "fallbackPrimaryConstituentDeviceTypes")])
    {
      v20 = 0;
      do
      {
        if (v20)
        {
          v21 = ", ";
        }

        else
        {
          v21 = " ";
        }

        [v8 appendFormat:@"%s%d", v21, objc_msgSend(objc_msgSend(objc_msgSend(a1, "fallbackPrimaryConstituentDeviceTypes"), "objectAtIndexedSubscript:", v20++), "intValue")];
      }

      while ([objc_msgSend(a1 "fallbackPrimaryConstituentDeviceTypes")] > v20);
    }
  }

  [a1 maxGainClientOverride];
  if (v22 > 0.0)
  {
    [a1 maxGainClientOverride];
    [v8 appendFormat:@", MaxGain: %.0f", v23];
  }

  if (*(a1 + 136))
  {
    [v8 appendFormat:@", (FD E:%d B:%d S:%d)", objc_msgSend(objc_msgSend(objc_msgSend(a1, "faceDetectionConfiguration"), "objectForKeyedSubscript:", @"EyeDetectionEnabled", "BOOLValue"), objc_msgSend(objc_msgSend(objc_msgSend(a1, "faceDetectionConfiguration"), "objectForKeyedSubscript:", @"BlinkDetectionEnabled", "BOOLValue"), objc_msgSend(objc_msgSend(objc_msgSend(a1, "faceDetectionConfiguration"), "objectForKeyedSubscript:", @"SmileDetectionEnabled", "BOOLValue")];
  }

  if (*(a1 + 144) == 1)
  {
    [v8 appendString:{@", QHDR/SHDR:1"}];
  }

  if (*(a1 + 145) == 1)
  {
    [v8 appendString:{@", HR:1"}];
  }

  if (*(a1 + 148))
  {
    [v8 appendFormat:@", ColorSpace:%d", *(a1 + 148)];
  }

  if (*(a1 + 152) == 1)
  {
    [*(a1 + 160) format];
    [v8 appendFormat:@", Depth:1 %@/%dx%d", BWStringForOSType(), objc_msgSend(*(a1 + 160), "dimensions"), objc_msgSend(*(a1 + 160), "dimensions") >> 32];
  }

  if (*(a1 + 172) == 1)
  {
    [v8 appendString:{@", LowLight:1"}];
  }

  v24 = *(a1 + 201);
  if (*(a1 + 200) == 1 || (v24 & 1) != 0)
  {
    [v8 appendFormat:@", SpatialOverCapture:%d, NonDestructiveCropEnabled:%d", *(a1 + 200), v24];
  }

  v25 = *(a1 + 216);
  if (*(a1 + 208) > 0.0 || v25 > 0.0)
  {
    [v8 appendFormat:@", NormalizedNonDestructiveCropSize:%fx%f", *(a1 + 208), *&v25];
  }

  if (*(a1 + 224) == 1)
  {
    [v8 appendString:{@", GDC:1"}];
  }

  if (*(a1 + 225) == 1)
  {
    [v8 appendString:{@", VFR:1"}];
  }

  v26 = *(a1 + 228);
  if (v26 >= 2)
  {
    [v8 appendFormat:@", StabilizationStrength:%@", FigCaptureVideoStabilizationStrengthToString(v26)];
  }

  if (*(a1 + 232) == 1)
  {
    [v8 appendFormat:@", CinematicFraming:1(CtrlMode:%d)", *(a1 + 236)];
  }

  if (*(a1 + 242) == 1)
  {
    [v8 appendString:{@", BackgroundBlur:1"}];
  }

  if (*(a1 + 257) == 1)
  {
    [v8 appendString:{@", DeskCam:1"}];
  }

  if (*(a1 + 244) == 1)
  {
    [v8 appendString:{@", studioLighting:1"}];
  }

  if (*(a1 + 246) == 1)
  {
    [v8 appendString:{@", reactionEffects:1"}];
  }

  if (*(a1 + 248) == 1)
  {
    [v8 appendString:{@", backgroundReplacement:1"}];
  }

  if (*(a1 + 268) == 1)
  {
    [v8 appendString:{@", MF:1"}];
    [v8 appendFormat:@", PAngles x:%f, y:%f, DZF:%.3f", *(a1 + 272), *(a1 + 276), *(a1 + 280)];
  }

  if (*(a1 + 289) == 1)
  {
    [v8 appendString:{@", DTE:1"}];
  }

  if (*(a1 + 288) == 1)
  {
    [v8 appendFormat:@", GS:%d", 1];
  }

  [v8 appendFormat:@", FaceDrivenAEAFMode:%d", *(a1 + 252)];
  [v8 appendFormat:@", FaceDrivenAEAFEnabledByDefault:%d", *(a1 + 256)];
  if (*(a1 + 290) == 1)
  {
    [v8 appendFormat:@", cameraMountedInLandscape: YES"];
  }

  if (*(a1 + 291) == 1)
  {
    [v8 appendFormat:@", CV:1(SA:%.2f)", *(a1 + 292)];
  }

  [v8 appendFormat:@", Output Aspect Ratio: %d", *(a1 + 300)];
  result = [v8 appendFormat:@", Output Aspect Ratio RequestID: %lld", *(a1 + 304)];
  if (*(a1 + 312) == 1)
  {
    result = [v8 appendFormat:@", LensSmudgeDetection:1"];
  }

  if (*(a1 + 344))
  {
    result = [v8 appendFormat:@", SCA:%d", *(a1 + 360)];
  }

  *a2 = v8;
  return result;
}

- (uint64_t)_sourceToken
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0)
  {
    v2(v1, @"SourceToken", *MEMORY[0x1E695E480], &v6);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 intValue];

  return v4;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(FigCaptureSourceConfiguration *)self sourceID];
  FigXPCMessageSetCFString();
  v4 = [(FigCaptureSourceConfiguration *)self _sourceToken];
  xpc_dictionary_set_int64(v3, "sourceToken", v4);
  xpc_dictionary_set_int64(v3, "sourceType", [(FigCaptureSourceConfiguration *)self sourceType]);
  if (self)
  {
    if ([(FigCaptureSourceConfiguration *)self sourceType]== 1)
    {
      xpc_dictionary_set_string(v3, "requiredFormatUniqueID", [(NSString *)[(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)self requiredFormat] uniqueID] UTF8String]);
      [(FigCaptureSourceConfiguration *)self requiredMaxFrameRate];
      OUTLINED_FUNCTION_4_65();
      v5 = OUTLINED_FUNCTION_5_63();
      xpc_dictionary_set_data(v5, v6, v7, 0xCuLL);
      [(FigCaptureSourceConfiguration *)self requiredMinFrameRate];
      OUTLINED_FUNCTION_4_65();
      v8 = OUTLINED_FUNCTION_5_63();
      xpc_dictionary_set_data(v8, v9, v10, 0xCuLL);
      [(FigCaptureSourceConfiguration *)self maxFrameRateClientOverride];
      xpc_dictionary_set_double(v3, "maxFrameRateClientOverrideKey", v11);
      [(FigCaptureSourceConfiguration *)self maxGainClientOverride];
      xpc_dictionary_set_double(v3, "maxGainClientOverride", v12);
      [(FigCaptureSourceConfiguration *)self videoZoomFactor];
      xpc_dictionary_set_double(v3, "videoZoomFactor", v13);
      v14 = xpc_array_create(0, 0);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v15 = [(FigCaptureSourceConfiguration *)self fallbackPrimaryConstituentDeviceTypes];
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v44 objects:v43 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v45;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v45 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = xpc_int64_create([*(*(&v44 + 1) + 8 * i) intValue]);
            xpc_array_append_value(v14, v20);
            xpc_release(v20);
          }

          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v44 objects:v43 count:16];
        }

        while (v17);
      }

      xpc_dictionary_set_value(v3, "fallbackPrimaryConstituentDeviceTypes", v14);
      xpc_release(v14);
      [(FigCaptureSourceConfiguration *)self videoZoomRampAcceleration];
      xpc_dictionary_set_double(v3, "videoZoomRampAcceleration", v21);
      xpc_dictionary_set_int64(v3, "imageControlMode", [(FigCaptureSourceConfiguration *)self imageControlMode]);
      xpc_dictionary_set_BOOL(v3, "applyMaxExposureDurationFrameworkOverrideWhenAvailable", [(FigCaptureSourceConfiguration *)self applyMaxExposureDurationFrameworkOverrideWhenAvailable]);
      [(FigCaptureSourceConfiguration *)self maxExposureDurationClientOverride];
      if (v42)
      {
        [(FigCaptureSourceConfiguration *)self maxExposureDurationClientOverride];
        OUTLINED_FUNCTION_5_63();
        FigXPCMessageSetCMTime();
      }

      xpc_dictionary_set_BOOL(v3, "sensorHDREnabled", [(FigCaptureSourceConfiguration *)self sensorHDREnabled]);
      xpc_dictionary_set_BOOL(v3, "highlightRecoveryEnabled", [(FigCaptureSourceConfiguration *)self highlightRecoveryEnabled]);
      xpc_dictionary_set_int64(v3, "colorSpace", [(FigCaptureSourceConfiguration *)self colorSpace]);
      xpc_dictionary_set_BOOL(v3, "depthDataDeliveryEnabled", [(FigCaptureSourceConfiguration *)self depthDataDeliveryEnabled]);
      FigXPCMessageSetCFDictionary();
      v22 = [(FigCaptureSourceConfiguration *)self depthDataFormat];
      if (v22)
      {
        xpc_dictionary_set_string(v3, "depthDataFormatUniqueID", [(NSString *)[(FigCaptureSourceFormat *)v22 uniqueID] UTF8String]);
      }

      [(FigCaptureSourceConfiguration *)self depthDataMaxFrameRate];
      xpc_dictionary_set_double(v3, "depthDataMaxFrameRate", v23);
      if ([(FigCaptureSourceConfiguration *)self lowLightVideoCaptureEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "lowLightVideoCaptureEnabled", [(FigCaptureSourceConfiguration *)self lowLightVideoCaptureEnabled]);
      }

      if ([(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "spatialOverCaptureEnabled", [(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled]);
      }

      if ([(FigCaptureSourceConfiguration *)self nonDestructiveCropEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "nonDestructiveCropEnabled", [(FigCaptureSourceConfiguration *)self nonDestructiveCropEnabled]);
      }

      [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
      if (v24 > 0.0 || ([(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize], v25 > 0.0))
      {
        [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
        xpc_dictionary_set_double(v3, "normalizedNonDestructiveCropSizeWidth", v26);
        [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
        xpc_dictionary_set_double(v3, "normalizedNonDestructiveCropSizeHeight", v27);
      }

      if ([(FigCaptureSourceConfiguration *)self geometricDistortionCorrectionEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "geometricDistortionCorrectionEnabled", [(FigCaptureSourceConfiguration *)self geometricDistortionCorrectionEnabled]);
      }

      if ([(FigCaptureSourceConfiguration *)self variableFrameRateVideoCaptureEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "variableFrameRateVideoCaptureEnabled", [(FigCaptureSourceConfiguration *)self variableFrameRateVideoCaptureEnabled]);
      }

      v28 = [(FigCaptureSourceConfiguration *)self lockedFrameRate];
      if (FigCaptureFrameRateIsInvalid(v28, v29))
      {
        v30 = &FigCaptureFrameRateInvalid;
      }

      else
      {
        [(FigCaptureSourceConfiguration *)self lockedFrameRate];
        OUTLINED_FUNCTION_4_65();
        v30 = v41;
      }

      xpc_dictionary_set_data(v3, "lockedFrameRate", v30, 0xCuLL);
      v33 = [(FigCaptureSourceConfiguration *)self externalSyncFrameRate];
      if (FigCaptureFrameRateIsInvalid(v33, v34))
      {
        v35 = &FigCaptureFrameRateInvalid;
      }

      else
      {
        [(FigCaptureSourceConfiguration *)self externalSyncFrameRate];
        OUTLINED_FUNCTION_4_65();
        v35 = v41;
      }

      xpc_dictionary_set_data(v3, "externalSyncFrameRate", v35, 0xCuLL);
      if ([(FigCaptureSourceConfiguration *)self videoStabilizationStrength])
      {
        xpc_dictionary_set_int64(v3, "videoStabilizationStrength", [(FigCaptureSourceConfiguration *)self videoStabilizationStrength]);
      }

      xpc_dictionary_set_BOOL(v3, "cinematicFramingSupported", [(FigCaptureSourceConfiguration *)self isCinematicFramingSupported]);
      if ([(FigCaptureSourceConfiguration *)self cinematicFramingEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "cinematicFramingEnabled", [(FigCaptureSourceConfiguration *)self cinematicFramingEnabled]);
        xpc_dictionary_set_int64(v3, "cinematicFramingControlMode", [(FigCaptureSourceConfiguration *)self cinematicFramingControlMode]);
      }

      xpc_dictionary_set_BOOL(v3, "smartFramingEnabled", [(FigCaptureSourceConfiguration *)self isSmartFramingEnabled]);
      xpc_dictionary_set_BOOL(v3, "backgroundBlurSupported", [(FigCaptureSourceConfiguration *)self isBackgroundBlurSupported]);
      xpc_dictionary_set_BOOL(v3, "backgroundBlurEnabled", [(FigCaptureSourceConfiguration *)self backgroundBlurEnabled]);
      xpc_dictionary_set_BOOL(v3, "studioLightingSupported", [(FigCaptureSourceConfiguration *)self isStudioLightingSupported]);
      xpc_dictionary_set_BOOL(v3, "studioLightingEnabled", [(FigCaptureSourceConfiguration *)self studioLightingEnabled]);
      xpc_dictionary_set_BOOL(v3, "reactionEffectsSupported", [(FigCaptureSourceConfiguration *)self reactionEffectsSupported]);
      xpc_dictionary_set_BOOL(v3, "reactionEffectsEnabled", [(FigCaptureSourceConfiguration *)self reactionEffectsEnabled]);
      xpc_dictionary_set_BOOL(v3, "backgroundReplacementSupported", [(FigCaptureSourceConfiguration *)self isBackgroundReplacementSupported]);
      xpc_dictionary_set_BOOL(v3, "backgroundReplacementEnabled", [(FigCaptureSourceConfiguration *)self backgroundReplacementEnabled]);
      xpc_dictionary_set_int64(v3, "faceDrivenAEAFMode", [(FigCaptureSourceConfiguration *)self faceDrivenAEAFMode]);
      xpc_dictionary_set_BOOL(v3, "faceDrivenAEAFEnabledByDefault", [(FigCaptureSourceConfiguration *)self faceDrivenAEAFEnabledByDefault]);
      xpc_dictionary_set_BOOL(v3, "deskCamEnabled", [(FigCaptureSourceConfiguration *)self deskCamEnabled]);
      if ([(FigCaptureSourceConfiguration *)self manualCinematicFramingEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "manualFramingEnabled", [(FigCaptureSourceConfiguration *)self manualCinematicFramingEnabled]);
      }

      [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleX];
      xpc_dictionary_set_double(v3, "manualFramingPanningAngleX", v36);
      [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleY];
      xpc_dictionary_set_double(v3, "manualFramingPanningAngleY", v37);
      [(FigCaptureSourceConfiguration *)self manualFramingDefaultZoomFactor];
      xpc_dictionary_set_double(v3, "manualFramingDefaultZoomFactor", v38);
      if ([(FigCaptureSourceConfiguration *)self gazeSelectionEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "gazeSelectionEnabled", [(FigCaptureSourceConfiguration *)self gazeSelectionEnabled]);
      }

      if ([(FigCaptureSourceConfiguration *)self isDockedTrackingEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "dockedTrackingEnabled", [(FigCaptureSourceConfiguration *)self isDockedTrackingEnabled]);
      }

      xpc_dictionary_set_BOOL(v3, "clientExpectsCameraMountedInLandscapeOrientation", [(FigCaptureSourceConfiguration *)self clientExpectsCameraMountedInLandscapeOrientation]);
      xpc_dictionary_set_BOOL(v3, "cinematicVideoCaptureEnabled", [(FigCaptureSourceConfiguration *)self isCinematicVideoCaptureEnabled]);
      [(FigCaptureSourceConfiguration *)self simulatedAperture];
      xpc_dictionary_set_double(v3, "simulatedAperture", v39);
      xpc_dictionary_set_int64(v3, "outputAspectRatio", [(FigCaptureSourceConfiguration *)self outputAspectRatio]);
      xpc_dictionary_set_int64(v3, "outputAspectRatioRequestID", [(FigCaptureSourceConfiguration *)self outputAspectRatioRequestID]);
      if ([(FigCaptureSourceConfiguration *)self lensSmudgeDetectionEnabled])
      {
        xpc_dictionary_set_BOOL(v3, "lensSmudgeDetectionEnabled", [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionEnabled]);
        [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionInterval];
        OUTLINED_FUNCTION_5_63();
        FigXPCMessageSetCMTime();
      }

      xpc_dictionary_set_value(v3, "sensitiveContentAnalyzerXPCObject", self->_sensitiveContentAnalyzerXPCObject);
      xpc_dictionary_set_BOOL(v3, "sensitiveContentAnalyzerEnabled", self->_sensitiveContentAnalyzerEnabled);
    }

    else if ([(FigCaptureSourceConfiguration *)self sourceType]== 2)
    {
      xpc_dictionary_set_BOOL(v3, "clientOSVersionSupportsDecoupledIO", [(FigCaptureSourceConfiguration *)self clientOSVersionSupportsDecoupledIO]);
      if ([(FigCaptureSourceConfiguration *)self clientAudioClockDeviceUID])
      {
        xpc_dictionary_set_string(v3, "clientAudioClockDeviceUID", [(NSString *)[(FigCaptureSourceConfiguration *)self clientAudioClockDeviceUID] UTF8String]);
      }

      if ([(FigCaptureSourceConfiguration *)self preferredIOBufferDuration])
      {
        [(NSNumber *)[(FigCaptureSourceConfiguration *)self preferredIOBufferDuration] doubleValue];
        xpc_dictionary_set_double(v3, "preferredIOBufferDuration", v31);
      }

      if ([(FigCaptureSourceConfiguration *)self remoteIOOutputFormat])
      {
        v41[0] = 0;
        v32 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:-[FigCaptureSourceConfiguration remoteIOOutputFormat](self requiringSecureCoding:"remoteIOOutputFormat") error:{1, v41}];
        if (!v41[0])
        {
          xpc_dictionary_set_data(v3, "remoteIOOutputFormat", [v32 bytes], objc_msgSend(v32, "length"));
        }
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    CFRelease(source);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureSourceConfiguration;
  [(FigCaptureSourceConfiguration *)&v4 dealloc];
}

- (BOOL)proResRawCaptureEnabled
{
  v2 = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)self requiredFormat] format];

  return FigCapturePixelFormatIsPackedBayerRaw(v2);
}

- (FigCaptureSourceConfiguration)initWithSource:(OpaqueFigCaptureSource *)a3
{
  v7.receiver = self;
  v7.super_class = FigCaptureSourceConfiguration;
  v4 = [(FigCaptureSourceConfiguration *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_source = v5;
  }

  return v4;
}

- (FigCaptureSourceConfiguration)initWithSourceType:(int)a3
{
  v5.receiver = self;
  v5.super_class = FigCaptureSourceConfiguration;
  result = [(FigCaptureSourceConfiguration *)&v5 init];
  if (result)
  {
    result->_sourceType = a3;
  }

  return result;
}

- (FigCaptureSourceConfiguration)initWithXPCEncoding:(id)a3
{
  if (!a3)
  {

    return 0;
  }

  v50.receiver = self;
  v50.super_class = FigCaptureSourceConfiguration;
  v4 = [(FigCaptureSourceConfiguration *)&v50 init];
  if (v4)
  {
    FigXPCMessageCopyCFString();
    *(v4 + 6) = xpc_dictionary_get_int64(a3, "sourceType");
    int64 = xpc_dictionary_get_int64(a3, "sourceToken");
    if (int64)
    {
      v6 = FigCaptureSourceServerCopySourceForToken(int64);
      *(v4 + 2) = v6;
      if (!v6)
      {
        [FigCaptureSourceConfiguration initWithXPCEncoding:];
      }
    }

    if (!*(v4 + 2) && (*(v4 + 6) - 1) < 2)
    {
LABEL_8:

      return 0;
    }

    if ([v4 sourceType] == 1)
    {
      string = xpc_dictionary_get_string(a3, "requiredFormatUniqueID");
      if (string)
      {
        v8 = string;
        length = 0;
        v9 = *(v4 + 2);
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v10 || (v11 = *MEMORY[0x1E695E480], v10(v9, @"Formats", *MEMORY[0x1E695E480], &length)))
        {
          [FigCaptureSourceConfiguration initWithXPCEncoding:];
        }

        else
        {
          v48 = 0;
          v12 = *(v4 + 2);
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v13(v12, @"AttributesDictionary", v11, &v48);
            v14 = v48;
          }

          else
          {
            v14 = 0;
          }

          [v14 objectForKeyedSubscript:@"NonLocalizedName"];
          FormatByUniqueID = fcsc_findFormatByUniqueID(v8, length);
          *(v4 + 5) = FormatByUniqueID;

          if (FormatByUniqueID)
          {
            length = 0;
            data = xpc_dictionary_get_data(a3, "requiredMaxFrameRate", &length);
            if (length == 12)
            {
              v22 = *data;
              *(v4 + 14) = data[2];
              *(v4 + 6) = v22;
            }

            else
            {
              *(v4 + 6) = 0;
              *(v4 + 14) = 2;
            }

            length = 0;
            v23 = xpc_dictionary_get_data(a3, "requiredMinFrameRate", &length);
            if (length == 12)
            {
              v24 = *v23;
              *(v4 + 17) = v23[2];
              *(v4 + 60) = v24;
            }

            else
            {
              *(v4 + 60) = 0;
              *(v4 + 17) = 2;
            }

            v25 = xpc_dictionary_get_double(a3, "maxFrameRateClientOverrideKey");
            *(v4 + 18) = v25;
            v26 = xpc_dictionary_get_double(a3, "maxGainClientOverride");
            *(v4 + 19) = v26;
            v27 = xpc_dictionary_get_double(a3, "videoZoomFactor");
            *(v4 + 21) = v27;
            v28 = [MEMORY[0x1E695DF70] array];
            value = xpc_dictionary_get_value(a3, "fallbackPrimaryConstituentDeviceTypes");
            if (xpc_array_get_count(value))
            {
              v30 = 0;
              do
              {
                [v28 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", xpc_array_get_int64(value, v30++))}];
              }

              while (xpc_array_get_count(value) > v30);
            }

            *(v4 + 12) = [v28 copy];
            v31 = xpc_dictionary_get_double(a3, "videoZoomRampAcceleration");
            *(v4 + 22) = v31;
            *(v4 + 26) = xpc_dictionary_get_int64(a3, "imageControlMode");
            v4[108] = xpc_dictionary_get_BOOL(a3, "applyMaxExposureDurationFrameworkOverrideWhenAvailable");
            FigXPCMessageGetCMTime();
            v4[144] = xpc_dictionary_get_BOOL(a3, "sensorHDREnabled");
            v4[145] = xpc_dictionary_get_BOOL(a3, "highlightRecoveryEnabled");
            *(v4 + 37) = xpc_dictionary_get_int64(a3, "colorSpace");
            v4[152] = xpc_dictionary_get_BOOL(a3, "depthDataDeliveryEnabled");
            FigXPCMessageCopyCFDictionary();
            v32 = xpc_dictionary_get_string(a3, "depthDataFormatUniqueID");
            if (v32 && (v33 = fcsc_findFormatByUniqueID(v32, [*(v4 + 5) supportedDepthDataFormats]), *(v4 + 20) = v33, !v33))
            {
              [FigCaptureSourceConfiguration initWithXPCEncoding:];
            }

            else
            {
              v34 = xpc_dictionary_get_double(a3, "depthDataMaxFrameRate");
              *(v4 + 42) = v34;
              v4[172] = xpc_dictionary_get_BOOL(a3, "lowLightVideoCaptureEnabled");
              v4[200] = xpc_dictionary_get_BOOL(a3, "spatialOverCaptureEnabled");
              v4[201] = xpc_dictionary_get_BOOL(a3, "nonDestructiveCropEnabled");
              v35 = xpc_dictionary_get_double(a3, "normalizedNonDestructiveCropSizeWidth");
              v36 = xpc_dictionary_get_double(a3, "normalizedNonDestructiveCropSizeHeight");
              if (v35 > 0.0 && v36 > 0.0)
              {
                *(v4 + 26) = v35;
                *(v4 + 27) = v36;
              }

              v4[224] = xpc_dictionary_get_BOOL(a3, "geometricDistortionCorrectionEnabled");
              v37 = xpc_dictionary_get_BOOL(a3, "variableFrameRateVideoCaptureEnabled");
              *(v4 + 22) = 0;
              v4[225] = v37;
              *(v4 + 46) = 0;
              length = 0;
              v38 = xpc_dictionary_get_data(a3, "lockedFrameRate", &length);
              if (length == 12)
              {
                v39 = *v38;
                *(v4 + 46) = v38[2];
                *(v4 + 22) = v39;
              }

              *(v4 + 188) = 0;
              *(v4 + 49) = 0;
              v48 = 0;
              v40 = xpc_dictionary_get_data(a3, "externalSyncFrameRate", &v48);
              if (v48 == 12)
              {
                v41 = *v40;
                *(v4 + 49) = v40[2];
                *(v4 + 188) = v41;
              }

              *(v4 + 57) = xpc_dictionary_get_int64(a3, "videoStabilizationStrength");
              v4[232] = xpc_dictionary_get_BOOL(a3, "cinematicFramingEnabled");
              v4[233] = xpc_dictionary_get_BOOL(a3, "cinematicFramingSupported");
              *(v4 + 59) = xpc_dictionary_get_int64(a3, "cinematicFramingControlMode");
              v4[240] = xpc_dictionary_get_BOOL(a3, "smartFramingEnabled");
              v4[241] = xpc_dictionary_get_BOOL(a3, "backgroundBlurSupported");
              v4[242] = xpc_dictionary_get_BOOL(a3, "backgroundBlurEnabled");
              v4[243] = xpc_dictionary_get_BOOL(a3, "studioLightingSupported");
              v4[244] = xpc_dictionary_get_BOOL(a3, "studioLightingEnabled");
              v4[245] = xpc_dictionary_get_BOOL(a3, "reactionEffectsSupported");
              v4[246] = xpc_dictionary_get_BOOL(a3, "reactionEffectsEnabled");
              v4[247] = xpc_dictionary_get_BOOL(a3, "backgroundReplacementSupported");
              v4[248] = xpc_dictionary_get_BOOL(a3, "backgroundReplacementEnabled");
              *(v4 + 63) = xpc_dictionary_get_int64(a3, "faceDrivenAEAFMode");
              v4[256] = xpc_dictionary_get_BOOL(a3, "faceDrivenAEAFEnabledByDefault");
              v4[257] = xpc_dictionary_get_BOOL(a3, "deskCamEnabled");
              v4[268] = xpc_dictionary_get_BOOL(a3, "manualFramingEnabled");
              v42 = xpc_dictionary_get_double(a3, "manualFramingPanningAngleX");
              *(v4 + 68) = v42;
              v43 = xpc_dictionary_get_double(a3, "manualFramingPanningAngleY");
              *(v4 + 69) = v43;
              *(v4 + 35) = xpc_dictionary_get_double(a3, "manualFramingDefaultZoomFactor");
              v4[288] = xpc_dictionary_get_BOOL(a3, "gazeSelectionEnabled");
              v4[289] = xpc_dictionary_get_BOOL(a3, "dockedTrackingEnabled");
              v4[290] = xpc_dictionary_get_BOOL(a3, "clientExpectsCameraMountedInLandscapeOrientation");
              v4[291] = xpc_dictionary_get_BOOL(a3, "cinematicVideoCaptureEnabled");
              v44 = xpc_dictionary_get_double(a3, "simulatedAperture");
              *(v4 + 73) = v44;
              *(v4 + 75) = xpc_dictionary_get_int64(a3, "outputAspectRatio");
              *(v4 + 38) = xpc_dictionary_get_int64(a3, "outputAspectRatioRequestID");
              v4[312] = xpc_dictionary_get_BOOL(a3, "lensSmudgeDetectionEnabled");
              FigXPCMessageGetCMTime();
              v45 = xpc_dictionary_get_value(a3, "sensitiveContentAnalyzerXPCObject");
              *(v4 + 43) = v45;
              if (!v45 || (v47 = 0, *(v4 + 44) = [objc_alloc(getSCVideoStreamAnalyzerClass()) initWithXPCObject:*(v4 + 43) error:&v47], objc_msgSend(objc_msgSend(v47, "domain"), "isEqualToString:", getSCAErrorDomain())) && objc_msgSend(v47, "code") == 20 || *(v4 + 44))
              {
                v4[360] = xpc_dictionary_get_BOOL(a3, "sensitiveContentAnalyzerEnabled");
                return v4;
              }
            }
          }

          else
          {
            [FigCaptureSourceConfiguration initWithXPCEncoding:];
          }
        }
      }

      else
      {
        [FigCaptureSourceConfiguration initWithXPCEncoding:];
      }

      goto LABEL_8;
    }

    if ([v4 sourceType] == 2)
    {
      v4[361] = xpc_dictionary_get_BOOL(a3, "clientOSVersionSupportsDecoupledIO");
      v15 = xpc_dictionary_get_string(a3, "clientAudioClockDeviceUID");
      if (v15)
      {
        *(v4 + 46) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
      }

      *(v4 + 47) = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:{xpc_dictionary_get_double(a3, "preferredIOBufferDuration")}];
      length = 0;
      v16 = xpc_dictionary_get_data(a3, "remoteIOOutputFormat", &length);
      if (v16)
      {
        v17 = v16;
        v18 = objc_alloc(MEMORY[0x1E695DEF0]);
        v19 = [v18 initWithBytes:v17 length:length];
        v48 = 0;
        *(v4 + 48) = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v19 error:&v48];
      }
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v119 = v6;
    v120 = v5;
    v121 = v3;
    v122 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_76;
    }

    v9 = [(FigCaptureSourceConfiguration *)self sourceID];
    if (v9 == [a3 sourceID] || (v10 = -[NSString isEqual:](-[FigCaptureSourceConfiguration sourceID](self, "sourceID"), "isEqual:", objc_msgSend(a3, "sourceID"))) != 0)
    {
      if (self->_source && ([(FigCaptureSourceConfiguration *)self isEqual:a3]& 1) == 0)
      {
        goto LABEL_76;
      }

      v11 = [(FigCaptureSourceConfiguration *)self _sourceToken];
      if (v11 != [(FigCaptureSourceConfiguration *)a3 _sourceToken])
      {
        goto LABEL_76;
      }

      if ([(FigCaptureSourceConfiguration *)self sourceType]!= 1)
      {
        goto LABEL_78;
      }

      if (!a3)
      {
        [(FigCaptureSourceConfiguration *)self sourceType];
LABEL_87:
        LOBYTE(v10) = 1;
        return v10;
      }

      if ([a3 sourceType] == 1)
      {
        v12 = [(FigCaptureSourceConfiguration *)self requiredFormat];
        if (v12 == [a3 requiredFormat] || (v10 = -[FigCaptureSourceFormat isEqual:](-[FigCaptureSourceConfiguration requiredFormat](self, "requiredFormat"), "isEqual:", objc_msgSend(a3, "requiredFormat"))) != 0)
        {
          v13 = [(FigCaptureSourceConfiguration *)self requiredMaxFrameRate];
          v15 = v14;
          v16 = [a3 requiredMaxFrameRate];
          if (FigCaptureFrameRateNotEqual(v13, v15, v16, v17))
          {
            goto LABEL_76;
          }

          v18 = [(FigCaptureSourceConfiguration *)self requiredMinFrameRate];
          v20 = v19;
          v21 = [a3 requiredMinFrameRate];
          if (FigCaptureFrameRateNotEqual(v18, v20, v21, v22))
          {
            goto LABEL_76;
          }

          [(FigCaptureSourceConfiguration *)self maxFrameRateClientOverride];
          v24 = v23;
          [a3 maxFrameRateClientOverride];
          if (v24 != v25)
          {
            goto LABEL_76;
          }

          [(FigCaptureSourceConfiguration *)self maxGainClientOverride];
          v27 = v26;
          [a3 maxGainClientOverride];
          if (v27 != v28)
          {
            goto LABEL_76;
          }

          [(FigCaptureSourceConfiguration *)self videoZoomFactor];
          v30 = v29;
          [a3 videoZoomFactor];
          if (v30 != v31)
          {
            goto LABEL_76;
          }

          if (!-[FigCaptureSourceConfiguration fallbackPrimaryConstituentDeviceTypes](self, "fallbackPrimaryConstituentDeviceTypes") && ![a3 fallbackPrimaryConstituentDeviceTypes] || (v10 = -[NSArray isEqualToArray:](-[FigCaptureSourceConfiguration fallbackPrimaryConstituentDeviceTypes](self, "fallbackPrimaryConstituentDeviceTypes"), "isEqualToArray:", objc_msgSend(a3, "fallbackPrimaryConstituentDeviceTypes"))) != 0)
          {
            [(FigCaptureSourceConfiguration *)self videoZoomRampAcceleration];
            v33 = v32;
            [a3 videoZoomRampAcceleration];
            if (v33 != v34)
            {
              goto LABEL_76;
            }

            v35 = [(FigCaptureSourceConfiguration *)self imageControlMode];
            if (v35 != [a3 imageControlMode])
            {
              goto LABEL_76;
            }

            v36 = [(FigCaptureSourceConfiguration *)self applyMaxExposureDurationFrameworkOverrideWhenAvailable];
            if (v36 != [a3 applyMaxExposureDurationFrameworkOverrideWhenAvailable])
            {
              goto LABEL_76;
            }

            [(FigCaptureSourceConfiguration *)self maxExposureDurationClientOverride];
            [a3 maxExposureDurationClientOverride];
            if (CMTimeCompare(&time1, &v117))
            {
              goto LABEL_76;
            }

            v37 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
            if (v37 != [a3 faceDetectionConfiguration] && (-[NSDictionary isEqual:](-[FigCaptureSourceConfiguration faceDetectionConfiguration](self, "faceDetectionConfiguration"), "isEqual:", objc_msgSend(a3, "faceDetectionConfiguration")) & 1) == 0)
            {
              v107 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
              v108 = *off_1E798AD38;
              v109 = [-[NSDictionary objectForKeyedSubscript:](v107 objectForKeyedSubscript:{*off_1E798AD38), "BOOLValue"}];
              if (v109 != [objc_msgSend(objc_msgSend(a3 "faceDetectionConfiguration")])
              {
                goto LABEL_76;
              }

              v110 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
              v111 = *off_1E798AD30;
              v112 = [-[NSDictionary objectForKeyedSubscript:](v110 objectForKeyedSubscript:{*off_1E798AD30), "BOOLValue"}];
              if (v112 != [objc_msgSend(objc_msgSend(a3 "faceDetectionConfiguration")])
              {
                goto LABEL_76;
              }

              v113 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
              v114 = *off_1E798AD48;
              v115 = [-[NSDictionary objectForKeyedSubscript:](v113 objectForKeyedSubscript:{*off_1E798AD48), "BOOLValue"}];
              if (v115 != [objc_msgSend(objc_msgSend(a3 "faceDetectionConfiguration")])
              {
                goto LABEL_76;
              }
            }

            v38 = [(FigCaptureSourceConfiguration *)self sensorHDREnabled];
            if (v38 != [a3 sensorHDREnabled])
            {
              goto LABEL_76;
            }

            v39 = [(FigCaptureSourceConfiguration *)self highlightRecoveryEnabled];
            if (v39 != [a3 highlightRecoveryEnabled])
            {
              goto LABEL_76;
            }

            v40 = [(FigCaptureSourceConfiguration *)self colorSpace];
            if (v40 != [a3 colorSpace])
            {
              goto LABEL_76;
            }

            v41 = [(FigCaptureSourceConfiguration *)self depthDataDeliveryEnabled];
            if (v41 != [a3 depthDataDeliveryEnabled])
            {
              goto LABEL_76;
            }

            v42 = [(FigCaptureSourceConfiguration *)self depthDataFormat];
            if (v42 == [a3 depthDataFormat] || (v10 = -[FigCaptureSourceFormat isEqual:](-[FigCaptureSourceConfiguration depthDataFormat](self, "depthDataFormat"), "isEqual:", objc_msgSend(a3, "depthDataFormat"))) != 0)
            {
              [(FigCaptureSourceConfiguration *)self depthDataMaxFrameRate];
              v44 = v43;
              [a3 depthDataMaxFrameRate];
              if (v44 == v45)
              {
                v46 = [(FigCaptureSourceConfiguration *)self lowLightVideoCaptureEnabled];
                if (v46 == [a3 lowLightVideoCaptureEnabled])
                {
                  v47 = [(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled];
                  if (v47 == [a3 spatialOverCaptureEnabled])
                  {
                    v48 = [(FigCaptureSourceConfiguration *)self nonDestructiveCropEnabled];
                    if (v48 == [a3 nonDestructiveCropEnabled])
                    {
                      [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
                      v50 = v49;
                      [a3 normalizedNonDestructiveCropSize];
                      if (v50 == v51)
                      {
                        [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
                        v53 = v52;
                        [a3 normalizedNonDestructiveCropSize];
                        if (v53 == v54)
                        {
                          v55 = [(FigCaptureSourceConfiguration *)self geometricDistortionCorrectionEnabled];
                          if (v55 == [a3 geometricDistortionCorrectionEnabled])
                          {
                            v56 = [(FigCaptureSourceConfiguration *)self variableFrameRateVideoCaptureEnabled];
                            if (v56 == [a3 variableFrameRateVideoCaptureEnabled])
                            {
                              v57 = [(FigCaptureSourceConfiguration *)self lockedFrameRate];
                              v59 = v58;
                              v60 = [a3 lockedFrameRate];
                              if (!FigCaptureFrameRateNotEqual(v57, v59, v60, v61))
                              {
                                v62 = [(FigCaptureSourceConfiguration *)self externalSyncFrameRate];
                                v64 = v63;
                                v65 = [a3 externalSyncFrameRate];
                                if (!FigCaptureFrameRateNotEqual(v62, v64, v65, v66))
                                {
                                  v67 = [(FigCaptureSourceConfiguration *)self videoStabilizationStrength];
                                  if (v67 == [a3 videoStabilizationStrength])
                                  {
                                    v68 = [(FigCaptureSourceConfiguration *)self cinematicFramingEnabled];
                                    if (v68 == [a3 cinematicFramingEnabled])
                                    {
                                      v69 = [(FigCaptureSourceConfiguration *)self isCinematicFramingSupported];
                                      if (v69 == [a3 isCinematicFramingSupported])
                                      {
                                        v70 = [(FigCaptureSourceConfiguration *)self cinematicFramingControlMode];
                                        if (v70 == [a3 cinematicFramingControlMode])
                                        {
                                          v71 = [(FigCaptureSourceConfiguration *)self isSmartFramingEnabled];
                                          if (v71 == [a3 isSmartFramingEnabled])
                                          {
                                            v72 = [(FigCaptureSourceConfiguration *)self isBackgroundBlurSupported];
                                            if (v72 == [a3 isBackgroundBlurSupported])
                                            {
                                              v73 = [(FigCaptureSourceConfiguration *)self backgroundBlurEnabled];
                                              if (v73 == [a3 backgroundBlurEnabled])
                                              {
                                                v74 = [(FigCaptureSourceConfiguration *)self isStudioLightingSupported];
                                                if (v74 == [a3 isStudioLightingSupported])
                                                {
                                                  v75 = [(FigCaptureSourceConfiguration *)self studioLightingEnabled];
                                                  if (v75 == [a3 studioLightingEnabled])
                                                  {
                                                    v76 = [(FigCaptureSourceConfiguration *)self reactionEffectsSupported];
                                                    if (v76 == [a3 reactionEffectsSupported])
                                                    {
                                                      v77 = [(FigCaptureSourceConfiguration *)self reactionEffectsEnabled];
                                                      if (v77 == [a3 reactionEffectsEnabled])
                                                      {
                                                        v78 = [(FigCaptureSourceConfiguration *)self isBackgroundReplacementSupported];
                                                        if (v78 == [a3 isBackgroundReplacementSupported])
                                                        {
                                                          v79 = [(FigCaptureSourceConfiguration *)self backgroundReplacementEnabled];
                                                          if (v79 == [a3 backgroundReplacementEnabled])
                                                          {
                                                            v80 = [(FigCaptureSourceConfiguration *)self faceDrivenAEAFMode];
                                                            if (v80 == [a3 faceDrivenAEAFMode])
                                                            {
                                                              v81 = [(FigCaptureSourceConfiguration *)self faceDrivenAEAFEnabledByDefault];
                                                              if (v81 == [a3 faceDrivenAEAFEnabledByDefault])
                                                              {
                                                                v82 = [(FigCaptureSourceConfiguration *)self deskCamEnabled];
                                                                if (v82 == [a3 deskCamEnabled])
                                                                {
                                                                  v83 = [(FigCaptureSourceConfiguration *)self manualCinematicFramingEnabled];
                                                                  if (v83 == [a3 manualCinematicFramingEnabled])
                                                                  {
                                                                    [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleX];
                                                                    v85 = v84;
                                                                    [a3 manualFramingPanningAngleX];
                                                                    if (v85 == v86)
                                                                    {
                                                                      [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleY];
                                                                      v88 = v87;
                                                                      [a3 manualFramingPanningAngleY];
                                                                      if (v88 == v89)
                                                                      {
                                                                        v90 = [(FigCaptureSourceConfiguration *)self gazeSelectionEnabled];
                                                                        if (v90 == [a3 gazeSelectionEnabled])
                                                                        {
                                                                          v91 = [(FigCaptureSourceConfiguration *)self isDockedTrackingEnabled];
                                                                          if (v91 == [a3 isDockedTrackingEnabled])
                                                                          {
                                                                            v92 = [(FigCaptureSourceConfiguration *)self clientExpectsCameraMountedInLandscapeOrientation];
                                                                            if (v92 == [a3 clientExpectsCameraMountedInLandscapeOrientation])
                                                                            {
                                                                              v93 = [(FigCaptureSourceConfiguration *)self isCinematicVideoCaptureEnabled];
                                                                              if (v93 == [a3 isCinematicVideoCaptureEnabled])
                                                                              {
                                                                                [(FigCaptureSourceConfiguration *)self simulatedAperture];
                                                                                v95 = v94;
                                                                                [a3 simulatedAperture];
                                                                                if (v95 == v96)
                                                                                {
                                                                                  v97 = [(FigCaptureSourceConfiguration *)self outputAspectRatio];
                                                                                  if (v97 == [a3 outputAspectRatio])
                                                                                  {
                                                                                    v98 = [(FigCaptureSourceConfiguration *)self outputAspectRatioRequestID];
                                                                                    if (v98 == [a3 outputAspectRatioRequestID])
                                                                                    {
                                                                                      v99 = [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionEnabled];
                                                                                      if (v99 == [a3 lensSmudgeDetectionEnabled])
                                                                                      {
                                                                                        [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionInterval];
                                                                                        [a3 lensSmudgeDetectionInterval];
                                                                                        if (!CMTimeCompare(&time1, &v117))
                                                                                        {
                                                                                          v100 = [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerXPCObject]!= 0;
                                                                                          if (v100 != ([a3 sensitiveContentAnalyzerXPCObject] == 0))
                                                                                          {
                                                                                            if (![(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerXPCObject])
                                                                                            {
                                                                                              goto LABEL_87;
                                                                                            }

                                                                                            v101 = [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerEnabled];
                                                                                            if (v101 == [a3 sensitiveContentAnalyzerEnabled])
                                                                                            {
                                                                                              goto LABEL_87;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_76:
              LOBYTE(v10) = 0;
            }
          }
        }
      }

      else
      {
LABEL_78:
        v102 = [(FigCaptureSourceConfiguration *)self sourceType];
        if (!a3 || v102 != 2 || [a3 sourceType] != 2)
        {
          goto LABEL_87;
        }

        v103 = [(FigCaptureSourceConfiguration *)self clientOSVersionSupportsDecoupledIO];
        if (v103 != [a3 clientOSVersionSupportsDecoupledIO])
        {
          goto LABEL_76;
        }

        v104 = [(FigCaptureSourceConfiguration *)self clientAudioClockDeviceUID];
        if (v104 != [a3 clientAudioClockDeviceUID])
        {
          goto LABEL_76;
        }

        v105 = [(FigCaptureSourceConfiguration *)self preferredIOBufferDuration];
        if (v105 == [a3 preferredIOBufferDuration] || (v10 = -[NSNumber isEqual:](-[FigCaptureSourceConfiguration preferredIOBufferDuration](self, "preferredIOBufferDuration"), "isEqual:", objc_msgSend(a3, "preferredIOBufferDuration"))) != 0)
        {
          v106 = [(FigCaptureSourceConfiguration *)self remoteIOOutputFormat];
          if (v106 == [a3 remoteIOOutputFormat])
          {
            goto LABEL_87;
          }

          v10 = -[AVAudioFormat isEqual:](-[FigCaptureSourceConfiguration remoteIOOutputFormat](self, "remoteIOOutputFormat"), "isEqual:", [a3 remoteIOOutputFormat]);
          if (v10)
          {
            goto LABEL_87;
          }
        }
      }
    }
  }

  return v10;
}

+ (int)sourceTypeForString:(id)a3
{
  v4 = 1;
  while ([a3 caseInsensitiveCompare:FigCaptureSourceTypeNameMap[v4]])
  {
    if (++v4 == 7)
    {
      LODWORD(v4) = 0;
      return v4;
    }
  }

  return v4;
}

+ (id)stringForSourcePosition:(int)a3
{
  if (a3 > 2)
  {
    return &stru_1F216A3D0;
  }

  else
  {
    return *(&off_1E7999AA8 + a3);
  }
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)pulseGeneratorFrameRate
{
  p_lockedFrameRate = &self->_lockedFrameRate;
  p_tag = &self->_lockedFrameRate.tag;
  if (!FigCaptureFrameRateIsValidRational(*&self->_lockedFrameRate.u, self->_lockedFrameRate.tag))
  {
    u = self->_externalSyncFrameRate.u;
    p_externalSyncFrameRate = &self->_externalSyncFrameRate;
    p_tag = &p_externalSyncFrameRate->tag;
    if (!FigCaptureFrameRateIsValidRational(u, p_externalSyncFrameRate->tag))
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_6;
    }

    p_lockedFrameRate = p_externalSyncFrameRate;
  }

  v7 = p_lockedFrameRate->u;
  v8 = *p_tag;
LABEL_6:
  v9 = v8;
  result.var0 = v7;
  result.var1 = v9;
  return result;
}

- (void)setMaxExposureDurationClientOverride:(id *)a3
{
  v3 = *&a3->var0;
  self->_maxExposureDurationClientOverride.epoch = a3->var3;
  *&self->_maxExposureDurationClientOverride.value = v3;
}

- (void)setLensSmudgeDetectionInterval:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_lensSmudgeDetectionInterval.flags = a3->var3;
  *(&self->_lensSmudgeDetectionEnabled + 4) = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(FigCaptureSourceConfiguration *)self sourceID];
  [OUTLINED_FUNCTION_17() setSourceID:?];
  v5 = [(FigCaptureSourceConfiguration *)self source];
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v4 + 16) = v5;
  *(v4 + 24) = [(FigCaptureSourceConfiguration *)self sourceType];
  if (self)
  {
    if ([(FigCaptureSourceConfiguration *)self sourceType]== 1)
    {
      [(FigCaptureSourceConfiguration *)self requiredFormat];
      [OUTLINED_FUNCTION_17() setRequiredFormat:?];
      [(FigCaptureSourceConfiguration *)self requiredMaxFrameRate];
      [OUTLINED_FUNCTION_3_74() setRequiredMaxFrameRate:?];
      [(FigCaptureSourceConfiguration *)self requiredMinFrameRate];
      [OUTLINED_FUNCTION_3_74() setRequiredMinFrameRate:?];
      [(FigCaptureSourceConfiguration *)self maxFrameRateClientOverride];
      [v4 setMaxFrameRateClientOverride:?];
      [(FigCaptureSourceConfiguration *)self maxGainClientOverride];
      [v4 setMaxGainClientOverride:?];
      [(FigCaptureSourceConfiguration *)self videoZoomFactor];
      [v4 setVideoZoomFactor:?];
      [(FigCaptureSourceConfiguration *)self fallbackPrimaryConstituentDeviceTypes];
      [OUTLINED_FUNCTION_17() setFallbackPrimaryConstituentDeviceTypes:?];
      [(FigCaptureSourceConfiguration *)self videoZoomRampAcceleration];
      [v4 setVideoZoomRampAcceleration:?];
      [(FigCaptureSourceConfiguration *)self imageControlMode];
      [OUTLINED_FUNCTION_17() setImageControlMode:?];
      [(FigCaptureSourceConfiguration *)self applyMaxExposureDurationFrameworkOverrideWhenAvailable];
      [OUTLINED_FUNCTION_17() setApplyMaxExposureDurationFrameworkOverrideWhenAvailable:?];
      [(FigCaptureSourceConfiguration *)self maxExposureDurationClientOverride];
      v9 = v11;
      v10 = v12;
      [v4 setMaxExposureDurationClientOverride:&v9];
      [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
      [OUTLINED_FUNCTION_17() setFaceDetectionConfiguration:?];
      [(FigCaptureSourceConfiguration *)self sensorHDREnabled];
      [OUTLINED_FUNCTION_17() setSensorHDREnabled:?];
      [(FigCaptureSourceConfiguration *)self highlightRecoveryEnabled];
      [OUTLINED_FUNCTION_17() setHighlightRecoveryEnabled:?];
      [(FigCaptureSourceConfiguration *)self colorSpace];
      [OUTLINED_FUNCTION_17() setColorSpace:?];
      [(FigCaptureSourceConfiguration *)self depthDataDeliveryEnabled];
      [OUTLINED_FUNCTION_17() setDepthDataDeliveryEnabled:?];
      [(FigCaptureSourceConfiguration *)self depthDataFormat];
      [OUTLINED_FUNCTION_17() setDepthDataFormat:?];
      [(FigCaptureSourceConfiguration *)self depthDataMaxFrameRate];
      [v4 setDepthDataMaxFrameRate:?];
      [(FigCaptureSourceConfiguration *)self lowLightVideoCaptureEnabled];
      [OUTLINED_FUNCTION_17() setLowLightVideoCaptureEnabled:?];
      [(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled];
      [OUTLINED_FUNCTION_17() setSpatialOverCaptureEnabled:?];
      [(FigCaptureSourceConfiguration *)self nonDestructiveCropEnabled];
      [OUTLINED_FUNCTION_17() setNonDestructiveCropEnabled:?];
      [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
      [v4 setNormalizedNonDestructiveCropSize:?];
      [(FigCaptureSourceConfiguration *)self geometricDistortionCorrectionEnabled];
      [OUTLINED_FUNCTION_17() setGeometricDistortionCorrectionEnabled:?];
      [(FigCaptureSourceConfiguration *)self variableFrameRateVideoCaptureEnabled];
      [OUTLINED_FUNCTION_17() setVariableFrameRateVideoCaptureEnabled:?];
      [(FigCaptureSourceConfiguration *)self lockedFrameRate];
      [OUTLINED_FUNCTION_3_74() setLockedFrameRate:?];
      [(FigCaptureSourceConfiguration *)self externalSyncFrameRate];
      [OUTLINED_FUNCTION_3_74() setExternalSyncFrameRate:?];
      [(FigCaptureSourceConfiguration *)self videoStabilizationStrength];
      [OUTLINED_FUNCTION_17() setVideoStabilizationStrength:?];
      [(FigCaptureSourceConfiguration *)self cinematicFramingEnabled];
      [OUTLINED_FUNCTION_17() setCinematicFramingEnabled:?];
      [(FigCaptureSourceConfiguration *)self isCinematicFramingSupported];
      [OUTLINED_FUNCTION_17() setCinematicFramingSupported:?];
      [(FigCaptureSourceConfiguration *)self cinematicFramingControlMode];
      [OUTLINED_FUNCTION_17() setCinematicFramingControlMode:?];
      [(FigCaptureSourceConfiguration *)self isSmartFramingEnabled];
      [OUTLINED_FUNCTION_17() setSmartFramingEnabled:?];
      [(FigCaptureSourceConfiguration *)self isBackgroundBlurSupported];
      [OUTLINED_FUNCTION_17() setBackgroundBlurSupported:?];
      [(FigCaptureSourceConfiguration *)self backgroundBlurEnabled];
      [OUTLINED_FUNCTION_17() setBackgroundBlurEnabled:?];
      [(FigCaptureSourceConfiguration *)self isStudioLightingSupported];
      [OUTLINED_FUNCTION_17() setStudioLightingSupported:?];
      [(FigCaptureSourceConfiguration *)self studioLightingEnabled];
      [OUTLINED_FUNCTION_17() setStudioLightingEnabled:?];
      [(FigCaptureSourceConfiguration *)self reactionEffectsSupported];
      [OUTLINED_FUNCTION_17() setReactionEffectsSupported:?];
      [(FigCaptureSourceConfiguration *)self reactionEffectsEnabled];
      [OUTLINED_FUNCTION_17() setReactionEffectsEnabled:?];
      [(FigCaptureSourceConfiguration *)self isBackgroundReplacementSupported];
      [OUTLINED_FUNCTION_17() setBackgroundReplacementSupported:?];
      [(FigCaptureSourceConfiguration *)self backgroundReplacementEnabled];
      [OUTLINED_FUNCTION_17() setBackgroundReplacementEnabled:?];
      [(FigCaptureSourceConfiguration *)self faceDrivenAEAFMode];
      [OUTLINED_FUNCTION_17() setFaceDrivenAEAFMode:?];
      [(FigCaptureSourceConfiguration *)self faceDrivenAEAFEnabledByDefault];
      [OUTLINED_FUNCTION_17() setFaceDrivenAEAFEnabledByDefault:?];
      [(FigCaptureSourceConfiguration *)self deskCamEnabled];
      [OUTLINED_FUNCTION_17() setDeskCamEnabled:?];
      [(FigCaptureSourceConfiguration *)self manualCinematicFramingEnabled];
      [OUTLINED_FUNCTION_17() setManualCinematicFramingEnabled:?];
      [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleX];
      [v4 setManualFramingPanningAngleX:?];
      [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleY];
      [v4 setManualFramingPanningAngleY:?];
      [(FigCaptureSourceConfiguration *)self manualFramingDefaultZoomFactor];
      [v4 setManualFramingDefaultZoomFactor:?];
      [(FigCaptureSourceConfiguration *)self gazeSelectionEnabled];
      [OUTLINED_FUNCTION_17() setGazeSelectionEnabled:?];
      [(FigCaptureSourceConfiguration *)self isDockedTrackingEnabled];
      [OUTLINED_FUNCTION_17() setDockedTrackingEnabled:?];
      [(FigCaptureSourceConfiguration *)self clientExpectsCameraMountedInLandscapeOrientation];
      [OUTLINED_FUNCTION_17() setClientExpectsCameraMountedInLandscapeOrientation:?];
      [(FigCaptureSourceConfiguration *)self isCinematicVideoCaptureEnabled];
      [OUTLINED_FUNCTION_17() setCinematicVideoCaptureEnabled:?];
      [(FigCaptureSourceConfiguration *)self simulatedAperture];
      [v4 setSimulatedAperture:?];
      [(FigCaptureSourceConfiguration *)self outputAspectRatio];
      [OUTLINED_FUNCTION_17() setOutputAspectRatio:?];
      [(FigCaptureSourceConfiguration *)self outputAspectRatioRequestID];
      [OUTLINED_FUNCTION_17() setOutputAspectRatioRequestID:?];
      [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionEnabled];
      [OUTLINED_FUNCTION_17() setLensSmudgeDetectionEnabled:?];
      [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionInterval];
      v9 = v7;
      v10 = v8;
      [v4 setLensSmudgeDetectionInterval:&v9];
      [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerXPCObject];
      [OUTLINED_FUNCTION_17() setSensitiveContentAnalyzerXPCObject:?];
      *(v4 + 352) = [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzer];
      [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerEnabled];
      [OUTLINED_FUNCTION_17() setSensitiveContentAnalyzerEnabled:?];
    }

    else if ([(FigCaptureSourceConfiguration *)self sourceType]== 2)
    {
      [(FigCaptureSourceConfiguration *)self clientOSVersionSupportsDecoupledIO];
      [OUTLINED_FUNCTION_17() setClientOSVersionSupportsDecoupledIO:?];
      [(FigCaptureSourceConfiguration *)self clientAudioClockDeviceUID];
      [OUTLINED_FUNCTION_17() setClientAudioClockDeviceUID:?];
      [(FigCaptureSourceConfiguration *)self preferredIOBufferDuration];
      [OUTLINED_FUNCTION_17() setPreferredIOBufferDuration:?];
      [(FigCaptureSourceConfiguration *)self remoteIOOutputFormat];
      [OUTLINED_FUNCTION_17() setRemoteIOOutputFormat:?];
    }
  }

  return v4;
}

- (uint64_t)initWithXPCEncoding:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithXPCEncoding:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithXPCEncoding:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithXPCEncoding:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)isEqual:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = [-[FigCaptureSourceConfiguration _sourceAttributes](a1) objectForKeyedSubscript:@"UniqueID"];
  if (a2)
  {
    v4 = [-[FigCaptureSourceConfiguration _sourceAttributes](a2) objectForKeyedSubscript:@"UniqueID"];
  }

  else
  {
    v4 = 0;
  }

  return [v3 isEqual:v4];
}

@end
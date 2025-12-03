@interface FigCaptureSourceConfiguration
+ (id)stringForSourcePosition:(int)position;
+ (int)sourceTypeForString:(id)string;
- ($273FE01EDA4852E8FFB0AF95686D18CC)externalSyncFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)lockedFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)pulseGeneratorFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)requiredMaxFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)requiredMinFrameRate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lensSmudgeDetectionInterval;
- (BOOL)bravoShiftMitigationEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)proResRawCaptureEnabled;
- (CGSize)normalizedNonDestructiveCropSize;
- (FigCaptureSourceConfiguration)initWithSource:(OpaqueFigCaptureSource *)source;
- (FigCaptureSourceConfiguration)initWithSourceType:(int)type;
- (FigCaptureSourceConfiguration)initWithXPCEncoding:(id)encoding;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (int)sourceDeviceType;
- (int)sourcePosition;
- (int)sourceType;
- (uint64_t)_sourceAttributes;
- (uint64_t)_sourceToken;
- (uint64_t)description;
- (void)dealloc;
- (void)setLensSmudgeDetectionInterval:(id *)interval;
- (void)setMaxExposureDurationClientOverride:(id *)override;
@end

@implementation FigCaptureSourceConfiguration

- (BOOL)bravoShiftMitigationEnabled
{
  IntAttribute = FigCaptureSourceGetIntAttribute([(FigCaptureSourceConfiguration *)self source], @"DeviceType", 0);
  v4 = (IntAttribute > 9) | (0xEFu >> IntAttribute);
  spatialOverCaptureEnabled = [(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled];
  [(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)self requiredFormat] maxContinuousZoomFactorForDepthDataDelivery];
  LOBYTE(v7) = v4 ^ 1;
  if ((v4 & 1) == 0 && !spatialOverCaptureEnabled)
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
  requiredFormat = [self requiredFormat];
  v5 = MEMORY[0x1E696AD60];
  v6 = +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", [self sourceDeviceType]);
  v7 = +[FigCaptureSourceConfiguration stringForSourcePosition:](FigCaptureSourceConfiguration, "stringForSourcePosition:", [self sourcePosition]);
  [requiredFormat format];
  v8 = [v5 stringWithFormat:@"SRC:%@ %@ %@/%dx%d", v6, v7, BWStringForOSType(), objc_msgSend(requiredFormat, "dimensions"), objc_msgSend(requiredFormat, "dimensions") >> 32];
  if (FigCaptureFrameRateIsValidRational(*(self + 176), *(self + 184)))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(locked:%@)", FigCaptureFrameRateAsString(*(self + 176), *(self + 184))];
  }

  else
  {
    v9 = &stru_1F216A3D0;
  }

  if (FigCaptureFrameRateIsValidRational(*(self + 188), *(self + 196)))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(externalSync:%@)", FigCaptureFrameRateAsString(*(self + 188), *(self + 196))];
  }

  else
  {
    v10 = &stru_1F216A3D0;
  }

  requiredMinFrameRate = [self requiredMinFrameRate];
  v13 = FigCaptureFrameRateAsString(requiredMinFrameRate, v12);
  requiredMaxFrameRate = [self requiredMaxFrameRate];
  v16 = FigCaptureFrameRateAsString(requiredMaxFrameRate, v15);
  [self maxFrameRateClientOverride];
  v18 = v17;
  [self videoZoomFactor];
  [v8 appendFormat:@", %@-%@(max:%.0f)%@%@, Z:%.2f, ICM:%d", v13, v16, *&v18, v9, v10, v19, objc_msgSend(self, "imageControlMode")];
  if ([objc_msgSend(self "fallbackPrimaryConstituentDeviceTypes")])
  {
    [v8 appendFormat:@", FallbackDeviceTypes:"];
    if ([objc_msgSend(self "fallbackPrimaryConstituentDeviceTypes")])
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

        [v8 appendFormat:@"%s%d", v21, objc_msgSend(objc_msgSend(objc_msgSend(self, "fallbackPrimaryConstituentDeviceTypes"), "objectAtIndexedSubscript:", v20++), "intValue")];
      }

      while ([objc_msgSend(self "fallbackPrimaryConstituentDeviceTypes")] > v20);
    }
  }

  [self maxGainClientOverride];
  if (v22 > 0.0)
  {
    [self maxGainClientOverride];
    [v8 appendFormat:@", MaxGain: %.0f", v23];
  }

  if (*(self + 136))
  {
    [v8 appendFormat:@", (FD E:%d B:%d S:%d)", objc_msgSend(objc_msgSend(objc_msgSend(self, "faceDetectionConfiguration"), "objectForKeyedSubscript:", @"EyeDetectionEnabled", "BOOLValue"), objc_msgSend(objc_msgSend(objc_msgSend(self, "faceDetectionConfiguration"), "objectForKeyedSubscript:", @"BlinkDetectionEnabled", "BOOLValue"), objc_msgSend(objc_msgSend(objc_msgSend(self, "faceDetectionConfiguration"), "objectForKeyedSubscript:", @"SmileDetectionEnabled", "BOOLValue")];
  }

  if (*(self + 144) == 1)
  {
    [v8 appendString:{@", QHDR/SHDR:1"}];
  }

  if (*(self + 145) == 1)
  {
    [v8 appendString:{@", HR:1"}];
  }

  if (*(self + 148))
  {
    [v8 appendFormat:@", ColorSpace:%d", *(self + 148)];
  }

  if (*(self + 152) == 1)
  {
    [*(self + 160) format];
    [v8 appendFormat:@", Depth:1 %@/%dx%d", BWStringForOSType(), objc_msgSend(*(self + 160), "dimensions"), objc_msgSend(*(self + 160), "dimensions") >> 32];
  }

  if (*(self + 172) == 1)
  {
    [v8 appendString:{@", LowLight:1"}];
  }

  v24 = *(self + 201);
  if (*(self + 200) == 1 || (v24 & 1) != 0)
  {
    [v8 appendFormat:@", SpatialOverCapture:%d, NonDestructiveCropEnabled:%d", *(self + 200), v24];
  }

  v25 = *(self + 216);
  if (*(self + 208) > 0.0 || v25 > 0.0)
  {
    [v8 appendFormat:@", NormalizedNonDestructiveCropSize:%fx%f", *(self + 208), *&v25];
  }

  if (*(self + 224) == 1)
  {
    [v8 appendString:{@", GDC:1"}];
  }

  if (*(self + 225) == 1)
  {
    [v8 appendString:{@", VFR:1"}];
  }

  v26 = *(self + 228);
  if (v26 >= 2)
  {
    [v8 appendFormat:@", StabilizationStrength:%@", FigCaptureVideoStabilizationStrengthToString(v26)];
  }

  if (*(self + 232) == 1)
  {
    [v8 appendFormat:@", CinematicFraming:1(CtrlMode:%d)", *(self + 236)];
  }

  if (*(self + 242) == 1)
  {
    [v8 appendString:{@", BackgroundBlur:1"}];
  }

  if (*(self + 257) == 1)
  {
    [v8 appendString:{@", DeskCam:1"}];
  }

  if (*(self + 244) == 1)
  {
    [v8 appendString:{@", studioLighting:1"}];
  }

  if (*(self + 246) == 1)
  {
    [v8 appendString:{@", reactionEffects:1"}];
  }

  if (*(self + 248) == 1)
  {
    [v8 appendString:{@", backgroundReplacement:1"}];
  }

  if (*(self + 268) == 1)
  {
    [v8 appendString:{@", MF:1"}];
    [v8 appendFormat:@", PAngles x:%f, y:%f, DZF:%.3f", *(self + 272), *(self + 276), *(self + 280)];
  }

  if (*(self + 289) == 1)
  {
    [v8 appendString:{@", DTE:1"}];
  }

  if (*(self + 288) == 1)
  {
    [v8 appendFormat:@", GS:%d", 1];
  }

  [v8 appendFormat:@", FaceDrivenAEAFMode:%d", *(self + 252)];
  [v8 appendFormat:@", FaceDrivenAEAFEnabledByDefault:%d", *(self + 256)];
  if (*(self + 290) == 1)
  {
    [v8 appendFormat:@", cameraMountedInLandscape: YES"];
  }

  if (*(self + 291) == 1)
  {
    [v8 appendFormat:@", CV:1(SA:%.2f)", *(self + 292)];
  }

  [v8 appendFormat:@", Output Aspect Ratio: %d", *(self + 300)];
  result = [v8 appendFormat:@", Output Aspect Ratio RequestID: %lld", *(self + 304)];
  if (*(self + 312) == 1)
  {
    result = [v8 appendFormat:@", LensSmudgeDetection:1"];
  }

  if (*(self + 344))
  {
    result = [v8 appendFormat:@", SCA:%d", *(self + 360)];
  }

  *a2 = v8;
  return result;
}

- (uint64_t)_sourceToken
{
  if (!self)
  {
    return 0;
  }

  v6 = 0;
  v1 = *(self + 16);
  if (v1 && (v2 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0)
  {
    v2(v1, @"SourceToken", *MEMORY[0x1E695E480], &v6);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  intValue = [v3 intValue];

  return intValue;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(FigCaptureSourceConfiguration *)self sourceID];
  FigXPCMessageSetCFString();
  _sourceToken = [(FigCaptureSourceConfiguration *)self _sourceToken];
  xpc_dictionary_set_int64(v3, "sourceToken", _sourceToken);
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
      fallbackPrimaryConstituentDeviceTypes = [(FigCaptureSourceConfiguration *)self fallbackPrimaryConstituentDeviceTypes];
      v16 = [(NSArray *)fallbackPrimaryConstituentDeviceTypes countByEnumeratingWithState:&v44 objects:v43 count:16];
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
              objc_enumerationMutation(fallbackPrimaryConstituentDeviceTypes);
            }

            v20 = xpc_int64_create([*(*(&v44 + 1) + 8 * i) intValue]);
            xpc_array_append_value(v14, v20);
            xpc_release(v20);
          }

          v17 = [(NSArray *)fallbackPrimaryConstituentDeviceTypes countByEnumeratingWithState:&v44 objects:v43 count:16];
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
      depthDataFormat = [(FigCaptureSourceConfiguration *)self depthDataFormat];
      if (depthDataFormat)
      {
        xpc_dictionary_set_string(v3, "depthDataFormatUniqueID", [(NSString *)[(FigCaptureSourceFormat *)depthDataFormat uniqueID] UTF8String]);
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

      lockedFrameRate = [(FigCaptureSourceConfiguration *)self lockedFrameRate];
      if (FigCaptureFrameRateIsInvalid(lockedFrameRate, v29))
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
      externalSyncFrameRate = [(FigCaptureSourceConfiguration *)self externalSyncFrameRate];
      if (FigCaptureFrameRateIsInvalid(externalSyncFrameRate, v34))
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
  format = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)self requiredFormat] format];

  return FigCapturePixelFormatIsPackedBayerRaw(format);
}

- (FigCaptureSourceConfiguration)initWithSource:(OpaqueFigCaptureSource *)source
{
  v7.receiver = self;
  v7.super_class = FigCaptureSourceConfiguration;
  v4 = [(FigCaptureSourceConfiguration *)&v7 init];
  if (v4)
  {
    if (source)
    {
      v5 = CFRetain(source);
    }

    else
    {
      v5 = 0;
    }

    v4->_source = v5;
  }

  return v4;
}

- (FigCaptureSourceConfiguration)initWithSourceType:(int)type
{
  v5.receiver = self;
  v5.super_class = FigCaptureSourceConfiguration;
  result = [(FigCaptureSourceConfiguration *)&v5 init];
  if (result)
  {
    result->_sourceType = type;
  }

  return result;
}

- (FigCaptureSourceConfiguration)initWithXPCEncoding:(id)encoding
{
  if (!encoding)
  {

    return 0;
  }

  v50.receiver = self;
  v50.super_class = FigCaptureSourceConfiguration;
  v4 = [(FigCaptureSourceConfiguration *)&v50 init];
  if (v4)
  {
    FigXPCMessageCopyCFString();
    *(v4 + 6) = xpc_dictionary_get_int64(encoding, "sourceType");
    int64 = xpc_dictionary_get_int64(encoding, "sourceToken");
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
      string = xpc_dictionary_get_string(encoding, "requiredFormatUniqueID");
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
            data = xpc_dictionary_get_data(encoding, "requiredMaxFrameRate", &length);
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
            v23 = xpc_dictionary_get_data(encoding, "requiredMinFrameRate", &length);
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

            v25 = xpc_dictionary_get_double(encoding, "maxFrameRateClientOverrideKey");
            *(v4 + 18) = v25;
            v26 = xpc_dictionary_get_double(encoding, "maxGainClientOverride");
            *(v4 + 19) = v26;
            v27 = xpc_dictionary_get_double(encoding, "videoZoomFactor");
            *(v4 + 21) = v27;
            array = [MEMORY[0x1E695DF70] array];
            value = xpc_dictionary_get_value(encoding, "fallbackPrimaryConstituentDeviceTypes");
            if (xpc_array_get_count(value))
            {
              v30 = 0;
              do
              {
                [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", xpc_array_get_int64(value, v30++))}];
              }

              while (xpc_array_get_count(value) > v30);
            }

            *(v4 + 12) = [array copy];
            v31 = xpc_dictionary_get_double(encoding, "videoZoomRampAcceleration");
            *(v4 + 22) = v31;
            *(v4 + 26) = xpc_dictionary_get_int64(encoding, "imageControlMode");
            v4[108] = xpc_dictionary_get_BOOL(encoding, "applyMaxExposureDurationFrameworkOverrideWhenAvailable");
            FigXPCMessageGetCMTime();
            v4[144] = xpc_dictionary_get_BOOL(encoding, "sensorHDREnabled");
            v4[145] = xpc_dictionary_get_BOOL(encoding, "highlightRecoveryEnabled");
            *(v4 + 37) = xpc_dictionary_get_int64(encoding, "colorSpace");
            v4[152] = xpc_dictionary_get_BOOL(encoding, "depthDataDeliveryEnabled");
            FigXPCMessageCopyCFDictionary();
            v32 = xpc_dictionary_get_string(encoding, "depthDataFormatUniqueID");
            if (v32 && (v33 = fcsc_findFormatByUniqueID(v32, [*(v4 + 5) supportedDepthDataFormats]), *(v4 + 20) = v33, !v33))
            {
              [FigCaptureSourceConfiguration initWithXPCEncoding:];
            }

            else
            {
              v34 = xpc_dictionary_get_double(encoding, "depthDataMaxFrameRate");
              *(v4 + 42) = v34;
              v4[172] = xpc_dictionary_get_BOOL(encoding, "lowLightVideoCaptureEnabled");
              v4[200] = xpc_dictionary_get_BOOL(encoding, "spatialOverCaptureEnabled");
              v4[201] = xpc_dictionary_get_BOOL(encoding, "nonDestructiveCropEnabled");
              v35 = xpc_dictionary_get_double(encoding, "normalizedNonDestructiveCropSizeWidth");
              v36 = xpc_dictionary_get_double(encoding, "normalizedNonDestructiveCropSizeHeight");
              if (v35 > 0.0 && v36 > 0.0)
              {
                *(v4 + 26) = v35;
                *(v4 + 27) = v36;
              }

              v4[224] = xpc_dictionary_get_BOOL(encoding, "geometricDistortionCorrectionEnabled");
              v37 = xpc_dictionary_get_BOOL(encoding, "variableFrameRateVideoCaptureEnabled");
              *(v4 + 22) = 0;
              v4[225] = v37;
              *(v4 + 46) = 0;
              length = 0;
              v38 = xpc_dictionary_get_data(encoding, "lockedFrameRate", &length);
              if (length == 12)
              {
                v39 = *v38;
                *(v4 + 46) = v38[2];
                *(v4 + 22) = v39;
              }

              *(v4 + 188) = 0;
              *(v4 + 49) = 0;
              v48 = 0;
              v40 = xpc_dictionary_get_data(encoding, "externalSyncFrameRate", &v48);
              if (v48 == 12)
              {
                v41 = *v40;
                *(v4 + 49) = v40[2];
                *(v4 + 188) = v41;
              }

              *(v4 + 57) = xpc_dictionary_get_int64(encoding, "videoStabilizationStrength");
              v4[232] = xpc_dictionary_get_BOOL(encoding, "cinematicFramingEnabled");
              v4[233] = xpc_dictionary_get_BOOL(encoding, "cinematicFramingSupported");
              *(v4 + 59) = xpc_dictionary_get_int64(encoding, "cinematicFramingControlMode");
              v4[240] = xpc_dictionary_get_BOOL(encoding, "smartFramingEnabled");
              v4[241] = xpc_dictionary_get_BOOL(encoding, "backgroundBlurSupported");
              v4[242] = xpc_dictionary_get_BOOL(encoding, "backgroundBlurEnabled");
              v4[243] = xpc_dictionary_get_BOOL(encoding, "studioLightingSupported");
              v4[244] = xpc_dictionary_get_BOOL(encoding, "studioLightingEnabled");
              v4[245] = xpc_dictionary_get_BOOL(encoding, "reactionEffectsSupported");
              v4[246] = xpc_dictionary_get_BOOL(encoding, "reactionEffectsEnabled");
              v4[247] = xpc_dictionary_get_BOOL(encoding, "backgroundReplacementSupported");
              v4[248] = xpc_dictionary_get_BOOL(encoding, "backgroundReplacementEnabled");
              *(v4 + 63) = xpc_dictionary_get_int64(encoding, "faceDrivenAEAFMode");
              v4[256] = xpc_dictionary_get_BOOL(encoding, "faceDrivenAEAFEnabledByDefault");
              v4[257] = xpc_dictionary_get_BOOL(encoding, "deskCamEnabled");
              v4[268] = xpc_dictionary_get_BOOL(encoding, "manualFramingEnabled");
              v42 = xpc_dictionary_get_double(encoding, "manualFramingPanningAngleX");
              *(v4 + 68) = v42;
              v43 = xpc_dictionary_get_double(encoding, "manualFramingPanningAngleY");
              *(v4 + 69) = v43;
              *(v4 + 35) = xpc_dictionary_get_double(encoding, "manualFramingDefaultZoomFactor");
              v4[288] = xpc_dictionary_get_BOOL(encoding, "gazeSelectionEnabled");
              v4[289] = xpc_dictionary_get_BOOL(encoding, "dockedTrackingEnabled");
              v4[290] = xpc_dictionary_get_BOOL(encoding, "clientExpectsCameraMountedInLandscapeOrientation");
              v4[291] = xpc_dictionary_get_BOOL(encoding, "cinematicVideoCaptureEnabled");
              v44 = xpc_dictionary_get_double(encoding, "simulatedAperture");
              *(v4 + 73) = v44;
              *(v4 + 75) = xpc_dictionary_get_int64(encoding, "outputAspectRatio");
              *(v4 + 38) = xpc_dictionary_get_int64(encoding, "outputAspectRatioRequestID");
              v4[312] = xpc_dictionary_get_BOOL(encoding, "lensSmudgeDetectionEnabled");
              FigXPCMessageGetCMTime();
              v45 = xpc_dictionary_get_value(encoding, "sensitiveContentAnalyzerXPCObject");
              *(v4 + 43) = v45;
              if (!v45 || (v47 = 0, *(v4 + 44) = [objc_alloc(getSCVideoStreamAnalyzerClass()) initWithXPCObject:*(v4 + 43) error:&v47], objc_msgSend(objc_msgSend(v47, "domain"), "isEqualToString:", getSCAErrorDomain())) && objc_msgSend(v47, "code") == 20 || *(v4 + 44))
              {
                v4[360] = xpc_dictionary_get_BOOL(encoding, "sensitiveContentAnalyzerEnabled");
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
      v4[361] = xpc_dictionary_get_BOOL(encoding, "clientOSVersionSupportsDecoupledIO");
      v15 = xpc_dictionary_get_string(encoding, "clientAudioClockDeviceUID");
      if (v15)
      {
        *(v4 + 46) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
      }

      *(v4 + 47) = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:{xpc_dictionary_get_double(encoding, "preferredIOBufferDuration")}];
      length = 0;
      v16 = xpc_dictionary_get_data(encoding, "remoteIOOutputFormat", &length);
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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

    sourceID = [(FigCaptureSourceConfiguration *)self sourceID];
    if (sourceID == [equal sourceID] || (v10 = -[NSString isEqual:](-[FigCaptureSourceConfiguration sourceID](self, "sourceID"), "isEqual:", objc_msgSend(equal, "sourceID"))) != 0)
    {
      if (self->_source && ([(FigCaptureSourceConfiguration *)self isEqual:equal]& 1) == 0)
      {
        goto LABEL_76;
      }

      _sourceToken = [(FigCaptureSourceConfiguration *)self _sourceToken];
      if (_sourceToken != [(FigCaptureSourceConfiguration *)equal _sourceToken])
      {
        goto LABEL_76;
      }

      if ([(FigCaptureSourceConfiguration *)self sourceType]!= 1)
      {
        goto LABEL_78;
      }

      if (!equal)
      {
        [(FigCaptureSourceConfiguration *)self sourceType];
LABEL_87:
        LOBYTE(v10) = 1;
        return v10;
      }

      if ([equal sourceType] == 1)
      {
        requiredFormat = [(FigCaptureSourceConfiguration *)self requiredFormat];
        if (requiredFormat == [equal requiredFormat] || (v10 = -[FigCaptureSourceFormat isEqual:](-[FigCaptureSourceConfiguration requiredFormat](self, "requiredFormat"), "isEqual:", objc_msgSend(equal, "requiredFormat"))) != 0)
        {
          requiredMaxFrameRate = [(FigCaptureSourceConfiguration *)self requiredMaxFrameRate];
          v15 = v14;
          requiredMaxFrameRate2 = [equal requiredMaxFrameRate];
          if (FigCaptureFrameRateNotEqual(requiredMaxFrameRate, v15, requiredMaxFrameRate2, v17))
          {
            goto LABEL_76;
          }

          requiredMinFrameRate = [(FigCaptureSourceConfiguration *)self requiredMinFrameRate];
          v20 = v19;
          requiredMinFrameRate2 = [equal requiredMinFrameRate];
          if (FigCaptureFrameRateNotEqual(requiredMinFrameRate, v20, requiredMinFrameRate2, v22))
          {
            goto LABEL_76;
          }

          [(FigCaptureSourceConfiguration *)self maxFrameRateClientOverride];
          v24 = v23;
          [equal maxFrameRateClientOverride];
          if (v24 != v25)
          {
            goto LABEL_76;
          }

          [(FigCaptureSourceConfiguration *)self maxGainClientOverride];
          v27 = v26;
          [equal maxGainClientOverride];
          if (v27 != v28)
          {
            goto LABEL_76;
          }

          [(FigCaptureSourceConfiguration *)self videoZoomFactor];
          v30 = v29;
          [equal videoZoomFactor];
          if (v30 != v31)
          {
            goto LABEL_76;
          }

          if (!-[FigCaptureSourceConfiguration fallbackPrimaryConstituentDeviceTypes](self, "fallbackPrimaryConstituentDeviceTypes") && ![equal fallbackPrimaryConstituentDeviceTypes] || (v10 = -[NSArray isEqualToArray:](-[FigCaptureSourceConfiguration fallbackPrimaryConstituentDeviceTypes](self, "fallbackPrimaryConstituentDeviceTypes"), "isEqualToArray:", objc_msgSend(equal, "fallbackPrimaryConstituentDeviceTypes"))) != 0)
          {
            [(FigCaptureSourceConfiguration *)self videoZoomRampAcceleration];
            v33 = v32;
            [equal videoZoomRampAcceleration];
            if (v33 != v34)
            {
              goto LABEL_76;
            }

            imageControlMode = [(FigCaptureSourceConfiguration *)self imageControlMode];
            if (imageControlMode != [equal imageControlMode])
            {
              goto LABEL_76;
            }

            applyMaxExposureDurationFrameworkOverrideWhenAvailable = [(FigCaptureSourceConfiguration *)self applyMaxExposureDurationFrameworkOverrideWhenAvailable];
            if (applyMaxExposureDurationFrameworkOverrideWhenAvailable != [equal applyMaxExposureDurationFrameworkOverrideWhenAvailable])
            {
              goto LABEL_76;
            }

            [(FigCaptureSourceConfiguration *)self maxExposureDurationClientOverride];
            [equal maxExposureDurationClientOverride];
            if (CMTimeCompare(&time1, &v117))
            {
              goto LABEL_76;
            }

            faceDetectionConfiguration = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
            if (faceDetectionConfiguration != [equal faceDetectionConfiguration] && (-[NSDictionary isEqual:](-[FigCaptureSourceConfiguration faceDetectionConfiguration](self, "faceDetectionConfiguration"), "isEqual:", objc_msgSend(equal, "faceDetectionConfiguration")) & 1) == 0)
            {
              faceDetectionConfiguration2 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
              v108 = *off_1E798AD38;
              v109 = [-[NSDictionary objectForKeyedSubscript:](faceDetectionConfiguration2 objectForKeyedSubscript:{*off_1E798AD38), "BOOLValue"}];
              if (v109 != [objc_msgSend(objc_msgSend(equal "faceDetectionConfiguration")])
              {
                goto LABEL_76;
              }

              faceDetectionConfiguration3 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
              v111 = *off_1E798AD30;
              v112 = [-[NSDictionary objectForKeyedSubscript:](faceDetectionConfiguration3 objectForKeyedSubscript:{*off_1E798AD30), "BOOLValue"}];
              if (v112 != [objc_msgSend(objc_msgSend(equal "faceDetectionConfiguration")])
              {
                goto LABEL_76;
              }

              faceDetectionConfiguration4 = [(FigCaptureSourceConfiguration *)self faceDetectionConfiguration];
              v114 = *off_1E798AD48;
              v115 = [-[NSDictionary objectForKeyedSubscript:](faceDetectionConfiguration4 objectForKeyedSubscript:{*off_1E798AD48), "BOOLValue"}];
              if (v115 != [objc_msgSend(objc_msgSend(equal "faceDetectionConfiguration")])
              {
                goto LABEL_76;
              }
            }

            sensorHDREnabled = [(FigCaptureSourceConfiguration *)self sensorHDREnabled];
            if (sensorHDREnabled != [equal sensorHDREnabled])
            {
              goto LABEL_76;
            }

            highlightRecoveryEnabled = [(FigCaptureSourceConfiguration *)self highlightRecoveryEnabled];
            if (highlightRecoveryEnabled != [equal highlightRecoveryEnabled])
            {
              goto LABEL_76;
            }

            colorSpace = [(FigCaptureSourceConfiguration *)self colorSpace];
            if (colorSpace != [equal colorSpace])
            {
              goto LABEL_76;
            }

            depthDataDeliveryEnabled = [(FigCaptureSourceConfiguration *)self depthDataDeliveryEnabled];
            if (depthDataDeliveryEnabled != [equal depthDataDeliveryEnabled])
            {
              goto LABEL_76;
            }

            depthDataFormat = [(FigCaptureSourceConfiguration *)self depthDataFormat];
            if (depthDataFormat == [equal depthDataFormat] || (v10 = -[FigCaptureSourceFormat isEqual:](-[FigCaptureSourceConfiguration depthDataFormat](self, "depthDataFormat"), "isEqual:", objc_msgSend(equal, "depthDataFormat"))) != 0)
            {
              [(FigCaptureSourceConfiguration *)self depthDataMaxFrameRate];
              v44 = v43;
              [equal depthDataMaxFrameRate];
              if (v44 == v45)
              {
                lowLightVideoCaptureEnabled = [(FigCaptureSourceConfiguration *)self lowLightVideoCaptureEnabled];
                if (lowLightVideoCaptureEnabled == [equal lowLightVideoCaptureEnabled])
                {
                  spatialOverCaptureEnabled = [(FigCaptureSourceConfiguration *)self spatialOverCaptureEnabled];
                  if (spatialOverCaptureEnabled == [equal spatialOverCaptureEnabled])
                  {
                    nonDestructiveCropEnabled = [(FigCaptureSourceConfiguration *)self nonDestructiveCropEnabled];
                    if (nonDestructiveCropEnabled == [equal nonDestructiveCropEnabled])
                    {
                      [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
                      v50 = v49;
                      [equal normalizedNonDestructiveCropSize];
                      if (v50 == v51)
                      {
                        [(FigCaptureSourceConfiguration *)self normalizedNonDestructiveCropSize];
                        v53 = v52;
                        [equal normalizedNonDestructiveCropSize];
                        if (v53 == v54)
                        {
                          geometricDistortionCorrectionEnabled = [(FigCaptureSourceConfiguration *)self geometricDistortionCorrectionEnabled];
                          if (geometricDistortionCorrectionEnabled == [equal geometricDistortionCorrectionEnabled])
                          {
                            variableFrameRateVideoCaptureEnabled = [(FigCaptureSourceConfiguration *)self variableFrameRateVideoCaptureEnabled];
                            if (variableFrameRateVideoCaptureEnabled == [equal variableFrameRateVideoCaptureEnabled])
                            {
                              lockedFrameRate = [(FigCaptureSourceConfiguration *)self lockedFrameRate];
                              v59 = v58;
                              lockedFrameRate2 = [equal lockedFrameRate];
                              if (!FigCaptureFrameRateNotEqual(lockedFrameRate, v59, lockedFrameRate2, v61))
                              {
                                externalSyncFrameRate = [(FigCaptureSourceConfiguration *)self externalSyncFrameRate];
                                v64 = v63;
                                externalSyncFrameRate2 = [equal externalSyncFrameRate];
                                if (!FigCaptureFrameRateNotEqual(externalSyncFrameRate, v64, externalSyncFrameRate2, v66))
                                {
                                  videoStabilizationStrength = [(FigCaptureSourceConfiguration *)self videoStabilizationStrength];
                                  if (videoStabilizationStrength == [equal videoStabilizationStrength])
                                  {
                                    cinematicFramingEnabled = [(FigCaptureSourceConfiguration *)self cinematicFramingEnabled];
                                    if (cinematicFramingEnabled == [equal cinematicFramingEnabled])
                                    {
                                      isCinematicFramingSupported = [(FigCaptureSourceConfiguration *)self isCinematicFramingSupported];
                                      if (isCinematicFramingSupported == [equal isCinematicFramingSupported])
                                      {
                                        cinematicFramingControlMode = [(FigCaptureSourceConfiguration *)self cinematicFramingControlMode];
                                        if (cinematicFramingControlMode == [equal cinematicFramingControlMode])
                                        {
                                          isSmartFramingEnabled = [(FigCaptureSourceConfiguration *)self isSmartFramingEnabled];
                                          if (isSmartFramingEnabled == [equal isSmartFramingEnabled])
                                          {
                                            isBackgroundBlurSupported = [(FigCaptureSourceConfiguration *)self isBackgroundBlurSupported];
                                            if (isBackgroundBlurSupported == [equal isBackgroundBlurSupported])
                                            {
                                              backgroundBlurEnabled = [(FigCaptureSourceConfiguration *)self backgroundBlurEnabled];
                                              if (backgroundBlurEnabled == [equal backgroundBlurEnabled])
                                              {
                                                isStudioLightingSupported = [(FigCaptureSourceConfiguration *)self isStudioLightingSupported];
                                                if (isStudioLightingSupported == [equal isStudioLightingSupported])
                                                {
                                                  studioLightingEnabled = [(FigCaptureSourceConfiguration *)self studioLightingEnabled];
                                                  if (studioLightingEnabled == [equal studioLightingEnabled])
                                                  {
                                                    reactionEffectsSupported = [(FigCaptureSourceConfiguration *)self reactionEffectsSupported];
                                                    if (reactionEffectsSupported == [equal reactionEffectsSupported])
                                                    {
                                                      reactionEffectsEnabled = [(FigCaptureSourceConfiguration *)self reactionEffectsEnabled];
                                                      if (reactionEffectsEnabled == [equal reactionEffectsEnabled])
                                                      {
                                                        isBackgroundReplacementSupported = [(FigCaptureSourceConfiguration *)self isBackgroundReplacementSupported];
                                                        if (isBackgroundReplacementSupported == [equal isBackgroundReplacementSupported])
                                                        {
                                                          backgroundReplacementEnabled = [(FigCaptureSourceConfiguration *)self backgroundReplacementEnabled];
                                                          if (backgroundReplacementEnabled == [equal backgroundReplacementEnabled])
                                                          {
                                                            faceDrivenAEAFMode = [(FigCaptureSourceConfiguration *)self faceDrivenAEAFMode];
                                                            if (faceDrivenAEAFMode == [equal faceDrivenAEAFMode])
                                                            {
                                                              faceDrivenAEAFEnabledByDefault = [(FigCaptureSourceConfiguration *)self faceDrivenAEAFEnabledByDefault];
                                                              if (faceDrivenAEAFEnabledByDefault == [equal faceDrivenAEAFEnabledByDefault])
                                                              {
                                                                deskCamEnabled = [(FigCaptureSourceConfiguration *)self deskCamEnabled];
                                                                if (deskCamEnabled == [equal deskCamEnabled])
                                                                {
                                                                  manualCinematicFramingEnabled = [(FigCaptureSourceConfiguration *)self manualCinematicFramingEnabled];
                                                                  if (manualCinematicFramingEnabled == [equal manualCinematicFramingEnabled])
                                                                  {
                                                                    [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleX];
                                                                    v85 = v84;
                                                                    [equal manualFramingPanningAngleX];
                                                                    if (v85 == v86)
                                                                    {
                                                                      [(FigCaptureSourceConfiguration *)self manualFramingPanningAngleY];
                                                                      v88 = v87;
                                                                      [equal manualFramingPanningAngleY];
                                                                      if (v88 == v89)
                                                                      {
                                                                        gazeSelectionEnabled = [(FigCaptureSourceConfiguration *)self gazeSelectionEnabled];
                                                                        if (gazeSelectionEnabled == [equal gazeSelectionEnabled])
                                                                        {
                                                                          isDockedTrackingEnabled = [(FigCaptureSourceConfiguration *)self isDockedTrackingEnabled];
                                                                          if (isDockedTrackingEnabled == [equal isDockedTrackingEnabled])
                                                                          {
                                                                            clientExpectsCameraMountedInLandscapeOrientation = [(FigCaptureSourceConfiguration *)self clientExpectsCameraMountedInLandscapeOrientation];
                                                                            if (clientExpectsCameraMountedInLandscapeOrientation == [equal clientExpectsCameraMountedInLandscapeOrientation])
                                                                            {
                                                                              isCinematicVideoCaptureEnabled = [(FigCaptureSourceConfiguration *)self isCinematicVideoCaptureEnabled];
                                                                              if (isCinematicVideoCaptureEnabled == [equal isCinematicVideoCaptureEnabled])
                                                                              {
                                                                                [(FigCaptureSourceConfiguration *)self simulatedAperture];
                                                                                v95 = v94;
                                                                                [equal simulatedAperture];
                                                                                if (v95 == v96)
                                                                                {
                                                                                  outputAspectRatio = [(FigCaptureSourceConfiguration *)self outputAspectRatio];
                                                                                  if (outputAspectRatio == [equal outputAspectRatio])
                                                                                  {
                                                                                    outputAspectRatioRequestID = [(FigCaptureSourceConfiguration *)self outputAspectRatioRequestID];
                                                                                    if (outputAspectRatioRequestID == [equal outputAspectRatioRequestID])
                                                                                    {
                                                                                      lensSmudgeDetectionEnabled = [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionEnabled];
                                                                                      if (lensSmudgeDetectionEnabled == [equal lensSmudgeDetectionEnabled])
                                                                                      {
                                                                                        [(FigCaptureSourceConfiguration *)self lensSmudgeDetectionInterval];
                                                                                        [equal lensSmudgeDetectionInterval];
                                                                                        if (!CMTimeCompare(&time1, &v117))
                                                                                        {
                                                                                          v100 = [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerXPCObject]!= 0;
                                                                                          if (v100 != ([equal sensitiveContentAnalyzerXPCObject] == 0))
                                                                                          {
                                                                                            if (![(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerXPCObject])
                                                                                            {
                                                                                              goto LABEL_87;
                                                                                            }

                                                                                            sensitiveContentAnalyzerEnabled = [(FigCaptureSourceConfiguration *)self sensitiveContentAnalyzerEnabled];
                                                                                            if (sensitiveContentAnalyzerEnabled == [equal sensitiveContentAnalyzerEnabled])
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
        sourceType = [(FigCaptureSourceConfiguration *)self sourceType];
        if (!equal || sourceType != 2 || [equal sourceType] != 2)
        {
          goto LABEL_87;
        }

        clientOSVersionSupportsDecoupledIO = [(FigCaptureSourceConfiguration *)self clientOSVersionSupportsDecoupledIO];
        if (clientOSVersionSupportsDecoupledIO != [equal clientOSVersionSupportsDecoupledIO])
        {
          goto LABEL_76;
        }

        clientAudioClockDeviceUID = [(FigCaptureSourceConfiguration *)self clientAudioClockDeviceUID];
        if (clientAudioClockDeviceUID != [equal clientAudioClockDeviceUID])
        {
          goto LABEL_76;
        }

        preferredIOBufferDuration = [(FigCaptureSourceConfiguration *)self preferredIOBufferDuration];
        if (preferredIOBufferDuration == [equal preferredIOBufferDuration] || (v10 = -[NSNumber isEqual:](-[FigCaptureSourceConfiguration preferredIOBufferDuration](self, "preferredIOBufferDuration"), "isEqual:", objc_msgSend(equal, "preferredIOBufferDuration"))) != 0)
        {
          remoteIOOutputFormat = [(FigCaptureSourceConfiguration *)self remoteIOOutputFormat];
          if (remoteIOOutputFormat == [equal remoteIOOutputFormat])
          {
            goto LABEL_87;
          }

          v10 = -[AVAudioFormat isEqual:](-[FigCaptureSourceConfiguration remoteIOOutputFormat](self, "remoteIOOutputFormat"), "isEqual:", [equal remoteIOOutputFormat]);
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

+ (int)sourceTypeForString:(id)string
{
  v4 = 1;
  while ([string caseInsensitiveCompare:FigCaptureSourceTypeNameMap[v4]])
  {
    if (++v4 == 7)
    {
      LODWORD(v4) = 0;
      return v4;
    }
  }

  return v4;
}

+ (id)stringForSourcePosition:(int)position
{
  if (position > 2)
  {
    return &stru_1F216A3D0;
  }

  else
  {
    return *(&off_1E7999AA8 + position);
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

- (void)setMaxExposureDurationClientOverride:(id *)override
{
  v3 = *&override->var0;
  self->_maxExposureDurationClientOverride.epoch = override->var3;
  *&self->_maxExposureDurationClientOverride.value = v3;
}

- (void)setLensSmudgeDetectionInterval:(id *)interval
{
  v3 = *&interval->var0;
  *&self->_lensSmudgeDetectionInterval.flags = interval->var3;
  *(&self->_lensSmudgeDetectionEnabled + 4) = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(FigCaptureSourceConfiguration *)self sourceID];
  [OUTLINED_FUNCTION_17() setSourceID:?];
  source = [(FigCaptureSourceConfiguration *)self source];
  if (source)
  {
    source = CFRetain(source);
  }

  *(v4 + 16) = source;
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
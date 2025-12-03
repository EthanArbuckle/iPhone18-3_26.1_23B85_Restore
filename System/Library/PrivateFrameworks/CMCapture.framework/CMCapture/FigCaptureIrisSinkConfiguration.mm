@interface FigCaptureIrisSinkConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureIrisSinkConfiguration)initWithCoder:(id)coder;
- (FigCaptureIrisSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setIrisMovieDuration:(id *)duration;
- (void)setIrisMovieVideoFrameDuration:(id *)duration;
@end

@implementation FigCaptureIrisSinkConfiguration

- (id)description
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (self)
  {
    [(FigCaptureIrisSinkConfiguration *)self irisMovieVideoFrameDuration];
  }

  if ([(FigCaptureIrisPreparedSettings *)self->_preparedSettings count])
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@", (SegMattes: %d)", -[FigCaptureIrisPreparedSettings count](self->_preparedSettings, "count")];
  }

  else
  {
    v42 = &stru_1F216A3D0;
  }

  enabledSemanticSegmentationMatteURNs_low = LOBYTE(self->_enabledSemanticSegmentationMatteURNs);
  v39 = BYTE1(self->_enabledSemanticSegmentationMatteURNs);
  v4 = BYTE2(self->_enabledSemanticSegmentationMatteURNs);
  v5 = BYTE3(self->_enabledSemanticSegmentationMatteURNs);
  momentCaptureMovieRecordingEnabled = self->_momentCaptureMovieRecordingEnabled;
  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@", (maxPhotoDims %dx%d)", self->_maxQualityPrioritization, *&self->_deferredProcessingEnabled];
  v7 = BYTE4(self->_enabledSemanticSegmentationMatteURNs);
  v8 = &stru_1F216A3D0;
  if (LOBYTE(self->_maxPhotoDimensions.height) == 1)
  {
    if (BYTE1(self->_maxPhotoDimensions.height))
    {
      v9 = @"(clippingRecovery ON)";
    }

    else
    {
      v9 = &stru_1F216A3D0;
    }

    if (BYTE2(self->_maxPhotoDimensions.height))
    {
      v10 = @"(saturationBoost ON)";
    }

    else
    {
      v10 = &stru_1F216A3D0;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@", (constantColor ON %@%@)", v9, v10];
  }

  v11 = *(&self->_maxPhotoDimensions + 8);
  v40 = v8;
  if (*(&self->_maxPhotoDimensions + 9) == 1)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@", (multiCamClientCompositing ON)"];
  }

  else
  {
    v38 = &stru_1F216A3D0;
  }

  v12 = &stru_1F216A3D0;
  if (self->_constantColorEnabled)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@", (bcRotation ON)"];
  }

  v34 = v12;
  v37 = MEMORY[0x1E696AEC0];
  v44.receiver = self;
  v44.super_class = FigCaptureIrisSinkConfiguration;
  v36 = [(FigCaptureSinkConfiguration *)&v44 description];
  irisMovieCaptureEnabled = [(FigCaptureIrisSinkConfiguration *)self irisMovieCaptureEnabled];
  irisMovieCaptureSuspended = [(FigCaptureIrisSinkConfiguration *)self irisMovieCaptureSuspended];
  preservesIrisMovieCaptureSuspendedOnSessionStop = [(FigCaptureIrisSinkConfiguration *)self preservesIrisMovieCaptureSuspendedOnSessionStop];
  [(FigCaptureIrisSinkConfiguration *)self irisMovieDuration];
  Seconds = CMTimeGetSeconds(&time);
  irisMovieAutoTrimMethod = [(FigCaptureIrisSinkConfiguration *)self irisMovieAutoTrimMethod];
  if (v45)
  {
    v30 = v46 / v45;
  }

  else
  {
    v30 = 0;
  }

  if (v11)
  {
    v14 = @", (ApplyStandardSmartStyleForStillsWhenNoStyleRequested ON)";
  }

  else
  {
    v14 = &stru_1F216A3D0;
  }

  if (v7)
  {
    v15 = @", (BlurScore ON)";
  }

  else
  {
    v15 = &stru_1F216A3D0;
  }

  if (momentCaptureMovieRecordingEnabled)
  {
    v16 = @", (SemStyles ON)";
  }

  else
  {
    v16 = &stru_1F216A3D0;
  }

  if (v5)
  {
    v17 = @", (DemRaw ON)";
  }

  else
  {
    v17 = &stru_1F216A3D0;
  }

  if (v4)
  {
    v18 = @", (IDC ON)";
  }

  else
  {
    v18 = &stru_1F216A3D0;
  }

  if (v39)
  {
    v19 = @", (DigitalFlash ON)";
  }

  else
  {
    v19 = &stru_1F216A3D0;
  }

  if (enabledSemanticSegmentationMatteURNs_low)
  {
    v20 = @", (DeferredProcessing ON)";
  }

  else
  {
    v20 = &stru_1F216A3D0;
  }

  settingsID = [(FigCaptureIrisPreparedSettings *)[(FigCaptureIrisSinkConfiguration *)self irisPreparedSettings] settingsID];
  optimizesImagesForOfflineVideoStabilization = [(FigCaptureIrisSinkConfiguration *)self optimizesImagesForOfflineVideoStabilization];
  v23 = @", optimizesImagesForOfflineVideoStabilization:1";
  if (!optimizesImagesForOfflineVideoStabilization)
  {
    v23 = &stru_1F216A3D0;
  }

  if (BYTE1(self->_movieAutoTrimMethod))
  {
    v24 = @", (depth ON)";
  }

  else
  {
    v24 = &stru_1F216A3D0;
  }

  if (BYTE2(self->_movieAutoTrimMethod))
  {
    v25 = @", (portraitMatte ON)";
  }

  else
  {
    v25 = &stru_1F216A3D0;
  }

  if (self->_optimizesImagesForOfflineVideoStabilization)
  {
    v26 = @", (filters ON)";
  }

  else
  {
    v26 = &stru_1F216A3D0;
  }

  if (self->_depthDataDeliveryEnabled)
  {
    v27 = @", (constituentPhoto ON)";
  }

  else
  {
    v27 = &stru_1F216A3D0;
  }

  v28 = v41;
  if (!v41)
  {
    v28 = &stru_1F216A3D0;
  }

  return [v37 stringWithFormat:@"%@ movies:%d, suspended:%d, preserveSuspended:%d, movieDur:%.2fs, trim:%d, %lldfps, preparedID:%lld%@%@%@%@%@%@ maxQuality:%d%@%@%@%@%@%@%@%@%@%@%@", v36, irisMovieCaptureEnabled, irisMovieCaptureSuspended, preservesIrisMovieCaptureSuspendedOnSessionStop, *&Seconds, irisMovieAutoTrimMethod, v30, settingsID, v23, v24, v25, v42, v26, v27, *(&self->_portraitEffectsMatteDeliveryEnabled + 2), v20, v19, v18, v17, v16, v28, v38, v15, v40, v14, v34];
}

- (id)copyXPCEncoding
{
  v11.receiver = self;
  v11.super_class = FigCaptureIrisSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v11 copyXPCEncoding];
  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisMovieCaptureEnabled", [(FigCaptureIrisSinkConfiguration *)self irisMovieCaptureEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisMovieCaptureSuspended", [(FigCaptureIrisSinkConfiguration *)self irisMovieCaptureSuspended]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "preservesIrisMovieCaptureSuspendedOnSessionStop", [(FigCaptureIrisSinkConfiguration *)self preservesIrisMovieCaptureSuspendedOnSessionStop]);
  if (self)
  {
    [(FigCaptureIrisSinkConfiguration *)self irisMovieDuration];
    FigXPCMessageSetCMTime();
    [(FigCaptureIrisSinkConfiguration *)self irisMovieVideoFrameDuration];
  }

  else
  {
    FigXPCMessageSetCMTime();
    memset(&v10[6], 0, 24);
  }

  FigXPCMessageSetCMTime();
  xpc_dictionary_set_int64(copyXPCEncoding, "irisMovieAutoTrimMethod", [(FigCaptureIrisSinkConfiguration *)self irisMovieAutoTrimMethod]);
  epoch = self->_movieVideoFrameDuration.epoch;
  if (epoch)
  {
    copyXPCEncoding2 = [epoch copyXPCEncoding];
    xpc_dictionary_set_value(copyXPCEncoding, "irisPreparedSettings", copyXPCEncoding2);
    xpc_release(copyXPCEncoding2);
  }

  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisOptimizesImagesForOfflineVideoStabilization", [(FigCaptureIrisSinkConfiguration *)self optimizesImagesForOfflineVideoStabilization]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisDepthDataDeliveryEnabled", [(FigCaptureIrisSinkConfiguration *)self depthDataDeliveryEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisPortraitEffectsMatteDeliveryEnabled", [(FigCaptureIrisSinkConfiguration *)self portraitEffectsMatteDeliveryEnabled]);
  if ([(FigCaptureIrisSinkConfiguration *)self enabledSemanticSegmentationMatteURNs])
  {
    [(FigCaptureIrisSinkConfiguration *)self enabledSemanticSegmentationMatteURNs];
    FigXPCMessageSetCFArray();
  }

  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisFilterRenderingEnabled", [(FigCaptureIrisSinkConfiguration *)self filterRenderingEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "irisBravoConstituentPhotoDeliveryEnabled", [(FigCaptureIrisSinkConfiguration *)self bravoConstituentPhotoDeliveryEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "momentCaptureMovieRecordingEnabled", [(FigCaptureIrisSinkConfiguration *)self momentCaptureMovieRecordingEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "spatialOverCaptureEnabled", [(FigCaptureIrisSinkConfiguration *)self spatialOverCaptureEnabled]);
  xpc_dictionary_set_int64(copyXPCEncoding, "maxQualityPrioritization", [(FigCaptureIrisSinkConfiguration *)self maxQualityPrioritization]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "deferredProcessingEnabled", [(FigCaptureIrisSinkConfiguration *)self deferredProcessingEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "digitalFlashCaptureEnabled", [(FigCaptureIrisSinkConfiguration *)self digitalFlashCaptureEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "intelligentDistortionCorrectionEnabled", [(FigCaptureIrisSinkConfiguration *)self intelligentDistortionCorrectionEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "demosaicedRawEnabled", [(FigCaptureIrisSinkConfiguration *)self demosaicedRawEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "focusPixelBlurScoreEnabled", [(FigCaptureIrisSinkConfiguration *)self focusPixelBlurScoreEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "previewQualityAdjustedPhotoFilterRenderingEnabled", [(FigCaptureIrisSinkConfiguration *)self previewQualityAdjustedPhotoFilterRenderingEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "zeroShutterLagEnabled", [(FigCaptureIrisSinkConfiguration *)self zeroShutterLagEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "ultraHighResolutionZeroShutterLagSupportEnabled", [(FigCaptureIrisSinkConfiguration *)self ultraHighResolutionZeroShutterLagSupportEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "responsiveCaptureEnabled", [(FigCaptureIrisSinkConfiguration *)self responsiveCaptureEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "fastCapturePrioritizationEnabled", [(FigCaptureIrisSinkConfiguration *)self fastCapturePrioritizationEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "semanticStyleRenderingEnabled", [(FigCaptureIrisSinkConfiguration *)self semanticStyleRenderingEnabled]);
  xpc_dictionary_set_int64(copyXPCEncoding, "maxPhotoWidth", self->_maxQualityPrioritization);
  xpc_dictionary_set_int64(copyXPCEncoding, "maxPhotoHeight", *&self->_deferredProcessingEnabled);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "constantColorEnabled", self->_maxPhotoDimensions.height);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "constantColorClippingRecoveryEnabled", BYTE1(self->_maxPhotoDimensions.height));
  xpc_dictionary_set_BOOL(copyXPCEncoding, "constantColorSaturationBoostEnabled", BYTE2(self->_maxPhotoDimensions.height));
  xpc_dictionary_set_BOOL(copyXPCEncoding, "stereoPhotoCaptureEnabled", HIBYTE(self->_maxPhotoDimensions.height));
  xpc_dictionary_set_BOOL(copyXPCEncoding, "applyStandardSmartStyleForStillsWhenNoStyleRequested", *(&self->_maxPhotoDimensions + 8));
  xpc_dictionary_set_BOOL(copyXPCEncoding, "multiCamClientCompositingEnabled", [(FigCaptureIrisSinkConfiguration *)self multiCamClientCompositingEnabled]);
  if ([(FigCaptureIrisSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID])
  {
    xpc_dictionary_set_string(copyXPCEncoding, "multiCamClientCompositingPrimaryConnectionID", [(NSString *)[(FigCaptureIrisSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID] UTF8String]);
  }

  xpc_dictionary_set_BOOL(copyXPCEncoding, "cameraSensorOrientationCompensationEnabled", [(FigCaptureIrisSinkConfiguration *)self cameraSensorOrientationCompensationEnabled]);
  if (*&self->_responsiveCaptureEnabled)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v8 = *&self->_responsiveCaptureEnabled;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__FigCaptureIrisSinkConfiguration_copyXPCEncoding__block_invoke;
    v10[3] = &unk_1E7999A48;
    v10[4] = array;
    v10[5] = array2;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
    FigXPCMessageSetCFArray();
    FigXPCMessageSetCFArray();
  }

  return copyXPCEncoding;
}

uint64_t __50__FigCaptureIrisSinkConfiguration_copyXPCEncoding__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addObject:a2];
  v5 = *(a1 + 40);

  return [v5 addObject:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureIrisSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (FigCaptureIrisSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v8.receiver = self;
  v8.super_class = FigCaptureIrisSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v8 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(encoding, "irisMovieCaptureEnabled");
    *(&v4->super._deferredStartEnabled + 2) = xpc_dictionary_get_BOOL(encoding, "irisMovieCaptureSuspended");
    v4->_constantColorClippingRecoveryEnabled = xpc_dictionary_get_BOOL(encoding, "preservesIrisMovieCaptureSuspendedOnSessionStop");
    FigXPCMessageGetCMTime();
    FigXPCMessageGetCMTime();
    v4->_movieVideoFrameDuration.flags = xpc_dictionary_get_int64(encoding, "irisMovieAutoTrimMethod");
    value = xpc_dictionary_get_value(encoding, "irisPreparedSettings");
    if (value)
    {
      v4->_movieVideoFrameDuration.epoch = [[FigCaptureIrisPreparedSettings alloc] initWithXPCEncoding:value];
    }

    LOBYTE(v4->_movieAutoTrimMethod) = xpc_dictionary_get_BOOL(encoding, "irisOptimizesImagesForOfflineVideoStabilization");
    BYTE1(v4->_movieAutoTrimMethod) = xpc_dictionary_get_BOOL(encoding, "irisDepthDataDeliveryEnabled");
    BYTE2(v4->_movieAutoTrimMethod) = xpc_dictionary_get_BOOL(encoding, "irisPortraitEffectsMatteDeliveryEnabled");
    FigXPCMessageCopyCFArray();
    v4->_optimizesImagesForOfflineVideoStabilization = xpc_dictionary_get_BOOL(encoding, "irisFilterRenderingEnabled");
    v4->_depthDataDeliveryEnabled = xpc_dictionary_get_BOOL(encoding, "irisBravoConstituentPhotoDeliveryEnabled");
    v4->_portraitEffectsMatteDeliveryEnabled = xpc_dictionary_get_BOOL(encoding, "momentCaptureMovieRecordingEnabled");
    *(&v4->_portraitEffectsMatteDeliveryEnabled + 1) = xpc_dictionary_get_BOOL(encoding, "spatialOverCaptureEnabled");
    *(&v4->_portraitEffectsMatteDeliveryEnabled + 2) = xpc_dictionary_get_int64(encoding, "maxQualityPrioritization");
    LOBYTE(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "deferredProcessingEnabled");
    BYTE1(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "digitalFlashCaptureEnabled");
    BYTE2(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "intelligentDistortionCorrectionEnabled");
    BYTE3(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "demosaicedRawEnabled");
    BYTE4(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "focusPixelBlurScoreEnabled");
    BYTE5(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "previewQualityAdjustedPhotoFilterRenderingEnabled");
    BYTE6(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "zeroShutterLagEnabled");
    HIBYTE(v4->_enabledSemanticSegmentationMatteURNs) = xpc_dictionary_get_BOOL(encoding, "ultraHighResolutionZeroShutterLagSupportEnabled");
    v4->_filterRenderingEnabled = xpc_dictionary_get_BOOL(encoding, "responsiveCaptureEnabled");
    v4->_bravoConstituentPhotoDeliveryEnabled = xpc_dictionary_get_BOOL(encoding, "fastCapturePrioritizationEnabled");
    v4->_momentCaptureMovieRecordingEnabled = xpc_dictionary_get_BOOL(encoding, "semanticStyleRenderingEnabled");
    v4->_maxQualityPrioritization = xpc_dictionary_get_int64(encoding, "maxPhotoWidth");
    *&v4->_deferredProcessingEnabled = xpc_dictionary_get_int64(encoding, "maxPhotoHeight");
    FigXPCMessageCopyCFArray();
    FigXPCMessageCopyCFArray();
    LOBYTE(v4->_maxPhotoDimensions.height) = xpc_dictionary_get_BOOL(encoding, "constantColorEnabled");
    BYTE1(v4->_maxPhotoDimensions.height) = xpc_dictionary_get_BOOL(encoding, "constantColorClippingRecoveryEnabled");
    BYTE2(v4->_maxPhotoDimensions.height) = xpc_dictionary_get_BOOL(encoding, "constantColorSaturationBoostEnabled");
    HIBYTE(v4->_maxPhotoDimensions.height) = xpc_dictionary_get_BOOL(encoding, "stereoPhotoCaptureEnabled");
    *(&v4->_maxPhotoDimensions + 8) = xpc_dictionary_get_BOOL(encoding, "applyStandardSmartStyleForStillsWhenNoStyleRequested");
    *(&v4->_maxPhotoDimensions + 9) = xpc_dictionary_get_BOOL(encoding, "multiCamClientCompositingEnabled");
    string = xpc_dictionary_get_string(encoding, "multiCamClientCompositingPrimaryConnectionID");
    if (string)
    {
      v4->_exifFocalLengthsByZoomFactor = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }

    v4->_constantColorEnabled = xpc_dictionary_get_BOOL(encoding, "cameraSensorOrientationCompensationEnabled");
  }

  return v4;
}

- (FigCaptureIrisSinkConfiguration)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = FigCaptureIrisSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v19 initWithCoder:?];
  if (v4)
  {
    v4[17] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieCaptureEnabled")}];
    v5 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v6 = [v5 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 3)}];
    CMTimeMakeFromDictionary(&v17, [coder decodeObjectOfClasses:v6 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieDuration")}]);
    v7 = *&v17.value;
    *(v4 + 36) = v17.epoch;
    *(v4 + 20) = v7;
    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v9 = [v8 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 3)}];
    CMTimeMakeFromDictionary(&v17, [coder decodeObjectOfClasses:v9 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieVideoFrameDuration")}]);
    v10 = *&v17.value;
    *(v4 + 60) = v17.epoch;
    *(v4 + 44) = v10;
    *(v4 + 17) = [coder decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieAutoTrimMethod")}];
    *(v4 + 9) = [coder decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisPreparedSettings")}];
    v4[80] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisOptimizesImagesForOfflineVideoStabilization")}];
    v4[81] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisDepthDataDeliveryEnabled")}];
    v4[82] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisPortraitEffectsMatteDeliveryEnabled")}];
    v11 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v12 = [v11 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 2)}];
    *(v4 + 11) = [coder decodeObjectOfClasses:v12 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "enabledSemanticSegmentationMatteURNs")}];
    v4[96] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisFilterRenderingEnabled")}];
    v4[97] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisBravoConstituentPhotoDeliveryEnabled")}];
    v4[98] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "momentCaptureMovieRecordingEnabled")}];
    v4[99] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "spatialOverCaptureEnabled")}];
    *(v4 + 25) = [coder decodeInt32ForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "maxQualityPrioritization")}];
    v4[104] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "deferredProcessingEnabled")}];
    v4[105] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "digitalFlashCaptureEnabled")}];
    v4[106] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "intelligentDistortionCorrectionEnabled")}];
    v4[107] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "demosaicedRawEnabled")}];
    v4[108] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "focusPixelBlurScoreEnabled")}];
    v4[109] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "previewQualityAdjustedPhotoFilterRenderingEnabled")}];
    v4[110] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "zeroShutterLagEnabled")}];
    v4[111] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "ultraHighResolutionZeroShutterLagSupportEnabled")}];
    v4[112] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "responsiveCaptureEnabled")}];
    v4[113] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "fastCapturePrioritizationEnabled")}];
    v4[114] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "semanticStyleRenderingEnabled")}];
    *(v4 + 29) = [coder decodeIntForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "maxPhotoWidth")}];
    *(v4 + 30) = [coder decodeIntForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "maxPhotoHeight")}];
    v13 = objc_opt_class();
    *(v4 + 16) = [coder decodeDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "exifFocalLengthsByZoomFactor")}];
    v4[136] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "constantColorEnabled")}];
    v4[137] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "constantColorClippingRecoveryEnabled")}];
    v4[138] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "constantColorSaturationBoostEnabled")}];
    v4[139] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "stereoPhotoCaptureEnabled")}];
    v4[140] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "applyStandardSmartStyleForStillsWhenNoStyleRequested")}];
    v4[141] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "multiCamClientCompositingEnabled")}];
    *(v4 + 18) = [coder decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "multiCamClientCompositingPrimaryConnectionID")}];
    v4[152] = [coder decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "cameraSensorOrientationCompensationEnabled")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FigCaptureIrisSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v7 encodeWithCoder:?];
  [coder encodeBool:*(&self->super._deferredStartEnabled + 1) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieCaptureEnabled")}];
  v5 = *MEMORY[0x1E695E480];
  v6 = *(&self->super._deferredStartEnabled + 4);
  [coder encodeObject:CMTimeCopyAsDictionary(&v6 forKey:{v5), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieDuration")}];
  v6 = *&self->_movieDuration.flags;
  [coder encodeObject:CMTimeCopyAsDictionary(&v6 forKey:{v5), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieVideoFrameDuration")}];
  [coder encodeInt32:self->_movieVideoFrameDuration.flags forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisMovieAutoTrimMethod")}];
  [coder encodeObject:self->_movieVideoFrameDuration.epoch forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisPreparedSettings")}];
  [coder encodeBool:LOBYTE(self->_movieAutoTrimMethod) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisOptimizesImagesForOfflineVideoStabilization")}];
  [coder encodeBool:BYTE1(self->_movieAutoTrimMethod) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisDepthDataDeliveryEnabled")}];
  [coder encodeBool:BYTE2(self->_movieAutoTrimMethod) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisPortraitEffectsMatteDeliveryEnabled")}];
  [coder encodeObject:self->_preparedSettings forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "enabledSemanticSegmentationMatteURNs")}];
  [coder encodeBool:self->_optimizesImagesForOfflineVideoStabilization forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisFilterRenderingEnabled")}];
  [coder encodeBool:self->_depthDataDeliveryEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "irisBravoConstituentPhotoDeliveryEnabled")}];
  [coder encodeBool:self->_portraitEffectsMatteDeliveryEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "momentCaptureMovieRecordingEnabled")}];
  [coder encodeBool:*(&self->_portraitEffectsMatteDeliveryEnabled + 1) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "spatialOverCaptureEnabled")}];
  [coder encodeInt32:*(&self->_portraitEffectsMatteDeliveryEnabled + 2) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "maxQualityPrioritization")}];
  [coder encodeBool:LOBYTE(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "deferredProcessingEnabled")}];
  [coder encodeBool:BYTE1(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "digitalFlashCaptureEnabled")}];
  [coder encodeBool:BYTE2(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "intelligentDistortionCorrectionEnabled")}];
  [coder encodeBool:BYTE3(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "demosaicedRawEnabled")}];
  [coder encodeBool:BYTE4(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "focusPixelBlurScoreEnabled")}];
  [coder encodeBool:BYTE5(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "previewQualityAdjustedPhotoFilterRenderingEnabled")}];
  [coder encodeBool:BYTE6(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "zeroShutterLagEnabled")}];
  [coder encodeBool:HIBYTE(self->_enabledSemanticSegmentationMatteURNs) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "ultraHighResolutionZeroShutterLagSupportEnabled")}];
  [coder encodeBool:self->_filterRenderingEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "responsiveCaptureEnabled")}];
  [coder encodeBool:self->_bravoConstituentPhotoDeliveryEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "fastCapturePrioritizationEnabled")}];
  [coder encodeBool:self->_momentCaptureMovieRecordingEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "semanticStyleRenderingEnabled")}];
  [coder encodeInt32:self->_maxQualityPrioritization forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "maxPhotoWidth")}];
  [coder encodeInt32:*&self->_deferredProcessingEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "maxPhotoHeight")}];
  [coder encodeObject:*&self->_responsiveCaptureEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "exifFocalLengthsByZoomFactor")}];
  [coder encodeBool:LOBYTE(self->_maxPhotoDimensions.height) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "constantColorEnabled")}];
  [coder encodeBool:BYTE1(self->_maxPhotoDimensions.height) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "constantColorClippingRecoveryEnabled")}];
  [coder encodeBool:BYTE2(self->_maxPhotoDimensions.height) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "constantColorSaturationBoostEnabled")}];
  [coder encodeBool:HIBYTE(self->_maxPhotoDimensions.height) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "stereoPhotoCaptureEnabled")}];
  [coder encodeBool:*(&self->_maxPhotoDimensions + 8) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "applyStandardSmartStyleForStillsWhenNoStyleRequested")}];
  [coder encodeBool:*(&self->_maxPhotoDimensions + 9) forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "multiCamClientCompositingEnabled")}];
  [coder encodeObject:self->_exifFocalLengthsByZoomFactor forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "multiCamClientCompositingPrimaryConnectionID")}];
  [coder encodeBool:self->_constantColorEnabled forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "cameraSensorOrientationCompensationEnabled")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = FigCaptureIrisSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v14 copyWithZone:?];
  [v5 setIrisMovieCaptureEnabled:{-[FigCaptureIrisSinkConfiguration irisMovieCaptureEnabled](self, "irisMovieCaptureEnabled")}];
  [v5 setIrisMovieCaptureSuspended:{-[FigCaptureIrisSinkConfiguration irisMovieCaptureSuspended](self, "irisMovieCaptureSuspended")}];
  [v5 setPreservesIrisMovieCaptureSuspendedOnSessionStop:{-[FigCaptureIrisSinkConfiguration preservesIrisMovieCaptureSuspendedOnSessionStop](self, "preservesIrisMovieCaptureSuspendedOnSessionStop")}];
  if (self)
  {
    [(FigCaptureIrisSinkConfiguration *)self irisMovieDuration];
    v10 = v12;
    v11 = v13;
    [v5 setIrisMovieDuration:&v10];
    [(FigCaptureIrisSinkConfiguration *)self irisMovieVideoFrameDuration];
  }

  else
  {
    v12 = 0uLL;
    v13 = 0;
    v10 = 0uLL;
    v11 = 0;
    [v5 setIrisMovieDuration:&v10];
    v9 = 0;
    v8 = 0uLL;
  }

  v10 = v8;
  v11 = v9;
  [v5 setIrisMovieVideoFrameDuration:&v10];
  [v5 setIrisMovieAutoTrimMethod:{-[FigCaptureIrisSinkConfiguration irisMovieAutoTrimMethod](self, "irisMovieAutoTrimMethod")}];
  v6 = [(FigCaptureIrisPreparedSettings *)[(FigCaptureIrisSinkConfiguration *)self irisPreparedSettings] copyWithZone:zone];
  [v5 setIrisPreparedSettings:v6];

  [v5 setOptimizesImagesForOfflineVideoStabilization:{-[FigCaptureIrisSinkConfiguration optimizesImagesForOfflineVideoStabilization](self, "optimizesImagesForOfflineVideoStabilization")}];
  [v5 setDepthDataDeliveryEnabled:{-[FigCaptureIrisSinkConfiguration depthDataDeliveryEnabled](self, "depthDataDeliveryEnabled")}];
  [v5 setPortraitEffectsMatteDeliveryEnabled:{-[FigCaptureIrisSinkConfiguration portraitEffectsMatteDeliveryEnabled](self, "portraitEffectsMatteDeliveryEnabled")}];
  [v5 setEnabledSemanticSegmentationMatteURNs:{-[FigCaptureIrisSinkConfiguration enabledSemanticSegmentationMatteURNs](self, "enabledSemanticSegmentationMatteURNs")}];
  [v5 setFilterRenderingEnabled:{-[FigCaptureIrisSinkConfiguration filterRenderingEnabled](self, "filterRenderingEnabled")}];
  [v5 setBravoConstituentPhotoDeliveryEnabled:{-[FigCaptureIrisSinkConfiguration bravoConstituentPhotoDeliveryEnabled](self, "bravoConstituentPhotoDeliveryEnabled")}];
  [v5 setMomentCaptureMovieRecordingEnabled:{-[FigCaptureIrisSinkConfiguration momentCaptureMovieRecordingEnabled](self, "momentCaptureMovieRecordingEnabled")}];
  [v5 setSpatialOverCaptureEnabled:{-[FigCaptureIrisSinkConfiguration spatialOverCaptureEnabled](self, "spatialOverCaptureEnabled")}];
  [v5 setMaxQualityPrioritization:{-[FigCaptureIrisSinkConfiguration maxQualityPrioritization](self, "maxQualityPrioritization")}];
  [v5 setDeferredProcessingEnabled:{-[FigCaptureIrisSinkConfiguration deferredProcessingEnabled](self, "deferredProcessingEnabled")}];
  [v5 setDigitalFlashCaptureEnabled:{-[FigCaptureIrisSinkConfiguration digitalFlashCaptureEnabled](self, "digitalFlashCaptureEnabled")}];
  [v5 setIntelligentDistortionCorrectionEnabled:{-[FigCaptureIrisSinkConfiguration intelligentDistortionCorrectionEnabled](self, "intelligentDistortionCorrectionEnabled")}];
  [v5 setDemosaicedRawEnabled:{-[FigCaptureIrisSinkConfiguration demosaicedRawEnabled](self, "demosaicedRawEnabled")}];
  [v5 setFocusPixelBlurScoreEnabled:{-[FigCaptureIrisSinkConfiguration focusPixelBlurScoreEnabled](self, "focusPixelBlurScoreEnabled")}];
  [v5 setPreviewQualityAdjustedPhotoFilterRenderingEnabled:{-[FigCaptureIrisSinkConfiguration previewQualityAdjustedPhotoFilterRenderingEnabled](self, "previewQualityAdjustedPhotoFilterRenderingEnabled")}];
  [v5 setZeroShutterLagEnabled:{-[FigCaptureIrisSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled")}];
  [v5 setUltraHighResolutionZeroShutterLagSupportEnabled:{-[FigCaptureIrisSinkConfiguration ultraHighResolutionZeroShutterLagSupportEnabled](self, "ultraHighResolutionZeroShutterLagSupportEnabled")}];
  [v5 setResponsiveCaptureEnabled:{-[FigCaptureIrisSinkConfiguration responsiveCaptureEnabled](self, "responsiveCaptureEnabled")}];
  [v5 setFastCapturePrioritizationEnabled:{-[FigCaptureIrisSinkConfiguration fastCapturePrioritizationEnabled](self, "fastCapturePrioritizationEnabled")}];
  [v5 setSemanticStyleRenderingEnabled:{-[FigCaptureIrisSinkConfiguration semanticStyleRenderingEnabled](self, "semanticStyleRenderingEnabled")}];
  [v5 setMaxPhotoDimensions:{-[FigCaptureIrisSinkConfiguration maxPhotoDimensions](self, "maxPhotoDimensions")}];
  [v5 setExifFocalLengthsByZoomFactor:{-[FigCaptureIrisSinkConfiguration exifFocalLengthsByZoomFactor](self, "exifFocalLengthsByZoomFactor")}];
  [v5 setConstantColorEnabled:{-[FigCaptureIrisSinkConfiguration constantColorEnabled](self, "constantColorEnabled")}];
  [v5 setConstantColorClippingRecoveryEnabled:{-[FigCaptureIrisSinkConfiguration constantColorClippingRecoveryEnabled](self, "constantColorClippingRecoveryEnabled")}];
  [v5 setConstantColorSaturationBoostEnabled:{-[FigCaptureIrisSinkConfiguration constantColorSaturationBoostEnabled](self, "constantColorSaturationBoostEnabled")}];
  [v5 setStereoPhotoCaptureEnabled:{-[FigCaptureIrisSinkConfiguration stereoPhotoCaptureEnabled](self, "stereoPhotoCaptureEnabled")}];
  [v5 setApplyStandardSmartStyleForStillsWhenNoStyleRequested:{-[FigCaptureIrisSinkConfiguration applyStandardSmartStyleForStillsWhenNoStyleRequested](self, "applyStandardSmartStyleForStillsWhenNoStyleRequested")}];
  [v5 setMultiCamClientCompositingEnabled:{-[FigCaptureIrisSinkConfiguration multiCamClientCompositingEnabled](self, "multiCamClientCompositingEnabled")}];
  [v5 setMultiCamClientCompositingPrimaryConnectionID:{-[FigCaptureIrisSinkConfiguration multiCamClientCompositingPrimaryConnectionID](self, "multiCamClientCompositingPrimaryConnectionID")}];
  [v5 setCameraSensorOrientationCompensationEnabled:{-[FigCaptureIrisSinkConfiguration cameraSensorOrientationCompensationEnabled](self, "cameraSensorOrientationCompensationEnabled")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v45.receiver = self;
  v45.super_class = FigCaptureIrisSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v45 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    irisMovieCaptureEnabled = [(FigCaptureIrisSinkConfiguration *)self irisMovieCaptureEnabled];
    if (irisMovieCaptureEnabled != [equal irisMovieCaptureEnabled])
    {
      goto LABEL_26;
    }

    irisMovieCaptureSuspended = [(FigCaptureIrisSinkConfiguration *)self irisMovieCaptureSuspended];
    if (irisMovieCaptureSuspended != [equal irisMovieCaptureSuspended])
    {
      goto LABEL_26;
    }

    preservesIrisMovieCaptureSuspendedOnSessionStop = [(FigCaptureIrisSinkConfiguration *)self preservesIrisMovieCaptureSuspendedOnSessionStop];
    if (preservesIrisMovieCaptureSuspendedOnSessionStop != [equal preservesIrisMovieCaptureSuspendedOnSessionStop])
    {
      goto LABEL_26;
    }

    if (self)
    {
      [(FigCaptureIrisSinkConfiguration *)self irisMovieDuration];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    if (equal)
    {
      [equal irisMovieDuration];
    }

    else
    {
      memset(&v43, 0, sizeof(v43));
    }

    if (CMTimeCompare(&time1, &v43))
    {
      goto LABEL_26;
    }

    if (self)
    {
      [(FigCaptureIrisSinkConfiguration *)self irisMovieVideoFrameDuration];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    if (equal)
    {
      [equal irisMovieVideoFrameDuration];
    }

    else
    {
      memset(&v43, 0, sizeof(v43));
    }

    if (CMTimeCompare(&time1, &v43))
    {
      goto LABEL_26;
    }

    irisMovieAutoTrimMethod = [(FigCaptureIrisSinkConfiguration *)self irisMovieAutoTrimMethod];
    if (irisMovieAutoTrimMethod != [equal irisMovieAutoTrimMethod])
    {
      goto LABEL_26;
    }

    irisPreparedSettings = [(FigCaptureIrisSinkConfiguration *)self irisPreparedSettings];
    if (irisPreparedSettings != [equal irisPreparedSettings])
    {
      v5 = -[FigCaptureIrisPreparedSettings isEqual:](-[FigCaptureIrisSinkConfiguration irisPreparedSettings](self, "irisPreparedSettings"), "isEqual:", [equal irisPreparedSettings]);
      if (!v5)
      {
        return v5;
      }
    }

    v11 = [(FigCaptureIrisSinkConfiguration *)self optimizesImagesForOfflineVideoStabilization:v43.value];
    if (v11 != [equal optimizesImagesForOfflineVideoStabilization])
    {
      goto LABEL_26;
    }

    depthDataDeliveryEnabled = [(FigCaptureIrisSinkConfiguration *)self depthDataDeliveryEnabled];
    if (depthDataDeliveryEnabled != [equal depthDataDeliveryEnabled])
    {
      goto LABEL_26;
    }

    portraitEffectsMatteDeliveryEnabled = [(FigCaptureIrisSinkConfiguration *)self portraitEffectsMatteDeliveryEnabled];
    if (portraitEffectsMatteDeliveryEnabled != [equal portraitEffectsMatteDeliveryEnabled])
    {
      goto LABEL_26;
    }

    v14 = [MEMORY[0x1E695DFD8] setWithArray:{-[FigCaptureIrisSinkConfiguration enabledSemanticSegmentationMatteURNs](self, "enabledSemanticSegmentationMatteURNs")}];
    v5 = [v14 isEqual:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(equal, "enabledSemanticSegmentationMatteURNs"))}];
    if (!v5)
    {
      return v5;
    }

    filterRenderingEnabled = [(FigCaptureIrisSinkConfiguration *)self filterRenderingEnabled];
    if (filterRenderingEnabled != [equal filterRenderingEnabled]
      || (v16 = -[FigCaptureIrisSinkConfiguration bravoConstituentPhotoDeliveryEnabled](self, "bravoConstituentPhotoDeliveryEnabled"), v16 != [equal bravoConstituentPhotoDeliveryEnabled])
      || (v17 = -[FigCaptureIrisSinkConfiguration momentCaptureMovieRecordingEnabled](self, "momentCaptureMovieRecordingEnabled"), v17 != [equal momentCaptureMovieRecordingEnabled])
      || (v18 = -[FigCaptureIrisSinkConfiguration spatialOverCaptureEnabled](self, "spatialOverCaptureEnabled"), v18 != [equal spatialOverCaptureEnabled])
      || (v19 = -[FigCaptureIrisSinkConfiguration maxQualityPrioritization](self, "maxQualityPrioritization"), v19 != [equal maxQualityPrioritization])
      || (v20 = -[FigCaptureIrisSinkConfiguration deferredProcessingEnabled](self, "deferredProcessingEnabled"), v20 != [equal deferredProcessingEnabled])
      || (v21 = -[FigCaptureIrisSinkConfiguration digitalFlashCaptureEnabled](self, "digitalFlashCaptureEnabled"), v21 != [equal digitalFlashCaptureEnabled])
      || (v22 = -[FigCaptureIrisSinkConfiguration intelligentDistortionCorrectionEnabled](self, "intelligentDistortionCorrectionEnabled"), v22 != [equal intelligentDistortionCorrectionEnabled])
      || (v23 = -[FigCaptureIrisSinkConfiguration demosaicedRawEnabled](self, "demosaicedRawEnabled"), v23 != [equal demosaicedRawEnabled])
      || (v24 = -[FigCaptureIrisSinkConfiguration focusPixelBlurScoreEnabled](self, "focusPixelBlurScoreEnabled"), v24 != [equal focusPixelBlurScoreEnabled])
      || (v25 = -[FigCaptureIrisSinkConfiguration previewQualityAdjustedPhotoFilterRenderingEnabled](self, "previewQualityAdjustedPhotoFilterRenderingEnabled"), v25 != [equal previewQualityAdjustedPhotoFilterRenderingEnabled])
      || (v26 = -[FigCaptureIrisSinkConfiguration zeroShutterLagEnabled](self, "zeroShutterLagEnabled"), v26 != [equal zeroShutterLagEnabled])
      || (v27 = -[FigCaptureIrisSinkConfiguration ultraHighResolutionZeroShutterLagSupportEnabled](self, "ultraHighResolutionZeroShutterLagSupportEnabled"), v27 != [equal ultraHighResolutionZeroShutterLagSupportEnabled])
      || (v28 = -[FigCaptureIrisSinkConfiguration responsiveCaptureEnabled](self, "responsiveCaptureEnabled"), v28 != [equal responsiveCaptureEnabled])
      || (v29 = -[FigCaptureIrisSinkConfiguration fastCapturePrioritizationEnabled](self, "fastCapturePrioritizationEnabled"), v29 != [equal fastCapturePrioritizationEnabled])
      || (v30 = -[FigCaptureIrisSinkConfiguration semanticStyleRenderingEnabled](self, "semanticStyleRenderingEnabled"), v30 != [equal semanticStyleRenderingEnabled])
      || (v31 = -[FigCaptureIrisSinkConfiguration maxPhotoDimensions](self, "maxPhotoDimensions"), v31 != [equal maxPhotoDimensions])
      || (v32 = -[FigCaptureIrisSinkConfiguration maxPhotoDimensions](self, "maxPhotoDimensions"), ([equal maxPhotoDimensions] ^ *&v32) >> 32)
      || (v33 = -[FigCaptureIrisSinkConfiguration exifFocalLengthsByZoomFactor](self, "exifFocalLengthsByZoomFactor"), v33 != [equal exifFocalLengthsByZoomFactor])
      || (v34 = -[FigCaptureIrisSinkConfiguration constantColorEnabled](self, "constantColorEnabled"), v34 != [equal constantColorEnabled])
      || (v35 = -[FigCaptureIrisSinkConfiguration constantColorClippingRecoveryEnabled](self, "constantColorClippingRecoveryEnabled"), v35 != [equal constantColorClippingRecoveryEnabled])
      || (v36 = -[FigCaptureIrisSinkConfiguration constantColorSaturationBoostEnabled](self, "constantColorSaturationBoostEnabled"), v36 != [equal constantColorSaturationBoostEnabled])
      || (v37 = -[FigCaptureIrisSinkConfiguration stereoPhotoCaptureEnabled](self, "stereoPhotoCaptureEnabled"), v37 != [equal stereoPhotoCaptureEnabled])
      || (v38 = -[FigCaptureIrisSinkConfiguration applyStandardSmartStyleForStillsWhenNoStyleRequested](self, "applyStandardSmartStyleForStillsWhenNoStyleRequested"), v38 != [equal applyStandardSmartStyleForStillsWhenNoStyleRequested])
      || (v39 = -[FigCaptureIrisSinkConfiguration multiCamClientCompositingEnabled](self, "multiCamClientCompositingEnabled"), v39 != [equal multiCamClientCompositingEnabled]))
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    multiCamClientCompositingPrimaryConnectionID = [(FigCaptureIrisSinkConfiguration *)self multiCamClientCompositingPrimaryConnectionID];
    if (multiCamClientCompositingPrimaryConnectionID == [equal multiCamClientCompositingPrimaryConnectionID] || (v5 = -[NSString isEqualToString:](-[FigCaptureIrisSinkConfiguration multiCamClientCompositingPrimaryConnectionID](self, "multiCamClientCompositingPrimaryConnectionID"), "isEqualToString:", objc_msgSend(equal, "multiCamClientCompositingPrimaryConnectionID"))) != 0)
    {
      cameraSensorOrientationCompensationEnabled = [(FigCaptureIrisSinkConfiguration *)self cameraSensorOrientationCompensationEnabled];
      LOBYTE(v5) = cameraSensorOrientationCompensationEnabled ^ [equal cameraSensorOrientationCompensationEnabled] ^ 1;
    }
  }

  return v5;
}

- (void)setIrisMovieDuration:(id *)duration
{
  var3 = duration->var3;
  *(&self->super._deferredStartEnabled + 4) = *&duration->var0;
  *(&self->_movieDuration.value + 4) = var3;
}

- (void)setIrisMovieVideoFrameDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_movieDuration.flags = *&duration->var0;
  *(&self->_movieVideoFrameDuration.value + 4) = var3;
}

@end
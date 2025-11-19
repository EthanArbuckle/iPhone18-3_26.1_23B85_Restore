@interface FigCaptureSourceVideoFormat
- ($2825F4736939C4A6D3AD43837233062D)nativeDimensions;
- ($2825F4736939C4A6D3AD43837233062D)previewDimensions;
- ($2825F4736939C4A6D3AD43837233062D)previewDimensionsForAspectRatio:(int)a3;
- ($2825F4736939C4A6D3AD43837233062D)sourceCropAspectRatio;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxExposureDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minExposureDuration;
- (BOOL)capturesStillsFromVideoStream;
- (BOOL)configureForDepthDataDelivery;
- (BOOL)configureForDigitalFlashSupport;
- (BOOL)configureForNonDisruptiveFullBinSIFRSwitching;
- (BOOL)configureForSoftISPSupport;
- (BOOL)configureForSpatialOverCaptureSupport;
- (BOOL)configureForStillImageStabilizationSupport;
- (BOOL)configureForSupplementalTimeOfFlightCameraSupport;
- (BOOL)fullBinSIFROnSecondaryCameraAllowed;
- (BOOL)intelligentDistortionCorrectionSupported;
- (BOOL)isAWBStatisticsAveragingEnabled;
- (BOOL)isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported;
- (BOOL)isBackgroundBlurProvidedBySource;
- (BOOL)isBackgroundBlurSupported;
- (BOOL)isBackgroundBlurSupportedForContinuityCapture;
- (BOOL)isBackgroundReplacementProvidedBySource;
- (BOOL)isBackgroundReplacementSupported;
- (BOOL)isBackgroundReplacementSupportedForContinuityCapture;
- (BOOL)isBinned;
- (BOOL)isCaptureTimePhotoCurationSupported;
- (BOOL)isCinematicFramingProvidedBySource;
- (BOOL)isCinematicFramingSupported;
- (BOOL)isCinematicFramingSupportedForContinuityCapture;
- (BOOL)isCinematicVideoSupported;
- (BOOL)isContentAwareAWBSupported;
- (BOOL)isContentAwareEnhancementSupported;
- (BOOL)isDeepFusionSupported;
- (BOOL)isDeepZoomSupported;
- (BOOL)isDeferredPhotoProcessingSupported;
- (BOOL)isDigitalFlashRawNightModeSupported;
- (BOOL)isDigitalFlashSupported;
- (BOOL)isDigitalFlashZeroShutterLagSupported;
- (BOOL)isDynamicAspectRatioSupported;
- (BOOL)isFocusPixelBlurScoreSupported;
- (BOOL)isGNRHDRSupported;
- (BOOL)isGainMapSupported;
- (BOOL)isHDROriginalImageDeliverySupported;
- (BOOL)isHDRSupported;
- (BOOL)isHighPhotoQualitySupported;
- (BOOL)isISPMultiBandNoiseReductionSupported;
- (BOOL)isIrisSupported;
- (BOOL)isIrisVideoStabilizationSupported;
- (BOOL)isLearnedFusionSupported;
- (BOOL)isLearnedHRNRSupported;
- (BOOL)isLearnedNRSupported;
- (BOOL)isLensSmudgeDetectionSupported;
- (BOOL)isManualFramingSupported;
- (BOOL)isMultiCamSupported;
- (BOOL)isMultiIlluminantWhiteBalanceSupported;
- (BOOL)isPhotoFormat;
- (BOOL)isPocketDetectionSupported;
- (BOOL)isPortraitAutoSuggestSupported;
- (BOOL)isResponsiveShutterSupported;
- (BOOL)isSIFRStillImageCaptureWithDepthDataDisabled;
- (BOOL)isSIFRSupported;
- (BOOL)isSecondaryScalerUnavailable;
- (BOOL)isSemanticStyleRenderingSupported;
- (BOOL)isSmartCropSupported;
- (BOOL)isSmartFramingSupported;
- (BOOL)isSmartStyleRenderingSupported;
- (BOOL)isSpatialOverCaptureSupported;
- (BOOL)isSphereAssistedAutoFocusEnabled;
- (BOOL)isStabilizationModeSupported:(int)a3;
- (BOOL)isStagePreviewRenderingSupported;
- (BOOL)isStereoFusionSupported;
- (BOOL)isStereoPhotoCaptureSupported;
- (BOOL)isStereoVideoCaptureSupported;
- (BOOL)isStillImageISPChromaNoiseReductionEnabled;
- (BOOL)isStillImageISPMultiBandNoiseReductionSupported;
- (BOOL)isStillImageOutputDownscaledInHWISP;
- (BOOL)isStillImageStabilizationSupported;
- (BOOL)isStreamingDepthOnlyPrivatelySupported;
- (BOOL)isStudioAndContourPreviewRenderingSupported;
- (BOOL)isStudioLightingProvidedBySource;
- (BOOL)isStudioLightingSupported;
- (BOOL)isStudioLightingSupportedForContinuityCapture;
- (BOOL)isSupplementalTimeOfFlightCameraSupported;
- (BOOL)isUltraHighResolutionZeroShutterLagSupported;
- (BOOL)isValidDerivedSourceFormatForUnderlyingFormat:(id)a3;
- (BOOL)isVideoGreenGhostMitigationSupported;
- (BOOL)isVideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData;
- (BOOL)isVideoGreenGhostOfflineMetadataEnabled;
- (BOOL)isVideoHDRFusionSupported;
- (BOOL)isVideoSTFMetadataEnabled;
- (BOOL)isVideoSTFSupported;
- (BOOL)isVideoStabilizationStrengthSupported:(int)a3;
- (BOOL)isWideAsStatisticsPrimaryEnabled;
- (BOOL)isWideColorSupported;
- (BOOL)isWideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled;
- (BOOL)isZeroShutterLagSupported;
- (BOOL)isZeroShutterLagWithDepthSupported;
- (BOOL)ispChromaNoiseReductionEnabled;
- (BOOL)machineLearningVideoNoiseReductionSupported;
- (BOOL)prefersSensorHDREnabled;
- (BOOL)reactionEffectsProvidedBySource;
- (BOOL)reactionEffectsSupported;
- (BOOL)reactionEffectsSupportedForContinuityCapture;
- (BOOL)semanticRenderingSupported;
- (BOOL)shouldPreferSIFRFormatWithHighlightRecoveryEnabled:(BOOL)a3;
- (BOOL)stillImageEnhancedResByMaintainingSensorResolutionSupported;
- (BOOL)sushiRawBlackBorderingEnabled;
- (BOOL)sushiRawSupported;
- (BOOL)swfrSupported;
- (BOOL)temporalNoiseReductionBand0Disabled;
- (BOOL)temporalNoiseReductionRawEnabled;
- (BOOL)usesPacked10BitFirmwareStillImageOutputPixelFormat;
- (BOOL)zeroShutterLagRequiresUserInitiatedCaptureRequestTime;
- (CGPoint)sensorCenterOffset;
- (CGRect)maxVisibleSensorRect;
- (CGSize)stabilizationOverscanFromSensorForFESCropDimensions:(id)a3 preferSIFRFormat:(BOOL)a4 geometricDistortionCorrection:(BOOL)a5 useFESCompanionIndex:(BOOL)a6;
- (FigCaptureSourceVideoFormat)_resolveProperties;
- (FigCaptureSourceVideoFormat)initWithCoder:(id)a3;
- (FigCaptureSourceVideoFormat)initWithFigCaptureStreamFormatDictionary:(id)a3 pixelFormatOverride:(unsigned int)a4;
- (FigCaptureSourceVideoFormat)initWithXPCEncoding:(id)a3;
- (NSArray)secondaryNativeResolutionZoomFactors;
- (NSArray)supportedColorSpaces;
- (double)_fieldOfViewForAspectRatio:(int)a3 horizontal:(int)a4 gdcEnabled:;
- (float)_fieldOfViewWithCrop:(uint64_t)a1;
- (float)_geometricDistortionCorrectedFieldOfViewCropMultiplier;
- (float)actionCameraAEMaxGainScaleFactor;
- (float)aeMaxGain;
- (float)cinematicStabilizationExtendedLookAheadDuration;
- (float)defaultMaxFrameRateForSessionPreset:(id)a3;
- (float)defaultMinFrameRateForSessionPreset:(id)a3;
- (float)defaultPortraitLightingEffectStrength;
- (float)defaultSimulatedAperture;
- (float)depthDataAEMaxGain;
- (float)depthDataMaxIntegrationTimeOverride;
- (float)fieldOfView;
- (float)geometricDistortionCorrectedFieldOfView;
- (float)hardwareCost;
- (float)lowLightVideoAEMaxGain;
- (float)maxContinuousZoomFactorForCinematicVideo;
- (float)maxContinuousZoomFactorForDepthDataDelivery;
- (float)maxISO;
- (float)maxPortraitLightingEffectStrength;
- (float)maxSimulatedAperture;
- (float)maxZoomFactor;
- (float)minISO;
- (float)minPortraitLightingEffectStrength;
- (float)minSimulatedAperture;
- (float)sensorOrientation;
- (float)spatialOverCapturePercentage;
- (float)stabilizationOverscanPercentageOverrideForCinematic;
- (float)stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced;
- (float)stabilizationOverscanPercentageOverrideForStandard;
- (float)stereoVideoAEMaxGain;
- (float)variableFrameRateVideoCaptureFromFWAEMaxGain;
- (float)zoomFactorUpscaleThreshold;
- (id)_avfcAttributes;
- (id)_highResStillImageDimensions;
- (id)_sourceDimensions;
- (id)copyWithNewPixelFormat:(unsigned int)a3;
- (id)copyXPCEncoding;
- (id)fastSwitchingMainCaptureStreamFormat;
- (id)highResStillImageDimensions;
- (int)autoFocusSystem;
- (int)baseSensorPowerConsumption;
- (int)configureForGreenGhostMitigationVersion;
- (int)constantColorVersion;
- (int)fesBinningFactorHorizontal;
- (int)formatIndex;
- (int)greenGhostMitigationVersion;
- (int)horizontalSensorBinningFactor;
- (int)ispPowerConsumption;
- (int)maxIntegrationTimeOverride;
- (int)preferredPreviewMaxFrameRate;
- (int)previewImageQueueSyncStrategy;
- (int)redEyeReductionVersion;
- (int)semanticDevelopmentVersion;
- (int)sensorHDRCompanionIndex;
- (int)sifrBinningFactorOverrideForNondisruptiveSwitching;
- (int)stabilizationTypeOverrideForCinematic;
- (int)stabilizationTypeOverrideForStandard;
- (int)stillImageGDCSourceMode;
- (int)temporalNoiseReductionMode;
- (int)variableSensorPowerConsumption;
- (int)verticalSensorBinningFactor;
- (int)videoStabilizationGeneratedTransformsOutputHeightOverride;
- (int)videoStabilizationGeneratedTransformsOutputWidthOverride;
- (uint64_t)_supportsDepthDataFormatForDisparity:(int)a3 streaming:;
- (unint64_t)_highQualitySensorDimensions;
- (unint64_t)_maxUseableSensorDimensions;
- (unint64_t)_nativeDimensionsWithoutCrop;
- (unint64_t)_outputDimensions;
- (unint64_t)_visibleSensorDimensionsIncludingCinematic:(id *)a1;
- (unsigned)internalDemosaicedRawPixelFormat;
- (unsigned)mediaType;
- (unsigned)supportedDemosaicedRawPixelFormat;
- (unsigned)supportedRawPixelFormat;
- (void)_buildFESCompanionFormatsForType:(uint64_t)a1;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)geometricDistortionCorrectedFieldOfView;
@end

@implementation FigCaptureSourceVideoFormat

- (unint64_t)_outputDimensions
{
  if (result)
  {
    v2 = [objc_msgSend(OUTLINED_FUNCTION_10_23(result) objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    return v2 | ([objc_msgSend(*(v1 + 8) objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}] << 32);
  }

  return result;
}

- (BOOL)isPhotoFormat
{
  v3 = [(FigCaptureSourceVideoFormat *)self _outputDimensions];
  if (fcsf_isHighResPhotoFormat(v3))
  {
    return 1;
  }

  if (fcsf_isHighResPhotoFormat(__ROR8__(v3, 32)))
  {
    return 1;
  }

  v4 = HIDWORD(v3);
  if (v3 == 1280 && v4 == 960)
  {
    return 1;
  }

  v6 = v4 == 1280 || v4 == 720;
  v7 = v6 && v3 == 960;
  v8 = v7;
  v9 = v4 == 960 && v3 == 720;
  if (v9 || v8)
  {
    return 1;
  }

  v10 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"AVCaptureSessionPresets"];

  return [v10 containsObject:@"AVCaptureSessionPresetPhoto"];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(FigCaptureSourceVideoFormat *)&self->super.super.isa _avfcAttributes];
  FigXPCMessageSetCFDictionary();
  return v3;
}

- (BOOL)reactionEffectsSupportedForContinuityCapture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ReactionEffectsSupportedForContinuityCapture"];

  return [v2 BOOLValue];
}

- (float)maxZoomFactor
{
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([(FigCaptureSourceFormat *)self format]);
  LODWORD(v4) = 1.0;
  if (!IsPackedBayerRaw)
  {
    if ([(FigCaptureSourceVideoFormat *)self stabilizationTypeOverrideForCinematic]== 3 || [(FigCaptureSourceVideoFormat *)self stabilizationTypeOverrideForStandard]== 3)
    {
      v5 = [(FigCaptureSourceVideoFormat *)self _outputDimensions];
      LODWORD(v4) = 1107296256;
      if (v5 != 960)
      {
        v6 = HIDWORD(v5);
        if (HIDWORD(v5) != 540)
        {
          LODWORD(v4) = 30.0;
          if (v5 != 1024 && v6 != 768)
          {
            LODWORD(v4) = 24.0;
            if (v5 != 1280 && v6 != 720)
            {
              LODWORD(v4) = 16.0;
              if (v5 != 1920 && v6 != 1080)
              {
                v7 = v6 == 2160 || v5 == 3840;
                LODWORD(v4) = 16.0;
                if (v7)
                {
                  *&v4 = 9.0;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = [(FigCaptureSourceVideoFormat *)&self->super.super.isa _visibleSensorDimensionsIncludingCinematic:?];
      *&v4 = fminf(vcvts_n_f32_s32(v8, 4uLL), vcvts_n_f32_s32(HIDWORD(v8), 4uLL));
    }
  }

  return *&v4;
}

- (int)stabilizationTypeOverrideForCinematic
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationTypeOverrideForCinematic"];

  return [v2 intValue];
}

- (int)stabilizationTypeOverrideForStandard
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationTypeOverrideForStandard"];

  return [v2 intValue];
}

- (BOOL)isBackgroundBlurSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BackgroundBlurSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isBackgroundBlurSupportedForContinuityCapture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BackgroundBlurSupportedForContinuityCapture"];

  return [v2 BOOLValue];
}

- (BOOL)isStudioLightingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StudioLightingSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isStudioLightingSupportedForContinuityCapture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StudioLightingSupportedForContinuityCapture"];

  return [v2 BOOLValue];
}

- (BOOL)reactionEffectsSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ReactionEffectsSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isBackgroundReplacementSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BackgroundReplacementSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isBackgroundReplacementSupportedForContinuityCapture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BackgroundReplacementSupportedForContinuityCapture"];

  return [v2 BOOLValue];
}

- (BOOL)isCinematicFramingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CinematicFramingSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isCinematicFramingSupportedForContinuityCapture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CinematicFramingSupportedForContinuityCapture"];

  return [v2 BOOLValue];
}

- (int)constantColorVersion
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ColorConstancyVersion"];

  return [v2 intValue];
}

- (BOOL)isCinematicVideoSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CinematicVideoSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isManualFramingSupported
{
  v2 = [-[FigCaptureSourceFormat formatDictionary](self->_cinematicFramingFormat "formatDictionary")];

  return [v2 BOOLValue];
}

- (float)stabilizationOverscanPercentageOverrideForCinematic
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationOverscanPercentageOverrideForCinematic"];

  [v2 floatValue];
  return result;
}

- (float)sensorOrientation
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SensorOrientation"];
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

- (id)_highResStillImageDimensions
{
  if (result)
  {
    v1 = result;
    v9 = [MEMORY[0x1E695DF70] array];
    v2 = [v1[1] objectForKeyedSubscript:@"HighResStillImageDimensions"];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = v2;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v3)
    {
      v4 = v3;
      v8 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v11 + 1) + 8 * i);
          [v9 addObject:{-[FigCaptureSourceFormatDimensions initWithDimensions:deferredPhotoProxyDimensions:isPrivate:flavor:maxUpscalingDimensions:]([FigCaptureSourceFormatDimensions alloc], "initWithDimensions:deferredPhotoProxyDimensions:isPrivate:flavor:maxUpscalingDimensions:", objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"Width", "intValue") | (objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"Height", "intValue") << 32), objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"DeferredPhotoProxyWidth", "intValue") | (objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"DeferredPhotoProxyHeight", "intValue") << 32), objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"Private", "BOOLValue"), objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"Flavor", "intValue"), objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"MaxUpscalingWidth", "intValue") | (objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"MaxUpscalingHeight", "intValue") << 32))}];
        }

        v4 = [obj countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v4);
    }

    return [v9 copy];
  }

  return result;
}

- (id)highResStillImageDimensions
{
  v5 = [(FigCaptureSourceVideoFormat *)&self->super.super.isa _highResStillImageDimensions];
  if (![v5 count])
  {
    if ([(FigCaptureSourceVideoFormat *)self isHighResStillImageSupported])
    {
      if ([(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"HighResStillImageWidth"]&& [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"HighResStillImageHeight"])
      {
        var0 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"HighResStillImageWidth", "intValue"}];
        v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"HighResStillImageHeight", "intValue"}];
      }

      else
      {
        [(FigCaptureSourceVideoFormat *)&self->super.super.isa _maxUseableSensorDimensions];
        v10 = [OUTLINED_FUNCTION_9_25() horizontalSensorBinningFactor];
        v11 = v10 / [(FigCaptureSourceVideoFormat *)self verticalSensorBinningFactor];
        if (v11 != 1.0)
        {
          if (v11 < 1.0)
          {
            var0 = (v11 * var0);
          }

          else
          {
            v3 = (v11 * v3);
          }
        }
      }

      if ([(FigCaptureSourceVideoFormat *)self isDeferredPhotoProcessingSupported])
      {
        v6 = var0 | (v3 << 32);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v7 = [(FigCaptureSourceFormat *)self dimensions];
      v6 = 0;
      v3 = HIDWORD(*&v7);
      var0 = v7.var0;
    }

    if (var0 >= 1 && v3 >= 1)
    {
      v12 = [[FigCaptureSourceFormatDimensions alloc] initWithDimensions:var0 | (v3 << 32) deferredPhotoProxyDimensions:v6 isPrivate:0 flavor:0 maxUpscalingDimensions:0];
      return [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    }
  }

  return v5;
}

- (BOOL)capturesStillsFromVideoStream
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CaptureStillsFromVideoStream"];

  return [v2 BOOLValue];
}

- (id)_sourceDimensions
{
  if (result)
  {
    v1 = result;
    v2 = [result sensorCropDimensions];
    if (v2 < 1 || SHIDWORD(v2) < 1)
    {
      v4 = [v1 sensorDimensions];
    }

    else
    {
      v4 = [v1 sensorCropDimensions];
    }

    v5 = v4;
    v6 = HIDWORD(v4);
    v7 = [objc_msgSend(v1[1] objectForKeyedSubscript:{@"HighQualitySensorWidth", "intValue"}];
    v8 = [objc_msgSend(v1[1] objectForKeyedSubscript:{@"HighQualitySensorHeight", "intValue"}];
    if (v7 > v5 || v7 == 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v8 > v6 || v8 == 0)
    {
      v8 = v6;
    }

    return (v10 | (v8 << 32));
  }

  return result;
}

- (unint64_t)_maxUseableSensorDimensions
{
  if (!a1)
  {
    return 0;
  }

  [(FigCaptureSourceVideoFormat *)a1 _sourceDimensions];
  v2 = [OUTLINED_FUNCTION_12_26() sourceCropAspectRatio];
  v3 = v2;
  v4 = HIDWORD(v2);
  if (v2 < 1 || SHIDWORD(v2) < 1)
  {
    return v1;
  }

  v7 = FigCapturePlatformIdentifier();
  if (v7 <= 5)
  {
    v8 = 0x200000002;
  }

  else
  {
    v8 = 0x200000004;
  }

  return FigCaptureFitAspectInsideDimensions(v1, v8, v3 / v4);
}

- ($2825F4736939C4A6D3AD43837233062D)sourceCropAspectRatio
{
  [(FigCaptureSourceVideoFormat *)self _outputDimensions];
  v6 = [OUTLINED_FUNCTION_12_26() postGDCCropDimensions];
  v7 = HIDWORD(v6);
  v8 = v6 < 1 || SHIDWORD(v6) < 1;
  if (v8 && ((v6 = [-[NSArray lastObject](self->_frontEndScalerCompanionFormats "lastObject")], v7 = HIDWORD(v6), v6 >= 1) ? (v9 = SHIDWORD(v6) < 1) : (v9 = 1), v9))
  {
    [(FigCaptureSourceVideoFormat *)&self->super.super.isa _sourceDimensions];
    v12 = ([OUTLINED_FUNCTION_9_25() horizontalSensorBinningFactor] * v3);
    v10 = v12 / ([(FigCaptureSourceVideoFormat *)self verticalSensorBinningFactor]* v4);
  }

  else
  {
    v10 = v6 / v7;
  }

  if (vabds_f32(v10, v2.var0 / v2.var1) <= 0.01)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (int)horizontalSensorBinningFactor
{
  if ([(FigCaptureSourceVideoFormat *)self isBinned])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *off_1E798D3D8;
  if (![(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798D3D8])
  {
    return v3;
  }

  v5 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:v4];

  return [v5 intValue];
}

- (BOOL)isBinned
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798D3F0];

  return [v2 BOOLValue];
}

- (int)verticalSensorBinningFactor
{
  if ([(FigCaptureSourceVideoFormat *)self isBinned])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *off_1E798D3E0;
  if (![(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798D3E0])
  {
    return v3;
  }

  v5 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:v4];

  return [v5 intValue];
}

- (BOOL)isDeferredPhotoProcessingSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"DeferredPhotoProcessingSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isSmartCropSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SmartCropSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isDynamicAspectRatioSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"DynamicAspectRatioSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isSmartFramingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SmartFramingSupported"];

  return [v2 BOOLValue];
}

- (FigCaptureSourceVideoFormat)_resolveProperties
{
  if (result)
  {
    v1 = result;
    result->_frontEndScalerCompanionFormats = [(FigCaptureSourceVideoFormat *)result _buildFESCompanionFormatsForType:?];
    v2 = [*(v1 + 8) objectForKeyedSubscript:@"SupportedDepthDataFormats"];
    if ([v2 count])
    {
      v43 = v1;
      v3 = objc_alloc(MEMORY[0x1E695DF70]);
      [OUTLINED_FUNCTION_12_26() count];
      v4 = [OUTLINED_FUNCTION_17() initWithCapacity:?];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v47 = [v2 countByEnumeratingWithState:&v66 objects:v65 count:16];
      if (v47)
      {
        v46 = *v67;
        obj = v2;
        v45 = *MEMORY[0x1E6966130];
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v67 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v66 + 1) + 8 * i);
            [v6 objectForKeyedSubscript:v45];
            v7 = [OUTLINED_FUNCTION_17() arrayWithObject:?];
            v8 = [v7 addObjectsFromArray:{objc_msgSend(v6, "objectForKeyedSubscript:", @"AdditionalPixelFormats"}];
            v16 = OUTLINED_FUNCTION_132(v8, v9, v10, v11, v12, v13, v14, v15, v42, v43, obj, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, 0);
            if (v16)
            {
              v17 = v16;
              v18 = 0;
              v19 = MEMORY[0];
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (MEMORY[0] != v19)
                  {
                    objc_enumerationMutation(v7);
                  }

                  [*(8 * j) intValue];
                  if (v18)
                  {
                    v21 = [OUTLINED_FUNCTION_17() copyWithNewPixelFormat:?];
                  }

                  else
                  {
                    v21 = [(FigCaptureSourceFormat *)[FigCaptureSourceDepthDataFormat alloc] initWithFigCaptureStreamFormatDictionary:v6];
                    v18 = v21;
                  }

                  [v4 addObject:v21];
                }

                v17 = OUTLINED_FUNCTION_132(v22, v23, v24, v25, v26, v27, v28, v29, v42, v43, obj, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
              }

              while (v17);
            }
          }

          v47 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
        }

        while (v47);
      }

      v1 = v43;
      *(v43 + 144) = v4;
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"NonSIFRCompanionFormat"])
    {
      v30 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"NonSIFRCompanionFormat"];
      *(v1 + 56) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"FullBinSIFRCompanionFormat"])
    {
      v31 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"FullBinSIFRCompanionFormat"];
      *(v1 + 64) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"MidFrameSynchronizationOptimizedCompanionFormat"])
    {
      v32 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"MidFrameSynchronizationOptimizedCompanionFormat"];
      *(v1 + 72) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"ActionCameraCompanionFormat"])
    {
      v33 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"ActionCameraCompanionFormat"];
      *(v1 + 80) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"DepthCompanionFormat"])
    {
      v34 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"DepthCompanionFormat"];
      *(v1 + 88) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"UltraHighResCompanionFormat"])
    {
      v35 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"UltraHighResCompanionFormat"];
      *(v1 + 96) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"FSDNetCompanionFormat"])
    {
      v36 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"FSDNetCompanionFormat"];
      *(v1 + 104) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([*(v1 + 8) objectForKeyedSubscript:@"StereoVideoCompanionFormat"])
    {
      v37 = [FigCaptureSourceCompanionFormat alloc];
      [OUTLINED_FUNCTION_1_59() objectForKeyedSubscript:@"StereoVideoCompanionFormat"];
      *(v1 + 112) = [OUTLINED_FUNCTION_17() initWithCompanionFormatDictionary:?];
    }

    if ([objc_msgSend(*(v1 + 8) objectForKeyedSubscript:{@"GeometricDistortionCorrectionSourceFormat", "mutableCopy"}])
    {
      OUTLINED_FUNCTION_7_32();
      v38 = [OUTLINED_FUNCTION_17() numberWithUnsignedInt:?];
      OUTLINED_FUNCTION_6_36(v38);
      *(v1 + 136) = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:BWAdaptiveBracketingFrameParameters.superclass];
    }

    if ([objc_msgSend(*(v1 + 8) objectForKeyedSubscript:{@"CinematicFramingSourceFormat", "mutableCopy"}])
    {
      OUTLINED_FUNCTION_7_32();
      v39 = [OUTLINED_FUNCTION_17() numberWithUnsignedInt:?];
      OUTLINED_FUNCTION_6_36(v39);
      *(v1 + 120) = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:BWAdaptiveBracketingFrameParameters.superclass];
    }

    if ([objc_msgSend(*(v1 + 8) objectForKeyedSubscript:{@"SmartCropSourceFormat", "mutableCopy"}])
    {
      OUTLINED_FUNCTION_7_32();
      v40 = [OUTLINED_FUNCTION_17() numberWithUnsignedInt:?];
      OUTLINED_FUNCTION_6_36(v40);
      *(v1 + 128) = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:BWAdaptiveBracketingFrameParameters.superclass];
    }

    result = [objc_msgSend(*(v1 + 8) objectForKeyedSubscript:{@"FastSwitchingMainCaptureStreamFormat", "mutableCopy"}];
    if (result)
    {
      OUTLINED_FUNCTION_7_32();
      v41 = [OUTLINED_FUNCTION_17() numberWithUnsignedInt:?];
      OUTLINED_FUNCTION_6_36(v41);
      result = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:BWAdaptiveBracketingFrameParameters.superclass];
      *(v1 + 152) = result;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceVideoFormat;
  [(FigCaptureSourceFormat *)&v3 dealloc];
}

- (unsigned)mediaType
{
  v3 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MediaType"];
  if (v3)
  {

    return BWOSTypeForString(v3);
  }

  else if ([(FigCaptureSourceFormat *)self format]== 1785950320)
  {
    return 1885564004;
  }

  else
  {
    return 1986618469;
  }
}

- (id)_avfcAttributes
{
  if (!a1)
  {
    return 0;
  }

  if (qword_1ED844F00 != -1)
  {
    dispatch_once(&qword_1ED844F00, &__block_literal_global_827);
  }

  v2 = [a1[1] mutableCopy];
  [v2 removeObjectsForKeys:_MergedGlobals_5];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a1, "format")}];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E6966130]];
  v4 = [a1 supportedDepthDataFormats];
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v13 = OUTLINED_FUNCTION_1_2(v5, v6, v7, v8, v9, v10, v11, v12, v29, v2, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, 0);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(v4);
          }

          v17 = *(8 * i);
          v18 = [v17[1] objectForKeyedSubscript:@"AdditionalPixelFormats"];
          v19 = [v18 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v17, "format"))}];
          if ((v19 & 1) == 0)
          {
            v27 = [v17[1] mutableCopy];
            [v27 removeObjectsForKeys:_MergedGlobals_5];
            [v5 addObject:v27];
          }
        }

        v14 = OUTLINED_FUNCTION_1_2(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64);
      }

      while (v14);
    }

    v2 = v31;
    [v31 setObject:v5 forKeyedSubscript:@"SupportedDepthDataFormats"];
  }

  return v2;
}

- (BOOL)intelligentDistortionCorrectionSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"IntelligentDistortionCorrectionSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isStillImageStabilizationSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SISSupported"];

  return [v2 BOOLValue];
}

- (int)greenGhostMitigationVersion
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"GreenGhostMitigationVersion"];

  return [v2 intValue];
}

- (int)configureForGreenGhostMitigationVersion
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForGreenGhostMitigationVersion"];

  return [v4 intValue];
}

- (int)stillImageGDCSourceMode
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StillImageGDCSourceMode"];

  return [v2 intValue];
}

- (BOOL)isZeroShutterLagSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ZeroShutterLagSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isHighPhotoQualitySupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"HighPhotoQualitySupported"];

  return [v2 BOOLValue];
}

- (BOOL)zeroShutterLagRequiresUserInitiatedCaptureRequestTime
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ZeroShutterLagRequiresUserInitiatedCaptureRequestTime"];

  return [v2 BOOLValue];
}

- (BOOL)swfrSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SWFRSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isDeepFusionSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"DeepFusionSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (float)spatialOverCapturePercentage
{
  v2 = [(FigCaptureSourceVideoFormat *)self isSpatialOverCaptureSupported];
  result = 40.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)isSpatialOverCaptureSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SpatialOverCaptureSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isSIFRStillImageCaptureWithDepthDataDisabled
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"SIFRStillImageCaptureWithDepthDataDisabled", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (float)maxContinuousZoomFactorForDepthDataDelivery
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MaxContinuousZoomFactorForDepthDataDelivery"];

  [v2 floatValue];
  return result;
}

- (BOOL)isSIFRSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798C960];

  return [v2 BOOLValue];
}

- (BOOL)configureForSoftISPSupport
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForSoftISPSupport"];

  return [v4 BOOLValue];
}

- (BOOL)isIrisVideoStabilizationSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"IrisVideoStabilizationSupported"];

  return [v2 BOOLValue];
}

- (float)cinematicStabilizationExtendedLookAheadDuration
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CinematicVideoStabilizationExtendedLookAheadDuration"];

  [v2 floatValue];
  return result;
}

- (BOOL)isVideoSTFSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoSTFSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isVideoSTFMetadataEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoSTFMetadataEnabled"];

  return [v2 BOOLValue];
}

- (BOOL)isStudioAndContourPreviewRenderingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StudioAndContourPreviewRenderingSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isPortraitAutoSuggestSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"PortraitAutoSuggestSupported", "BOOLValue"}];
  if ([(FigCaptureSourceVideoFormat *)self isPhotoFormat]&& BWDeviceModelHasCharleston())
  {
    [(FigCaptureSourceVideoFormat *)self sensorOrientation];
  }

  return v3;
}

- (int)redEyeReductionVersion
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"RedEyeReductionVersion"];

  return [v2 intValue];
}

- (int)temporalNoiseReductionMode
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"TemporalNoiseReductionMode"];

  return [v2 intValue];
}

- (BOOL)isVideoHDRFusionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoHDRFusionSupported"];

  return [v2 BOOLValue];
}

- (BOOL)configureForNonDisruptiveFullBinSIFRSwitching
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForNonDisruptiveFullBinSIFRSwitching"];

  return [v4 BOOLValue];
}

- (BOOL)stillImageEnhancedResByMaintainingSensorResolutionSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"StillImageEnhancedResByMaintainingSensorResolutionSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isWideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"WideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled"];

  return [v2 BOOLValue];
}

- (BOOL)isStillImageISPMultiBandNoiseReductionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StillImageISPMultiBandNoiseReductionSupported"];

  return [v2 BOOLValue];
}

- (int)autoFocusSystem
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"AutoFocusSystem"];

  return [v2 intValue];
}

- (CGPoint)sensorCenterOffset
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"SensorCenterOffsetX", "intValue"}];
  v4 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"SensorCenterOffsetY", "intValue"}];
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (BOOL)fullBinSIFROnSecondaryCameraAllowed
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FullBinSIFROnSecondaryCameraAllowed"];

  return [v2 BOOLValue];
}

- (BOOL)machineLearningVideoNoiseReductionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MachineLearningVideoNoiseReductionSupported"];

  return [v2 BOOLValue];
}

- (int)sifrBinningFactorOverrideForNondisruptiveSwitching
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SIFRBinningFactorOverrideForNondisruptiveSwitching"];

  return [v2 intValue];
}

- (BOOL)usesPacked10BitFirmwareStillImageOutputPixelFormat
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"UsesPacked10BitFirmwareStillImageOutputPixelFormat"];

  return [v2 BOOLValue];
}

- (BOOL)ispChromaNoiseReductionEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ISPChromaNoiseReduction"];

  return [v2 BOOLValue];
}

- (float)defaultPortraitLightingEffectStrength
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"DefaultPortraitLightingEffectStrength"];
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

- (int)preferredPreviewMaxFrameRate
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"PreferredPreviewMaxFrameRate"];

  return [v2 intValue];
}

- (BOOL)isBackgroundBlurProvidedBySource
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BackgroundBlurProvidedBySource"];

  return [v2 BOOLValue];
}

- (BOOL)isStudioLightingProvidedBySource
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StudioLightingProvidedBySource"];

  return [v2 BOOLValue];
}

- (BOOL)reactionEffectsProvidedBySource
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ReactionEffectsProvidedBySource"];

  return [v2 BOOLValue];
}

- (BOOL)isBackgroundReplacementProvidedBySource
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BackgroundReplacementProvidedBySource"];

  return [v2 BOOLValue];
}

- (BOOL)isSecondaryScalerUnavailable
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SecondaryScalerUnavailable"];

  return [v2 BOOLValue];
}

- (BOOL)sushiRawSupported
{
  v3 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SushiRawSupported"];
  formatDictionary = self->super._formatDictionary;
  if (!v3)
  {
    return [-[NSDictionary objectForKeyedSubscript:](formatDictionary objectForKeyedSubscript:{@"SupportedRawPixelFormat", "intValue"}] != 0;
  }

  v5 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"SushiRawSupported"];

  return [v5 BOOLValue];
}

- (BOOL)isStereoFusionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StereoFusionSupported"];

  return [v2 BOOLValue];
}

- (CGRect)maxVisibleSensorRect
{
  [(FigCaptureSourceVideoFormat *)&self->super.super.isa _maxUseableSensorDimensions];
  [OUTLINED_FUNCTION_12_26() sensorDimensions];
  v6 = [OUTLINED_FUNCTION_9_25() preGDCSensorCropDimensions];
  if (v6 >= 1 && SHIDWORD(v6) >= 1)
  {
    v2 = [(FigCaptureSourceVideoFormat *)self preGDCSensorCropDimensions];
  }

  v8 = HIDWORD(*&v2);
  v9 = 0.0;
  if (v3 <= v2.var0 && v4 <= v2.var1)
  {
    LODWORD(v8) = v4;
    v2.var0 = v3;
    v12 = 0.0;
  }

  else
  {
    [(FigCaptureSourceVideoFormat *)self sensorCenterOffset];
    v12 = v11 + ((v3 - v2.var0) / 2);
    v9 = v13 + ((v4 - v2.var1) / 2);
  }

  var0 = v2.var0;
  v15 = v8;
  result.size.height = v15;
  result.size.width = var0;
  result.origin.y = v9;
  result.origin.x = v12;
  return result;
}

- (BOOL)isWideAsStatisticsPrimaryEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"WideAsStatsMasterEnabled"];

  return [v2 BOOLValue];
}

- (BOOL)isAWBStatisticsAveragingEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"AWBStatisticsAveragingEnabled"];

  return [v2 BOOLValue];
}

- (BOOL)isHDRSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"HDRSupported"];

  return [v2 BOOLValue];
}

- (int)formatIndex
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"Index"];
  if (!v2)
  {
    return -1;
  }

  return [v2 intValue];
}

- (id)fastSwitchingMainCaptureStreamFormat
{
  if ([(FigCaptureSourceVideoFormat *)self isFastSwitchingConfigurationRequired])
  {
    return self->_fastSwitchingMainCaptureStreamFormat;
  }

  else
  {
    return 0;
  }
}

- (int)fesBinningFactorHorizontal
{
  result = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"FESBinningFactorHorizontal", "intValue"}];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (unint64_t)_highQualitySensorDimensions
{
  if (result)
  {
    v2 = [objc_msgSend(OUTLINED_FUNCTION_10_23(result) objectForKeyedSubscript:{@"HighQualitySensorWidth", "intValue"}];
    return v2 | ([objc_msgSend(*(v1 + 8) objectForKeyedSubscript:{@"HighQualitySensorHeight", "intValue"}] << 32);
  }

  return result;
}

- (BOOL)isStillImageOutputDownscaledInHWISP
{
  v3 = [(FigCaptureSourceVideoFormat *)&self->super.super.isa _sourceDimensions];
  v4 = v3;
  v5 = v3 >> 32;
  v6 = [objc_msgSend(-[FigCaptureSourceVideoFormat highResStillImageDimensions](self "highResStillImageDimensions")];
  if (v4 <= 4608 && v5 < 4609)
  {
    return 0;
  }

  v8 = v6;
  v9 = HIDWORD(v6);
  v10 = [-[FigCaptureSourceVideoFormat highResStillImageDimensions](self "highResStillImageDimensions")];
  return v4 > v8 && v5 > v9 && v10 == 1;
}

- (BOOL)isContentAwareEnhancementSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ContentAwareEnhancementSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isContentAwareAWBSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ContentAwareAWBSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isMultiIlluminantWhiteBalanceSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MultiIlluminantWhiteBalanceSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isVideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData"];

  return [v2 BOOLValue];
}

- (BOOL)isVideoGreenGhostOfflineMetadataEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoGreenGhostOfflineMetadataEnabled"];

  return [v2 BOOLValue];
}

- (float)lowLightVideoAEMaxGain
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"LowLightVideoAEMaxGain"];

  [v2 floatValue];
  return result;
}

- (float)variableFrameRateVideoCaptureFromFWAEMaxGain
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VariableFrameRateVideoCaptureFromFWAEMaxGain"];

  [v2 floatValue];
  return result;
}

- (float)aeMaxGain
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"AEMaxGain"];

  [v2 floatValue];
  return result;
}

- (int)maxIntegrationTimeOverride
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MaxIntegrationTimeOverride"];

  return [v2 intValue];
}

- (BOOL)configureForStillImageStabilizationSupport
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForSISSupport"];

  return [v4 BOOLValue];
}

- (BOOL)configureForSpatialOverCaptureSupport
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForSpatialOverCaptureSupport"];

  return [v4 BOOLValue];
}

- (BOOL)configureForDigitalFlashSupport
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForDigitalFlashSupport"];

  return [v4 BOOLValue];
}

- (BOOL)configureForDepthDataDelivery
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForDepthDataDelivery"];

  return [v4 BOOLValue];
}

- (BOOL)isStagePreviewRenderingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StagePreviewRenderingSupported"];

  return [v2 BOOLValue];
}

- (int)previewImageQueueSyncStrategy
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"PreviewImageQueueSyncStrategy"];

  return [v2 intValue];
}

- (float)defaultSimulatedAperture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"DefaultSimulatedAperture"];

  [v2 floatValue];
  return result;
}

- (BOOL)semanticRenderingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SemanticRenderingSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isDeepZoomSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"DeepZoomSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isDigitalFlashRawNightModeSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"DigitalFlashRawNightModeSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isLearnedFusionSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"LearnedFusionSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isLearnedNRSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"LearnedNRSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isLearnedHRNRSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"LearnedHRNRSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isResponsiveShutterSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ResponsiveShutterSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isCaptureTimePhotoCurationSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CaptureTimePhotoCurationSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isGainMapSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"GainMapSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isSemanticStyleRenderingSupported
{
  if ([(FigCaptureSourceVideoFormat *)self isPhotoFormat]|| (v3 = [(FigCaptureSourceVideoFormat *)self isLearnedNRSupported]) != 0)
  {
    v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"SemanticStyleRenderingSupported", "BOOLValue"}];
    if (v3)
    {
      LOBYTE(v3) = ![(FigCaptureSourceVideoFormat *)self isSmartStyleRenderingSupported];
    }
  }

  return v3;
}

- (BOOL)isSmartStyleRenderingSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SmartStyleRenderingSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isLensSmudgeDetectionSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"LensSmudgeDetectionSupported", "BOOLValue"}];
  v4 = [(FigCaptureSourceVideoFormat *)self previewDimensions];
  v6 = v4.var0 > 1023 && v4.var1 > 1023;
  return v3 && v6;
}

- (BOOL)isVideoGreenGhostMitigationSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoGreenGhostMitigationSupported"];

  return [v2 BOOLValue];
}

- (NSArray)supportedColorSpaces
{
  v3 = [(FigCaptureSourceFormat *)self format];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (v3 == 2016686640)
  {
    v6 = &unk_1F2243E10;
    goto LABEL_13;
  }

  if (v3 != 2016686642)
  {
    if (FigCapturePixelFormatIsPackedBayerRaw(v3))
    {
      [v5 addObject:&unk_1F2243E40];
LABEL_12:
      v6 = &unk_1F2243E58;
      goto LABEL_13;
    }

    [v5 addObject:&unk_1F2243E28];
    if (![-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"WideColorSupported", "BOOLValue"}] || v3 != 875704422)
    {
      goto LABEL_14;
    }

    v6 = &unk_1F2243E70;
LABEL_13:
    [v5 addObject:v6];
    goto LABEL_14;
  }

  [v4 addObject:&unk_1F2243E28];
  if ([(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"10BitVideoHDRSupportedForProRes"])
  {
    [v5 addObject:&unk_1F2243E10];
  }

  if ([(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"AppleLogSupportedForProRes"])
  {
    [v5 addObject:&unk_1F2243E40];
  }

  if ([(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"AppleLog2SupportedForProRes"])
  {
    goto LABEL_12;
  }

LABEL_14:
  v7 = [v5 copy];

  return v7;
}

- (float)fieldOfView
{
  v3 = [(FigCaptureSourceVideoFormat *)&self->super.super.isa _maxUseableSensorDimensions];
  LODWORD(v4) = 1.0;
  if (v3)
  {
    *&v4 = v3 / [(FigCaptureSourceVideoFormat *)self sensorDimensions];
  }

  return [(FigCaptureSourceVideoFormat *)self _fieldOfViewWithCrop:?];
}

- (float)geometricDistortionCorrectedFieldOfView
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"StillImageGDCInDCProcessorOutputCropWidth", "intValue"}];
  v4 = *(MEMORY[0x1E695F050] + 16);
  v6 = *MEMORY[0x1E695F050];
  *v7 = v4;
  if (v3 || !FigCFDictionaryGetCGRectIfPresent() || v7[0] == 0.0)
  {
    [(FigCaptureSourceVideoFormat *)self fieldOfView];
  }

  else
  {
    [(FigCaptureSourceVideoFormat *)&v6 geometricDistortionCorrectedFieldOfView];
    return v8;
  }

  return result;
}

- (float)_geometricDistortionCorrectedFieldOfViewCropMultiplier
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [objc_msgSend(OUTLINED_FUNCTION_10_23(a1) objectForKeyedSubscript:{@"StillImageGDCInDCProcessorOutputCropWidth", "intValue"}];
  v7 = *(MEMORY[0x1E695F050] + 16);
  v3 = 1.0;
  if (!v2)
  {
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      if (*&v7 != 0.0)
      {
        v5 = [(FigCaptureSourceVideoFormat *)v1 _nativeDimensionsWithoutCrop];
        if (*(&v7 + 1) / OUTLINED_FUNCTION_14_15(v5) <= 1.0)
        {
          v6 = [(FigCaptureSourceVideoFormat *)v1 _nativeDimensionsWithoutCrop];
          return *(&v7 + 1) / OUTLINED_FUNCTION_14_15(v6);
        }
      }
    }
  }

  return v3;
}

- (unint64_t)_nativeDimensionsWithoutCrop
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_10_23(a1);
    v3 = *off_1E798C938;
    if ([v2 objectForKeyedSubscript:*off_1E798C938] && (v4 = *off_1E798C930, objc_msgSend(v1[1], "objectForKeyedSubscript:", *off_1E798C930)))
    {
      v5 = [objc_msgSend(v1[1] objectForKeyedSubscript:{v3), "intValue"}];
      a1 = [objc_msgSend(v1[1] objectForKeyedSubscript:{v4), "intValue"}];
    }

    else
    {
      v6 = [v1 sensorDimensions];
      v5 = v6;
      a1 = HIDWORD(v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 | (a1 << 32);
}

- (float)zoomFactorUpscaleThreshold
{
  v3 = [(FigCaptureSourceVideoFormat *)&self->super.super.isa _visibleSensorDimensionsIncludingCinematic:?];
  v4 = v3;
  v5 = HIDWORD(v3);
  v6 = [(FigCaptureSourceVideoFormat *)self _outputDimensions];
  return fmaxf(fminf(v4 / v6, v5 / SHIDWORD(v6)), 1.0);
}

- (NSArray)secondaryNativeResolutionZoomFactors
{
  if (FigCapturePixelFormatIsPackedBayerRaw([(FigCaptureSourceFormat *)self format]))
  {
    return 0;
  }

  formatDictionary = self->super._formatDictionary;

  return [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"SecondaryNativeResolutionZoomFactors"];
}

- (float)minISO
{
  [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{*off_1E798C940), "floatValue"}];
  v3 = v2;
  if (v2 == 0.0 && BWCaptureIsRunningInIOSAppOnMacEnvironment())
  {
    return 50.0;
  }

  return v3;
}

- (float)maxISO
{
  [(FigCaptureSourceVideoFormat *)self minISO];
  v4 = v3;
  if (v3 > 0.0)
  {
    [(FigCaptureSourceVideoFormat *)self aeMaxGain];
    if (v5 == 0.0)
    {
      [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{*off_1E798C928), "floatValue"}];
      v5 = v6 * 0.0039062;
    }

    return v4 * fmaxf(v5, 1.0);
  }

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minExposureDuration
{
  v4 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{*off_1E798D410), "intValue"}];

  return CMTimeMake(retstr, v4, 1000000);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxExposureDuration
{
  v5 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{*off_1E798D400), "intValue"}];
  memset(&v11, 0, sizeof(v11));
  CMTimeMake(&v11, v5, 1000000);
  memset(&v10, 0, sizeof(v10));
  [(FigCaptureSourceFormat *)self minSupportedFrameRate];
  CMTimeMake(&v10, 1, v6);
  time1 = v11;
  v8 = v10;
  return CMTimeMinimum(retstr, &time1, &v8);
}

- (BOOL)isWideColorSupported
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(FigCaptureSourceVideoFormat *)self supportedColorSpaces];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * v6) intValue] - 1 < 5)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)isMultiCamSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MultiCamSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isStereoVideoCaptureSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StereoVideoCaptureSupported"];

  return [v2 BOOLValue];
}

- (float)minSimulatedAperture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MinSimulatedAperture"];

  [v2 floatValue];
  return result;
}

- (float)maxSimulatedAperture
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MaxSimulatedAperture"];

  [v2 floatValue];
  return result;
}

- (float)minPortraitLightingEffectStrength
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MinPortraitLightingEffectStrength"];
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

- (float)maxPortraitLightingEffectStrength
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MaxPortraitLightingEffectStrength"];
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

- (BOOL)isZeroShutterLagWithDepthSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ZeroShutterLagWithDepthSupported"];

  return [v2 BOOLValue];
}

- (float)maxContinuousZoomFactorForCinematicVideo
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"MaxContinuousZoomFactorForCinematicVideo"];

  [v2 floatValue];
  return result;
}

- (BOOL)isIrisSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"IrisSupported"];

  return [v2 BOOLValue];
}

- (unsigned)supportedRawPixelFormat
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SupportedRawPixelFormat"];

  return [v2 intValue];
}

- (BOOL)isHDROriginalImageDeliverySupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"HDROriginalImageDeliverySupported"];

  return [v2 BOOLValue];
}

- (BOOL)isDigitalFlashSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"DigitalFlashSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isFocusPixelBlurScoreSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FocusPixelBlurScoreSupported"];

  return [v2 BOOLValue];
}

- (unsigned)internalDemosaicedRawPixelFormat
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"InternalDemosaicedRawPixelFormat", "intValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (unsigned)supportedDemosaicedRawPixelFormat
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"SupportedDemosaicedRawPixelFormat", "intValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isUltraHighResolutionZeroShutterLagSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"UltraHighResolutionZeroShutterLagSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isStereoPhotoCaptureSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"StereoPhotoCaptureSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported
{
  if (![(FigCaptureSourceVideoFormat *)self isPhotoFormat]&& ![(FigCaptureSourceVideoFormat *)self isLearnedNRSupported]|| ![(FigCaptureSourceVideoFormat *)self isSmartStyleRenderingSupported])
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ApplyStandardSmartStyleForStillsWhenNoStyleRequestedSupported"];

  return [v3 BOOLValue];
}

- ($2825F4736939C4A6D3AD43837233062D)previewDimensions
{
  p_previewDimensions = &self->_previewDimensions;
  if (!self->_previewDimensions.width)
  {
    v4 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"PreferredPreviewWidth", "intValue"}];
    v5 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"PreferredPreviewHeight", "intValue"}];
    p_previewDimensions->var0 = v4;
    p_previewDimensions->var1 = v5;
    if (!v4)
    {
      v6 = [(FigCaptureSourceFormat *)self dimensions];
      if ([(FigCaptureSourceVideoFormat *)self cinematicFramingOutputDimensions]&& [(FigCaptureSourceVideoFormat *)self cinematicFramingOutputDimensions]>> 32)
      {
        v6 = [(FigCaptureSourceVideoFormat *)self cinematicFramingOutputDimensions];
      }

      if ([(FigCaptureSourceVideoFormat *)self smartCropOutputDimensions]&& [(FigCaptureSourceVideoFormat *)self smartCropOutputDimensions]>> 32)
      {
        v6 = [(FigCaptureSourceVideoFormat *)self smartCropOutputDimensions];
      }

      v7 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SensorOrientation"];
      if (v7)
      {
        v8 = [v7 intValue] % 180 == 90;
      }

      else
      {
        v8 = 1;
      }

      if ([(FigCaptureSourceVideoFormat *)self isDynamicAspectRatioSupported]&& v6.var0 == v6.var1)
      {
        v9 = 0;
        LODWORD(v10) = 0;
        do
        {
          v11 = FigCaptureOptimalVideoPreviewDimensionsForSourceDimensions(*&v6, v8, v9);
          v12 = HIDWORD(v11);
          if (v11 > SHIDWORD(v11))
          {
            LODWORD(v12) = v11;
          }

          if (v10 <= v12)
          {
            v10 = v12;
          }

          else
          {
            v10 = v10;
          }

          ++v9;
        }

        while (v9 != 6);
        v13 = v10 | (v10 << 32);
      }

      else
      {
        v13 = FigCaptureOptimalVideoPreviewDimensionsForSourceDimensions(*&v6, v8, 0);
      }

      *p_previewDimensions = v13;
    }
  }

  return *p_previewDimensions;
}

- (BOOL)isCinematicFramingProvidedBySource
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CinematicFramingProvidedBySource"];

  return [v2 BOOLValue];
}

- (BOOL)isSupplementalTimeOfFlightCameraSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SupplementalTimeOfFlightCameraSupported"];

  return [v2 BOOLValue];
}

- (FigCaptureSourceVideoFormat)initWithFigCaptureStreamFormatDictionary:(id)a3 pixelFormatOverride:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = FigCaptureSourceVideoFormat;
  v4 = [(FigCaptureSourceFormat *)&v7 initWithFigCaptureStreamFormatDictionary:a3 pixelFormatOverride:*&a4];
  v5 = v4;
  if (v4)
  {
    [(FigCaptureSourceVideoFormat *)v4 _resolveProperties];
  }

  return v5;
}

- (FigCaptureSourceVideoFormat)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    FigXPCMessageCopyCFDictionary();
    [FigCaptureSourceVideoFormat initWithXPCEncoding:];
  }

  else
  {
    [FigCaptureSourceVideoFormat initWithXPCEncoding:];
  }

  return 0;
}

- (FigCaptureSourceVideoFormat)initWithCoder:(id)a3
{
  v4 = [a3 decodePropertyListForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "formatDictionary")}];

  return [(FigCaptureSourceVideoFormat *)self initWithFigCaptureStreamFormatDictionary:v4];
}

- (void)encodeWithCoder:(id)a3
{
  formatDictionary = self->super._formatDictionary;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"formatDictionary"];

  [a3 encodeObject:formatDictionary forKey:v5];
}

- (id)copyWithNewPixelFormat:(unsigned int)a3
{
  if (!self->super._formatDictionary)
  {
    return 0;
  }

  v3 = *&a3;
  v5 = [FigCaptureSourceVideoFormat alloc];
  formatDictionary = self->super._formatDictionary;

  return [(FigCaptureSourceVideoFormat *)v5 initWithFigCaptureStreamFormatDictionary:formatDictionary pixelFormatOverride:v3];
}

- ($2825F4736939C4A6D3AD43837233062D)nativeDimensions
{
  if ([(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CropWidthForFES"]&& [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"CropHeightForFES"])
  {
    var0 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"CropWidthForFES", "intValue"}];
    formatDictionary = self->super._formatDictionary;
    v5 = @"CropHeightForFES";
  }

  else
  {
    v6 = *off_1E798C938;
    if ([(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798C938]&& (v7 = *off_1E798C930, [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798C930]))
    {
      var0 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{v6), "intValue"}];
      formatDictionary = self->super._formatDictionary;
      v5 = v7;
    }

    else
    {
      if (![(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SensorCropWidth"]|| ![(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SensorCropHeight"])
      {
        v9 = [(FigCaptureSourceVideoFormat *)self sensorDimensions];
        var0 = v9.var0;
        v8 = HIDWORD(*&v9);
        return (var0 | (v8 << 32));
      }

      var0 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"SensorCropWidth", "intValue"}];
      formatDictionary = self->super._formatDictionary;
      v5 = @"SensorCropHeight";
    }
  }

  v8 = [-[NSDictionary objectForKeyedSubscript:](formatDictionary objectForKeyedSubscript:{v5), "intValue"}];
  return (var0 | (v8 << 32));
}

- ($2825F4736939C4A6D3AD43837233062D)previewDimensionsForAspectRatio:(int)a3
{
  v4 = [(FigCaptureSourceVideoFormat *)self previewDimensions];

  return FigCaptureConvertDimensionsForAspectRatio(*&v4, a3);
}

- (float)defaultMinFrameRateForSessionPreset:(id)a3
{
  if (!a3 || (v5 = -[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary, "objectForKeyedSubscript:", @"VideoDefaultMinFrameRatesForPresets")) == 0 || ([objc_msgSend(v5 objectForKeyedSubscript:{a3), "floatValue"}], v6 == 0.0))
  {
    [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"VideoDefaultMinFrameRate", "floatValue"}];
  }

  v7 = v6;
  if (v6 != 0.0)
  {
    return v7;
  }

  v8 = [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  [(FigCaptureSourceVideoFormat *)self defaultMaxFrameRateForSessionPreset:a3];
  v7 = v9;
  if (!v8)
  {
    return v7;
  }

  v7 = v9 * 0.5;
  [(FigCaptureSourceFormat *)self minSupportedFrameRate];
  if (v7 >= v10)
  {
    return v7;
  }

  [(FigCaptureSourceFormat *)self minSupportedFrameRate];
  return result;
}

- (float)defaultMaxFrameRateForSessionPreset:(id)a3
{
  if (!a3 || (v5 = -[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary, "objectForKeyedSubscript:", @"VideoDefaultMaxFrameRatesForPresets")) == 0 || ([objc_msgSend(v5 objectForKeyedSubscript:{a3), "floatValue"}], result == 0.0))
  {
    [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"VideoDefaultMaxFrameRate", "floatValue"}];
  }

  if (result == 0.0)
  {
    v7 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798D3F8];

    [v7 floatValue];
  }

  return result;
}

- (BOOL)isStabilizationModeSupported:(int)a3
{
  v3 = self;
  LOBYTE(self) = 0;
  if (a3 > 2)
  {
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          return self;
        }

        formatDictionary = v3->super._formatDictionary;
        v5 = @"LowLatencyStabilizationSupported";
        goto LABEL_23;
      }

      LODWORD(self) = [-[NSDictionary objectForKeyedSubscript:](v3->super._formatDictionary objectForKeyedSubscript:{@"VideoStabilizationSupported", "BOOLValue"}];
      if (!self)
      {
        return self;
      }

      self = [(NSDictionary *)v3->super._formatDictionary objectForKeyedSubscript:@"CinematicVideoStabilizationExtendedLookAheadDuration"];
      if (!self)
      {
        return self;
      }

      v6 = v3->super._formatDictionary;
      v7 = @"CinematicVideoStabilizationExtendedEnhancedSupported";
    }

    else
    {
      if (a3 != 3)
      {
        formatDictionary = v3->super._formatDictionary;
        v5 = @"PreviewStabilizationSupported";
        goto LABEL_23;
      }

      LODWORD(self) = [-[NSDictionary objectForKeyedSubscript:](v3->super._formatDictionary objectForKeyedSubscript:{@"VideoStabilizationSupported", "BOOLValue"}];
      if (!self)
      {
        return self;
      }

      LODWORD(self) = [-[NSDictionary objectForKeyedSubscript:](v3->super._formatDictionary objectForKeyedSubscript:{@"CinematicVideoStabilizationSupported", "BOOLValue"}];
      if (!self)
      {
        return self;
      }

      v6 = v3->super._formatDictionary;
      v7 = @"CinematicVideoStabilizationExtendedLookAheadDuration";
    }

    LOBYTE(self) = [(NSDictionary *)v6 objectForKeyedSubscript:v7]!= 0;
    return self;
  }

  switch(a3)
  {
    case 0:
      LOBYTE(self) = 1;
      return self;
    case 1:
      formatDictionary = v3->super._formatDictionary;
      v5 = @"VideoStabilizationSupported";
      break;
    case 2:
      LODWORD(self) = [-[NSDictionary objectForKeyedSubscript:](v3->super._formatDictionary objectForKeyedSubscript:{@"VideoStabilizationSupported", "BOOLValue"}];
      if (!self)
      {
        return self;
      }

      formatDictionary = v3->super._formatDictionary;
      v5 = @"CinematicVideoStabilizationSupported";
      break;
    default:
      return self;
  }

LABEL_23:
  v8 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:v5];

  LOBYTE(self) = [v8 BOOLValue];
  return self;
}

- (BOOL)isPocketDetectionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"PocketDetectionSupported"];

  return [v2 BOOLValue];
}

- (float)stabilizationOverscanPercentageOverrideForStandard
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationOverscanPercentageOverrideForStandard"];

  [v2 floatValue];
  return result;
}

- (int)videoStabilizationGeneratedTransformsOutputWidthOverride
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationGeneratedTransformsOutputWidthOverride"];

  return [v2 intValue];
}

- (int)videoStabilizationGeneratedTransformsOutputHeightOverride
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationGeneratedTransformsOutputHeightOverride"];

  return [v2 intValue];
}

- (BOOL)temporalNoiseReductionBand0Disabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"TemporalNoiseReductionBand0Disabled"];

  return [v2 BOOLValue];
}

- (BOOL)temporalNoiseReductionRawEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"TemporalNoiseReductionRawEnabled"];

  return [v2 BOOLValue];
}

- (float)depthDataAEMaxGain
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"DepthDataAEMaxGain"];

  [v2 floatValue];
  return result;
}

- (float)depthDataMaxIntegrationTimeOverride
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"DepthDataMaxIntegrationTimeOverride"];

  [v2 floatValue];
  return result;
}

- (float)stereoVideoAEMaxGain
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StereoVideoAEMaxGain"];

  [v2 floatValue];
  return result;
}

- (BOOL)shouldPreferSIFRFormatWithHighlightRecoveryEnabled:(BOOL)a3
{
  v5 = [(FigCaptureSourceVideoFormat *)self isSIFRSupported];
  if (v5 && !a3)
  {
    LOBYTE(v5) = [(FigCaptureSourceVideoFormat *)self nonSIFRCompanionFormat]== 0;
  }

  return v5;
}

- (int)sensorHDRCompanionIndex
{
  if (![(FigCaptureSourceVideoFormat *)self hasSensorHDRCompanionIndex])
  {
    return -1;
  }

  v3 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SensorHDRCompanionIndex"];

  return [v3 intValue];
}

- (BOOL)prefersSensorHDREnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"PrefersSensorHDR"];

  return [v2 BOOLValue];
}

- (BOOL)isVideoStabilizationStrengthSupported:(int)a3
{
  v5 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"VideoStabilizationSupported", "BOOLValue"}];
  if ([-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"VideoStabilizationMaxStrength", "intValue"}] >= a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 ^ 1;
  if (a3)
  {
    v7 = 0;
  }

  if (a3 == 1)
  {
    v7 = v5;
  }

  if ((a3 - 2) >= 3)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (float)stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VideoStabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced"];

  [v2 floatValue];
  return result;
}

- (CGSize)stabilizationOverscanFromSensorForFESCropDimensions:(id)a3 preferSIFRFormat:(BOOL)a4 geometricDistortionCorrection:(BOOL)a5 useFESCompanionIndex:(BOOL)a6
{
  var0 = a3.var0;
  var1 = a3.var1;
  v10 = [(FigCaptureSourceVideoFormat *)self sensorCropDimensions];
  v11 = HIDWORD(*&v10);
  v12 = v10.var0;
  v13 = [(FigCaptureSourceVideoFormat *)self _highQualitySensorDimensions];
  if (!a4)
  {
    if ([(FigCaptureSourceVideoFormat *)self nonSIFRCompanionFormat])
    {
      v14 = [-[FigCaptureSourceVideoFormat nonSIFRCompanionFormat](self "nonSIFRCompanionFormat")];
      if (HIDWORD(v14) != 0 && v14 != 0)
      {
        v12 = v14;
        LODWORD(v11) = HIDWORD(v14);
      }
    }
  }

  v15 = MEMORY[0x1E695F060];
  if (!v12 || !v11)
  {
    v16 = [(FigCaptureSourceVideoFormat *)self sensorDimensions];
    v12 = v16.var0;
    v11 = HIDWORD(*&v16);
  }

  v17 = *v15;
  v18 = var0 > 0;
  v19 = var1 > 0;
  v20 = !v18 || !v19;
  if (v18 && v19)
  {
    v21 = var0;
  }

  else
  {
    v21 = v12;
  }

  if (v20)
  {
    v22 = v11;
  }

  else
  {
    v22 = var1;
  }

  if (v13 >= 1 && v21 > v13)
  {
    v17 = v21 / v13 + -1.0;
  }

  v23 = v15[1];
  if (SHIDWORD(v13) >= 1 && v22 > SHIDWORD(v13))
  {
    v23 = v22 / HIDWORD(v13) + -1.0;
  }

  result.height = v23;
  result.width = v17;
  return result;
}

- (BOOL)configureForSupplementalTimeOfFlightCameraSupport
{
  formatDictionary = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"FastSwitchingConfiguration"];
  if (!formatDictionary)
  {
    formatDictionary = self->super._formatDictionary;
  }

  v4 = [(NSDictionary *)formatDictionary objectForKeyedSubscript:@"ConfigureForSupplementalTimeOfFlightCameraSupport"];

  return [v4 BOOLValue];
}

- (BOOL)isGNRHDRSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"GNRHDRSupported"];

  return [v2 BOOLValue];
}

- (BOOL)isISPMultiBandNoiseReductionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ISPMultiBandNoiseReductionSupported"];

  return [v2 BOOLValue];
}

- (int)semanticDevelopmentVersion
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SemanticDevelopmentVersion"];

  return [v2 intValue];
}

- (BOOL)isDigitalFlashZeroShutterLagSupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"DigitalFlashZeroShutterLagSupported", "BOOLValue"}];
  [(FigCaptureSourceVideoFormat *)self isPhotoFormat];
  return v3;
}

- (BOOL)isSphereAssistedAutoFocusEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SphereAssistedAutoFocusEnabled"];

  return [v2 BOOLValue];
}

- (BOOL)isStillImageISPChromaNoiseReductionEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"StillImageISPChromaNoiseReduction"];

  return [v2 BOOLValue];
}

- (BOOL)sushiRawBlackBorderingEnabled
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SushiRawBlackBorderingEnabled"];

  return [v2 BOOLValue];
}

- (float)hardwareCost
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"HardwareCost"];

  [v2 floatValue];
  return result;
}

- (int)baseSensorPowerConsumption
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"BaseSensorPowerConsumption"];

  return [v2 intValue];
}

- (int)variableSensorPowerConsumption
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"VariableSensorPowerConsumption"];

  return [v2 intValue];
}

- (int)ispPowerConsumption
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"ISPPowerConsumption"];

  return [v2 intValue];
}

uint64_t __64__FigCaptureSourceVideoFormat__buildFESCompanionFormatsForType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 fesDimensions];
  if (v5 > [a3 fesDimensions])
  {
    return 1;
  }

  v7 = [a2 fesDimensions];
  if (v7 < [a3 fesDimensions])
  {
    return -1;
  }

  v8 = [a2 fesDimensions] >> 32;
  if (v8 > ([a3 fesDimensions] >> 32))
  {
    return 1;
  }

  v9 = [a2 fesDimensions] >> 32;
  if (v9 >= ([a3 fesDimensions] >> 32))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

id __46__FigCaptureSourceVideoFormat__avfcAttributes__block_invoke()
{
  v1[0] = @"Index";
  v1[1] = @"TemporalNoiseReductionMode";
  v1[2] = @"TemporalNoiseReductionBand0Disabled";
  v1[3] = @"TemporalNoiseReductionRawEnabled";
  v1[4] = @"ISPChromaNoiseReduction";
  v1[5] = @"MaxIntegrationTimeOverride";
  v1[6] = @"DepthDataAEMaxGain";
  v1[7] = @"DepthDataMaxIntegrationTimeOverride";
  v1[8] = @"LowLightVideoAEMaxGain";
  v1[9] = @"DistortionCompensationSupported";
  v1[10] = @"NonSIFRCompanionFormat";
  v1[11] = @"FullBinSIFRCompanionFormat";
  v1[12] = @"MidFrameSynchronizationOptimizedCompanionFormat";
  v1[13] = @"ActionCameraCompanionFormat";
  v1[14] = @"SIFRBinningFactorOverrideForNondisruptiveSwitching";
  v1[15] = @"FullBinSIFROnSecondaryCameraAllowed";
  v1[16] = @"FESCompanionFormats";
  v1[17] = @"DepthCompanionFormat";
  v1[18] = @"UltraHighResCompanionFormat";
  v1[19] = @"FSDNetCompanionFormat";
  v1[20] = @"SensorCenterOffsetX";
  v1[21] = @"SensorCenterOffsetY";
  v1[22] = @"PreGDCSensorCropWidth";
  v1[23] = @"PreGDCSensorCropHeight";
  v1[24] = @"PostGDCCropWidth";
  v1[25] = @"PostGDCCropHeight";
  v1[26] = @"GeometricDistortionCorrectedNativeWidth";
  v1[27] = @"GeometricDistortionCorrectedNativeHeight";
  v1[28] = @"CropWidthForFES";
  v1[29] = @"CropHeightForFES";
  v1[30] = @"PreviewImageQueueSyncStrategy";
  v1[31] = @"FESBinningFactorHorizontal";
  v1[32] = @"SecondaryScalerUnavailable";
  v1[33] = @"StudioAndContourPreviewRenderingSupported";
  v1[34] = @"StagePreviewRenderingSupported";
  v1[35] = @"WideAsStatsMasterEnabled";
  v1[36] = @"AWBStatisticsAveragingEnabled";
  v1[37] = @"VideoSTFSupported";
  v1[38] = @"VideoSTFMetadataEnabled";
  v1[39] = @"StillImageISPChromaNoiseReduction";
  v1[40] = @"RawLensShadingCorrection";
  v1[41] = @"SupplementalTimeOfFlightCameraSupported";
  v1[42] = @"ConfigureForSISSupport";
  v1[43] = @"ConfigureForSpatialOverCaptureSupport";
  v1[44] = @"ConfigureForDigitalFlashSupport";
  v1[45] = @"ConfigureForSoftISPSupport";
  v1[46] = @"ConfigureForNonDisruptiveFullBinSIFRSwitching";
  v1[47] = @"ConfigureForDepthDataDelivery";
  v1[48] = @"ConfigureForSupplementalTimeOfFlightCameraSupport";
  v1[49] = @"FastSwitchingConfiguration";
  v1[50] = @"FastSwitchingMainCaptureStreamFormat";
  v1[51] = @"GNRHDRSupported";
  v1[52] = @"ISPMultiBandNoiseReductionSupported";
  v1[53] = @"StillImageISPMultiBandNoiseReductionSupported";
  v1[54] = @"ZeroShutterLagRequiresUserInitiatedCaptureRequestTime";
  v1[55] = @"DigitalFlashRawNightModeSupported";
  v1[56] = @"DigitalFlashDetectedObjectTypes";
  v1[57] = @"StillImageEnhancedResByMaintainingSensorResolutionSupported";
  v1[58] = @"StillImageGDCInDCProcessorOutputCropWidth";
  v1[59] = @"StillImageGDCInDCProcessorOutputCropHeight";
  v1[60] = @"SIFRStillImageCaptureWithDepthDataDisabled";
  v1[61] = @"SushiRawSupported";
  v1[62] = @"SushiRawOutputWidth";
  v1[63] = @"SushiRawOutputHeight";
  v1[64] = @"SushiRawBlackBorderingEnabled";
  v1[65] = @"SemanticDevelopmentVersion";
  v1[66] = @"DeepZoomSupported";
  v1[67] = @"GainMapSupported";
  v1[68] = @"CaptureTimePhotoCurationSupported";
  v1[69] = @"StillImageGDCSourceMode";
  v1[70] = @"GreenGhostMitigationVersion";
  v1[71] = @"ConfigureForGreenGhostMitigationVersion";
  v1[72] = @"UsesPacked10BitFirmwareStillImageOutputPixelFormat";
  v1[73] = @"WideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled";
  v1[74] = @"ContentAwareEnhancementSupported";
  v1[75] = @"ContentAwareAWBSupported";
  v1[76] = @"MultiIlluminantWhiteBalanceSupported";
  v1[77] = @"DepthEngineOutputWidth";
  v1[78] = @"DepthEngineOutputHeight";
  v1[79] = @"RGBIRStereoFusionSupported";
  v1[80] = @"VideoGreenGhostMitigationUsesLightSourceMaskAndKeypointDescriptorData";
  v1[81] = @"VideoGreenGhostOfflineMetadataEnabled";
  v1[82] = @"PocketDetectionSupported";
  v1[83] = @"VariableFrameRateVideoCaptureFromFWAEMaxGain";
  v1[84] = @"SphereAssistedAutoFocusEnabled";
  v1[85] = @"StereoVideoCompanionFormat";
  v1[86] = @"StereoVideoAEMaxGain";
  v1[87] = @"PreferredPreviewMaxFrameRate";
  v1[88] = @"AdditionalHorizontalFOVCropMultiplier";
  v1[89] = @"ActionCameraAEMaxGainScaleFactor";
  v1[90] = @"SWFRSupported";
  v1[91] = @"SemanticRenderingSupported";
  v1[92] = @"QuadraSubPixelSwitchingParameters";
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:93];
  _MergedGlobals_5 = result;
  return result;
}

- (BOOL)isValidDerivedSourceFormatForUnderlyingFormat:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(FigCaptureSourceFormat *)self uniqueID];
  v5 = [a3 uniqueID];

  return [(NSString *)v4 isEqualToString:v5];
}

- (float)actionCameraAEMaxGainScaleFactor
{
  [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"ActionCameraAEMaxGainScaleFactor", "floatValue"}];
  if (result == 0.0)
  {
    return 1.0;
  }

  return result;
}

- (float)_fieldOfViewWithCrop:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  [objc_msgSend(OUTLINED_FUNCTION_10_23(a1) objectForKeyedSubscript:{*off_1E798D3E8), "floatValue"}];
  v5 = v4;
  [objc_msgSend(*(v2 + 8) objectForKeyedSubscript:{@"AdditionalHorizontalFOVCropMultiplier", "floatValue"}];
  if (v6 == 0.0)
  {
    v6 = 1.0;
  }

  v7 = v6 * a2;
  if (v7 != 1.0)
  {
    v8 = v5 * 3.14159265 / 360.0;
    v9 = tanf(v8);
    return (atanf(v9 * v7) * 360.0) / 3.14159265;
  }

  return v5;
}

- (double)_fieldOfViewForAspectRatio:(int)a3 horizontal:(int)a4 gdcEnabled:
{
  if (!a1)
  {
    return 0.0;
  }

  if (a2 && ([a1 isDynamicAspectRatioSupported] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0.0;
  }

  v8 = [(FigCaptureSourceVideoFormat *)a1 _maxUseableSensorDimensions];
  v9 = FigCaptureConvertDimensionsForAspectRatio(v8, a2);
  if (a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = HIDWORD(v9);
  }

  v11 = [a1 fesInputCropDimensions];
  if (v11 < 1 || SHIDWORD(v11) < 1)
  {
    v13 = [a1 sensorDimensions];
  }

  else
  {
    v13 = [a1 fesInputCropDimensions];
  }

  v14 = v10 / v13;
  if (a4)
  {
    v14 = v14 * [(FigCaptureSourceVideoFormat *)a1 _geometricDistortionCorrectedFieldOfViewCropMultiplier];
  }

  *&result = [(FigCaptureSourceVideoFormat *)a1 _fieldOfViewWithCrop:v14];
  return result;
}

- (unint64_t)_visibleSensorDimensionsIncludingCinematic:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [(FigCaptureSourceVideoFormat *)a1 _maxUseableSensorDimensions];
  if (a2 && [a1 isStabilizationModeSupported:2])
  {
    [a1 stabilizationOverscanPercentageOverrideForCinematic];
    OUTLINED_FUNCTION_5_42(v5);
    v9 = 1.2;
  }

  else
  {
    if (![a1 isStabilizationModeSupported:1])
    {
      return v4;
    }

    [a1 stabilizationOverscanPercentageOverrideForStandard];
    OUTLINED_FUNCTION_5_42(v10);
    v9 = 1.1;
  }

  if (!v6)
  {
    v9 = v8;
  }

  v11 = v9;
  v12 = (1.0 / v11);
  LODWORD(v7) = llround(SHIDWORD(v4) * v12 * 0.5);
  return (2 * llround(v4 * v12 * 0.5)) | (v7 << 33);
}

- (uint64_t)_supportsDepthDataFormatForDisparity:(int)a3 streaming:
{
  if (!result)
  {
    return result;
  }

  v5 = *(result + 144);
  OUTLINED_FUNCTION_43();
  result = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = MEMORY[0];
  while (2)
  {
    v8 = 0;
    do
    {
      if (MEMORY[0] != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(8 * v8);
      if (a3)
      {
        if ([v9 isStillImageOnlyDepthData])
        {
          goto LABEL_15;
        }
      }

      else if ([v9 isStreamingOnlyDepthData])
      {
        goto LABEL_15;
      }

      v10 = [v9 format];
      if (a2)
      {
        if (FigDepthFormatIsDisparity(v10))
        {
          return 1;
        }
      }

      else if (FigDepthFormatIsDepth(v10))
      {
        return 1;
      }

LABEL_15:
      ++v8;
    }

    while (v6 != v8);
    OUTLINED_FUNCTION_43();
    result = [v5 countByEnumeratingWithState:? objects:? count:?];
    v6 = result;
    if (result)
    {
      continue;
    }

    return result;
  }
}

- (BOOL)isStreamingDepthOnlyPrivatelySupported
{
  v3 = [(NSArray *)[(FigCaptureSourceVideoFormat *)self supportedDepthDataFormats] count];
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(FigCaptureSourceVideoFormat *)self supportedDepthDataFormats];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (([v9 isStillImageOnlyDepthData] & 1) == 0)
        {
          LODWORD(v3) = [v9 isPrivate];
          if (!v3)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_buildFESCompanionFormatsForType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_43();
  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(8 * i);
        if (!v6)
        {
          v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        }

        v10 = [[FigCaptureSourceCompanionFormat alloc] initWithCompanionFormatDictionary:v9];
        [v6 addObject:v10];
      }

      OUTLINED_FUNCTION_43();
      v5 = [v2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [v6 sortUsingComparator:&__block_literal_global_53];
  return v6;
}

- (uint64_t)initWithXPCEncoding:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithXPCEncoding:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)geometricDistortionCorrectedFieldOfView
{
  v6 = *(a1 + 24);
  v7 = [(FigCaptureSourceVideoFormat *)a2 _nativeDimensionsWithoutCrop];
  v8 = v6 / OUTLINED_FUNCTION_14_15(v7);
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v10 = *(a1 + 24);
    v11 = [(FigCaptureSourceVideoFormat *)a2 _nativeDimensionsWithoutCrop];
    v9 = v10 / OUTLINED_FUNCTION_14_15(v11);
  }

  *a3 = [(FigCaptureSourceVideoFormat *)a2 _fieldOfViewWithCrop:v9];
}

@end
@interface BWFigVideoCaptureStream
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- ($273FE01EDA4852E8FFB0AF95686D18CC)activeVideoExternalSyncFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)activeVideoLockedFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)maximumFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)minimumFrameRate;
- ($2825F4736939C4A6D3AD43837233062D)activeSensorDimensions;
- ($2825F4736939C4A6D3AD43837233062D)physicalSensorDimensions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastStillImagePTS;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxExposureDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)updateMaxExposureDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)updateMaxExposureDurationClientOverride:(SEL)override;
- (BOOL)blackenFramesForContinuityDisplayConnected;
- (BOOL)clientProcessHasAccessToCamera;
- (BOOL)motionDataInvalid;
- (BOOL)needsRollingShutterCorrection;
- (BOOL)setActiveVideoLockedFrameRate:(id)rate activeVideoExternalSyncFrameRate:(id)frameRate;
- (BOOL)sourceNodeShouldDiscardStillImageSampleBuffer:(opaqueCMSampleBuffer *)buffer sensorRawOutput:(BOOL)output;
- (BOOL)sphereEnabled;
- (BWFigVideoCaptureStream)initWithCaptureStream:(id)stream parentDevice:(id)device attributes:(id)attributes sensorIDDictionary:(id)dictionary synchronizedStreamsGroup:(id)group applicationID:(id)d clientAuditToken:(id *)token tccIdentity:(id)self0 mediaEnvironment:(id)self1 error:(int *)self2;
- (BWSecureMetadataOutputConfigurator)secureMetadataOutputConfigurator;
- (CGPoint)opticalCenterOffset;
- (CGPoint)opticalCenterOffsetCalibratedForNarrowerFieldOfView;
- (CGPoint)opticalCenterOffsetCalibratedForNarrowerFieldOfViewInPhysicalSensorDimensions;
- (CGPoint)opticalCenterOffsetInPhysicalSensorDimensions;
- (CGPoint)previewShift;
- (CGPoint)previewShiftAtBaseZoom;
- (CGRect)centerStageRectOfInterest;
- (NSDictionary)faceDetectionConfiguration;
- (NSSet)detectedObjectTypes;
- (NSString)description;
- (_DWORD)_updateAutoFocusPositionSensorModeForSampleBuffer:(_DWORD *)result;
- (double)_convertOpticalCenterOffsetToPhysicalSensorDimensions:(uint64_t)dimensions;
- (double)_convertOpticalCenterToOpticalCenterOffset:(double)offset error:(double)error;
- (float)averageFrameRate;
- (float)baseZoomFactorAfterGDC;
- (float)cmioZoomFactor;
- (float)fudgedBaseZoomFactorForAspectRatio:(int)ratio;
- (float)maxEIT;
- (id)_setMaxExposureDuration:(double)duration;
- (int)activeNondisruptiveSwitchingCommandID;
- (int)activeNondisruptiveSwitchingFormatIndex;
- (int)activeQuadraBinningFactor;
- (int)setActiveFormatIndex:(int)index;
- (int)setActiveNondisruptiveSwitchingFormatIndex:(int)index;
- (int)setActiveNondisruptiveSwitchingFormatIndex:(int)index maximumAllowedFrameRate:(int)rate minimumFrameRate:(int)frameRate maximumFrameRate:(int)maximumFrameRate;
- (int)setSuspended:(BOOL)suspended;
- (int)sourceNodeWillEmitDepthSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)sourceNodeWillEmitPointCloudSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)sourceNodeWillEmitVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer drivesCameraControls:(BOOL)controls deliversStills:(BOOL)stills;
- (int)stop;
- (int)synchronizedStreamsGroupDidUpdateActiveNondisruptiveSwitchingFormatIndex:(int)index activeNondisruptiveSwitchingCommandID:(int)d maximumAllowedFrameRate:(int)rate minimumFrameRate:(int)frameRate maximumFrameRate:(int)maximumFrameRate;
- (uint64_t)_activeFormatIndexWithNondisruptiveSwitching;
- (uint64_t)_addBracketecCaptureSequenceNumberToMetadataIfNeededForStillImageSampleBuffer:(uint64_t)result;
- (uint64_t)_aeTables;
- (uint64_t)_configureKeypointDetection;
- (uint64_t)_handleStillImageSampleBuffer:(int)buffer withError:(int)error fromTimeMachine:;
- (uint64_t)_propagateFaceAndObjectDetectionSettings;
- (uint64_t)_setFrameRateRational:(int)rational;
- (uint64_t)_setHighlightRecoveryEnabled:(uint64_t)result;
- (uint64_t)_updateAETables;
- (uint64_t)_updateMasterSlavePropertiesOnStream;
- (uint64_t)_updateSuspendStateForInfraredDepthStream;
- (void)_captureStreamFaceDetectionConfiguration;
- (void)_captureStreamObjectDetectionConfiguration;
- (void)_logStreamingPowerEvent:(uint64_t)event;
- (void)_prepareForStillImageCaptureWithStillImageSettings:(char)settings fromCMTimeMachine:;
- (void)_recomputeOpticalCenterOffsets;
- (void)_resetStillImageCaptureState;
- (void)_serviceTimeMachineWithSampleBuffer:(uint64_t)buffer;
- (void)_setLowPowerSphereModeEnabled:(uint64_t)enabled;
- (void)_updateMotionDataStatus:(uint64_t)status;
- (void)_updateSphereMode;
- (void)captureStillImageFromTimeMachineWithStillImageSettings:(id)settings;
- (void)dealloc;
- (void)failedToCaptureStillImageFromFirmwareWithError:(int)error;
- (void)serviceNondisruptiveSwitchingFormatForZoomFactor:(float)factor frameStatistics:(id)statistics imageControlMode:(int)mode stillImageDigitalFlashMode:(int)flashMode isStationary:(BOOL)stationary binnedSIFROnSecondaryStreamAllowed:(BOOL)allowed ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:(BOOL)monitoring ultraHighResolutionZeroShutterLagEnabled:(BOOL)self0;
- (void)setActiveVideoMinFrameDuration:(id *)duration activeVideoMaxFrameDuration:(id *)frameDuration;
- (void)setAeStatisticsEnabled:(BOOL)enabled;
- (void)setBaseZoomFactorAfterGDC:(float)c;
- (void)setBlackenFramesForContinuityDisplayConnected:(BOOL)connected;
- (void)setCenterStageRectOfInterest:(CGRect)interest;
- (void)setChromaticAbberrationCorrectionEnabled:(BOOL)enabled;
- (void)setCinematicFramingEnabled:(BOOL)enabled;
- (void)setCmioZoomFactor:(float)factor;
- (void)setContentAwareAWBEnabled:(BOOL)enabled;
- (void)setContentAwareEnhancementEnabled:(BOOL)enabled;
- (void)setDeskCamActive:(BOOL)active;
- (void)setDetectedObjectTypes:(id)types;
- (void)setDigitalFlashZeroShutterLagEnabled:(BOOL)enabled;
- (void)setEnablesSphereWhenAvailable:(BOOL)available;
- (void)setEyeDetectionRequired:(BOOL)required;
- (void)setFaceDetectionConfiguration:(id)configuration;
- (void)setFaceDetectionEnabled:(BOOL)enabled;
- (void)setFocusBlurMapEnabled:(BOOL)enabled;
- (void)setHighlightRecoverySuspended:(BOOL)suspended;
- (void)setIsStationary:(BOOL)stationary;
- (void)setKeypointDetectionEnabled:(BOOL)enabled;
- (void)setMainToSIFRFrameRateRatio:(int)ratio;
- (void)setMasterToSlaveFrameRateRatio:(int)ratio;
- (void)setMaxExposureDurationClientOverride:(id *)override;
- (void)setMaxExposureDurationFrameworkOverride:(id *)override;
- (void)setMaximumFrameRate:(id)rate;
- (void)setMaximumSupportedFrameRate:(float)rate;
- (void)setMinimumFrameRate:(id)rate;
- (void)setMotionDataDeliveryEnabled:(BOOL)enabled;
- (void)setMultiBandNoiseReductionMode:(int)mode;
- (void)setObjectDetectionStartupDeferred:(BOOL)deferred;
- (void)setPreviewShift:(CGPoint)shift;
- (void)setRawFocusScoresEnabled:(BOOL)enabled;
- (void)setSphereThermalLevel:(int)level;
- (void)setSphereVideoEnabled:(BOOL)enabled;
- (void)setStillImageCaptureEnabled:(BOOL)enabled;
- (void)setStillImageKeypointDetectionEnabled:(BOOL)enabled;
- (void)setStreamingRequiredWhenConfiguredAsSlave:(BOOL)slave;
- (void)setTemporalNoiseReductionConfigurationBand0Enabled:(BOOL)enabled rawEnabled:(BOOL)rawEnabled modulation:(int)modulation adaptiveOverscanEnabled:(BOOL)overscanEnabled strengthHighEnabled:(BOOL)highEnabled;
- (void)setTimeMachineBufferHandler:(id)handler;
- (void)setTimeMachineEnabled:(BOOL)enabled;
- (void)setUnifiedBracketingEnabled:(BOOL)enabled;
- (void)setVideoHDRFusionEnabled:(BOOL)enabled;
- (void)setVideoHDRImageStatisticsEnabled:(BOOL)enabled;
- (void)setVisionDataKeypointDetectionThreshold:(float)threshold;
- (void)setVisionDataSuspended:(BOOL)suspended;
- (void)setZeroShutterLagEnabled:(BOOL)enabled;
- (void)setZoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:(id)binned zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:(id)nonBinned ultraHighResolutionNondisruptiveStreamingFormatIndex:(int)index mainFormatSIFRBinningFactor:(int)factor quadraSubPixelSwitchingParameters:(id)parameters;
- (void)sourceNodeDidDropFrameWithPTS:(id *)s;
- (void)sourceNodeDidStartStreaming;
- (void)sourceNodeDidStopStreaming:(BOOL)streaming;
- (void)sourceNodeWillEmitDetectedFacesSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)sourceNodeWillStartStreaming;
- (void)sourceNodeWillStopStreaming;
- (void)updateClientAuditToken:(id *)token;
- (void)willBecomeMasterStream;
- (void)willCaptureStillImageFromFirmware;
@end

@implementation BWFigVideoCaptureStream

- (void)_updateSphereMode
{
  if (self)
  {
    v2 = *(self + 464);
    if (v2)
    {
      currentSphereMode = [v2 currentSphereMode];
      if (([currentSphereMode isEqualToString:*(self + 472)] & 1) == 0)
      {
        if ([*(self + 8) setProperty:*off_1E798C178 value:currentSphereMode])
        {
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3();
          return;
        }

        *(self + 472) = currentSphereMode;
      }

      v4 = [currentSphereMode isEqualToString:*off_1E798C498] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    os_unfair_lock_lock((self + 456));
    *(self + 460) = v4;

    os_unfair_lock_unlock((self + 456));
  }
}

- (uint64_t)_propagateFaceAndObjectDetectionSettings
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 704);
    v3 = *off_1E798C0B0;
    if ([*(result + 104) objectForKeyedSubscript:*off_1E798C0B0])
    {
      if (v2)
      {
        _captureStreamObjectDetectionConfiguration = MEMORY[0x1E695E0F8];
      }

      else
      {
        _captureStreamObjectDetectionConfiguration = [(BWFigVideoCaptureStream *)v1 _captureStreamObjectDetectionConfiguration];
      }

      result = [*(v1 + 728) isEqualToDictionary:_captureStreamObjectDetectionConfiguration];
      if ((result & 1) == 0)
      {
        v5 = (v1 + 728);
LABEL_7:
        [*(v1 + 8) setProperty:v3 value:_captureStreamObjectDetectionConfiguration];

        result = _captureStreamObjectDetectionConfiguration;
        *v5 = result;
      }
    }

    else
    {
      v3 = *off_1E798BE40;
      result = [*(v1 + 104) objectForKeyedSubscript:*off_1E798BE40];
      if (result)
      {
        _captureStreamFaceDetectionConfiguration = [(BWFigVideoCaptureStream *)v1 _captureStreamFaceDetectionConfiguration];
        if (([*(v1 + 736) isEqualToDictionary:_captureStreamFaceDetectionConfiguration] & 1) == 0)
        {
          [*(v1 + 8) setProperty:*off_1E798BE38 value:_captureStreamFaceDetectionConfiguration];

          *(v1 + 736) = _captureStreamFaceDetectionConfiguration;
        }

        v7 = (v2 & 1) != 0 ? 0 : *(v1 + 720);
        _captureStreamObjectDetectionConfiguration = [MEMORY[0x1E696AD98] numberWithBool:v7 & 1];
        result = [*(v1 + 744) isEqualToNumber:_captureStreamObjectDetectionConfiguration];
        if ((result & 1) == 0)
        {
          v5 = (v1 + 744);
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

- (void)_captureStreamObjectDetectionConfiguration
{
  if (!self)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = ([objc_msgSend(*(self + 712) objectForKeyedSubscript:{*off_1E798AD38), "BOOLValue"}] & 1) == 0 && *(self + 721) == 0;
  v4 = [objc_msgSend(*(self + 712) objectForKeyedSubscript:{*off_1E798AD30), "BOOLValue"}];
  v5 = [objc_msgSend(*(self + 712) objectForKeyedSubscript:{*off_1E798AD48), "BOOLValue"}];
  v6 = v5;
  if (v3 && ((v4 | v5) & 1) == 0)
  {
    v7 = 10;
  }

  else
  {
    v7 = 6;
  }

  if (([*(self + 696) containsObject:*off_1E798ACB8] & 1) != 0 || *(self + 720) == 1)
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B920];
  }

  if ([*(self + 696) containsObject:*off_1E798ACC8])
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", (2 * v7)), *off_1E798B930}];
  }

  if ([*(self + 696) containsObject:*off_1E798ACD0])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B938];
  }

  if ([*(self + 696) containsObject:*off_1E798ACB0])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B918];
  }

  if ([*(self + 696) containsObject:*off_1E798ACC0])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B928];
  }

  if ([*(self + 696) containsObject:*off_1E798ACA0])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B908];
  }

  if ([*(self + 696) containsObject:*off_1E798ACA8])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B910];
  }

  if ([*(self + 696) containsObject:*off_1E798AC90])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B8F8];
  }

  if ([*(self + 696) containsObject:*off_1E798AC98])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B900];
  }

  if ([*(self + 696) containsObject:*off_1E798ACD8])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B940];
  }

  if ([*(self + 696) containsObject:*off_1E798ACE0])
  {
    [dictionary setObject:OUTLINED_FUNCTION_12_25() forKeyedSubscript:*off_1E798B948];
    if (v3)
    {
LABEL_32:
      if (!v6)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }
  }

  else if (v3)
  {
    goto LABEL_32;
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798B8E8];
  if (!v6)
  {
LABEL_33:
    if (!v4)
    {
      return dictionary;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798B8F0];
  if (v4)
  {
LABEL_38:
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798B8E0];
  }

  return dictionary;
}

- (uint64_t)_updateMasterSlavePropertiesOnStream
{
  if (result)
  {
    v1 = result;
    if (*(result + 360) == 1)
    {
      [(BWFigVideoCaptureStream *)result _setLowPowerSphereModeEnabled:?];
      v2 = 814;
    }

    else
    {
      if ([*(result + 464) lowPowerSphereModeEnabled])
      {
        [*(v1 + 464) setLowPowerSphereModeEnabled:0];
        [(BWFigVideoCaptureStream *)v1 _updateSphereMode];
      }

      v2 = 813;
    }

    v3 = *(v1 + v2);

    return [(BWFigVideoCaptureStream *)v1 _setHighlightRecoveryEnabled:v3];
  }

  return result;
}

- (CGPoint)previewShift
{
  v2 = *&self->_mainFormatSIFRBinningFactor;
  x = self->_previewShift.x;
  result.y = x;
  result.x = v2;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)minimumFrameRate
{
  tag = self->_minimumFrameRate.tag;
  u = self->_minimumFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- (void)_recomputeOpticalCenterOffsets
{
  if (self)
  {
    v19 = 0;
    v16 = *MEMORY[0x1E695EFF8];
    point = *MEMORY[0x1E695EFF8];
    v3 = [*(self + 8) getPropertyIfSupported:*off_1E798C0C0 error:0];
    if (v3)
    {
      CGPointMakeWithDictionaryRepresentation(v3, &point);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_15_13();
      if (OUTLINED_FUNCTION_8_26(v4))
      {
        v5 = v1;
      }

      else
      {
        v5 = v1 & 0xFFFFFFFE;
      }

      if (v5)
      {
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
        v1 = v17;
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = [(BWFigVideoCaptureStream *)self _convertOpticalCenterToOpticalCenterOffset:point.x error:point.y];
    *(self + 216) = v6;
    *(self + 224) = v7;
    *(self + 232) = [(BWFigVideoCaptureStream *)self _convertOpticalCenterOffsetToPhysicalSensorDimensions:v6];
    *(self + 240) = v8;
    v9 = [*(self + 8) getPropertyIfSupported:*off_1E798C0C8 error:&v19];
    if (v9)
    {
      CGPointMakeWithDictionaryRepresentation(v9, &point);
      v13 = [(BWFigVideoCaptureStream *)self _convertOpticalCenterToOpticalCenterOffset:point.x error:point.y];
      *(self + 248) = v13;
      *(self + 256) = v14;
      *(self + 264) = [(BWFigVideoCaptureStream *)self _convertOpticalCenterOffsetToPhysicalSensorDimensions:v13];
      *(self + 272) = v15;
      v12 = 1;
    }

    else
    {
      if (v19)
      {
        v10 = OUTLINED_FUNCTION_15_13();
        if (OUTLINED_FUNCTION_8_26(v10))
        {
          v11 = v1;
        }

        else
        {
          v11 = v1 & 0xFFFFFFFE;
        }

        if (v11)
        {
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v12 = 0;
      *(self + 248) = v16;
      *(self + 264) = v16;
    }

    *(self + 280) = v12;
  }
}

- (uint64_t)_activeFormatIndexWithNondisruptiveSwitching
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock(self + 33);
  os_unfair_lock_opaque = self[34]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000000) != 0)
  {
    os_unfair_lock_opaque = self[32]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(self + 33);
  return os_unfair_lock_opaque;
}

- (CGPoint)opticalCenterOffsetCalibratedForNarrowerFieldOfView
{
  objc_copyStruct(v4, &self->_opticalCenterOffsetCalibratedForNarrowerFieldOfView, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)opticalCenterOffsetInPhysicalSensorDimensions
{
  objc_copyStruct(v4, &self->_opticalCenterOffsetInPhysicalSensorDimensions, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)opticalCenterOffsetCalibratedForNarrowerFieldOfViewInPhysicalSensorDimensions
{
  objc_copyStruct(v4, &self->_opticalCenterOffsetCalibratedForNarrowerFieldOfViewInPhysicalSensorDimensions, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)opticalCenterOffset
{
  objc_copyStruct(v4, &self->_opticalCenterOffset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)sourceNodeWillStartStreaming
{
  if (self->_stillImageCaptureEnabled)
  {
    [(BWFigCaptureStream *)self->_stream registerForNotification:*off_1E798B8A8 listener:self callback:fvcs_handleStillImageCaptureFailureNotification];
    if (LOBYTE(self->_lastDigitalFlashSphereOffsetOpticalCenter.y) == 1)
    {
      *&self->_timeMachineEnabled = [[BWStillImageTimeMachine alloc] initWithCapacity:HIDWORD(self->_lastDigitalFlashSphereOffsetOpticalCenter.y)];
    }

    if ([(BWSphereModeSelector *)self->_sphereModeSelector enablesSphereWhenAvailable])
    {
      [(BWFigVideoCaptureStream *)self setMotionDataDeliveryEnabled:1];
    }
  }

  v9 = 0uLL;
  v10 = 0;
  [(BWFigVideoCaptureStream *)self maxExposureDuration];
  v7 = v9;
  *&v8 = v10;
  [(BWFigVideoCaptureStream *)&self->super.isa _setMaxExposureDuration:*&v9];
  [(BWFigVideoCaptureStream *)self _updateAETables];
  *&self->_aeStatisticsEnabled = 0;
  self->_deskCamActive = 0;
  os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
  [(BWFigVideoCaptureStream *)self _propagateFaceAndObjectDetectionSettings];
  os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
  [(NSArray *)self->_nondisruptiveSwitchingZoomFactors setVideoStabilizationStrength:*&self->_backgroundBlurEnabled];
  [OUTLINED_FUNCTION_11_23() captureStreamWillStartStreaming:?];
  [(BWFigCaptureStream *)self->_stream setStartStopDelegate:self];
  os_unfair_lock_lock(&self->_streamStateLock);
  if (!self->_suspended)
  {
    +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
    *&v3 = OUTLINED_FUNCTION_2_51();
    v7 = v4;
    v8 = v5;
    [v6 setStreaming:1 deviceType:v3 maxFrameRate:0 streamUniqueID:? clientAuditToken:? tccIdentity:? mediaEnvironment:? completionHandler:?];
  }

  os_unfair_lock_unlock(&self->_streamStateLock);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxExposureDuration
{
  *retstr = *(self + 872);
  if ((retstr->var2 & 1) == 0)
  {
    *retstr = *(self + 896);
  }

  return self;
}

- (uint64_t)_updateAETables
{
  if (result)
  {
    v1 = result;
    v2 = *off_1E798BC28;
    result = [*(result + 104) objectForKeyedSubscript:*off_1E798BC28];
    if (result)
    {
      v3 = *(v1 + 8);
      _aeTables = [(BWFigVideoCaptureStream *)v1 _aeTables];

      return [v3 setProperty:v2 value:_aeTables];
    }
  }

  return result;
}

- (uint64_t)_aeTables
{
  if (result)
  {
    if (*(result + 935))
    {
      v1 = 5;
    }

    else
    {
      if (*(result + 934) == 1)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        activeStreams = [*(result + 760) activeStreams];
        v3 = [activeStreams countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v3)
        {
          v4 = v3;
          v5 = *v12;
          v6 = *off_1E798A0D8;
          while (2)
          {
            for (i = 0; i != v4; ++i)
            {
              if (*v12 != v5)
              {
                objc_enumerationMutation(activeStreams);
              }

              if ([objc_msgSend(*(*(&v11 + 1) + 8 * i) "portType")])
              {
                v1 = 6;
                goto LABEL_23;
              }
            }

            v4 = [activeStreams countByEnumeratingWithState:&v11 objects:v10 count:16];
            v1 = 1;
            if (v4)
            {
              continue;
            }

            goto LABEL_23;
          }
        }
      }

      else if ((*(result + 933) & 1) == 0)
      {
        if (*(result + 865))
        {
          v1 = 7;
        }

        else if (*(result + 859))
        {
          v1 = 2;
        }

        else
        {
          if (*(result + 932) != 1)
          {
            return 0;
          }

          v1 = 3;
        }

        goto LABEL_23;
      }

      v1 = 1;
    }

LABEL_23:
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{v1, &unk_1F2243CD8}];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  return result;
}

- (float)maxEIT
{
  memset(&v6[32], 0, 24);
  if (!self || ([(BWFigVideoCaptureStream *)self maxExposureDuration], (v6[44] & 1) == 0))
  {
    if (self->_started)
    {
      v3 = [-[BWFigCaptureStream getProperty:error:](self->_stream getProperty:*off_1E798C018 error:{0), "intValue"}];
      maximumSupportedFrameRate = 1000;
    }

    else
    {
      maximumSupportedFrameRate = self->_maximumSupportedFrameRate;
      v3 = 1;
    }

    CMTimeMake(v6, v3, maximumSupportedFrameRate);
    *&v6[32] = *v6;
  }

  *v6 = *&v6[32];
  return CMTimeGetSeconds(v6) * *(&self->_maxExposureDurationFrameworkOverride.epoch + 1);
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)maximumFrameRate
{
  tag = self->_maximumFrameRate.tag;
  u = self->_maximumFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- (void)willBecomeMasterStream
{
  self->_isSlave = 0;
  [*&self->_timeMachineEnabled resume];

  [(BWFigVideoCaptureStream *)self _updateMasterSlavePropertiesOnStream];
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)activeVideoLockedFrameRate
{
  numerator = self->_activeVideoLockedFrameRate.u.rational.numerator;
  v3 = *&self->_momentCaptureVideoRecordingAEMaxGain;
  result.var0 = v3;
  result.var1 = numerator;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)activeVideoExternalSyncFrameRate
{
  numerator = self->_activeVideoExternalSyncFrameRate.u.rational.numerator;
  v3 = *(&self->_activeVideoLockedFrameRate.u + 4);
  result.var0 = v3;
  result.var1 = numerator;
  return result;
}

- (BWSecureMetadataOutputConfigurator)secureMetadataOutputConfigurator
{
  result = *&self->_firstValidFrameSeen;
  if (!result)
  {
    result = objc_alloc_init(BWSecureMetadataOutputConfigurator);
    *&self->_firstValidFrameSeen = result;
  }

  return result;
}

- (float)averageFrameRate
{
  os_unfair_lock_lock(&self->_previewShiftAtBaseZoom.y);
  v3 = 0.0;
  if (self->_lastValidPTS.value & 1) != 0 && (self->_firstValidPTS.value)
  {
    if (self->_lastValidPTS.flags)
    {
      lhs = *&self->_firstValidPTS.flags;
      v6 = *(&self->_previewShiftAtBaseZoom.y + 4);
      CMTimeSubtract(&time, &lhs, &v6);
      Seconds = CMTimeGetSeconds(&time);
      if (Seconds != INFINITY)
      {
        v3 = self->_lastValidPTS.flags / Seconds;
      }
    }
  }

  os_unfair_lock_unlock(&self->_previewShiftAtBaseZoom.y);
  if (v3 == INFINITY)
  {
    return 0.0;
  }

  else
  {
    return v3;
  }
}

- (void)sourceNodeDidStartStreaming
{
  os_unfair_lock_lock(&self->_streamStateLock);
  self->_started = 1;
  os_unfair_lock_unlock(&self->_streamStateLock);
  delegate = self->_delegate;

  [(BWFigVideoCaptureStreamDelegate *)delegate captureStreamDidStartStreaming:self];
}

- (float)baseZoomFactorAfterGDC
{
  result = self->_baseZoomFactorAfterGDC;
  if (result == 0.0)
  {
    return self->_baseZoomFactor;
  }

  return result;
}

- (BOOL)sphereEnabled
{
  os_unfair_lock_lock(&self->_sphereLock);
  sphereEnabled = self->_sphereEnabled;
  os_unfair_lock_unlock(&self->_sphereLock);
  return sphereEnabled;
}

- (int)activeNondisruptiveSwitchingCommandID
{
  os_unfair_lock_lock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  activeNondisruptiveSwitchingCommandID = self->_activeNondisruptiveSwitchingCommandID;
  os_unfair_lock_unlock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  return activeNondisruptiveSwitchingCommandID;
}

- (int)activeQuadraBinningFactor
{
  active = [(BWFigVideoCaptureStream *)self _activeFormatIndexWithNondisruptiveSwitching];
  if ((active & 0x80000000) != 0)
  {
    return -1;
  }

  v4 = [-[NSArray objectAtIndexedSubscript:](self->_supportedFormats objectAtIndexedSubscript:{active), "objectForKeyedSubscript:", *off_1E798C950}];

  return [v4 intValue];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWFigVideoCaptureStream)initWithCaptureStream:(id)stream parentDevice:(id)device attributes:(id)attributes sensorIDDictionary:(id)dictionary synchronizedStreamsGroup:(id)group applicationID:(id)d clientAuditToken:(id *)token tccIdentity:(id)self0 mediaEnvironment:(id)self1 error:(int *)self2
{
  v109[0] = 0;
  v108.receiver = self;
  v108.super_class = BWFigVideoCaptureStream;
  v18 = [(BWFigVideoCaptureStream *)&v108 init];
  if (!v18)
  {
    goto LABEL_69;
  }

  if (stream)
  {
    *(v18 + 1) = stream;
    *(v18 + 4) = [stream portType];
    *(v18 + 2) = device;
    *(v18 + 13) = [*(v18 + 1) supportedProperties];
    if (!v109[0])
    {
      *(v18 + 14) = [*(v18 + 1) copyProperty:*off_1E798C1B8 error:v109];
      if (v109[0])
      {
        [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
        goto LABEL_69;
      }

      *(v18 + 20) = [*(v18 + 1) copyPropertyIfSupported:*off_1E798C078 error:v109];
      if (v109[0])
      {
        [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
        goto LABEL_69;
      }

      v19 = [*(v18 + 1) getPropertyIfSupported:*off_1E798BE60 error:v109];
      if (v109[0])
      {
        [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
        goto LABEL_69;
      }

      [v19 floatValue];
      *(v18 + 73) = v20;
      v21 = [*(v18 + 1) getPropertyIfSupported:*off_1E798BF60 error:v109];
      if (v109[0])
      {
        [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
        goto LABEL_69;
      }

      [v21 floatValue];
      *(v18 + 74) = v22;
      v23 = [*(v18 + 1) getPropertyIfSupported:*off_1E798BEB8 error:v109];
      if (v109[0])
      {
        [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
        goto LABEL_69;
      }

      if (v23)
      {
        *(v18 + 46) = fvcs_ambientViewingEnvironment([v23 intValue]);
      }

      v24 = *&token->var0[4];
      v104[0] = *token->var0;
      v104[1] = v24;
      *(v18 + 96) = FigCaptureGetPIDFromAuditToken(v104);
      *(v18 + 49) = [d copy];
      v25 = *&token->var0[4];
      *(v18 + 25) = *token->var0;
      *(v18 + 26) = v25;
      *(v18 + 108) = 0;
      *(v18 + 55) = identity;
      *(v18 + 56) = environment;
      *(v18 + 43) = [attributes objectForKeyedSubscript:@"NonLocalizedName"];
      *(v18 + 89) = [objc_msgSend(attributes objectForKeyedSubscript:{@"DeviceType", "intValue"}];
      *(v18 + 147) = [attributes objectForKeyedSubscript:@"UniqueID"];
      *(v18 + 16) = 0xFFFFFFFFLL;
      *(v18 + 34) = -1;
      *(v18 + 148) = -1;
      v26 = [objc_msgSend(group "activePortTypes")];
      v18[756] = v26 > 1;
      if (v26 < 2)
      {
        syncGroup = 0;
      }

      else
      {
        syncGroup = [group syncGroup];
      }

      *(v18 + 95) = syncGroup;
      *(v18 + 114) = 0;
      *(v18 + 94) = 0;
      *(v18 + 126) = 0;
      if ([objc_msgSend(*(v18 + 20) objectForKeyedSubscript:{*off_1E798A250), "intValue"}] && objc_msgSend(objc_msgSend(*(v18 + 20), "objectForKeyedSubscript:", *off_1E798A248), "intValue"))
      {
        v18[176] = 1;
      }

      [objc_msgSend(objc_msgSend(group "baseZoomFactorsByPortType")];
      if (v28 == 0.0)
      {
        v28 = 1.0;
      }

      *(v18 + 50) = v28;
      if (v18[756] == 1)
      {
        v29 = [*(v18 + 1) getProperty:*off_1E798C1D0 error:v109];
        if (v109[0])
        {
          [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
          goto LABEL_69;
        }

        *(v18 + 192) = [objc_msgSend(v29 objectForKeyedSubscript:{*off_1E798C728), "intValue"}];
      }

      if ([objc_msgSend(attributes objectForKeyedSubscript:{@"Sphere", "BOOLValue"}])
      {
        v30 = [*(v18 + 1) getPropertyIfSupported:*off_1E798C1C0 error:0];
        v31 = [v30 containsObject:*off_1E798C4C8];
        if (v31)
        {
          LOBYTE(v31) = [v30 containsObject:*off_1E798C4C0];
        }

        v18[480] = v31;
        v32 = [v30 containsObject:*off_1E798C4A0];
        v33 = [BWSphereModeSelector alloc];
        v34 = *(v18 + 4);
        v35 = [objc_msgSend(attributes objectForKeyedSubscript:{@"SphereStillActivePreview", "BOOLValue"}];
        v36 = [objc_msgSend(attributes objectForKeyedSubscript:{@"SphereVideo", "BOOLValue"}];
        [objc_msgSend(attributes objectForKeyedSubscript:{@"SphereVideoMaxFrameRate", "floatValue"}];
        v38 = v37;
        v39 = [objc_msgSend(attributes objectForKeyedSubscript:{@"TrueVideoUsesSphereModeVideoHighRange", "BOOLValue"}];
        LODWORD(v40) = v38;
        *(v18 + 58) = [(BWSphereModeSelector *)v33 initWithPortType:v34 stillActivePreviewSupported:v35 sphereVideoSupported:v36 sphereVideoMaxFrameRate:v32 spherePanoSupported:v39 trueVideoUsesSphereModeVideoHighRange:v40];
      }

      *(v18 + 121) = -1;
      *(v18 + 165) = 3;
      *(v18 + 86) = FigDispatchQueueCreateWithPriority();
      dictionaryCopy = dictionary;
      *(v18 + 23) = dictionaryCopy;
      v18[168] = [objc_msgSend(dictionaryCopy objectForKeyedSubscript:{@"usePinholeCameraFocalLengthInIntrinsicMatrixCalculation", "BOOLValue"}];
      [objc_msgSend(*(v18 + 23) objectForKeyedSubscript:{@"ExifFocalLengthMultiplier", "floatValue"}];
      *(v18 + 43) = v42;
      v43 = [*(v18 + 1) getProperty:*off_1E798C0D8 error:v109];
      v44 = v109[0];
      if (!v109[0])
      {
        v45 = v43;
        [v43 floatValue];
        if (v46 > 0.0)
        {
          [v45 floatValue];
          if (v47 < 100.0)
          {
            [v45 floatValue];
            *(v18 + 71) = v48;
            if (v48 <= 0.0)
            {
              v49 = 1.0;
            }

            else
            {
              v49 = 1.0 / v48;
            }

            *(v18 + 72) = v49;
            v50 = [*(v18 + 1) getPropertyIfSupported:*off_1E798C120 error:v109];
            if (v50)
            {
              v51 = v50;
              v52 = [objc_msgSend(v50 objectForKeyedSubscript:{*off_1E798A2C0), "intValue"}];
              v53 = [objc_msgSend(v51 objectForKeyedSubscript:{*off_1E798A288), "intValue"}];
              *(v18 + 244) = v52;
              *(v18 + 245) = v53;
            }

            *(v18 + 40) = [*(v18 + 1) copyPropertyIfSupported:*off_1E798BD28 error:v109];
            *(v18 + 41) = [*(v18 + 1) copyPropertyIfSupported:*off_1E798BD20 error:v109];
            [objc_msgSend(*(v18 + 1) getPropertyIfSupported:*off_1E798BD18 error:{v109), "floatValue"}];
            *(v18 + 88) = v54;
            v55 = *off_1E798BD38;
            if ([*(v18 + 13) objectForKeyedSubscript:*off_1E798BD38])
            {
              v56 = [*(v18 + 1) copyProperty:v55 error:v109];
              *(v18 + 38) = v56;
              v57 = BWInvertRowMajorViewMatrixData(v56);
            }

            else
            {
              *(v18 + 38) = [group cameraViewMatrixForPortType:*(v18 + 4)];
              v57 = [group cameraPoseMatrixForPortType:*(v18 + 4)];
            }

            v58 = v57;
            *(v18 + 42) = v58;
            if (!(*(v18 + 38) | v58))
            {
              v59 = FigCaptureDeviceCoreRepairStatusForPortType(*(v18 + 4));
              if ((v59 & 0xFFFFFFFE) == 2)
              {
                v60 = v59;
                v107[0] = xmmword_1AD046FE0;
                v107[1] = xmmword_1AD046FF0;
                v107[2] = xmmword_1ACF06340;
                v61 = [MEMORY[0x1E695DEF0] dataWithBytes:v107 length:48];
                *(v18 + 38) = v61;
                *(v18 + 42) = v61;
                if (dword_1ED844330)
                {
                  v106 = 0;
                  v105 = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v63 = v106;
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v105))
                  {
                    v65 = v63;
                  }

                  else
                  {
                    v65 = v63 & 0xFFFFFFFE;
                  }

                  if (v65)
                  {
                    v66 = BWPortTypeToDisplayString(*(v18 + 4), v64);
                    v98 = 136315650;
                    v99 = "[BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:]";
                    v100 = 2114;
                    v101 = v66;
                    v102 = 1024;
                    v103 = v60;
                    LODWORD(v88) = 28;
                    v87 = &v98;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }
              }
            }

            if ([objc_msgSend(attributes objectForKeyedSubscript:{@"Focus", v87, v88), "BOOLValue"}] && (v109[0] = FigMotionGetGravityFactor(*(v18 + 20), *(v18 + 23), v18 + 75)) != 0)
            {
              [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
            }

            else
            {
              *(v18 + 188) = 0;
              v67 = *off_1E798BED8;
              if ([*(v18 + 13) objectForKeyedSubscript:*off_1E798BED8] && (v109[0] = objc_msgSend(*(v18 + 1), "setProperty:value:", v67, MEMORY[0x1E695E110])) != 0)
              {
                [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
              }

              else
              {
                v68 = *off_1E798C0E8;
                if (![*(v18 + 13) objectForKeyedSubscript:*off_1E798C0E8] || (objc_msgSend(*(v18 + 4), "isEqualToString:", *off_1E798A0E8) & 1) != 0 || (objc_msgSend(objc_msgSend(attributes, "objectForKeyedSubscript:", @"RawBufferCompandingDisabled"), "BOOLValue") & 1) != 0)
                {
                  goto LABEL_55;
                }

                v109[0] = [*(v18 + 1) setProperty:v68 value:MEMORY[0x1E695E118]];
                if (!v109[0])
                {
                  v18[92] = 1;
LABEL_55:
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v69 = *(v18 + 14);
                  v70 = [v69 countByEnumeratingWithState:&v94 objects:v93 count:16];
                  v71 = *off_1E798C9A0;
                  if (v70)
                  {
                    v72 = v70;
                    v73 = *v95;
                    v74 = *off_1E798CAB8;
                    v75 = *off_1E798C710;
                    while (2)
                    {
                      for (i = 0; i != v72; ++i)
                      {
                        if (*v95 != v73)
                        {
                          objc_enumerationMutation(v69);
                        }

                        v77 = [objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v94 + 1) + 8 * i) objectForKeyedSubscript:{v71), "objectForKeyedSubscript:", v74), "objectForKeyedSubscript:", v75), "intValue"}];
                        if (v77)
                        {
                          if (v18[92] == 1)
                          {
                            if (v77 > 1735549491)
                            {
                              if (v77 == 1919379252)
                              {
                                v77 = 1919378232;
                              }

                              else if (v77 == 1735549492)
                              {
                                v77 = 1735549752;
                              }
                            }

                            else if (v77 == 1650943796)
                            {
                              v77 = 1650942776;
                            }

                            else if (v77 == 1734505012)
                            {
                              v77 = 1734501176;
                            }
                          }

                          *(v18 + 24) = v77;
                          goto LABEL_66;
                        }
                      }

                      v72 = [v69 countByEnumeratingWithState:&v94 objects:v93 count:16];
                      if (v72)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_66:
                  *(v18 + 15) = [objc_msgSend(objc_msgSend(*(v18 + 14) "firstObject")];
                  v78 = *off_1E798C098;
                  if ([*(v18 + 13) objectForKeyedSubscript:*off_1E798C098] && (v79 = MEMORY[0x1E695E110], *(v18 + 105) = -[BWNoiseReductionAndSharpeningParameters initWithPortType:sensorIDDictionary:]([BWNoiseReductionAndSharpeningParameters alloc], "initWithPortType:sensorIDDictionary:", *(v18 + 4), *(v18 + 23)), v80 = *(v18 + 1), v81 = *off_1E798B808, v90 = v79, v91 = v81, v89 = *off_1E798B7E8, v92 = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v90, &v89, 1), (v109[0] = objc_msgSend(v80, "setProperty:value:", v78, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v92, &v91, 1))) != 0))
                  {
                    [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
                  }

                  else
                  {
                    *(v18 + 1080) = *MEMORY[0x1E695EFF8];
                    *(v18 + 278) = 0;
                    v82 = MEMORY[0x1E6960C70];
                    v83 = *MEMORY[0x1E6960C70];
                    *(v18 + 1116) = *MEMORY[0x1E6960C70];
                    v84 = *(v82 + 16);
                    *(v18 + 1132) = v84;
                    *(v18 + 1140) = v83;
                    *(v18 + 1156) = v84;
                    *(v18 + 291) = 0;
                  }

                  goto LABEL_69;
                }

                [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
              }
            }

LABEL_69:
            v85 = v109[0];
            goto LABEL_70;
          }
        }

        v44 = -12783;
        v109[0] = -12783;
      }

      *error = v44;
      goto LABEL_71;
    }

    [BWFigVideoCaptureStream initWithCaptureStream:parentDevice:attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:];
    goto LABEL_69;
  }

  [BWFigVideoCaptureStream initWithCaptureStream:v109 parentDevice:v104 attributes:? sensorIDDictionary:? synchronizedStreamsGroup:? applicationID:? clientAuditToken:? tccIdentity:? mediaEnvironment:? error:?];
  v85 = v104[0];
LABEL_70:
  *error = v85;
  if (v85)
  {
LABEL_71:

    return 0;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigVideoCaptureStream;
  [(BWFigVideoCaptureStream *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", v4, self, BWPortTypeToDisplayString(self->_portType, v5)];
}

- (void)updateClientAuditToken:(id *)token
{
  os_unfair_lock_lock(&self->_streamStateLock);
  v5 = *&self->_clientAuditToken.val[4];
  v24 = *self->_clientAuditToken.val;
  v25 = v5;
  v6 = *&token->var0[4];
  *self->_clientAuditToken.val = *token->var0;
  *&self->_clientAuditToken.val[4] = v6;
  v7 = *&token->var0[4];
  v22 = *token->var0;
  v23 = v7;
  self->_clientPID = FigCaptureGetPIDFromAuditToken(&v22);
  v8 = self->_started && !self->_willStopStreaming && !self->_suspended || [(BWFigCaptureStream *)self->_stream streaming];
  v9 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  deviceType = self->_deviceType;
  *&v11 = self->_maximumSupportedFrameRate;
  v12 = *&self->_numberOfBuffersEmitted;
  tccIdentity = self->_tccIdentity;
  mediaEnvironment = self->_mediaEnvironment;
  v15 = *&self->_clientAuditToken.val[4];
  v22 = *self->_clientAuditToken.val;
  v23 = v15;
  [v9 setStreaming:v8 deviceType:deviceType maxFrameRate:v12 streamUniqueID:&v22 clientAuditToken:tccIdentity tccIdentity:mediaEnvironment mediaEnvironment:v11 completionHandler:0];
  v16 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
  v17 = self->_deviceType;
  *&v18 = self->_maximumSupportedFrameRate;
  v19 = *&self->_numberOfBuffersEmitted;
  v20 = self->_tccIdentity;
  v21 = self->_mediaEnvironment;
  v22 = v24;
  v23 = v25;
  [v16 setStreaming:0 deviceType:v17 maxFrameRate:v19 streamUniqueID:&v22 clientAuditToken:v20 tccIdentity:v21 mediaEnvironment:v18 completionHandler:0];
  os_unfair_lock_unlock(&self->_streamStateLock);
}

- (int)setActiveFormatIndex:(int)index
{
  if (self->_activeFormatIndex == index)
  {
    return 0;
  }

  v3 = *&index;
  if (index < 0 || [(NSArray *)self->_supportedFormats count]<= index)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Can't set active format index: because the specified format is outside the supported format range. Use -supportedFormats." userInfo:0]);
  }

  fastSwitchingMainFormatIndex = self->_fastSwitchingMainFormatIndex;
  if (fastSwitchingMainFormatIndex < 0)
  {
    v6 = -[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798BE88, [MEMORY[0x1E696AD98] numberWithInt:v3]);
    v27 = v6;
    if (v6)
    {
      v19 = v6;
      [BWFigVideoCaptureStream setActiveFormatIndex:];
      return v19;
    }

    self->_activeFormatIndex = v3;
  }

  else
  {
    if (self->_activeFastSwitchingMainFormatIndex != fastSwitchingMainFormatIndex && self->_activeFormatIndex != fastSwitchingMainFormatIndex)
    {
      v7 = -[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798BE88, [MEMORY[0x1E696AD98] numberWithInt:?]);
      if (v7)
      {
        v19 = v7;
        [BWFigVideoCaptureStream setActiveFormatIndex:];
        return v19;
      }

      fastSwitchingMainFormatIndex = self->_fastSwitchingMainFormatIndex;
    }

    self->_activeFastSwitchingMainFormatIndex = fastSwitchingMainFormatIndex;
    self->_activeFormatIndex = v3;
    v8 = [(BWFigVideoCaptureStream *)self setActiveNondisruptiveSwitchingFormatIndex:v3];
    v27 = v8;
    if (v8)
    {
      v19 = v8;
      [BWFigVideoCaptureStream setActiveFormatIndex:];
      return v19;
    }

    LODWORD(v3) = self->_activeFormatIndex;
  }

  v9 = [(NSArray *)self->_supportedFormats objectAtIndexedSubscript:v3];
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
  v11 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798C980), "intValue"}];
  self->_activeVideoExternalSyncFrameRate.u.rational.denominator = v10;
  self->_activeVideoExternalSyncFrameRate.tag = v11;
  [(BWFigVideoCaptureStream *)self _recomputeOpticalCenterOffsets];

  *&self->_masterToSlaveFrameRateRatio = [(BWFigCaptureStream *)self->_stream copyPropertyIfSupported:*off_1E798BEA0 error:&v27];
  if (v27)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v27 = 0;
  }

  self->_geometricDistortionCoefficients = [(BWFigCaptureStream *)self->_stream copyPropertyIfSupported:*off_1E798BEA8 error:&v27];
  if (v27)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v26;
    if (os_log_type_enabled(v13, v25))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v23 = 136315138;
      v24 = "[BWFigVideoCaptureStream setActiveFormatIndex:]";
      LODWORD(v22) = 12;
      v21 = &v23;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v27 = 0;
  }

  self->_cameraViewMatrixCalibratedForNarrowerFieldOfView = [(BWFigCaptureStream *)self->_stream copyPropertyIfSupported:*off_1E798BD40 error:&v27];
  if (v27)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v26;
    if (os_log_type_enabled(v16, v25))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v23 = 136315138;
      v24 = "[BWFigVideoCaptureStream setActiveFormatIndex:]";
      LODWORD(v22) = 12;
      v21 = &v23;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v27 = 0;
  }

  [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStreamDidChangeActiveFormatIndex:self, v21, v22];
  return v27;
}

- (int)setActiveNondisruptiveSwitchingFormatIndex:(int)index
{
  v3 = *&index;
  if ([(BWFigVideoCaptureStream *)self isNondisruptiveFastSwitchingSupported])
  {
    maximumSupportedFrameRate = self->_maximumSupportedFrameRate;
    v6 = FigCaptureFrameRateAsInt(*&self->_minimumFrameRate.u, self->_minimumFrameRate.tag);
    v7 = FigCaptureFrameRateAsInt(*&self->_maximumFrameRate.u, self->_maximumFrameRate.tag);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    maximumSupportedFrameRate = 0;
  }

  return [(BWFigVideoCaptureStream *)self setActiveNondisruptiveSwitchingFormatIndex:v3 maximumAllowedFrameRate:maximumSupportedFrameRate minimumFrameRate:v6 maximumFrameRate:v7];
}

- (int)setActiveNondisruptiveSwitchingFormatIndex:(int)index maximumAllowedFrameRate:(int)rate minimumFrameRate:(int)frameRate maximumFrameRate:(int)maximumFrameRate
{
  if (self->_activeFormatIndex < 0)
  {
    return -12782;
  }

  v6 = *&maximumFrameRate;
  v7 = *&frameRate;
  v8 = *&rate;
  v9 = *&index;
  if (index > -2)
  {
    os_unfair_lock_lock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
    if (v9 == -1)
    {
      fastSwitchingMainFormatIndex = self->_fastSwitchingMainFormatIndex;
      if (fastSwitchingMainFormatIndex < 0)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        activeFormatIndex = self->_activeFormatIndex;
        if (fastSwitchingMainFormatIndex == activeFormatIndex)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = activeFormatIndex;
        }
      }
    }
  }

  else
  {
    if ([(NSArray *)self->_supportedFormats count]<= index)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Can't set active nondisruptive switching format index: because the specified format is outside the supported format range. Use -supportedNondisruptiveSwitchingFormats." userInfo:0]);
    }

    os_unfair_lock_lock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  }

  activeNondisruptiveSwitchingFormatIndex = self->_activeNondisruptiveSwitchingFormatIndex;
  if (v9 == activeNondisruptiveSwitchingFormatIndex)
  {
    goto LABEL_16;
  }

  if (activeNondisruptiveSwitchingFormatIndex != -1)
  {
    goto LABEL_17;
  }

  activeFastSwitchingMainFormatIndex = self->_activeFastSwitchingMainFormatIndex;
  if (activeFastSwitchingMainFormatIndex < 0)
  {
    activeFastSwitchingMainFormatIndex = self->_activeFormatIndex;
  }

  if (v9 == activeFastSwitchingMainFormatIndex)
  {
LABEL_16:
    v15 = 0;
  }

  else
  {
LABEL_17:
    if (v9 == -1)
    {
      v16 = *MEMORY[0x1E695E738];
    }

    else
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v9];
    }

    v17 = (self->_activeNondisruptiveSwitchingCommandID + 1);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v16 forKeyedSubscript:*off_1E798A1F8];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v17), *off_1E798A1C8}];
    if (v8 && v7 && v6)
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v8), *off_1E798A230}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v7), *off_1E798A240}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v6), *off_1E798A238}];
    }

    v19 = v9;
    if (v9 == -1)
    {
      v19 = self->_activeFormatIndex;
    }

    if ([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_supportedFormats objectAtIndexedSubscript:{v19), "objectForKeyedSubscript:", *off_1E798C968), "BOOLValue"}])
    {
      v24.x = FigCaptureMetadataUtilitiesDenormalizePoint(self->_previewShift.y, self->_previewShiftAtBaseZoom.x, self->_videoCaptureDimensions.width);
      [dictionary setObject:CGPointCreateDictionaryRepresentation(v24) forKeyedSubscript:*off_1E798A268];
    }

    v20 = [(BWFigCaptureStream *)self->_stream setProperty:*off_1E798C0A8 value:dictionary];
    if (v20)
    {
      v15 = v20;
      FigDebugAssert3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      if (dword_1ED844330)
      {
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = 0;
      self->_activeNondisruptiveSwitchingFormatIndex = v9;
      self->_activeNondisruptiveSwitchingCommandID = v17;
    }
  }

  os_unfair_lock_unlock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  return v15;
}

- (int)activeNondisruptiveSwitchingFormatIndex
{
  os_unfair_lock_lock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  activeNondisruptiveSwitchingFormatIndex = self->_activeNondisruptiveSwitchingFormatIndex;
  os_unfair_lock_unlock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  return activeNondisruptiveSwitchingFormatIndex;
}

- ($2825F4736939C4A6D3AD43837233062D)activeSensorDimensions
{
  activeNondisruptiveSwitchingFormatIndex = [(BWFigVideoCaptureStream *)self activeNondisruptiveSwitchingFormatIndex];
  if ((activeNondisruptiveSwitchingFormatIndex & 0x80000000) != 0)
  {
    denominator = self->_activeVideoExternalSyncFrameRate.u.rational.denominator;
    tag = self->_activeVideoExternalSyncFrameRate.tag;
  }

  else
  {
    v4 = [(NSArray *)self->_supportedFormats objectAtIndexedSubscript:activeNondisruptiveSwitchingFormatIndex];
    denominator = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
    tag = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798C980), "intValue"}];
  }

  return (denominator | (tag << 32));
}

- (void)setMinimumFrameRate:(id)rate
{
  var1 = rate.var1;
  var0 = rate.var0;
  if (!FigCaptureFrameRateIsValidRational(*&self->_momentCaptureVideoRecordingAEMaxGain, self->_activeVideoLockedFrameRate.u.rational.numerator) && !FigCaptureFrameRateIsValidRational(*(&self->_activeVideoLockedFrameRate.u + 4), self->_activeVideoExternalSyncFrameRate.u.rational.numerator))
  {
    v6 = -[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798C060, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureFrameRateAsInt(*&var0, var1)}]);
    if (v6)
    {
      if (v6 == -12780)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't set min frame rate: because the frame rate is not in range (%d). Use -supportedFormats.", 4294954516), 0}]);
      }
    }

    else if (FigCaptureFrameRateNotEqual(*&var0, var1, *&self->_minimumFrameRate.u, self->_minimumFrameRate.tag))
    {
      *&v7 = FigCaptureFrameRateAsFloat(*&self->_minimumFrameRate.u, self->_minimumFrameRate.tag);
      self->_minimumFrameRate.u = var0;
      self->_minimumFrameRate.tag = var1;
      if (self->_started)
      {
        [(BWFigVideoCaptureStream *)self maxExposureDuration];
        memset(&v8, 0, sizeof(v8));
        [(BWFigVideoCaptureStream *)&self->super.isa _setMaxExposureDuration:0.0];
      }
    }
  }
}

- (void)setActiveVideoMinFrameDuration:(id *)duration activeVideoMaxFrameDuration:(id *)frameDuration
{
  v10 = *frameDuration;
  CMTimeGetSeconds(&v10);
  v10 = *duration;
  CMTimeGetSeconds(&v10);
  FigCaptureFrameRateFromFloat();
  [(BWFigVideoCaptureStream *)self setMinimumFrameRate:v7, v6];
  FigCaptureFrameRateFromFloat();
  [(BWFigVideoCaptureStream *)self setMaximumFrameRate:v9, v8];
}

- (void)setMaximumFrameRate:(id)rate
{
  var1 = rate.var1;
  var0 = rate.var0;
  if (!FigCaptureFrameRateIsValidRational(*&self->_momentCaptureVideoRecordingAEMaxGain, self->_activeVideoLockedFrameRate.u.rational.numerator) && !FigCaptureFrameRateIsValidRational(*(&self->_activeVideoLockedFrameRate.u + 4), self->_activeVideoExternalSyncFrameRate.u.rational.numerator))
  {
    v6 = -[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798C030, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureFrameRateAsInt(var0, var1)}]);
    if (v6)
    {
      if (v6 == -12780)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't set max frame rate: because the frame rate is not in range (%d). Use -supportedFormats.", 4294954516), 0}]);
      }
    }

    else
    {
      [(BWFigVideoCaptureStream *)self setMaximumFrameRate:var1, var0, var1];
    }
  }
}

- (void)setMaximumSupportedFrameRate:(float)rate
{
  if (![(BWFigCaptureStream *)self->_stream streaming])
  {
    *&v5 = rate;
    -[BWFigCaptureStream setPropertyIfSupported:value:](self->_stream, "setPropertyIfSupported:value:", *off_1E798C028, [MEMORY[0x1E696AD98] numberWithFloat:v5]);
LABEL_6:
    self->_maximumSupportedFrameRate = rate;
    return;
  }

  if (self->_maximumSupportedFrameRate == rate)
  {
    goto LABEL_6;
  }

  [-[BWFigCaptureStream getPropertyIfSupported:error:](self->_stream getPropertyIfSupported:*off_1E798C028 error:{0), "floatValue"}];
  if (v6 == rate)
  {
    goto LABEL_6;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)updateMaxExposureDurationClientOverride:(SEL)override
{
  if ((self[1].var0 & 1) != 0 && (v6 = self, p_var1 = &self[36].var1, time1 = *a4, v10 = *(self + 872), self = CMTimeCompare(&time1, &v10), self))
  {
    v9 = *&a4->var0;
    *(p_var1 + 2) = a4->var3;
    *p_var1 = v9;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
    retstr->var0 = 0;
    [($3CC8671D27C23BF42ADDB32F2B5E48AE *)v6 maxExposureDuration];
    return [(BWFigVideoCaptureStream *)v6 _setMaxExposureDuration:*&retstr->var0];
  }

  else
  {
    v8 = MEMORY[0x1E6960C68];
    *&retstr->var0 = *MEMORY[0x1E6960C68];
    retstr->var3 = *(v8 + 16);
  }

  return self;
}

- (void)setMotionDataDeliveryEnabled:(BOOL)enabled
{
  if (self->_motionDataDeliveryEnabled != enabled)
  {
    enabledCopy = enabled;
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798BF08, [MEMORY[0x1E696AD98] numberWithBool:?]))
    {
      self->_motionDataDeliveryEnabled = enabledCopy;
    }
  }
}

- (BOOL)motionDataInvalid
{
  os_unfair_lock_lock(&self->_sphereLock);
  motionDataInvalid = self->_motionDataInvalid;
  os_unfair_lock_unlock(&self->_sphereLock);
  return motionDataInvalid;
}

- (void)setIsStationary:(BOOL)stationary
{
  self->_isStationary = stationary;
  sphereModeSelector = self->_sphereModeSelector;
  if (sphereModeSelector)
  {
    stationaryCopy = stationary;
    if ([(BWSphereModeSelector *)sphereModeSelector tripodModeEnabled]!= stationary)
    {
      [(BWSphereModeSelector *)self->_sphereModeSelector setTripodModeEnabled:stationaryCopy];

      [(BWFigVideoCaptureStream *)self _updateSphereMode];
    }
  }
}

- (void)setFaceDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
  if (LOBYTE(self->_faceDetectionConfiguration) != enabledCopy)
  {
    LOBYTE(self->_faceDetectionConfiguration) = enabledCopy;
    [(BWFigVideoCaptureStream *)self _propagateFaceAndObjectDetectionSettings];
  }

  os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
}

- (void)setEyeDetectionRequired:(BOOL)required
{
  requiredCopy = required;
  os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
  if (BYTE1(self->_faceDetectionConfiguration) != requiredCopy)
  {
    BYTE1(self->_faceDetectionConfiguration) = requiredCopy;
    [(BWFigVideoCaptureStream *)self _propagateFaceAndObjectDetectionSettings];
  }

  os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
}

- (void)setFaceDetectionConfiguration:(id)configuration
{
  os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
  if (([*&self->_objectDetectionStartupDeferred isEqualToDictionary:configuration] & 1) == 0)
  {
    [BWFigVideoCaptureStream setFaceDetectionConfiguration:?];
  }

  os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
}

- (NSDictionary)faceDetectionConfiguration
{
  os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
  v3 = [*&self->_objectDetectionStartupDeferred copy];
  os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
  return v3;
}

- (void)setDetectedObjectTypes:(id)types
{
  os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
  if (([(OS_dispatch_queue *)self->_streamNotificationQueue isEqualToSet:types]& 1) == 0)
  {
    [BWFigVideoCaptureStream setFaceDetectionConfiguration:?];
  }

  os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
}

- (NSSet)detectedObjectTypes
{
  v2 = [(OS_dispatch_queue *)self->_streamNotificationQueue copy];

  return v2;
}

- (void)setObjectDetectionStartupDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  if (!self->_started || !deferred)
  {
    os_unfair_lock_lock(&self->_lastFaceDetectionEnabled);
    if (LOBYTE(self->_detectedObjectTypes) != deferredCopy)
    {
      LOBYTE(self->_detectedObjectTypes) = deferredCopy;
      [(BWFigVideoCaptureStream *)self _propagateFaceAndObjectDetectionSettings];
    }

    os_unfair_lock_unlock(&self->_lastFaceDetectionEnabled);
  }
}

- (int)stop
{
  stopSupported = [*&self->_faceAndObjectDetectionLock._os_unfair_lock_opaque stopSupported];
  v4 = 8;
  if (stopSupported)
  {
    v4 = 760;
  }

  v5 = *(&self->super.isa + v4);

  return [v5 stop];
}

- (void)sourceNodeWillStopStreaming
{
  os_unfair_lock_lock(&self->_streamStateLock);
  if (!self->_suspended)
  {
    self->_willStopStreaming = 1;
    [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStreamWillStopCameraStreamingMonitor];
  }

  os_unfair_lock_unlock(&self->_streamStateLock);
  delegate = self->_delegate;

  [(BWFigVideoCaptureStreamDelegate *)delegate captureStreamWillStopStreaming:self];
}

- (void)sourceNodeDidStopStreaming:(BOOL)streaming
{
  self->_started = 0;
  self->_willStopStreaming = 0;
  if (self->_stillImageCaptureEnabled)
  {

    *&self->_timeMachineEnabled = 0;
    [(BWFigVideoCaptureStream *)self _resetStillImageCaptureState];
    [(BWFigCaptureStream *)self->_stream unregisterForNotification:*off_1E798B8A8 listener:self];
    dispatch_sync(*&self->_timeMachineGrabNextFrame, &__block_literal_global_51);
  }

  [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStreamDidStopStreaming:self];
  if (!streaming)
  {
    [(BWFigVideoCaptureStream *)self resignStreamStartStopDelegate];
    os_unfair_lock_lock(&self->_streamStateLock);
    if (!self->_suspended)
    {
      v5 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
      deviceType = self->_deviceType;
      *&v7 = self->_maximumSupportedFrameRate;
      v8 = *&self->_numberOfBuffersEmitted;
      tccIdentity = self->_tccIdentity;
      mediaEnvironment = self->_mediaEnvironment;
      v11 = *&self->_clientAuditToken.val[4];
      v12[0] = *self->_clientAuditToken.val;
      v12[1] = v11;
      [v5 setStreaming:0 deviceType:deviceType maxFrameRate:v8 streamUniqueID:v12 clientAuditToken:tccIdentity tccIdentity:mediaEnvironment mediaEnvironment:v7 completionHandler:0];
    }

    os_unfair_lock_unlock(&self->_streamStateLock);
  }
}

- (int)sourceNodeWillEmitVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer drivesCameraControls:(BOOL)controls deliversStills:(BOOL)stills
{
  stillsCopy = stills;
  controlsCopy = controls;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (controls)
  {
    if ([(BWFigVideoCaptureStream *)self sphereEnabled])
    {
      [(BWFigVideoCaptureStream *)self _updateMotionDataStatus:buffer];
    }

    [(BWFigVideoCaptureStream *)self _updateAutoFocusPositionSensorModeForSampleBuffer:buffer];
  }

  [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStream:self willEmitVideoSampleBuffer:buffer drivesCameraControls:controlsCopy];
  if (HIDWORD(self->_stillImageNoiseAndSharpeningParameters))
  {
    [CMGetAttachment(buffer *off_1E798A3C8];
  }

  fvcs_removeSampleBufferPixelBufferMetadata(buffer);
  v9 = figVideoCaptureStream_blackenFrameIfNecessary(self, buffer);
  if (v9)
  {
    [BWFigVideoCaptureStream sourceNodeWillEmitVideoSampleBuffer:drivesCameraControls:deliversStills:];
  }

  else
  {
    if (self->_keypointDetectionEnabled && self->_ambientViewingEnvironment && !self->_stillImageKeypointDetectionEnabled)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      CVBufferSetAttachment(ImageBuffer, *MEMORY[0x1E6965CD8], self->_ambientViewingEnvironment, kCVAttachmentMode_ShouldPropagate);
    }

    if (*&self->_timeMachineEnabled && stillsCopy)
    {
      [(BWFigVideoCaptureStream *)self _serviceTimeMachineWithSampleBuffer:buffer];
    }

    ++self->_lastValidPTS.flags;
    CMSampleBufferGetPresentationTimeStamp(&v14, buffer);
    value = v14.value;
    flags = v14.flags;
    timescale = v14.timescale;
    if (v14.flags)
    {
      epoch = v14.epoch;
      if ((self->_firstValidPTS.value & 1) == 0)
      {
        *(&self->_averageFrameRateCalculationLock + 1) = timescale;
        *(&self->_previewShiftAtBaseZoom.y + 4) = value;
        LODWORD(self->_firstValidPTS.value) = flags;
        *(&self->_firstValidPTS.value + 4) = epoch;
      }

      HIDWORD(self->_firstValidPTS.epoch) = timescale;
      *&self->_firstValidPTS.flags = value;
      LODWORD(self->_lastValidPTS.value) = flags;
      *(&self->_lastValidPTS.value + 4) = epoch;
    }
  }

  return v9;
}

- (void)sourceNodeWillEmitDetectedFacesSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  os_unfair_lock_lock(&self->_cameraAccessLock);
  if (self->_clientProcessHasAccessToCamera)
  {
    blackenFramesForContinuityDisplayConnected = self->_blackenFramesForContinuityDisplayConnected;
    os_unfair_lock_unlock(&self->_cameraAccessLock);
    if (!blackenFramesForContinuityDisplayConnected)
    {
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_cameraAccessLock);
  }

  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (v6)
  {
    v7 = v6;
    [v6 setObject:0 forKeyedSubscript:*off_1E798B218];
    v8 = *off_1E798B220;

    [v7 setObject:0 forKeyedSubscript:v8];
  }

  else
  {
    [BWFigVideoCaptureStream sourceNodeWillEmitDetectedFacesSampleBuffer:];
  }
}

- (int)sourceNodeWillEmitDepthSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStream:self willEmitDepthSampleBuffer:buffer];

  return figVideoCaptureStream_blackenFrameIfNecessary(self, buffer);
}

- (int)sourceNodeWillEmitPointCloudSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStream:self willEmitPointCloudSampleBuffer:buffer];

  return figVideoCaptureStream_blackenFrameIfNecessary(self, buffer);
}

- (void)sourceNodeDidDropFrameWithPTS:(id *)s
{
  delegate = self->_delegate;
  v5 = *s;
  [(BWFigVideoCaptureStreamDelegate *)delegate captureStream:self didDropVideoSampleBufferWithPTS:&v5];
}

- (void)setStillImageCaptureEnabled:(BOOL)enabled
{
  if (self->_started)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't invoke setStillImageCaptureEnabled: while streaming" userInfo:{0, v3, v4}]);
  }

  self->_stillImageCaptureEnabled = enabled;
}

- (void)setTimeMachineEnabled:(BOOL)enabled
{
  if (self->_started)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't invoke timeMachineEnabled: while streaming" userInfo:{0, v3, v4}]);
  }

  LOBYTE(self->_lastDigitalFlashSphereOffsetOpticalCenter.y) = enabled;
}

- (void)setTimeMachineBufferHandler:(id)handler
{
  timeMachine = self->_timeMachine;
  if (timeMachine != handler)
  {

    self->_timeMachine = [handler copy];
  }
}

- (void)captureStillImageFromTimeMachineWithStillImageSettings:(id)settings
{
  if (*&self->_timeMachineEnabled)
  {
    [(BWFigVideoCaptureStream *)self _prepareForStillImageCaptureWithStillImageSettings:settings fromCMTimeMachine:1];
    copyBestFrame = [*&self->_timeMachineEnabled copyBestFrame];
    if (copyBestFrame)
    {
      [(BWFigVideoCaptureStream *)&self->_timeMachineEnabled captureStillImageFromTimeMachineWithStillImageSettings:copyBestFrame];
    }

    else
    {
      os_unfair_lock_lock(&self->_stillImageCaptureStateLock);
      LOBYTE(self->_timeMachineBufferHandler) = 1;

      os_unfair_lock_unlock(&self->_stillImageCaptureStateLock);
    }
  }

  else
  {
    [BWFigVideoCaptureStream captureStillImageFromTimeMachineWithStillImageSettings:];
  }
}

- (void)willCaptureStillImageFromFirmware
{
  captureType = [(BWStillImageCaptureStreamSettings *)self->_activeResolvedStillImageCaptureStreamSettings captureType];
  adaptiveBracketingGroupCaptureCount = [(BWStillImageCaptureStreamSettings *)self->_activeResolvedStillImageCaptureStreamSettings adaptiveBracketingGroupCaptureCount];
  if (captureType != 2 && adaptiveBracketingGroupCaptureCount <= 1)
  {
    stillImageCaptureDelegate = self->_stillImageCaptureDelegate;

    [(BWFigVideoCaptureStreamStillImageCaptureDelegate *)stillImageCaptureDelegate captureStreamWillBeginStillImageCapture:self];
  }
}

- (BOOL)clientProcessHasAccessToCamera
{
  os_unfair_lock_lock(&self->_cameraAccessLock);
  clientProcessHasAccessToCamera = self->_clientProcessHasAccessToCamera;
  os_unfair_lock_unlock(&self->_cameraAccessLock);
  return clientProcessHasAccessToCamera;
}

- (void)setBlackenFramesForContinuityDisplayConnected:(BOOL)connected
{
  connectedCopy = connected;
  os_unfair_lock_lock(&self->_cameraAccessLock);
  blackenFramesForContinuityDisplayConnected = self->_blackenFramesForContinuityDisplayConnected;
  self->_blackenFramesForContinuityDisplayConnected = connectedCopy;
  if (blackenFramesForContinuityDisplayConnected != connectedCopy)
  {
    if (connectedCopy)
    {
      if (dword_1ED844330)
      {
        goto LABEL_6;
      }
    }

    else if (dword_1ED844330)
    {
LABEL_6:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  os_unfair_lock_unlock(&self->_cameraAccessLock);
}

- (BOOL)blackenFramesForContinuityDisplayConnected
{
  os_unfair_lock_lock(&self->_cameraAccessLock);
  blackenFramesForContinuityDisplayConnected = self->_blackenFramesForContinuityDisplayConnected;
  os_unfair_lock_unlock(&self->_cameraAccessLock);
  return blackenFramesForContinuityDisplayConnected;
}

- (void)setMasterToSlaveFrameRateRatio:(int)ratio
{
  if (LODWORD(self->_synchronizedStreamsGroup) != ratio)
  {
    LODWORD(self->_synchronizedStreamsGroup) = ratio;
    [(BWFigVideoCaptureStream *)self _updateMasterSlavePropertiesOnStream];
    if ([(BWFigVideoCaptureStream *)self suspendingSupported])
    {
      if ([(NSString *)self->_portType isEqualToString:*off_1E798A0E8])
      {

        [(BWFigVideoCaptureStream *)self _updateSuspendStateForInfraredDepthStream];
      }
    }
  }
}

- (void)setStreamingRequiredWhenConfiguredAsSlave:(BOOL)slave
{
  if (BYTE4(self->_synchronizedStreamsGroup) != slave)
  {
    BYTE4(self->_synchronizedStreamsGroup) = slave;
    [(BWFigVideoCaptureStream *)self _updateMasterSlavePropertiesOnStream];
  }
}

- (void)setChromaticAbberrationCorrectionEnabled:(BOOL)enabled
{
  if (LOBYTE(self->_multiBandNoiseReductionMode) != enabled)
  {
    enabledCopy = enabled;
    supportedProperties = [(BWFigCaptureStream *)self->_stream supportedProperties];
    v6 = *off_1E798BD50;
    if ([(NSDictionary *)supportedProperties objectForKeyedSubscript:*off_1E798BD50])
    {
      if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v6, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
      {
        LOBYTE(self->_multiBandNoiseReductionMode) = enabledCopy;
      }
    }
  }
}

- (void)setContentAwareEnhancementEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  supportedProperties = [(BWFigCaptureStream *)self->_stream supportedProperties];
  v6 = *off_1E798BD88;
  if ([(NSDictionary *)supportedProperties objectForKeyedSubscript:*off_1E798BD88])
  {
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v6, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      BYTE1(self->_multiBandNoiseReductionMode) = enabledCopy;
    }
  }
}

- (void)setContentAwareAWBEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  supportedProperties = [(BWFigCaptureStream *)self->_stream supportedProperties];
  v6 = *off_1E798BD80;
  if ([(NSDictionary *)supportedProperties objectForKeyedSubscript:*off_1E798BD80])
  {
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v6, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      BYTE2(self->_multiBandNoiseReductionMode) = enabledCopy;
    }
  }
}

- (void)setKeypointDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BF18])
  {
    if (enabledCopy)
    {
      [(BWFigVideoCaptureStream *)self _configureKeypointDetection];
    }

    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", *off_1E798BF20, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      BYTE1(self->_keypointDetectionConfiguration) = enabledCopy;
    }
  }

  else
  {
    if (*&self->_lumaHistogramMetadataEnabled)
    {
      v5 = 0;
    }

    else
    {
      v5 = !enabledCopy;
    }

    if (!v5)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigVideoCaptureStream.m", 3690, @"LastShownDate:BWFigVideoCaptureStream.m:3690", @"LastShownBuild:BWFigVideoCaptureStream.m:3690", 0);
      free(v8);
    }
  }
}

- (void)setStillImageKeypointDetectionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    [(BWFigVideoCaptureStream *)self _configureKeypointDetection];
  }

  BYTE2(self->_keypointDetectionConfiguration) = enabled;
}

- (void)setMultiBandNoiseReductionMode:(int)mode
{
  v5 = *off_1E798C098;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798C098]&& ![(NSString *)self->_portType isEqualToString:*off_1E798A0E8])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (mode == 2)
    {
      v10 = *off_1E798B7F8;
      v14 = *off_1E798B7E8;
      v15 = v10;
      v16 = MEMORY[0x1E695E118];
      v17 = MEMORY[0x1E695E118];
      v7 = MEMORY[0x1E695DF20];
      v8 = &v16;
      v9 = &v14;
      v11 = 2;
    }

    else
    {
      if (mode == 1)
      {
        v18 = *off_1E798B7E8;
        v19 = MEMORY[0x1E695E118];
        v7 = MEMORY[0x1E695DF20];
        v8 = &v19;
        v9 = &v18;
      }

      else
      {
        v12 = *off_1E798B7E8;
        v13 = MEMORY[0x1E695E110];
        v7 = MEMORY[0x1E695DF20];
        v8 = &v13;
        v9 = &v12;
      }

      v11 = 1;
    }

    [v6 setObject:objc_msgSend(v7 forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19), *off_1E798B808}];
    if (![(BWFigCaptureStream *)self->_stream setProperty:v5 value:v6])
    {
      LODWORD(self->_stillImageNoiseAndSharpeningParameters) = mode;
    }
  }
}

- (void)setMainToSIFRFrameRateRatio:(int)ratio
{
  if (!-[BWFigCaptureStream setPropertyIfSupported:value:](self->_stream, "setPropertyIfSupported:value:", *off_1E798BFE0, [MEMORY[0x1E696AD98] numberWithInt:?]))
  {
    self->_expectedImagesOrErrorsForCaptureStillImageNow = ratio;
  }
}

- (void)setHighlightRecoverySuspended:(BOOL)suspended
{
  if (!-[BWFigCaptureStream setPropertyIfSupported:value:](self->_stream, "setPropertyIfSupported:value:", *off_1E798BEE0, [MEMORY[0x1E696AD98] numberWithBool:!suspended & BYTE4(self->_keypointDetectionConfiguration)]))
  {
    BYTE3(self->_keypointDetectionConfiguration) = suspended;
  }
}

- (void)setUnifiedBracketingEnabled:(BOOL)enabled
{
  if (HIBYTE(self->_multiBandNoiseReductionMode) != enabled)
  {
    HIBYTE(self->_multiBandNoiseReductionMode) = enabled;
  }
}

- (void)setAeStatisticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *off_1E798BC20;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BC20])
  {
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v5, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      LOBYTE(self->_band0StrengthModulation) = enabledCopy;
    }
  }
}

- (void)setRawFocusScoresEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *off_1E798BE10;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BE10])
  {
    if (enabledCopy)
    {
      v7 = *off_1E798B9A0;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    if (![(BWFigCaptureStream *)self->_stream setProperty:v5 value:v6])
    {
      BYTE1(self->_band0StrengthModulation) = enabledCopy;
    }
  }
}

- (void)setFocusBlurMapEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *off_1E798BE68;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BE68])
  {
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v5, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      BYTE2(self->_band0StrengthModulation) = enabledCopy;
    }
  }
}

- (void)setZeroShutterLagEnabled:(BOOL)enabled
{
  if (self->_chromaticAbberrationCorrectionEnabled != enabled)
  {
    self->_chromaticAbberrationCorrectionEnabled = enabled;
    v3 = enabled || self->_contentAwareEnhancementEnabled;
    [(BWSphereModeSelector *)self->_sphereModeSelector setZeroShutterLagEnabled:v3];
  }
}

- (void)setDigitalFlashZeroShutterLagEnabled:(BOOL)enabled
{
  if (self->_contentAwareEnhancementEnabled != enabled)
  {
    self->_contentAwareEnhancementEnabled = enabled;
    [(BWSphereModeSelector *)self->_sphereModeSelector setZeroShutterLagEnabled:self->_chromaticAbberrationCorrectionEnabled || enabled];
  }
}

- (void)setVisionDataSuspended:(BOOL)suspended
{
  stream = self->_stream;
  v4 = *off_1E798C2C0;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:suspended];

  [(BWFigCaptureStream *)stream setProperty:v4 value:v5];
}

- (void)setVisionDataKeypointDetectionThreshold:(float)threshold
{
  stream = self->_stream;
  v4 = *off_1E798C2B0;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];

  [(BWFigCaptureStream *)stream setProperty:v4 value:v5];
}

- (void)setBaseZoomFactorAfterGDC:(float)c
{
  if (self->_baseZoomFactorAfterGDC != c)
  {
    self->_baseZoomFactorAfterGDC = c;
  }
}

- (float)fudgedBaseZoomFactorForAspectRatio:(int)ratio
{
  [-[NSDictionary objectForKeyedSubscript:](self->_baseZoomFactorOverridesByAspectRatio objectForKeyedSubscript:{BWAspectRatioToShortString(ratio)), "floatValue"}];
  if (result <= 1.0)
  {

    [(BWFigVideoCaptureStream *)self baseZoomFactorAfterGDC];
  }

  return result;
}

- (void)setVideoHDRImageStatisticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *off_1E798BEC8;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BEC8])
  {
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v5, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      self->_keypointDetectionConfigured = enabledCopy;
    }
  }
}

- (void)setVideoHDRFusionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *off_1E798BEC0;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BEC0])
  {
    if (!-[BWFigCaptureStream setProperty:value:](self->_stream, "setProperty:value:", v5, [MEMORY[0x1E696AD98] numberWithBool:enabledCopy]))
    {
      HIBYTE(self->_keypointDetectionConfiguration) = enabledCopy;
    }
  }
}

- ($2825F4736939C4A6D3AD43837233062D)physicalSensorDimensions
{
  if (self->_videoCaptureDimensions.width < 1 || self->_videoCaptureDimensions.height <= 0)
  {
    p_videoCaptureDimensions = (&self->_activeVideoExternalSyncFrameRate.u + 4);
  }

  else
  {
    p_videoCaptureDimensions = &self->_videoCaptureDimensions;
  }

  return *p_videoCaptureDimensions;
}

- (void)setCinematicFramingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  LOBYTE(self->_physicalSensorDimensions.width) = enabled;
  v5 = *off_1E798BCF8;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BCF8])
  {
    stream = self->_stream;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];

    [(BWFigCaptureStream *)stream setPropertyIfSupported:v5 value:v7];
  }
}

- (void)setCenterStageRectOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  *&self->_cinematicFramingEnabled = interest;
  if ([(NSDictionary *)self->_supportedProperties objectForKeyedSubscript:*off_1E798BCF8])
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v10);
    [(BWFigCaptureStream *)self->_stream setPropertyIfSupported:*off_1E798BCF0 value:DictionaryRepresentation];
    if (DictionaryRepresentation)
    {

      CFRelease(DictionaryRepresentation);
    }
  }
}

- (CGRect)centerStageRectOfInterest
{
  v2 = *&self->_cinematicFramingEnabled;
  x = self->_centerStageRectOfInterest.origin.x;
  y = self->_centerStageRectOfInterest.origin.y;
  width = self->_centerStageRectOfInterest.size.width;
  result.size.height = width;
  result.size.width = y;
  result.origin.y = x;
  result.origin.x = v2;
  return result;
}

- (void)setDeskCamActive:(BOOL)active
{
  if (LOBYTE(self->_physicalSensorDimensions.width) == 1 && self->_started && !self->_suspended)
  {
    [(BWFigVideoCaptureStream *)self setDeskCamActive:active];
  }

  else
  {
    LOBYTE(self->_uniqueID) = active;
  }
}

- (void)setCmioZoomFactor:(float)factor
{
  if (-[BWFigCaptureStream setPropertyIfSupported:value:](self->_stream, "setPropertyIfSupported:value:", *off_1E798BD10, [MEMORY[0x1E696AD98] numberWithFloat:?]))
  {
    [BWFigVideoCaptureStream setCmioZoomFactor:];
  }
}

- (float)cmioZoomFactor
{
  v3 = 0;
  [-[BWFigCaptureStream getPropertyIfSupported:error:](self->_stream getPropertyIfSupported:*off_1E798BD10 error:{&v3), "floatValue"}];
  return result;
}

- (void)setZoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:(id)binned zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:(id)nonBinned ultraHighResolutionNondisruptiveStreamingFormatIndex:(int)index mainFormatSIFRBinningFactor:(int)factor quadraSubPixelSwitchingParameters:(id)parameters
{
  v8 = *&factor;
  v9 = *&index;

  *&self->_suppressedGesturesEnabled = binned;
  self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned = nonBinned;
  LODWORD(self->_nondisruptiveSwitchingFormatSelector) = v8;
  if (v8 == 2)
  {
    nonBinnedCopy = binned;
  }

  else
  {
    nonBinnedCopy = nonBinned;
  }

  v14 = [objc_msgSend(nonBinnedCopy "allKeys")];
  [objc_msgSend(v14 "firstObject")];
  if (v15 == self->_baseZoomFactor)
  {
    if ([v14 count] < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v14 subarrayWithRange:{1, objc_msgSend(v14, "count") - 1}];
    }
  }

  self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned = v14;
  self->_nondisruptiveSwitchingZoomFactors = 0;
  if (*&self->_suppressedGesturesEnabled || self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned)
  {
    v16 = [BWNondisruptiveSwitchingFormatSelector alloc];
    *&v17 = self->_baseZoomFactor;
    self->_nondisruptiveSwitchingZoomFactors = [(BWNondisruptiveSwitchingFormatSelector *)v16 initWithPortType:self->_portType quadraSubPixelSwitchingParameters:parameters baseZoomFactor:*&self->_suppressedGesturesEnabled zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:v9 ultraHighResolutionNondisruptiveStreamingFormatIndex:v8 mainFormatSIFRBinningFactor:v17];
  }
}

- (void)serviceNondisruptiveSwitchingFormatForZoomFactor:(float)factor frameStatistics:(id)statistics imageControlMode:(int)mode stillImageDigitalFlashMode:(int)flashMode isStationary:(BOOL)stationary binnedSIFROnSecondaryStreamAllowed:(BOOL)allowed ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:(BOOL)monitoring ultraHighResolutionZeroShutterLagEnabled:(BOOL)self0
{
  if (*&self->_suppressedGesturesEnabled || self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned)
  {
    BYTE1(v12) = enabled;
    LOBYTE(v12) = monitoring;
    v11 = [NSArray formatIndexForZoomFactor:"formatIndexForZoomFactor:frameStatistics:imageControlMode:stillImageDigitalFlashMode:isStationary:isSecondaryStream:binnedSIFROnSecondaryStreamAllowed:ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:ultraHighResolutionZeroShutterLagEnabled:" frameStatistics:statistics imageControlMode:*&mode stillImageDigitalFlashMode:*&flashMode isStationary:stationary isSecondaryStream:self->_isSlave binnedSIFROnSecondaryStreamAllowed:allowed ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:v12 ultraHighResolutionZeroShutterLagEnabled:?];

    [(BWFigVideoCaptureStream *)self setActiveNondisruptiveSwitchingFormatIndex:v11];
  }

  else
  {
    [BWFigVideoCaptureStream serviceNondisruptiveSwitchingFormatForZoomFactor:frameStatistics:imageControlMode:stillImageDigitalFlashMode:isStationary:binnedSIFROnSecondaryStreamAllowed:ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:ultraHighResolutionZeroShutterLagEnabled:];
  }
}

- (void)setPreviewShift:(CGPoint)shift
{
  if (shift.x != *&self->_mainFormatSIFRBinningFactor || shift.y != self->_previewShift.x)
  {
    *&self->_mainFormatSIFRBinningFactor = shift;
    [(BWFigVideoCaptureStreamDelegate *)self->_delegate captureStream:self didUpdatePreviewShift:?];
  }
}

- (void)setMaxExposureDurationClientOverride:(id *)override
{
  v3 = *&override->var0;
  *&self->_maxExposureDurationClientOverride.timescale = override->var3;
  *&self->_zeroShutterLagEnabled = v3;
}

- (void)setMaxExposureDurationFrameworkOverride:(id *)override
{
  v3 = *&override->var0;
  *&self->_maxExposureDurationFrameworkOverride.timescale = override->var3;
  *&self->_maxExposureDurationClientOverride.epoch = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastStillImagePTS
{
  *&retstr->var0 = *(&self[22].var0 + 4);
  retstr->var3 = *(&self[22].var3 + 4);
  return self;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *self[13].var0;
  *retstr->var0 = *&self[12].var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (CGPoint)previewShiftAtBaseZoom
{
  objc_copyStruct(v4, &self->_previewShift.y, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_logStreamingPowerEvent:(uint64_t)event
{
  if (event)
  {
    v6 = a2;
    if (a2)
    {
      memset(v12, 0, sizeof(v12));
      v13 = 0;
      LOBYTE(v12[0]) = *(event + 817);
      DWORD1(v12[0]) = *(event + 84);
      BYTE8(v12[0]) = *(event + 812);
      *(v12 + 12) = *(event + 960);
      BYTE12(v12[1]) = *(event + 1028);
      *(&v12[1] + 13) = *(event + 1029);
      HIBYTE(v12[1]) = *(event + 1033);
      LOBYTE(v13) = *(event + 984);
      OUTLINED_FUNCTION_20_8();
      date = [MEMORY[0x1E695DF00] date];
      [event averageFrameRate];
      FigCaptureLogCameraStreamingPowerEvent(v2, v3, v4, v6, v5, date, [event continuityCameraIsWired], objc_msgSend(event, "isDeskCamActive"), v9, v12);
    }

    else
    {
      OUTLINED_FUNCTION_20_8();
      date2 = [MEMORY[0x1E695DF00] date];
      [event averageFrameRate];
      FigCaptureLogCameraStreamingPowerEvent(v2, v3, v4, v6, v5, date2, [event continuityCameraIsWired], objc_msgSend(event, "isDeskCamActive"), v11, 0);
    }
  }
}

- (double)_convertOpticalCenterToOpticalCenterOffset:(double)offset error:(double)error
{
  if (!self)
  {
    return 0.0;
  }

  result = *MEMORY[0x1E695EFF8];
  v6 = *(self + 960);
  if (v6 >= 1 && *(self + 964) >= 1 && (offset != result || error != *(MEMORY[0x1E695EFF8] + 8)))
  {
    result = offset - vcvtd_n_f64_u32(v6, 1uLL);
  }

  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

- (double)_convertOpticalCenterOffsetToPhysicalSensorDimensions:(uint64_t)dimensions
{
  if (!dimensions)
  {
    return 0.0;
  }

  v3 = [*(dimensions + 112) objectAtIndexedSubscript:-[BWFigVideoCaptureStream _activeFormatIndexWithNondisruptiveSwitching](dimensions)];
  v4 = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798D3F0), "BOOLValue"}];
  v5 = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798C950), "intValue"}];
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 << v4;
  if (v7 <= 1)
  {
    return a2;
  }

  else
  {
    return a2 * v7;
  }
}

- (int)synchronizedStreamsGroupDidUpdateActiveNondisruptiveSwitchingFormatIndex:(int)index activeNondisruptiveSwitchingCommandID:(int)d maximumAllowedFrameRate:(int)rate minimumFrameRate:(int)frameRate maximumFrameRate:(int)maximumFrameRate
{
  if (self->_activeFormatIndex < 0)
  {
    return -12782;
  }

  os_unfair_lock_lock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  self->_activeNondisruptiveSwitchingFormatIndex = index;
  self->_activeNondisruptiveSwitchingCommandID = d;
  os_unfair_lock_unlock(&self->_activeNondisruptiveSwitchingFormatIndexLock);
  result = 0;
  if (rate && frameRate && maximumFrameRate)
  {
    result = [(BWFigVideoCaptureStream *)self isNondisruptiveFastSwitchingSupported];
    if (result)
    {
      self->_maximumSupportedFrameRate = rate;
      self->_minimumFrameRate.u = FigCaptureFrameRateFromInt(frameRate);
      self->_minimumFrameRate.tag = v14;
      self->_maximumFrameRate.u = FigCaptureFrameRateFromInt(maximumFrameRate);
      self->_maximumFrameRate.tag = v15;
      v16 = +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
      [(BWFigCaptureStream *)self->_stream streaming];
      *&v17 = OUTLINED_FUNCTION_2_51();
      [v16 setStreaming:v17 deviceType:0 maxFrameRate:? streamUniqueID:? clientAuditToken:? tccIdentity:? mediaEnvironment:? completionHandler:?];
      return 0;
    }
  }

  return result;
}

- (BOOL)setActiveVideoLockedFrameRate:(id)rate activeVideoExternalSyncFrameRate:(id)frameRate
{
  if (self->_started)
  {
    LOBYTE(v11) = 0;
    return v11;
  }

  var1 = frameRate.var1;
  var0 = frameRate.var0;
  v6 = rate.var1;
  v7 = rate.var0;
  supportedProperties = [(BWFigCaptureStream *)self->_stream supportedProperties];
  v10 = *off_1E798BE28;
  v11 = [(NSDictionary *)supportedProperties objectForKeyedSubscript:*off_1E798BE28];
  if (!v11)
  {
    return v11;
  }

  if (!FigCaptureFrameRateIsValidRational(v7, v6))
  {
    if (FigCaptureFrameRateIsValidRational(var0, var1))
    {
      *(&self->_activeVideoLockedFrameRate.u + 4) = var0;
      self->_activeVideoExternalSyncFrameRate.u.rational.numerator = var1;
      v15 = FigCaptureFrameRateAdjustedByMicroseconds(var0, var1, 0.0);
      v16 = HIDWORD(v15);
      stream = self->_stream;
      v19[0] = [MEMORY[0x1E696AD98] numberWithInt:v15];
      v19[1] = [MEMORY[0x1E696AD98] numberWithInt:v16];
      if (!-[BWFigCaptureStream setPropertyIfSupported:value:](stream, "setPropertyIfSupported:value:", v10, [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2]))
      {
        *&self->_momentCaptureVideoRecordingAEMaxGain = 0;
        self->_activeVideoLockedFrameRate.u.rational.numerator = 0;
        v13 = *(&self->_activeVideoLockedFrameRate.u + 4);
        numerator = self->_activeVideoExternalSyncFrameRate.u.rational.numerator;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_1_5();
    }

    else
    {
      OUTLINED_FUNCTION_7_31();
      LODWORD(v11) = [(BWFigCaptureStream *)self->_stream setPropertyIfSupported:v10 value:&unk_1F2248808];
      if (!v11)
      {
        return v11;
      }

      OUTLINED_FUNCTION_1_5();
    }

LABEL_16:
    FigDebugAssert3();
    OUTLINED_FUNCTION_7_31();
    return v11;
  }

  *&self->_momentCaptureVideoRecordingAEMaxGain = v7;
  self->_activeVideoLockedFrameRate.u.rational.numerator = v6;
  v12 = self->_stream;
  v20[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v20[1] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v7)];
  if (-[BWFigCaptureStream setPropertyIfSupported:value:](v12, "setPropertyIfSupported:value:", v10, [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2]))
  {
    OUTLINED_FUNCTION_1_5();
    goto LABEL_16;
  }

  *(&self->_activeVideoLockedFrameRate.u + 4) = 0;
  self->_activeVideoExternalSyncFrameRate.u.rational.numerator = 0;
  v13 = *&self->_momentCaptureVideoRecordingAEMaxGain;
  numerator = self->_activeVideoLockedFrameRate.u.rational.numerator;
LABEL_9:
  [(BWFigVideoCaptureStream *)self _setFrameRateRational:v13, numerator];
  LOBYTE(v11) = 1;
  return v11;
}

- (uint64_t)_setFrameRateRational:(int)rational
{
  if (result)
  {
    v5 = result;
    result = FigCaptureFrameRateIsValidRational(a2, rational);
    if (result)
    {
      v8[0] = *off_1E798C068;
      v7[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(a2)];
      v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
      v8[1] = *off_1E798C040;
      v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(a2)];
      v9[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
      result = [*(v5 + 8) setPropertyIfSupported:*off_1E798BE90 value:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
      if (result)
      {
        OUTLINED_FUNCTION_1_5();
        return FigDebugAssert3();
      }

      else
      {
        *(v5 + 56) = a2;
        *(v5 + 64) = rational;
        *(v5 + 68) = a2;
        *(v5 + 76) = rational;
      }
    }
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)updateMaxExposureDuration
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  if (self)
  {
    maxExposureDuration = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self maxExposureDuration];
    return OUTLINED_FUNCTION_16_15(maxExposureDuration, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return self;
}

- (id)_setMaxExposureDuration:(double)duration
{
  if (result)
  {
    v4 = result;
    flags = a2->flags;
    if ((flags & 1) == 0)
    {
      if (*(result + 920) != 1)
      {
        return result;
      }

      minimumFrameRate = [result minimumFrameRate];
      if (FigCaptureFrameRateAsInt(minimumFrameRate, v7) < 2)
      {
        v10 = 1;
      }

      else
      {
        minimumFrameRate2 = [v4 minimumFrameRate];
        v10 = FigCaptureFrameRateAsInt(minimumFrameRate2, v9);
      }

      CMTimeMake(&v12, 1, v10);
      HIDWORD(duration) = HIDWORD(v12.value);
      *a2 = v12;
    }

    *&duration = (a2->value / a2->timescale) * 1000.0;
    v11 = ceilf(*&duration);
    if ((flags & 1) == 0)
    {
      *&duration = v11;
    }

    result = [v4[1] setProperty:*off_1E798C018 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", duration)}];
    if (!result)
    {
      *(v4 + 920) = 1;
    }
  }

  return result;
}

- (void)setTemporalNoiseReductionConfigurationBand0Enabled:(BOOL)enabled rawEnabled:(BOOL)rawEnabled modulation:(int)modulation adaptiveOverscanEnabled:(BOOL)overscanEnabled strengthHighEnabled:(BOOL)highEnabled
{
  highEnabledCopy = highEnabled;
  overscanEnabledCopy = overscanEnabled;
  v9 = *&modulation;
  rawEnabledCopy = rawEnabled;
  enabledCopy = enabled;
  supportedProperties = [(BWFigCaptureStream *)self->_stream supportedProperties];
  v14 = *off_1E798C1E0;
  if ([(NSDictionary *)supportedProperties objectForKeyedSubscript:*off_1E798C1E0])
  {
    v15 = [(BWFigCaptureStream *)self->_stream getProperty:v14 error:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([v15 containsObject:*off_1E798C750])
    {
      [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
      [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
    }

    if ([v15 containsObject:*off_1E798C770])
    {
      [MEMORY[0x1E696AD98] numberWithBool:rawEnabledCopy];
      [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
    }

    if ([v15 containsObject:*off_1E798C778])
    {
      [MEMORY[0x1E696AD98] numberWithBool:highEnabledCopy];
      [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
    }

    if ([v15 containsObject:*off_1E798C758])
    {
      [MEMORY[0x1E696AD98] numberWithInt:v9];
      [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
    }

    v17 = [v15 containsObject:*off_1E798C760];
    if (v9)
    {
      if (v17)
      {
        v18 = +[FigCaptureCameraParameters sharedInstance];
        v19 = [(NSDictionary *)self->_sensorIDDictionary objectForKeyedSubscript:@"TemporalNoiseReductionParameters"];
        if (v19 || (v19 = [(FigCaptureCameraParameters *)v18 temporalNoiseReductionParameters]) != 0)
        {
          v20 = v19;
          v21 = *&self->_backgroundBlurEnabled;
          v22 = v21 <= 2 ? @"Band0StrengthModulationEnterThreshold" : @"ActionCamBand0StrengthModulationEnterThreshold";
          v23 = v21 <= 2 ? @"Band0StrengthModulationExitThreshold" : @"ActionCamBand0StrengthModulationExitThreshold";
          v24 = [(NSDictionary *)v19 objectForKeyedSubscript:v22];
          v25 = [(NSDictionary *)v20 objectForKeyedSubscript:v23];
          if (v25)
          {
            if (v24)
            {
              v26 = v25;
              [v24 floatValue];
              v28 = v27;
              [v26 floatValue];
              v30 = v29;
              LODWORD(v31) = v28;
              v34[0] = [MEMORY[0x1E696AD98] numberWithFloat:{v31, *off_1E798C740}];
              v33[1] = *off_1E798C748;
              LODWORD(v32) = v30;
              v34[1] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
              [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
              [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
            }
          }
        }
      }
    }

    if ([v15 containsObject:*off_1E798C768])
    {
      [MEMORY[0x1E696AD98] numberWithBool:overscanEnabledCopy];
      [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
    }

    if (![(BWFigCaptureStream *)self->_stream setProperty:*off_1E798C1D8 value:dictionary])
    {
      HIDWORD(self->_stillImageNoiseAndSharpeningParameters) = v9;
    }
  }
}

- (void)setEnablesSphereWhenAvailable:(BOOL)available
{
  [(BWSphereModeSelector *)self->_sphereModeSelector setEnablesSphereWhenAvailable:available];

  [(BWFigVideoCaptureStream *)self _updateSphereMode];
}

- (void)setSphereVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(BWSphereModeSelector *)self->_sphereModeSelector setSphereVideoRecenteringEnabled:0];
  [(BWSphereModeSelector *)self->_sphereModeSelector setSphereVideoEnabled:enabledCopy];

  [(BWFigVideoCaptureStream *)self _updateSphereMode];
}

- (void)_updateMotionDataStatus:(uint64_t)status
{
  if (status)
  {
    v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (v3 && (v4 = [v3 objectForKeyedSubscript:*off_1E798B3E0]) != 0)
    {
      unsignedIntValue = [v4 unsignedIntValue];
      if ((unsignedIntValue & 9) != 0)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        v6 = (unsignedIntValue >> 1) & 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    os_unfair_lock_lock((status + 456));
    *(status + 461) = v6;

    os_unfair_lock_unlock((status + 456));
  }
}

- (void)setSphereThermalLevel:(int)level
{
  [(BWSphereModeSelector *)self->_sphereModeSelector setSystemThermalLevel:*&level];

  [(BWFigVideoCaptureStream *)self _updateSphereMode];
}

- (void)_setLowPowerSphereModeEnabled:(uint64_t)enabled
{
  if (enabled && [*(enabled + 464) lowPowerSphereModeEnabled] != a2)
  {
    [*(enabled + 464) setLowPowerSphereModeEnabled:a2];

    [(BWFigVideoCaptureStream *)enabled _updateSphereMode];
  }
}

- (void)_captureStreamFaceDetectionConfiguration
{
  if (!self)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = *off_1E798AD38;
  v4 = ([objc_msgSend(*(self + 712) objectForKeyedSubscript:{*off_1E798AD38), "BOOLValue"}] & 1) == 0 && *(self + 721) == 0;
  v5 = *off_1E798AD30;
  v6 = [objc_msgSend(*(self + 712) objectForKeyedSubscript:{*off_1E798AD30), "BOOLValue"}];
  v7 = *(self + 712);
  v8 = *off_1E798AD48;
  v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798AD48), "BOOLValue"}];
  v10 = v9;
  if (v4)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_10:
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", 6), *off_1E798AD40}];
    return dictionary;
  }

LABEL_11:
  if (v10 & 1 | !v4)
  {
    goto LABEL_12;
  }

  return dictionary;
}

- (int)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v33[0] = 0;
  if (![(BWFigVideoCaptureStream *)self suspendingSupported])
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    v33[0] = -12782;
    return v33[0];
  }

  if (self->_suspended != suspendedCopy)
  {
    if (self->_started)
    {
      v5 = *&self->_faceAndObjectDetectionLock._os_unfair_lock_opaque;
      if (suspendedCopy)
      {

        self->_cachedVideoOutputsEnabled = [(BWFigCaptureStream *)self->_stream copyProperty:*off_1E798C2A0 error:v33];
        if (v33[0] || (v6 = [(BWFigCaptureStream *)self->_stream getProperty:*off_1E798C280 error:v33], v33[0]))
        {
          OUTLINED_FUNCTION_19_11();
        }

        else
        {
          v7 = v6;
          v23 = v5;
          v24 = suspendedCopy;
          v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          allKeys = [(NSDictionary *)self->_cachedVideoOutputsEnabled allKeys];
          v10 = [(NSArray *)allKeys countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            v13 = *off_1E798CA20;
            v14 = *off_1E798CAC0;
            v27 = *off_1E798CA48;
            v26 = *off_1E798C9F8;
            v25 = *off_1E798C9D8;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(allKeys);
                }

                v16 = *(*(&v29 + 1) + 8 * i);
                if ([-[NSDictionary objectForKeyedSubscript:](self->_cachedVideoOutputsEnabled objectForKeyedSubscript:{v16), "BOOLValue"}])
                {
                  -[NSDictionary setObject:forKeyedSubscript:](v8, "setObject:forKeyedSubscript:", [objc_msgSend(v7 objectForKeyedSubscript:{v16), "mutableCopy"}], v16);
                  [OUTLINED_FUNCTION_24_9() setObject:0 forKeyedSubscript:v13];
                  if ([v16 isEqualToString:v14])
                  {
                    [OUTLINED_FUNCTION_24_9() setObject:0 forKeyedSubscript:v27];
                    [OUTLINED_FUNCTION_24_9() setObject:0 forKeyedSubscript:v26];
                    [OUTLINED_FUNCTION_24_9() setObject:0 forKeyedSubscript:v25];
                  }
                }
              }

              v11 = [(NSArray *)allKeys countByEnumeratingWithState:&v29 objects:v28 count:16];
            }

            while (v11);
          }

          self->_cachedVideoOutputConfigurations = v8;
          if (!v23)
          {
            [OUTLINED_FUNCTION_11_23() captureStreamWillStopStreaming:?];
          }

          v33[0] = [(BWFigCaptureStream *)self->_stream stop];
          suspendedCopy = v24;
          if (!v33[0])
          {
            if (!v23)
            {
              [OUTLINED_FUNCTION_11_23() captureStreamDidStopStreaming:?];
            }

            self->_streamHasBeenSuspended = 1;
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_1_5();
        }

LABEL_44:
        FigDebugAssert3();
        return v33[0];
      }

      if (self->_streamHasBeenSuspended)
      {
        v33[0] = [(BWFigCaptureStream *)self->_stream setProperty:*off_1E798C280 value:self->_cachedVideoOutputConfigurations];
        if (v33[0] || (v33[0] = [(BWFigCaptureStream *)self->_stream setProperty:*off_1E798C2A0 value:self->_cachedVideoOutputsEnabled]) != 0)
        {
LABEL_43:
          OUTLINED_FUNCTION_1_5();
          goto LABEL_44;
        }
      }

      if (v5)
      {
        v33[0] = [(BWFigVideoCaptureStream *)self start];
        if (v33[0])
        {
          goto LABEL_43;
        }
      }

      else
      {
        [OUTLINED_FUNCTION_11_23() captureStreamWillStartStreaming:?];
        v33[0] = [(BWFigVideoCaptureStream *)self start];
        if (v33[0])
        {
          goto LABEL_43;
        }

        [OUTLINED_FUNCTION_11_23() captureStreamDidStartStreaming:?];
      }
    }

LABEL_31:
    os_unfair_lock_lock(&self->_streamStateLock);
    if (self->_started)
    {
      if (suspendedCopy)
      {
        +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
        *&v17 = OUTLINED_FUNCTION_2_51();
        [v18 setStreaming:0 deviceType:v17 maxFrameRate:0 streamUniqueID:? clientAuditToken:? tccIdentity:? mediaEnvironment:? completionHandler:?];
      }

      else
      {
        os_unfair_lock_lock(&self->_cameraAccessLock);
        clientProcessHasAccessToCamera = self->_clientProcessHasAccessToCamera;
        os_unfair_lock_unlock(&self->_cameraAccessLock);
        if (clientProcessHasAccessToCamera)
        {
          +[BWCameraStreamingMonitor sharedCameraStreamingMonitor];
          *&v20 = OUTLINED_FUNCTION_2_51();
          [v21 setStreaming:1 deviceType:v20 maxFrameRate:0 streamUniqueID:? clientAuditToken:? tccIdentity:? mediaEnvironment:? completionHandler:?];
        }
      }
    }

    self->_suspended = suspendedCopy;
    os_unfair_lock_unlock(&self->_streamStateLock);
  }

  return v33[0];
}

- (void)_resetStillImageCaptureState
{
  if (self)
  {
    [*(self + 664) resume];
    os_unfair_lock_lock((self + 504));
    *(self + 680) = 0;
    v2 = *(self + 512);
    v3 = *(self + 520);
    *(self + 512) = 0u;
    v4 = *(self + 584);
    *(self + 584) = 0;
    v5 = MEMORY[0x1E6960C70];
    *(self + 592) = *MEMORY[0x1E6960C70];
    *(self + 608) = *(v5 + 16);
    *(self + 684) = 0;
    *(self + 616) = 0;
    v6 = *(self + 632);
    *(self + 632) = 0;
    os_unfair_lock_unlock((self + 504));
  }
}

- (_DWORD)_updateAutoFocusPositionSensorModeForSampleBuffer:(_DWORD *)result
{
  if (result)
  {
    v2 = result;
    result = [CMGetAttachment(target *off_1E798A3C8];
    if (result)
    {
      result = [result intValue];
      v2[217] = result;
    }
  }

  return result;
}

- (void)_serviceTimeMachineWithSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return;
  }

  os_unfair_lock_lock((buffer + 504));
  if (*(buffer + 680) != 1)
  {
    goto LABEL_6;
  }

  if (![BWStillImageTimeMachine afComplete:a2])
  {
    v4 = *(buffer + 684);
    if (v4 < 30)
    {
      *(buffer + 684) = v4 + 1;
LABEL_6:
      os_unfair_lock_unlock((buffer + 504));
      v5 = *(buffer + 664);

      [v5 insertFrame:a2];
      return;
    }
  }

  *(buffer + 680) = 0;
  os_unfair_lock_unlock((buffer + 504));
  [*(buffer + 664) drain];
  cf = 0;
  BWCMSampleBufferCreateCopyIncludingMetadata(a2, &cf);
  [(BWFigVideoCaptureStream *)buffer _handleStillImageSampleBuffer:0 withError:1 fromTimeMachine:?];
  if (cf)
  {
    CFRelease(cf);
  }
}

- (BOOL)sourceNodeShouldDiscardStillImageSampleBuffer:(opaqueCMSampleBuffer *)buffer sensorRawOutput:(BOOL)output
{
  outputCopy = output;
  os_unfair_lock_lock(&self->_stillImageCaptureStateLock);
  epoch = self->_stillCaptureReferenceFramePTS.epoch;
  os_unfair_lock_unlock(&self->_stillImageCaptureStateLock);
  if (!epoch)
  {
    return 1;
  }

  [(BWFigVideoCaptureStream *)self _addBracketecCaptureSequenceNumberToMetadataIfNeededForStillImageSampleBuffer:buffer];
  if ([(NSString *)self->_portType isEqualToString:*off_1E798A0E8])
  {
    return 0;
  }

  v8 = [(BWStillImageCaptureStreamSettings *)self->_activeResolvedStillImageCaptureStreamSettings captureFrameInfoForFrame:buffer];
  if (v8)
  {
    v9 = v8;
    v10 = *off_1E798A3C8;
    v11 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if ([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}])
    {
      sifrFlags = [v9 sifrFlags];
    }

    else
    {
      sifrFlags = [v9 mainFlags];
    }

    v16 = sifrFlags >> 62 == 0;
    if (!outputCopy)
    {
      v16 = (sifrFlags & 0x3000000000000000) == 0;
    }

    if (!v16)
    {
      if ((sifrFlags & 0xF000000000000000 & ((sifrFlags & 0xF000000000000000) - 1)) != 0)
      {
        v17 = [v11 mutableCopy];
        CMSetAttachment(buffer, v10, v17, 1u);
      }

      return 0;
    }

    return 1;
  }

  if (!outputCopy)
  {
    return 0;
  }

  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v14 = *off_1E798B760;
  if ([v13 objectForKeyedSubscript:*off_1E798B760])
  {
    v15 = [objc_msgSend(v13 objectForKeyedSubscript:{v14), "intValue"}];
  }

  else
  {
    v15 = -1;
  }

  v20 = *off_1E798B1B8;
  if ([v13 objectForKeyedSubscript:*off_1E798B1B8])
  {
    v21 = [objc_msgSend(v13 objectForKeyedSubscript:{v20), "intValue"}];
  }

  else
  {
    v21 = -1;
  }

  if (dword_1ED844330)
  {
    OUTLINED_FUNCTION_14_14();
    v22 = OUTLINED_FUNCTION_35_2();
    if (os_log_type_enabled(v22, v57))
    {
      v23 = v58;
    }

    else
    {
      v23 = v58 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v24 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
      settingsID = [(BWStillImageCaptureSettings *)self->_activeResolvedStillImageCaptureSettings settingsID];
      v47 = 136316674;
      v48 = "[BWFigVideoCaptureStream sourceNodeShouldDiscardStillImageSampleBuffer:sensorRawOutput:]";
      v49 = 1026;
      *v50 = epoch;
      *&v50[4] = 1026;
      *&v50[6] = 1;
      LOWORD(v51) = 1026;
      *(&v51 + 2) = v15;
      HIWORD(v51) = 1026;
      v52 = v21;
      v53 = 1026;
      v54 = v24;
      v55 = 2050;
      v56 = settingsID;
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_31_0();
  }

  if ([-[BWStillImageCaptureStreamSettings captureFrameInfos](self->_activeResolvedStillImageCaptureStreamSettings "captureFrameInfos")])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    captureFrameInfos = [(BWStillImageCaptureStreamSettings *)self->_activeResolvedStillImageCaptureStreamSettings captureFrameInfos];
    v27 = [captureFrameInfos countByEnumeratingWithState:&v43 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      selfCopy = self;
      v29 = *v44;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(captureFrameInfos);
          }

          if (dword_1ED844330)
          {
            v31 = *(*(&v43 + 1) + 8 * i);
            OUTLINED_FUNCTION_14_14();
            v32 = OUTLINED_FUNCTION_35_2();
            v33 = v58;
            if (os_log_type_enabled(v32, v57))
            {
              v35 = v33;
            }

            else
            {
              v35 = v33 & 0xFFFFFFFE;
            }

            if (v35)
            {
              v36 = BWPortTypeToDisplayString(selfCopy->_portType, v34);
              v47 = 136315650;
              v48 = "[BWFigVideoCaptureStream sourceNodeShouldDiscardStillImageSampleBuffer:sensorRawOutput:]";
              v49 = 2114;
              *v50 = v36;
              *&v50[8] = 2114;
              v51 = v31;
              OUTLINED_FUNCTION_5_29();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_4_39();
            OUTLINED_FUNCTION_31_0();
          }
        }

        v28 = [captureFrameInfos countByEnumeratingWithState:&v43 objects:v42 count:16];
      }

      while (v28);
    }

    return 1;
  }

  if (!dword_1ED844330)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_14();
  v37 = OUTLINED_FUNCTION_35_2();
  if (OUTLINED_FUNCTION_8_26(v37))
  {
    v39 = v21;
  }

  else
  {
    v39 = v21 & 0xFFFFFFFE;
  }

  if (v39)
  {
    v40 = BWPortTypeToDisplayString(self->_portType, v38);
    v47 = 136315394;
    v48 = "[BWFigVideoCaptureStream sourceNodeShouldDiscardStillImageSampleBuffer:sensorRawOutput:]";
    v49 = 2114;
    *v50 = v40;
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_4_39();
  v18 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v18;
}

- (uint64_t)_addBracketecCaptureSequenceNumberToMetadataIfNeededForStillImageSampleBuffer:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [*(result + 520) captureType];
  if (result != 2)
  {
    return result;
  }

  v4 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  if (([*(v3 + 520) captureFlags] & 8) == 0)
  {
    result = [objc_msgSend(*(v3 + 520) "unifiedBracketedCaptureParams")];
    if (!result)
    {
      return result;
    }

    v5 = *off_1E798B1B8;
    goto LABEL_8;
  }

  v6 = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
  v5 = *off_1E798B1B8;
  if (!v6)
  {
LABEL_8:
    v7 = &unk_1F2243CC0;
    goto LABEL_9;
  }

  v7 = &unk_1F2243CA8;
LABEL_9:

  return [v4 setObject:v7 forKeyedSubscript:v5];
}

- (uint64_t)_handleStillImageSampleBuffer:(int)buffer withError:(int)error fromTimeMachine:
{
  if (!self)
  {
    return 0;
  }

  v8 = [*(self + 32) isEqualToString:{objc_msgSend(*(self + 512), "masterPortType")}];
  captureType = [*(self + 520) captureType];
  captureFlags = [*(self + 520) captureFlags];
  v11 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v12 = v11;
  if (error)
  {
    goto LABEL_3;
  }

  if (captureType == 2)
  {
    if ((captureFlags & 8) != 0)
    {
      if (([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B5C8), "BOOLValue"}])
    {
      goto LABEL_9;
    }

LABEL_3:
    [*(self + 496) captureStreamWillBeginStillImageCapture:self];
  }

LABEL_9:
  LODWORD(v86) = buffer;
  os_unfair_lock_lock((self + 504));
  v13 = *(self + 616);
  if (!v13)
  {
    os_unfair_lock_unlock((self + 504));
    return 4294954516;
  }

  FrameworkRadarComponent = captureFlags;
  HIDWORD(v87) = captureType;
  v14 = *(self + 620);
  HIDWORD(v86) = v8;
  LODWORD(v87) = v14 + 1;
  *(self + 620) = v14 + 1;
  os_unfair_lock_unlock((self + 504));
  if (a2)
  {
    v94 = 0;
    v15 = [*(self + 520) captureFrameInfoForFrame:a2];
    if (v15)
    {
      if ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}])
      {
        sifrFlags = [v15 sifrFlags];
      }

      else
      {
        sifrFlags = [v15 mainFlags];
      }

      sifrFlags2 = sifrFlags;
      v94 = sifrFlags;
      if (!sifrFlags)
      {
        if ([*(self + 32) isEqualToString:*off_1E798A0E8])
        {
          sifrFlags2 = [v15 sifrFlags];
          v94 = sifrFlags2;
        }

        else
        {
          sifrFlags2 = 0;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 isNoLongErrorRecoveryFrame] && objc_msgSend(*(self + 520), "isUnifiedBracketingErrorRecoveryFrame:isReferenceFrame:", a2, (sifrFlags2 >> 4) & 1))
      {
        v94 = sifrFlags2 & 0xFFFFFFFFFFFFFFEFLL;
      }
    }

    if (*(self + 624) >= 2)
    {
      v19 = *off_1E798B760;
      if ([v12 objectForKeyedSubscript:*off_1E798B760])
      {
        if (CMGetAttachment(a2, *off_1E798A3C0, 0))
        {
          if (!*(self + 632))
          {
            *(self + 632) = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v20 = [objc_msgSend(v12 objectForKeyedSubscript:{v19), "intValue"}];
          v21 = *off_1E798A470;
          v22 = CMGetAttachment(a2, *off_1E798A470, 0);
          if (v22)
          {
            v23 = v22;
            if ([objc_msgSend(objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B5F0), "objectForKeyedSubscript:", *off_1E798B5F8), "BOOLValue"}])
            {
              v24 = (v20 - 1);
            }

            else
            {
              v24 = (v20 + 1);
            }

            [*(self + 632) setObject:v23 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v24)}];
          }

          else
          {
            v25 = [*(self + 632) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v20)}];
            if (v25)
            {
              CMSetAttachment(a2, v21, v25, 1u);
            }

            else
            {
              LODWORD(v88) = 0;
              BYTE4(v90) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              HIDWORD(v84) = 0;
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_1_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }

    if (([*(self + 520) referenceFrameIndex] & 0x80000000) != 0)
    {
      v26 = HIDWORD(v86);
      if ([*(self + 512) timeMachineReferenceFrameBracketedCaptureSequenceNumber] < 1)
      {
        v27 = 0;
LABEL_46:
        v29 = v14 + 1;
        BWAddStillImageCaptureFrameMetadataToSampleBuffer(a2, *(self + 520), v27, &v94);
        v30 = [objc_msgSend(*(self + 512) "captureStreamSettings")];
        if (*(self + 496))
        {
          v31 = *(self + 580) | (v30 > 1);
        }

        else
        {
          v31 = 0;
        }

        memset(&v91, 0, sizeof(v91));
        PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v91, a2);
        if ((v31 & v26 & 1) == 0)
        {
          goto LABEL_76;
        }

        PresentationTimeStamp = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
        if (PresentationTimeStamp)
        {
          OUTLINED_FUNCTION_1_57(*(self + 496), v33, v34, v35, v36, v37, v38, v39, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, *&v91.value);
          OUTLINED_FUNCTION_17_13();
          PresentationTimeStamp = [v41 captureStream:? didCapturePreBracketedEV0ImageWithPTS:?];
          if ((v27 & 1) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        if (HIDWORD(v87) == 3)
        {
          PresentationTimeStamp = [v12 objectForKeyedSubscript:*off_1E798A830];
          if (PresentationTimeStamp)
          {
            PresentationTimeStamp = [PresentationTimeStamp doubleValue];
            if (v40.n128_f64[0] == 0.0)
            {
              v40 = OUTLINED_FUNCTION_21_12(PresentationTimeStamp, v33, v34, v35, v36, v37, v38, v39, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, v40, v91.value);
              goto LABEL_64;
            }
          }
        }

        else if ((HIDWORD(v87) & 0xFFFFFFFE) == 4)
        {
          PresentationTimeStamp = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
          if (HIDWORD(v87) != 5 || (v42 = PresentationTimeStamp, PresentationTimeStamp = [*(self + 512) bracketedCaptureSequenceNumberForOISLongExposure], v42 != PresentationTimeStamp))
          {
            if ((FrameworkRadarComponent & 0x2000) == 0)
            {
              v43 = [v12 mutableCopy];
              OUTLINED_FUNCTION_1_57(v43, *MEMORY[0x1E695E480], v44, v45, v46, v47, v48, v49, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, *&v91.value);
              v51 = CMTimeCopyAsDictionary(&time, v50);
              [v43 setObject:v51 forKeyedSubscript:*off_1E798A420];

              v52 = *(self + 584);
              if (!v52)
              {
                v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
                *(self + 584) = v52;
              }

              [v52 addObject:v43];

              v26 = HIDWORD(v86);
LABEL_64:
              if ((v27 & 1) == 0)
              {
                goto LABEL_76;
              }

              goto LABEL_70;
            }
          }
        }

        else if (HIDWORD(v87) == 2)
        {
          PresentationTimeStamp = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
          if ((PresentationTimeStamp & 1) == 0)
          {
LABEL_76:
            if (v29 >= v13)
            {
              v56 = !*(self + 496) || HIDWORD(v87) == 11;
              v57 = !v56;
              if ((v57 & v26) == 1)
              {
                time2.value = v91.value;
                flags = v91.flags;
                time2.timescale = v91.timescale;
                epoch = v91.epoch;
                if (v31)
                {
                  if (([*(self + 512) captureFlags] & 0x2000) != 0)
                  {
                    if (*(self + 604))
                    {
                      OUTLINED_FUNCTION_10_22();
                    }

                    else
                    {
                      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
                      HIDWORD(v90) = 0;
                      BYTE3(v90) = 0;
                      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      LOWORD(time.value) = 0;
                      v65 = _os_log_send_and_compose_impl();
                      v83 = 0;
                      FigCapturePleaseFileRadar(FrameworkRadarComponent, v65, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWFigVideoCaptureStream.m", 3279, @"LastShownDate:BWFigVideoCaptureStream.m:3279", @"LastShownBuild:BWFigVideoCaptureStream.m:3279", 0);
                      free(v65);
                      v26 = HIDWORD(v86);
                    }

                    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(self + 512), "timeMachineReferenceFrameBracketedCaptureSequenceNumber")}];
                  }

                  else if (HIDWORD(v87) == 3)
                  {
                    if (*(self + 604))
                    {
                      OUTLINED_FUNCTION_10_22();
                    }
                  }

                  else if ((HIDWORD(v87) & 0xFFFFFFFE) == 4)
                  {
                    LODWORD(v88) = -1;
                    if (FigCaptureReferenceFrameSelection(*(self + 584), &v88) || (v61 = v88, (v88 & 0x80000000) != 0) || [*(self + 584) count] <= v61)
                    {
                      v62 = [*(self + 584) count] - 1;
                      LODWORD(v88) = v62;
                    }

                    else
                    {
                      v62 = v88;
                    }

                    v64 = [*(self + 584) objectAtIndexedSubscript:v62];
                    CMTimeMakeFromDictionary(&time, [v64 objectForKeyedSubscript:*off_1E798A420]);
                    time2.value = time.value;
                    flags = time.flags;
                    time2.timescale = time.timescale;
                    epoch = time.epoch;
                    [v64 objectForKeyedSubscript:*off_1E798B1B8];
                  }
                }

                *(self + 532) = v91;
                *(self + 528) = HIDWORD(v87);
                time.value = time2.value;
                time.timescale = time2.timescale;
                time.flags = flags;
                time.epoch = epoch;
                OUTLINED_FUNCTION_17_13();
                PresentationTimeStamp = [v66 captureStream:? didCaptureReferenceFrameWithPTS:? referenceFrameBracketedCaptureSequenceNumber:?];
                v29 = v87;
              }
            }

            v67 = (self + 556);
            if ((*(self + 568) & 1) == 0 || (OUTLINED_FUNCTION_1_57(PresentationTimeStamp, v33, v34, v35, v36, v37, v38, v39, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, *&v91.value), *&time2.value = *v67, time2.epoch = *(self + 572), CMTimeCompare(&time, &time2) >= 1))
            {
              *v67 = *&v91.value;
              *(self + 572) = v91.epoch;
            }

            [*(self + 520) addAdaptiveBracketingMetadataIfNeededForFrame:a2];
            [OUTLINED_FUNCTION_11_23() captureStream:? willEmitStillImageSampleBuffer:? fromTimeMachine:?];
            if (error)
            {
              v68 = *(self + 672);
              if (v68)
              {
                (*(v68 + 16))(v68, a2);
              }

              v17 = 0;
            }

            else
            {
              v69 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798A538), "intValue"}];
              if (v69 >= 1)
              {
                [*(self + 520) setAdaptiveBracketingLastFramePTS:{&time, OUTLINED_FUNCTION_1_57(v69, v70, v71, v72, v73, v74, v75, v76, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, *&v91.value).n128_f64[0]}];
              }

              fvcs_removeSampleBufferPixelBufferMetadata(a2);
              v17 = figVideoCaptureStream_blackenFrameIfNecessary(self, a2);
            }

            goto LABEL_113;
          }

LABEL_70:
          *&time.value = OUTLINED_FUNCTION_21_12(PresentationTimeStamp, v33, v34, v35, v36, v37, v38, v39, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, v40, v91.value);
          time.epoch = v53;
          OUTLINED_FUNCTION_17_13();
          PresentationTimeStamp = [v54 captureStream:? didCaptureReferenceFrameWithPTS:? referenceFrameBracketedCaptureSequenceNumber:?];
          goto LABEL_71;
        }

        if (!v27)
        {
LABEL_71:
          if (HIDWORD(v87) == 10)
          {
            PresentationTimeStamp = [*(self + 512) deliverOriginalImage];
            if (PresentationTimeStamp)
            {
              if ((FrameworkRadarComponent & 0x40000) != 0 && (v94 & 0x20) != 0)
              {
                OUTLINED_FUNCTION_1_57(*(self + 496), v33, v34, v35, v36, v37, v38, v39, v82, v83, v84, FrameworkRadarComponent, v86, v87, v88, v89, v90, *&v91.value);
                OUTLINED_FUNCTION_17_13();
                PresentationTimeStamp = [v55 captureStream:? didCapturePreBracketedEV0ImageWithPTS:?];
              }
            }
          }

          goto LABEL_76;
        }

        goto LABEL_70;
      }

      v28 = v14 == [*(self + 512) timeMachineReferenceFrameBracketedCaptureSequenceNumber] - 1;
    }

    else
    {
      v26 = HIDWORD(v86);
      if (v15)
      {
        v27 = (v94 >> 4) & 1;
        goto LABEL_46;
      }

      v28 = v14 == [*(self + 520) referenceFrameIndex];
    }

    v27 = v28;
    goto LABEL_46;
  }

  v17 = 4294954516;
  v26 = v8;
  v29 = v14 + 1;
LABEL_113:
  if (v29 >= v13)
  {
    v78 = *(self + 520);
    [(BWFigVideoCaptureStream *)self _resetStillImageCaptureState];
    time = *(self + 556);
    OUTLINED_FUNCTION_17_13();
    [v79 captureStream:? didCompleteStillImageCaptureWithPTS:? error:?];
    if (a2 && [v78 reachedEndOfAdaptiveBracketing])
    {
      if (v26)
      {
        v80 = *(self + 496);
        if (v78)
        {
          [v78 adaptiveBracketingLastFramePTS];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        [v80 captureStream:self didCaptureReferenceFrameWithPTS:&time referenceFrameBracketedCaptureSequenceNumber:0];
      }

      CMSetAttachment(a2, *off_1E798D2D0, MEMORY[0x1E695E118], 1u);
    }

    if (![v78 adaptiveBracketingParameters] || objc_msgSend(v78, "reachedEndOfAdaptiveBracketing"))
    {
      [*(self + 496) captureStreamDidCompleteStillImageCapture:self];
    }
  }

  return v17;
}

- (void)_prepareForStillImageCaptureWithStillImageSettings:(char)settings fromCMTimeMachine:
{
  if (self)
  {
    *(self + 512) = a2;
    *(self + 520) = [a2 captureStreamSettingsForPortType:*(self + 32)];
    if ((settings & 1) == 0)
    {
      [*(self + 664) suspendAndDrain];
    }

    os_unfair_lock_lock((self + 504));
    *(self + 616) = [*(self + 520) expectedFrameCaptureCount];

    os_unfair_lock_unlock((self + 504));
  }
}

- (void)failedToCaptureStillImageFromFirmwareWithError:(int)error
{
  [(BWFigVideoCaptureStreamStillImageCaptureDelegate *)self->_stillImageCaptureDelegate captureStream:self stillImageCaptureError:*&error];

  [(BWFigVideoCaptureStream *)self _resetStillImageCaptureState];
}

- (uint64_t)_updateSuspendStateForInfraredDepthStream
{
  if (result)
  {
    v1 = result;
    v2 = (*(result + 768) == 0x7FFFFFFF) & ([objc_msgSend(*(result + 8) getPropertyIfSupported:*off_1E798C1A8 error:{0), "BOOLValue"}] ^ 1);

    return [v1 setSuspended:v2];
  }

  return result;
}

- (uint64_t)_setHighlightRecoveryEnabled:(uint64_t)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    result = [*(result + 8) setPropertyIfSupported:*off_1E798BEE0 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2 & ~*(result + 811))}];
    if (!result)
    {
      *(v3 + 812) = v2;
    }
  }

  return result;
}

- (uint64_t)_configureKeypointDetection
{
  if (result)
  {
    v1 = result;
    if ((*(result + 808) & 1) == 0)
    {
      v2 = *(result + 8);
      if (*(v1 + 800))
      {
        v3 = *(v1 + 800);
      }

      else
      {
        v3 = MEMORY[0x1E695E0F8];
      }

      result = [v2 setProperty:*off_1E798BF18 value:v3];
      if (!result)
      {
        *(v1 + 808) = 1;
      }
    }
  }

  return result;
}

- (BOOL)needsRollingShutterCorrection
{
  v3 = [(NSString *)self->_portType isEqualToString:*off_1E798A0D8];
  if (v3)
  {
    firstObject = [(NSDictionary *)self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned firstObject];
    v5 = [(NSDictionary *)self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned objectForKeyedSubscript:firstObject];
    if (!v5)
    {
      v5 = [*&self->_suppressedGesturesEnabled objectForKeyedSubscript:firstObject];
    }

    -[NSArray objectAtIndexedSubscript:](self->_supportedFormats, "objectAtIndexedSubscript:", [v5 intValue]);
    v12.origin = *MEMORY[0x1E695F050];
    v12.size = *(MEMORY[0x1E695F050] + 16);
    FigCFDictionaryGetCGRectIfPresent();
    IsNull = CGRectIsNull(v12);
    LOBYTE(v3) = 0;
    if (firstObject && !IsNull)
    {
      videoCaptureDimensions = self->_videoCaptureDimensions;
      v8.i64[0] = videoCaptureDimensions.width;
      v8.i64[1] = videoCaptureDimensions.height;
      *&videoCaptureDimensions.width = vaddvq_f64(vdivq_f64(vcvtq_f64_s64(v8), v12.size)) * 0.5;
      v9 = self->_baseZoomFactor * *&videoCaptureDimensions.width;
      [firstObject doubleValue];
      *&v10 = v10;
      LOBYTE(v3) = vabds_f32(v9, *&v10) > 0.05;
    }
  }

  return v3;
}

- (uint64_t)initWithCaptureStream:(_DWORD *)a1 parentDevice:(_DWORD *)a2 attributes:sensorIDDictionary:synchronizedStreamsGroup:applicationID:clientAuditToken:tccIdentity:mediaEnvironment:error:.cold.12(_DWORD *a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  *a1 = result;
  return result;
}

- (void)setMaximumFrameRate:(int)a3 .cold.1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(a1 + 68) = a2;
  *(a1 + 76) = a3;
  *&v6 = FigCaptureFrameRateAsFloat(a4, a5);
  [*(a1 + 464) setMaximumFrameRate:v6];

  [(BWFigVideoCaptureStream *)a1 _updateSphereMode];
}

- (uint64_t)setFaceDetectionConfiguration:(void *)a1 .cold.1(void **a1)
{
  OUTLINED_FUNCTION_23_7(a1);
  *v3 = [v2 copy];

  return [(BWFigVideoCaptureStream *)v1 _propagateFaceAndObjectDetectionSettings];
}

- (void)captureStillImageFromTimeMachineWithStillImageSettings:(void *)a3 .cold.1(id *a1, uint64_t a2, void *a3)
{
  [*a1 drain];
  [(BWFigVideoCaptureStream *)a2 _handleStillImageSampleBuffer:a3 withError:0 fromTimeMachine:1];

  CFRelease(a3);
}

- (void)setDeskCamActive:(uint64_t)a1 .cold.1(uint64_t a1, char a2)
{
  [(BWFigVideoCaptureStream *)a1 _logStreamingPowerEvent:?];
  *(a1 + 1184) = a2;

  [(BWFigVideoCaptureStream *)a1 _logStreamingPowerEvent:?];
}

@end
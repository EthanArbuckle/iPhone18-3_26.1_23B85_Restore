@interface CMContinuityCaptureRemoteVideoDevice
- (BOOL)_companionConnectionsRequired;
- (BOOL)_deviceFormat:(id)a3 isCompatibleWithConfiguration:(id)a4 requiringMultiCamSupport:(BOOL)a5 minFrameRate:(unsigned int)a6 maxFrameRate:(unsigned int)a7;
- (BOOL)_isUltraWideCameraSupported;
- (BOOL)_shouldOnlyDisableVideoConnection;
- (BOOL)configureConnections;
- (BOOL)isStreamingOnSuperWide;
- (BOOL)startAVConferenceStack:(unint64_t)a3;
- (BOOL)startCameraCaptureStack:(unint64_t)a3;
- (BOOL)stopAVConferenceStack;
- (BOOL)stopCameraCaptureStack:(unint64_t)a3;
- (BOOL)suppressVideoEffects;
- (CMContinuityCaptureRemoteVideoDevice)companionDevice;
- (CMContinuityCaptureRemoteVideoDevice)initWithCapabilities:(id)a3 compositeDelegate:(id)a4 captureSession:(id)a5;
- (NSDictionary)centerStageRectOfInterest;
- (id)_avfDeviceTypeForManualFramingDeviceType:(int64_t)a3;
- (id)_selectVideoDeviceForConfiguration:(id)a3;
- (id)compatibleDeviceFormatForMaxFrameRate:(unsigned int)a3 minFrameRate:(unsigned int)a4;
- (id)connectionsForConfiguration:(id)a3;
- (id)createAVCVideoStream;
- (id)newVideoStreamCurrentConfiguration:(int64_t)a3;
- (int64_t)centerStageFramingMode;
- (unsigned)maxFrameRate;
- (unsigned)minFrameRate;
- (unsigned)throttledMaxFrameRate;
- (void)_configureVideoEffects;
- (void)_disableCenterStage;
- (void)_disableManualFraming;
- (void)_enableCenterStage;
- (void)_enableManualFraming;
- (void)_forcefullyEnableCenterStageOnSuperWide;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_registerDockKitNotification;
- (void)_restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:(BOOL)a3;
- (void)_stopCameraCaptureStackRemoveCaptureSessionConnectionsWithOption:(unint64_t)a3;
- (void)_toggleBetweenCenterStageAndManualFraming;
- (void)_updateControlStatus;
- (void)_updateManualFramingDeviceType:(int64_t)a3;
- (void)_updatePhotoOutputConfigs;
- (void)addVideoDeviceKVOs;
- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5;
- (void)didStartStreamInput:(id)a3;
- (void)didStopStreamInput:(id)a3;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)a3 entity:(int64_t)a4 completion:(id)a5;
- (void)enqueueReactionEffect:(id)a3 entity:(int64_t)a4;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postAVCStreamInterruption;
- (void)postActionCompletionForEventName:(id)a3 eventData:(id)a4 error:(id)a5;
- (void)postActionOfType:(unint64_t)a3 forEvent:(id)a4 option:(unint64_t)a5;
- (void)removeVideoDeviceKVOs;
- (void)serverDidDie;
- (void)setBackgroundReplacementPixelBuffer:(__CVBuffer *)a3;
- (void)setCenterStageEnabled:(BOOL)a3;
- (void)setCenterStageFramingMode:(int64_t)a3;
- (void)setCenterStageRectOfInterest:(id)a3;
- (void)setDeskViewCameraMode:(int64_t)a3;
- (void)setFormat:(id)a3;
- (void)setMinFrameDurationOverrideIfApplicable;
- (void)setPortraitEffectAperture:(float)a3;
- (void)setReactionEffectGesturesEnabled:(float)a3;
- (void)setReactionEffectSuppressedGesturesEnabled:(float)a3;
- (void)setStudioLightingIntensity:(float)a3;
- (void)setValueForControl:(id)a3 completion:(id)a4;
- (void)setVideoDevice:(id)a3;
- (void)setVideoZoomFactor:(double)a3;
- (void)setupControls;
- (void)stopCaptureStack:(unint64_t)a3 completion:(id)a4;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidRTPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
- (void)tearDownConnectionsWithVideoDataConnectionDisabled:(BOOL)a3;
- (void)terminateComplete:(id)a3;
- (void)updateControlStatus;
@end

@implementation CMContinuityCaptureRemoteVideoDevice

- (void)terminateComplete:(id)a3
{
  v4 = a3;
  dockKitNotificationAgent = self->_dockKitNotificationAgent;
  if (dockKitNotificationAgent)
  {
    [(DKNotificationAgent *)dockKitNotificationAgent deregisterNotifications];
  }

  v6.receiver = self;
  v6.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v6 terminateComplete:v4];
}

- (void)setupControls
{
  v34[0] = @"4cc_cfac_glob_0000";
  v34[1] = @"PortraitEffectActive";
  v34[2] = @"StudioLightingActive";
  v34[3] = @"ReactionEffectsActive";
  v34[4] = @"ReactionsInProgress";
  v34[5] = @"SuppressedGesture";
  v34[6] = @"BackgroundReplacementActive";
  v34[7] = @"CMIOExtensionPropertyStreamFrameDuration";
  v34[8] = @"CMIOExtensionPropertyStreamMaxFrameDuration";
  v34[9] = @"OverheadCameraMode";
  [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:10];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v31;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v7);
        v10 = [CMContinuityCaptureControl alloc];
        v11 = [(CMContinuityCaptureDeviceBase *)self entity];
        v28[0] = 1;
        v28[1] = 0;
        v28[2] = 0;
        v5 = [(CMContinuityCaptureControl *)v10 initWithName:v9 attributes:0 entity:v11 minimumSupportedVersion:v28 value:&unk_2854EC860];

        [(NSMutableDictionary *)self->_cmControlByName setObject:v5 forKeyedSubscript:v9];
        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v4);
  }

  v12 = [(CMContinuityCaptureDeviceBase *)self capabilities];
  v13 = [v12 controls];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        cmControlByName = self->_cmControlByName;
        v21 = [v19 name];
        [(NSMutableDictionary *)cmControlByName setObject:v19 forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)setVideoDevice:(id)a3
{
  v4 = a3;
  if (self->_videoDevice)
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self removeVideoDeviceKVOs];
  }

  videoDevice = self->_videoDevice;
  self->_videoDevice = v4;

  if (self->_videoDevice)
  {

    [(CMContinuityCaptureRemoteVideoDevice *)self addVideoDeviceKVOs];
  }
}

- (void)setDeskViewCameraMode:(int64_t)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  videoDevice = self->_videoDevice;
  if (videoDevice && ([(AVCaptureDevice *)videoDevice isOverheadCameraModeSupported:a3]& 1) != 0)
  {
    [(AVCaptureDevice *)self->_videoDevice lockForConfiguration:0];
    [(AVCaptureDevice *)self->_videoDevice setDeskViewCameraMode:a3];
    [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
    v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v7 setDeskViewCameraMode:a3];

    [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setDeskViewCameraMode:];
  }
}

- (void)setFormat:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setFormat %{public}@", &v7, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    [(AVCaptureDevice *)videoDevice lockForConfiguration:0];
    [(AVCaptureDevice *)self->_videoDevice setActiveFormat:v4];
    [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:];
  }
}

- (void)setVideoZoomFactor:(double)a3
{
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ zoomFactor: %.2f", buf, 0x16u);
  }

  if (!self->_videoDevice || [(CMContinuityCaptureRemoteVideoDevice *)self centerStageEnabled])
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setVideoZoomFactor:];
    }
  }

  else
  {
    [(AVCaptureDevice *)self->_videoDevice minAvailableVideoZoomFactor];
    if (v6 <= a3)
    {
      v7 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      [v7 videoMaxZoomFactor];
      v9 = v8;

      if (v9 >= a3)
      {
        videoDevice = self->_videoDevice;
        v23 = 0;
        v11 = [(AVCaptureDevice *)videoDevice lockForConfiguration:&v23];
        v12 = v23;
        if (v11)
        {
          [(AVCaptureDevice *)self->_videoDevice setVideoZoomFactor:a3];
          [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
          v13 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
          if (v13)
          {
            v14 = v13;
            v15 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
            if ([v15 streaming])
            {
              v16 = [(CMContinuityCaptureDeviceBase *)self streaming];

              if (!v16)
              {
                [CMContinuityCaptureRemoteVideoDevice setVideoZoomFactor:];
                goto LABEL_17;
              }
            }

            else
            {
            }
          }

          v17 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [v17 setVideoZoomFactor:a3];
        }

        else
        {
          v17 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = self->_videoDevice;
            *buf = 138543874;
            v25 = self;
            v26 = 2112;
            v27 = *&v18;
            v28 = 2112;
            v29 = v12;
            _os_log_error_impl(&dword_242545000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", buf, 0x20u);
          }
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
        goto LABEL_17;
      }
    }

    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(AVCaptureDevice *)self->_videoDevice minAvailableVideoZoomFactor];
      v20 = v19;
      v21 = [(AVCaptureDevice *)self->_videoDevice activeFormat];
      [v21 videoMaxZoomFactor];
      *buf = 138544130;
      v25 = self;
      v26 = 2048;
      v27 = a3;
      v28 = 2048;
      v29 = v20;
      v30 = 2048;
      v31 = v22;
      _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Unsupported zoom factor (%.2f). Supported range: [%.2f-%.2f]", buf, 0x2Au);
    }
  }

LABEL_17:
}

- (unsigned)maxFrameRate
{
  v2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v3 = [v2 maxFrameRate];

  return v3;
}

- (unsigned)minFrameRate
{
  v2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v3 = [v2 minFrameRate];

  return v3;
}

- (void)setCenterStageEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "No";
    if (v3)
    {
      v7 = "Yes";
    }

    v10 = 138543618;
    v11 = self;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageEnabled: %s", &v10, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    v9 = [(AVCaptureDevice *)videoDevice activeFormat];

    if (v9)
    {
      if (v3)
      {
        if (self->_manualFramingFeatureFlagEnabled)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _disableManualFraming];
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self _enableCenterStage];
      }

      else
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self _disableCenterStage];
        if (self->_manualFramingFeatureFlagEnabled)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _enableManualFraming];
        }
      }
    }

    else
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self setCenterStageEnabled:?];
    }
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice setFaceDrivenAFActive:];
  }
}

- (void)_enableManualFraming
{
  FigDebugAssert3();
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    v5 = 138543618;
    v6 = a1;
    v7 = 2080;
    v8 = "[CMContinuityCaptureRemoteVideoDevice _enableManualFraming]";
    OUTLINED_FUNCTION_11_0(&dword_242545000, v1, v4, "%{public}@ %s Attempted to enable Manual Framing while Center Stage is active. Please disable Center Stage first", &v5);
  }
}

- (void)_disableManualFraming
{
  OUTLINED_FUNCTION_29();
  v1 = [v0 videoDevice];
  v2 = [v1 localizedName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_enableCenterStage
{
  OUTLINED_FUNCTION_29();
  v1 = [v0 videoDevice];
  v2 = [v1 localizedName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_disableCenterStage
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  [MEMORY[0x277CE5AC8] setCenterStageControlMode:1];
  [MEMORY[0x277CE5AC8] setCenterStageEnabled:0];

  [(CMContinuityCaptureRemoteVideoDevice *)self _updateControlStatus];
}

- (void)setCenterStageRectOfInterest:(id)a3
{
  v4 = a3;
  v5 = *(MEMORY[0x277CBF398] + 16);
  rect.origin = *MEMORY[0x277CBF398];
  rect.size = v5;
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ centerStageRectOfInterest: %@", &v12, 0x16u);
  }

  if (self->_videoDevice && [(CMContinuityCaptureRemoteVideoDevice *)self centerStageEnabled]&& CGRectMakeWithDictionaryRepresentation(v4, &rect))
  {
    videoDevice = self->_videoDevice;
    v18 = 0;
    v8 = [(AVCaptureDevice *)videoDevice lockForConfiguration:&v18];
    v9 = v18;
    if (v8)
    {
      [(AVCaptureDevice *)self->_videoDevice setCenterStageRectOfInterest:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
      [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_videoDevice;
        v12 = 138543874;
        v13 = self;
        v14 = 2112;
        v15 = v11;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_242545000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v12, 0x20u);
      }
    }
  }

  else
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setCenterStageRectOfInterest:];
    }
  }
}

- (int64_t)centerStageFramingMode
{
  v2 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = MEMORY[0x277CE5AC8];

  return [v3 centerStageFramingMode];
}

- (void)setCenterStageFramingMode:(int64_t)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  [MEMORY[0x277CE5AC8] setCenterStageFramingMode:a3];
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ centerStageFramingMode: %d", &v7, 0x12u);
  }
}

- (BOOL)suppressVideoEffects
{
  v2 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  v3 = [v2 captureSession];
  v4 = [v3 suppressVideoEffects];

  return v4;
}

- (void)setPortraitEffectAperture:(float)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = self;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ portraitEffectAperture: %f", &v17, 0x16u);
  }

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    v8 = [(AVCaptureDevice *)videoDevice activeFormat];

    if (v8)
    {
      v9 = self->_videoDevice;
      v23 = 0;
      v10 = [(AVCaptureDevice *)v9 lockForConfiguration:&v23];
      v11 = v23;
      if (v10)
      {
        *&v12 = a3;
        [MEMORY[0x277CE5AC8] setBackgroundBlurAperture:v12];
        v13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        *&v14 = a3;
        [v13 setPortraitEffectAperture:v14];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v15 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = self->_videoDevice;
          v17 = 138543874;
          v18 = self;
          v19 = 2112;
          v20 = *&v16;
          v21 = 2112;
          v22 = v11;
          _os_log_error_impl(&dword_242545000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v17, 0x20u);
        }
      }
    }

    else
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setSuppressVideoEffects:?];
      }
    }
  }

  else
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setStudioLightingIntensity:(float)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    v7 = [(AVCaptureDevice *)videoDevice activeFormat];

    if (v7)
    {
      v8 = self->_videoDevice;
      v22 = 0;
      v9 = [(AVCaptureDevice *)v8 lockForConfiguration:&v22];
      v10 = v22;
      if (v9)
      {
        *&v11 = a3;
        [MEMORY[0x277CE5AC8] setStudioLightingIntensity:v11];
        v12 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        *&v13 = a3;
        [v12 setStudioLightingIntensity:v13];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v14 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_videoDevice;
          v16 = 138543874;
          v17 = self;
          v18 = 2112;
          v19 = v15;
          v20 = 2112;
          v21 = v10;
          _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v16, 0x20u);
        }
      }
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setSuppressVideoEffects:?];
      }
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setReactionEffectGesturesEnabled:(float)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    v7 = [(AVCaptureDevice *)videoDevice activeFormat];

    if (v7)
    {
      v8 = self->_videoDevice;
      v20 = 0;
      v9 = [(AVCaptureDevice *)v8 lockForConfiguration:&v20];
      v10 = v20;
      if (v9)
      {
        [MEMORY[0x277CE5AC8] setReactionEffectGesturesEnabled:a3 != 0.0];
        v11 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [v11 setReactionEffectGesturesEnabled:a3 != 0.0];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_videoDevice;
          v14 = 138543874;
          v15 = self;
          v16 = 2112;
          v17 = v13;
          v18 = 2112;
          v19 = v10;
          _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v14, 0x20u);
        }
      }
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setSuppressVideoEffects:?];
      }
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setReactionEffectSuppressedGesturesEnabled:(float)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    v7 = [(AVCaptureDevice *)videoDevice activeFormat];

    if (v7)
    {
      v8 = self->_videoDevice;
      v20 = 0;
      v9 = [(AVCaptureDevice *)v8 lockForConfiguration:&v20];
      v10 = v20;
      if (v9)
      {
        [MEMORY[0x277CE5AC8] setReactionEffectSuppressedGesturesEnabled:a3 != 0.0];
        v11 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [v11 setReactionEffectSuppressedGesturesEnabled:a3 != 0.0];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_videoDevice;
          v14 = 138543874;
          v15 = self;
          v16 = 2112;
          v17 = v13;
          v18 = 2112;
          v19 = v10;
          _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v14, 0x20u);
        }
      }
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setSuppressVideoEffects:?];
      }
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)setBackgroundReplacementPixelBuffer:(__CVBuffer *)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    v7 = [(AVCaptureDevice *)videoDevice activeFormat];

    if (v7)
    {
      v8 = self->_videoDevice;
      v20 = 0;
      v9 = [(AVCaptureDevice *)v8 lockForConfiguration:&v20];
      v10 = v20;
      if (v9)
      {
        [MEMORY[0x277CE5AC8] setBackgroundReplacementPixelBuffer:a3];
        v11 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        [v11 setBackgroundReplacementPixelBuffer:a3];

        [(AVCaptureDevice *)self->_videoDevice unlockForConfiguration];
      }

      else
      {
        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_videoDevice;
          v14 = 138543874;
          v15 = self;
          v16 = 2112;
          v17 = v13;
          v18 = 2112;
          v19 = v10;
          _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Error locking %@ for configuration: %@", &v14, 0x20u);
        }
      }
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self setSuppressVideoEffects:?];
      }
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:];
    }
  }
}

- (void)_configureVideoEffects
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_avfDeviceTypeForManualFramingDeviceType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = MEMORY[0x277CE5870];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = MEMORY[0x277CE5878];
LABEL_5:
    v4 = *v3;
    goto LABEL_9;
  }

  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMContinuityCaptureRemoteVideoDevice _avfDeviceTypeForManualFramingDeviceType:];
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (BOOL)_isUltraWideCameraSupported
{
  v2 = CMContinuityCaptureDevicePosition();
  v3 = MEMORY[0x277CE5AD0];
  v8 = *MEMORY[0x277CE5870];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v5 = [v3 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x277CE5EA8] position:v2];

  v6 = [v5 devices];
  LOBYTE(v4) = [v6 count] != 0;

  return v4;
}

- (id)_selectVideoDeviceForConfiguration:(id)a3
{
  v4 = a3;
  if ([(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking])
  {
    v29 = *MEMORY[0x277CE5878];
    v5 = MEMORY[0x277CBEA60];
    v6 = &v29;
  }

  else if (([v4 centerStageEnabled] & 1) != 0 || objc_msgSend(v4, "isCenterStageForcefullyEnabled"))
  {
    if (self->_manualFramingFeatureFlagEnabled)
    {
      if (self->_isUltraWideCameraSupported)
      {
        if ([v4 centerStageFieldOfViewRestrictedToWide])
        {
          v28 = *MEMORY[0x277CE5878];
          v5 = MEMORY[0x277CBEA60];
          v6 = &v28;
        }

        else
        {
          v27 = *MEMORY[0x277CE5870];
          v5 = MEMORY[0x277CBEA60];
          v6 = &v27;
        }
      }

      else
      {
        v26 = *MEMORY[0x277CE5878];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v26;
      }
    }

    else if (self->_isUltraWideCameraSupported)
    {
      v25 = *MEMORY[0x277CE5870];
      v5 = MEMORY[0x277CBEA60];
      v6 = &v25;
    }

    else
    {
      v24 = *MEMORY[0x277CE5878];
      v5 = MEMORY[0x277CBEA60];
      v6 = &v24;
    }
  }

  else if (self->_manualFramingFeatureFlagEnabled)
  {
    if ([v4 manualFramingDeviceType])
    {
      v12 = -[CMContinuityCaptureRemoteVideoDevice _avfDeviceTypeForManualFramingDeviceType:](self, "_avfDeviceTypeForManualFramingDeviceType:", [v4 manualFramingDeviceType]);
      v13 = v12;
      if (v12)
      {
        v23 = v12;
        v14 = &v23;
      }

      else
      {
        v22 = *MEMORY[0x277CE5878];
        v14 = &v22;
      }

      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

      goto LABEL_4;
    }

    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = self;
      v20 = 2080;
      v21 = "[CMContinuityCaptureRemoteVideoDevice _selectVideoDeviceForConfiguration:]";
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Host side doesn't support Manual Framing", buf, 0x16u);
    }

    v17 = *MEMORY[0x277CE5878];
    v5 = MEMORY[0x277CBEA60];
    v6 = &v17;
  }

  else
  {
    v16 = *MEMORY[0x277CE5878];
    v5 = MEMORY[0x277CBEA60];
    v6 = &v16;
  }

  v7 = [v5 arrayWithObjects:v6 count:{1, v16, v17}];
LABEL_4:
  v8 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:v7 mediaType:*MEMORY[0x277CE5EA8] position:CMContinuityCaptureDevicePosition()];
  v9 = [v8 devices];
  v10 = [v9 firstObject];

  return v10;
}

- (id)connectionsForConfiguration:(id)a3
{
  v5 = a3;
  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    v9 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    *buf = 138544130;
    v74 = self;
    v75 = 2114;
    v76 = v5;
    v77 = 2112;
    *v78 = v8;
    *&v78[8] = 1024;
    LODWORD(v79) = [v9 streaming];
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ connections for configuration %{public}@ companionDevice %@ streaming %d", buf, 0x26u);
  }

  v10 = [(CMContinuityCaptureRemoteVideoDevice *)self _selectVideoDeviceForConfiguration:v5];
  [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDevice:v10];

  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
    v13 = [v12 localizedName];
    v14 = [(CMContinuityCaptureRemoteVideoDevice *)self isGazeSelectionEnabled];
    *buf = 138544386;
    v74 = self;
    v75 = 2080;
    v76 = "[CMContinuityCaptureRemoteVideoDevice connectionsForConfiguration:]";
    v77 = 2112;
    *v78 = v13;
    *&v78[8] = 2112;
    v79 = v5;
    v80 = 1024;
    v81 = v14;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Selected device %@ for configuration %@ with gazeSelectionEnabled %d", buf, 0x30u);
  }

  if (!self->_videoDevice)
  {
    LODWORD(v65) = 0;
    FigDebugAssert3();
    p_super = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v59 = [(AVCaptureDevice *)self->_videoDevice deviceType:v65];
      v60 = [v5 centerStageEnabled];
      v61 = [v5 isCenterStageForcefullyEnabled];
      *buf = 138544130;
      v74 = self;
      v75 = 2112;
      v76 = v59;
      v77 = 1024;
      *v78 = v60;
      *&v78[4] = 1024;
      *&v78[6] = v61;
      _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ Could not find back camera with device type: %@, enableCenterStage: %d isCenterStageForcefullyEnabled: %d ", buf, 0x22u);
    }

    v36 = 0;
    v50 = 0;
    v66 = 0;
    v22 = 0;
    goto LABEL_29;
  }

  v15 = [(CMContinuityCaptureRemoteVideoDevice *)self isGazeSelectionEnabled];
  v16 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
  [v16 setGazeSelectionEnabled:v15];

  v17 = [(AVCaptureDevice *)self->_videoDevice deviceType];
  if ([v17 isEqualToString:*MEMORY[0x277CE5870]])
  {
    v18 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    if ([v18 streaming])
    {
    }

    else
    {
      v19 = [v5 isCenterStageForcefullyEnabled];

      if (!v19)
      {
        goto LABEL_12;
      }
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self setFaceDrivenAFActive:0];
    v17 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    -[CMContinuityCaptureRemoteVideoDevice setDeskViewCameraMode:](self, "setDeskViewCameraMode:", [v17 deskViewCameraMode]);
  }

LABEL_12:
  videoDevice = self->_videoDevice;
  v72 = 0;
  v21 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:videoDevice error:&v72];
  v22 = v72;
  videoDataInput = self->_videoDataInput;
  self->_videoDataInput = v21;

  if (!self->_videoDataInput)
  {
    p_super = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice connectionsForConfiguration:];
    }

    v36 = 0;
    v50 = 0;
    v66 = 0;
LABEL_29:
    v55 = 0;
    v38 = v67;
    goto LABEL_21;
  }

  v68 = v5;
  v24 = objc_alloc_init(MEMORY[0x277CE5B60]);
  videoDataOutput = self->_videoDataOutput;
  self->_videoDataOutput = v24;

  v26 = self->_videoDataOutput;
  v27 = [(CMContinuityCaptureDeviceBase *)self queue];
  [(AVCaptureVideoDataOutput *)v26 setSampleBufferDelegate:self queue:v27];

  v28 = CMContinuityCaptureDevicePosition();
  v29 = self->_videoDataInput;
  v30 = *MEMORY[0x277CE5EA8];
  v31 = [(AVCaptureDevice *)self->_videoDevice deviceType];
  v32 = [(AVCaptureDeviceInput *)v29 portsWithMediaType:v30 sourceDeviceType:v31 sourceDevicePosition:v28];

  v66 = v32;
  if ([v32 count])
  {
    v33 = MEMORY[0x277CE5AB0];
    v34 = [v32 firstObject];
    v71 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
    v36 = [v33 connectionWithInputPorts:v35 output:self->_videoDataOutput];

    [v36 setVideoDeviceOrientationCorrectionEnabled:{objc_msgSend(v36, "isVideoDeviceOrientationCorrectionSupported")}];
    objc_storeStrong(&self->_videoDataConnection, v36);
    v37 = v32;
    v38 = v67;
    [v67 addObject:v36];
    if ([v5 asyncStillCaptureEnabled])
    {
      v39 = objc_alloc_init(MEMORY[0x277CE5B28]);
      photoOutput = self->_photoOutput;
      self->_photoOutput = v39;

      v41 = MEMORY[0x277CE5AB0];
      v42 = [v37 firstObject];
      v70 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      v38 = v67;
      v44 = [v41 connectionWithInputPorts:v43 output:self->_photoOutput];

      v5 = v68;
      [v44 setVideoDeviceOrientationCorrectionEnabled:{-[AVCaptureConnection isVideoDeviceOrientationCorrectionEnabled](self->_videoDataConnection, "isVideoDeviceOrientationCorrectionEnabled")}];
      [v67 addObject:v44];
      v36 = v44;
    }

    if (([v5 faceDetectionEnabled] & 1) != 0 || (objc_msgSend(v5, "humanBodyDetectionEnabled") & 1) != 0 || objc_msgSend(v5, "humanFullBodyDetectionEnabled"))
    {
      v45 = objc_alloc_init(MEMORY[0x277CE5B00]);
      metadataOutput = self->_metadataOutput;
      self->_metadataOutput = v45;

      v47 = self->_videoDataInput;
      v48 = *MEMORY[0x277CE5E78];
      v49 = [(AVCaptureDevice *)self->_videoDevice deviceType];
      v50 = [(AVCaptureDeviceInput *)v47 portsWithMediaType:v48 sourceDeviceType:v49 sourceDevicePosition:v28];

      v51 = MEMORY[0x277CE5AB0];
      v52 = [v50 firstObject];
      v69 = v52;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      v54 = [v51 connectionWithInputPorts:v53 output:self->_metadataOutput];

      v5 = v68;
      [v38 addObject:v54];
      v36 = v54;
    }

    else
    {
      v50 = 0;
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self _configureVideoEffects];
    v55 = v38;
    p_super = &self->_connections->super;
    self->_connections = v55;
  }

  else
  {
    p_super = CMContinuityCaptureLog(2);
    v38 = v67;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v62 = v22;
      v63 = self->_videoDataInput;
      v64 = [(AVCaptureDevice *)self->_videoDevice deviceType];
      *buf = 138543874;
      v74 = self;
      v75 = 2112;
      v76 = v63;
      v22 = v62;
      v77 = 2112;
      *v78 = v64;
      _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get video input ports for input %@ and device type %@", buf, 0x20u);
    }

    v36 = 0;
    v50 = 0;
    v55 = 0;
  }

LABEL_21:

  v57 = v55;
  return v55;
}

- (unsigned)throttledMaxFrameRate
{
  v2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v3 = [v2 maxFrameRate];

  return v3;
}

- (void)setMinFrameDurationOverrideIfApplicable
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CMContinuityCaptureDeviceBase *)self streaming];
    v5 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
    v6 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
    v7 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    v8 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    LODWORD(buf.value) = 138544898;
    *(&buf.value + 4) = self;
    LOWORD(buf.flags) = 2080;
    *(&buf.flags + 2) = "[CMContinuityCaptureRemoteVideoDevice setMinFrameDurationOverrideIfApplicable]";
    HIWORD(buf.epoch) = 1024;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2114;
    v33 = v7;
    v34 = 1024;
    v35 = [v8 streaming];
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ streaming %s streaming %d %@ %@ companionDevice %{public}@ streaming %d", &buf, 0x40u);
  }

  v9 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
  if (v10)
  {
    v11 = v10;
    v12 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
    if (v12)
    {
      v13 = v12;
      v14 = [(CMContinuityCaptureDeviceBase *)self streaming];

      if (!v14)
      {
        return;
      }

      v15 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
      v16 = [v15 deviceType];
      v17 = v16;
      if (v16 == *MEMORY[0x277CE5878])
      {
        v18 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
        v19 = [v18 streaming];

        if (v19)
        {
          v20 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.value) = 138543362;
            *(&buf.value + 4) = self;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting videoMinFrameDurationOverride", &buf, 0xCu);
          }

          v21 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
          v22 = [v21 frameRateManager];
          v11 = [v22 allowedFrameRateRangeForDevice:self];

          v23 = [v11 maxFrameRate];
          CMTimeMake(&v25, 1, [v23 unsignedIntValue]);
          v24 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
          buf = v25;
          [v24 setVideoMinFrameDurationOverride:&buf];

          goto LABEL_13;
        }
      }

      else
      {
      }

      v11 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
      buf = **&MEMORY[0x277CC0898];
      [v11 setVideoMinFrameDurationOverride:&buf];
    }

LABEL_13:
  }
}

- (id)compatibleDeviceFormatForMaxFrameRate:(unsigned int)a3 minFrameRate:(unsigned int)a4
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__CMContinuityCaptureRemoteVideoDevice_compatibleDeviceFormatForMaxFrameRate_minFrameRate___block_invoke;
  v12[3] = &unk_278D5CCA0;
  v12[4] = self;
  v13 = a4;
  v14 = a3;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v12];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [(AVCaptureDevice *)self->_videoDevice formats];
  v8 = [v7 filteredArrayUsingPredicate:v5];
  v9 = [v6 initWithArray:v8];

  [v9 sortUsingComparator:&__block_literal_global_5];
  v10 = [v9 firstObject];

  return v10;
}

uint64_t __91__CMContinuityCaptureRemoteVideoDevice_compatibleDeviceFormatForMaxFrameRate_minFrameRate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 activeConfiguration];
  v6 = [*(a1 + 32) captureSession];
  v7 = [v3 _deviceFormat:v4 isCompatibleWithConfiguration:v5 requiringMultiCamSupport:objc_msgSend(v6 minFrameRate:"isMulticamSession") maxFrameRate:*(a1 + 40), *(a1 + 44)];

  return v7;
}

uint64_t __91__CMContinuityCaptureRemoteVideoDevice_compatibleDeviceFormatForMaxFrameRate_minFrameRate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isVideoHDRSupported] && !objc_msgSend(v5, "isVideoHDRSupported"))
  {
    goto LABEL_7;
  }

  if ([v4 isVideoHDRSupported] & 1) == 0 && (objc_msgSend(v5, "isVideoHDRSupported"))
  {
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (([v4 isVideoBinned] & 1) != 0 || (objc_msgSend(v5, "isVideoBinned") & 1) == 0)
  {
    if (![v4 isVideoBinned] || objc_msgSend(v5, "isVideoBinned"))
    {
      v6 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_7:
  v6 = -1;
LABEL_12:

  return v6;
}

- (BOOL)_deviceFormat:(id)a3 isCompatibleWithConfiguration:(id)a4 requiringMultiCamSupport:(BOOL)a5 minFrameRate:(unsigned int)a6 maxFrameRate:(unsigned int)a7
{
  v8 = a5;
  v11 = a3;
  v12 = a4;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CMContinuityCaptureRemoteVideoDevice _deviceFormat:v11 isCompatibleWithConfiguration:? requiringMultiCamSupport:? minFrameRate:? maxFrameRate:?];
    }
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([v11 formatDescription]);
  v15 = [v12 format];
  if ([v15 width] == Dimensions)
  {
    v16 = [v12 format];
    v17 = [v16 height];

    if (v17 == Dimensions >> 32)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType([v11 formatDescription]);
      v19 = [v12 format];
      v20 = [v19 pixelFormat];

      if (MediaSubType == v20)
      {
        v21 = [v11 videoSupportedFrameRateRanges];
        v22 = [v21 firstObject];
        [v22 maxFrameRate];
        v24 = v23;

        if (v24 >= a7 && (([v12 centerStageEnabled] & 1) == 0 && (!objc_msgSend(v12, "isCenterStageForcefullyEnabled") || -[CMContinuityCaptureDeviceBase entity](self, "entity") == 2) || objc_msgSend(v11, "isCenterStageSupported")) && (!objc_msgSend(v12, "manualFramingDeviceType") || objc_msgSend(v11, "isManualFramingSupported")) && (!objc_msgSend(v12, "studioLightingEnabled") || objc_msgSend(v11, "isStudioLightSupported")) && (!objc_msgSend(v12, "reactionEffectsEnabled") || objc_msgSend(v11, "reactionEffectsSupported")) && (!objc_msgSend(v12, "backgroundReplacementEnabled") || objc_msgSend(v11, "isBackgroundReplacementSupported")) && (!v8 || objc_msgSend(v11, "isMultiCamSupported")))
        {
          v25 = 1;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (void)_toggleBetweenCenterStageAndManualFraming
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  if (self->_manualFramingFeatureFlagEnabled)
  {
    v4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([v4 manualFramingDeviceType] == 1)
    {
      v5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v6 = [v5 centerStageFieldOfViewRestrictedToWide];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([v7 manualFramingDeviceType] == 2)
    {
      v8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v9 = [v8 centerStageFieldOfViewRestrictedToWide] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([v10 centerStageEnabled])
    {

      if ((v6 | v9))
      {
        v11 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [v11 willConfigure];

        goto LABEL_16;
      }
    }

    else
    {
      v12 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v13 = [v12 isCenterStageForcefullyEnabled];

      if ((v6 | v9))
      {
        v14 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [v14 willConfigure];

        if ((v13 & 1) == 0)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _disableCenterStage];
          if (self->_manualFramingFeatureFlagEnabled)
          {
            [(CMContinuityCaptureRemoteVideoDevice *)self _enableManualFraming];
          }

          v15 = CMContinuityCaptureLog(2);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v16 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
          v17 = [v16 deviceType];
          [(AVCaptureDevice *)self->_videoDevice manualFramingPanningAngleX];
          v23 = v22;
          [(AVCaptureDevice *)self->_videoDevice manualFramingPanningAngleY];
          v25 = v24;
          [(CMContinuityCaptureRemoteVideoDevice *)self videoZoomFactor];
          *buf = 138544386;
          v32 = self;
          v33 = 2112;
          v34 = v17;
          v35 = 2048;
          v36 = v23;
          v37 = 2048;
          v38 = v25;
          v39 = 2048;
          v40 = v26;
          _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition from Center Stage to Manual Framing (both on %@). Setting panning angle x: %f, y: %f, zoom factor %f", buf, 0x34u);
          goto LABEL_27;
        }

LABEL_16:
        if (self->_manualFramingFeatureFlagEnabled)
        {
          [(CMContinuityCaptureRemoteVideoDevice *)self _disableManualFraming];
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self _enableCenterStage];
        v15 = CMContinuityCaptureLog(2);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v16 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
        v17 = [v16 deviceType];
        [(CMContinuityCaptureRemoteVideoDevice *)self centerStageRectOfInterest];
        v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [(CMContinuityCaptureRemoteVideoDevice *)self videoZoomFactor];
        *buf = 138544130;
        v32 = self;
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v18;
        v37 = 2048;
        v38 = v19;
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition from Manual Framing to Center Stage (both on %@). Setting CS RoI %@, zoom factor to %f", buf, 0x2Au);

LABEL_27:
LABEL_28:

        v27 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [v27 didConfigure];

        v28 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
        [v28 start];

        return;
      }

      if (!v13)
      {
        v20 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v21 = "Transition from Center Stage to Manual Framing on a different camera. Rebuilding the camera stack.";
          goto LABEL_31;
        }

LABEL_32:

        v29 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
        [v29 postEvent:@"kCMContinuityCaptureEventForceRestartStream" entity:-[CMContinuityCaptureDeviceBase entity](self data:{"entity"), 0}];

        return;
      }
    }

    v20 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "Transition from Manual Framing to Center Stage on a different camera. Rebuilding the camera stack.";
LABEL_31:
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v30 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  [v30 postEvent:@"kCMContinuityCaptureEventForceRestartStream" entity:-[CMContinuityCaptureDeviceBase entity](self data:{"entity"), 0}];
}

- (void)_updateManualFramingDeviceType:(int64_t)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [v6 setManualFramingDeviceType:a3];

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2080;
    v15 = "[CMContinuityCaptureRemoteVideoDevice _updateManualFramingDeviceType:]";
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Resetting Manual Framing states due to device type change", &v12, 0x16u);
  }

  v8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [v8 setPanningAngleX:0.0];

  v9 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [v9 setPanningAngleY:0.0];

  v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [v10 setVideoZoomFactor:1.0];

  v11 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  [v11 postEvent:@"kCMContinuityCaptureEventForceRestartStream" entity:-[CMContinuityCaptureDeviceBase entity](self data:{"entity"), 0}];
}

- (void)tearDownConnectionsWithVideoDataConnectionDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ tearDownConnectionsWithVideoDataConnectionDisabled %d", &v12, 0x12u);
  }

  if (!v3)
  {
    photoOutput = self->_photoOutput;
    self->_photoOutput = 0;

    metadataOutput = self->_metadataOutput;
    self->_metadataOutput = 0;

    videoDataInput = self->_videoDataInput;
    self->_videoDataInput = 0;

    videoDataOutput = self->_videoDataOutput;
    self->_videoDataOutput = 0;

    videoDataConnection = self->_videoDataConnection;
    self->_videoDataConnection = 0;

    connections = self->_connections;
    self->_connections = 0;

    [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDevice:0];
  }
}

- (void)_forcefullyEnableCenterStageOnSuperWide
{
  v3 = [(CMContinuityCaptureRemoteVideoDevice *)self isDockedTrackingEnabled];
  v4 = CMContinuityCaptureLog(2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "Docked tracking is enabled, do not forcefully enable Center Stage as requested", &v17, 2u);
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v17 = 138543618;
    v18 = self;
    v19 = 2080;
    v20 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Forcefully enable Center Stage on the default video camera as requested", &v17, 0x16u);
  }

  v6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v7 = [v6 forcefulCenterStageEnablementType];
  v8 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v9 = [v8 activeConfiguration];
  [v9 setForcefulCenterStageEnablementType:v7];

  v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v11 = [v10 forcefulCenterStageEnablementType];

  if (v11 == 2)
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = self;
      v19 = 2080;
      v20 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      v16 = "%{public}@ %s [forceful CS enablement] Already running Center Stage on the wide, switching to the super wide";
      goto LABEL_13;
    }

LABEL_14:

    [(CMContinuityCaptureRemoteVideoDevice *)self setShouldRestoreCenterStageOnWideCamera:1];
    v4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v4 setCenterStageFieldOfViewRestrictedToWide:0];
LABEL_15:

    return;
  }

  if (v11 == 1)
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = self;
      v19 = 2080;
      v20 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Switching from Manual Framing to Center Stage", &v17, 0x16u);
    }

    v13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v14 = [v13 centerStageFieldOfViewRestrictedToWide];

    if (v14)
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = self;
        v19 = 2080;
        v20 = "[CMContinuityCaptureRemoteVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        v16 = "%{public}@ %s [forceful CS enablement] Switching to the super wide";
LABEL_13:
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, v16, &v17, 0x16u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }
}

- (BOOL)stopCameraCaptureStack:(unint64_t)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138544130;
    *&v9[4] = self;
    v10 = 2048;
    v11 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v12 = 2080;
    v13 = "[CMContinuityCaptureRemoteVideoDevice stopCameraCaptureStack:]";
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] %s option: %lu", v9, 0x2Au);
  }

  if (self->_captureStackActive)
  {
    if ((a3 & 0x10) != 0)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543618;
        *&v9[4] = self;
        v10 = 2080;
        v11 = "[CMContinuityCaptureRemoteVideoDevice stopCameraCaptureStack:]";
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s skip anticipating reconnect", v9, 0x16u);
      }

      goto LABEL_7;
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self stopCameraCaptureStack:a3, &self->_captureStackActive];
  }

  if (([(CMContinuityCaptureRemoteVideoDevice *)a3 stopCameraCaptureStack:v9]& 1) != 0)
  {
    return 1;
  }

  v7 = *v9;
LABEL_7:

  return 1;
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v2 invalidate];
  [CMContinuityCaptureRemoteCompositeDevice setWombatMode:0];
}

- (void)addVideoDeviceKVOs
{
  videoDevice = self->_videoDevice;
  v4 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  [(AVCaptureDevice *)videoDevice addObserver:v4 forKeyPath:@"systemPressureState" options:3 context:0];

  [(AVCaptureDevice *)self->_videoDevice addObserver:self forKeyPath:@"activeVideoMinFrameDuration" options:3 context:0];
  [(AVCaptureDevice *)self->_videoDevice addObserver:self forKeyPath:@"activeVideoMaxFrameDuration" options:3 context:0];
  [(AVCaptureDevice *)self->_videoDevice addObserver:self forKeyPath:@"reactionEffectsInProgress" options:3 context:0];
  [MEMORY[0x277CE5AC8] addObserver:self forKeyPath:@"reactionEffectSuppressedGesturesEnabled" options:3 context:0];
  [MEMORY[0x277CE5AC8] addObserver:self forKeyPath:@"reactionEffectSuppressedGesture" options:3 context:0];
  v5 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v6 = [v5 frameRateManager];
  [v6 addObserver:self forKeyPath:@"throttled" options:3 context:0];

  [(CMContinuityCaptureRemoteVideoDevice *)self addObserver:self forKeyPath:@"activeConfiguration" options:3 context:0];
  self->_videoDeviceKVOsActive = 1;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_videoDevice;
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ KVOs are active on %{public}@", &v9, 0x16u);
  }
}

- (void)removeVideoDeviceKVOs
{
  if (self->_videoDeviceKVOsActive)
  {
    videoDevice = self->_videoDevice;
    v4 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    [(AVCaptureDevice *)videoDevice removeObserver:v4 forKeyPath:@"systemPressureState" context:0];

    [(AVCaptureDevice *)self->_videoDevice removeObserver:self forKeyPath:@"activeVideoMinFrameDuration" context:0];
    [(AVCaptureDevice *)self->_videoDevice removeObserver:self forKeyPath:@"activeVideoMaxFrameDuration" context:0];
    [(AVCaptureDevice *)self->_videoDevice removeObserver:self forKeyPath:@"reactionEffectsInProgress" context:0];
    [MEMORY[0x277CE5AC8] removeObserver:self forKeyPath:@"reactionEffectSuppressedGesturesEnabled" context:0];
    [MEMORY[0x277CE5AC8] removeObserver:self forKeyPath:@"reactionEffectSuppressedGesture" context:0];
    v5 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    v6 = [v5 frameRateManager];
    [v6 removeObserver:self forKeyPath:@"throttled" context:0];

    [(CMContinuityCaptureRemoteVideoDevice *)self removeObserver:self forKeyPath:@"activeConfiguration" context:0];
    self->_videoDeviceKVOsActive = 0;
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_videoDevice;
      v11 = 138543618;
      v12 = self;
      v13 = 2112;
      v14 = v8;
      v9 = "%{public}@ KVOs removed on %@{public}@";
LABEL_6:
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x16u);
    }
  }

  else
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_videoDevice;
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v10;
      v9 = "%{public}@ KVOs for _videoDevice %{public}@ are inactive";
      goto LABEL_6;
    }
  }
}

- (void)didStartStreamInput:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138544130;
    v8 = self;
    v9 = 2048;
    v10 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice didStartStreamInput:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCInput setup complete %s %@", &v7, 0x2Au);
  }

  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v6);

  self->_avcStreamInputActive = 1;
}

- (void)didStopStreamInput:(id)a3
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteVideoDevice didStopStreamInput:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
  }

  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_avcStreamInputActive = 0;
}

- (void)serverDidDie
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = self;
    v6 = 2080;
    v7 = "[CMContinuityCaptureRemoteVideoDevice serverDidDie]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v4, 0x16u);
  }
}

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v6 = a3;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    v9 = self;
    v10 = 2080;
    v11 = "[CMContinuityCaptureRemoteVideoDevice stream:didStart:error:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v8, 0x20u);
  }
}

- (void)streamDidStop:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice streamDidStop:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureRemoteVideoDevice_streamDidStop___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

uint64_t __54__CMContinuityCaptureRemoteVideoDevice_streamDidStop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[44];
    v7 = v2;
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = v7[44];
      v7[44] = 0;

      v2 = v7;
    }

    v5 = v2[34];
    v2[34] = 0;

    *(v7 + 344) = 0;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)streamDidServerDie:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice streamDidServerDie:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureRemoteVideoDevice_streamDidServerDie___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureRemoteVideoDevice_streamDidServerDie___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[34];
    WeakRetained[34] = 0;

    v2 = WeakRetained[33];
    WeakRetained[33] = 0;

    *(WeakRetained + 344) = 0;
    v3 = WeakRetained[44];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = WeakRetained[44];
      WeakRetained[44] = 0;
    }

    [WeakRetained postAVCStreamInterruption];
  }
}

- (void)postAVCStreamInterruption
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureRemoteVideoDevice postAVCStreamInterruption]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v4 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CMContinuityCaptureRemoteVideoDevice_postAVCStreamInterruption__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v6, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __65__CMContinuityCaptureRemoteVideoDevice_postAVCStreamInterruption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained compositeDelegate];
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1007 userInfo:0];
      [v2 connectionInterrupted:v3 forDevice:0];
    }

    WeakRetained = v4;
  }
}

- (void)streamDidRTPTimeOut:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543874;
    v7 = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteVideoDevice streamDidRTPTimeOut:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%{public}@ %s %@", &v6, 0x20u);
  }
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteVideoDevice streamDidRTCPTimeOut:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%@ %s %@", buf, 0x20u);
  }

  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CMContinuityCaptureRemoteVideoDevice_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, &location);
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __61__CMContinuityCaptureRemoteVideoDevice_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained postAVCStreamInterruption];
    WeakRetained = v2;
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)a3 entity:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = *MEMORY[0x277CF3FC8];
  v10 = CMGetAttachment(a3, *MEMORY[0x277CF3FC8], 0);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF6988]];
    v13 = v12;
    if (v12)
    {
      point.x = NAN;
      point.y = NAN;
      CGPointMakeWithDictionaryRepresentation(v12, &point);
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = self;
        v41 = 2048;
        x = point.x;
        v43 = 2048;
        y = point.y;
        _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating local activeConfiguration panning angle x:%f,y:%f based on transport layer attachments", buf, 0x20u);
      }

      v15 = point.x;
      v16 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v16 setPanningAngleX:v15];

      v17 = point.y;
      v18 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v18 setPanningAngleY:v17];
    }

    v19 = [v11 objectForKeyedSubscript:*MEMORY[0x277CF6978]];
    if (v19)
    {
      v20 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [v19 floatValue];
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "Updating local activeConfiguration video zoom factor to %f based on transport layer attachments", buf, 0xCu);
      }

      [v19 floatValue];
      v23 = v22;
      v24 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v24 setVideoZoomFactor:v23];
    }
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    v26 = CMGetAttachment(ImageBuffer, @"ReactionEffectComplexity", 0);
    if (v26)
    {
      v27 = *MEMORY[0x277CF6900];
      v28 = [v11 objectForKeyedSubscript:*MEMORY[0x277CF6900]];
      v29 = [v28 mutableCopy];

      if (v29)
      {
        [v29 setObject:v26 forKeyedSubscript:@"ReactionEffectComplexity"];
      }

      else
      {
        v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v26, @"ReactionEffectComplexity", 0}];
      }

      v30 = [v11 mutableCopy];
      if (v30)
      {
        v31 = v30;
        [v30 setObject:v29 forKeyedSubscript:v27];
      }

      else
      {
        v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v29, v27, 0}];
      }

      CMSetAttachment(a3, v9, v31, 1u);
    }
  }

  if (self->_avcStreamInputActive)
  {
    HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
    avcStreamInput = self->_avcStreamInput;
    v39 = 0;
    v34 = [(AVCStreamInput *)avcStreamInput pushSampleBuffer:a3 error:&v39];
    v35 = v39;
    if (v34)
    {
      v36 = CMContinuityCaptureGetHostTimeInNanoSec() - HostTimeInNanoSec;
      if (CMContinityCaptureDebugLogEnabled())
      {
        v37 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [CMContinuityCaptureRemoteVideoDevice dispatchFrame:entity:completion:];
        }
      }

      if (v36 >= 0xF4241)
      {
        CMSetAttachment(a3, @"HighLatencyFrame", *MEMORY[0x277CBED28], 0);
      }

      v38.receiver = self;
      v38.super_class = CMContinuityCaptureRemoteVideoDevice;
      [(CMContinuityCaptureDeviceBase *)&v38 dispatchFrame:a3 entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_75];
    }

    else
    {
      [CMContinuityCaptureRemoteVideoDevice dispatchFrame:entity:completion:];
    }
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice dispatchFrame:buf entity:? completion:?];
    v35 = *buf;
  }

  v7[2](v7, v35);
}

- (id)newVideoStreamCurrentConfiguration:(int64_t)a3
{
  v5 = [(CMContinuityCaptureDeviceBase *)self transportStream];
  v6 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 server];
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v5 && v8)
    {
      v13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v14 = [v13 sessionID];
      v10 = [v5 cipherKeyforSessionID:v14];

      if (v10)
      {
        v15 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
        v57 = 0;
        v12 = [v15 generateMediaStreamConfigurationWithError:&v57];
        v11 = v57;

        if (v12)
        {
          v44 = v11;
          [v12 setRtcpSendInterval:1.0];
          [v12 setRtcpTimeOutEnabled:1];
          v16 = [v9 currentTransport];
          v17 = 12.0;
          if (v16 == 2)
          {
            v17 = 8.0;
          }

          [v12 setRtcpTimeOutInterval:v17];
          [v12 setSRTPCipherSuite:5];
          [v12 setSRTCPCipherSuite:5];
          [v12 setSendMediaKey:v10];
          [v12 setReceiveMediaKey:v10];
          [v12 setStreamInputID:a3];
          v18 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          v19 = [v18 format];
          AVCVideoResolutionForFormat = CMContinuityCaptureGetAVCVideoResolutionForFormat(v19);
          v21 = [v12 video];
          [v21 setVideoResolution:AVCVideoResolutionForFormat];

          v22 = [v12 video];
          v23 = [v22 videoResolution];

          if (v23 == 12)
          {
            v24 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            v25 = [v24 format];
            v26 = [v25 width];
            v27 = [v12 video];
            [v27 setCustomWidth:v26];

            v28 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            v29 = [v28 format];
            v30 = [v29 height];
            v31 = [v12 video];
            [v31 setCustomHeight:v30];
          }

          v32 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          v33 = [v32 maxFrameRate];
          v34 = [v12 video];
          [v34 setFramerate:v33];

          v35 = [v12 video];
          [v35 setLatencySensitiveModeEnabled:1];

          v36 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
            v42 = [v12 video];
            v43 = v9;
            v37 = [v42 videoResolution];
            v38 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            *buf = 138413570;
            v46 = self;
            v47 = 2048;
            v48 = v41;
            v49 = 1024;
            v50 = v37;
            v9 = v43;
            v51 = 1024;
            v52 = [v38 maxFrameRate];
            v53 = 1024;
            v54 = [v12 localSSRC];
            v55 = 1024;
            v56 = [v12 remoteSSRC];
            _os_log_impl(&dword_242545000, v36, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] Stream Resolution %u at frameRate %u localSSRC %x remoteSSRC %x", buf, 0x2Eu);
          }

          v11 = v44;
        }

        else
        {
          v36 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [CMContinuityCaptureRemoteVideoDevice newVideoStreamCurrentConfiguration:];
          }

          v12 = 0;
        }
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    v39 = v12;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (void)stopCaptureStack:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v7);

  if (self->_stopCompletionBlock)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2080;
      v28 = "[CMContinuityCaptureRemoteVideoDevice stopCaptureStack:completion:]";
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s already in progress", buf, 0x16u);
    }

    if ((a3 & 4) != 0)
    {
      avcVideoStream = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = self;
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    if (v6)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:3 userInfo:0];
      v6[2](v6, v11);
    }
  }

  else
  {
    if (self->_avcStreamInputActive)
    {
      v12 = MEMORY[0x245D12020](v6);
      stopCompletionBlock = self->_stopCompletionBlock;
      self->_stopCompletionBlock = v12;

      objc_initWeak(buf, self);
      v14 = dispatch_time(0, 5000000000);
      v15 = [(CMContinuityCaptureDeviceBase *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__CMContinuityCaptureRemoteVideoDevice_stopCaptureStack_completion___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v24, buf);
      dispatch_after(v14, v15, block);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    v16 = [(CMContinuityCaptureRemoteVideoDevice *)self stopAVConferenceStack];
    [(CMContinuityCaptureRemoteVideoDevice *)self stopCameraCaptureStack:a3];
    if ((a3 & 4) != 0)
    {
      v17 = self->_avcVideoStream;
      if (v17)
      {
        [(AVCVideoStream *)v17 stop];
      }

      avcStreamInput = self->_avcStreamInput;
      self->_avcStreamInput = 0;

      v19 = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      self->_avcStreamInputActive = 0;
      v20 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = self;
        _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    v22.receiver = self;
    v22.super_class = CMContinuityCaptureRemoteVideoDevice;
    [(CMContinuityCaptureDeviceBase *)&v22 stopCaptureStack:a3 completion:&__block_literal_global_84];
    if (!v16 || !self->_avcStreamInputActive)
    {
      v21 = self->_stopCompletionBlock;
      self->_stopCompletionBlock = 0;

      v6[2](v6, 0);
    }
  }
}

uint64_t __68__CMContinuityCaptureRemoteVideoDevice_stopCaptureStack_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[44];
    if (v3)
    {
      v6 = v2;
      (*(v3 + 16))(v3, 0);
      v4 = v6[44];
      v6[44] = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)postActionOfType:(unint64_t)a3 forEvent:(id)a4 option:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  if (a3 == 3)
  {
    v10 = [v8 name];
    v11 = [v10 isEqualToString:@"kCMContinuityCaptureEventStreamInterrupted"];

    if (v11)
    {
      v15 = self;
      v16 = CMContinuityCaptureRemoteVideoDevice;
      v12 = &v15;
    }

    else
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self stopCameraCaptureStack:1024];
      [(CMContinuityCaptureRemoteVideoDevice *)self startCameraCaptureStack:0];
      v14.receiver = self;
      v14.super_class = CMContinuityCaptureRemoteVideoDevice;
      v12 = &v14;
    }

    [(objc_super *)v12 postActionOfType:13 forEvent:v9 option:a5, v13.receiver, v13.super_class, v14.receiver, v14.super_class, v15, v16];
  }

  else
  {
    [(CMContinuityCaptureDeviceBase *)&v13 postActionOfType:a3 forEvent:v8 option:a5, self, CMContinuityCaptureRemoteVideoDevice, v14.receiver, v14.super_class, v15, v16];
  }
}

- (void)postActionCompletionForEventName:(id)a3 eventData:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CMContinuityCaptureRemoteEventToBeRelayedList();
  v12 = CMContinuityCaptureRemoteEventToBeRelayedListEvenWhenDropped();
  if ([v11 containsObject:v8] && (!v10 || objc_msgSend(v10, "code") != 1 && (objc_msgSend(v10, "code") != 2 || objc_msgSend(v12, "containsObject:", v8))))
  {
    v13 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [v13 postEvent:v8 entity:-[CMContinuityCaptureDeviceBase entity](self data:{"entity"), v9}];
  }

  v14.receiver = self;
  v14.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v14 postActionCompletionForEventName:v8 eventData:v9 error:v10];
}

- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_initWeak(&location, self);
  v9 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CMContinuityCaptureRemoteVideoDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5CCE8;
  objc_copyWeak(&v16, &location);
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__CMContinuityCaptureRemoteVideoDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v27 = 138543618;
      v28 = WeakRetained;
      v29 = 2112;
      *v30 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Got captureStillImage with request %@", &v27, 0x16u);
    }

    v5 = [*(a1 + 32) compressedFormat];

    if (v5)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = [*(a1 + 32) compressedFormat];
      [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CE62C8]];
    }

    v7 = [MEMORY[0x277CE5B30] photoSettingsWithFormat:v5];
    if ([*(a1 + 32) maxPhotoDimensions] < 1 || (objc_msgSend(*(a1 + 32), "maxPhotoDimensions") >> 32) < 1)
    {
      [v7 setHighResolutionPhotoEnabled:{objc_msgSend(*(a1 + 32), "highResolutionPhotoEnabled")}];
    }

    else
    {
      [v7 setMaxPhotoDimensions:{objc_msgSend(*(a1 + 32), "maxPhotoDimensions")}];
    }

    v8 = [WeakRetained[36] supportedFlashModes];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "flashMode")}];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      [v7 setFlashMode:{objc_msgSend(*(a1 + 32), "flashMode")}];
    }

    else
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = [*(a1 + 32) flashMode];
        v26 = [WeakRetained[36] supportedFlashModes];
        v27 = 138543874;
        v28 = WeakRetained;
        v29 = 1024;
        *v30 = v25;
        *&v30[4] = 2112;
        *&v30[6] = v26;
        _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Still capture request specified unsupported flash mode %d, supported modes %@", &v27, 0x1Cu);
      }
    }

    [v7 setPhotoQualityPrioritization:{objc_msgSend(*(a1 + 32), "photoQualityPrioritization")}];
    if (v7 && [WeakRetained streaming] && WeakRetained[36])
    {
      v12 = *(a1 + 40);
      objc_sync_enter(v12);
      v13 = WeakRetained[32];
      if (!v13)
      {
        v14 = [MEMORY[0x277CBEB38] dictionary];
        v15 = WeakRetained[32];
        WeakRetained[32] = v14;

        v13 = WeakRetained[32];
      }

      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "uniqueID")}];
      [v13 setObject:v16 forKeyedSubscript:v17];

      objc_sync_exit(v12);
      v18 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v27 = 138543874;
        v28 = WeakRetained;
        v29 = 2112;
        *v30 = v7;
        *&v30[8] = 2112;
        *&v30[10] = v19;
        _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Capturing %@ for %@", &v27, 0x20u);
      }

      [WeakRetained[36] capturePhotoWithSettings:v7 delegate:*(a1 + 40)];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v20 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        v23 = [WeakRetained streaming];
        v24 = WeakRetained[36];
        v27 = 138544386;
        v28 = WeakRetained;
        v29 = 2112;
        *v30 = v22;
        *&v30[8] = 2112;
        *&v30[10] = v7;
        v31 = 1024;
        v32 = v23;
        v33 = 2112;
        v34 = v24;
        _os_log_error_impl(&dword_242545000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to capture photo for request %@. photoSettings:%@ streaming:%d photoOutput:%@", &v27, 0x30u);
      }

      v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1002 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)enqueueReactionEffect:(id)a3 entity:(int64_t)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CMContinuityCaptureRemoteVideoDevice_enqueueReactionEffect_entity___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__CMContinuityCaptureRemoteVideoDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v7 = WeakRetained;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Got enqueueReactionEffect with reactionType %@", buf, 0x16u);
    }

    if ([WeakRetained streaming])
    {
      v5 = WeakRetained[39];
      if (v5)
      {
        [v5 performEffectForReaction:*(a1 + 32)];
      }
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  v13 = [(CMContinuityCaptureDeviceBase *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__CMContinuityCaptureRemoteVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __87__CMContinuityCaptureRemoteVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v10);

  if ([v8 isEqualToString:@"activeVideoMinFrameDuration"])
  {
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v12 = v11;
    if (v11 && ([v11 CMTimeValue], *buf))
    {
      *&v13 = *&buf[8] / *buf;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    }

    else
    {
      v14 = &unk_2854ECCD8;
    }

    v17 = [v14 unsignedIntValue];
    v18 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v18 setMaxFrameRate:v17];

LABEL_33:
    [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];

LABEL_34:
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"activeVideoMaxFrameDuration"])
  {
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v12 = v15;
    if (v15 && ([v15 CMTimeValue], *buf))
    {
      *&v16 = *&buf[8] / *buf;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    }

    else
    {
      v14 = &unk_2854ECCD8;
    }

    v39 = [v14 unsignedIntValue];
    v40 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v40 setMinFrameRate:v39];

    v41 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"CMIOExtensionPropertyStreamMaxFrameDuration"];
    [v41 setValue:v14];

    goto LABEL_33;
  }

  if ([v8 isEqualToString:@"reactionEffectsInProgress"])
  {
    v19 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v63 = v9;
    v20 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v21 = [MEMORY[0x277CBEB98] setWithArray:v19];
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count") + objc_msgSend(v19, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v75 objects:v74 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v76;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v76 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v75 + 1) + 8 * i) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v75 objects:v74 count:16];
      }

      while (v25);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v29 = v20;
    v30 = [v29 countByEnumeratingWithState:&v70 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v71;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v71 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v70 + 1) + 8 * j);
          if (([v21 containsObject:v34] & 1) == 0)
          {
            v35 = [v34 dictionaryRepresentation];
            [v22 addObject:v35];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v70 objects:v69 count:16];
      }

      while (v31);
    }

    v36 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"ReactionsInProgress"];
    [v36 setValue:v22];
    v37 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      v65 = 2114;
      *v66 = v36;
      _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
    }

    v38 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [v38 setValueForControl:v36 completion:0];

    v9 = v63;
    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"reactionEffectSuppressedGesturesEnabled"])
  {
    v12 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"SuppressedGesturesEnabled"];
    v42 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    [v12 setValue:v42];

    v43 = [v12 value];
    v44 = [v43 BOOLValue];
    v45 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v45 setReactionEffectSuppressedGesturesEnabled:v44];

    v46 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if ([v8 isEqualToString:@"reactionEffectSuppressedGesture"])
  {
    v12 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"SuppressedGesture"];
    v47 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    [v12 setValue:v47];

    v46 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
LABEL_41:
      *buf = 138543618;
      *&buf[4] = self;
      v65 = 2114;
      *v66 = v12;
      _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
    }

LABEL_42:

    v48 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [v48 setValueForControl:v12 completion:0];

    goto LABEL_34;
  }

  if ([v8 isEqualToString:@"active"])
  {
    v49 = *MEMORY[0x277CCA2F0];
    v50 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if ([v50 BOOLValue])
    {

      goto LABEL_54;
    }

    v58 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v59 = [v58 BOOLValue];

    if (!v59)
    {
LABEL_54:
      v12 = [v9 objectForKeyedSubscript:v49];
      if (([v12 BOOLValue]& 1) != 0)
      {
        v61 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v62 = [v61 BOOLValue];

        if (v62)
        {
          goto LABEL_35;
        }

        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ active 0 -> 1", buf, 0xCu);
        }
      }

      goto LABEL_34;
    }

    v60 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_242545000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ active 1 -> 0", buf, 0xCu);
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self stopCaptureStack:4 completion:&__block_literal_global_94_1];
  }

  else
  {
    if ([v8 isEqualToString:@"throttled"])
    {
      v51 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v52 = [v51 BOOLValue];

      v53 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      v54 = [v53 frameRateManager];
      v12 = [v54 allowedFrameRateRangeForDevice:self];

      v55 = [v12 maxFrameRate];
      -[CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:](self, "setMaxFrameRate:", [v55 unsignedIntValue]);

      v56 = [v12 minFrameRate];
      -[CMContinuityCaptureRemoteVideoDevice setMinFrameRate:](self, "setMinFrameRate:", [v56 unsignedIntValue]);

      v57 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        *&buf[4] = self;
        v65 = 1024;
        *v66 = [(CMContinuityCaptureRemoteVideoDevice *)self maxFrameRate];
        *&v66[4] = 1024;
        *&v66[6] = [(CMContinuityCaptureRemoteVideoDevice *)self minFrameRate];
        v67 = 1024;
        v68 = v52;
        _os_log_impl(&dword_242545000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated maxFrameRate: %u minFrameRate: %u, throttled state: %d", buf, 0x1Eu);
      }

      goto LABEL_34;
    }

    if ([v8 isEqualToString:@"activeConfiguration"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(CMContinuityCaptureRemoteVideoDevice *)self _configureVideoEffects];
        [(CMContinuityCaptureRemoteVideoDevice *)self _updateControlStatus];
      }
    }
  }

LABEL_35:
}

- (void)updateControlStatus
{
  objc_initWeak(&location, self);
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CMContinuityCaptureRemoteVideoDevice_updateControlStatus__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__CMContinuityCaptureRemoteVideoDevice_updateControlStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateControlStatus];
    WeakRetained = v2;
  }
}

- (void)_updateControlStatus
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v122 = self;
    v123 = 2080;
    v124 = "[CMContinuityCaptureRemoteVideoDevice _updateControlStatus]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  v5 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"4cc_cfac_glob_0000"];
  if (v5)
  {
    v6 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([v6 isCenterStageActive])
    {
      v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      if ([v7 isCenterStageForcefullyEnabled])
      {
        v8 = 1;
      }

      else
      {
        v9 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        v8 = [v9 centerStageEnabled];
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = [v5 value];
    v11 = [v10 BOOLValue];

    if (v8 != v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v5 setValue:v12];

      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v5;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v14 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v14 setValueForControl:v5 completion:0];
    }
  }

  v15 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"OverheadCameraMode"];

  if (v15)
  {
    v16 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v17 = [v16 deskViewCameraMode];

    v18 = [v15 value];
    v19 = [v18 intValue];

    if (v17 != v19)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
      [v15 setValue:v20];

      v21 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v15;
        _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v22 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v22 setValueForControl:v15 completion:0];
    }
  }

  v23 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"4cc_cfen_glob_0000"];

  if (v23)
  {
    v24 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    if ([v24 centerStageEnabled])
    {
      v25 = 1;
    }

    else
    {
      v26 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v25 = [v26 isCenterStageForcefullyEnabled];
    }

    v27 = [v23 value];
    v28 = [v27 BOOLValue];

    if (v25 != v28)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v25];
      [v23 setValue:v29];

      v30 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v23;
        _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v31 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v31 setValueForControl:v23 completion:0];
    }
  }

  v32 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"4cc_cfri_glob_0000"];

  if (v32)
  {
    v33 = [v32 value];
    if (v33)
    {
      v34 = v33;
      v35 = [(CMContinuityCaptureRemoteVideoDevice *)self centerStageRectOfInterest];
      v36 = [v32 value];
      v37 = [v35 isEqualToDictionary:v36];

      if ((v37 & 1) == 0)
      {
        v38 = [(CMContinuityCaptureRemoteVideoDevice *)self centerStageRectOfInterest];
        [v32 setValue:v38];

        v39 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v122 = self;
          v123 = 2114;
          v124 = v32;
          _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
        }

        v40 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        [v40 setValueForControl:v32 completion:0];
      }
    }
  }

  v41 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"4cc_cffm_glob_0000"];

  if (v41)
  {
    v42 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v43 = [v42 centerStageFramingMode];

    v44 = [v41 value];
    v45 = [v44 intValue];

    if (v43 != v45)
    {
      v46 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
      [v41 setValue:v46];

      v47 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v41;
        _os_log_impl(&dword_242545000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v48 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v48 setValueForControl:v41 completion:0];
    }
  }

  v49 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"PortraitEffectActive"];

  if (v49)
  {
    v50 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([v50 isPortraitEffectActive])
    {
      v51 = 1;
    }

    else
    {
      v52 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v51 = [v52 portraitEffectEnabled];
    }

    v53 = [v49 value];
    v54 = [v53 BOOLValue];

    if (v51 != v54)
    {
      v55 = [MEMORY[0x277CCABB0] numberWithBool:v51];
      [v49 setValue:v55];

      v56 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v49;
        _os_log_impl(&dword_242545000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v57 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v57 setValueForControl:v49 completion:0];
    }
  }

  v58 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"StudioLightingActive"];

  if (v58)
  {
    v59 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([v59 isStudioLightActive])
    {
      v60 = 1;
    }

    else
    {
      v61 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v60 = [v61 studioLightingEnabled];
    }

    v62 = [v58 value];
    v63 = [v62 BOOLValue];

    if (v60 != v63)
    {
      v64 = [MEMORY[0x277CCABB0] numberWithBool:v60];
      [v58 setValue:v64];

      v65 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v58;
        _os_log_impl(&dword_242545000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v66 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v66 setValueForControl:v58 completion:0];
    }
  }

  v67 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"ReactionEffectsActive"];

  if (v67)
  {
    v68 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([v68 canPerformReactionEffects])
    {
      v69 = 1;
    }

    else
    {
      v70 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v69 = [v70 reactionEffectsEnabled];
    }

    v71 = [v67 value];
    v72 = [v71 BOOLValue];

    if (v69 != v72)
    {
      v73 = [MEMORY[0x277CCABB0] numberWithBool:v69];
      [v67 setValue:v73];

      v74 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v67;
        _os_log_impl(&dword_242545000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v75 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v75 setValueForControl:v67 completion:0];
    }
  }

  v76 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"BackgroundReplacementActive"];

  if (v76)
  {
    v77 = [(AVCaptureDeviceInput *)self->_videoDataInput device];
    if ([v77 isBackgroundReplacementActive])
    {
      v78 = 1;
    }

    else
    {
      v79 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v78 = [v79 backgroundReplacementEnabled];
    }

    v80 = [v76 value];
    v81 = [v80 BOOLValue];

    if (v78 != v81)
    {
      v82 = [MEMORY[0x277CCABB0] numberWithBool:v78];
      [v76 setValue:v82];

      v83 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v122 = self;
        v123 = 2114;
        v124 = v76;
        _os_log_impl(&dword_242545000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
      }

      v84 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      [v84 setValueForControl:v76 completion:0];
    }
  }

  v85 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"CMIOExtensionPropertyStreamFrameDuration"];

  if (v85)
  {
    videoDevice = self->_videoDevice;
    if (videoDevice)
    {
      [(AVCaptureDevice *)videoDevice activeVideoMinFrameDuration];
      if (v120)
      {
        v87 = self->_videoDevice;
        if (v87)
        {
          [(AVCaptureDevice *)v87 activeVideoMinFrameDuration];
          v88 = self->_videoDevice;
          v89 = v119;
          if (v88)
          {
            [(AVCaptureDevice *)v88 activeVideoMinFrameDuration];
            v90 = v118;
            goto LABEL_79;
          }
        }

        else
        {
          v89 = 0.0;
        }

        v90 = 0.0;
LABEL_79:
        v91 = v89 / v90;
        v92 = [v85 value];
        [v92 doubleValue];
        v94 = v93;

        if (v94 != v91)
        {
          v95 = [MEMORY[0x277CCABB0] numberWithDouble:v91];
          [v85 setValue:v95];

          v96 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v122 = self;
            v123 = 2114;
            v124 = v85;
            _os_log_impl(&dword_242545000, v96, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
          }

          v97 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
          [v97 setValueForControl:v85 completion:0];
        }
      }
    }
  }

  v98 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"CMIOExtensionPropertyStreamMaxFrameDuration"];

  if (!v98)
  {
    goto LABEL_96;
  }

  v99 = self->_videoDevice;
  if (!v99)
  {
    goto LABEL_96;
  }

  [(AVCaptureDevice *)v99 activeVideoMaxFrameDuration];
  if (!v117)
  {
    goto LABEL_96;
  }

  v100 = self->_videoDevice;
  if (v100)
  {
    [(AVCaptureDevice *)v100 activeVideoMaxFrameDuration];
    v101 = self->_videoDevice;
    v102 = v115;
    if (v101)
    {
      [(AVCaptureDevice *)v101 activeVideoMaxFrameDuration];
      v103 = v111;
      goto LABEL_92;
    }
  }

  else
  {
    v114 = 0;
    v115 = 0;
    v102 = 0.0;
    v116 = 0;
  }

  v111 = 0;
  v112 = 0;
  v103 = 0.0;
  v113 = 0;
LABEL_92:
  v104 = v102 / v103;
  v105 = [v98 value];
  [v105 doubleValue];
  v107 = v106;

  if (v107 != v104)
  {
    v108 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
    [v98 setValue:v108];

    v109 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v122 = self;
      v123 = 2114;
      v124 = v98;
      _os_log_impl(&dword_242545000, v109, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %{public}@", buf, 0x16u);
    }

    v110 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [v110 setValueForControl:v98 completion:0];
  }

LABEL_96:
}

- (void)setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CMContinuityCaptureDeviceBase *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke;
  v10[3] = &unk_278D5C120;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = self;
  v9 = v6;
  dispatch_async(v8, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_62;
  }

  if (WeakRetained[46])
  {
    v4 = [*(a1 + 32) name];
    v5 = [v4 isEqualToString:@"4cc_cfen_glob_0000"];

    if (v5)
    {
      if ([v3 isDockedTrackingEnabled])
      {
        __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_5();
        goto LABEL_62;
      }

      v6 = [v3 activeConfiguration];
      v7 = [v6 centerStageEnabled];
      v8 = [*(a1 + 32) value];
      if (v7 != [v8 BOOLValue])
      {

LABEL_7:
        v9 = [*(a1 + 32) value];
        v10 = [v9 BOOLValue];
        v11 = [v3 activeConfiguration];
        [v11 setCenterStageEnabled:v10];

        [v3[35] objectForKeyedSubscript:@"4cc_cfen_glob_0000"];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v13 = [*(a1 + 32) value];
        [v12 setValue:v13];

        v14 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = [v3 activeConfiguration];
          v17 = [v16 centerStageEnabled];
          *&v18 = COERCE_DOUBLE("Off");
          if (v17)
          {
            *&v18 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v367 = v15;
          v368 = 2080;
          v369 = *&v18;
          _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageEnabled %s", buf, 0x16u);
        }

        v19 = [v3 activeConfiguration];
        v20 = [v19 isCenterStageForcefullyEnabled];

        if (v20)
        {
          [v3 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:0];
          v21 = [v3 companionDevice];
          [v21 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:0];
        }

        [v3 _toggleBetweenCenterStageAndManualFraming];
        goto LABEL_59;
      }

      v48 = [v3 activeConfiguration];
      if ([v48 isCenterStageForcefullyEnabled])
      {
        v49 = [*(a1 + 32) value];
        v50 = [v49 BOOLValue];

        if ((v50 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_60:
        v102 = v3[47];
        v103 = [*(a1 + 32) name];
        v104 = [v102 objectForKey:v103];

        if (v104)
        {
          v105 = v3[47];
          v106 = [*(a1 + 32) name];
          [v105 removeObjectForKey:v106];
        }

        goto LABEL_62;
      }

LABEL_38:
      goto LABEL_60;
    }

    v28 = [*(a1 + 32) name];
    if ([v28 isEqualToString:@"4cc_cfri_glob_0000"] && (objc_msgSend(*(a1 + 32), "value"), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      v31 = [*(a1 + 32) value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v33 = [*(a1 + 32) value];
        v34 = [v3 activeConfiguration];
        [v34 setCenterStageRectOfInterest:v33];

        v35 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 40);
          v37 = [v3 activeConfiguration];
          [v37 centerStageRectOfInterest];
          v38 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v367 = v36;
          v368 = 2112;
          v369 = v38;
          _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_DEFAULT, "%@ CenterStageRectOfInterest %@", buf, 0x16u);
        }

        [*(a1 + 32) value];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setCenterStageRectOfInterest:v12];
        goto LABEL_59;
      }
    }

    else
    {
    }

    v39 = [*(a1 + 32) name];
    v40 = [v39 isEqualToString:@"4cc_cffm_glob_0000"];

    v41 = *(a1 + 32);
    if (v40)
    {
      v42 = [v41 value];
      v43 = [v42 intValue];

      v44 = [v3 activeConfiguration];
      [v44 setCenterStageFramingMode:v43];

      v45 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(a1 + 40);
        v47 = [v3 activeConfiguration];
        *buf = 138412546;
        v367 = v46;
        v368 = 2048;
        v369 = COERCE_DOUBLE([v47 centerStageFramingMode]);
        _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_DEFAULT, "%@ CenterStageFramingMode %ld", buf, 0x16u);
      }

      [v3 setCenterStageFramingMode:v43];
      goto LABEL_60;
    }

    v51 = [v41 name];
    v52 = [v51 isEqualToString:@"FaceDetectionEnabled"];

    if (v52)
    {
      v53 = [v3 activeConfiguration];
      v54 = [v53 faceDetectionEnabled];
      v55 = [*(a1 + 32) value];
      v56 = [v55 BOOLValue];

      if (v54 == v56)
      {
        goto LABEL_60;
      }

      v57 = [*(a1 + 32) value];
      v58 = [v57 BOOLValue];
      v59 = [v3 activeConfiguration];
      [v59 setFaceDetectionEnabled:v58];

      v60 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v61 = *(a1 + 40);
      v62 = [v3 activeConfiguration];
      v63 = [v62 faceDetectionEnabled];
      *&v64 = COERCE_DOUBLE("Off");
      if (v63)
      {
        *&v64 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v367 = v61;
      v368 = 2080;
      v369 = *&v64;
      v65 = "%{public}@ FaceDetectionEnabled %s";
      goto LABEL_57;
    }

    v66 = [*(a1 + 32) name];
    v67 = [v66 isEqualToString:@"HumanBodyDetectionEnabled"];

    if (v67)
    {
      v68 = [v3 activeConfiguration];
      v69 = [v68 humanBodyDetectionEnabled];
      v70 = [*(a1 + 32) value];
      v71 = [v70 BOOLValue];

      if (v69 == v71)
      {
        goto LABEL_60;
      }

      v72 = [*(a1 + 32) value];
      v73 = [v72 BOOLValue];
      v74 = [v3 activeConfiguration];
      [v74 setHumanBodyDetectionEnabled:v73];

      v60 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v75 = *(a1 + 40);
      v62 = [v3 activeConfiguration];
      v76 = [v62 humanBodyDetectionEnabled];
      *&v77 = COERCE_DOUBLE("Off");
      if (v76)
      {
        *&v77 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v367 = v75;
      v368 = 2080;
      v369 = *&v77;
      v65 = "%{public}@ HumanBodyDetectionEnabled %s";
      goto LABEL_57;
    }

    v78 = [*(a1 + 32) name];
    v79 = [v78 isEqualToString:@"HumanFullBodyDetectionEnabled"];

    if (v79)
    {
      v80 = [v3 activeConfiguration];
      v81 = [v80 humanFullBodyDetectionEnabled];
      v82 = [*(a1 + 32) value];
      v83 = [v82 BOOLValue];

      if (v81 == v83)
      {
        goto LABEL_60;
      }

      v84 = [*(a1 + 32) value];
      v85 = [v84 BOOLValue];
      v86 = [v3 activeConfiguration];
      [v86 setHumanFullBodyDetectionEnabled:v85];

      v60 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v87 = *(a1 + 40);
      v62 = [v3 activeConfiguration];
      v88 = [v62 humanFullBodyDetectionEnabled];
      *&v89 = COERCE_DOUBLE("Off");
      if (v88)
      {
        *&v89 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v367 = v87;
      v368 = 2080;
      v369 = *&v89;
      v65 = "%{public}@ HumanFullBodyDetectionEnabled %s";
      goto LABEL_57;
    }

    v90 = [*(a1 + 32) name];
    v91 = [v90 isEqualToString:@"AsyncStillCaptureEnabled"];

    if (v91)
    {
      v92 = [v3 activeConfiguration];
      v93 = [v92 asyncStillCaptureEnabled];
      v94 = [*(a1 + 32) value];
      v95 = [v94 BOOLValue];

      if (v93 == v95)
      {
        goto LABEL_60;
      }

      v96 = [*(a1 + 32) value];
      v97 = [v96 BOOLValue];
      v98 = [v3 activeConfiguration];
      [v98 setAsyncStillCaptureEnabled:v97];

      v60 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v99 = *(a1 + 40);
      v62 = [v3 activeConfiguration];
      v100 = [v62 asyncStillCaptureEnabled];
      *&v101 = COERCE_DOUBLE("Off");
      if (v100)
      {
        *&v101 = COERCE_DOUBLE("On");
      }

      *buf = 138543618;
      v367 = v99;
      v368 = 2080;
      v369 = *&v101;
      v65 = "%{public}@ AsyncStillCaptureEnabled %s";
LABEL_57:
      _os_log_impl(&dword_242545000, v60, OS_LOG_TYPE_DEFAULT, v65, buf, 0x16u);

LABEL_58:
      [v3 compositeDelegate];
      *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      -[NSObject postEvent:entity:data:](v12, "postEvent:entity:data:", @"kCMContinuityCaptureEventForceRestartStream", [v3 entity], 0);
LABEL_59:

      goto LABEL_60;
    }

    v107 = [*(a1 + 32) name];
    v108 = [v107 isEqualToString:@"SuppressVideoEffects"];

    if (v108)
    {
      v109 = [v3 activeConfiguration];
      v110 = [v109 suppressVideoEffects];
      v111 = [*(a1 + 32) value];
      v112 = [v111 BOOLValue];

      if (v110 != v112)
      {
        v113 = [*(a1 + 32) value];
        v114 = [v113 BOOLValue];
        v115 = [v3 activeConfiguration];
        [v115 setSuppressVideoEffects:v114];

        v116 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v117 = *(a1 + 40);
          v118 = [v3 activeConfiguration];
          v119 = [v118 suppressVideoEffects];
          *&v120 = COERCE_DOUBLE("Off");
          if (v119)
          {
            *&v120 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v367 = v117;
          v368 = 2080;
          v369 = *&v120;
          _os_log_impl(&dword_242545000, v116, OS_LOG_TYPE_DEFAULT, "%{public}@ SuppressVideoEffects %s", buf, 0x16u);
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setSuppressVideoEffects:{-[NSObject suppressVideoEffects](v12, "suppressVideoEffects")}];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v121 = [*(a1 + 32) name];
    v122 = [v121 isEqualToString:@"PortraitEffectEnabled"];

    if (v122)
    {
      v123 = [v3 activeConfiguration];
      v124 = [v123 portraitEffectEnabled];
      v125 = [*(a1 + 32) value];
      v126 = [v125 BOOLValue];

      if (v124 != v126)
      {
        v127 = [*(a1 + 32) value];
        v128 = [v127 BOOLValue];
        v129 = [v3 activeConfiguration];
        [v129 setPortraitEffectEnabled:v128];

        v130 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          v131 = *(a1 + 40);
          v132 = [v3 activeConfiguration];
          v133 = [v132 portraitEffectEnabled];
          *&v134 = COERCE_DOUBLE("Off");
          if (v133)
          {
            *&v134 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v367 = v131;
          v368 = 2080;
          v369 = *&v134;
          _os_log_impl(&dword_242545000, v130, OS_LOG_TYPE_DEFAULT, "%{public}@ PortraitEffectEnabled %s", buf, 0x16u);
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setPortraitEffect:{-[NSObject portraitEffectEnabled](v12, "portraitEffectEnabled")}];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v135 = [*(a1 + 32) name];
    v136 = [v135 isEqualToString:@"VideoZoomFactor"];

    if (v136)
    {
      v137 = [v3 activeConfiguration];
      [v137 videoZoomFactor];
      v139 = v138;
      v140 = [*(a1 + 32) value];
      [v140 doubleValue];
      v142 = v141;

      if (v139 != v142)
      {
        v143 = [*(a1 + 32) value];
        [v143 doubleValue];
        v145 = v144;
        v146 = [v3 activeConfiguration];
        [v146 setVideoZoomFactor:v145];

        v147 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
        {
          v148 = *(a1 + 40);
          v149 = [v3 activeConfiguration];
          [v149 videoZoomFactor];
          *buf = 138543618;
          v367 = v148;
          v368 = 2048;
          v369 = v150;
          _os_log_impl(&dword_242545000, v147, OS_LOG_TYPE_DEFAULT, "%{public}@ VideoZoomFactor %.2f", buf, 0x16u);
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v12 videoZoomFactor];
        [v3 setVideoZoomFactor:?];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v151 = [*(a1 + 32) name];
    v152 = [v151 isEqualToString:@"StudioLightingEnabled"];

    if (v152)
    {
      v153 = [v3 activeConfiguration];
      v154 = [v153 studioLightingEnabled];
      v155 = [*(a1 + 32) value];
      v156 = [v155 BOOLValue];

      if (v154 != v156)
      {
        v157 = [*(a1 + 32) value];
        v158 = [v157 BOOLValue];
        v159 = [v3 activeConfiguration];
        [v159 setStudioLightingEnabled:v158];

        v160 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
        {
          v161 = *(a1 + 40);
          v162 = [v3 activeConfiguration];
          v163 = [v162 studioLightingEnabled];
          *&v164 = COERCE_DOUBLE("Off");
          if (v163)
          {
            *&v164 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v367 = v161;
          v368 = 2080;
          v369 = *&v164;
          _os_log_impl(&dword_242545000, v160, OS_LOG_TYPE_DEFAULT, "%{public}@ StudioLightingEnabled %s", buf, 0x16u);
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setStudioLighting:{-[NSObject studioLightingEnabled](v12, "studioLightingEnabled")}];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v165 = [*(a1 + 32) name];
    v166 = [v165 isEqualToString:@"ReactionEffectsEnabled"];

    if (v166)
    {
      v167 = [v3 activeConfiguration];
      v168 = [v167 reactionEffectsEnabled];
      v169 = [*(a1 + 32) value];
      v170 = [v169 BOOLValue];

      if (v168 != v170)
      {
        v171 = [*(a1 + 32) value];
        v172 = [v171 BOOLValue];
        v173 = [v3 activeConfiguration];
        [v173 setReactionEffectsEnabled:v172];

        v174 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          v175 = *(a1 + 40);
          v176 = [v3 activeConfiguration];
          v177 = [v176 reactionEffectsEnabled];
          *&v178 = COERCE_DOUBLE("Off");
          if (v177)
          {
            *&v178 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v367 = v175;
          v368 = 2080;
          v369 = *&v178;
          _os_log_impl(&dword_242545000, v174, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffectsEnabled %s", buf, 0x16u);
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setReactionEffects:{-[NSObject reactionEffectsEnabled](v12, "reactionEffectsEnabled")}];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v179 = [*(a1 + 32) name];
    v180 = [v179 isEqualToString:@"BackgroundReplacementEnabled"];

    if (v180)
    {
      v181 = [v3 activeConfiguration];
      v182 = [v181 backgroundReplacementEnabled];
      v183 = [*(a1 + 32) value];
      v184 = [v183 BOOLValue];

      if (v182 != v184)
      {
        v185 = [*(a1 + 32) value];
        v186 = [v185 BOOLValue];
        v187 = [v3 activeConfiguration];
        [v187 setBackgroundReplacementEnabled:v186];

        v188 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
        {
          v189 = *(a1 + 40);
          v190 = [v3 activeConfiguration];
          v191 = [v190 backgroundReplacementEnabled];
          *&v192 = COERCE_DOUBLE("Off");
          if (v191)
          {
            *&v192 = COERCE_DOUBLE("On");
          }

          *buf = 138543618;
          v367 = v189;
          v368 = 2080;
          v369 = *&v192;
          _os_log_impl(&dword_242545000, v188, OS_LOG_TYPE_DEFAULT, "%{public}@ BackgroundReplacementEnabled %s", buf, 0x16u);
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setBackgroundReplacement:{-[NSObject backgroundReplacementEnabled](v12, "backgroundReplacementEnabled")}];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v193 = [*(a1 + 32) name];
    v194 = [v193 isEqualToString:@"AsyncStillCaptureConfigurations"];

    v195 = *(a1 + 32);
    if (v194)
    {
      v196 = [v195 value];
      v197 = [v3 activeConfiguration];
      [v197 setAsyncStillCaptureConfigs:v196];

      v198 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
      {
        v199 = *(a1 + 40);
        v200 = [v3 activeConfiguration];
        [v200 asyncStillCaptureConfigs];
        v201 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543618;
        v367 = v199;
        v368 = 2112;
        v369 = v201;
        _os_log_impl(&dword_242545000, v198, OS_LOG_TYPE_DEFAULT, "%{public}@ AsyncStillCaptureConfigs %@", buf, 0x16u);
      }

      [v3 _updatePhotoOutputConfigs];
      goto LABEL_60;
    }

    v202 = [v195 name];
    v203 = [v202 isEqualToString:@"OverheadCameraMode"];

    if (v203)
    {
      v204 = [v3 activeConfiguration];
      v205 = [v204 deskViewCameraMode];
      v206 = [*(a1 + 32) value];
      v207 = [v206 unsignedIntValue];

      if (v205 != v207)
      {
        v208 = [*(a1 + 32) value];
        v209 = [v208 unsignedIntValue];
        v210 = [v3 activeConfiguration];
        [v210 setDeskViewCameraMode:v209];

        v211 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
        {
          v212 = *(a1 + 40);
          v213 = [v3 activeConfiguration];
          *buf = 138543618;
          v367 = v212;
          v368 = 1024;
          LODWORD(v369) = [v213 deskViewCameraMode];
          _os_log_impl(&dword_242545000, v211, OS_LOG_TYPE_DEFAULT, "%{public}@ DeskViewCameraMode %u", buf, 0x12u);
        }

        if ([v3 entity] == 2)
        {
          v214 = [v3 companionDevice];
          v215 = [v214 isStreamingOnSuperWide];

          if (v215)
          {
            v216 = [*(a1 + 32) value];
            v217 = [v216 unsignedIntValue];
            v218 = [v3 companionDevice];
            [v218 setDeskViewCameraMode:v217];
          }
        }

        [v3 activeConfiguration];
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v3 setDeskViewCameraMode:{-[NSObject deskViewCameraMode](v12, "deskViewCameraMode")}];
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v219 = [*(a1 + 32) name];
    v220 = [v219 isEqualToString:@"StartPanningAtPoint"];

    if (v220)
    {
      point.x = NAN;
      point.y = NAN;
      v221 = [*(a1 + 32) value];
      CGPointMakeWithDictionaryRepresentation(v221, &point);

      v222 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
      {
        v223 = *(a1 + 40);
        *buf = 138544130;
        v367 = v223;
        v368 = 2080;
        v369 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
        v370 = 2048;
        x = point.x;
        v372 = 2048;
        y = point.y;
        _os_log_impl(&dword_242545000, v222, OS_LOG_TYPE_DEFAULT, "%{public}@ (%s) StartPanningAtPoint {%.3f, %.3f}", buf, 0x2Au);
      }

      v224 = [v3 videoDevice];
      v365 = 0;
      [v224 lockForConfiguration:&v365];
      *&v12 = COERCE_DOUBLE(v365);

      if (*&v12 != 0.0)
      {
        v225 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
        {
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_3(a1, v3);
        }

        goto LABEL_142;
      }

      v247 = [v3 videoDevice];
      [v247 startPanningAtPoint:{point.x, point.y}];
      goto LABEL_141;
    }

    v226 = [*(a1 + 32) name];
    v227 = [v226 isEqualToString:@"PanWithTranslation"];

    if (v227)
    {
      point.x = NAN;
      point.y = NAN;
      v228 = [*(a1 + 32) value];
      CGPointMakeWithDictionaryRepresentation(v228, &point);

      v229 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
      {
        v230 = *(a1 + 40);
        *buf = 138544130;
        v367 = v230;
        v368 = 2080;
        v369 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
        v370 = 2048;
        x = point.x;
        v372 = 2048;
        y = point.y;
        _os_log_impl(&dword_242545000, v229, OS_LOG_TYPE_DEFAULT, "%{public}@ (%s) PanWithTransaltion {%.3f, %.3f}", buf, 0x2Au);
      }

      v231 = [v3 videoDevice];
      v364 = 0;
      [v231 lockForConfiguration:&v364];
      *&v12 = COERCE_DOUBLE(v364);

      if (*&v12 != 0.0)
      {
        v225 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
        {
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_3(a1, v3);
        }

        goto LABEL_142;
      }

      v247 = [v3 videoDevice];
      [v247 panWithTranslation:{point.x, point.y}];
LABEL_141:

      v225 = [v3 videoDevice];
      [v225 unlockForConfiguration];
      goto LABEL_142;
    }

    v232 = [*(a1 + 32) name];
    v233 = [v232 isEqualToString:@"CMIOExtensionPropertyStreamFrameDuration"];

    if (v233)
    {
      v234 = [v3 activeConfiguration];
      v235 = [v234 maxFrameRate];
      v236 = [*(a1 + 32) value];
      v237 = [v236 unsignedIntValue];

      if (v235 == v237)
      {
        goto LABEL_60;
      }

      v238 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
      {
        v239 = *(a1 + 40);
        v240 = [*(a1 + 32) value];
        *buf = 138543618;
        v367 = v239;
        v368 = 1024;
        LODWORD(v369) = [v240 unsignedIntValue];
        _os_log_impl(&dword_242545000, v238, OS_LOG_TYPE_DEFAULT, "%{public}@ MaxFrameRate %u", buf, 0x12u);
      }

      v241 = [*(a1 + 32) value];
      v242 = [v241 unsignedIntValue];
      v243 = [v3 activeConfiguration];
      [v243 setMaxFrameRate:v242];

      v244 = [v3 compositeDelegate];
      v6 = [v244 frameRateManager];

      [v6 reportStreamStatus:objc_msgSend(v3 forDevice:{"streaming"), v3}];
      v245 = [v6 allowedFrameRateRangeForDevice:v3];
      v246 = [v245 maxFrameRate];
      [v3 setMaxFrameRate:{objc_msgSend(v246, "unsignedIntValue")}];
LABEL_139:

      goto LABEL_38;
    }

    v248 = [*(a1 + 32) name];
    v249 = [v248 isEqualToString:@"CMIOExtensionPropertyStreamMaxFrameDuration"];

    if (v249)
    {
      v250 = [v3 activeConfiguration];
      v251 = [v250 minFrameRate];
      v252 = [*(a1 + 32) value];
      v253 = [v252 unsignedIntValue];

      if (v251 == v253)
      {
        goto LABEL_60;
      }

      v254 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
      {
        v255 = *(a1 + 40);
        v256 = [*(a1 + 32) value];
        *buf = 138543618;
        v367 = v255;
        v368 = 1024;
        LODWORD(v369) = [v256 unsignedIntValue];
        _os_log_impl(&dword_242545000, v254, OS_LOG_TYPE_DEFAULT, "%{public}@ MinFrameRate %u", buf, 0x12u);
      }

      v257 = [*(a1 + 32) value];
      v258 = [v257 unsignedIntValue];
      v259 = [v3 activeConfiguration];
      [v259 setMinFrameRate:v258];

      v260 = [v3 compositeDelegate];
      v6 = [v260 frameRateManager];

      [v6 reportStreamStatus:objc_msgSend(v3 forDevice:{"streaming"), v3}];
      v245 = [v6 allowedFrameRateRangeForDevice:v3];
      v246 = [v245 minFrameRate];
      [v3 setMinFrameRate:{objc_msgSend(v246, "unsignedIntValue")}];
      goto LABEL_139;
    }

    v261 = [*(a1 + 32) name];
    v262 = [v261 isEqualToString:@"PerformOneShotFraming"];

    if (v262)
    {
      v263 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
      {
        v264 = *(a1 + 40);
        *buf = 138543618;
        v367 = v264;
        v368 = 2080;
        v369 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
      }

      v265 = [v3 videoDevice];
      v363 = 0;
      [v265 lockForConfiguration:&v363];
      v266 = v363;

      if (v266)
      {
        v267 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
        {
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_2();
        }

LABEL_155:

        goto LABEL_62;
      }

      v290 = [v3 videoDevice];
      [v290 performOneShotFraming];
    }

    else
    {
      v268 = [*(a1 + 32) name];
      v269 = [v268 isEqualToString:@"ResetFraming"];

      if (!v269)
      {
        v273 = [*(a1 + 32) name];
        v274 = [v273 isEqualToString:@"PortraitEffectAperture"];

        if (v274)
        {
          v275 = [v3 activeConfiguration];
          [v275 portraitEffectAperture];
          v277 = v276;
          v278 = [*(a1 + 32) value];
          [v278 floatValue];
          v280 = v279;

          if (v277 != v280)
          {
            v281 = [*(a1 + 32) value];
            [v281 floatValue];
            v283 = v282;
            v284 = [v3 activeConfiguration];
            LODWORD(v285) = v283;
            [v284 setPortraitEffectAperture:v285];

            v286 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
            {
              v287 = *(a1 + 40);
              v288 = [v3 activeConfiguration];
              [v288 portraitEffectAperture];
              *buf = 138543618;
              v367 = v287;
              v368 = 2048;
              v369 = v289;
              _os_log_impl(&dword_242545000, v286, OS_LOG_TYPE_DEFAULT, "%{public}@ PortraitEffectAperture %f", buf, 0x16u);
            }

            [*(a1 + 32) value];
            *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v12 floatValue];
            [v3 setPortraitEffectAperture:?];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v291 = [*(a1 + 32) name];
        v292 = [v291 isEqualToString:@"StudioLightingIntensity"];

        if (v292)
        {
          v293 = [v3 activeConfiguration];
          [v293 studioLightingIntensity];
          v295 = v294;
          v296 = [*(a1 + 32) value];
          [v296 floatValue];
          v298 = v297;

          if (v295 != v298)
          {
            v299 = [*(a1 + 32) value];
            [v299 floatValue];
            v301 = v300;
            v302 = [v3 activeConfiguration];
            LODWORD(v303) = v301;
            [v302 setStudioLightingIntensity:v303];

            v304 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
            {
              v305 = *(a1 + 40);
              v306 = [v3 activeConfiguration];
              [v306 studioLightingIntensity];
              *buf = 138543618;
              v367 = v305;
              v368 = 2048;
              v369 = v307;
              _os_log_impl(&dword_242545000, v304, OS_LOG_TYPE_DEFAULT, "%{public}@ StudioLightingIntensity %f", buf, 0x16u);
            }

            [*(a1 + 32) value];
            *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v12 floatValue];
            [v3 setStudioLightingIntensity:?];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v308 = [*(a1 + 32) name];
        v309 = [v308 isEqualToString:@"GesturesEnabled"];

        if (v309)
        {
          v310 = [v3 activeConfiguration];
          v311 = [v310 reactionEffectGesturesEnabled];
          v312 = [*(a1 + 32) value];
          v313 = [v312 BOOLValue];

          if (v311 != v313)
          {
            v314 = [*(a1 + 32) value];
            v315 = [v314 BOOLValue];
            v316 = [v3 activeConfiguration];
            [v316 setReactionEffectGesturesEnabled:v315];

            v317 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
            {
              v318 = *(a1 + 40);
              v319 = [v3 activeConfiguration];
              *buf = 138543618;
              v367 = v318;
              v368 = 1024;
              LODWORD(v369) = [v319 reactionEffectGesturesEnabled];
              _os_log_impl(&dword_242545000, v317, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffectGesturesEnabled %d", buf, 0x12u);
            }

            [*(a1 + 32) value];
            *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *&v320 = [v12 BOOLValue];
            [v3 setReactionEffectGesturesEnabled:v320];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v321 = [*(a1 + 32) name];
        v322 = [v321 isEqualToString:@"SuppressedGesturesEnabled"];

        if (v322)
        {
          v323 = [v3 activeConfiguration];
          v324 = [v323 reactionEffectSuppressedGesturesEnabled];
          v325 = [*(a1 + 32) value];
          v326 = [v325 BOOLValue];

          if (v324 != v326)
          {
            v327 = [*(a1 + 32) value];
            v328 = [v327 BOOLValue];
            v329 = [v3 activeConfiguration];
            [v329 setReactionEffectSuppressedGesturesEnabled:v328];

            v330 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
            {
              v331 = *(a1 + 40);
              v332 = [v3 activeConfiguration];
              *buf = 138543618;
              v367 = v331;
              v368 = 1024;
              LODWORD(v369) = [v332 reactionEffectSuppressedGesturesEnabled];
              _os_log_impl(&dword_242545000, v330, OS_LOG_TYPE_DEFAULT, "%{public}@ ReactionEffectSuppressedGesturesEnabled %d", buf, 0x12u);
            }

            [*(a1 + 32) value];
            *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *&v333 = [v12 BOOLValue];
            [v3 setReactionEffectSuppressedGesturesEnabled:v333];
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v334 = [*(a1 + 32) name];
        v335 = [v334 isEqualToString:@"BackgroundReplacementPixelBuffer"];

        v336 = *(a1 + 32);
        if (v335)
        {
          [v336 value];
          v337 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v338 = [v3 activeConfiguration];
          v339 = [v338 backgroundReplacementPixelBuffer];

          if (v339 != *&v337)
          {
            v340 = [v3 activeConfiguration];
            [v340 setBackgroundReplacementPixelBuffer:*&v337];

            v341 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v341, OS_LOG_TYPE_DEFAULT))
            {
              v342 = *(a1 + 40);
              *buf = 138543618;
              v367 = v342;
              v368 = 2112;
              v369 = v337;
              _os_log_impl(&dword_242545000, v341, OS_LOG_TYPE_DEFAULT, "%{public}@ BackgroundReplacementPixelBuffer %@", buf, 0x16u);
            }

            [v3 setBackgroundReplacementPixelBuffer:*&v337];
          }

          goto LABEL_60;
        }

        v343 = [v336 name];
        v344 = [v343 isEqualToString:@"CenterStageFieldOfViewRestrictedToWide"];

        if (v344)
        {
          v345 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
          {
            v346 = *(a1 + 40);
            v347 = [*(a1 + 32) value];
            v348 = [v347 BOOLValue];
            *&v349 = COERCE_DOUBLE(@"NO");
            if (v348)
            {
              *&v349 = COERCE_DOUBLE(@"YES");
            }

            *buf = 138543874;
            v367 = v346;
            v368 = 2080;
            v369 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
            v370 = 2112;
            x = *&v349;
          }

          v350 = [*(a1 + 32) value];
          v351 = [v350 BOOLValue];
          v352 = [v3 activeConfiguration];
          [v352 setCenterStageFieldOfViewRestrictedToWide:v351];

          v353 = [v3 activeConfiguration];
          LODWORD(v351) = [v353 isCenterStageForcefullyEnabled];

          if (v351)
          {
            [v3 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:0];
            v354 = [v3 companionDevice];
            [v354 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:0];
          }

          v60 = [v3 activeConfiguration];
          [v60 setCenterStageEnabled:1];
          goto LABEL_58;
        }

        v355 = [*(a1 + 32) name];
        v356 = [v355 isEqualToString:@"ManualFramingDeviceType"];

        if (!v356)
        {
          CMContinuityCaptureLog(2);
          *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v361 = *(a1 + 32);
            v360 = *(a1 + 40);
            *buf = 138543618;
            v367 = v360;
            v368 = 2114;
            v369 = v361;
            _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ unhandled control %{public}@", buf, 0x16u);
          }

          goto LABEL_59;
        }

        v357 = [*(a1 + 32) value];
        +[CMContinuityCaptureConfiguration stringForManualFramingDeviceType:](CMContinuityCaptureConfiguration, "stringForManualFramingDeviceType:", [v357 integerValue]);
        *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

        v358 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
        {
          v359 = objc_loadWeakRetained((a1 + 48));
          *buf = 138543874;
          v367 = v359;
          v368 = 2080;
          v369 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
          v370 = 2112;
          x = *&v12;
        }

        v225 = [*(a1 + 32) value];
        [v3 _updateManualFramingDeviceType:{-[NSObject integerValue](v225, "integerValue")}];
LABEL_142:

        goto LABEL_59;
      }

      v270 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
      {
        v271 = *(a1 + 40);
        *buf = 138543618;
        v367 = v271;
        v368 = 2080;
        v369 = COERCE_DOUBLE("[CMContinuityCaptureRemoteVideoDevice setValueForControl:completion:]_block_invoke");
      }

      v272 = [v3 videoDevice];
      v362 = 0;
      [v272 lockForConfiguration:&v362];
      v266 = v362;

      if (v266)
      {
        v267 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
        {
          __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_1();
        }

        goto LABEL_155;
      }

      v290 = [v3 videoDevice];
      [v290 resetFraming];
    }

    [v3 videoDevice];
    *&v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [v12 unlockForConfiguration];
    goto LABEL_59;
  }

  v22 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_loadWeakRetained((a1 + 48));
    v24 = *(a1 + 32);
    *buf = 138543618;
    v367 = v23;
    v368 = 2112;
    v369 = v24;
    _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ dropping control %@ update since capture stack not active", buf, 0x16u);
  }

  v25 = *(a1 + 32);
  v26 = v3[47];
  v27 = [v25 name];
  [v26 setObject:v25 forKeyedSubscript:v27];

LABEL_62:
}

- (void)_updatePhotoOutputConfigs
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_43(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
  }
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 server];
    v14 = self;
    objc_sync_enter(v14);
    photoRequests = v14->_photoRequests;
    v16 = MEMORY[0x277CCABB0];
    v17 = [v9 resolvedSettings];
    v18 = [v16 numberWithLongLong:{objc_msgSend(v17, "uniqueID")}];
    v19 = [(NSMutableDictionary *)photoRequests objectForKeyedSubscript:v18];
    v20 = [v19 copy];

    objc_sync_exit(v14);
    if (v20)
    {
      v38 = v8;
      [v20 setCaptureComplete:v10 == 0];
      [v20 setError:v10];
      v21 = [v9 fileDataRepresentation];
      [v20 setImageFileData:v21];

      v22 = [v9 resolvedSettings];
      v23 = [v22 photoDimensions];

      v24 = [v20 compressedFormat];
      v25 = [v24 isEqualToString:*MEMORY[0x277CE6300]];

      if (v25)
      {
        v26 = 1752589105;
      }

      else
      {
        v26 = 1785750887;
      }

      [v20 setImageCodecType:v26];
      [v20 setImageWidth:v23];
      [v20 setImageHeight:HIDWORD(v23)];
      v27 = v13;
      v28 = [v13 timeSyncClock];

      if (v28)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        v30 = [(CMContinuityCaptureRemoteVideoDevice *)v14 captureSession];
        v31 = [v30 synchronizationClock];

        memset(&buf, 170, sizeof(buf));
        if (v9)
        {
          [v9 timestamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        time = buf;
        memset(&v42, 170, sizeof(v42));
        CMSyncConvertTime(&v42, &time, v31, HostTimeClock);
        v27 = v13;
        v32 = [v13 timeSyncClock];
        time = v42;
        v33 = [v32 domainTimeForMachAbsoluteTime:CMClockConvertHostTimeToSystemUnits(&time)];

        if (v33 != *MEMORY[0x277D714E8])
        {
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33];
          [v20 setNetworkTimestamp:v34];
        }
      }

      v35 = CMContinuityCaptureLog(2);
      v8 = v38;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(CMContinuityCaptureDeviceBase *)v14 entity];
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = v14;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v20;
        HIWORD(buf.epoch) = 2048;
        v40 = v36;
        _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Captured photo for %@, entity:%ld", &buf, 0x20u);
      }

      v37 = [(CMContinuityCaptureDeviceBase *)v14 transportDevice];
      [v37 didCaptureStillImage:v20 entity:[(CMContinuityCaptureDeviceBase *)v14 entity]];
    }

    else
    {
      v37 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteVideoDevice captureOutput:didFinishProcessingPhoto:error:];
      }

      v27 = v13;
    }
  }
}

- (void)captureOutput:(id)a3 didFinishCaptureForResolvedSettings:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 uniqueID];
  v12 = self;
  objc_sync_enter(v12);
  photoRequests = v12->_photoRequests;
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
  v15 = [(NSMutableDictionary *)photoRequests objectForKeyedSubscript:v14];
  v16 = [v15 copy];

  v17 = v12->_photoRequests;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
  [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:v18];

  objc_sync_exit(v12);
  v19 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    v21 = v12;
    v22 = 2048;
    v23 = v11;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ DidFinishCapture for captureID:%lld. Removed %@ from photoRequests", &v20, 0x20u);
  }
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = [(CMContinuityCaptureDeviceBase *)self queue:a3];
  dispatch_assert_queue_V2(v7);

  v8 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 server];
    v11 = *MEMORY[0x277CF3FC8];
    v12 = CMGetAttachment(a4, *MEMORY[0x277CF3FC8], 0);
    if (!v12)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      CMSetAttachment(a4, v11, v12, 1u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "currentSessionID")}];
    [v12 setObject:v13 forKeyedSubscript:@"ContinuityCaptureRemoteSessionID"];

    v14 = [v10 timeSyncClock];

    if (v14)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      v16 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
      v17 = [v16 synchronizationClock];

      memset(&v42, 170, sizeof(v42));
      CMSampleBufferGetPresentationTimeStamp(&v42, a4);
      memset(&v41, 170, sizeof(v41));
      v39 = v42;
      CMSyncConvertTime(&v41, &v39, v17, HostTimeClock);
      v18 = [v10 timeSyncClock];
      v39 = v41;
      v19 = [v18 domainTimeForMachAbsoluteTime:CMClockConvertHostTimeToSystemUnits(&v39)];

      v20 = [v10 timeSyncClock];
      v21 = [v20 grandMasterIdentifier];

      if (v19 != *MEMORY[0x277D714E8])
      {
        if (CMContinityCaptureDebugLogEnabled())
        {
          v22 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v39.value) = 138543874;
            *(&v39.value + 4) = self;
            LOWORD(v39.flags) = 2048;
            *(&v39.flags + 2) = v19;
            HIWORD(v39.epoch) = 2048;
            v40 = v21;
            _os_log_debug_impl(&dword_242545000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ networkTime %llx identity %llx", &v39, 0x20u);
          }
        }

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
        [v12 setObject:v23 forKeyedSubscript:@"NetworkTime"];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
        [v12 setObject:v24 forKeyedSubscript:@"NetworkTimeClockIdentity"];
      }
    }

    if (self->_metadataOutput)
    {
      v25 = CMGetAttachment(a4, *MEMORY[0x277CF3F48], 0);
      if (v25)
      {
        v26 = [MEMORY[0x277CBEB38] dictionary];
        v27 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
        v28 = [v27 containsObject:*MEMORY[0x277CE5A50]];

        if (v28)
        {
          v29 = *MEMORY[0x277CF4408];
          v30 = [v25 objectForKeyedSubscript:*MEMORY[0x277CF4408]];
          [v26 setObject:v30 forKeyedSubscript:v29];
        }

        v31 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
        v32 = [v31 containsObject:*MEMORY[0x277CE5A58]];

        if (v32)
        {
          v33 = *MEMORY[0x277CF4400];
          v34 = [v25 objectForKeyedSubscript:*MEMORY[0x277CF4400]];
          [v26 setObject:v34 forKeyedSubscript:v33];
        }

        v35 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
        v36 = [v35 containsObject:*MEMORY[0x277CE5A60]];

        if (v36)
        {
          v37 = *MEMORY[0x277CF4410];
          v38 = [v25 objectForKeyedSubscript:*MEMORY[0x277CF4410]];
          [v26 setObject:v38 forKeyedSubscript:v37];
        }

        [v12 setObject:v26 forKeyedSubscript:*MEMORY[0x277CF4BD0]];
        [v12 setObject:&unk_2854EC878 forKeyedSubscript:*MEMORY[0x277CF4BD8]];
      }

      CMGetAttachment(a4, *MEMORY[0x277CF3F60], 0);
    }

    if (self->_captureStackActive && self->_propagateCaptureSessionRestartedAttachment)
    {
      self->_propagateCaptureSessionRestartedAttachment = 0;
      [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CaptureSessionRestarted"];
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self dispatchFrame:a4 entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_109];
  }
}

- (void)captureOutput:(id)a3 didDropSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  ++self->_videoBufferDropCounter;
  v6 = [(CMContinuityCaptureDeviceBase *)self queue:a3];
  dispatch_assert_queue_V2(v6);

  if ([(CMContinuityCaptureRemoteVideoDevice *)self _shouldPrintDroppedSampleBufferLog:self->_videoBufferDropCounter])
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteVideoDevice captureOutput:&self->_videoBufferDropCounter didDropSampleBuffer:? fromConnection:?];
    }
  }
}

- (void)_registerDockKitNotification
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a1 = v1;
}

void __68__CMContinuityCaptureRemoteVideoDevice__registerDockKitNotification__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"disabled";
      if (a2)
      {
        v5 = @"enabled";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "[dock] DockKit device is %@. Restarting the stream.", &v7, 0xCu);
    }

    v6 = [WeakRetained compositeDelegate];
    [v6 postEvent:@"kCMContinuityCaptureEventForceRestartStream" entity:objc_msgSend(WeakRetained data:{"entity"), 0}];
  }
}

- (CMContinuityCaptureRemoteVideoDevice)companionDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_companionDevice);

  return WeakRetained;
}

- (CMContinuityCaptureRemoteVideoDevice)initWithCapabilities:(id)a3 compositeDelegate:(id)a4 captureSession:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [OUTLINED_FUNCTION_25() server];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v14 = [v12 localDevice];
  v15 = [v5 queue];
  v30.receiver = self;
  v30.super_class = CMContinuityCaptureRemoteVideoDevice;
  self = [(CMContinuityCaptureDeviceBase *)&v30 initWithCapabilities:v9 compositeDelegate:v10 transportDevice:v14 queue:v15];

  if (self)
  {
    objc_storeStrong(&self->_captureSession, a5);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cmControlByName = self->_cmControlByName;
    self->_cmControlByName = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cmControlByNameWithPendingUpdates = self->_cmControlByNameWithPendingUpdates;
    self->_cmControlByNameWithPendingUpdates = v18;

    self->_isUltraWideCameraSupported = [(CMContinuityCaptureRemoteVideoDevice *)self _isUltraWideCameraSupported];
    self->_gazeSelectionEnabled = [v13 clientDeviceModel] != 2;
    v20 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      gazeSelectionEnabled = self->_gazeSelectionEnabled;
      v24 = 138412802;
      v25 = self;
      v26 = 1024;
      v27 = gazeSelectionEnabled;
      v28 = 2048;
      v29 = [v13 clientDeviceModel];
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ gazeSelectionEnabled %d, clientDeviceModel %ld", &v24, 0x1Cu);
    }

    if ([(CMContinuityCaptureDeviceBase *)self entity]== 1)
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self _registerDockKitNotification];
    }

    self->_manualFramingFeatureFlagEnabled = _os_feature_enabled_impl();
    [(CMContinuityCaptureRemoteVideoDevice *)self setupControls];
    self = self;
    v22 = self;
  }

  else
  {
LABEL_8:
    v22 = 0;
  }

  return v22;
}

- (BOOL)isStreamingOnSuperWide
{
  if (![(CMContinuityCaptureDeviceBase *)self streaming])
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  v3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if ([v3 centerStageEnabled])
  {
  }

  else
  {
    v4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v5 = [v4 isCenterStageForcefullyEnabled];

    if (!v5)
    {
      v6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      LOBYTE(v7) = [v6 manualFramingDeviceType] == 2;
      goto LABEL_7;
    }
  }

  v6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v7 = [v6 centerStageFieldOfViewRestrictedToWide] ^ 1;
LABEL_7:

  return v7;
}

- (NSDictionary)centerStageRectOfInterest
{
  v3 = &unk_2854ECD88;
  videoDevice = self->_videoDevice;
  if (videoDevice)
  {
    [(AVCaptureDevice *)videoDevice centerStageRectOfInterest];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v8);

    v3 = DictionaryRepresentation;
  }

  return v3;
}

- (BOOL)configureConnections
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v5 = [v4 format];
  v6 = [v5 maxFrameRate];
  v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v8 = [v7 format];
  v9 = -[CMContinuityCaptureRemoteVideoDevice compatibleDeviceFormatForMaxFrameRate:minFrameRate:](self, "compatibleDeviceFormatForMaxFrameRate:minFrameRate:", v6, [v8 minFrameRate]);

  v10 = CMContinuityCaptureLog(2);
  v11 = v10;
  v12 = 0x27ECB3000uLL;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(AVCaptureDevice *)self->_videoDevice localizedName];
      v114 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v107 = [v114 maxFrameRate];
      v113 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v105 = [v113 minFrameRate];
      v112 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v104 = [v112 suppressVideoEffects];
      v111 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v102 = [v111 portraitEffectEnabled];
      v110 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v101 = [v110 centerStageEnabled];
      v109 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v100 = [v109 studioLightingEnabled];
      v108 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v99 = [v108 reactionEffectsEnabled];
      v106 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v98 = [v106 backgroundReplacementEnabled];
      v103 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v14 = [v103 isCenterStageForcefullyEnabled];
      v15 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v15 portraitEffectAperture];
      v17 = v16;
      v18 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v18 studioLightingIntensity];
      v20 = v19;
      v21 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v22 = [v21 reactionEffectGesturesEnabled];
      v23 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v23 reactionEffectSuppressedGesturesEnabled];
      OUTLINED_FUNCTION_10_1();
      *v117 = v13;
      *&v117[8] = v24;
      v118 = v9;
      v119 = 1024;
      v120 = v107;
      v121 = 1024;
      v122 = v105;
      v123 = 1024;
      v124 = v104;
      v125 = 1024;
      v126 = v102;
      v127 = 1024;
      v128 = v101;
      v129 = 1024;
      v130 = v100;
      v131 = 1024;
      v132 = v99;
      v133 = 1024;
      v134 = v98;
      v135 = 1024;
      v136 = v14;
      v137 = 2048;
      v138 = v17;
      v139 = 2048;
      v140 = v20;
      v141 = 1024;
      v142 = v22;
      v143 = 1024;
      v144 = v25;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting format for %@: %@ FR: %d MnFR: %d SVE %d PE %d CS %d SL %d RE %d BR %d FCS %d BBA: %f SLI: %f REG: %d RESG: %d", buf, 0x76u);

      v12 = 0x27ECB3000;
    }

    [(CMContinuityCaptureRemoteVideoDevice *)self setFormat:v9];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v80 = [(AVCaptureDevice *)self->_videoDevice localizedName];
      v81 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      OUTLINED_FUNCTION_10_1();
      *v117 = v80;
      *&v117[8] = v82;
      v118 = v83;
      _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, " %@ Unable to find compatible device format for %@ configuration %@", buf, 0x20u);
    }

    v26 = MEMORY[0x277CBEAD8];
    v27 = *MEMORY[0x277CBE658];
    v28 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v26 raise:v27 format:{@"%@ ContinuityCapture error : Invalid format for configuration %@", self, v28}];
  }

  v29 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v30 = [v29 frameRateManager];
  v31 = [v30 allowedFrameRateRangeForDevice:self];

  v32 = [v31 maxFrameRate];
  -[CMContinuityCaptureRemoteVideoDevice setMaxFrameRate:](self, "setMaxFrameRate:", [v32 unsignedIntValue]);

  v33 = [v31 maxFrameRate];
  -[CMContinuityCaptureRemoteVideoDevice setMinFrameRate:](self, "setMinFrameRate:", [v33 unsignedIntValue]);

  v34 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_43(v34))
  {
    v35 = [(CMContinuityCaptureRemoteVideoDevice *)self maxFrameRate];
    [(CMContinuityCaptureRemoteVideoDevice *)self minFrameRate];
    OUTLINED_FUNCTION_19_0();
    v116 = 1024;
    *v117 = v35;
    *&v117[4] = 1024;
    *&v117[6] = v36;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v37, v38, OS_LOG_TYPE_DEFAULT, v39, v40, 0x18u);
  }

  [(CMContinuityCaptureRemoteVideoDevice *)self setMinFrameDurationOverrideIfApplicable];
  if ([(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking])
  {
    v41 = *(v12 + 2216);
    [*(&self->super.super.isa + v41) lockForConfiguration:0];
    [*(&self->super.super.isa + v41) setVideoZoomFactor:1.0];
    [*(&self->super.super.isa + v41) unlockForConfiguration];
  }

  else
  {
    v41 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v41 videoZoomFactor];
    [(CMContinuityCaptureRemoteVideoDevice *)self setVideoZoomFactor:?];
  }

  videoDataOutput = self->_videoDataOutput;
  if (videoDataOutput)
  {
    v43 = *MEMORY[0x277CE5EA8];
    v44 = [(AVCaptureVideoDataOutput *)videoDataOutput connectionWithMediaType:*MEMORY[0x277CE5EA8]];
    v45 = v44;
    if (v44 && [v44 isVideoDeviceOrientationCorrectionSupported])
    {
      [v45 setVideoMirrored:0];
    }

    else
    {
      v46 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_24(v46))
      {
        OUTLINED_FUNCTION_10_1();
        *v117 = v45;
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_11_0(v75, v76, v77, v78, v79);
      }
    }

    v47 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v48 = [v47 asyncStillCaptureEnabled];

    if (v48)
    {
      [(CMContinuityCaptureRemoteVideoDevice *)self _updatePhotoOutputConfigs];
      v49 = *(v12 + 2216);
      v50 = [*(&self->super.super.isa + v49) activeFormat];
      v51 = [v50 supportedMaxPhotoDimensions];
      v52 = [v51 count];

      if (v52)
      {
        *buf = 0xAAAAAAAAAAAAAAAALL;
        v53 = [*(&self->super.super.isa + v49) activeFormat];
        v54 = [v53 supportedMaxPhotoDimensions];
        v55 = [v54 lastObject];
        [v55 getValue:buf];

        [(AVCapturePhotoOutput *)self->_photoOutput setMaxPhotoDimensions:*buf];
      }

      else
      {
        v57 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_24(v57))
        {
          v84 = [*(&self->super.super.isa + v49) activeFormat];
          OUTLINED_FUNCTION_10_1();
          *v117 = v85;
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_11_0(v86, v87, v88, v89, v90);
        }
      }

      [(AVCapturePhotoOutput *)self->_photoOutput setHighResolutionCaptureEnabled:1];
      v56 = [(AVCapturePhotoOutput *)self->_photoOutput connectionWithMediaType:v43];
      [v56 setVideoOrientation:{objc_msgSend(v45, "videoOrientation")}];
      [v56 setVideoMirrored:{objc_msgSend(v45, "isVideoMirrored")}];
    }

    else
    {
      v56 = 0;
    }

    if (self->_metadataOutput)
    {
      v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v58 = 0;
    }

    v59 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v60 = [v59 faceDetectionEnabled];

    if (v60)
    {
      v61 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
      v62 = *MEMORY[0x277CE5A50];
      v63 = [v61 containsObject:*MEMORY[0x277CE5A50]];

      if ((v63 & 1) == 0)
      {
        v91 = CMContinuityCaptureLog(2);
        if (!OUTLINED_FUNCTION_24(v91))
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      [v58 addObject:v62];
    }

    v64 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v65 = [v64 humanBodyDetectionEnabled];

    if (v65)
    {
      v66 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
      v62 = *MEMORY[0x277CE5A58];
      v67 = [v66 containsObject:*MEMORY[0x277CE5A58]];

      if ((v67 & 1) == 0)
      {
        v92 = CMContinuityCaptureLog(2);
        if (!OUTLINED_FUNCTION_24(v92))
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      [v58 addObject:v62];
    }

    v68 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v69 = [v68 humanFullBodyDetectionEnabled];

    if (!v69)
    {
LABEL_40:
      metadataOutput = self->_metadataOutput;
      if (metadataOutput)
      {
        [(AVCaptureMetadataOutput *)metadataOutput setMetadataObjectTypes:v58];
        metadataOutput = self->_metadataOutput;
      }

      v73 = [(AVCaptureMetadataOutput *)metadataOutput connectionWithMediaType:*MEMORY[0x277CE5E78]];
      [v73 setEnabled:0];

      [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
      goto LABEL_43;
    }

    v70 = [(AVCaptureMetadataOutput *)self->_metadataOutput availableMetadataObjectTypes];
    v62 = *MEMORY[0x277CE5A60];
    v71 = [v70 containsObject:*MEMORY[0x277CE5A60]];

    if (v71)
    {
      [v58 addObject:v62];
      goto LABEL_40;
    }

    v93 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_24(v93))
    {
LABEL_50:

LABEL_43:
      goto LABEL_44;
    }

LABEL_51:
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_36();
    _os_log_error_impl(v94, v95, OS_LOG_TYPE_ERROR, v96, v97, 0xCu);
    goto LABEL_50;
  }

LABEL_44:

  return 1;
}

- (BOOL)_companionConnectionsRequired
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v5 = v4;
  if (!v4 || ([v4 streaming] & 1) != 0)
  {
    v9 = 0;
    goto LABEL_13;
  }

  manualFramingFeatureFlagEnabled = self->_manualFramingFeatureFlagEnabled;
  v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v8 = [v7 centerStageEnabled];
  if (!manualFramingFeatureFlagEnabled)
  {
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v9 = [v13 isCenterStageForcefullyEnabled];
    }

    goto LABEL_12;
  }

  if (v8)
  {

LABEL_9:
    v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v12 = [v7 centerStageFieldOfViewRestrictedToWide];
    goto LABEL_10;
  }

  v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v11 = [v10 isCenterStageForcefullyEnabled];

  if (v11)
  {
    goto LABEL_9;
  }

  v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if ([v7 manualFramingDeviceType] != 2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v12 = [(CMContinuityCaptureRemoteVideoDevice *)self _dockKitNotificationAgentIsTracking];
LABEL_10:
  v9 = v12 ^ 1;
LABEL_12:

LABEL_13:
  return v9;
}

- (BOOL)startCameraCaptureStack:(unint64_t)a3
{
  if (self->_dockedTrackingSupported)
  {
    v3 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    v6 = [v3 controlWithName:@"kCMContinuityCaptureControlDockedTrackingActive"];

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CMContinuityCaptureRemoteVideoDevice _dockKitNotificationAgentIsTracking](self, "_dockKitNotificationAgentIsTracking")}];
      [v6 setValue:v7];

      v3 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      [v3 setValueForControl:v6 completion:0];
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_captureStackActive || [(CMContinuityCaptureDeviceBase *)self invalidated])
  {
    goto LABEL_40;
  }

  self->_videoBufferDropCounter = 0;
  v9 = objc_opt_new();
  cameraCaptureStreamSessionID = self->_cameraCaptureStreamSessionID;
  self->_cameraCaptureStreamSessionID = v9;

  v11 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_16(v11))
  {
    v12 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v13 = self->_cameraCaptureStreamSessionID;
    [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    *buf = 138544642;
    v73 = self;
    v74 = 2048;
    v75 = v12;
    v76 = 2080;
    v77 = "[CMContinuityCaptureRemoteVideoDevice startCameraCaptureStack:]";
    v78 = 1024;
    v79 = a3;
    v80 = 2114;
    v81 = v13;
    v83 = v82 = 2114;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x3Au);
  }

  +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
  objc_claimAutoreleasedReturnValue();
  v19 = [OUTLINED_FUNCTION_20_0() activeConfiguration];
  [v3 incrementExceptionCountForEntity:{objc_msgSend(v19, "entity")}];

  v20 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  [v20 willConfigure];

  v21 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  LODWORD(v19) = [v21 isCenterStageForcefullyEnabled];

  if (v19)
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self _forcefullyEnableCenterStageOnSuperWide];
  }

  [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  objc_claimAutoreleasedReturnValue();
  v22 = [v21 hasConnectionsForEntity:{objc_msgSend(OUTLINED_FUNCTION_20_0(), "entity")}];

  if ((v22 & 1) == 0)
  {
    [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    objc_claimAutoreleasedReturnValue();
    v23 = [OUTLINED_FUNCTION_20_0() connectionsForConfiguration:v21];
    [v8 addObjectsFromArray:v23];

    v24 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v24))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    }

    if (![v8 count])
    {
      v64 = CMContinuityCaptureLog(2);
      if (!OUTLINED_FUNCTION_41(v64))
      {
LABEL_39:

LABEL_40:
        v62 = 0;
        goto LABEL_35;
      }

      *buf = 138543362;
      v73 = self;
LABEL_42:
      _os_log_error_impl(&dword_242545000, a3, OS_LOG_TYPE_ERROR, "%{public}@ Invalid connections", buf, 0xCu);
      goto LABEL_39;
    }
  }

  if ([(CMContinuityCaptureRemoteVideoDevice *)self _companionConnectionsRequired])
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    objc_claimAutoreleasedReturnValue();
    v30 = [OUTLINED_FUNCTION_20_0() activeConfiguration];
    v31 = [v21 connectionsForConfiguration:v30];
    [v8 addObjectsFromArray:v31];

    v32 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v32))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    }

    if (![v8 count])
    {
      v65 = CMContinuityCaptureLog(2);
      if (!OUTLINED_FUNCTION_41(v65))
      {
        goto LABEL_39;
      }

      *buf = 138543362;
      v73 = self;
      goto LABEL_42;
    }
  }

  if ([v8 count])
  {
    v21 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    [v21 addConnections:v8];
  }

  else
  {
    v38 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v38))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    }
  }

  v44 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
  v45 = [v44 isEnabled];

  if ((v45 & 1) == 0)
  {
    v46 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
    [v46 setEnabled:1];

    v47 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v47))
    {
      OUTLINED_FUNCTION_6_2(4.8151e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
    }
  }

  v53 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v54 = [v53 frameRateManager];
  [v54 reportStreamStatus:1 forDevice:self];

  [(CMContinuityCaptureRemoteVideoDevice *)self configureConnections];
  v55 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  [v55 didConfigure];

  v56 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
  [v56 start];

  [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
  self->_captureStackActive = 1;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v57 = [(NSMutableDictionary *)self->_cmControlByNameWithPendingUpdates allValues];
  v58 = [v57 countByEnumeratingWithState:&v68 objects:v67 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v69;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v69 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [(CMContinuityCaptureRemoteVideoDevice *)self setValueForControl:*(*(&v68 + 1) + 8 * i) completion:&__block_literal_global_42_0];
      }

      v59 = [v57 countByEnumeratingWithState:&v68 objects:v67 count:16];
    }

    while (v59);
  }

  v66.receiver = self;
  v66.super_class = CMContinuityCaptureRemoteVideoDevice;
  v62 = [(CMContinuityCaptureDeviceBase *)&v66 startCameraCaptureStack:a3];
LABEL_35:

  return v62;
}

- (BOOL)_shouldOnlyDisableVideoConnection
{
  v3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if ([v3 centerStageEnabled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v4 = [v5 isCenterStageForcefullyEnabled];
  }

  v6 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v7 = [v6 streaming];

  if (v7)
  {
    if (self->_manualFramingFeatureFlagEnabled)
    {
      v8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v9 = v8;
      if (v4)
      {
        v4 = [v8 centerStageFieldOfViewRestrictedToWide] ^ 1;
      }

      else
      {
        v4 = [v8 manualFramingDeviceType] == 2;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_stopCameraCaptureStackRemoveCaptureSessionConnectionsWithOption:(unint64_t)a3
{
  v4 = (a3 & 0x600) == 0 && [(CMContinuityCaptureRemoteVideoDevice *)self _shouldOnlyDisableVideoConnection];
  v5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v6 = [v5 isCenterStageForcefullyEnabled];

  if (v6)
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:1];
    v5 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [v5 _restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:1];
  }

  if (v4)
  {
    v5 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
    [v5 setEnabled:0];

    v7 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_28(v7))
    {
      goto LABEL_12;
    }

    v29 = 2;
  }

  else
  {
    [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_30() connections];
    OUTLINED_FUNCTION_33(v8);

    v9 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_28(v9))
    {
      goto LABEL_12;
    }

    v29 = 2;
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_7_2();
  _os_log_impl(v10, v11, v12, v13, v14, 0x12u);
LABEL_12:

  [(CMContinuityCaptureRemoteVideoDevice *)self tearDownConnectionsWithVideoDataConnectionDisabled:v4];
  v15 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];

  if (!v15)
  {
    return;
  }

  v16 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  [v16 connections];
  if (objc_claimAutoreleasedReturnValue())
  {
    v17 = [OUTLINED_FUNCTION_30() companionDevice];
    v18 = [v17 streaming];

    if (v18)
    {
      return;
    }

    v19 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    v20 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [v20 connections];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_0() removeConnections:v17];

    v21 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [v21 tearDownConnectionsWithVideoDataConnectionDisabled:0];

    v16 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_23(&dword_242545000, v23, v24, "Companion %{public}@ connections removed by %{public}@", v25, v26, v27, v28, v29);
    }
  }
}

- (void)_restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:(BOOL)a3
{
  v3 = a3;
  v5 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v6 = [v5 isCenterStageForcefullyEnabled];

  if (!v6)
  {
    return;
  }

  v7 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_28(v7))
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  v13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v14 = [v13 forcefulCenterStageEnablementType];

  v15 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [v15 setForcefulCenterStageEnablementType:0];

  if (v14 == 1)
  {
    v25 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_28(v25))
    {
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_7_2();
      _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
    }

    if (v3)
    {
      [OUTLINED_FUNCTION_35() setCenterStageEnabled:?];
    }

    v31 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [v31 setCenterStageEnabled:0];

    if ([(CMContinuityCaptureRemoteVideoDevice *)self shouldRestoreCenterStageOnWideCamera])
    {
      v32 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [v32 setCenterStageFieldOfViewRestrictedToWide:1];

      [OUTLINED_FUNCTION_35() setShouldRestoreCenterStageOnWideCamera:?];
    }

    v33 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v34 = [v33 manualFramingDeviceType];

    if (v34 == 1 && v3)
    {
      v35 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_28(v35))
      {
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_7_2();
        _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
      objc_claimAutoreleasedReturnValue();
      v41 = [OUTLINED_FUNCTION_30() connections];
      OUTLINED_FUNCTION_33(v41);

      [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
      objc_claimAutoreleasedReturnValue();
      v42 = [OUTLINED_FUNCTION_30() activeConfiguration];
      v43 = [(CMContinuityCaptureRemoteVideoDevice *)self connectionsForConfiguration:v42];
      [v33 addConnections:v43];
    }

LABEL_21:
    if (!v3)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v14 != 2)
  {
    goto LABEL_21;
  }

  v16 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_28(v16))
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
  }

  v22 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  [v22 setCenterStageFieldOfViewRestrictedToWide:1];

  [OUTLINED_FUNCTION_35() setShouldRestoreCenterStageOnWideCamera:?];
  if (v3)
  {
    v23 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    [(CMContinuityCaptureRemoteVideoDevice *)self connections];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_25() removeConnections:v22];

    v24 = [(CMContinuityCaptureRemoteVideoDevice *)self captureSession];
    [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_30() connectionsForConfiguration:v22];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_0() addConnections:v15];

LABEL_22:
    [(CMContinuityCaptureRemoteVideoDevice *)self updateControlStatus];
  }
}

- (id)createAVCVideoStream
{
  v28[0] = 0xAAAAAAAAAAAAAAAALL;
  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = [(CMContinuityCaptureDeviceBase *)self transportStream];
  v4 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v5 = [v4 server];

  if (!v3)
  {
    v12 = 0;
    v6 = 0;
LABEL_21:
    v15 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  v6 = [v3 streamUUID];
  if (!v6)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    OUTLINED_FUNCTION_31();
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCVideoStream for StreamUUID %@", buf, 0x20u);
  }

  [v6 getUUIDBytes:v28];
  v8 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];

  if (!v8)
  {
    v11 = 0;
LABEL_9:
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_40();
      v25 = v11;
      _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalid avcStreamInitOptions, error %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CBEB38] dictionary];
    v11 = 0;
    goto LABEL_12;
  }

  v9 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
  v23 = 0;
  v10 = [v9 generateMediaStreamInitOptionsWithError:&v23];
  v11 = v23;
  v12 = [v10 mutableCopy];

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_12:
  v14 = [v5 sessionUUID];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CE57D8]];

  v22 = v11;
  v15 = [objc_alloc(MEMORY[0x277CE5758]) initWithNWConnectionClientID:v28 options:v12 error:&v22];
  v16 = v22;

  if (v15)
  {
    [v15 setDelegate:self];
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      OUTLINED_FUNCTION_31();
      v26 = v18;
      v27 = v15;
      _os_log_impl(&dword_242545000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCVideoStream %p Success", buf, 0x20u);
    }
  }

  else
  {
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_40();
      v25 = v16;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v17, v21, "%{public}@ AVCVideoStream create error %@", buf);
    }

    v15 = 0;
  }

LABEL_16:
  v19 = v15;

  return v19;
}

- (BOOL)startAVConferenceStack:(unint64_t)a3
{
  stopCompletionBlock = self->_stopCompletionBlock;
  self->_stopCompletionBlock = 0;

  self->_avcStreamInputActive = 0;
  if (!self->_avcVideoStream)
  {
    v8 = [(CMContinuityCaptureRemoteVideoDevice *)self createAVCVideoStream];
    avcVideoStream = self->_avcVideoStream;
    self->_avcVideoStream = v8;

    if (!self->_avcVideoStream)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_8;
    }
  }

  v10 = objc_alloc(MEMORY[0x277CE5748]);
  [OUTLINED_FUNCTION_20_0() queue];
  objc_claimAutoreleasedReturnValue();
  v11 = [OUTLINED_FUNCTION_25() activeConfiguration];
  v12 = [v11 format];
  v38 = 0;
  v13 = [v4 initWithDelegate:self delegateQueue:v3 format:objc_msgSend(v12 options:"formatDescription") error:{0, &v38}];
  v14 = v38;
  avcStreamInput = self->_avcStreamInput;
  self->_avcStreamInput = v13;

  v16 = self->_avcStreamInput;
  if (!v16)
  {
    v23 = CMContinuityCaptureLog(2);
    if (!OUTLINED_FUNCTION_41(v23))
    {
      goto LABEL_13;
    }

    *buf = 138543618;
    v32 = self;
    v33 = 2112;
    v34 = v14;
    v25 = "%{public}@ AVCVideoInput Error %@";
LABEL_18:
    OUTLINED_FUNCTION_11_0(&dword_242545000, v3, v24, v25, buf);
    goto LABEL_13;
  }

  v17 = [(CMContinuityCaptureRemoteVideoDevice *)self newVideoStreamCurrentConfiguration:[(AVCStreamInput *)v16 streamInputID]];
  if (v17)
  {
    v3 = v17;
    v18 = self->_avcVideoStream;
    v37 = v14;
    v19 = [(AVCVideoStream *)v18 configure:v3 error:&v37];
    v20 = v37;

    if (v19)
    {
      [(AVCVideoStream *)self->_avcVideoStream start];
      v21 = 1;
    }

    else
    {
      v27 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = self->_avcVideoStream;
        OUTLINED_FUNCTION_32();
        v35 = 2112;
        v36 = v20;
        _os_log_error_impl(&dword_242545000, v27, OS_LOG_TYPE_ERROR, "%{public}@ AVCVideoStream %p configure error %@", buf, 0x20u);
      }

      v21 = 0;
    }

    goto LABEL_7;
  }

  v26 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_41(v26))
  {
    v28 = self->_avcVideoStream;
    OUTLINED_FUNCTION_32();
    v25 = "%{public}@ AVCVideoStream %p Invalid configuration";
    goto LABEL_18;
  }

LABEL_13:
  v21 = 0;
  v20 = v14;
LABEL_7:

LABEL_8:
  v30.receiver = self;
  v30.super_class = CMContinuityCaptureRemoteVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v30 startAVConferenceStack:a3];

  return v21;
}

- (BOOL)stopAVConferenceStack
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_23(&dword_242545000, v4, v5, "%{public}@ %s", v6, v7, v8, v9, v14);
  }

  if (self->_avcStreamInput && (avcVideoStream = self->_avcVideoStream) != 0)
  {
    [(AVCVideoStream *)avcVideoStream stop];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (!self->_avcStreamInputActive)
  {
    avcStreamInput = self->_avcStreamInput;
    self->_avcStreamInput = 0;
  }

  return v11;
}

- (void)setFaceDrivenAFActive:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)setDeskViewCameraMode:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)setVideoZoomFactor:.cold.1()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)setVideoZoomFactor:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setMaxFrameRate:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_38();
  v5 = CMContinuityCaptureLog(v4);
  if (OUTLINED_FUNCTION_42(v5))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
  }

  *a2 = v2;
}

- (void)setMaxFrameRate:(uint64_t)a1 .cold.2(uint64_t a1, id *a2)
{
  v2 = [*a2 activeFormat];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)setCenterStageEnabled:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = CMContinuityCaptureLog(v4);
  if (OUTLINED_FUNCTION_24(v5))
  {
    v6 = *a2;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

- (void)setSuppressVideoEffects:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v3, v4, "%{public}@ No active format for %{public}@");
}

- (void)_avfDeviceTypeForManualFramingDeviceType:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ unsupported device type: %ld");
}

- (void)connectionsForConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Error creating device input: %@");
}

- (void)_deviceFormat:(uint64_t)a1 isCompatibleWithConfiguration:(void *)a2 requiringMultiCamSupport:minFrameRate:maxFrameRate:.cold.1(uint64_t a1, void *a2)
{
  [a2 isPortraitEffectSupported];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x26u);
}

- (void)stopCameraCaptureStack:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [a1 compositeDelegate];
  v7 = [v6 frameRateManager];
  [v7 reportStreamStatus:0 forDevice:a1];

  v8 = [a1 captureSession];
  [v8 willConfigure];

  if ([a1 isDockedTrackingEnabled])
  {
    [OUTLINED_FUNCTION_35() setDockedTrackingEnabled:?];
  }

  [a1 _stopCameraCaptureStackRemoveCaptureSessionConnectionsWithOption:a2];
  v9 = [a1 captureSession];
  [v9 didConfigure];

  v10 = [a1 captureSession];
  [v10 stop];

  *a3 = 0;
  v11 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_28(v11))
  {
    [a1 currentSessionID];
    v17 = *(a1 + 384);
    v18 = *(a1 + 360);
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0x2Au);
  }

  if ((a2 & 0x400) != 0)
  {
    *(a1 + 408) = 1;
  }
}

- (uint64_t)stopCameraCaptureStack:(void *)a3 .cold.2(__int16 a1, void *a2, void *a3)
{
  if ((a1 & 0x200) != 0)
  {
    [a2 captureSession];
    objc_claimAutoreleasedReturnValue();
    v6 = [v3 hasConnectionsForEntity:{objc_msgSend(OUTLINED_FUNCTION_25(), "entity")}];

    if (v6)
    {
      v3 = [a2 companionDevice];

      if (v3)
      {
        v3 = [a2 companionDevice];
        [v3 stopCameraCaptureStack:0];
      }

      v7 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_28(v7))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_7_2();
        _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
      }

      [a2 captureSession];
      objc_claimAutoreleasedReturnValue();
      v13 = [OUTLINED_FUNCTION_25() connections];
      OUTLINED_FUNCTION_33(v13);

      [a2 tearDownConnectionsWithVideoDataConnectionDisabled:0];
    }
  }

  +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
  objc_claimAutoreleasedReturnValue();
  v14 = [OUTLINED_FUNCTION_25() activeConfiguration];
  [v3 decrementExceptionCountForEntity:{objc_msgSend(v14, "entity")}];

  v15 = [a2 companionDevice];
  v16 = [v15 entity];

  if (v16 != 1)
  {
    return 1;
  }

  v17 = [a2 companionDevice];
  *a3 = v17;
  [v17 setMinFrameDurationOverrideIfApplicable];
  return 0;
}

- (uint64_t)dispatchFrame:(uint64_t *)a1 entity:completion:.cold.1(uint64_t *a1)
{
  result = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1003 userInfo:0];
  *a1 = result;
  return result;
}

- (void)dispatchFrame:entity:completion:.cold.2()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)dispatchFrame:entity:completion:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_37();
  v3 = v0;
  _os_log_debug_impl(&dword_242545000, v1, OS_LOG_TYPE_DEBUG, "%@ frame dispatch delta %lld", v2, 0x16u);
}

- (void)newVideoStreamCurrentConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ AVCMediaStreamConfig error %@");
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 videoDevice];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __70__CMContinuityCaptureRemoteVideoDevice_setValueForControl_completion___block_invoke_cold_5()
{
  v1 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_43(v1))
  {
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

- (void)captureOutput:didFinishProcessingPhoto:error:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ captured photo %@ but couldn't find paired stillImageRequest from remote side.");
}

- (void)captureOutput:(uint64_t)a1 didDropSampleBuffer:(uint64_t *)a2 fromConnection:.cold.1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v3, v4, "%{public}@ Dropped %llu buffers");
}

- (void)setDockedTrackingEnabled:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v1 = [v0 videoDevice];
  v2 = [v1 localizedName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end
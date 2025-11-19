@interface CMContinuityCaptureRemoteDeskcamVideoDevice
- (BOOL)_companionConnectionsRequired;
- (BOOL)_shouldOnlyDisableVideoConnection;
- (BOOL)configureConnections;
- (id)connectionsForConfiguration:(id)a3;
- (void)_forcefullyEnableCenterStageOnSuperWide;
- (void)configureConnections;
@end

@implementation CMContinuityCaptureRemoteDeskcamVideoDevice

- (id)connectionsForConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v46 = self;
    v47 = 2080;
    v48 = "[CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:]";
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  v8 = [(CMContinuityCaptureRemoteVideoDevice *)self connections];

  if (!v8)
  {
    v12 = CMContinuityCaptureDevicePosition();
    v13 = *MEMORY[0x277CE5888];
    v14 = *MEMORY[0x277CE5EA8];
    v15 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5888] mediaType:*MEMORY[0x277CE5EA8] position:v12];
    [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDevice:v15];

    v16 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];

    if (v16)
    {
      v17 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      -[CMContinuityCaptureRemoteVideoDevice setDeskViewCameraMode:](self, "setDeskViewCameraMode:", [v17 deskViewCameraMode]);

      v18 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
      v19 = [v18 streaming];

      if ((v19 & 1) == 0)
      {
        [MEMORY[0x277CE5AC8] setCenterStageControlMode:1];
        [MEMORY[0x277CE5AC8] setCenterStageEnabled:0];
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self setFaceDrivenAFActive:0];
      v20 = MEMORY[0x277CE5AD8];
      v21 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
      v44 = 0;
      v22 = [v20 deviceInputWithDevice:v21 error:&v44];
      v16 = v44;
      [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDataInput:v22];

      v23 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];

      if (v23 && !v16)
      {
        v24 = objc_alloc_init(MEMORY[0x277CE5B60]);
        [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDataOutput:v24];

        v25 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataOutput];
        v26 = [(CMContinuityCaptureDeviceBase *)self queue];
        [v25 setSampleBufferDelegate:self queue:v26];

        v27 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
        v28 = [v27 portsWithMediaType:v14 sourceDeviceType:v13 sourceDevicePosition:v12];

        if ([v28 count])
        {
          v29 = MEMORY[0x277CE5AB0];
          v30 = [v28 firstObject];
          v43 = v30;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
          v32 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataOutput];
          v33 = [v29 connectionWithInputPorts:v31 output:v32];
          [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDataConnection:v33];

          v34 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
          [v5 addObject:v34];

          v35 = [v4 entity];
          v36 = v35 == [(CMContinuityCaptureDeviceBase *)self entity];
          v37 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
          [v37 setEnabled:v36];

          v38 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
            v40 = [v39 isEnabled];
            *buf = 138543618;
            v46 = self;
            v47 = 1024;
            LODWORD(v48) = v40;
            _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ VDO connection enabled %d", buf, 0x12u);
          }

          [(CMContinuityCaptureRemoteVideoDevice *)self setConnections:v5];
          v16 = 0;
          v41 = v5;
          goto LABEL_16;
        }

        [CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:];
        v16 = 0;
LABEL_24:
        v41 = 0;
LABEL_16:
        v11 = v41;

        goto LABEL_17;
      }

      [CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:];
    }

    else
    {
      [CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:];
    }

    v28 = 0;
    goto LABEL_24;
  }

  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CMContinuityCaptureRemoteVideoDevice *)self connections];
    *buf = 138543618;
    v46 = self;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ returning already created connections %@", buf, 0x16u);
  }

  v11 = [(CMContinuityCaptureRemoteVideoDevice *)self connections];
LABEL_17:

  return v11;
}

- (BOOL)configureConnections
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  [v4 setMinFrameDurationOverrideIfApplicable];

  v5 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v6 = [v5 isStreamingOnSuperWide];

  if (v6)
  {
    v7 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [v7 setFaceDrivenAFActive:0];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = self;
  v8 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
  v9 = [v8 formats];

  obj = v9;
  v35 = [v9 countByEnumeratingWithState:&v45 objects:v44 count:16];
  if (v35)
  {
    v34 = *v46;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v46 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v45 + 1) + 8 * v10);
      v37 = [(CMContinuityCaptureDeviceBase *)v36 activeConfiguration];
      v12 = [(CMContinuityCaptureRemoteVideoDevice *)v36 captureSession];
      v13 = [v12 isMulticamSession];
      v14 = [(CMContinuityCaptureDeviceBase *)v36 activeConfiguration];
      v15 = [v14 format];
      v16 = [v15 minFrameRate];
      v17 = [(CMContinuityCaptureDeviceBase *)v36 activeConfiguration];
      v18 = [v17 format];
      LOBYTE(v13) = -[CMContinuityCaptureRemoteVideoDevice _deviceFormat:isCompatibleWithConfiguration:requiringMultiCamSupport:minFrameRate:maxFrameRate:](v36, "_deviceFormat:isCompatibleWithConfiguration:requiringMultiCamSupport:minFrameRate:maxFrameRate:", v11, v37, v13, v16, [v18 maxFrameRate]);

      if (v13)
      {
        break;
      }

      if (v35 == ++v10)
      {
        v35 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
        if (v35)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v19 = v11;

    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = CMContinuityCaptureLog(2);
    v21 = v36;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CMContinuityCaptureRemoteVideoDevice *)v36 videoDevice];
      v23 = [v22 localizedName];
      *buf = 138543874;
      v39 = v36;
      v40 = 2112;
      v41 = v23;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting format for %@: %@", buf, 0x20u);
    }

    [(CMContinuityCaptureRemoteVideoDevice *)v36 setFormat:v19];
  }

  else
  {
LABEL_11:

LABEL_16:
    v24 = CMContinuityCaptureLog(2);
    v21 = v36;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteDeskcamVideoDevice configureConnections];
    }

    v19 = 0;
  }

  if ([(CMContinuityCaptureRemoteVideoDevice *)v21 deskViewCameraMode])
  {
    v25 = [(CMContinuityCaptureDeviceBase *)v21 activeConfiguration];
    -[CMContinuityCaptureRemoteVideoDevice setDeskViewCameraMode:](v21, "setDeskViewCameraMode:", [v25 deskViewCameraMode]);

    v26 = [(CMContinuityCaptureRemoteVideoDevice *)v21 companionDevice];
    v27 = [v26 isStreamingOnSuperWide];

    if (v27)
    {
      v28 = [(CMContinuityCaptureDeviceBase *)v21 activeConfiguration];
      v29 = [v28 deskViewCameraMode];
      v30 = [(CMContinuityCaptureRemoteVideoDevice *)v21 companionDevice];
      [v30 setDeskViewCameraMode:v29];
    }
  }

  v31 = [(CMContinuityCaptureRemoteVideoDevice *)v21 videoDataConnection];
  [v31 setEnabled:1];

  return 1;
}

- (void)_forcefullyEnableCenterStageOnSuperWide
{
  v3 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v4 = [v3 isDockedTrackingEnabled];

  v5 = CMContinuityCaptureLog(2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "Docked tracking is enabled, do not forcefully enable Center Stage as requested", &v26, 2u);
    }
  }

  else
  {
    if (v6)
    {
      v26 = 138543618;
      v27 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Forcefully enable Center Stage on the default video camera as requested", &v26, 0x16u);
    }

    v5 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v8 = [v7 forcefulCenterStageEnablementType];
    v9 = [v5 activeConfiguration];
    [v9 setForcefulCenterStageEnablementType:v8];

    LODWORD(v8) = [v5 centerStageEnabled];
    v10 = CMContinuityCaptureLog(2);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        v26 = 138543618;
        v27 = self;
        v28 = 2080;
        v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Already running Center Stage on the wide, switching to the super wide", &v26, 0x16u);
      }

      [v5 setShouldRestoreCenterStageOnWideCamera:1];
      v12 = [v5 activeConfiguration];
      [v12 setCenterStageFieldOfViewRestrictedToWide:0];

LABEL_18:
      v21 = [v5 captureSession];
      v22 = [v5 connections];
      [v21 removeConnections:v22];

      v23 = [v5 captureSession];
      v24 = [v5 activeConfiguration];
      v25 = [v5 connectionsForConfiguration:v24];
      [v23 addConnections:v25];

      goto LABEL_22;
    }

    if (v11)
    {
      v26 = 138543618;
      v27 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Switching from Manual Framing to Center Stage", &v26, 0x16u);
    }

    v13 = [v5 activeConfiguration];
    v14 = [v13 centerStageFieldOfViewRestrictedToWide];

    if (v14)
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = self;
        v28 = 2080;
        v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Center Stage is set to run on the back wide. Switching to the super wide", &v26, 0x16u);
      }

      [v5 setShouldRestoreCenterStageOnWideCamera:1];
      v16 = [v5 activeConfiguration];
      [v16 setCenterStageFieldOfViewRestrictedToWide:0];
    }

    v17 = [v5 activeConfiguration];
    v18 = [v17 manualFramingDeviceType];

    v19 = CMContinuityCaptureLog(2);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18 == 1)
    {
      if (v20)
      {
        v26 = 138543618;
        v27 = self;
        v28 = 2080;
        v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Manual Framing on the back wide. Switching to the super wide", &v26, 0x16u);
      }

      goto LABEL_18;
    }

    if (v20)
    {
      v26 = 138543618;
      v27 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Manual Framing on the super wide. Turning on Center Stage", &v26, 0x16u);
    }

    [v5 setCenterStageEnabled:1];
  }

LABEL_22:
}

- (BOOL)_shouldOnlyDisableVideoConnection
{
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  v5 = [v4 streaming];

  if (v5)
  {
    manualFramingFeatureFlagEnabled = self->super._manualFramingFeatureFlagEnabled;
    v7 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    v8 = [v7 centerStageEnabled];

    if (manualFramingFeatureFlagEnabled)
    {
      v9 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
      v10 = [v9 activeConfiguration];
      v11 = v10;
      if (v8)
      {
        v8 = [v10 centerStageFieldOfViewRestrictedToWide] ^ 1;
      }

      else
      {
        v8 = [v10 manualFramingDeviceType] == 2;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_companionConnectionsRequired
{
  v4 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  if ([v5 streaming])
  {
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  v6 = [v5 activeConfiguration];
  v7 = [v6 centerStageEnabled];
  if ((v7 & 1) != 0 || ([v5 activeConfiguration], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "isCenterStageForcefullyEnabled")))
  {
    v8 = [v5 activeConfiguration];
    v9 = [v8 centerStageFieldOfViewRestrictedToWide] ^ 1;

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

LABEL_8:
LABEL_9:

  return v9;
}

- (void)connectionsForConfiguration:.cold.1()
{
  v2 = OUTLINED_FUNCTION_17_0();
  v3 = CMContinuityCaptureLog(v2);
  if (OUTLINED_FUNCTION_24(v3))
  {
    v4 = [v1 videoDataInput];
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (void)connectionsForConfiguration:.cold.2()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)connectionsForConfiguration:.cold.3()
{
  v1 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_24(v1))
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)configureConnections
{
  OUTLINED_FUNCTION_29();
  v2 = [v1 videoDevice];
  [v2 localizedName];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_20_0() activeConfiguration];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end
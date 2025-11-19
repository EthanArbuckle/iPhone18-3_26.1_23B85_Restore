@interface CAMSubsystems
- (CAMSubsystems)initWithLaunchOptions:(id)a3;
@end

@implementation CAMSubsystems

- (CAMSubsystems)initWithLaunchOptions:(id)a3
{
  v4 = a3;
  v75.receiver = self;
  v75.super_class = CAMSubsystems;
  v5 = [(CAMSubsystems *)&v75 init];
  if (v5)
  {
    v74 = +[CAMCaptureCapabilities capabilities];
    if ([v74 hasSystemTelephonyOfAnyKind])
    {
      v6 = [[CAMCallStatusMonitor alloc] initDisabledForLaunch];
    }

    else
    {
      v6 = 0;
    }

    v66 = v4;
    v7 = [[CAMUserPreferenceOverrides alloc] initWithLaunchOptions:v4];
    v8 = +[CAMUserPreferences preferences];
    v73 = v6;
    v65 = v7;
    v63 = [v8 readPreferencesWithOverrides:v7 emulationMode:0 callActive:objc_msgSend(v6 shouldResetCaptureConfiguration:{"isCallActive"), 0}];
    v9 = [v8 captureConfiguration];
    v71 = [v8 conflictingControlConfiguration];
    v10 = objc_alloc_init(CAMMotionController);
    v11 = objc_alloc_init(CAMLocationController);
    v12 = objc_alloc_init(CAMPowerController);
    v13 = objc_alloc_init(CAMProtectionController);
    v60 = objc_alloc_init(CAMKeepAliveController);
    v57 = objc_alloc_init(CAMCameraRollController);
    v14 = [[CAMRemoteShutterController alloc] initWithCaptureConfiguration:v9 motionController:v10];
    v70 = objc_alloc_init(CAMNebulaDaemonProxyManager);
    v15 = [[CAMBurstController alloc] initWithProtectionController:v13 powerController:v12 remoteShutterController:v14];
    v51 = [[CAMPersistenceController alloc] initWithLocationController:v11 burstController:v15 protectionController:v13 powerController:v12 irisVideoController:0];
    [(CAMBurstController *)v15 setPersistenceController:?];
    [CAMCaptureConfiguration captureGraphConfigurationUsingConfiguration:v9 outputToExternalStorage:0 captureOrientation:[(CAMMotionController *)v10 captureOrientation]];
    v62 = v64 = v8;
    [v8 defaultZoomFactorForGraphConfiguration:v62 captureOrientation:-[CAMMotionController captureOrientation](v10 outputToExternalStorage:{"captureOrientation"), 0}];
    v69 = v14;
    v67 = v12;
    v61 = v13;
    v72 = v9;
    v16 = v11;
    v59 = v15;
    v18 = [[CUCaptureController alloc] initWithCaptureConfiguration:v9 zoomFactor:0 outputToExternalStorage:0 engineOptions:v11 locationController:v10 motionController:v15 burstController:v17 protectionController:v13 powerController:v12 irisVideoController:0 remoteShutterController:v14];
    v19 = objc_alloc_init(CAMStorageController);
    v20 = 0;
    if ([v74 librarySelectionSupported])
    {
      v20 = [[CAMLibrarySelectionController alloc] initWithLocationProvider:v11];
    }

    v21 = [[CAMTimelapseController alloc] initWithCaptureController:v18 locationController:v11 motionController:v10 persistenceController:v51 storageController:v19 librarySelectionController:v20 nebulaDaemonProxyManager:v70];
    v22 = [MEMORY[0x1E69DC938] currentDevice];
    v23 = v20;
    v53 = v20;
    v24 = [v22 cam_initialLayoutStyle];

    v25 = [[CAMViewfinderViewController alloc] initWithCaptureController:v18 captureConfiguration:v72 conflictingControlConfiguration:v71 locationController:v11 motionController:v10 timelapseController:v21 keepAliveController:v60 remoteShutterController:v69 powerController:v67 cameraRollController:v57 librarySelectionController:v23 callStatusMonitor:v73 storageController:v19 usingEmulationMode:0 initialLayoutStyle:v24 options:0];
    [(CAMRemoteShutterController *)v69 setDelegate:v25];
    [(CAMTimelapseController *)v21 restoreConfiguration];
    [(CUCaptureController *)v18 registerCaptureService:v51];
    viewfinderViewController = v5->_viewfinderViewController;
    v5->_viewfinderViewController = v25;
    v56 = v25;

    cameraRollController = v5->_cameraRollController;
    v5->_cameraRollController = v57;
    v58 = v57;

    captureController = v5->_captureController;
    v5->_captureController = v18;
    v55 = v18;

    timelapseController = v5->_timelapseController;
    v5->_timelapseController = v21;
    v54 = v21;

    persistenceController = v5->_persistenceController;
    v5->_persistenceController = v51;
    v31 = v51;

    motionController = v5->_motionController;
    v5->_motionController = v10;
    v52 = v10;

    locationController = v5->_locationController;
    v5->_locationController = v16;
    v50 = v16;

    powerController = v5->_powerController;
    v5->_powerController = v67;
    v68 = v67;

    burstController = v5->_burstController;
    v5->_burstController = v59;
    v36 = v59;

    keepAliveController = v5->_keepAliveController;
    v5->_keepAliveController = v60;
    v38 = v60;

    protectionController = v5->_protectionController;
    v5->_protectionController = v61;
    v40 = v61;

    remoteShutterController = v5->_remoteShutterController;
    v5->_remoteShutterController = v69;
    v42 = v69;

    librarySelectionController = v5->_librarySelectionController;
    v5->_librarySelectionController = v53;
    v44 = v53;

    nebulaDaemonProxyManager = v5->_nebulaDaemonProxyManager;
    v5->_nebulaDaemonProxyManager = v70;
    v46 = v70;

    irisVideoController = v5->_irisVideoController;
    v5->_irisVideoController = 0;

    v5->_configuredFromLaunchOptions = v63;
    v48 = v5;

    v4 = v66;
  }

  return v5;
}

@end
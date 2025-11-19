@interface JFXARKitCameraSessionController
- (BOOL)JT_setupARSession:(id *)a3;
- (JFXARKitCameraSessionController)initWithAVCaptureSession:(id)a3 captureDevice:(id)a4 arSessionDelegateQueue:(id)a5;
- (JFXARKitFrameDelegate)frameDelegate;
- (void)dealloc;
- (void)processExternalSensorData:(id)a3;
- (void)provideSensorFrameSet:(id)a3 trackedFacesMetadata:(id)a4 faceObjectsMetadata:(id)a5;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)startARSession;
- (void)stopARSession;
@end

@implementation JFXARKitCameraSessionController

- (JFXARKitCameraSessionController)initWithAVCaptureSession:(id)a3 captureDevice:(id)a4 arSessionDelegateQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = JFXARKitCameraSessionController;
  v10 = [(JFXARKitCameraSessionController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(JFXARKitCameraSessionController *)v10 setUnderlyingAVCaptureSession:v8];
    [(JFXARKitCameraSessionController *)v11 setUnderlyingAVCaptureDevice:v9];
    v11->_running = 0;
    v11->_arSessionDelegateQueue = a5;
  }

  return v11;
}

- (void)dealloc
{
  [(ARSession *)self->_arSession pause];
  [(ARSession *)self->_arSession setDelegate:0];
  [(ARSession *)self->_arSession setDelegateQueue:0];
  arSession = self->_arSession;
  self->_arSession = 0;

  v4.receiver = self;
  v4.super_class = JFXARKitCameraSessionController;
  [(JFXARKitCameraSessionController *)&v4 dealloc];
}

- (void)startARSession
{
  if (![(JFXARKitCameraSessionController *)self running])
  {
    v5 = 0;
    if (![(JFXARKitCameraSessionController *)self JT_setupARSession:&v5]|| v5)
    {
      [(JFXARKitCameraSessionController *)self stopARSession];
    }

    else
    {
      v3 = [(JFXARKitCameraSessionController *)self arSession];
      v4 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
      [v3 runWithConfiguration:v4 options:1];

      [(JFXARKitCameraSessionController *)self setRunning:1];
    }
  }
}

- (void)stopARSession
{
  v3 = [(JFXARKitCameraSessionController *)self arSession];
  [v3 pause];

  [(JFXARKitCameraSessionController *)self setRunning:0];
}

- (void)provideSensorFrameSet:(id)a3 trackedFacesMetadata:(id)a4 faceObjectsMetadata:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [(JFXARKitCameraSessionController *)self customImageSensor];
  v11 = [(JFXARKitCameraSessionController *)self underlyingAVCaptureDevice];
  v12 = [(JFXARKitCameraSessionController *)self underlyingAVCaptureSession];
  [v13 createImageDataFromFrameSet:v10 captureDevice:v11 captureSession:v12 trackedFacesMetadata:v9 faceObjectsMetadata:v8];
}

- (void)processExternalSensorData:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  CMTimeMakeWithSeconds(&v7, v5, 1000000000);
  time = v7;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  v6 = [(JFXARKitCameraSessionController *)self customImageSensor];
  [v6 outputSensorData:v4];
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  v6 = [(JFXARKitCameraSessionController *)self frameDelegate];
  [v6 didUpdateFrame:v5];
}

- (BOOL)JT_setupARSession:(id *)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CE5280] isSupported];
  if (v5)
  {
    v6 = objc_opt_new();
    [(JFXARKitCameraSessionController *)self setArSession:v6];

    v7 = [(JFXARKitCameraSessionController *)self arSession];
    [v7 setDelegate:self];

    v8 = [(JFXARKitCameraSessionController *)self arSessionDelegateQueue];
    v9 = [(JFXARKitCameraSessionController *)self arSession];
    [v9 setDelegateQueue:v8];

    v10 = objc_opt_new();
    [(JFXARKitCameraSessionController *)self setMotionManager:v10];

    v11 = objc_alloc_init(JFXCustomImageSensor);
    [(JFXARKitCameraSessionController *)self setCustomImageSensor:v11];

    v12 = objc_alloc(MEMORY[0x277CE5300]);
    v13 = [(JFXARKitCameraSessionController *)self motionManager];
    v14 = [v12 initWithMotionManager:v13];
    [(JFXARKitCameraSessionController *)self setMotionSensor:v14];

    v15 = objc_alloc(MEMORY[0x277CE5258]);
    v16 = [(JFXARKitCameraSessionController *)self motionManager];
    v17 = [v15 initWithMotionManager:v16 alignment:2];
    [(JFXARKitCameraSessionController *)self setOrientationSensor:v17];

    v18 = objc_alloc_init(MEMORY[0x277CE5280]);
    [(JFXARKitCameraSessionController *)self setFaceTrackingConfiguration:v18];

    v19 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v20 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
      [v20 setDisableRenderSyncScheduling:1];
    }

    v21 = [(JFXARKitCameraSessionController *)self motionSensor];
    v22 = [(JFXARKitCameraSessionController *)self orientationSensor];
    v30[1] = v22;
    v23 = [(JFXARKitCameraSessionController *)self customImageSensor];
    v30[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    v25 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    [v25 setCustomSensors:v24];

    v26 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    [v26 setLightEstimationEnabled:0];

    v27 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    [v27 setWorldAlignment:2];

    if ([MEMORY[0x277CE5280] supportsFrameSemantics:1])
    {
      v28 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
      [v28 setFrameSemantics:{objc_msgSend(v28, "frameSemantics") | 1}];
    }
  }

  else if (*a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:100 userInfo:0];
  }

  return v5;
}

- (JFXARKitFrameDelegate)frameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_frameDelegate);

  return WeakRetained;
}

@end
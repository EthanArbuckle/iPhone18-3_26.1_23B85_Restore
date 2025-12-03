@interface JFXARKitCameraSessionController
- (BOOL)JT_setupARSession:(id *)session;
- (JFXARKitCameraSessionController)initWithAVCaptureSession:(id)session captureDevice:(id)device arSessionDelegateQueue:(id)queue;
- (JFXARKitFrameDelegate)frameDelegate;
- (void)dealloc;
- (void)processExternalSensorData:(id)data;
- (void)provideSensorFrameSet:(id)set trackedFacesMetadata:(id)metadata faceObjectsMetadata:(id)objectsMetadata;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)startARSession;
- (void)stopARSession;
@end

@implementation JFXARKitCameraSessionController

- (JFXARKitCameraSessionController)initWithAVCaptureSession:(id)session captureDevice:(id)device arSessionDelegateQueue:(id)queue
{
  sessionCopy = session;
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = JFXARKitCameraSessionController;
  v10 = [(JFXARKitCameraSessionController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(JFXARKitCameraSessionController *)v10 setUnderlyingAVCaptureSession:sessionCopy];
    [(JFXARKitCameraSessionController *)v11 setUnderlyingAVCaptureDevice:deviceCopy];
    v11->_running = 0;
    v11->_arSessionDelegateQueue = queue;
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
      arSession = [(JFXARKitCameraSessionController *)self arSession];
      faceTrackingConfiguration = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
      [arSession runWithConfiguration:faceTrackingConfiguration options:1];

      [(JFXARKitCameraSessionController *)self setRunning:1];
    }
  }
}

- (void)stopARSession
{
  arSession = [(JFXARKitCameraSessionController *)self arSession];
  [arSession pause];

  [(JFXARKitCameraSessionController *)self setRunning:0];
}

- (void)provideSensorFrameSet:(id)set trackedFacesMetadata:(id)metadata faceObjectsMetadata:(id)objectsMetadata
{
  objectsMetadataCopy = objectsMetadata;
  metadataCopy = metadata;
  setCopy = set;
  customImageSensor = [(JFXARKitCameraSessionController *)self customImageSensor];
  underlyingAVCaptureDevice = [(JFXARKitCameraSessionController *)self underlyingAVCaptureDevice];
  underlyingAVCaptureSession = [(JFXARKitCameraSessionController *)self underlyingAVCaptureSession];
  [customImageSensor createImageDataFromFrameSet:setCopy captureDevice:underlyingAVCaptureDevice captureSession:underlyingAVCaptureSession trackedFacesMetadata:metadataCopy faceObjectsMetadata:objectsMetadataCopy];
}

- (void)processExternalSensorData:(id)data
{
  dataCopy = data;
  [dataCopy timestamp];
  CMTimeMakeWithSeconds(&v7, v5, 1000000000);
  time = v7;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  customImageSensor = [(JFXARKitCameraSessionController *)self customImageSensor];
  [customImageSensor outputSensorData:dataCopy];
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  frameDelegate = [(JFXARKitCameraSessionController *)self frameDelegate];
  [frameDelegate didUpdateFrame:frameCopy];
}

- (BOOL)JT_setupARSession:(id *)session
{
  v30[3] = *MEMORY[0x277D85DE8];
  isSupported = [MEMORY[0x277CE5280] isSupported];
  if (isSupported)
  {
    v6 = objc_opt_new();
    [(JFXARKitCameraSessionController *)self setArSession:v6];

    arSession = [(JFXARKitCameraSessionController *)self arSession];
    [arSession setDelegate:self];

    arSessionDelegateQueue = [(JFXARKitCameraSessionController *)self arSessionDelegateQueue];
    arSession2 = [(JFXARKitCameraSessionController *)self arSession];
    [arSession2 setDelegateQueue:arSessionDelegateQueue];

    v10 = objc_opt_new();
    [(JFXARKitCameraSessionController *)self setMotionManager:v10];

    v11 = objc_alloc_init(JFXCustomImageSensor);
    [(JFXARKitCameraSessionController *)self setCustomImageSensor:v11];

    v12 = objc_alloc(MEMORY[0x277CE5300]);
    motionManager = [(JFXARKitCameraSessionController *)self motionManager];
    v14 = [v12 initWithMotionManager:motionManager];
    [(JFXARKitCameraSessionController *)self setMotionSensor:v14];

    v15 = objc_alloc(MEMORY[0x277CE5258]);
    motionManager2 = [(JFXARKitCameraSessionController *)self motionManager];
    v17 = [v15 initWithMotionManager:motionManager2 alignment:2];
    [(JFXARKitCameraSessionController *)self setOrientationSensor:v17];

    v18 = objc_alloc_init(MEMORY[0x277CE5280]);
    [(JFXARKitCameraSessionController *)self setFaceTrackingConfiguration:v18];

    faceTrackingConfiguration = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    LOBYTE(motionManager2) = objc_opt_respondsToSelector();

    if (motionManager2)
    {
      faceTrackingConfiguration2 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
      [faceTrackingConfiguration2 setDisableRenderSyncScheduling:1];
    }

    motionSensor = [(JFXARKitCameraSessionController *)self motionSensor];
    orientationSensor = [(JFXARKitCameraSessionController *)self orientationSensor];
    v30[1] = orientationSensor;
    customImageSensor = [(JFXARKitCameraSessionController *)self customImageSensor];
    v30[2] = customImageSensor;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    faceTrackingConfiguration3 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    [faceTrackingConfiguration3 setCustomSensors:v24];

    faceTrackingConfiguration4 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    [faceTrackingConfiguration4 setLightEstimationEnabled:0];

    faceTrackingConfiguration5 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
    [faceTrackingConfiguration5 setWorldAlignment:2];

    if ([MEMORY[0x277CE5280] supportsFrameSemantics:1])
    {
      faceTrackingConfiguration6 = [(JFXARKitCameraSessionController *)self faceTrackingConfiguration];
      [faceTrackingConfiguration6 setFrameSemantics:{objc_msgSend(faceTrackingConfiguration6, "frameSemantics") | 1}];
    }
  }

  else if (*session)
  {
    *session = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:100 userInfo:0];
  }

  return isSupported;
}

- (JFXARKitFrameDelegate)frameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_frameDelegate);

  return WeakRetained;
}

@end
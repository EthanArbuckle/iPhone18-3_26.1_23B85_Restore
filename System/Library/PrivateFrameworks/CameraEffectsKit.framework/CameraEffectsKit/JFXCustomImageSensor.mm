@interface JFXCustomImageSensor
- (ARSensorDelegate)delegate;
- (void)createImageDataFromFrameSet:(id)set captureDevice:(id)device captureSession:(id)session trackedFacesMetadata:(id)metadata faceObjectsMetadata:(id)objectsMetadata;
- (void)outputSensorData:(id)data;
- (void)start;
- (void)stop;
@end

@implementation JFXCustomImageSensor

- (void)start
{
  delegate = [(JFXCustomImageSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(JFXCustomImageSensor *)self delegate];
    [delegate2 sensorDidStart:self];
  }
}

- (void)stop
{
  delegate = [(JFXCustomImageSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(JFXCustomImageSensor *)self delegate];
    [delegate2 sensorDidPause:self];
  }
}

- (void)createImageDataFromFrameSet:(id)set captureDevice:(id)device captureSession:(id)session trackedFacesMetadata:(id)metadata faceObjectsMetadata:(id)objectsMetadata
{
  setCopy = set;
  deviceCopy = device;
  sessionCopy = session;
  metadataCopy = metadata;
  objectsMetadataCopy = objectsMetadata;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (deviceCopy)
  {
    [deviceCopy activeVideoMinFrameDuration];
    v7 = (v32 / v31);
  }

  colorSampleBuffer = [setCopy colorSampleBuffer];
  sampleBufferRef = [colorSampleBuffer sampleBufferRef];

  v20 = [objc_alloc(MEMORY[0x277CE52D0]) initWithSampleBuffer:sampleBufferRef captureFramePerSecond:v7 captureDevice:deviceCopy captureSession:sessionCopy];
  attachmentModeOut = 1;
  v21 = *MEMORY[0x277CD3038];
  v22 = CMGetAttachment(sampleBufferRef, *MEMORY[0x277CD3038], &attachmentModeOut);
  ImageBuffer = CMSampleBufferGetImageBuffer(sampleBufferRef);
  CMSetAttachment(ImageBuffer, v21, v22, 1u);
  v24 = [objc_alloc(MEMORY[0x277CE5270]) initWithMetadataObjects:metadataCopy mirroredVideoInput:0 stripDetectionData:0];
  [v20 setFaceData:v24];

  depthData = [setCopy depthData];
  if (depthData)
  {
    [v20 setDepthData:depthData];
    if (setCopy)
    {
      [setCopy presentationTimeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [v20 setDepthDataTimestamp:CMTimeGetSeconds(&time)];
  }

  [v20 setMirrored:1];
  [v20 setCameraPosition:2];
  if (v20)
  {
    delegate = [(JFXCustomImageSensor *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      delegate2 = [(JFXCustomImageSensor *)self delegate];
      [delegate2 sensor:self didOutputSensorData:v20];
    }
  }
}

- (void)outputSensorData:(id)data
{
  dataCopy = data;
  delegate = [(JFXCustomImageSensor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(JFXCustomImageSensor *)self delegate];
    [delegate2 sensor:self didOutputSensorData:dataCopy];
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
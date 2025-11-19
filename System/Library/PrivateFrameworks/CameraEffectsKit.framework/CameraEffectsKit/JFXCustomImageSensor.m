@interface JFXCustomImageSensor
- (ARSensorDelegate)delegate;
- (void)createImageDataFromFrameSet:(id)a3 captureDevice:(id)a4 captureSession:(id)a5 trackedFacesMetadata:(id)a6 faceObjectsMetadata:(id)a7;
- (void)outputSensorData:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation JFXCustomImageSensor

- (void)start
{
  v3 = [(JFXCustomImageSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(JFXCustomImageSensor *)self delegate];
    [v5 sensorDidStart:self];
  }
}

- (void)stop
{
  v3 = [(JFXCustomImageSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(JFXCustomImageSensor *)self delegate];
    [v5 sensorDidPause:self];
  }
}

- (void)createImageDataFromFrameSet:(id)a3 captureDevice:(id)a4 captureSession:(id)a5 trackedFacesMetadata:(id)a6 faceObjectsMetadata:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v14)
  {
    [v14 activeVideoMinFrameDuration];
    v7 = (v32 / v31);
  }

  v18 = [v13 colorSampleBuffer];
  v19 = [v18 sampleBufferRef];

  v20 = [objc_alloc(MEMORY[0x277CE52D0]) initWithSampleBuffer:v19 captureFramePerSecond:v7 captureDevice:v14 captureSession:v15];
  attachmentModeOut = 1;
  v21 = *MEMORY[0x277CD3038];
  v22 = CMGetAttachment(v19, *MEMORY[0x277CD3038], &attachmentModeOut);
  ImageBuffer = CMSampleBufferGetImageBuffer(v19);
  CMSetAttachment(ImageBuffer, v21, v22, 1u);
  v24 = [objc_alloc(MEMORY[0x277CE5270]) initWithMetadataObjects:v16 mirroredVideoInput:0 stripDetectionData:0];
  [v20 setFaceData:v24];

  v25 = [v13 depthData];
  if (v25)
  {
    [v20 setDepthData:v25];
    if (v13)
    {
      [v13 presentationTimeStamp];
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
    v26 = [(JFXCustomImageSensor *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(JFXCustomImageSensor *)self delegate];
      [v28 sensor:self didOutputSensorData:v20];
    }
  }
}

- (void)outputSensorData:(id)a3
{
  v7 = a3;
  v4 = [(JFXCustomImageSensor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(JFXCustomImageSensor *)self delegate];
    [v6 sensor:self didOutputSensorData:v7];
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
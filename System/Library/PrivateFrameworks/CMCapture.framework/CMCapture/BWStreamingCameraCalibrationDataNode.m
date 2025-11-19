@interface BWStreamingCameraCalibrationDataNode
- (BWStreamingCameraCalibrationDataNode)initWithCameraInfoByPortType:(id)a3;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStreamingCameraCalibrationDataNode

- (BWStreamingCameraCalibrationDataNode)initWithCameraInfoByPortType:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWStreamingCameraCalibrationDataNode;
  v4 = [(BWNode *)&v8 init];
  if (v4)
  {
    v4->_cameraInfoByPortType = a3;
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNode *)v4 addInput:v5];
    v6 = [[BWNodeOutput alloc] initWithMediaType:1667326820 node:v4];
    [(BWNodeOutput *)v6 setFormat:+[BWCameraCalibrationDataFormat format]];
    [(BWNode *)v4 addOutput:v6];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingCameraCalibrationDataNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v22 = 0;
  v6 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  memset(&v21, 0, sizeof(v21));
  CMSampleBufferGetPresentationTimeStamp(&v21, a3);
  v7 = CMGetAttachment(a3, @"OriginalCameraIntrinsicMatrix", 0);
  if (v7)
  {
    v8 = v7;
    v9 = CMGetAttachment(a3, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
    if (v9)
    {
      cameraInfoByPortType = self->_cameraInfoByPortType;
      horizontalSensorBinningFactor = self->_horizontalSensorBinningFactor;
      verticalSensorBinningFactor = self->_verticalSensorBinningFactor;
      rotationDegrees = self->_rotationDegrees;
      mirroringEnabled = self->_mirroringEnabled;
      v20 = v21;
      v15 = FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadata(v6, &v20.value, cameraInfoByPortType, horizontalSensorBinningFactor, verticalSensorBinningFactor, v8, v9, rotationDegrees, mirroringEnabled, 1);
      if (v15)
      {
        v16 = v15;
        memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
        *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
        sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, a3);
        sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
        v17 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v22);
        v18 = v22;
        if (v22 && !v17)
        {
          CMSetAttachment(v22, @"CameraCalibrationDataMetadata", v16, 1u);
          [(BWNodeOutput *)self->super._output emitSampleBuffer:v22];
          v18 = v22;
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    else
    {
      [BWStreamingCameraCalibrationDataNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [BWStreamingCameraCalibrationDataNode renderSampleBuffer:forInput:];
  }
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end
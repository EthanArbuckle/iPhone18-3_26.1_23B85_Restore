@interface BWJasperDisparityProcessorInput
- (BWJasperDisparityProcessorInput)initWithSettings:(id)a3 portType:(id)a4;
- (id)description;
- (void)dealloc;
- (void)setColorBuffer:(opaqueCMSampleBuffer *)a3 type:(unint64_t)a4;
- (void)setColorBufferPTS:(id *)a3 exposureTime:(double)a4;
@end

@implementation BWJasperDisparityProcessorInput

- (BWJasperDisparityProcessorInput)initWithSettings:(id)a3 portType:(id)a4
{
  v5.receiver = self;
  v5.super_class = BWJasperDisparityProcessorInput;
  return [(BWStillImageProcessorControllerInput *)&v5 initWithSettings:a3 portType:a4];
}

- (void)dealloc
{
  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWJasperDisparityProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (void)setColorBufferPTS:(id *)a3 exposureTime:(double)a4
{
  var3 = a3->var3;
  *&self->_colorBufferPTS.value = *&a3->var0;
  self->_colorBufferPTS.epoch = var3;
  self->_colorBufferExposureTime = a4;
}

- (void)setColorBuffer:(opaqueCMSampleBuffer *)a3 type:(unint64_t)a4
{
  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  self->_colorBuffer = v8;
  self->_colorBufferType = a4;
  if ([(BWJasperDisparityProcessorInput *)self isReadyToExecute])
  {
    delegate = self->_delegate;

    [(BWJasperDisparityProcessorInputDelegate *)delegate inputReadyToExecute:self];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@, colorBuf:%p skip:%d", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), self->_colorBuffer, self->_skipProcessing];
}

@end
@interface BWJasperDisparityProcessorInput
- (BWJasperDisparityProcessorInput)initWithSettings:(id)settings portType:(id)type;
- (id)description;
- (void)dealloc;
- (void)setColorBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type;
- (void)setColorBufferPTS:(id *)s exposureTime:(double)time;
@end

@implementation BWJasperDisparityProcessorInput

- (BWJasperDisparityProcessorInput)initWithSettings:(id)settings portType:(id)type
{
  v5.receiver = self;
  v5.super_class = BWJasperDisparityProcessorInput;
  return [(BWStillImageProcessorControllerInput *)&v5 initWithSettings:settings portType:type];
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

- (void)setColorBufferPTS:(id *)s exposureTime:(double)time
{
  var3 = s->var3;
  *&self->_colorBufferPTS.value = *&s->var0;
  self->_colorBufferPTS.epoch = var3;
  self->_colorBufferExposureTime = time;
}

- (void)setColorBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type
{
  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CFRelease(colorBuffer);
  }

  if (buffer)
  {
    v8 = CFRetain(buffer);
  }

  else
  {
    v8 = 0;
  }

  self->_colorBuffer = v8;
  self->_colorBufferType = type;
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
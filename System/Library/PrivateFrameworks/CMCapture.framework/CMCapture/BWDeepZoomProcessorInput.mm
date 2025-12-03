@interface BWDeepZoomProcessorInput
- (id)description;
- (void)addSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferType:(unint64_t)type;
- (void)dealloc;
@end

@implementation BWDeepZoomProcessorInput

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = BWDeepZoomProcessorInput;
  [(BWStillImageProcessorControllerInput *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ : sbuf:%p", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self, "captureStreamSettings"), "portType"), self->_sampleBuffer];
}

- (void)addSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferType:(unint64_t)type
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
    self->_sampleBuffer = 0;
  }

  self->_sampleBufferSet = 1;
  self->_bufferType = type;
  if (buffer)
  {
    self->_sampleBuffer = CFRetain(buffer);
  }

  delegate = self->_delegate;

  [(BWDeepZoomProcessorInputDelegate *)delegate inputSampleBufferReceived:self];
}

@end
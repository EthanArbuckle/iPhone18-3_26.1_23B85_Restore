@interface BWStillImageProcessorControllerRequest
- (BWStillImageProcessorControllerRequest)initWithInput:(id)a3 delegate:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation BWStillImageProcessorControllerRequest

- (BWStillImageProcessorControllerRequest)initWithInput:(id)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWStillImageProcessorControllerRequest;
  v6 = [(BWStillImageProcessorControllerRequest *)&v8 init];
  if (v6)
  {
    v6->_input = a3;
    v6->_delegate = a4;
  }

  return v6;
}

- (void)dealloc
{
  [(BWStillImageProcessorControllerInput *)self->_input setDelegate:0];

  v3.receiver = self;
  v3.super_class = BWStillImageProcessorControllerRequest;
  [(BWStillImageProcessorControllerRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ captureRequestIdentifier:%@", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self->_input, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "captureType")), -[BWStillImageProcessorControllerInput portType](self->_input, "portType"), -[FigCaptureStillImageSettings captureRequestIdentifier](-[BWStillImageProcessorControllerInput settings](self->_input, "settings"), "captureRequestIdentifier")];
}

@end
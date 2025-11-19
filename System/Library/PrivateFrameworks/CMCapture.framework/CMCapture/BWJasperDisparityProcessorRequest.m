@interface BWJasperDisparityProcessorRequest
- (BWJasperDisparityProcessorRequest)initWithInput:(id)a3 delegate:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation BWJasperDisparityProcessorRequest

- (BWJasperDisparityProcessorRequest)initWithInput:(id)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWJasperDisparityProcessorRequest;
  v6 = [(BWJasperDisparityProcessorRequest *)&v8 init];
  if (v6)
  {
    v6->_input = a3;
    v6->_delegate = a4;
  }

  return v6;
}

- (void)dealloc
{
  [(BWJasperDisparityProcessorInput *)self->_input setDelegate:0];

  v3.receiver = self;
  v3.super_class = BWJasperDisparityProcessorRequest;
  [(BWJasperDisparityProcessorRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self->_input, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType")];
}

@end
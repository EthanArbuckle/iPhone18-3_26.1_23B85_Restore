@interface BWDeepZoomProcessorRequest
- (id)description;
- (void)dealloc;
- (void)initWithInput:(void *)a3 delegate:;
@end

@implementation BWDeepZoomProcessorRequest

- (void)dealloc
{
  [(BWDeepZoomProcessorInput *)self->_input setDelegate:0];

  v3.receiver = self;
  v3.super_class = BWDeepZoomProcessorRequest;
  [(BWDeepZoomProcessorRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self->_input, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType")];
}

- (void)initWithInput:(void *)a3 delegate:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWDeepZoomProcessorRequest;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[2] = a2;
    v5[3] = a3;
  }

  return v5;
}

@end
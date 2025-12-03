@interface BWLearnedNRRequest
- (id)description;
- (void)dealloc;
- (void)initWithInput:(void *)input delegate:;
@end

@implementation BWLearnedNRRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLearnedNRRequest;
  [(BWLearnedNRRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@", v4, self, -[BWStillImageCaptureSettings settingsID](-[BWStillImageProcessorControllerInput captureSettings](self->_input, "captureSettings"), "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureStreamSettings captureType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "captureType")), -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType")];
}

- (void)initWithInput:(void *)input delegate:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWLearnedNRRequest;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = input;
  }

  return v5;
}

@end
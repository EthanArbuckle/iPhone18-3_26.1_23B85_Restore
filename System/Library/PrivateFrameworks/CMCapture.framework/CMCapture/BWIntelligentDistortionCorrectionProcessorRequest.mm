@interface BWIntelligentDistortionCorrectionProcessorRequest
- (id)description;
- (void)dealloc;
- (void)initWithInput:(void *)input delegate:;
@end

@implementation BWIntelligentDistortionCorrectionProcessorRequest

- (void)dealloc
{
  [(BWIntelligentDistortionCorrectionProcessorInput *)self->_input setDelegate:0];

  v3.receiver = self;
  v3.super_class = BWIntelligentDistortionCorrectionProcessorRequest;
  [(BWIntelligentDistortionCorrectionProcessorRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  settingsID = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self->_input captureSettings] settingsID];
  v6 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self->_input captureStreamSettings] captureType]);
  return [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@, %@ input:<%@ %p>", v4, self, settingsID, v6, -[BWStillImageCaptureStreamSettings portType](-[BWStillImageProcessorControllerInput captureStreamSettings](self->_input, "captureStreamSettings"), "portType"), objc_opt_class(), self->_input];
}

- (void)initWithInput:(void *)input delegate:
{
  if (!self)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = BWIntelligentDistortionCorrectionProcessorRequest;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = input;
  }

  return v5;
}

@end